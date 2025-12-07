uint64_t *protocol witness for BidirectionalCollection.distance(from:to:) in conformance AttributedString._InternalRunsSlice(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v7 = *(a1 + 32);
  v4 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v4;
  v9 = *(a2 + 32);
  return specialized BidirectionalCollection._distance(from:to:)(v6, v8, *v2, *(v2 + 8), *(v2 + 16));
}

double protocol witness for Collection.index(after:) in conformance AttributedString._InternalRunsSlice@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  AttributedString._InternalRunsSlice.index(after:)(a1, *v2, *(v2 + 8), *(v2 + 16), v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

unint64_t *protocol witness for Collection.formIndex(after:) in conformance AttributedString._InternalRunsSlice(unint64_t *result)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = *result;
  v6 = result[1];
  v8 = result[2];
  v7 = result[3];
  v9 = result[4];
  v10 = v3[9];
  v11 = v3[10];
  v12 = v3[11];
  v13 = v3[12];
  v29 = v4;
  v30 = *result;
  v31 = v6;
  v32 = v8;
  v27 = v2;
  v28 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  swift_unknownObjectRetain();
  v15 = specialized Rope.subscript.getter(v5, v6, v8, v10, v11, v12, v13);

  v16 = __OFADD__(v9, v15);
  v17 = v9 + v15;
  if (v16)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  specialized Rope.formIndex(after:)(&v30, v10, v11, v12, v13);
  result = swift_unknownObjectRelease();
  if (v17 < v29)
  {
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v21 = v28;
LABEL_15:
    *v14 = v18;
    v14[1] = v19;
    v14[2] = v20;
    v14[3] = v21;
    v14[4] = v17;
    return result;
  }

  v22 = v3[9];
  v21 = v3[10];
  v17 = v3[11];
  v18 = v3[12];
  swift_unknownObjectRetain();
  if (v27 != v29)
  {
    result = specialized Rope._endPath.getter(v22);
    v19 = result;
    if (v22)
    {
      result = swift_unknownObjectRelease();
      v20 = 0;
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v17 = 0;
    }

    goto LABEL_15;
  }

  result = specialized Rope.find<A>(at:in:preferEnd:)(v27, 0, v22, v21, v17, v18);
  if (result != v18)
  {
    goto LABEL_18;
  }

  v19 = v23;
  v20 = v24;
  v26 = v25;
  if (v22)
  {
    v21 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v18, v23, v24, v22, v21);
    result = swift_unknownObjectRelease();
    v17 = v27 - v26;
    if (!__OFSUB__(v27, v26))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v21 = 0;
    v17 = v27 - v25;
    if (!__OFSUB__(v27, v25))
    {
      goto LABEL_15;
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance AttributedString._InternalRunsSlice@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = *v1;
  v16 = *(v1 + 8);
  *(a1 + 8) = v16;
  v4 = v3[9];
  v5 = v3[10];
  v7 = v3[11];
  v6 = v3[12];
  swift_unknownObjectRetain();

  result = specialized Rope.find<A>(at:in:preferEnd:)(v16, 0, v4, v5, v7, v6);
  if (result == v6)
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    if (v4)
    {
      v15 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v6, v9, v10, v4, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0;
    }

    if (!__OFSUB__(v16, v14))
    {
      *(a1 + 24) = v6;
      *(a1 + 32) = v12;
      *(a1 + 40) = v13;
      *(a1 + 48) = v15;
      *(a1 + 56) = v16 - v14;
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

void *protocol witness for Sequence._copyToContiguousArray() in conformance AttributedString._InternalRunsSlice()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = specialized Collection.count.getter(*v0, v2, v3);
  if (!v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation16AttributedStringV12_InternalRunV_Tt1g5(v4, 0);

  v7 = specialized Sequence._copySequenceContents(initializing:)(v9, v6 + 4, v5, v1, v2, v3);
  result = outlined destroy of TermOfAddress?(v9, &_ss16IndexingIteratorVy10Foundation16AttributedStringV18_InternalRunsSliceVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV18_InternalRunsSliceVGMR);
  if (v7 == v5)
  {

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice()
{
  result = lazy protocol witness table cache variable for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice;
  if (!lazy protocol witness table cache variable for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice;
  if (!lazy protocol witness table cache variable for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice;
  if (!lazy protocol witness table cache variable for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<AttributedString._InternalRunsSlice> and conformance <> DefaultIndices<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    lazy protocol witness table accessor for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Rope._UnsafeHandle.findSlot<A>(at:in:preferEnd:)(uint64_t result, int a2, _WORD *a3, uint64_t *a4)
{
  v4 = result;
  v5 = *a3;
  if (*a3)
  {
    result = 0;
    v6 = ~a2 & 1;
    while (1)
    {
      v7 = *a4;
      a4 += 3;
      v8 = v4 - v7;
      if (__OFSUB__(v4, v7))
      {
        break;
      }

      if (__OFADD__(v8, v6))
      {
        goto LABEL_12;
      }

      if (v8 + v6 < 1)
      {
        return result;
      }

      ++result;
      v4 = v8;
      if (v5 == result)
      {
        v4 = v8;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_8:
    if (!v4)
    {
      return v5 - (a2 & 1);
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized BidirectionalCollection.index(_:offsetBy:)(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_5:
    if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) >= a2)
    {
      __break(1u);
      return result;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) <= a2 - 1)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  result += a2;
  return result;
}

unint64_t specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    v7 = 0;
    while (result - a3 + v7)
    {
      v8 = result + v7 - 1;
      if (__OFSUB__(result + v7, 1))
      {
LABEL_27:
        __break(1u);
        return result;
      }

      if (--v7 <= a2)
      {
        return v8;
      }
    }

    return 0;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= a2 - 1)
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 > 4)
    {
      v9 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v9 = 4;
      }

      v5 = v4 - v9;
      v10 = 0uLL;
      v11 = result;
      v12 = vdupq_n_s64(1uLL);
      v13 = v5;
      do
      {
        v10 = vaddq_s64(v10, v12);
        v11 = vaddq_s64(v11, v12);
        v13 -= 4;
      }

      while (v13);
      v6 = vaddvq_s64(vpaddq_s64(v11, v10));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v14 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v15 = v5 + result - a3;
    v16 = a2 - v5;
    result = v6;
    while (v15)
    {
      if (!v14)
      {
        __break(1u);
        goto LABEL_27;
      }

      ++result;
      ++v14;
      ++v15;
      if (!--v16)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t specialized AttributedString._InternalRunsSlice.updateEach(with:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[9];
  v336 = a1 + 9;
  if (v5)
  {
    v6 = a1[11];
  }

  else
  {
    v6 = 0;
  }

  if (a2 < 0 || v6 < a2)
  {
LABEL_409:
    __break(1u);
    goto LABEL_410;
  }

  v7 = a4;
  v8 = a3;
  v9 = a1[10];
  v10 = a1[12];
  if (!v5 || ((v12 = (v5 + 16), LODWORD(v11) = *(v5 + 16), *(v5 + 16)) ? (v13 = a1[11] <= a2) : (v13 = 1), v13))
  {
    v14 = swift_unknownObjectRetain();
    result = specialized Rope._endPath.getter(v14);
    v16 = result;
    v17 = 0;
    v18 = 0;
    if (!v5)
    {
      goto LABEL_40;
    }

    goto LABEL_13;
  }

  v327 = a1[12];
  v19 = *(v5 + 18);
  swift_unknownObjectRetain_n();
  if (!v19)
  {
    v10 = 0;
    v20 = a2;
    v17 = v5;
    goto LABEL_31;
  }

  v337 = v9;
  v20 = a2;
  v10 = v19;
  v21 = v5;
  do
  {
    v22 = *v12;
    if (*v12)
    {
      v23 = 0;
      v24 = (v21 + 40);
      while (1)
      {
        v25 = *v24;
        v24 += 3;
        v26 = v20 - v25;
        if (__OFSUB__(v20, v25))
        {
          goto LABEL_369;
        }

        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v26 + 1 < 1)
        {
          v22 = v23;
          goto LABEL_17;
        }

        ++v23;
        v20 = v26;
        if (v22 == v23)
        {
          goto LABEL_26;
        }
      }

LABEL_370:
      __break(1u);
LABEL_371:
      __break(1u);
LABEL_372:
      __break(1u);
LABEL_373:
      __break(1u);
LABEL_374:
      __break(1u);
LABEL_375:
      __break(1u);
LABEL_376:
      __break(1u);
LABEL_377:
      __break(1u);
LABEL_378:
      __break(1u);
LABEL_379:
      __break(1u);
LABEL_380:
      __break(1u);
LABEL_381:
      __break(1u);
LABEL_382:
      __break(1u);
LABEL_383:
      __break(1u);
LABEL_384:
      __break(1u);
LABEL_385:
      __break(1u);
LABEL_386:
      __break(1u);
LABEL_387:
      __break(1u);
LABEL_388:
      __break(1u);
LABEL_389:
      __break(1u);
LABEL_390:
      __break(1u);
LABEL_391:
      __break(1u);
LABEL_392:
      __break(1u);
LABEL_393:
      __break(1u);
LABEL_394:
      __break(1u);
LABEL_395:
      __break(1u);
LABEL_396:
      __break(1u);
LABEL_397:
      __break(1u);
LABEL_398:
      __break(1u);
LABEL_399:
      __break(1u);
LABEL_400:
      __break(1u);
LABEL_401:
      __break(1u);
LABEL_402:
      __break(1u);
LABEL_403:
      __break(1u);
LABEL_404:
      __break(1u);
LABEL_405:
      __break(1u);
LABEL_406:
      __break(1u);
LABEL_407:
      __break(1u);
LABEL_408:
      __break(1u);
      goto LABEL_409;
    }

    v26 = v20;
LABEL_26:
    if (v26)
    {
      goto LABEL_400;
    }

    v20 = 0;
LABEL_17:
    v10 = (v22 << ((4 * v19 + 8) & 0x3C)) | ((-15 << ((4 * v19 + 8) & 0x3C)) - 1) & v10;
    v17 = *(v21 + 24 + 24 * v22);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v12 = (v17 + 16);
    LOBYTE(v19) = *(v17 + 18);
    v21 = v17;
  }

  while (v19);
  LODWORD(v11) = *v12;
  if (*v12)
  {
    v7 = a4;
LABEL_31:
    v27 = 0;
    v28 = 24;
    v18 = v20;
    v11 = v11;
    while (1)
    {
      v29 = *(v17 + v28);
      v30 = v18 - v29;
      if (__OFSUB__(v18, v29))
      {
        goto LABEL_397;
      }

      if (__OFADD__(v30, 1))
      {
        goto LABEL_398;
      }

      if (v30 + 1 < 1)
      {
        break;
      }

      ++v27;
      v28 += 24;
      v18 -= v29;
      if (v11 == v27)
      {
        if (!v30)
        {
          goto LABEL_37;
        }

LABEL_366:
        __break(1u);
LABEL_367:
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
        goto LABEL_370;
      }
    }

    v11 = v27;
  }

  else
  {
LABEL_365:
    v11 = 0;
    v7 = a4;
    v9 = v337;
    if (v20)
    {
      goto LABEL_366;
    }

LABEL_37:
    v18 = 0;
  }

  result = swift_unknownObjectRelease();
  v16 = v10 & 0xFFFFFFFFFFFFF0FFLL | (v11 << 8);
  v8 = a3;
  v10 = v327;
  if (v5)
  {
LABEL_13:
    v324 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v10, v16, v17, v5, v9);
    result = swift_unknownObjectRelease();
    goto LABEL_41;
  }

LABEL_40:
  v324 = 0;
LABEL_41:
  v31 = a2;
  v32 = a2 - v18;
  if (!__OFSUB__(a2, v18))
  {
    while (2)
    {
      v33 = *v336;
      v337 = v32;
      v332 = v16;
      v327 = v10;
      if (v31 == v8)
      {
        if (v33)
        {
          v34 = a1[11];
          if (v34 < v31)
          {
            goto LABEL_401;
          }

          v35 = a1[10];
          v317 = a1[12];
          v36 = (v33 + 16);
          v37 = *(v33 + 16);
          v38 = *(v33 + 18);
          if (*(v33 + 16))
          {
            v39 = v34 <= v31;
          }

          else
          {
            v39 = 1;
          }

          if (!v39)
          {
            swift_unknownObjectRetain_n();
            v315 = v35;
            if (!v38)
            {
              v44 = 0;
              v20 = a2;
              v10 = v33;
LABEL_73:
              v16 = v332;
              v50 = 0;
              v51 = 24;
              v41 = v20;
              v52 = v37;
              v32 = v337;
              while (1)
              {
                v53 = *(v10 + v51);
                v20 = v41 - v53;
                if (__OFSUB__(v41, v53))
                {
                  goto LABEL_371;
                }

                if (__OFADD__(v20, 1))
                {
                  goto LABEL_372;
                }

                if (v20 + 1 < 1)
                {
                  goto LABEL_81;
                }

                ++v50;
                v51 += 24;
                v41 -= v53;
                if (v52 == v50)
                {
                  v50 = v52;
                  goto LABEL_79;
                }
              }
            }

            v20 = a2;
            v44 = v38;
            v5 = v33;
            do
            {
              v45 = *v36;
              if (*v36)
              {
                v46 = 0;
                v47 = (v5 + 40);
                while (1)
                {
                  v48 = *v47;
                  v47 += 3;
                  v49 = v20 - v48;
                  if (__OFSUB__(v20, v48))
                  {
                    break;
                  }

                  if (__OFADD__(v49, 1))
                  {
                    goto LABEL_362;
                  }

                  if (v49 + 1 < 1)
                  {
                    v45 = v46;
                    goto LABEL_59;
                  }

                  ++v46;
                  v20 = v49;
                  if (v45 == v46)
                  {
                    goto LABEL_68;
                  }
                }

                __break(1u);
LABEL_362:
                __break(1u);
LABEL_363:
                __break(1u);
LABEL_364:
                __break(1u);
                goto LABEL_365;
              }

              v49 = v20;
LABEL_68:
              if (v49)
              {
                goto LABEL_373;
              }

              v20 = 0;
LABEL_59:
              v44 = (v45 << ((4 * v38 + 8) & 0x3C)) | ((-15 << ((4 * v38 + 8) & 0x3C)) - 1) & v44;
              v10 = *(v5 + 24 + 24 * v45);
              swift_unknownObjectRetain();
              swift_unknownObjectRelease();
              v36 = (v10 + 16);
              LOBYTE(v38) = *(v10 + 18);
              v5 = v10;
            }

            while (v38);
            LODWORD(v37) = *v36;
            if (*v36)
            {
              goto LABEL_73;
            }

            v50 = 0;
            v32 = v337;
            v16 = v332;
LABEL_79:
            if (!v20)
            {
              v41 = 0;
LABEL_81:
              swift_unknownObjectRelease();
              v40 = v44 & 0xFFFFFFFFFFFFF0FFLL | (v50 << 8);
              v8 = a3;
              v35 = v315;
              goto LABEL_82;
            }

            goto LABEL_412;
          }

          v40 = ((-15 << ((4 * v38 + 8) & 0x3C)) - 1) & v38 | (v37 << ((4 * v38 + 8) & 0x3C));
          swift_unknownObjectRetain();
          v41 = 0;
          v10 = 0;
          v32 = v337;
          v16 = v332;
LABEL_82:
          specialized Rope._Node.distanceFromStart<A>(to:in:)(v317, v40, v10, v33, v35);
          result = swift_unknownObjectRelease();
          v10 = v327;
          v31 = a2;
        }

        else
        {
          if (v31 > 0)
          {
            goto LABEL_405;
          }

          v41 = 0;
        }

        v54 = __OFSUB__(v31, v41);
        v43 = v31 - v41;
        v42 = a1;
        if (v54)
        {
          goto LABEL_387;
        }

        v7 = a4;
      }

      else if (v33)
      {
        v42 = a1;
        v43 = a1[11];
      }

      else
      {
        v43 = 0;
        v42 = a1;
      }

      if (v32 >= v43)
      {
        return result;
      }

      if (v10 != v42[12])
      {
        goto LABEL_377;
      }

      if (v17)
      {
        v55 = (v17 + 24 * ((v16 >> ((4 * *(v17 + 18) + 8) & 0x3C)) & 0xF));
        v57 = v55[4];
        v56 = v55[5];
        v58 = v55[3];
        v59 = v32 + v58;
        v60 = __OFADD__(v32, v58);

        if (v60)
        {
          goto LABEL_385;
        }

        *&v359 = v57;
        *(&v359 + 1) = v56;
        v61 = a2;
      }

      else
      {
        v62 = v42[9];
        swift_unknownObjectRetain();
        specialized Rope._Node.subscript.getter(v16, v62);
        v57 = v63;
        v65 = v64;
        swift_unknownObjectRelease();
        if (v10 != v42[12])
        {
          goto LABEL_395;
        }

        v66 = v42[9];
        swift_unknownObjectRetain();
        v67 = specialized Rope._Node.subscript.getter(v16, v66);
        swift_unknownObjectRelease();

        v54 = __OFADD__(v32, v67);
        v59 = v32 + v67;
        if (v54)
        {
          goto LABEL_396;
        }

        *&v359 = v57;
        *(&v359 + 1) = v65;
        v61 = a2;
        v16 = v332;
      }

      v68 = v61;
      if (v32 >= v61)
      {
        if (v32 >= v8)
        {
          v68 = v8;
        }

        else
        {
          v68 = v32;
        }
      }

      if (v59 > v61)
      {
        v61 = v59;
      }

      if (v59 <= v8)
      {
        v69 = v61;
      }

      else
      {
        v69 = v8;
      }

      if (v68 == v69)
      {
        goto LABEL_378;
      }

      if (v68 == v32 && v69 == v59)
      {
        v70 = v336;
        if (v327 != v42[12])
        {
          goto LABEL_388;
        }

        if (!*v336)
        {
          goto LABEL_423;
        }

        specialized Rope._Node._prepareModify(at:)(v16, &v360);
        v371 = v361;
        v354 = v360;
        v355 = v361;
        v356 = v362;
        outlined destroy of TermOfAddress?(&v371, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMR);
        outlined destroy of TermOfAddress?(&v371 + 8, &_sShySSGMd, &_sShySSGMR);
        v355 = MEMORY[0x1E69E7CC8];
        v42[12] = v327 + 1;
        v71 = a5;
        if (!v42[9])
        {
          goto LABEL_424;
        }

        specialized Rope._Node._finalizeModify(_:)(&v349, &v354);

        v358 = 0;
        v356 = 0u;
        v357 = 0u;
        v354 = 0u;
        v355 = 0u;
        outlined init with copy of AttributedString._AttributeValue?(&v354, &v349);
        if (*(&v350 + 1))
        {
          v346 = v351;
          v347 = v352;
          v348 = v353;
          v344 = v349;
          v345 = v350;
          outlined init with copy of AttributedString._AttributeValue(&v344, &v339);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73 = specialized __RawDictionaryStorage.find<A>(_:)(v7, a5);
          v75 = *(v57 + 16);
          v76 = (v74 & 1) == 0;
          v54 = __OFADD__(v75, v76);
          v77 = v75 + v76;
          if (v54)
          {
            goto LABEL_403;
          }

          v78 = v74;
          if (*(v57 + 24) >= v77)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v79 = v57;
              if (v74)
              {
                goto LABEL_116;
              }

              goto LABEL_162;
            }

            v316 = v73;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
            v247 = static _DictionaryStorage.copy(original:)();
            v79 = v247;
            if (*(v57 + 16))
            {
              v248 = (v247 + 64);
              v249 = (v57 + 64);
              v250 = ((1 << *(v79 + 32)) + 63) >> 6;
              if (v79 != v57 || v248 >= &v249[8 * v250])
              {
                memmove(v248, v249, 8 * v250);
              }

              v251 = 0;
              *(v79 + 16) = *(v57 + 16);
              v252 = 1 << *(v57 + 32);
              if (v252 < 64)
              {
                v253 = ~(-1 << v252);
              }

              else
              {
                v253 = -1;
              }

              v254 = v253 & *(v57 + 64);
              v255 = (v252 + 63) >> 6;
              if (v254)
              {
                do
                {
                  v256 = __clz(__rbit64(v254));
                  v318 = (v254 - 1) & v254;
LABEL_320:
                  v259 = v256 | (v251 << 6);
                  v260 = 16 * v259;
                  v261 = (*(v57 + 48) + 16 * v259);
                  v263 = *v261;
                  v262 = v261[1];
                  v264 = 72 * v259;
                  outlined init with copy of AttributedString._AttributeValue(*(v57 + 56) + 72 * v259, &v349);
                  v265 = (*(v79 + 48) + v260);
                  *v265 = v263;
                  v265[1] = v262;
                  v266 = *(v79 + 56) + v264;
                  *v266 = v349;
                  v267 = v350;
                  v268 = v351;
                  v269 = v352;
                  *(v266 + 64) = v353;
                  *(v266 + 32) = v268;
                  *(v266 + 48) = v269;
                  *(v266 + 16) = v267;

                  v71 = a5;
                  v42 = a1;
                  v254 = v318;
                }

                while (v318);
              }

              v257 = v251;
              while (1)
              {
                v251 = v257 + 1;
                if (__OFADD__(v257, 1))
                {
                  goto LABEL_422;
                }

                if (v251 >= v255)
                {
                  break;
                }

                v258 = *(v57 + 64 + 8 * v251);
                ++v257;
                if (v258)
                {
                  v256 = __clz(__rbit64(v258));
                  v318 = (v258 - 1) & v258;
                  goto LABEL_320;
                }
              }
            }

            v73 = v316;
            v7 = a4;
            v70 = v336;
            if ((v78 & 1) == 0)
            {
              goto LABEL_162;
            }

LABEL_116:
            v81 = *(v79 + 56) + 72 * v73;
            v83 = *(v81 + 16);
            v82 = *(v81 + 32);
            v84 = *(v81 + 48);
            v353 = *(v81 + 64);
            v352 = v84;
            v349 = *v81;
            v350 = v83;
            v351 = v82;
            v85 = *(v79 + 56) + 72 * v73;
            v86 = v340;
            v87 = v341;
            v88 = v342;
            *(v85 + 64) = v343;
            *(v85 + 32) = v87;
            *(v85 + 48) = v88;
            *(v85 + 16) = v86;
            *v85 = v339;
            outlined destroy of AttributedString._AttributeValue(&v344);
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v77, isUniquelyReferenced_nonNull_native);
            v79 = v57;
            v73 = specialized __RawDictionaryStorage.find<A>(_:)(v7, a5);
            if ((v78 & 1) != (v80 & 1))
            {
              goto LABEL_433;
            }

            if (v78)
            {
              goto LABEL_116;
            }

LABEL_162:
            specialized _NativeDictionary._insert(at:key:value:)(v73, v7, v71, &v339, v79);

            outlined destroy of AttributedString._AttributeValue(&v344);
            v349 = 0u;
            v350 = 0u;
            v351 = 0u;
            v352 = 0u;
            v353 = 0;
          }

LABEL_163:
          *&v359 = v79;
        }

        else
        {

          outlined destroy of TermOfAddress?(&v349, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          v114 = specialized __RawDictionaryStorage.find<A>(_:)(v7, a5);
          if (v115)
          {
            v116 = v114;
            v117 = v359;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v79 = v117;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
              v292 = static _DictionaryStorage.copy(original:)();
              v79 = v292;
              if (*(v117 + 16))
              {
                v293 = (v292 + 64);
                v294 = (v117 + 64);
                v295 = ((1 << *(v79 + 32)) + 63) >> 6;
                if (v79 != v117 || v293 >= &v294[8 * v295])
                {
                  memmove(v293, v294, 8 * v295);
                }

                v296 = 0;
                *(v79 + 16) = *(v117 + 16);
                v297 = 1 << *(v117 + 32);
                if (v297 < 64)
                {
                  v298 = ~(-1 << v297);
                }

                else
                {
                  v298 = -1;
                }

                v299 = v298 & *(v117 + 64);
                v300 = (v297 + 63) >> 6;
                if (v299)
                {
                  do
                  {
                    v301 = __clz(__rbit64(v299));
                    v319 = (v299 - 1) & v299;
LABEL_356:
                    v304 = v301 | (v296 << 6);
                    v305 = 16 * v304;
                    v306 = (*(v117 + 48) + 16 * v304);
                    v308 = *v306;
                    v307 = v306[1];
                    v309 = 72 * v304;
                    outlined init with copy of AttributedString._AttributeValue(*(v117 + 56) + 72 * v304, &v349);
                    v310 = (*(v79 + 48) + v305);
                    *v310 = v308;
                    v310[1] = v307;
                    v311 = *(v79 + 56) + v309;
                    *v311 = v349;
                    v312 = v350;
                    v313 = v351;
                    v314 = v352;
                    *(v311 + 64) = v353;
                    *(v311 + 32) = v313;
                    *(v311 + 48) = v314;
                    *(v311 + 16) = v312;

                    v71 = a5;
                    v42 = a1;
                    v299 = v319;
                  }

                  while (v319);
                }

                v302 = v296;
                while (1)
                {
                  v296 = v302 + 1;
                  if (__OFADD__(v302, 1))
                  {
                    goto LABEL_428;
                  }

                  if (v296 >= v300)
                  {
                    break;
                  }

                  v303 = *(v117 + 64 + 8 * v296);
                  ++v302;
                  if (v303)
                  {
                    v301 = __clz(__rbit64(v303));
                    v319 = (v303 - 1) & v303;
                    goto LABEL_356;
                  }
                }
              }

              v7 = a4;
              v70 = v336;
            }

            v118 = *(v79 + 56) + 72 * v116;
            v349 = *v118;
            v120 = *(v118 + 32);
            v119 = *(v118 + 48);
            v121 = *(v118 + 64);
            v350 = *(v118 + 16);
            v351 = v120;
            v353 = v121;
            v352 = v119;
            specialized _NativeDictionary._delete(at:)(v116, v79);
            goto LABEL_163;
          }

          v353 = 0;
          v351 = 0u;
          v352 = 0u;
          v349 = 0u;
          v350 = 0u;
        }

        AttributedString._AttributeStorage._attributeModified(_:old:new:)(v7, v71, &v349, &v354);
        outlined destroy of TermOfAddress?(&v354, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        outlined destroy of TermOfAddress?(&v349, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);

        if (v327 + 1 != v42[12])
        {
          goto LABEL_390;
        }

        if (!*v70)
        {
          goto LABEL_426;
        }

        specialized Rope._Node._prepareModify(at:)(v332, &v363);
        v369 = v364;
        v370 = v365;
        outlined destroy of TermOfAddress?(&v369, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMR);
        outlined destroy of TermOfAddress?(&v370, &_sShySSGMd, &_sShySSGMR);
        v354 = v363;
        v356 = v366;
        v145 = v359;
        v355 = v359;
        v146 = v327 + 2;
        v42[12] = v327 + 2;
        if (!v42[9])
        {
          goto LABEL_425;
        }

        v137 = specialized Rope._Node._finalizeModify(_:)(&v344, &v354);

        v147 = v42[9];
        v148 = v42[12];
        *&v354 = v327 + 2;
        *(&v354 + 1) = v332;
        *&v355 = v137;
        if (v146 != v148)
        {
          goto LABEL_392;
        }

        v149 = v327 + 2;
        if (v147)
        {
          v150 = ((-15 << ((4 * *(v147 + 18) + 8) & 0x3C)) - 1) & *(v147 + 18) | (*(v147 + 16) << ((4 * *(v147 + 18) + 8) & 0x3C));
          swift_unknownObjectRetain();
        }

        else
        {
          v150 = 0;
        }

        if (v332 >= v150)
        {
          goto LABEL_393;
        }

        v151 = (4 * *(v137 + 18) + 8) & 0x3C;
        v152 = ((v332 >> v151) & 0xF) + 1;
        if (v152 < *(v137 + 8))
        {
          v153 = (v152 << v151) | ((-15 << v151) - 1) & v332;
          swift_unknownObjectRelease();
          v154 = v327 + 2;
          v155 = v137;
          v156 = v336;
          v144 = v324;
          v157 = v332;
          v158 = *v336;
          if (*v336)
          {
            goto LABEL_174;
          }

LABEL_183:
          v163 = 0;
LABEL_215:
          if (v163 < v157)
          {
            v172 = v42[9];
            v173 = v42[10];
            v174 = v157;
            v176 = v42[11];
            v175 = v42[12];
            v177 = v149;
            *&v354 = v149;
            *(&v354 + 1) = v174;
            v178 = v174;
            *&v355 = v137;
            swift_unknownObjectRetain();
            specialized Rope.formIndex(before:)(&v354, v172, v173, v176, v175);
            swift_unknownObjectRelease();
            specialized Rope.subscript.getter(v354, *(&v354 + 1), v355, v42[9], v42[10], v42[11], v42[12]);
            v180 = v179;
            if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v181, v145))
            {
              v182 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v180, *(&v145 + 1));

              if (v182)
              {
                v183 = specialized Rope._remove(at:)(&v354, v149, v178);
                v184 = v42[12];
                if (v183 >= specialized Rope._endPath.getter(v42[9]))
                {
                  v185 = 0;
                }

                else
                {
                  v185 = specialized Rope._Node.unmanagedLeaf(at:)(v183, v42[9]);
                }

                *&v349 = v184;
                *(&v349 + 1) = v183;
                *&v350 = v185;
                v186 = v354;

                v187 = v42[9];
                v188 = v42[10];
                v189 = v42[11];
                v190 = v42[12];
                swift_unknownObjectRetain();
                specialized Rope.formIndex(before:)(&v349, v187, v188, v189, v190);
                swift_unknownObjectRelease();
                v191 = v349;
                if (v349 != v42[12])
                {
                  goto LABEL_414;
                }

                if (!*v336)
                {
                  goto LABEL_429;
                }

                v157 = *(&v349 + 1);
                specialized Rope._Node._prepareModify(at:)(*(&v349 + 1), v368);
                v354 = v368[0];
                v355 = v368[1];
                v356 = v368[2];
                if (__OFSUB__(v337, *(&v368[0] + 1)))
                {
                  goto LABEL_415;
                }

                if (__OFADD__(*(&v368[0] + 1), v186))
                {
                  goto LABEL_416;
                }

                v337 -= *(&v368[0] + 1);
                *(&v354 + 1) = *(&v368[0] + 1) + v186;
                v177 = v191 + 1;
                v42[12] = v191 + 1;
                if (!v42[9])
                {
                  goto LABEL_430;
                }

                v137 = specialized Rope._Node._finalizeModify(_:)(&v344, &v354);

                v144 = v324 - 1;
                if (__OFSUB__(v324, 1))
                {
                  goto LABEL_417;
                }

LABEL_233:
                v149 = v177;
LABEL_234:
                v192 = v42[9];
                v193 = v42[12];
                *&v354 = v149;
                *(&v354 + 1) = v157;
                *&v355 = v137;
                v54 = __OFADD__(v144, 1);
                v194 = v144 + 1;
                if (v54)
                {
                  goto LABEL_380;
                }

                if (v149 != v193)
                {
                  goto LABEL_381;
                }

                if (v137)
                {
                  v195 = v137[3 * ((v157 >> ((4 * *(v137 + 18) + 8) & 0x3C)) & 0xF) + 3];
                  v54 = __OFADD__(v337, v195);
                  v338 = v337 + v195;
                  if (v54)
                  {
                    goto LABEL_386;
                  }

                  if (!v192)
                  {
                    goto LABEL_379;
                  }

                  swift_unknownObjectRetain();
                }

                else
                {
                  v196 = v194;
                  v197 = v42;
                  swift_unknownObjectRetain();
                  v198 = specialized Rope._Node.subscript.getter(v157, v192);

                  v54 = __OFADD__(v337, v198);
                  v338 = v337 + v198;
                  if (v54)
                  {
                    goto LABEL_399;
                  }

                  v42 = v197;
                  v194 = v196;
                  if (!v192)
                  {
                    goto LABEL_379;
                  }
                }

                if (v157 >= (((-15 << ((4 * *(v192 + 18) + 8) & 0x3C)) - 1) & *(v192 + 18) | (*(v192 + 16) << ((4 * *(v192 + 18) + 8) & 0x3C))))
                {
                  goto LABEL_379;
                }

                v324 = v194;
                if (v137 && (v199 = (4 * *(v137 + 18) + 8) & 0x3C, v200 = ((v157 >> v199) & 0xF) + 1, v200 < *(v137 + 8)))
                {
                  result = swift_unknownObjectRelease();
                  v16 = (v200 << v199) | ((-15 << v199) - 1) & v157;
                }

                else if (specialized Rope._Node.formSuccessor(of:)(&v354, v192))
                {
                  result = swift_unknownObjectRelease();
                  v16 = *(&v354 + 1);
                }

                else
                {
                  v201 = *(v192 + 18);
                  v202 = *(v192 + 16);
                  result = swift_unknownObjectRelease();
                  v16 = ((-15 << ((4 * v201 + 8) & 0x3C)) - 1) & v201 | (v202 << ((4 * v201 + 8) & 0x3C));
                  *&v354 = v149;
                  *(&v354 + 1) = v16;
                  *&v355 = 0;
                }

                v8 = a3;
                v32 = v338;
                v10 = v354;
                v17 = v355;
                v31 = a2;
                v7 = a4;
                if (v338 >= a3)
                {
                  v203 = *v336;
                  if (a2 == a3)
                  {
                    v10 = v42[12];
                    if (v203)
                    {
                      v204 = v42[11];
                      if (v204 < a2)
                      {
                        goto LABEL_408;
                      }

                      v328 = v42[12];
                      v205 = v42[10];
                      v207 = (v203 + 16);
                      v206 = *(v203 + 16);
                      v208 = *(v203 + 18);
                      if (*(v203 + 16) && v204 > a2)
                      {
                        swift_unknownObjectRetain_n();
                        if (!v208)
                        {
                          v210 = 0;
                          v209 = a2;
                          v17 = v203;
LABEL_277:
                          v221 = 0;
                          v222 = 24;
                          v218 = v209;
                          while (1)
                          {
                            v223 = *(v17 + v222);
                            v209 = v218 - v223;
                            if (__OFSUB__(v218, v223))
                            {
                              goto LABEL_382;
                            }

                            if (__OFADD__(v209, 1))
                            {
                              goto LABEL_383;
                            }

                            if (v209 + 1 < 1)
                            {
                              goto LABEL_285;
                            }

                            ++v221;
                            v222 += 24;
                            v218 -= v223;
                            if (v206 == v221)
                            {
                              v221 = v206;
                              goto LABEL_283;
                            }
                          }
                        }

                        v209 = a2;
                        v210 = v208;
                        v211 = v203;
                        do
                        {
                          v212 = *v207;
                          if (*v207)
                          {
                            v213 = 0;
                            v214 = (v211 + 40);
                            while (1)
                            {
                              v215 = *v214;
                              v214 += 3;
                              v216 = v209 - v215;
                              if (__OFSUB__(v209, v215))
                              {
                                goto LABEL_367;
                              }

                              if (__OFADD__(v216, 1))
                              {
                                goto LABEL_368;
                              }

                              if (v216 + 1 < 1)
                              {
                                v212 = v213;
                                goto LABEL_258;
                              }

                              ++v213;
                              v209 = v216;
                              if (v212 == v213)
                              {
                                goto LABEL_267;
                              }
                            }
                          }

                          v216 = v209;
LABEL_267:
                          if (v216)
                          {
                            goto LABEL_384;
                          }

                          v209 = 0;
LABEL_258:
                          v210 = (v212 << ((4 * v208 + 8) & 0x3C)) | ((-15 << ((4 * v208 + 8) & 0x3C)) - 1) & v210;
                          v17 = *(v211 + 24 + 24 * v212);
                          swift_unknownObjectRetain();
                          swift_unknownObjectRelease();
                          v207 = (v17 + 16);
                          LOBYTE(v208) = *(v17 + 18);
                          v211 = v17;
                        }

                        while (v208);
                        LODWORD(v206) = *v207;
                        if (*v207)
                        {
                          goto LABEL_277;
                        }

                        v221 = 0;
LABEL_283:
                        if (!v209)
                        {
                          v218 = 0;
LABEL_285:
                          swift_unknownObjectRelease();
                          v220 = v210 & 0xFFFFFFFFFFFFF0FFLL | (v221 << 8);
                          v8 = a3;
                          goto LABEL_286;
                        }

                        goto LABEL_420;
                      }

                      v220 = ((-15 << ((4 * v208 + 8) & 0x3C)) - 1) & v208 | (v206 << ((4 * v208 + 8) & 0x3C));
                      swift_unknownObjectRetain();
                      v218 = 0;
                      v17 = 0;
LABEL_286:
                      v219 = v220;
                      v224 = v205;
                      v10 = v328;
                      v324 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v328, v220, v17, v203, v224);
                      result = swift_unknownObjectRelease();
                      v217 = a4;
                      v31 = a2;
                    }

                    else
                    {
                      if (a2 > 0)
                      {
                        goto LABEL_411;
                      }

                      v217 = a4;
                      v218 = 0;
                      v17 = 0;
                      v219 = 0;
                      v324 = 0;
                    }

                    v54 = __OFSUB__(v31, v218);
                    v32 = v31 - v218;
                    v16 = v219;
                    v7 = v217;
                    if (v54)
                    {
                      goto LABEL_404;
                    }
                  }

                  else
                  {
                    v32 = 0;
                    v324 = 0;
                    v17 = 0;
                    v16 = 0;
                    v10 = v42[12];
                    if (v203)
                    {
                      v17 = 0;
                      v32 = v42[11];
                      v324 = v42[10];
                      v16 = ((-15 << ((4 * *(v203 + 18) + 8) & 0x3C)) - 1) & *(v203 + 18) | (*(v203 + 16) << ((4 * *(v203 + 18) + 8) & 0x3C));
                      v31 = a2;
                    }
                  }
                }

                continue;
              }
            }

            else
            {
            }

            v157 = v178;
            goto LABEL_233;
          }

          goto LABEL_234;
        }

        v156 = v336;
        v144 = v324;
        if (specialized Rope._Node.formSuccessor(of:)(&v354, v147))
        {
          swift_unknownObjectRelease();
          v153 = *(&v354 + 1);
          v155 = v355;
          v154 = v354;
        }

        else
        {
          v153 = specialized Rope._endPath.getter(v147);
          swift_unknownObjectRelease();
          v155 = 0;
          *&v354 = v327 + 2;
          v154 = v327 + 2;
        }

        v157 = v332;
        v158 = *v336;
        if (!*v336)
        {
          goto LABEL_183;
        }

LABEL_174:
        if (v153 >= (((-15 << ((4 * *(v158 + 18) + 8) & 0x3C)) - 1) & *(v158 + 18) | (*(v158 + 16) << ((4 * *(v158 + 18) + 8) & 0x3C))))
        {
          goto LABEL_213;
        }

        if (v154 != v42[12])
        {
          goto LABEL_407;
        }

        if (v155)
        {
          v159 = &v155[3 * ((v153 >> ((4 * *(v155 + 18) + 8) & 0x3C)) & 0xF)];
          v160 = v159[4];
          v161 = v159[5];
        }

        else
        {
          specialized Rope._Node.subscript.getter(v153, v158);
          v160 = v167;
          v161 = v168;
        }

        if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v160, v145) & 1) == 0)
        {

          goto LABEL_212;
        }

        v169 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v161, *(&v145 + 1));

        if (v169)
        {
          v157 = specialized Rope._remove(at:)(&v354, v146, v332);
          v170 = v42[12];
          if (v157 < specialized Rope._endPath.getter(v42[9]))
          {
            specialized Rope._Node.unmanagedLeaf(at:)(v157, v42[9]);
          }

          v171 = v354;

          if (v170 != v42[12])
          {
            goto LABEL_418;
          }

          if (!*v156)
          {
            goto LABEL_432;
          }

          specialized Rope._Node._prepareModify(at:)(v157, v367);
          v354 = v367[0];
          v355 = v367[1];
          v356 = v367[2];
          if (__OFADD__(*(&v367[0] + 1), v171))
          {
            goto LABEL_419;
          }

          *(&v354 + 1) = *(&v367[0] + 1) + v171;
          v149 = v170 + 1;
          v42[12] = v170 + 1;
          if (!v42[9])
          {
            goto LABEL_431;
          }

          v137 = specialized Rope._Node._finalizeModify(_:)(&v344, &v354);

LABEL_212:

LABEL_213:
          v163 = *v156;
          if (!*v156)
          {
            goto LABEL_215;
          }
        }

        else
        {
          v157 = v332;
          v163 = *v156;
          if (!*v156)
          {
            goto LABEL_215;
          }
        }

        v163 = *(v163 + 18);
        goto LABEL_215;
      }

      break;
    }

    v358 = 0;
    v356 = 0u;
    v357 = 0u;
    v354 = 0u;
    v355 = 0u;
    outlined init with copy of AttributedString._AttributeValue?(&v354, &v349);
    if (*(&v350 + 1))
    {
      v346 = v351;
      v347 = v352;
      v348 = v353;
      v344 = v349;
      v345 = v350;
      outlined init with copy of AttributedString._AttributeValue(&v344, &v339);

      v89 = swift_isUniquelyReferenced_nonNull_native();
      v90 = specialized __RawDictionaryStorage.find<A>(_:)(v7, a5);
      v92 = *(v57 + 16);
      v93 = (v91 & 1) == 0;
      v54 = __OFADD__(v92, v93);
      v94 = v92 + v93;
      if (v54)
      {
        goto LABEL_402;
      }

      v95 = v91;
      if (*(v57 + 24) >= v94)
      {
        if (v89)
        {
          v96 = v57;
          if (v91)
          {
            goto LABEL_122;
          }

          goto LABEL_133;
        }

        v326 = v90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
        v225 = static _DictionaryStorage.copy(original:)();
        v96 = v225;
        if (*(v57 + 16))
        {
          v226 = (v225 + 64);
          v227 = (v57 + 64);
          v228 = ((1 << *(v96 + 32)) + 63) >> 6;
          if (v96 != v57 || v226 >= &v227[8 * v228])
          {
            memmove(v226, v227, 8 * v228);
          }

          v229 = 0;
          *(v96 + 16) = *(v57 + 16);
          v230 = 1 << *(v57 + 32);
          if (v230 < 64)
          {
            v231 = ~(-1 << v230);
          }

          else
          {
            v231 = -1;
          }

          v232 = v231 & *(v57 + 64);
          v233 = (v230 + 63) >> 6;
          if (v232)
          {
            do
            {
              v234 = __clz(__rbit64(v232));
              v334 = (v232 - 1) & v232;
LABEL_304:
              v237 = v234 | (v229 << 6);
              v238 = 16 * v237;
              v239 = (*(v57 + 48) + 16 * v237);
              v240 = v239[1];
              v329 = *v239;
              v241 = 72 * v237;
              outlined init with copy of AttributedString._AttributeValue(*(v57 + 56) + 72 * v237, &v349);
              v242 = (*(v96 + 48) + v238);
              *v242 = v329;
              v242[1] = v240;
              v243 = *(v96 + 56) + v241;
              *v243 = v349;
              v244 = v350;
              v245 = v351;
              v246 = v352;
              *(v243 + 64) = v353;
              *(v243 + 32) = v245;
              *(v243 + 48) = v246;
              *(v243 + 16) = v244;

              v42 = a1;
              v7 = a4;
              v232 = v334;
            }

            while (v334);
          }

          v235 = v229;
          while (1)
          {
            v229 = v235 + 1;
            if (__OFADD__(v235, 1))
            {
              goto LABEL_421;
            }

            if (v229 >= v233)
            {
              break;
            }

            v236 = *(v57 + 64 + 8 * v229);
            ++v235;
            if (v236)
            {
              v234 = __clz(__rbit64(v236));
              v334 = (v236 - 1) & v236;
              goto LABEL_304;
            }
          }
        }

        v90 = v326;
        v32 = v337;
        if ((v95 & 1) == 0)
        {
          goto LABEL_133;
        }

LABEL_122:
        v98 = *(v96 + 56) + 72 * v90;
        v100 = *(v98 + 16);
        v99 = *(v98 + 32);
        v101 = *(v98 + 48);
        v353 = *(v98 + 64);
        v352 = v101;
        v349 = *v98;
        v350 = v100;
        v351 = v99;
        v102 = *(v96 + 56) + 72 * v90;
        v103 = v340;
        v104 = v341;
        v105 = v342;
        *(v102 + 64) = v343;
        *(v102 + 32) = v104;
        *(v102 + 48) = v105;
        *(v102 + 16) = v103;
        *v102 = v339;
        outlined destroy of AttributedString._AttributeValue(&v344);
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v94, v89);
        v96 = v57;
        v90 = specialized __RawDictionaryStorage.find<A>(_:)(v7, a5);
        if ((v95 & 1) != (v97 & 1))
        {
          goto LABEL_433;
        }

        if (v95)
        {
          goto LABEL_122;
        }

LABEL_133:
        *(v96 + 8 * (v90 >> 6) + 64) |= 1 << v90;
        v122 = (*(v96 + 48) + 16 * v90);
        *v122 = v7;
        v122[1] = a5;
        v123 = *(v96 + 56) + 72 * v90;
        *v123 = v339;
        v124 = v340;
        v125 = v341;
        v126 = v342;
        *(v123 + 64) = v343;
        *(v123 + 32) = v125;
        *(v123 + 48) = v126;
        *(v123 + 16) = v124;
        v127 = *(v96 + 16);
        v54 = __OFADD__(v127, 1);
        v128 = v127 + 1;
        if (v54)
        {
          goto LABEL_406;
        }

        *(v96 + 16) = v128;

        outlined destroy of AttributedString._AttributeValue(&v344);
        v349 = 0u;
        v350 = 0u;
        v351 = 0u;
        v352 = 0u;
        v353 = 0;
      }

LABEL_135:
      *&v359 = v96;
    }

    else
    {

      outlined destroy of TermOfAddress?(&v349, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      v106 = specialized __RawDictionaryStorage.find<A>(_:)(v7, a5);
      if (v107)
      {
        v108 = v106;
        v109 = v359;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v96 = v109;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
          v270 = static _DictionaryStorage.copy(original:)();
          v96 = v270;
          if (*(v109 + 16))
          {
            v271 = (v270 + 64);
            v272 = (v109 + 64);
            v273 = ((1 << *(v96 + 32)) + 63) >> 6;
            if (v96 != v109 || v271 >= &v272[8 * v273])
            {
              memmove(v271, v272, 8 * v273);
            }

            v274 = 0;
            *(v96 + 16) = *(v109 + 16);
            v275 = 1 << *(v109 + 32);
            if (v275 < 64)
            {
              v276 = ~(-1 << v275);
            }

            else
            {
              v276 = -1;
            }

            v277 = v276 & *(v109 + 64);
            v278 = (v275 + 63) >> 6;
            if (v277)
            {
              do
              {
                v279 = __clz(__rbit64(v277));
                v335 = (v277 - 1) & v277;
LABEL_340:
                v282 = v279 | (v274 << 6);
                v283 = 16 * v282;
                v284 = (*(v109 + 48) + 16 * v282);
                v285 = v284[1];
                v330 = *v284;
                v286 = 72 * v282;
                outlined init with copy of AttributedString._AttributeValue(*(v109 + 56) + 72 * v282, &v349);
                v287 = (*(v96 + 48) + v283);
                *v287 = v330;
                v287[1] = v285;
                v288 = *(v96 + 56) + v286;
                *v288 = v349;
                v289 = v350;
                v290 = v351;
                v291 = v352;
                *(v288 + 64) = v353;
                *(v288 + 32) = v290;
                *(v288 + 48) = v291;
                *(v288 + 16) = v289;

                v7 = a4;
                v32 = v337;
                v277 = v335;
              }

              while (v335);
            }

            v280 = v274;
            while (1)
            {
              v274 = v280 + 1;
              if (__OFADD__(v280, 1))
              {
                goto LABEL_427;
              }

              if (v274 >= v278)
              {
                break;
              }

              v281 = *(v109 + 64 + 8 * v274);
              ++v280;
              if (v281)
              {
                v279 = __clz(__rbit64(v281));
                v335 = (v281 - 1) & v281;
                goto LABEL_340;
              }
            }
          }

          v42 = a1;
        }

        v110 = *(v96 + 56) + 72 * v108;
        v349 = *v110;
        v112 = *(v110 + 32);
        v111 = *(v110 + 48);
        v113 = *(v110 + 64);
        v350 = *(v110 + 16);
        v351 = v112;
        v353 = v113;
        v352 = v111;
        specialized _NativeDictionary._delete(at:)(v108, v96);
        goto LABEL_135;
      }

      v353 = 0;
      v351 = 0u;
      v352 = 0u;
      v349 = 0u;
      v350 = 0u;
    }

    AttributedString._AttributeStorage._attributeModified(_:old:new:)(v7, a5, &v349, &v354);
    outlined destroy of TermOfAddress?(&v354, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
    outlined destroy of TermOfAddress?(&v349, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);

    if (__OFSUB__(v69, v68))
    {
      goto LABEL_389;
    }

    v129 = *(&v359 + 1);
    specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v68, v69, v69 - v68, v359, *(&v359 + 1));
    v17 = v42[9];
    v10 = v42[11];
    if (v17)
    {
      v130 = v42[11];
    }

    else
    {
      v130 = 0;
    }

    if (v32 < 0 || v130 < v32)
    {
      goto LABEL_391;
    }

    v333 = v42[12];
    if (v17)
    {
      v327 = v129;
      v131 = v42[10];
      v132 = (v17 + 16);
      v5 = *(v17 + 16);
      v133 = *(v17 + 18);
      if (*(v17 + 16) && v32 < v10)
      {
        v325 = v42[10];
        swift_unknownObjectRetain_n();
        if (!v133)
        {
          v134 = 0;
          v20 = v32;
          v137 = v17;
LABEL_189:
          v164 = 0;
          v165 = 3;
          v142 = v20;
          while (1)
          {
            v166 = v137[v165];
            v20 = v142 - v166;
            if (__OFSUB__(v142, v166))
            {
              goto LABEL_374;
            }

            if (__OFADD__(v20, 1))
            {
              goto LABEL_375;
            }

            if (v20 + 1 < 1)
            {
              goto LABEL_197;
            }

            ++v164;
            v165 += 3;
            v142 -= v166;
            if (v5 == v164)
            {
              v164 = v5;
              goto LABEL_195;
            }
          }
        }

        v20 = v32;
        v134 = v133;
        v135 = v17;
        do
        {
          v136 = *v132;
          if (*v132)
          {
            v138 = 0;
            v139 = v135 + 5;
            while (1)
            {
              v140 = *v139;
              v139 += 3;
              v141 = v20 - v140;
              if (__OFSUB__(v20, v140))
              {
                goto LABEL_363;
              }

              if (__OFADD__(v141, 1))
              {
                goto LABEL_364;
              }

              if (v141 + 1 < 1)
              {
                v136 = v138;
                goto LABEL_148;
              }

              ++v138;
              v20 = v141;
              if (v136 == v138)
              {
                goto LABEL_157;
              }
            }
          }

          v141 = v20;
LABEL_157:
          if (v141)
          {
            goto LABEL_376;
          }

          v20 = 0;
LABEL_148:
          v134 = (v136 << ((4 * v133 + 8) & 0x3C)) | ((-15 << ((4 * v133 + 8) & 0x3C)) - 1) & v134;
          v137 = v135[3 * v136 + 3];
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v132 = v137 + 2;
          LOBYTE(v133) = *(v137 + 18);
          v135 = v137;
        }

        while (v133);
        LODWORD(v5) = *v132;
        if (*v132)
        {
          goto LABEL_189;
        }

        v164 = 0;
LABEL_195:
        if (!v20)
        {
          v142 = 0;
LABEL_197:
          swift_unknownObjectRelease();
          v162 = v134 & 0xFFFFFFFFFFFFF0FFLL | (v164 << 8);
          v42 = a1;
          v131 = v325;
          goto LABEL_198;
        }

        goto LABEL_413;
      }

      v162 = ((-15 << ((4 * v133 + 8) & 0x3C)) - 1) & v133 | (v5 << ((4 * v133 + 8) & 0x3C));
      swift_unknownObjectRetain();
      v142 = 0;
      v137 = 0;
LABEL_198:
      v143 = v162;
      v144 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v333, v162, v137, v17, v131);

      swift_unknownObjectRelease();
    }

    else
    {

      v142 = 0;
      v137 = 0;
      v143 = 0;
      v144 = 0;
    }

    v54 = __OFSUB__(v337, v142);
    v337 -= v142;
    if (v54)
    {
      goto LABEL_394;
    }

    v157 = v143;
    v149 = v333;
    goto LABEL_234;
  }

LABEL_410:
  __break(1u);
LABEL_411:
  __break(1u);
LABEL_412:
  __break(1u);
LABEL_413:
  __break(1u);
LABEL_414:
  __break(1u);
LABEL_415:
  __break(1u);
LABEL_416:
  __break(1u);
LABEL_417:
  __break(1u);
LABEL_418:
  __break(1u);
LABEL_419:
  __break(1u);
LABEL_420:
  __break(1u);
LABEL_421:
  __break(1u);
LABEL_422:
  __break(1u);
LABEL_423:
  __break(1u);
LABEL_424:
  __break(1u);
LABEL_425:
  __break(1u);
LABEL_426:
  __break(1u);
LABEL_427:
  __break(1u);
LABEL_428:
  __break(1u);
LABEL_429:
  __break(1u);
LABEL_430:
  __break(1u);
LABEL_431:
  __break(1u);
LABEL_432:
  __break(1u);
LABEL_433:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized AttributedString._InternalRunsSlice.updateEach(with:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = result[9];
  if (v5)
  {
    v6 = result[11];
  }

  else
  {
    v6 = 0;
  }

  if (a2 < 0 || (v7 = a2, v6 < a2))
  {
LABEL_307:
    __break(1u);
    goto LABEL_308;
  }

  v8 = a3;
  v9 = result;
  v171 = result[10];
  v172 = result + 9;
  v10 = result[12];
  LOBYTE(v176) = a5;
  if (!v5 || ((v11 = (v5 + 16), LODWORD(v12) = *(v5 + 16), *(v5 + 16)) ? (v13 = result[11] <= a2) : (v13 = 1), v13))
  {
    v14 = swift_unknownObjectRetain();
    result = specialized Rope._endPath.getter(v14);
    v15 = result;
    v16 = 0;
    v17 = 0;
    v173 = result;
    if (!v5)
    {
      goto LABEL_40;
    }

    goto LABEL_13;
  }

  v167 = result[12];
  v18 = *(v5 + 18);
  result = swift_unknownObjectRetain_n();
  if (!v18)
  {
    v19 = v7;
    v7 = 0;
    v16 = v5;
    v8 = a3;
    goto LABEL_31;
  }

  v19 = v7;
  v7 = v18;
  v20 = v5;
  do
  {
    v21 = *v11;
    if (*v11)
    {
      v22 = 0;
      v23 = (v20 + 40);
      while (1)
      {
        v24 = *v23;
        v23 += 3;
        v25 = v19 - v24;
        if (__OFSUB__(v19, v24))
        {
          goto LABEL_271;
        }

        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v25 + 1 < 1)
        {
          v21 = v22;
          goto LABEL_17;
        }

        ++v22;
        v19 = v25;
        if (v21 == v22)
        {
          goto LABEL_26;
        }
      }

LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
      goto LABEL_307;
    }

    v25 = v19;
LABEL_26:
    if (v25)
    {
      goto LABEL_302;
    }

    v19 = 0;
LABEL_17:
    v7 = (v21 << ((4 * v18 + 8) & 0x3C)) | ((-15 << ((4 * v18 + 8) & 0x3C)) - 1) & v7;
    v16 = *(v20 + 24 + 24 * v21);
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    v11 = (v16 + 16);
    LOBYTE(v18) = *(v16 + 18);
    v20 = v16;
  }

  while (v18);
  LODWORD(v12) = *v11;
  if (*v11)
  {
    v8 = a3;
LABEL_31:
    v26 = 0;
    v27 = 24;
    v17 = v19;
    v12 = v12;
    while (1)
    {
      v28 = *(v16 + v27);
      v29 = v17 - v28;
      if (__OFSUB__(v17, v28))
      {
        goto LABEL_299;
      }

      if (__OFADD__(v29, 1))
      {
        goto LABEL_300;
      }

      if (v29 + 1 < 1)
      {
        break;
      }

      ++v26;
      v27 += 24;
      v17 -= v28;
      if (v12 == v26)
      {
        if (!v29)
        {
          goto LABEL_37;
        }

LABEL_268:
        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
        goto LABEL_272;
      }
    }

    v12 = v26;
  }

  else
  {
LABEL_267:
    v12 = 0;
    v8 = a3;
    if (v19)
    {
      goto LABEL_268;
    }

LABEL_37:
    v17 = 0;
  }

  result = swift_unknownObjectRelease();
  v15 = (v7 & 0xFFFFFFFFFFFFF0FFLL | (v12 << 8));
  v7 = a2;
  v10 = v167;
  v173 = v15;
  if (v5)
  {
LABEL_13:
    v170 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v10, v15, v16, v5, v171);
    result = swift_unknownObjectRelease();
    goto LABEL_41;
  }

LABEL_40:
  v170 = 0;
LABEL_41:
  v30 = v7 - v17;
  v31 = v172;
  if (!__OFSUB__(v7, v17))
  {
    v163 = v176 & 1;
    v171 = v9;
    while (1)
    {
      v32 = *v31;
      if (v7 == v8)
      {
        if (v32)
        {
          v33 = *(v9 + 11);
          if (v33 < v7)
          {
            goto LABEL_303;
          }

          v161 = *(v9 + 12);
          v162 = *(v9 + 10);
          v9 = (v32 + 16);
          v34 = *(v32 + 16);
          v5 = *(v32 + 18);
          if (*(v32 + 16))
          {
            v35 = v33 <= v7;
          }

          else
          {
            v35 = 1;
          }

          if (!v35)
          {
            v167 = v10;
            result = swift_unknownObjectRetain_n();
            if (!v5)
            {
              v41 = 0;
              v19 = v7;
              v7 = v32;
LABEL_75:
              v9 = v171;
              v48 = 0;
              v49 = 24;
              v38 = v19;
              v50 = v34;
              v8 = a3;
              while (1)
              {
                v51 = *(v7 + v49);
                v19 = v38 - v51;
                if (__OFSUB__(v38, v51))
                {
                  goto LABEL_273;
                }

                if (__OFADD__(v19, 1))
                {
                  goto LABEL_274;
                }

                if (v19 + 1 < 1)
                {
                  goto LABEL_83;
                }

                ++v48;
                v49 += 24;
                v38 -= v51;
                if (v50 == v48)
                {
                  v48 = v50;
                  goto LABEL_81;
                }
              }
            }

            v19 = v7;
            v41 = v5;
            v42 = v32;
            do
            {
              v43 = *v9;
              if (*v9)
              {
                v44 = 0;
                v45 = (v42 + 40);
                while (1)
                {
                  v46 = *v45;
                  v45 += 3;
                  v47 = v19 - v46;
                  if (__OFSUB__(v19, v46))
                  {
                    break;
                  }

                  if (__OFADD__(v47, 1))
                  {
                    goto LABEL_264;
                  }

                  if (v47 + 1 < 1)
                  {
                    v43 = v44;
                    goto LABEL_61;
                  }

                  ++v44;
                  v19 = v47;
                  if (v43 == v44)
                  {
                    goto LABEL_70;
                  }
                }

                __break(1u);
LABEL_264:
                __break(1u);
LABEL_265:
                __break(1u);
LABEL_266:
                __break(1u);
                goto LABEL_267;
              }

              v47 = v19;
LABEL_70:
              if (v47)
              {
                goto LABEL_275;
              }

              v19 = 0;
LABEL_61:
              v41 = (v43 << ((4 * v5 + 8) & 0x3C)) | ((-15 << ((4 * v5 + 8) & 0x3C)) - 1) & v41;
              v7 = *(v42 + 24 + 24 * v43);
              swift_unknownObjectRetain();
              result = swift_unknownObjectRelease();
              v9 = (v7 + 16);
              v5 = *(v7 + 18);
              v42 = v7;
            }

            while (*(v7 + 18));
            LODWORD(v34) = *v9;
            if (*v9)
            {
              goto LABEL_75;
            }

            v48 = 0;
            v8 = a3;
            v9 = v171;
LABEL_81:
            if (!v19)
            {
              v38 = 0;
LABEL_83:
              swift_unknownObjectRelease();
              v37 = v41 & 0xFFFFFFFFFFFFF0FFLL | (v48 << 8);
              v36 = a2;
              v10 = v167;
              goto LABEL_84;
            }

            goto LABEL_310;
          }

          v36 = v7;
          v37 = ((-15 << ((4 * v5 + 8) & 0x3C)) - 1) & v5 | (v34 << ((4 * v5 + 8) & 0x3C));
          swift_unknownObjectRetain();
          v38 = 0;
          v7 = 0;
          v8 = a3;
          v9 = v171;
LABEL_84:
          specialized Rope._Node.distanceFromStart<A>(to:in:)(v161, v37, v7, v32, v162);
          result = swift_unknownObjectRelease();
          v7 = v36;
        }

        else
        {
          if (v7 > 0)
          {
            goto LABEL_304;
          }

          v38 = 0;
        }

        v39 = v7 - v38;
        v40 = v173;
        if (__OFSUB__(v7, v38))
        {
          goto LABEL_289;
        }
      }

      else
      {
        if (v32)
        {
          v39 = *(v9 + 11);
        }

        else
        {
          v39 = 0;
        }

        v40 = v173;
      }

      if (v30 >= v39)
      {
        return result;
      }

      if (v10 != *(v9 + 12))
      {
        goto LABEL_279;
      }

      if (v16)
      {
        v52 = (v16 + 24 * ((v40 >> ((4 * *(v16 + 18) + 8) & 0x3C)) & 0xF));
        v54 = v52[4];
        v53 = v52[5];
        v55 = v52[3];
        v56 = v30 + v55;
        v57 = __OFADD__(v30, v55);

        if (v57)
        {
          goto LABEL_287;
        }

        *&v184 = v54;
        *(&v184 + 1) = v53;
        v58 = v7;
        if (v30 >= v7)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v80 = *(v9 + 9);
        swift_unknownObjectRetain();
        specialized Rope._Node.subscript.getter(v40, v80);
        v82 = v81;
        v84 = v83;
        result = swift_unknownObjectRelease();
        if (v10 != *(v9 + 12))
        {
          goto LABEL_297;
        }

        v168 = v10;
        v85 = v8;
        v86 = v40;
        v87 = *(v9 + 9);
        swift_unknownObjectRetain();
        v88 = specialized Rope._Node.subscript.getter(v86, v87);
        swift_unknownObjectRelease();

        v56 = v30 + v88;
        if (__OFADD__(v30, v88))
        {
          goto LABEL_298;
        }

        *&v184 = v82;
        *(&v184 + 1) = v84;
        v58 = v7;
        v8 = v85;
        v10 = v168;
        if (v30 >= v7)
        {
LABEL_94:
          if (v30 >= v8)
          {
            v58 = v8;
          }

          else
          {
            v58 = v30;
          }
        }
      }

      if (v56 <= v7)
      {
        v59 = v7;
      }

      else
      {
        v59 = v56;
      }

      if (v56 <= v8)
      {
        v60 = v59;
      }

      else
      {
        v60 = v8;
      }

      if (v58 == v60)
      {
        goto LABEL_280;
      }

      v176 = v30;
      if (v58 != v30 || v60 != v56)
      {
        LOBYTE(v181) = v163;
        result = specialized AttributedString._AttributeStorage.mergeIn(_:mergePolicy:)(a4, &v181);
        if (__OFSUB__(v60, v58))
        {
          goto LABEL_291;
        }

        v67 = *(&v184 + 1);
        result = specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v58, v60, v60 - v58, v184, *(&v184 + 1));
        v68 = v9;
        v9 = *(v9 + 9);
        v19 = *(v68 + 11);
        if (v9)
        {
          v69 = *(v68 + 11);
        }

        else
        {
          v69 = 0;
        }

        if (v30 < 0 || v69 < v30)
        {
          goto LABEL_292;
        }

        v174 = *(v171 + 96);
        if (v9)
        {
          v70 = *(v171 + 80);
          v71 = v9 + 8;
          v7 = v9[8];
          v5 = *(v9 + 18);
          if (v9[8] && v30 < v19)
          {
            v167 = *(v171 + 80);
            v16 = v67;
            result = swift_unknownObjectRetain_n();
            if (!v5)
            {
              v73 = 0;
              v72 = v30;
              v63 = v9;
LABEL_161:
              v104 = 0;
              v105 = 3;
              v89 = v72;
              while (1)
              {
                v106 = v63[v105];
                v72 = v89 - v106;
                if (__OFSUB__(v89, v106))
                {
                  goto LABEL_276;
                }

                if (__OFADD__(v72, 1))
                {
                  goto LABEL_277;
                }

                if (v72 + 1 < 1)
                {
                  goto LABEL_169;
                }

                ++v104;
                v105 += 3;
                v89 -= v106;
                if (v7 == v104)
                {
                  v104 = v7;
                  goto LABEL_167;
                }
              }
            }

            v72 = v30;
            v73 = v5;
            v74 = v9;
            do
            {
              v75 = *v71;
              if (*v71)
              {
                v76 = 0;
                v77 = v74 + 5;
                while (1)
                {
                  v78 = *v77;
                  v77 += 3;
                  v79 = v72 - v78;
                  if (__OFSUB__(v72, v78))
                  {
                    goto LABEL_265;
                  }

                  if (__OFADD__(v79, 1))
                  {
                    goto LABEL_266;
                  }

                  if (v79 + 1 < 1)
                  {
                    v75 = v76;
                    goto LABEL_127;
                  }

                  ++v76;
                  v72 = v79;
                  if (v75 == v76)
                  {
                    goto LABEL_136;
                  }
                }
              }

              v79 = v72;
LABEL_136:
              if (v79)
              {
                goto LABEL_278;
              }

              v72 = 0;
LABEL_127:
              v73 = (v75 << ((4 * v5 + 8) & 0x3C)) | ((-15 << ((4 * v5 + 8) & 0x3C)) - 1) & v73;
              v63 = v74[3 * v75 + 3];
              swift_unknownObjectRetain();
              result = swift_unknownObjectRelease();
              v71 = v63 + 2;
              v5 = *(v63 + 18);
              v74 = v63;
            }

            while (*(v63 + 18));
            LODWORD(v7) = *v71;
            if (*v71)
            {
              goto LABEL_161;
            }

            v104 = 0;
LABEL_167:
            if (!v72)
            {
              v89 = 0;
LABEL_169:
              swift_unknownObjectRelease();
              v90 = v73 & 0xFFFFFFFFFFFFF0FFLL | (v104 << 8);
              v8 = a3;
              v70 = v167;
              goto LABEL_170;
            }

            goto LABEL_311;
          }

          v90 = ((-15 << ((4 * v5 + 8) & 0x3C)) - 1) & v5 | (v7 << ((4 * v5 + 8) & 0x3C));
          swift_unknownObjectRetain();
          v89 = 0;
          v63 = 0;
LABEL_170:
          v91 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v174, v90, v63, v9, v70);

          swift_unknownObjectRelease();
        }

        else
        {

          v89 = 0;
          v63 = 0;
          v90 = 0;
          v91 = 0;
        }

        v107 = __OFSUB__(v176, v89);
        v176 -= v89;
        v97 = v171;
        if (v107)
        {
          goto LABEL_296;
        }

        v62 = v174;
        goto LABEL_205;
      }

      if (v10 != *(v9 + 12))
      {
        goto LABEL_290;
      }

      if (!*v172)
      {
        goto LABEL_319;
      }

      specialized Rope._Node._prepareModify(at:)(v173, &v185);
      v196[0] = v186;
      v181 = v185;
      v182 = v186;
      v183 = v187;
      outlined destroy of TermOfAddress?(v196, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMR);
      result = outlined destroy of TermOfAddress?(v196 + 8, &_sShySSGMd, &_sShySSGMR);
      v182 = MEMORY[0x1E69E7CC8];
      *(v9 + 12) = v10 + 1;
      if (!*(v9 + 9))
      {
        goto LABEL_320;
      }

      specialized Rope._Node._finalizeModify(_:)(&v178, &v181);

      LOBYTE(v181) = v163;
      result = specialized AttributedString._AttributeStorage.mergeIn(_:mergePolicy:)(a4, &v181);
      if (v10 + 1 != *(v9 + 12))
      {
        goto LABEL_293;
      }

      if (!*v172)
      {
        goto LABEL_322;
      }

      specialized Rope._Node._prepareModify(at:)(v173, &v188);
      v194 = v189;
      v195 = v190;
      outlined destroy of TermOfAddress?(&v194, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMR);
      result = outlined destroy of TermOfAddress?(&v195, &_sShySSGMd, &_sShySSGMR);
      v181 = v188;
      v183 = v191;
      v61 = v184;
      v182 = v184;
      v62 = v10 + 2;
      *(v9 + 12) = v62;
      if (!*(v9 + 9))
      {
        goto LABEL_321;
      }

      v63 = specialized Rope._Node._finalizeModify(_:)(v177, &v181);

      v64 = *(v9 + 9);
      v65 = *(v9 + 12);
      *&v181 = v62;
      *(&v181 + 1) = v173;
      *&v182 = v63;
      if (v62 != v65)
      {
        goto LABEL_294;
      }

      if (v64)
      {
        v66 = ((-15 << ((4 * *(v64 + 18) + 8) & 0x3C)) - 1) & *(v64 + 18) | (*(v64 + 16) << ((4 * *(v64 + 18) + 8) & 0x3C));
        result = swift_unknownObjectRetain();
      }

      else
      {
        v66 = 0;
      }

      v8 = a3;
      if (v173 >= v66)
      {
        goto LABEL_295;
      }

      v92 = (4 * *(v63 + 18) + 8) & 0x3C;
      v93 = ((v173 >> v92) & 0xF) + 1;
      if (v93 >= *(v63 + 8))
      {
        v97 = v171;
        if (specialized Rope._Node.formSuccessor(of:)(&v181, v64))
        {
          result = swift_unknownObjectRelease();
          v94 = *(&v181 + 1);
          v96 = v182;
          v95 = v181;
        }

        else
        {
          v94 = specialized Rope._endPath.getter(v64);
          result = swift_unknownObjectRelease();
          v96 = 0;
          *&v181 = v62;
          v95 = v62;
        }

        v90 = v173;
      }

      else
      {
        v94 = (v93 << v92) | ((-15 << v92) - 1) & v173;
        result = swift_unknownObjectRelease();
        v95 = v62;
        v96 = v63;
        v97 = v171;
        v90 = v173;
      }

      v98 = v172;
      v99 = *v172;
      if (!*v172)
      {
        v103 = 0;
        goto LABEL_187;
      }

      if (v94 >= (((-15 << ((4 * *(v99 + 18) + 8) & 0x3C)) - 1) & *(v99 + 18) | (*(v99 + 16) << ((4 * *(v99 + 18) + 8) & 0x3C))))
      {
        goto LABEL_185;
      }

      if (v95 != v97[12])
      {
        goto LABEL_305;
      }

      if (v96)
      {
        v100 = &v96[3 * ((v94 >> ((4 * *(v96 + 18) + 8) & 0x3C)) & 0xF)];
        v101 = v100[4];
        v102 = v100[5];
      }

      else
      {
        specialized Rope._Node.subscript.getter(v94, v99);
        v101 = v108;
        v102 = v109;
      }

      if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v101, v61) & 1) == 0)
      {

LABEL_184:

LABEL_185:
        v103 = *v98;
        if (!*v98)
        {
          goto LABEL_187;
        }

LABEL_186:
        v103 = *(v103 + 18);
        goto LABEL_187;
      }

      v110 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v102, *(&v61 + 1));

      if (v110)
      {
        v98 = v172;
        v90 = specialized Rope._remove(at:)(&v181, v62, v173);
        v111 = v97[12];
        if (v90 < specialized Rope._endPath.getter(v97[9]))
        {
          specialized Rope._Node.unmanagedLeaf(at:)(v90, v97[9]);
        }

        v112 = v181;

        if (v111 != v97[12])
        {
          goto LABEL_316;
        }

        if (!*v172)
        {
          goto LABEL_325;
        }

        result = specialized Rope._Node._prepareModify(at:)(v90, v192);
        v181 = v192[0];
        v182 = v192[1];
        v183 = v192[2];
        if (__OFADD__(*(&v192[0] + 1), v112))
        {
          goto LABEL_317;
        }

        *(&v181 + 1) = *(&v192[0] + 1) + v112;
        v62 = v111 + 1;
        v97[12] = v111 + 1;
        if (!v97[9])
        {
          goto LABEL_326;
        }

        v63 = specialized Rope._Node._finalizeModify(_:)(v177, &v181);

        goto LABEL_184;
      }

      v90 = v173;
      v103 = *v172;
      if (*v172)
      {
        goto LABEL_186;
      }

LABEL_187:
      v91 = v170;
      if (v103 >= v90)
      {
      }

      else
      {
        v113 = v97[9];
        v114 = v97[10];
        v115 = v90;
        v116 = v62;
        v117 = v97[11];
        v118 = v97[12];
        v175 = v116;
        *&v181 = v116;
        *(&v181 + 1) = v115;
        v119 = v115;
        *&v182 = v63;
        swift_unknownObjectRetain();
        specialized Rope.formIndex(before:)(&v181, v113, v114, v117, v118);
        swift_unknownObjectRelease();
        specialized Rope.subscript.getter(v181, *(&v181 + 1), v182, v97[9], v97[10], v97[11], v97[12]);
        v121 = v120;
        if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v122, v61))
        {
          v123 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v121, *(&v61 + 1));

          if (v123)
          {
            v124 = specialized Rope._remove(at:)(&v181, v175, v119);
            v125 = v97[12];
            if (v124 >= specialized Rope._endPath.getter(v97[9]))
            {
              v126 = 0;
            }

            else
            {
              v126 = specialized Rope._Node.unmanagedLeaf(at:)(v124, v97[9]);
            }

            v8 = a3;
            v178 = v125;
            v179 = v124;
            v180 = v126;
            v127 = v181;

            v128 = v97[9];
            v129 = v97[10];
            v130 = v97[11];
            v131 = v97[12];
            swift_unknownObjectRetain();
            specialized Rope.formIndex(before:)(&v178, v128, v129, v130, v131);
            result = swift_unknownObjectRelease();
            v132 = v178;
            if (v178 != v97[12])
            {
              goto LABEL_312;
            }

            if (!*v172)
            {
              goto LABEL_323;
            }

            v90 = v179;
            result = specialized Rope._Node._prepareModify(at:)(v179, v193);
            v181 = v193[0];
            v182 = v193[1];
            v183 = v193[2];
            if (__OFSUB__(v176, *(&v193[0] + 1)))
            {
              goto LABEL_313;
            }

            if (__OFADD__(*(&v193[0] + 1), v127))
            {
              goto LABEL_314;
            }

            v176 -= *(&v193[0] + 1);
            *(&v181 + 1) = *(&v193[0] + 1) + v127;
            v62 = v132 + 1;
            v97[12] = v132 + 1;
            if (!v97[9])
            {
              goto LABEL_324;
            }

            v63 = specialized Rope._Node._finalizeModify(_:)(v177, &v181);

            v91 = v170 - 1;
            if (__OFSUB__(v170, 1))
            {
              goto LABEL_315;
            }

            goto LABEL_205;
          }
        }

        else
        {
        }

        v90 = v119;
        v8 = a3;
        v62 = v175;
      }

LABEL_205:
      v133 = v97[9];
      v134 = v97[12];
      *&v181 = v62;
      *(&v181 + 1) = v90;
      *&v182 = v63;
      v107 = __OFADD__(v91, 1);
      v135 = v91 + 1;
      if (v107)
      {
        goto LABEL_282;
      }

      if (v62 != v134)
      {
        goto LABEL_283;
      }

      if (v63)
      {
        v136 = v63[3 * ((v90 >> ((4 * *(v63 + 18) + 8) & 0x3C)) & 0xF) + 3];
        v107 = __OFADD__(v176, v136);
        v176 += v136;
        if (v107)
        {
          goto LABEL_288;
        }

        if (!v133)
        {
          goto LABEL_281;
        }

        result = swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v137 = specialized Rope._Node.subscript.getter(v90, v133);

        v107 = __OFADD__(v176, v137);
        v176 += v137;
        if (v107)
        {
          goto LABEL_301;
        }

        if (!v133)
        {
          goto LABEL_281;
        }
      }

      if (v90 >= (((-15 << ((4 * *(v133 + 18) + 8) & 0x3C)) - 1) & *(v133 + 18) | (*(v133 + 16) << ((4 * *(v133 + 18) + 8) & 0x3C))))
      {
        goto LABEL_281;
      }

      v170 = v135;
      if (v63 && (v138 = (4 * *(v63 + 18) + 8) & 0x3C, v139 = ((v90 >> v138) & 0xF) + 1, v139 < *(v63 + 8)))
      {
        result = swift_unknownObjectRelease();
        v173 = (v139 << v138) | ((-15 << v138) - 1) & v90;
        v9 = v171;
        v31 = v172;
      }

      else
      {
        v31 = v172;
        if (specialized Rope._Node.formSuccessor(of:)(&v181, v133))
        {
          result = swift_unknownObjectRelease();
          v173 = *(&v181 + 1);
        }

        else
        {
          v140 = *(v133 + 18);
          v141 = *(v133 + 16);
          result = swift_unknownObjectRelease();
          *&v181 = v62;
          *(&v181 + 1) = ((-15 << ((4 * v140 + 8) & 0x3C)) - 1) & v140 | (v141 << ((4 * v140 + 8) & 0x3C));
          v173 = *(&v181 + 1);
          *&v182 = 0;
        }

        v9 = v171;
      }

      v30 = v176;
      v7 = a2;
      v10 = v181;
      v16 = v182;
      if (v176 >= v8)
      {
        v142 = *v31;
        if (a2 == v8)
        {
          v169 = *(v9 + 12);
          if (v142)
          {
            v143 = *(v9 + 11);
            if (v143 < a2)
            {
              goto LABEL_306;
            }

            v144 = *(v9 + 10);
            v145 = (v142 + 16);
            v146 = *(v142 + 16);
            v147 = *(v142 + 18);
            if (*(v142 + 16) && v143 > a2)
            {
              v176 = *(v9 + 10);
              result = swift_unknownObjectRetain_n();
              if (!v147)
              {
                v149 = 0;
                v148 = a2;
                v16 = v142;
LABEL_249:
                v158 = 0;
                v159 = 24;
                v156 = v148;
                while (1)
                {
                  v160 = *(v16 + v159);
                  v148 = v156 - v160;
                  if (__OFSUB__(v156, v160))
                  {
                    goto LABEL_284;
                  }

                  if (__OFADD__(v148, 1))
                  {
                    goto LABEL_285;
                  }

                  if (v148 + 1 < 1)
                  {
                    goto LABEL_257;
                  }

                  ++v158;
                  v159 += 24;
                  v156 -= v160;
                  if (v146 == v158)
                  {
                    v158 = v146;
                    goto LABEL_255;
                  }
                }
              }

              v148 = a2;
              v149 = v147;
              v150 = v142;
              do
              {
                v151 = *v145;
                if (*v145)
                {
                  v152 = 0;
                  v153 = (v150 + 40);
                  while (1)
                  {
                    v154 = *v153;
                    v153 += 3;
                    v155 = v148 - v154;
                    if (__OFSUB__(v148, v154))
                    {
                      goto LABEL_269;
                    }

                    if (__OFADD__(v155, 1))
                    {
                      goto LABEL_270;
                    }

                    if (v155 + 1 < 1)
                    {
                      v151 = v152;
                      goto LABEL_230;
                    }

                    ++v152;
                    v148 = v155;
                    if (v151 == v152)
                    {
                      goto LABEL_239;
                    }
                  }
                }

                v155 = v148;
LABEL_239:
                if (v155)
                {
                  goto LABEL_286;
                }

                v148 = 0;
LABEL_230:
                v149 = (v151 << ((4 * v147 + 8) & 0x3C)) | ((-15 << ((4 * v147 + 8) & 0x3C)) - 1) & v149;
                v16 = *(v150 + 24 + 24 * v151);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v145 = (v16 + 16);
                LOBYTE(v147) = *(v16 + 18);
                v150 = v16;
              }

              while (v147);
              LODWORD(v146) = *v145;
              if (*v145)
              {
                goto LABEL_249;
              }

              v158 = 0;
LABEL_255:
              if (!v148)
              {
                v156 = 0;
LABEL_257:
                swift_unknownObjectRelease();
                v157 = v149 & 0xFFFFFFFFFFFFF0FFLL | (v158 << 8);
                v8 = a3;
                v31 = v172;
                v144 = v176;
                goto LABEL_258;
              }

              goto LABEL_318;
            }

            v157 = ((-15 << ((4 * v147 + 8) & 0x3C)) - 1) & v147 | (v146 << ((4 * v147 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v156 = 0;
            v16 = 0;
LABEL_258:
            v173 = v157;
            v170 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v169, v157, v16, v142, v144);
            result = swift_unknownObjectRelease();
          }

          else
          {
            if (a2 > 0)
            {
              goto LABEL_309;
            }

            v156 = 0;
            v16 = 0;
            v173 = 0;
            v170 = 0;
          }

          v7 = a2;
          v107 = __OFSUB__(a2, v156);
          v30 = a2 - v156;
          v10 = v169;
          if (v107)
          {
            __break(1u);
            return result;
          }
        }

        else
        {
          v30 = 0;
          v170 = 0;
          v16 = 0;
          v173 = 0;
          v10 = *(v9 + 12);
          if (v142)
          {
            v16 = 0;
            v30 = *(v9 + 11);
            v170 = *(v9 + 10);
            v173 = ((-15 << ((4 * *(v142 + 18) + 8) & 0x3C)) - 1) & *(v142 + 18) | (*(v142 + 16) << ((4 * *(v142 + 18) + 8) & 0x3C));
          }
        }
      }
    }
  }

LABEL_308:
  __break(1u);
LABEL_309:
  __break(1u);
LABEL_310:
  __break(1u);
LABEL_311:
  __break(1u);
LABEL_312:
  __break(1u);
LABEL_313:
  __break(1u);
LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  __break(1u);
LABEL_318:
  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:
  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
LABEL_323:
  __break(1u);
LABEL_324:
  __break(1u);
LABEL_325:
  __break(1u);
LABEL_326:
  __break(1u);
  return result;
}

__n128 AttributedString.SingleAttributeTransformer.range.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 AttributedString.SingleAttributeTransformer.range.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v2;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t AttributedString.SingleAttributeTransformer.value.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  outlined init with copy of AttributedString._AttributeValue?(v2 + 96, v14);
  if (v15)
  {
    outlined init with copy of Hashable & Sendable(v14, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd, &_sSH_s8SendablepMR);
    v9 = swift_dynamicCast();
    v10 = *(*(AssociatedTypeWitness - 8) + 56);
    if (v9)
    {
      v11 = *(AssociatedTypeWitness - 8);
      v10(v8, 0, 1, AssociatedTypeWitness);
      (*(v11 + 32))(a2, v8, AssociatedTypeWitness);
      outlined destroy of AttributedString._AttributeValue(v14);
      return v10(a2, 0, 1, AssociatedTypeWitness);
    }

    else
    {
      v10(v8, 1, 1, AssociatedTypeWitness);
      result = (*(v6 + 8))(v8, v5);
      __break(1u);
    }
  }

  else
  {
    outlined destroy of TermOfAddress?(v14, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
    return (*(*(AssociatedTypeWitness - 8) + 56))(a2, 1, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t key path setter for AttributedString.SingleAttributeTransformer.value : <A>AttributedString.SingleAttributeTransformer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  (*(v11 + 16))(&v15 - v9, a1, v8);
  v13 = type metadata accessor for AttributedString.SingleAttributeTransformer(0, v5, v6, v12);
  return AttributedString.SingleAttributeTransformer.value.setter(v10, v13);
}

uint64_t AttributedString.SingleAttributeTransformer.value.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  (*(v7 + 16))(v9, a1, v6, v15);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    v18 = *(v7 + 8);
    v18(a1, v6);
    v18(v9, v6);
    v19 = 0;
    memset(v31, 0, sizeof(v31));
    v29 = 0u;
    v30 = 0u;
  }

  else
  {
    (*(v10 + 32))(v17, v9, AssociatedTypeWitness);
    v25 = v13;
    v26 = a1;
    v20 = *(v10 + 16);
    v20(v13, v17, AssociatedTypeWitness);
    *(&v30 + 1) = AssociatedTypeWitness;
    *&v31[0] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v29);
    v20(boxed_opaque_existential_0, v13, AssociatedTypeWitness);
    (*(v3 + 32))(&v28, v4, v3);
    *(v31 + 8) = v28;
    BYTE8(v31[1]) = (*(v3 + 40))(v4, v3) & 1;
    v19 = (*(v3 + 48))(v4, v3);
    (*(v7 + 8))(v26, v6);
    v22 = *(v10 + 8);
    v22(v25, AssociatedTypeWitness);
    v22(v17, AssociatedTypeWitness);
  }

  v32 = v19;
  return outlined assign with take of AttributedString._AttributeValue?(&v29, v27 + 96);
}

uint64_t outlined assign with take of AttributedString._AttributeValue?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*AttributedString.SingleAttributeTransformer.value.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  AttributedString.SingleAttributeTransformer.value.getter(v11);
  return AttributedString.SingleAttributeTransformer.value.modify;
}

void AttributedString.SingleAttributeTransformer.value.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    AttributedString.SingleAttributeTransformer.value.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    AttributedString.SingleAttributeTransformer.value.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t AttributedString.SingleAttributeTransformer.replace<A>(with:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v23[-1] - v13;
  v15 = (*(a5 + 24))(a4, a5, v12);
  v17 = v16;

  *(v6 + 80) = v15;
  *(v6 + 88) = v17;
  v18 = *(v11 + 16);
  v18(v14, a2, AssociatedTypeWitness);
  v23[3] = AssociatedTypeWitness;
  v23[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  v18(boxed_opaque_existential_0, v14, AssociatedTypeWitness);
  (*(a5 + 32))(&v22, a4, a5);
  v24 = v22;
  v25 = (*(a5 + 40))(a4, a5) & 1;
  v20 = (*(a5 + 48))(a4, a5);
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  v26 = v20;
  return outlined assign with take of AttributedString._AttributeValue?(v23, v6 + 96);
}

void *AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(void *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  v11 = a2[5];
  if ((*a2 ^ *a1) <= 1023 && (a1[5] ^ v11) <= 0x3FF)
  {
    v12 = a1[10] == a2[10] && a1[11] == a2[11];
    if (v12 || (v13 = a1, v14 = _stringCompareWithSmolCheck(_:_:expecting:)(), a1 = v13, (v14 & 1) != 0))
    {
      outlined init with copy of AttributedString._AttributeValue?((a1 + 12), v40);
      outlined init with copy of AttributedString._AttributeValue?((a2 + 12), &v43);
      if (*(&v40[1] + 1))
      {
        outlined init with copy of AttributedString._AttributeValue?(v40, &v48);
        if (*(&v44 + 1))
        {
          v37 = v45;
          v38 = v46;
          v39 = v47;
          v35 = v43;
          v36 = v44;
          v15 = specialized static AttributedString._AttributeValue.== infix(_:_:)(&v48, &v35);
          outlined destroy of AttributedString._AttributeValue(&v35);
          outlined destroy of AttributedString._AttributeValue(&v48);
          result = outlined destroy of TermOfAddress?(v40, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          if (v15)
          {
            return result;
          }

          goto LABEL_16;
        }

        outlined destroy of AttributedString._AttributeValue(&v48);
      }

      else if (!*(&v44 + 1))
      {
        return outlined destroy of TermOfAddress?(v40, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      }

      outlined destroy of TermOfAddress?(v40, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMR);
    }
  }

LABEL_16:
  outlined init with copy of AttributedString._AttributeValue?((a2 + 12), &v48);
  if (*(&v49 + 1))
  {
    v41[0] = v50;
    v41[1] = v51;
    v42 = v52;
    v40[0] = v48;
    v40[1] = v49;
    v17 = *a3;
    v18 = a2[10];
    v33 = a2[11];
    v34 = v18;
    v19 = a2[6];
    v32[6] = a2[8];
    v32[7] = v19;
    v20 = *(v17 + 40);
    v48 = *(v17 + 24);
    v49 = v20;
    v50 = *(v17 + 56);
    swift_unknownObjectRetain();
    v21 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v22 = *(v17 + 40);
    v35 = *(v17 + 24);
    v36 = v22;
    v37 = *(v17 + 56);
    swift_unknownObjectRetain();
    v23 = BigString.UnicodeScalarView.index(roundingDown:)();
    v24 = swift_unknownObjectRelease();
    v25 = v21 >> 11;
    v26 = v23 >> 11;
    MEMORY[0x1EEE9AC00](v24);
    v32[2] = v34;
    v32[3] = v33;
    v32[4] = v40;
    AttributedString._InternalRunsSlice.updateEach(with:)(partial apply for closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:), v32, v17, v21 >> 11, v26);
    v27 = *&v41[1];
    if (*&v41[1] != 1)
    {
      v28 = *(&v41[0] + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd, &_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMR);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_181218E20;
      *(v29 + 32) = v28;
      *(v29 + 40) = v27;
      outlined copy of AttributedString.AttributeRunBoundaries?(v28, v27);
      AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v25, v26, 0, v29);
    }

    return outlined destroy of AttributedString._AttributeValue(v40);
  }

  else
  {
    outlined destroy of TermOfAddress?(&v48, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
    v30 = a2[3];
    v31 = a2[8];
    *&v40[0] = v10;
    *(v40 + 8) = *(a2 + 1);
    *(&v40[1] + 1) = v30;
    *&v41[0] = v11;
    *(v41 + 8) = *(a2 + 3);
    *(&v41[1] + 1) = v31;
    return AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(a5, v40, a5, a6);
  }
}

uint64_t AttributedString.transformingAttributes<A>(_:_:)@<X0>(void (*a1)(__int128 *)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X8>)
{
  v295 = a1;
  v296 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v275 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v285 = &v260 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v284 = &v260 - v12;
  v294 = v13;
  v307 = type metadata accessor for Optional();
  v300 = *(v307 - 8);
  MEMORY[0x1EEE9AC00](v307);
  v293 = &v260 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v299 = &v260 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v306 = &v260 - v18;
  v288 = type metadata accessor for AttributedString.Runs.AttributesSlice1(0, a3, a4, v19);
  v280 = *(v288 - 8);
  MEMORY[0x1EEE9AC00](v288);
  v279 = &v260 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v290 = &v260 - v22;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v304 = *(v315 - 8);
  MEMORY[0x1EEE9AC00](v315);
  *&v278 = &v260 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v260 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v292 = &v260 - v28;
  *&v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
  MEMORY[0x1EEE9AC00](v318);
  v314 = &v260 - v29;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
  v291 = *(v309 - 8);
  MEMORY[0x1EEE9AC00](v309);
  v308 = &v260 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v289 = &v260 - v32;
  v282 = type metadata accessor for AttributedString.Runs(0);
  MEMORY[0x1EEE9AC00](v282);
  v287 = (&v260 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v303 = (&v260 - v35);
  MEMORY[0x1EEE9AC00](v36);
  v286 = (&v260 - v37);
  v313 = a3;
  v301 = type metadata accessor for AttributedString.Runs.AttributesSlice1.Iterator(0, a3, a4, v38);
  v276 = *(v301 - 8);
  MEMORY[0x1EEE9AC00](v301);
  v297 = &v260 - v39;
  v343 = *v5;
  v40 = v343;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = &unk_1EA7B2000;
  v305 = v40;
  v43 = &static AttributedString.Guts._nextVersion;
  v302 = v40;
  v277 = a5;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_11;
  }

  a5 = v26;
  v44 = *(v40 + 40);
  v365 = *(v40 + 24);
  v366 = v44;
  v367 = *(v40 + 56);
  v45 = *(v40 + 72);
  v46 = *(v40 + 80);
  v47 = *(v40 + 88);
  v48 = *(v40 + 96);
  type metadata accessor for AttributedString.Guts();
  v305 = swift_allocObject();
  v49 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v365, &v326);
  v50 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v50);
  if (v45)
  {
    v51 = v47 == 0;
  }

  else
  {
    v51 = 1;
  }

  v52 = v51;
  if (v52 != v49)
  {
    goto LABEL_92;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_93;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(v43, 1uLL, memory_order_relaxed);
    v54 = v366;
    v55 = v305;
    *(v305 + 24) = v365;
    *(v55 + 16) = add_explicit;
    *(v55 + 40) = v54;
    *(v55 + 56) = v367;
    *(v55 + 72) = v45;
    *(v55 + 80) = v46;
    *(v55 + 88) = v47;
    *(v55 + 96) = v48;
    *(v55 + 104) = MEMORY[0x1E69E7CC0];
    v40 = v302;

    v343 = v55;
    v26 = a5;
LABEL_11:
    v281 = v26;
    if (v42[147] != -1)
    {
      swift_once();
    }

    v56 = atomic_fetch_add_explicit(v43, 1uLL, memory_order_relaxed);
    *(v305 + 16) = v56;
    v57 = *(v40 + 40);
    v362 = *(v40 + 24);
    v363 = v57;
    v364 = *(v40 + 56);
    v43 = v40;
    v48 = BigString.startIndex.getter();
    v45 = v58;
    v46 = v59;
    v47 = v60;
    v61 = BigString.endIndex.getter();
    v42 = v309;
    if (v61 >> 10 >= v48 >> 10)
    {
      break;
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    swift_once();
  }

  v311 = a4;
  v326 = v48;
  v327 = v45;
  v328 = v46;
  v329 = v47;
  v330 = v61;
  v331 = v62;
  v332 = v63;
  v333 = v64;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  RangeSet.init(_:)();
  *v303 = v43;
  RangeSet.init()();
  v65 = v292;
  RangeSet.ranges.getter();
  v66 = v304;
  v68 = v314;
  v67 = v315;
  (*(v304 + 16))(v314, v65, v315);
  v69 = *(v318 + 36);
  v70 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8]);
  dispatch thunk of Collection.startIndex.getter();
  v71 = *(v66 + 8);
  v304 = v66 + 8;
  v283 = v71;
  v71(v65, v67);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v68 + v69) != v326)
  {
    v312 = v70;
    v310 = v69;
    do
    {
      v80 = dispatch thunk of Collection.subscript.read();
      v82 = v81[4];
      v317 = v81[5];
      *&v318 = v82;
      v316 = v81[6];
      v80(&v326, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v83 = v302;
      v84 = *(v302 + 40);
      v359 = *(v302 + 24);
      v360 = v84;
      v361 = *(v302 + 56);
      swift_unknownObjectRetain();
      v85 = BigString.UnicodeScalarView.index(roundingDown:)();
      v87 = v86;
      v89 = v88;
      v91 = v90;
      swift_unknownObjectRelease();
      v92 = *(v83 + 40);
      v356 = *(v83 + 24);
      v357 = v92;
      v358 = *(v83 + 56);
      swift_unknownObjectRetain();
      v93 = BigString.UnicodeScalarView.index(roundingDown:)();
      v95 = v94;
      v97 = v96;
      v99 = v98;
      v67 = v315;
      swift_unknownObjectRelease();
      v326 = v85;
      v327 = v87;
      v328 = v89;
      v329 = v91;
      v330 = v93;
      v331 = v95;
      v332 = v97;
      v333 = v99;
      if ((v93 ^ v85) >= 0x400)
      {
        v100 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v100(&v320, 0);
      }

      v68 = v314;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v68 + v310) != v326);
  }

  outlined destroy of TermOfAddress?(v68, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
  v72 = v282;
  v73 = *(v282 + 24);
  v74 = v303;
  (*(v291 + 16))(v303 + v73, v308, v309);
  v75 = v292;
  RangeSet.ranges.getter();
  v76 = RangeSet.Ranges.count.getter();
  v77 = v283;
  v283(v75, v67);
  v78 = *(v72 + 28);
  v274 = v76 > 1;
  *(v74 + v78) = v274;
  v79 = v281;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v320 == v326)
  {
    v77(v79, v67);
LABEL_23:
    v107 = v302;
    v108 = *(v302 + 72);
    v109 = v313;
    if (v108)
    {
      *&v318 = *(v108 + 18);
    }

    else
    {
      *&v318 = 0;
    }

    v317 = *(v302 + 96);
    v110 = *(v302 + 40);
    v353 = *(v302 + 24);
    v354 = v110;
    v355 = *(v302 + 56);
    v111 = BigString.startIndex.getter();
    v316 = v112;
    v314 = v113;
    v312 = v114;
    v115 = *(v107 + 72);
    v310 = *(v107 + 96);
    if (v115)
    {
      v282 = *(v115 + 18);
      v116 = *(v291 + 8);
      swift_unknownObjectRetain();
      v117 = v309;
      v116(v289, v309);
      v116(v308, v117);
      swift_unknownObjectRelease();
    }

    else
    {
      v118 = *(v291 + 8);
      v119 = v309;
      v118(v289, v309);
      v118(v308, v119);
      v282 = 0;
    }

    v120 = *(v107 + 40);
    v350 = *(v107 + 24);
    v351 = v120;
    v352 = *(v107 + 56);
    v121 = BigString.startIndex.getter();
    v125 = 0;
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v129 = 0;
    v130 = -1;
    v131 = v111;
    v132 = v316;
    v133 = v316;
    v134 = v314;
    v135 = v314;
    v136 = v312;
    v137 = v312;
    v138 = v121;
    v139 = v122;
    v140 = v123;
    v141 = v124;
    v142 = -1;
    v143 = v318;
    goto LABEL_30;
  }

  v101 = dispatch thunk of Collection.subscript.read();
  v103 = *v102;
  v104 = v102[1];
  v272 = v102[2];
  v273 = v104;
  v105 = v102[3];
  v270 = v103;
  v271 = v105;
  v101(&v326, 0);
  v77(v79, v67);
  v106 = v278;
  RangeSet.ranges.getter();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v77(v106, v67);
    goto LABEL_23;
  }

  v264 = v73;
  v150 = v106;
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BB0]);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v151 = dispatch thunk of Collection.subscript.read();
  v138 = v152[4];
  v153 = v152[5];
  v154 = v152[6];
  v155 = v152[7];
  v151(&v326, 0);
  v77(v150, v67);
  v131 = v270;
  v156 = v302;
  AttributedString.Guts.findRun(at:)(v270, v271, &v326);
  v157 = v327;
  *&v278 = v328;
  v266 = v329;
  v281 = v331;
  v316 = v332;
  v317 = v326;
  v314 = v333;
  v312 = v334;
  v158 = *(v156 + 40);
  v353 = *(v156 + 24);
  v354 = v158;
  v355 = *(v156 + 56);
  v159 = BigString.endIndex.getter();
  *&v318 = v157;
  v268 = v154;
  v269 = v153;
  v267 = v155;
  if ((v159 ^ v138) > 0x3FF)
  {
    v189 = v67;
    AttributedString.Guts.findRun(at:)(v138, v155, &v326);
    v310 = v326;
    v282 = v327;
    v129 = v328;
    v265 = v329;
    v315 = v331;
    v262 = v333;
    v263 = v332;
    v261 = v334;
    v74 = v303;
    v190 = v292;
    v191 = v309;
    RangeSet.ranges.getter();
    v142 = RangeSet.Ranges.count.getter();
    v192 = *(v291 + 8);
    v192(v289, v191);
    v193 = v190;
    v139 = v269;
    v283(v193, v189);
    v192(v308, v191);
    v128 = v265;
    v125 = v266;
    v143 = v318;
    v131 = v270;
    v137 = v271;
    v124 = v261;
    v123 = v262;
    v122 = v263;
    v121 = v315;
    v132 = v316;
    v130 = 0;
    v109 = v313;
    v134 = v314;
    v127 = v274;
    v135 = v272;
    v133 = v273;
    v111 = v281;
    v136 = v312;
    v141 = v267;
    v140 = v268;
    v126 = v278;
  }

  else
  {
    v160 = *(v156 + 72);
    if (v160)
    {
      v161 = *(v156 + 80);
    }

    else
    {
      v161 = 0;
    }

    v265 = v161;
    v162 = *(v156 + 96);
    v163 = swift_unknownObjectRetain();
    v310 = v162;
    v282 = specialized Rope._endPath.getter(v163);
    if (v160)
    {
      swift_unknownObjectRelease();
    }

    v74 = v303;
    v164 = v292;
    v165 = v309;
    RangeSet.ranges.getter();
    v166 = v315;
    v142 = RangeSet.Ranges.count.getter();
    v167 = *(v291 + 8);
    v167(v289, v165);
    v283(v164, v166);
    v167(v308, v165);
    v130 = 0;
    v129 = 0;
    v121 = v138;
    v140 = v268;
    v139 = v269;
    v122 = v269;
    v123 = v268;
    v125 = v266;
    v141 = v267;
    v124 = v267;
    v109 = v313;
    v134 = v314;
    v127 = v274;
    v143 = v318;
    v135 = v272;
    v133 = v273;
    v137 = v271;
    v111 = v281;
    v132 = v316;
    v136 = v312;
    v126 = v278;
    v128 = v265;
  }

LABEL_30:
  *(v74 + 8) = v125;
  *(v74 + 16) = v317;
  *(v74 + 24) = v143;
  *(v74 + 32) = v126;
  *(v74 + 40) = v111;
  *(v74 + 48) = v132;
  *(v74 + 56) = v134;
  *(v74 + 64) = v136;
  *(v74 + 72) = v131;
  *(v74 + 80) = v133;
  *(v74 + 88) = v135;
  *(v74 + 96) = v137;
  *(v74 + 104) = v130;
  *(v74 + 112) = 0;
  *(v74 + 113) = v127;
  v144 = v310;
  *(v74 + 120) = v128;
  *(v74 + 128) = v144;
  *(v74 + 136) = v282;
  *(v74 + 144) = v129;
  *(v74 + 152) = v121;
  *(v74 + 160) = v122;
  *(v74 + 168) = v123;
  *(v74 + 176) = v124;
  *(v74 + 184) = v138;
  *(v74 + 192) = v139;
  *(v74 + 200) = v140;
  *(v74 + 208) = v141;
  *(v74 + 216) = v142;
  *(v74 + 224) = 0;
  *(v74 + 225) = v127;
  v145 = v286;
  outlined init with take of AttributedString.Runs(v74, v286);
  v146 = v145;
  v147 = v287;
  outlined init with copy of AttributedString.Runs(v146, v287);
  v46 = v290;
  outlined init with copy of AttributedString.Runs(v147, v290);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v148 = swift_allocObject();
  v278 = xmmword_181218E20;
  *(v148 + 16) = xmmword_181218E20;
  v45 = v311;
  v291 = *(v311 + 24);
  v292 = (v311 + 24);
  *(v148 + 32) = (v291)(v109, v311);
  *(v148 + 40) = v149;
  *&v46[*(v288 + 36)] = v148;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd, &_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMR);
  v43 = swift_allocObject();
  v303 = *(v45 + 32);
  v304 = v45 + 32;
  v303(v109, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd, &_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMR);
  v42 = static _SetStorage.allocate(capacity:)();
  v47 = (v42 + 7);
  v48 = v43[4];
  a4 = v43[5];
  Hasher.init(_seed:)();
  if (a4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if (a4)
    {
      MEMORY[0x1865CD060](1);
      String.hash(into:)();
    }

    else
    {
      MEMORY[0x1865CD060](0);
    }
  }

  v168 = Hasher._finalize()();
  v169 = -1 << *(v42 + 32);
  a5 = v168 & ~v169;
  v170 = a5 >> 6;
  v171 = *&v47[8 * (a5 >> 6)];
  v172 = 1 << a5;
  if (((1 << a5) & v171) == 0)
  {
LABEL_63:
    *&v47[8 * v170] = v171 | v172;
    v180 = (v42[6] + 16 * a5);
    *v180 = v48;
    v180[1] = a4;
    v181 = v42[2];
    v182 = __OFADD__(v181, 1);
    v183 = v181 + 1;
    if (!v182)
    {
      v42[2] = v183;
      v184 = v297;
      v185 = v288;
      v186 = v280;
      goto LABEL_71;
    }

    goto LABEL_91;
  }

  *&v318 = v43;
  v173 = ~v169;
  while (1)
  {
    v174 = (v42[6] + 16 * a5);
    v175 = *v174;
    v45 = v174[1];
    if (v45 == 1)
    {
      if (a4 == 1)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v174, 1);
        v187 = v175;
        v188 = 1;
        goto LABEL_70;
      }

LABEL_48:
      outlined copy of AttributedString.AttributeRunBoundaries?(*v174, v174[1]);
      outlined copy of AttributedString.AttributeRunBoundaries?(v48, a4);
      outlined consume of AttributedString.AttributeRunBoundaries?(v175, v45);
      v176 = v48;
      v177 = a4;
LABEL_49:
      outlined consume of AttributedString.AttributeRunBoundaries?(v176, v177);
      goto LABEL_50;
    }

    if (a4 == 1)
    {
      goto LABEL_48;
    }

    if (!v45)
    {
      break;
    }

    if (!a4)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(*v174, v174[1]);
      outlined copy of AttributedString.AttributeRunBoundaries?(v48, 0);
      outlined copy of AttributedString.AttributeRunBoundaries?(v175, v45);

      v176 = v175;
      v177 = v45;
      goto LABEL_49;
    }

    if (v175 == v48 && v45 == a4)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v48, a4);
      outlined copy of AttributedString.AttributeRunBoundaries?(v48, a4);

LABEL_68:
      v187 = v48;
      v188 = a4;
      goto LABEL_70;
    }

    v179 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of AttributedString.AttributeRunBoundaries?(v175, v45);
    outlined copy of AttributedString.AttributeRunBoundaries?(v48, a4);
    outlined copy of AttributedString.AttributeRunBoundaries?(v175, v45);

    if (v179)
    {
      outlined consume of AttributedString.AttributeRunBoundaries?(v48, a4);
      v48 = v175;
      a4 = v45;
      v46 = v290;
      goto LABEL_68;
    }

    outlined consume of AttributedString.AttributeRunBoundaries?(v175, v45);
    v46 = v290;
LABEL_50:
    a5 = (a5 + 1) & v173;
    v170 = a5 >> 6;
    v171 = *&v47[8 * (a5 >> 6)];
    v172 = 1 << a5;
    if ((v171 & (1 << a5)) == 0)
    {
      v43 = v318;
      goto LABEL_63;
    }
  }

  outlined copy of AttributedString.AttributeRunBoundaries?(*v174, 0);
  if (a4)
  {
    outlined copy of AttributedString.AttributeRunBoundaries?(v48, a4);

    v176 = v175;
    v177 = 0;
    goto LABEL_49;
  }

  swift_bridgeObjectRelease_n();
  v187 = v175;
  v188 = 0;
LABEL_70:
  outlined consume of AttributedString.AttributeRunBoundaries?(v187, v188);
  v184 = v297;
  v185 = v288;
  v186 = v280;
  v43 = v318;
LABEL_71:
  swift_setDeallocating();
  outlined destroy of TermOfAddress?((v43 + 4), &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMR);
  swift_deallocClassInstance();
  outlined destroy of AttributedString.Runs(v287);
  outlined destroy of AttributedString.Runs(v286);
  *&v46[*(v185 + 40)] = v42;
  v194 = *(v186 + 16);
  v195 = v279;
  v194(v279, v46, v185);
  result = (v194)(v184, v195, v185);
  v197 = *(v195 + 12);
  v198 = v311;
  if (v197 == 2)
  {
    __break(1u);
  }

  else
  {
    v199 = *(v195 + 11);
    v318 = *(v195 + 72);
    v200 = *(v186 + 8);
    v200(v46, v185);
    v201 = *(*v195 + 16);
    v200(v195, v185);
    v202 = v301;
    v203 = &v184[*(v301 + 36)];
    *v203 = v318;
    *(v203 + 2) = v199;
    *(v203 + 3) = v197;
    *(v203 + 4) = v201;
    v204 = v306;
    AttributedString.Runs.AttributesSlice1.Iterator.next()(v202, v306);
    v205 = TupleTypeMetadata2;
    v206 = *(TupleTypeMetadata2 - 8);
    v207 = *(v206 + 48);
    v289 = (v206 + 48);
    v290 = v207;
    v208 = (v207)(v204, 1, TupleTypeMetadata2);
    v209 = v313;
    v210 = v299;
    v211 = v307;
    if (v208 != 1)
    {
      v212 = *(v300 + 32);
      v287 = (v300 + 16);
      v288 = v212;
      v286 = (v275 + 48);
      v282 = v275 + 16;
      v283 = (v275 + 32);
      v280 = v198 + 48;
      v281 = (v198 + 40);
      v279 = (v275 + 8);
      v300 += 32;
      v308 = (v300 - 24);
      do
      {
        v214 = (v204 + *(v205 + 48));
        v216 = *v214;
        v215 = v214[1];
        v217 = v214[3];
        v315 = v214[2];
        v316 = v215;
        v314 = v217;
        v218 = v214[4];
        v219 = v214[5];
        v221 = v214[6];
        v220 = v214[7];
        v223 = v214[8];
        v222 = v214[9];
        v317 = v223;
        *&v318 = v220;
        v309 = v222;
        v310 = v218;
        (v288)(v210, v204, v211);
        v224 = v293;
        (*v287)(v293, v210, v211);
        v225 = v294;
        v226 = (*v286)(v224, 1, v294);
        v312 = v221;
        if (v226 == 1)
        {
          (*v308)(v224, v211);
          v227 = 0;
          memset(v322, 0, sizeof(v322));
          v320 = 0u;
          v321 = 0u;
        }

        else
        {
          v228 = v284;
          (*v283)(v284, v224, v225);
          v229 = *v282;
          v230 = v285;
          (*v282)(v285, v228, v225);
          *(&v321 + 1) = v225;
          *&v322[0] = swift_getAssociatedConformanceWitness();
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v320);
          v229(boxed_opaque_existential_0, v230, v225);
          (v303)(&v319, v209, v198);
          *(v322 + 8) = v319;
          BYTE8(v322[1]) = (*(v198 + 40))(v209, v198) & 1;
          v227 = (*(v198 + 48))(v209, v198);
          v232 = *v279;
          v233 = v230;
          v204 = v306;
          (*v279)(v233, v225);
          v234 = v228;
          v211 = v307;
          v232(v234, v225);
          v221 = v312;
          v209 = v313;
        }

        v323 = v227;
        v235 = (v291)(v209, v198);
        v236 = v209;
        v237 = v235;
        v238 = v198;
        v240 = v239;
        v326 = v216;
        v327 = v316;
        v328 = v315;
        v329 = v314;
        v330 = v310;
        v241 = v219;
        v331 = v219;
        v332 = v221;
        v333 = v318;
        v334 = v317;
        v335 = v309;
        v336 = v235;
        v337 = v239;
        v340 = v322[0];
        v341 = v322[1];
        v342 = v323;
        v338 = v320;
        v339 = v321;
        v243 = type metadata accessor for AttributedString.SingleAttributeTransformer(0, v236, v238, v242);
        v244 = *(v243 - 8);
        (*(v244 + 16))(&v320, &v326, v243);
        v295(&v320);
        if ((v320 ^ v216) > 0x3FF || (*(&v322[0] + 1) ^ v241) > 0x3FF || ((v245 = v325, v237 != v324) || v240 != v325) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v246 = v305;
          v247 = *(v305 + 40);
          v347 = *(v305 + 24);
          v348 = v247;
          v349 = *(v305 + 56);
          swift_unknownObjectRetain();
          v248 = BigString.UnicodeScalarView.index(roundingDown:)();
          swift_unknownObjectRelease();
          v249 = *(v246 + 40);
          v344 = *(v246 + 24);
          v345 = v249;
          v346 = *(v246 + 56);
          swift_unknownObjectRetain();
          v250 = BigString.UnicodeScalarView.index(roundingDown:)();
          v251 = swift_unknownObjectRelease();
          v252 = v248 >> 11;
          v253 = v250 >> 11;
          MEMORY[0x1EEE9AC00](v251);
          v254 = v313;
          v255 = v311;
          *(&v260 - 2) = v313;
          *(&v260 - 1) = v255;
          AttributedString._InternalRunsSlice.updateEach(with:)(partial apply for closure #1 in AttributedString.Guts.removeAttributeValue<A>(forKey:in:), (&v260 - 4), v246, v252, v253);
          v256 = v303;
          (v303)(&v319, v254, v255);
          if (*(&v319 + 1) == 1)
          {
            v204 = v306;
            v211 = v307;
          }

          else
          {
            outlined consume of AttributedString.AttributeRunBoundaries?(v319, *(&v319 + 1));
            v256(&v319, v254, v255);
            v257 = *(&v319 + 1);
            if (*(&v319 + 1) == 1)
            {
              v258 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v259 = v319;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd, &_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMR);
              v258 = swift_allocObject();
              *(v258 + 16) = v278;
              *(v258 + 32) = v259;
              *(v258 + 40) = v257;
            }

            v211 = v307;
            AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v252, v253, 0, v258);

            v204 = v306;
          }
        }

        v209 = v313;
        v198 = v311;
        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(&v326, &v320, &v343, v245, v313, v311);
        v210 = v299;
        (*v308)(v299, v211);
        v213 = *(v244 + 8);
        v213(&v320, v243);
        v213(&v326, v243);
        v184 = v297;
        AttributedString.Runs.AttributesSlice1.Iterator.next()(v301, v204);
        v205 = TupleTypeMetadata2;
      }

      while ((v290)(v204, 1, TupleTypeMetadata2) != 1);
    }

    (*(v276 + 8))(v184, v301);

    *v277 = v343;
  }

  return result;
}

uint64_t AttributedString.transformingAttributes<A, B>(_:_:_:)@<X0>(void (*a1)(__int128 *, _OWORD *)@<X2>, uint64_t a2@<X3>, char *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v377 = a4;
  v378 = a6;
  v353 = a1;
  v354 = a2;
  v321 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v323 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v336 = &v320 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v335 = &v320 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v338 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v334 = &v320 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v333 = &v320 - v19;
  v352 = AssociatedTypeWitness;
  v20 = type metadata accessor for Optional();
  *&v322 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v350 = &v320 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v372 = &v320 - v23;
  v351 = v16;
  v24 = type metadata accessor for Optional();
  v357 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v349 = &v320 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v374 = &v320 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  v358 = v24;
  v375 = v20;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v28 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v355 = &v320 - v29;
  v414 = a3;
  v415 = a4;
  v416 = a5;
  v417 = a6;
  v365 = type metadata accessor for AttributedString.Runs.AttributesSlice2(0, &v414);
  v343 = *(v365 - 8);
  MEMORY[0x1EEE9AC00](v365);
  v342 = &v320 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v364 = &v320 - v32;
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v373 = *(v384 - 8);
  MEMORY[0x1EEE9AC00](v384);
  v347 = &v320 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v366 = &v320 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v370 = &v320 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
  MEMORY[0x1EEE9AC00](v38);
  v383 = &v320 - v39;
  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
  v368 = *(v379 - 8);
  MEMORY[0x1EEE9AC00](v379);
  v376 = &v320 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v367 = &v320 - v42;
  v348 = type metadata accessor for AttributedString.Runs(0);
  MEMORY[0x1EEE9AC00](v348);
  v363 = &v320 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v371 = &v320 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v344 = (&v320 - v47);
  v381 = a3;
  v382 = a5;
  v414 = a3;
  v415 = a4;
  v416 = a5;
  v417 = a6;
  v359 = type metadata accessor for AttributedString.Runs.AttributesSlice2.Iterator(0, &v414);
  v48 = *(v359 - 8);
  MEMORY[0x1EEE9AC00](v359);
  v360 = &v320 - v49;
  v431 = *v7;
  v50 = v431;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = &unk_1EA7B2000;
  v361 = v50;
  v362 = v50;
  v53 = &static AttributedString.Guts._nextVersion;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_11;
  }

  v54 = *(v50 + 40);
  v459 = *(v50 + 24);
  v460 = v54;
  v461 = *(v50 + 56);
  v55 = v50;
  v56 = *(v50 + 72);
  v57 = *(v50 + 80);
  v59 = *(v55 + 88);
  v58 = *(v55 + 96);
  type metadata accessor for AttributedString.Guts();
  v361 = swift_allocObject();
  v60 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v459, &v414);
  v61 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v61);
  if (v56)
  {
    v62 = v59 == 0;
  }

  else
  {
    v62 = 1;
  }

  v63 = v62;
  if (v63 != v60)
  {
    goto LABEL_105;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_106;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(v53, 1uLL, memory_order_relaxed);
    v65 = v460;
    v66 = v361;
    *(v361 + 24) = v459;
    *(v66 + 16) = add_explicit;
    *(v66 + 40) = v65;
    *(v66 + 56) = v461;
    *(v66 + 72) = v56;
    *(v66 + 80) = v57;
    *(v66 + 88) = v59;
    *(v66 + 96) = v58;
    *(v66 + 104) = MEMORY[0x1E69E7CC0];
    v50 = v362;

    v431 = v66;
LABEL_11:
    if (*(v52 + 1176) != -1)
    {
LABEL_103:
      swift_once();
    }

    v67 = atomic_fetch_add_explicit(v53, 1uLL, memory_order_relaxed);
    *(v361 + 16) = v67;
    v68 = *(v50 + 40);
    v456 = *(v50 + 24);
    v457 = v68;
    v458 = *(v50 + 56);
    v59 = BigString.startIndex.getter();
    v58 = v69;
    v56 = v70;
    v53 = v50;
    v57 = v71;
    v72 = BigString.endIndex.getter();
    if (v72 >> 10 >= v59 >> 10)
    {
      break;
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    swift_once();
  }

  v320 = v48;
  v414 = v59;
  v415 = v58;
  v416 = v56;
  v417 = v57;
  v418 = v72;
  v419 = v73;
  v420 = v74;
  v421 = v75;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  RangeSet.init(_:)();
  *v371 = v53;
  RangeSet.init()();
  v76 = v370;
  RangeSet.ranges.getter();
  v77 = v373;
  v78 = v383;
  v79 = v384;
  (*(v373 + 16))(v383, v76, v384);
  v80 = *(v38 + 36);
  v81 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8]);
  dispatch thunk of Collection.startIndex.getter();
  v82 = *(v77 + 8);
  v373 = v77 + 8;
  v369 = v82;
  v82(v76, v79);
  dispatch thunk of Collection.endIndex.getter();
  v83 = *(v78 + v80);
  v385 = v81;
  if (v83 != v414)
  {
    v380 = v80;
    do
    {
      v93 = dispatch thunk of Collection.subscript.read();
      v95 = v94[5];
      *&v389 = v94[4];
      v388 = v95;
      v96 = v94[7];
      v387 = v94[6];
      v386 = v96;
      v93(&v414, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v97 = v362;
      v98 = *(v362 + 40);
      v453 = *(v362 + 24);
      v454 = v98;
      v455 = *(v362 + 56);
      swift_unknownObjectRetain();
      v99 = BigString.UnicodeScalarView.index(roundingDown:)();
      v101 = v100;
      v103 = v102;
      v105 = v104;
      swift_unknownObjectRelease();
      v106 = *(v97 + 40);
      v450 = *(v97 + 24);
      v451 = v106;
      v452 = *(v97 + 56);
      swift_unknownObjectRetain();
      v107 = BigString.UnicodeScalarView.index(roundingDown:)();
      v109 = v108;
      v111 = v110;
      v113 = v112;
      swift_unknownObjectRelease();
      v414 = v99;
      v415 = v101;
      v416 = v103;
      v417 = v105;
      v418 = v107;
      v419 = v109;
      v79 = v384;
      v420 = v111;
      v421 = v113;
      if ((v107 ^ v99) >= 0x400)
      {
        v114 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v114(&v402, 0);
      }

      v78 = v383;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v78 + v380) != v414);
  }

  outlined destroy of TermOfAddress?(v78, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
  v84 = v348;
  v85 = *(v348 + 24);
  v86 = v371;
  (*(v368 + 16))(&v85[v371], v376, v379);
  v87 = v370;
  RangeSet.ranges.getter();
  v88 = RangeSet.Ranges.count.getter();
  v369(v87, v79);
  v89 = *(v84 + 28);
  LODWORD(v348) = v88 > 1;
  *(v86 + v89) = v348;
  v90 = v366;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  v91 = v79;
  dispatch thunk of Collection.endIndex.getter();
  if (v402 == v414)
  {
    v369(v90, v79);
    v92 = v362;
LABEL_22:
    v124 = *(v92 + 72);
    v125 = v381;
    if (v124)
    {
      v124 = *(v124 + 18);
    }

    *&v389 = v124;
    v388 = *(v92 + 96);
    v126 = *(v92 + 40);
    v447 = *(v92 + 24);
    v448 = v126;
    v449 = *(v92 + 56);
    v127 = BigString.startIndex.getter();
    v387 = v128;
    v386 = v129;
    v385 = v130;
    v131 = *(v92 + 72);
    v383 = *(v92 + 96);
    if (v131)
    {
      v380 = *(v131 + 18);
      v132 = *(v368 + 8);
      swift_unknownObjectRetain();
      v133 = v379;
      v132(v367, v379);
      v132(v376, v133);
      swift_unknownObjectRelease();
    }

    else
    {
      v134 = *(v368 + 8);
      v135 = v379;
      v134(v367, v379);
      v134(v376, v135);
      v380 = 0;
    }

    v136 = *(v92 + 40);
    v444 = *(v92 + 24);
    v445 = v136;
    v446 = *(v92 + 56);
    v140 = BigString.startIndex.getter();
    v141 = v137;
    v142 = v138;
    v143 = v139;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v148 = 0;
    v149 = -1;
    v150 = v127;
    v151 = v127;
    v152 = v387;
    v153 = v387;
    v154 = v386;
    v155 = v386;
    v156 = v385;
    v157 = v385;
    v158 = v140;
    v159 = -1;
    v160 = v388;
    v161 = v389;
    goto LABEL_28;
  }

  v115 = dispatch thunk of Collection.subscript.read();
  v117 = *v116;
  v345 = v116[1];
  v346 = v117;
  v118 = v116[2];
  v340 = v116[3];
  v341 = v118;
  v115(&v414, 0);
  v119 = v79;
  v120 = v369;
  v369(v90, v119);
  v366 = v85;
  v121 = v91;
  v122 = v347;
  RangeSet.ranges.getter();
  v123 = dispatch thunk of Collection.isEmpty.getter();
  v92 = v362;
  if (v123)
  {
    v120(v122, v121);
    goto LABEL_22;
  }

  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BB0]);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v299 = dispatch thunk of Collection.subscript.read();
  v301 = v300[4];
  v302 = v300[5];
  v303 = v300[7];
  v339 = v300[6];
  v337 = v303;
  v299(&v414, 0);
  v120(v122, v121);
  AttributedString.Guts.findRun(at:)(v346, v340, &v414);
  v388 = v414;
  *&v389 = v415;
  v331 = v417;
  v332 = v416;
  v347 = v419;
  v387 = v420;
  v386 = v421;
  v385 = v422;
  v304 = *(v92 + 40);
  v447 = *(v92 + 24);
  v448 = v304;
  v449 = *(v92 + 56);
  if ((BigString.endIndex.getter() ^ v301) > 0x3FF)
  {
    AttributedString.Guts.findRun(at:)(v301, v337, &v414);
    v383 = v414;
    v380 = v415;
    v328 = v416;
    v329 = v302;
    v330 = v417;
    v140 = v419;
    v141 = v420;
    v315 = v368;
    v142 = v421;
    v143 = v422;
    v316 = v370;
    v384 = v301;
    v317 = v379;
    RangeSet.ranges.getter();
    v366 = RangeSet.Ranges.count.getter();
    v318 = *(v315 + 8);
    v318(v367, v317);
    v369(v316, v121);
    v319 = v317;
    v158 = v384;
    v318(v376, v319);
    v159 = v366;
    v148 = v328;
    v137 = v329;
    v147 = v330;
    v144 = v331;
    v149 = 0;
    v125 = v381;
    v146 = v348;
    v161 = v389;
    v153 = v345;
    v151 = v346;
    v160 = v388;
    v157 = v340;
    v155 = v341;
    v150 = v347;
    v152 = v387;
    v154 = v386;
    v156 = v385;
    v138 = v339;
    v139 = v337;
    v145 = v332;
  }

  else
  {
    v305 = v369;
    v306 = v301;
    v307 = *(v92 + 72);
    if (v307)
    {
      v308 = *(v92 + 80);
    }

    else
    {
      v308 = 0;
    }

    v330 = v308;
    v309 = *(v92 + 96);
    v310 = swift_unknownObjectRetain();
    v383 = v309;
    v380 = specialized Rope._endPath.getter(v310);
    if (v307)
    {
      swift_unknownObjectRelease();
    }

    v311 = v370;
    v312 = v379;
    RangeSet.ranges.getter();
    v313 = v384;
    v159 = RangeSet.Ranges.count.getter();
    v314 = *(v368 + 8);
    v314(v367, v312);
    v305(v311, v313);
    v314(v376, v312);
    v149 = 0;
    v148 = 0;
    v158 = v306;
    v140 = v306;
    v137 = v302;
    v141 = v302;
    v138 = v339;
    v157 = v340;
    v142 = v339;
    v139 = v337;
    v143 = v337;
    v125 = v381;
    v146 = v348;
    v161 = v389;
    v153 = v345;
    v151 = v346;
    v160 = v388;
    v155 = v341;
    v150 = v347;
    v152 = v387;
    v154 = v386;
    v156 = v385;
    v144 = v331;
    v145 = v332;
    v147 = v330;
  }

LABEL_28:
  v162 = v371;
  *(v371 + 8) = v144;
  *(v162 + 16) = v160;
  *(v162 + 24) = v161;
  *(v162 + 32) = v145;
  *(v162 + 40) = v150;
  *(v162 + 48) = v152;
  *(v162 + 56) = v154;
  *(v162 + 64) = v156;
  *(v162 + 72) = v151;
  *(v162 + 80) = v153;
  *(v162 + 88) = v155;
  *(v162 + 96) = v157;
  *(v162 + 104) = v149;
  *(v162 + 112) = 0;
  *(v162 + 113) = v146;
  v163 = v383;
  *(v162 + 120) = v147;
  *(v162 + 128) = v163;
  *(v162 + 136) = v380;
  *(v162 + 144) = v148;
  *(v162 + 152) = v140;
  *(v162 + 160) = v141;
  *(v162 + 168) = v142;
  *(v162 + 176) = v143;
  *(v162 + 184) = v158;
  *(v162 + 192) = v137;
  *(v162 + 200) = v138;
  *(v162 + 208) = v139;
  *(v162 + 216) = v159;
  *(v162 + 224) = 0;
  *(v162 + 225) = v146;
  v164 = v344;
  outlined init with take of AttributedString.Runs(v162, v344);
  v165 = v164;
  v166 = v363;
  outlined init with copy of AttributedString.Runs(v165, v363);
  v50 = v364;
  outlined init with copy of AttributedString.Runs(v166, v364);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_181215ED0;
  v168 = v382;
  v347 = *(v382 + 24);
  v348 = v382 + 24;
  *(v167 + 32) = (v347)(v125, v382);
  *(v167 + 40) = v169;
  v171 = v377;
  v170 = v378;
  v345 = *(v378 + 24);
  v346 = v378 + 24;
  *(v167 + 48) = v345(v377, v378);
  *(v167 + 56) = v172;
  *(v50 + *(v365 + 52)) = v167;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd, &_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMR);
  v173 = swift_allocObject();
  v368 = *(v168 + 32);
  v369 = (v168 + 32);
  v388 = v173 + 32;
  (v368)(v125, v168);
  v174 = *(v170 + 32);
  v387 = v173;
  v366 = v174;
  v367 = (v170 + 32);
  (v174)(v171, v170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd, &_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMR);
  v175 = static _SetStorage.allocate(capacity:)();
  v176 = 0;
  v177 = 0;
  v178 = v175 + 56;
  v48 = 1;
  while (2)
  {
    v181 = v176;
    v182 = (v388 + 16 * v177);
    v38 = *v182;
    v183 = v182[1];
    Hasher.init(_seed:)();
    LODWORD(v389) = v181;
    if (v183 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if (v183)
      {
        MEMORY[0x1865CD060](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x1865CD060](0);
      }
    }

    v184 = Hasher._finalize()();
    v53 = ~(-1 << *(v175 + 32));
    v52 = v184 & v53;
    v185 = (v184 & v53) >> 6;
    v186 = *(v178 + 8 * v185);
    v187 = 1 << (v184 & v53);
    if ((v187 & v186) == 0)
    {
LABEL_56:
      *(v178 + 8 * v185) = v186 | v187;
      v194 = (*(v175 + 48) + 16 * v52);
      *v194 = v38;
      v194[1] = v183;
      v195 = *(v175 + 16);
      v196 = __OFADD__(v195, 1);
      v197 = v195 + 1;
      if (!v196)
      {
        *(v175 + 16) = v197;
        goto LABEL_30;
      }

      __break(1u);
      goto LABEL_103;
    }

    while (1)
    {
      v188 = (*(v175 + 48) + 16 * v52);
      v189 = *v188;
      v50 = v188[1];
      if (v50 == 1)
      {
        if (v183 == 1)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v188, 1);
          v179 = v189;
          v180 = 1;
          goto LABEL_29;
        }

LABEL_41:
        outlined copy of AttributedString.AttributeRunBoundaries?(*v188, v188[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v38, v183);
        outlined consume of AttributedString.AttributeRunBoundaries?(v189, v50);
        v190 = v38;
        v191 = v183;
LABEL_42:
        outlined consume of AttributedString.AttributeRunBoundaries?(v190, v191);
        goto LABEL_43;
      }

      if (v183 == 1)
      {
        goto LABEL_41;
      }

      if (!v50)
      {
        break;
      }

      if (!v183)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v188, v188[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v38, 0);
        outlined copy of AttributedString.AttributeRunBoundaries?(v189, v50);

        v190 = v189;
        v191 = v50;
        goto LABEL_42;
      }

      if (v189 == v38 && v50 == v183)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v38, v183);
        outlined copy of AttributedString.AttributeRunBoundaries?(v38, v183);

LABEL_60:
        v179 = v38;
        v180 = v183;
        goto LABEL_29;
      }

      v193 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of AttributedString.AttributeRunBoundaries?(v189, v50);
      outlined copy of AttributedString.AttributeRunBoundaries?(v38, v183);
      outlined copy of AttributedString.AttributeRunBoundaries?(v189, v50);

      if (v193)
      {
        outlined consume of AttributedString.AttributeRunBoundaries?(v38, v183);
        v38 = v189;
        v183 = v50;
        v48 = 1;
        goto LABEL_60;
      }

      outlined consume of AttributedString.AttributeRunBoundaries?(v189, v50);
      v48 = 1;
LABEL_43:
      v52 = (v52 + 1) & v53;
      v185 = v52 >> 6;
      v186 = *(v178 + 8 * (v52 >> 6));
      v187 = 1 << v52;
      if ((v186 & (1 << v52)) == 0)
      {
        goto LABEL_56;
      }
    }

    outlined copy of AttributedString.AttributeRunBoundaries?(*v188, 0);
    if (v183)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v38, v183);

      v190 = v189;
      v191 = 0;
      goto LABEL_42;
    }

    swift_bridgeObjectRelease_n();
    v179 = v189;
    v180 = 0;
LABEL_29:
    outlined consume of AttributedString.AttributeRunBoundaries?(v179, v180);
LABEL_30:
    v176 = 1;
    v177 = 1;
    if ((v389 & 1) == 0)
    {
      continue;
    }

    break;
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMR);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  outlined destroy of AttributedString.Runs(v363);
  outlined destroy of AttributedString.Runs(v344);
  v198 = v364;
  v199 = v365;
  *(v364 + *(v365 + 56)) = v175;
  v200 = v198;
  v202 = v342;
  v201 = v343;
  v203 = *(v343 + 16);
  v203(v342, v198, v199);
  v204 = v360;
  result = (v203)(v360, v202, v199);
  v206 = *(v202 + 12);
  if (v206 == 2)
  {
    __break(1u);
  }

  else
  {
    v207 = *(v202 + 11);
    v389 = *(v202 + 72);
    v208 = *(v201 + 8);
    v208(v200, v199);
    v209 = *(*v202 + 16);
    v208(v202, v199);
    v210 = v359;
    v211 = &v204[*(v359 + 52)];
    *v211 = v389;
    *(v211 + 2) = v207;
    *(v211 + 3) = v206;
    *(v211 + 4) = v209;
    v212 = v355;
    AttributedString.Runs.AttributesSlice2.Iterator.next()(v210, v355);
    v213 = TupleTypeMetadata3;
    v214 = *(TupleTypeMetadata3 - 8);
    v215 = *(v214 + 48);
    v343 = v214 + 48;
    v344 = v215;
    v216 = (v215)(v212, 1, TupleTypeMetadata3);
    v218 = v374;
    v217 = v375;
    v219 = v372;
    v220 = v358;
    if (v216 != 1)
    {
      v221 = *(v357 + 32);
      v341 = (v322 + 32);
      v342 = v221;
      v340 = (v357 + 16);
      v339 = (v338 + 6);
      v332 = (v338 + 4);
      v331 = (v338 + 2);
      v330 = v382 + 40;
      v328 = (v338 + 1);
      v329 = v382 + 48;
      v357 += 32;
      v371 = v357 - 24;
      v337 = (v323 + 6);
      v338 = (v322 + 16);
      v326 = (v323 + 2);
      v327 = (v323 + 4);
      v324 = v378 + 48;
      v325 = v378 + 40;
      ++v323;
      v370 = (v322 + 8);
      v322 = xmmword_181218E20;
      do
      {
        v230 = *(v213 + 48);
        v231 = (v212 + *(v213 + 64));
        v232 = v231[1];
        v386 = *v231;
        v385 = v232;
        v233 = v231[3];
        v384 = v231[2];
        v383 = v233;
        v234 = v231[4];
        v376 = v231[5];
        v235 = v231[7];
        *&v389 = v231[6];
        v388 = v235;
        v237 = v231[8];
        v236 = v231[9];
        v387 = v237;
        v379 = v236;
        v380 = v234;
        (v342)(v218, v212, v220);
        (*v341)(v219, v212 + v230, v217);
        v238 = v349;
        (*v340)(v349, v218, v220);
        v239 = v351;
        if ((*v339)(v238, 1, v351) == 1)
        {
          (*v371)(v238, v220);
          v240 = 0;
          memset(v404, 0, sizeof(v404));
          v402 = 0u;
          v403 = 0u;
          v242 = v377;
          v241 = v378;
          v244 = v381;
          v243 = v382;
        }

        else
        {
          v245 = v333;
          (*v332)(v333, v238, v239);
          v246 = *v331;
          v247 = v334;
          (*v331)(v334, v245, v239);
          *(&v403 + 1) = v239;
          v244 = v381;
          v248 = v382;
          *&v404[0] = swift_getAssociatedConformanceWitness();
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v402);
          v246(boxed_opaque_existential_0, v247, v239);
          (v368)(&v396, v244, v248);
          *(v404 + 8) = v396;
          BYTE8(v404[1]) = (*(v248 + 40))(v244, v248) & 1;
          v240 = (*(v248 + 48))(v244, v248);
          v250 = *v328;
          v219 = v372;
          (*v328)(v247, v239);
          v250(v245, v239);
          v243 = v248;
          v242 = v377;
          v241 = v378;
        }

        v405 = v240;
        v251 = (v347)(v244, v243);
        v414 = v386;
        v415 = v385;
        v416 = v384;
        v417 = v383;
        v418 = v380;
        v252 = v376;
        v419 = v376;
        v420 = v389;
        v421 = v388;
        v422 = v387;
        v423 = v379;
        v424 = v251;
        v363 = v253;
        v425 = v253;
        v428 = v404[0];
        v429 = v404[1];
        v430 = v405;
        v426 = v402;
        v427 = v403;
        v254 = v350;
        v255 = v375;
        (*v338)(v350, v219, v375);
        v256 = v352;
        if ((*v337)(v254, 1, v352) == 1)
        {
          (*v370)(v254, v255);
          v257 = 0;
          memset(v398, 0, sizeof(v398));
          v396 = 0u;
          v397 = 0u;
        }

        else
        {
          v258 = *v327;
          v373 = v251;
          v259 = v335;
          v258(v335, v254, v256);
          v260 = *v326;
          v261 = v336;
          (*v326)(v336, v259, v256);
          *(&v397 + 1) = v256;
          *&v398[0] = swift_getAssociatedConformanceWitness();
          v262 = __swift_allocate_boxed_opaque_existential_0(&v396);
          v260(v262, v261, v256);
          (v366)(v392, v242, v241);
          *(v398 + 8) = v392[0];
          BYTE8(v398[1]) = (*(v241 + 40))(v242, v241) & 1;
          v257 = (*(v241 + 48))(v242, v241);
          v263 = *v323;
          (*v323)(v261, v256);
          v264 = v259;
          v251 = v373;
          v263(v264, v256);
        }

        v265 = v361;
        v399 = v257;
        v266 = v345(v242, v241);
        v267 = v386;
        *&v402 = v386;
        *(&v402 + 1) = v385;
        *&v403 = v384;
        *(&v403 + 1) = v383;
        *&v404[0] = v380;
        *(&v404[0] + 1) = v252;
        *&v404[1] = v389;
        *(&v404[1] + 1) = v388;
        v405 = v387;
        v406 = v379;
        v364 = v268;
        v365 = v266;
        v407 = v266;
        v408 = v268;
        v411 = v398[0];
        v412 = v398[1];
        v413 = v399;
        v409 = v396;
        v410 = v397;
        v270 = type metadata accessor for AttributedString.SingleAttributeTransformer(0, v381, v382, v269);
        v379 = *(v270 - 8);
        v380 = v270;
        (*(v379 + 16))(&v396, &v414);
        v272 = type metadata accessor for AttributedString.SingleAttributeTransformer(0, v242, v241, v271);
        v373 = *(v272 - 8);
        (*(v373 + 16))(v392, &v402, v272);
        v353(&v396, v392);
        v273 = v267 >> 10;
        if (v267 >> 10 != v396 >> 10 || (*(&v398[0] + 1) ^ v252) > 0x3FF || (v251 != v400 || v363 != v401) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v274 = *(v265 + 40);
          v441 = *(v265 + 24);
          v442 = v274;
          v443 = *(v265 + 56);
          swift_unknownObjectRetain();
          v275 = BigString.UnicodeScalarView.index(roundingDown:)();
          swift_unknownObjectRelease();
          v276 = *(v265 + 40);
          v438 = *(v265 + 24);
          v439 = v276;
          v440 = *(v265 + 56);
          swift_unknownObjectRetain();
          v277 = BigString.UnicodeScalarView.index(roundingDown:)();
          v278 = swift_unknownObjectRelease();
          v279 = v275 >> 11;
          v280 = v277 >> 11;
          MEMORY[0x1EEE9AC00](v278);
          v281 = v381;
          v282 = v382;
          *(&v320 - 2) = v381;
          *(&v320 - 1) = v282;
          AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.removeAttributeValue<A>(forKey:in:)partial apply, (&v320 - 4), v265, v279, v280);
          v283 = v368;
          (v368)(&v390, v281, v282);
          if (v391 == 1)
          {
            v252 = v376;
          }

          else
          {
            outlined consume of AttributedString.AttributeRunBoundaries?(v390, v391);
            v283(&v390, v281, v282);
            v284 = v391;
            if (v391 == 1)
            {
              v285 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v286 = v390;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd, &_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMR);
              v285 = swift_allocObject();
              *(v285 + 16) = v322;
              *(v285 + 32) = v286;
              *(v285 + 40) = v284;
            }

            v252 = v376;
            AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v279, v280, 0, v285);
          }
        }

        if (v273 != *&v392[0] >> 10 || (v393 ^ v252) > 0x3FF || ((v223 = v395, v365 != v394) || v364 != v395) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v287 = *(v265 + 40);
          v435 = *(v265 + 24);
          v436 = v287;
          v437 = *(v265 + 56);
          swift_unknownObjectRetain();
          v288 = BigString.UnicodeScalarView.index(roundingDown:)();
          swift_unknownObjectRelease();
          v289 = *(v265 + 40);
          v432 = *(v265 + 24);
          v433 = v289;
          v434 = *(v265 + 56);
          swift_unknownObjectRetain();
          v290 = BigString.UnicodeScalarView.index(roundingDown:)();
          v291 = swift_unknownObjectRelease();
          v292 = v288 >> 11;
          v293 = v290 >> 11;
          MEMORY[0x1EEE9AC00](v291);
          v294 = v377;
          v295 = v378;
          *(&v320 - 2) = v377;
          *(&v320 - 1) = v295;
          AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.removeAttributeValue<A>(forKey:in:)partial apply, (&v320 - 4), v265, v292, v293);
          v296 = v366;
          (v366)(&v390, v294, v295);
          if (v391 != 1)
          {
            outlined consume of AttributedString.AttributeRunBoundaries?(v390, v391);
            v296(&v390, v294, v295);
            v297 = v391;
            if (v391 == 1)
            {
              v222 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v298 = v390;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd, &_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMR);
              v222 = swift_allocObject();
              *(v222 + 16) = v322;
              *(v222 + 32) = v298;
              *(v222 + 40) = v297;
            }

            AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v292, v293, 0, v222);
          }
        }

        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(&v414, &v396, &v431, v223, v381, v382);
        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(&v402, v392, &v431, v224, v377, v378);
        v219 = v372;
        v225 = v375;
        (*v370)(v372, v375);
        v220 = v358;
        (*v371)(v374, v358);
        v226 = *(v373 + 8);
        v226(v392, v272);
        v227 = *(v379 + 8);
        v228 = v272;
        v229 = v380;
        v227(&v396, v380);
        v226(&v402, v228);
        v227(&v414, v229);
        v217 = v225;
        v218 = v374;
        v212 = v355;
        AttributedString.Runs.AttributesSlice2.Iterator.next()(v359, v355);
        v213 = TupleTypeMetadata3;
      }

      while ((v344)(v212, 1, TupleTypeMetadata3) != 1);
    }

    (*(v320 + 8))(v360, v359);

    *v321 = v431;
  }

  return result;
}

uint64_t AttributedString.transformingAttributes<A, B, C>(_:_:_:_:)@<X0>(void (*a1)(_OWORD *, void *, void *)@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, void *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v394 = a1;
  v395 = a2;
  v342 = a6;
  v426 = a8;
  v420 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v343 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v369 = &v339 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v368 = &v339 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v371 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v367 = &v339 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v366 = &v339 - v19;
  v393 = AssociatedTypeWitness;
  v423 = a7;
  v20 = swift_getAssociatedTypeWitness();
  v373 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v365 = &v339 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v364 = &v339 - v23;
  v24 = type metadata accessor for Optional();
  v340 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v390 = &v339 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v416 = &v339 - v27;
  v392 = v16;
  v28 = type metadata accessor for Optional();
  v370 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v389 = &v339 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v421 = &v339 - v31;
  v391 = v20;
  v32 = type metadata accessor for Optional();
  v398 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v388 = &v339 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v413 = &v339 - v35;
  v414 = v36;
  v470 = v36;
  v415 = v28;
  v471 = v28;
  v417 = v24;
  v472 = v24;
  v473 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v37 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v37 - 8);
  v396 = &v339 - v38;
  v470 = a3;
  v471 = a4;
  v472 = a5;
  v473 = a7;
  v39 = v426;
  v474 = v426;
  v475 = a9;
  v408 = type metadata accessor for AttributedString.Runs.AttributesSlice3(0, &v470);
  v380 = *(v408 - 8);
  MEMORY[0x1EEE9AC00](v408);
  v41 = &v339 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v407 = &v339 - v43;
  v430 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v422 = *(v430 - 8);
  MEMORY[0x1EEE9AC00](v430);
  v45 = &v339 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v339 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v411 = &v339 - v50;
  v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
  MEMORY[0x1EEE9AC00](v432);
  v429 = &v339 - v51;
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
  v410 = *(v425 - 8);
  MEMORY[0x1EEE9AC00](v425);
  v424 = &v339 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v409 = (&v339 - v54);
  v402 = type metadata accessor for AttributedString.Runs(0);
  MEMORY[0x1EEE9AC00](v402);
  v406 = &v339 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v339 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v405 = &v339 - v60;
  v434 = a3;
  v470 = a3;
  v418 = a4;
  v471 = a4;
  v472 = v420;
  v473 = a7;
  v474 = v39;
  v419 = a9;
  v475 = a9;
  v399 = type metadata accessor for AttributedString.Runs.AttributesSlice3.Iterator(0, &v470);
  v341 = *(v399 - 8);
  MEMORY[0x1EEE9AC00](v399);
  v400 = &v339 - v61;
  v485 = *v433;
  v62 = v485;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = &unk_1EA7B2000;
  v65 = v62;
  v66 = &static AttributedString.Guts._nextVersion;
  v401 = v62;
  v412 = v58;
  v386 = v45;
  v403 = v48;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_11;
  }

  v58 = v41;
  v67 = *(v62 + 40);
  v504 = *(v62 + 24);
  v505 = v67;
  v506 = *(v62 + 56);
  v68 = *(v62 + 72);
  v69 = *(v62 + 80);
  v70 = *(v62 + 88);
  v71 = *(v62 + 96);
  type metadata accessor for AttributedString.Guts();
  v41 = swift_allocObject();
  v72 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v504, &v470);
  v73 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v73);
  if (v68)
  {
    v74 = v70 == 0;
  }

  else
  {
    v74 = 1;
  }

  v75 = v74;
  if (v75 != v72)
  {
    goto LABEL_107;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_108;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(v66, 1uLL, memory_order_relaxed);
    v77 = v505;
    *(v41 + 24) = v504;
    *(v41 + 2) = add_explicit;
    *(v41 + 40) = v77;
    *(v41 + 56) = v506;
    *(v41 + 9) = v68;
    *(v41 + 10) = v69;
    *(v41 + 11) = v70;
    *(v41 + 12) = v71;
    v65 = v41;
    *(v41 + 13) = MEMORY[0x1E69E7CC0];
    v62 = v401;

    v485 = v41;
    v41 = v58;
    v58 = v412;
LABEL_11:
    if (v64[147] != -1)
    {
LABEL_105:
      swift_once();
    }

    v78 = atomic_fetch_add_explicit(v66, 1uLL, memory_order_relaxed);
    v387 = v65;
    v65[2] = v78;
    v79 = *(v62 + 40);
    v501 = *(v62 + 24);
    v502 = v79;
    v503 = *(v62 + 56);
    v66 = v62;
    v71 = BigString.startIndex.getter();
    v68 = v80;
    v69 = v81;
    v70 = v82;
    v83 = BigString.endIndex.getter();
    v64 = v422;
    if (v83 >> 10 >= v71 >> 10)
    {
      break;
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    swift_once();
  }

  v379 = v41;
  v470 = v71;
  v471 = v68;
  v472 = v69;
  v473 = v70;
  v474 = v83;
  v475 = v84;
  v476 = v85;
  v477 = v86;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  RangeSet.init(_:)();
  *v58 = v66;
  RangeSet.init()();
  v87 = v411;
  RangeSet.ranges.getter();
  v88 = v429;
  v89 = v430;
  (v64[2])(v429, v87, v430);
  v90 = *(v432 + 36);
  v91 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8]);
  dispatch thunk of Collection.startIndex.getter();
  v92 = v64[1];
  v422 = (v64 + 1);
  v404 = v92;
  v92(v87, v89);
  dispatch thunk of Collection.endIndex.getter();
  v93 = *(v88 + v90);
  v428 = v91;
  if (v93 != v470)
  {
    v427 = v90;
    do
    {
      v105 = dispatch thunk of Collection.subscript.read();
      v107 = v106[5];
      *&v433 = v106[4];
      v432 = v107;
      v431 = v106[6];
      v105(&v470, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v108 = v401;
      v109 = *(v401 + 40);
      v498 = *(v401 + 24);
      v499 = v109;
      v500 = *(v401 + 56);
      swift_unknownObjectRetain();
      v110 = BigString.UnicodeScalarView.index(roundingDown:)();
      v112 = v111;
      v114 = v113;
      v116 = v115;
      swift_unknownObjectRelease();
      v117 = *(v108 + 40);
      v495 = *(v108 + 24);
      v496 = v117;
      v497 = *(v108 + 56);
      swift_unknownObjectRetain();
      v118 = BigString.UnicodeScalarView.index(roundingDown:)();
      v120 = v119;
      v122 = v121;
      v124 = v123;
      swift_unknownObjectRelease();
      v470 = v110;
      v471 = v112;
      v472 = v114;
      v473 = v116;
      v474 = v118;
      v475 = v120;
      v476 = v122;
      v89 = v430;
      v477 = v124;
      if ((v118 ^ v110) >= 0x400)
      {
        v125 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v125(&v456, 0);
      }

      v88 = v429;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v88 + v427) != v470);
  }

  outlined destroy of TermOfAddress?(v88, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
  v94 = v402;
  v95 = *(v402 + 24);
  v96 = v412;
  (*(v410 + 16))(&v95[v412], v424, v425);
  v97 = v411;
  RangeSet.ranges.getter();
  v98 = RangeSet.Ranges.count.getter();
  v99 = v97;
  v100 = v404;
  v404(v99, v89);
  v101 = *(v94 + 28);
  LODWORD(v402) = v98 > 1;
  *(v96 + v101) = v402;
  v102 = v403;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v456 == v470)
  {
    v100(v102, v430);
    v103 = v423;
    v104 = v401;
LABEL_22:
    v133 = *(v104 + 72);
    v134 = v418;
    if (v133)
    {
      *&v433 = *(v133 + 18);
    }

    else
    {
      *&v433 = 0;
    }

    v135 = *(v104 + 96);
    v136 = *(v104 + 40);
    v492 = *(v104 + 24);
    v493 = v136;
    v494 = *(v104 + 56);
    v432 = BigString.startIndex.getter();
    v431 = v137;
    v429 = v138;
    v428 = v139;
    v140 = *(v104 + 72);
    v427 = *(v104 + 96);
    if (v140)
    {
      v403 = *(v140 + 18);
      v141 = *(v410 + 8);
      swift_unknownObjectRetain();
      v142 = v135;
      v143 = v425;
      v141(v409, v425);
      v144 = v143;
      v135 = v142;
      v141(v424, v144);
      swift_unknownObjectRelease();
    }

    else
    {
      v145 = *(v410 + 8);
      v146 = v425;
      v145(v409, v425);
      v145(v424, v146);
      v403 = 0;
    }

    v147 = *(v104 + 40);
    v489 = *(v104 + 24);
    v490 = v147;
    v491 = *(v104 + 56);
    v148 = BigString.startIndex.getter();
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v155 = 0;
    v156 = 0;
    v157 = -1;
    v158 = v432;
    v159 = v432;
    v160 = v431;
    v161 = v431;
    v162 = v429;
    v163 = v429;
    v164 = v428;
    v165 = v428;
    v166 = v148;
    v167 = v149;
    v168 = v150;
    v169 = v151;
    v170 = -1;
    v171 = v433;
    goto LABEL_29;
  }

  v126 = v430;
  v127 = dispatch thunk of Collection.subscript.read();
  v129 = *v128;
  v384 = v128[1];
  v385 = v129;
  v130 = v128[2];
  v382 = v128[3];
  v383 = v130;
  v127(&v470, 0);
  v100(v102, v126);
  v381 = v95;
  v131 = v386;
  RangeSet.ranges.getter();
  v132 = dispatch thunk of Collection.isEmpty.getter();
  v103 = v423;
  v104 = v401;
  if (v132)
  {
    v404(v131, v430);
    goto LABEL_22;
  }

  v316 = v131;
  v317 = v430;
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BB0]);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v318 = dispatch thunk of Collection.subscript.read();
  v166 = v319[4];
  v320 = v319[5];
  v321 = v319[6];
  v322 = v319[7];
  v318(&v470, 0);
  v404(v316, v317);
  AttributedString.Guts.findRun(at:)(v385, v382, &v470);
  v386 = v470;
  *&v433 = v471;
  v375 = v473;
  v376 = v472;
  v432 = v475;
  v431 = v476;
  v429 = v477;
  v428 = v478;
  v323 = *(v104 + 40);
  v492 = *(v104 + 24);
  v493 = v323;
  v494 = *(v104 + 56);
  v324 = BigString.endIndex.getter();
  v377 = v322;
  v378 = v321;
  if ((v324 ^ v166) > 0x3FF)
  {
    v372 = v320;
    AttributedString.Guts.findRun(at:)(v166, v322, &v470);
    v427 = v470;
    v403 = v471;
    v156 = v472;
    v374 = v473;
    v333 = v475;
    v362 = v477;
    v363 = v476;
    v361 = v478;
    v334 = v411;
    v335 = v425;
    RangeSet.ranges.getter();
    v336 = v430;
    v170 = RangeSet.Ranges.count.getter();
    v381 = v166;
    v337 = *(v410 + 8);
    v337(v409, v335);
    v338 = v334;
    v155 = v374;
    v404(v338, v336);
    v166 = v381;
    v337(v424, v335);
    v151 = v361;
    v150 = v362;
    v149 = v363;
    v148 = v333;
    v157 = 0;
    v134 = v418;
    v103 = v423;
    v154 = v402;
    v171 = v433;
    v159 = v385;
    v135 = v386;
    v163 = v383;
    v161 = v384;
    v165 = v382;
    v158 = v432;
    v160 = v431;
    v162 = v429;
    v164 = v428;
    v167 = v372;
    v169 = v377;
    v168 = v378;
    v152 = v375;
    v153 = v376;
  }

  else
  {
    v325 = *(v104 + 72);
    if (v325)
    {
      v326 = *(v104 + 80);
    }

    else
    {
      v326 = 0;
    }

    v374 = v326;
    v327 = *(v104 + 96);
    v328 = swift_unknownObjectRetain();
    v427 = v327;
    v403 = specialized Rope._endPath.getter(v328);
    if (v325)
    {
      swift_unknownObjectRelease();
    }

    v329 = v411;
    v330 = v425;
    RangeSet.ranges.getter();
    v331 = v430;
    v170 = RangeSet.Ranges.count.getter();
    v332 = *(v410 + 8);
    v332(v409, v330);
    v404(v329, v331);
    v332(v424, v330);
    v157 = 0;
    v156 = 0;
    v148 = v166;
    v167 = v320;
    v149 = v320;
    v169 = v377;
    v168 = v378;
    v150 = v378;
    v151 = v377;
    v134 = v418;
    v103 = v423;
    v154 = v402;
    v171 = v433;
    v159 = v385;
    v135 = v386;
    v163 = v383;
    v161 = v384;
    v165 = v382;
    v158 = v432;
    v160 = v431;
    v162 = v429;
    v164 = v428;
    v152 = v375;
    v153 = v376;
    v155 = v374;
  }

LABEL_29:
  v172 = v412;
  *(v412 + 8) = v152;
  *(v172 + 16) = v135;
  *(v172 + 24) = v171;
  *(v172 + 32) = v153;
  *(v172 + 40) = v158;
  *(v172 + 48) = v160;
  *(v172 + 56) = v162;
  *(v172 + 64) = v164;
  *(v172 + 72) = v159;
  *(v172 + 80) = v161;
  *(v172 + 88) = v163;
  *(v172 + 96) = v165;
  *(v172 + 104) = v157;
  *(v172 + 112) = 0;
  *(v172 + 113) = v154;
  v173 = v427;
  *(v172 + 120) = v155;
  *(v172 + 128) = v173;
  *(v172 + 136) = v403;
  *(v172 + 144) = v156;
  *(v172 + 152) = v148;
  *(v172 + 160) = v149;
  *(v172 + 168) = v150;
  *(v172 + 176) = v151;
  *(v172 + 184) = v166;
  *(v172 + 192) = v167;
  *(v172 + 200) = v168;
  *(v172 + 208) = v169;
  *(v172 + 216) = v170;
  *(v172 + 224) = 0;
  *(v172 + 225) = v154;
  v174 = v405;
  outlined init with take of AttributedString.Runs(v172, v405);
  v175 = v174;
  v176 = v406;
  outlined init with copy of AttributedString.Runs(v175, v406);
  v177 = v407;
  outlined init with copy of AttributedString.Runs(v176, v407);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_18121D6B0;
  v179 = v434;
  v385 = *(v103 + 24);
  v386 = v103 + 24;
  *(v178 + 32) = v385(v434, v103);
  *(v178 + 40) = v180;
  v181 = v426;
  v383 = *(v426 + 24);
  v384 = v426 + 24;
  *(v178 + 48) = (v383)(v134, v426);
  *(v178 + 56) = v182;
  v183 = v419;
  v184 = v103;
  v185 = v420;
  v381 = *(v419 + 24);
  v382 = v419 + 24;
  *(v178 + 64) = v381(v420, v419);
  *(v178 + 72) = v186;
  *(v177 + *(v408 + 68)) = v178;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd, &_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMR);
  v187 = swift_allocObject();
  v188 = *(v184 + 32);
  v432 = v187 + 32;
  v362 = v188;
  v363 = (v184 + 32);
  (v188)(v179, v184);
  v360 = *(v181 + 32);
  v361 = v181 + 32;
  v360(v134, v181);
  v189 = *(v183 + 32);
  v431 = v187;
  v358 = v189;
  v359 = v183 + 32;
  v189(v185, v183);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd, &_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMR);
  v190 = static _SetStorage.allocate(capacity:)();
  v191 = 0;
  v41 = (v190 + 56);
  while (2)
  {
    v194 = (v432 + 16 * v191);
    v195 = *v194;
    v66 = v194[1];
    Hasher.init(_seed:)();
    *&v433 = v191;
    if (v66 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if (v66)
      {
        MEMORY[0x1865CD060](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x1865CD060](0);
      }
    }

    v65 = &v470;
    v196 = Hasher._finalize()();
    v62 = ~(-1 << *(v190 + 32));
    v58 = v196 & v62;
    v197 = (v196 & v62) >> 6;
    v198 = *&v41[8 * v197];
    v199 = 1 << (v196 & v62);
    if ((v199 & v198) == 0)
    {
LABEL_57:
      *&v41[8 * v197] = v198 | v199;
      v206 = (*(v190 + 48) + 16 * v58);
      *v206 = v195;
      v206[1] = v66;
      v207 = *(v190 + 16);
      v208 = __OFADD__(v207, 1);
      v209 = v207 + 1;
      if (!v208)
      {
        *(v190 + 16) = v209;
        goto LABEL_31;
      }

      __break(1u);
      goto LABEL_105;
    }

    while (1)
    {
      v200 = (*(v190 + 48) + 16 * v58);
      v65 = *v200;
      v201 = v200[1];
      if (v201 == 1)
      {
        if (v66 == 1)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v200, 1);
          v192 = v65;
          v193 = 1;
          goto LABEL_30;
        }

LABEL_42:
        outlined copy of AttributedString.AttributeRunBoundaries?(*v200, v200[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v195, v66);
        outlined consume of AttributedString.AttributeRunBoundaries?(v65, v201);
        v202 = v195;
        v203 = v66;
LABEL_43:
        outlined consume of AttributedString.AttributeRunBoundaries?(v202, v203);
        goto LABEL_44;
      }

      if (v66 == 1)
      {
        goto LABEL_42;
      }

      if (!v201)
      {
        break;
      }

      if (!v66)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v200, v200[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v195, 0);
        outlined copy of AttributedString.AttributeRunBoundaries?(v65, v201);

        v202 = v65;
        v203 = v201;
        goto LABEL_43;
      }

      if (v65 == v195 && v201 == v66)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v195, v66);
        outlined copy of AttributedString.AttributeRunBoundaries?(v195, v66);

LABEL_61:
        v192 = v195;
        v193 = v66;
        goto LABEL_30;
      }

      v205 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of AttributedString.AttributeRunBoundaries?(v65, v201);
      outlined copy of AttributedString.AttributeRunBoundaries?(v195, v66);
      outlined copy of AttributedString.AttributeRunBoundaries?(v65, v201);

      if (v205)
      {
        outlined consume of AttributedString.AttributeRunBoundaries?(v195, v66);
        v195 = v65;
        v66 = v201;
        goto LABEL_61;
      }

      outlined consume of AttributedString.AttributeRunBoundaries?(v65, v201);
LABEL_44:
      v58 = (v58 + 1) & v62;
      v197 = v58 >> 6;
      v198 = *&v41[8 * (v58 >> 6)];
      v199 = 1 << v58;
      if ((v198 & (1 << v58)) == 0)
      {
        goto LABEL_57;
      }
    }

    outlined copy of AttributedString.AttributeRunBoundaries?(*v200, 0);
    if (v66)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v195, v66);

      v202 = v65;
      v203 = 0;
      goto LABEL_43;
    }

    swift_bridgeObjectRelease_n();
    v192 = v65;
    v193 = 0;
LABEL_30:
    outlined consume of AttributedString.AttributeRunBoundaries?(v192, v193);
LABEL_31:
    v191 = v433 + 1;
    if (v433 != 2)
    {
      continue;
    }

    break;
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMR);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  outlined destroy of AttributedString.Runs(v406);
  outlined destroy of AttributedString.Runs(v405);
  v210 = v408;
  v211 = v407;
  *(v407 + *(v408 + 72)) = v190;
  v213 = v379;
  v212 = v380;
  v214 = v380[2];
  v214(v379, v211, v210);
  v215 = v400;
  result = (v214)(v400, v213, v210);
  v217 = *(v213 + 12);
  if (v217 == 2)
  {
    __break(1u);
  }

  else
  {
    v218 = *(v213 + 11);
    v433 = *(v213 + 72);
    v219 = v212[1];
    v219(v211, v210);
    v220 = *(*v213 + 16);
    v219(v213, v210);
    v221 = v399;
    v222 = &v215[*(v399 + 68)];
    *v222 = v433;
    *(v222 + 2) = v218;
    *(v222 + 3) = v217;
    *(v222 + 4) = v220;
    v223 = v396;
    AttributedString.Runs.AttributesSlice3.Iterator.next()(v221, v396);
    v224 = TupleTypeMetadata;
    v225 = *(TupleTypeMetadata - 8);
    v226 = *(v225 + 48);
    v379 = (v225 + 48);
    v380 = v226;
    v227 = (v226)(v223, 1, TupleTypeMetadata);
    v228 = v417;
    v229 = v416;
    v230 = v415;
    v231 = v421;
    v232 = v414;
    v233 = v413;
    if (v227 != 1)
    {
      v234 = *(v398 + 32);
      v377 = (v370 + 4);
      v378 = v234;
      v375 = (v398 + 16);
      v376 = (v340 + 32);
      v374 = (v373 + 6);
      v357 = v373 + 4;
      v356 = v373 + 2;
      v354 = v423 + 48;
      v355 = v423 + 40;
      v353 = (v373 + 1);
      v398 += 32;
      v410 = v398 - 24;
      v372 = (v371 + 6);
      v373 = (v370 + 2);
      v351 = v371 + 2;
      v352 = v371 + 4;
      v349 = v426 + 48;
      v350 = v426 + 40;
      v235 = (v371 + 1);
      v409 = (v370 + 1);
      v371 = (v340 + 16);
      v370 = (v343 + 6);
      v347 = (v343 + 4);
      v348 = v235;
      v346 = (v343 + 2);
      v344 = v419 + 48;
      v345 = v419 + 40;
      ++v343;
      v408 = v340 + 8;
      do
      {
        v247 = v224;
        v248 = *(v224 + 48);
        v249 = *(v247 + 64);
        v250 = (v223 + *(v247 + 80));
        v251 = v250[1];
        v422 = *v250;
        v432 = v251;
        v252 = v250[3];
        v431 = v250[2];
        v430 = v252;
        v253 = v250[5];
        v425 = v250[4];
        *&v433 = v253;
        v254 = v250[7];
        v429 = v250[6];
        v428 = v254;
        v256 = v250[8];
        v255 = v250[9];
        v427 = v256;
        v424 = v255;
        (v378)(v233, v223, v232);
        (*v377)(v231, v223 + v248, v230);
        (*v376)(v229, v223 + v249, v228);
        v257 = v388;
        (*v375)(v388, v233, v232);
        v258 = v391;
        v259 = (*v374)(v257, 1, v391);
        v260 = v434;
        if (v259 == 1)
        {
          v261 = v230;
          (*v410)(v257, v232);
          v262 = 0;
          memset(v484, 0, 32);
          v482 = 0u;
          v483 = 0u;
          v263 = v420;
          v264 = v418;
          v265 = v423;
        }

        else
        {
          v266 = v364;
          (*v357)(v364, v257, v258);
          v267 = *v356;
          v268 = v365;
          (*v356)(v365, v266, v258);
          *(&v483 + 1) = v258;
          v265 = v423;
          v484[0] = swift_getAssociatedConformanceWitness();
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v482);
          v267(boxed_opaque_existential_0, v268, v258);
          (v362)(&v456, v434, v265);
          *&v484[1] = v456;
          LOBYTE(v484[3]) = (*(v265 + 40))(v434, v265) & 1;
          v262 = (*(v265 + 48))(v434, v265);
          v270 = *v353;
          v271 = v268;
          v261 = v415;
          (*v353)(v271, v258);
          v270(v266, v258);
          v260 = v434;
          v263 = v420;
          v264 = v418;
        }

        v272 = v392;
        v484[4] = v262;
        v273 = v385(v260, v265);
        v274 = v422;
        v470 = v422;
        v471 = v432;
        v472 = v431;
        v473 = v430;
        v474 = v425;
        v475 = v433;
        v476 = v429;
        v477 = v428;
        v478 = v427;
        v479 = v424;
        v407 = v273;
        v480 = v273;
        v404 = v275;
        v481 = v275;
        v276 = v389;
        (*v373)(v389, v421, v261);
        if ((*v372)(v276, 1, v272) == 1)
        {
          (*v409)(v276, v261);
          v277 = 0;
          memset(v469, 0, 32);
          v467 = 0u;
          v468 = 0u;
          v278 = v426;
        }

        else
        {
          v279 = v366;
          (*v352)(v366, v276, v272);
          v280 = *v351;
          v281 = v367;
          (*v351)(v367, v279, v272);
          *(&v468 + 1) = v272;
          v278 = v426;
          v469[0] = swift_getAssociatedConformanceWitness();
          v282 = __swift_allocate_boxed_opaque_existential_0(&v467);
          v280(v282, v281, v272);
          (v360)(&v442, v264, v278);
          *&v469[1] = v442;
          LOBYTE(v469[3]) = (*(v278 + 40))(v264, v278) & 1;
          v277 = (*(v278 + 48))(v264, v278);
          v283 = *v348;
          (*v348)(v281, v272);
          v284 = v279;
          v228 = v417;
          v283(v284, v272);
          v274 = v422;
        }

        v285 = v416;
        v469[4] = v277;
        v286 = (v383)(v264, v278);
        *&v456 = v274;
        *(&v456 + 1) = v432;
        v457 = v431;
        v458 = v430;
        v459 = v425;
        v460 = v433;
        v461 = v429;
        v462 = v428;
        v463 = v427;
        v464 = v424;
        v406 = v286;
        v465 = v286;
        v403 = v287;
        v466 = v287;
        v288 = v390;
        (*v371)(v390, v285, v228);
        v289 = v393;
        if ((*v370)(v288, 1, v393) == 1)
        {
          (*v408)(v288, v228);
          v290 = 0;
          memset(v455, 0, 32);
          v453 = 0u;
          v454 = 0u;
          v291 = v423;
          v292 = v419;
        }

        else
        {
          v293 = v368;
          (*v347)(v368, v288, v289);
          v294 = *v346;
          v295 = v369;
          (*v346)(v369, v293, v289);
          *(&v454 + 1) = v289;
          v292 = v419;
          v455[0] = swift_getAssociatedConformanceWitness();
          v296 = __swift_allocate_boxed_opaque_existential_0(&v453);
          v294(v296, v295, v289);
          v358(v438, v263, v292);
          *&v455[1] = v438[0];
          LOBYTE(v455[3]) = (*(v292 + 40))(v263, v292) & 1;
          v290 = (*(v292 + 48))(v263, v292);
          v297 = *v343;
          (*v343)(v295, v289);
          v298 = v293;
          v285 = v416;
          v297(v298, v289);
          v291 = v423;
        }

        v455[4] = v290;
        v299 = v381(v263, v292);
        v300 = v422;
        *&v442 = v422;
        *(&v442 + 1) = v432;
        v443 = v431;
        v444 = v430;
        v445 = v425;
        v446 = v433;
        v447 = v429;
        v448 = v428;
        v449 = v427;
        v450 = v424;
        v405 = v299;
        v451 = v299;
        v402 = v301;
        v452 = v301;
        v303 = v292;
        v304 = v422;
        v305 = type metadata accessor for AttributedString.SingleAttributeTransformer(0, v434, v291, v302);
        v425 = *(v305 - 8);
        v306 = *(v425 + 16);
        v424 = v305;
        v306(v438, &v470);
        v308 = type metadata accessor for AttributedString.SingleAttributeTransformer(0, v264, v426, v307);
        v412 = *(v308 - 8);
        v309 = *(v412 + 16);
        v411 = v308;
        v309(v437, &v456);
        v311 = type metadata accessor for AttributedString.SingleAttributeTransformer(0, v263, v303, v310);
        v312 = *(v311 - 8);
        v313 = v311;
        (*(v312 + 16))(v435, &v442);
        v394(v438, v437, v435);
        v314 = v304 >> 10;
        if (v304 >> 10 != *&v438[0] >> 10 || (v439 ^ v433) > 0x3FF || (v407 != v440 || v404 != v441) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v488[0] = v300;
          v488[1] = v432;
          v488[2] = v431;
          v488[3] = v430;
          v488[4] = v433;
          v488[5] = v429;
          v488[6] = v428;
          v488[7] = v427;
          AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(v434, v488, v434, v423);
        }

        v315 = v413;
        if (v314 != v437[0] >> 10 || (v437[5] ^ v433) > 0x3FF || (v406 != v437[10] || v403 != v437[11]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v487[0] = v304;
          v487[1] = v432;
          v487[2] = v431;
          v487[3] = v430;
          v487[4] = v433;
          v487[5] = v429;
          v487[6] = v428;
          v487[7] = v427;
          AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(v418, v487, v418, v426);
        }

        if (v314 != v435[0] >> 10 || (v435[5] ^ v433) > 0x3FF || ((v236 = v436, v405 != v435[10]) || v402 != v436) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v486[0] = v304;
          v486[1] = v432;
          v486[2] = v431;
          v486[3] = v430;
          v486[4] = v433;
          v486[5] = v429;
          v486[6] = v428;
          v486[7] = v427;
          AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(v420, v486, v420, v419);
        }

        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(&v470, v438, &v485, v236, v434, v423);
        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(&v456, v437, &v485, v237, v418, v426);
        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(&v442, v435, &v485, v238, v420, v419);
        (*v408)(v285, v417);
        (*v409)(v421, v415);
        (*v410)(v315, v414);
        v239 = *(v312 + 8);
        v239(v435, v313);
        v240 = *(v412 + 8);
        v241 = v411;
        v240(v437, v411);
        v242 = *(v425 + 8);
        v243 = v424;
        v242(v438, v424);
        v244 = v313;
        v232 = v414;
        v239(&v442, v244);
        v245 = v241;
        v233 = v413;
        v240(&v456, v245);
        v229 = v416;
        v246 = v243;
        v231 = v421;
        v242(&v470, v246);
        v230 = v415;
        v228 = v417;
        v223 = v396;
        AttributedString.Runs.AttributesSlice3.Iterator.next()(v399, v396);
        v224 = TupleTypeMetadata;
      }

      while ((v380)(v223, 1, TupleTypeMetadata) != 1);
    }

    (*(v341 + 8))(v400, v399);

    *v342 = v485;
  }

  return result;
}

uint64_t AttributedString.transformingAttributes<A, B, C, D>(_:_:_:_:_:)@<X0>(void (*a1)(void *, void *, void *, void *)@<X4>, uint64_t a2@<X5>, char *a3@<X6>, uint64_t a4@<X7>, void *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v331 = a1;
  v332 = a2;
  v311 = a5;
  v372 = a11;
  v368 = a7;
  v367 = a6;
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v315 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v364 = &v310 - v14;
  swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  v314 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v363 = &v310 - v16;
  swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Optional();
  v313 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v354 = &v310 - v18;
  v355 = v19;
  v369 = a3;
  v20 = v19;
  v356 = v15;
  v366 = a10;
  swift_getAssociatedTypeWitness();
  v358 = type metadata accessor for Optional();
  v335 = *(v358 - 8);
  MEMORY[0x1EEE9AC00](v358);
  v357 = &v310 - v21;
  v390 = v22;
  v391 = v20;
  v392 = v15;
  v359 = v13;
  v393 = v13;
  v394 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v23 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v333 = &v310 - v24;
  v390 = a3;
  v391 = a4;
  v25 = v367;
  v26 = v368;
  v392 = v367;
  v393 = v368;
  v394 = a8;
  v395 = a9;
  v396 = a10;
  v27 = v372;
  v397 = v372;
  v347 = type metadata accessor for AttributedString.Runs.AttributesSlice4(0, &v390);
  v341 = *(v347 - 8);
  MEMORY[0x1EEE9AC00](v347);
  v340 = &v310 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v352 = &v310 - v30;
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v353 = *(v375 - 8);
  MEMORY[0x1EEE9AC00](v375);
  v32 = &v310 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v310 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v350 = &v310 - v37;
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
  MEMORY[0x1EEE9AC00](v377);
  v374 = &v310 - v38;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
  v349 = *(v362 - 8);
  MEMORY[0x1EEE9AC00](v362);
  v361 = &v310 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v348 = &v310 - v41;
  v342 = type metadata accessor for AttributedString.Runs(0);
  MEMORY[0x1EEE9AC00](v342);
  v346 = &v310 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v351 = &v310 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v345 = &v310 - v46;
  v390 = v369;
  v365 = a9;
  v360 = a4;
  v391 = a4;
  v392 = v25;
  v393 = v26;
  v371 = a8;
  v394 = a8;
  v395 = a9;
  v396 = a10;
  v397 = v27;
  v336 = type metadata accessor for AttributedString.Runs.AttributesSlice4.Iterator(0, &v390);
  v47 = *(v336 - 8);
  MEMORY[0x1EEE9AC00](v336);
  v337 = &v310 - v48;
  v403 = *v378;
  v49 = v403;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = &unk_1EA7B2000;
  v52 = v49;
  v53 = &static AttributedString.Guts._nextVersion;
  v339 = v32;
  v343 = v35;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_11;
  }

  v54 = *(v49 + 40);
  v423 = *(v49 + 24);
  v424 = v54;
  v425 = *(v49 + 56);
  v55 = *(v49 + 72);
  v56 = *(v49 + 80);
  v57 = *(v49 + 88);
  v58 = *(v49 + 96);
  type metadata accessor for AttributedString.Guts();
  v59 = swift_allocObject();
  v60 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v423, &v390);
  v61 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v61);
  if (v55)
  {
    v62 = v57 == 0;
  }

  else
  {
    v62 = 1;
  }

  v63 = v62;
  if (v63 != v60)
  {
    goto LABEL_105;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_106;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v65 = v424;
    *(v59 + 24) = v423;
    *(v59 + 16) = add_explicit;
    *(v59 + 40) = v65;
    *(v59 + 56) = v425;
    *(v59 + 72) = v55;
    *(v59 + 80) = v56;
    v53 = &static AttributedString.Guts._nextVersion;
    *(v59 + 88) = v57;
    *(v59 + 96) = v58;
    v52 = v59;
    *(v59 + 104) = MEMORY[0x1E69E7CC0];

    v403 = v59;
LABEL_11:
    if (v51[147] != -1)
    {
LABEL_103:
      swift_once();
    }

    v66 = atomic_fetch_add_explicit(v53, 1uLL, memory_order_relaxed);
    v330 = v52;
    v52[2] = v66;
    v67 = *(v49 + 40);
    v420 = *(v49 + 24);
    v421 = v67;
    v422 = *(v49 + 56);
    v58 = BigString.startIndex.getter();
    v55 = v68;
    v56 = v69;
    v57 = v70;
    v71 = BigString.endIndex.getter();
    v59 = v351;
    v51 = v362;
    if (v71 >> 10 >= v58 >> 10)
    {
      break;
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    swift_once();
  }

  v310 = v47;
  v390 = v58;
  v391 = v55;
  v392 = v56;
  v393 = v57;
  v394 = v71;
  v395 = v72;
  v396 = v73;
  v397 = v74;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  RangeSet.init(_:)();
  v338 = v49;
  *v59 = v49;
  RangeSet.init()();
  v75 = v350;
  RangeSet.ranges.getter();
  v76 = v353;
  v77 = v374;
  v78 = v375;
  (*(v353 + 16))(v374, v75, v375);
  v79 = *(v377 + 36);
  v80 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8]);
  dispatch thunk of Collection.startIndex.getter();
  v81 = *(v76 + 8);
  v353 = v76 + 8;
  v344 = v81;
  v81(v75, v78);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v77 + v79) != v390)
  {
    v373 = v80;
    v370 = v79;
    do
    {
      v90 = dispatch thunk of Collection.subscript.read();
      v92 = v91[5];
      *&v378 = v91[4];
      v377 = v92;
      v376 = v91[6];
      v90(&v390, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v93 = v338;
      v94 = *(v338 + 40);
      v417 = *(v338 + 24);
      v418 = v94;
      v419 = *(v338 + 56);
      swift_unknownObjectRetain();
      v95 = BigString.UnicodeScalarView.index(roundingDown:)();
      v97 = v96;
      v99 = v98;
      v101 = v100;
      swift_unknownObjectRelease();
      v102 = *(v93 + 40);
      v414 = *(v93 + 24);
      v415 = v102;
      v416 = *(v93 + 56);
      swift_unknownObjectRetain();
      v103 = BigString.UnicodeScalarView.index(roundingDown:)();
      v105 = v104;
      v107 = v106;
      v109 = v108;
      v78 = v375;
      swift_unknownObjectRelease();
      v390 = v95;
      v391 = v97;
      v392 = v99;
      v393 = v101;
      v394 = v103;
      v395 = v105;
      v396 = v107;
      v397 = v109;
      if ((v103 ^ v95) >= 0x400)
      {
        v110 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v110(v388, 0);
      }

      v77 = v374;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v77 + v370) != v390);
  }

  outlined destroy of TermOfAddress?(v77, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
  v82 = v342;
  v83 = *(v342 + 24);
  v84 = v351;
  (*(v349 + 16))(&v351[v83], v361, v362);
  v85 = v350;
  RangeSet.ranges.getter();
  v86 = RangeSet.Ranges.count.getter();
  v87 = v344;
  v344(v85, v78);
  v88 = *(v82 + 28);
  LODWORD(v342) = v86 > 1;
  *(v84 + v88) = v342;
  v89 = v343;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v388[0] == v390)
  {
    v87(v89, v78);
LABEL_22:
    v117 = v338;
    v118 = *(v338 + 72);
    v119 = v371;
    if (v118)
    {
      v370 = *(v118 + 18);
    }

    else
    {
      v370 = 0;
    }

    *&v378 = *(v338 + 96);
    v120 = *(v338 + 40);
    v411 = *(v338 + 24);
    v412 = v120;
    v413 = *(v338 + 56);
    v121 = BigString.startIndex.getter();
    v123 = v122;
    v377 = v124;
    v376 = v125;
    v126 = *(v117 + 72);
    v374 = *(v117 + 96);
    if (v126)
    {
      v373 = *(v126 + 18);
      v127 = *(v349 + 8);
      swift_unknownObjectRetain();
      v128 = v362;
      v127(v348, v362);
      v127(v361, v128);
      swift_unknownObjectRelease();
    }

    else
    {
      v129 = *(v349 + 8);
      v130 = v362;
      v129(v348, v362);
      v129(v361, v130);
      v373 = 0;
    }

    v131 = *(v117 + 40);
    v408 = *(v117 + 24);
    v409 = v131;
    v410 = *(v117 + 56);
    v132 = BigString.startIndex.getter();
    v136 = 0;
    v137 = 0;
    v138 = 0;
    v139 = 0;
    v140 = 0;
    v141 = -1;
    v142 = v121;
    v143 = v123;
    v144 = v377;
    v145 = v377;
    v146 = v376;
    v147 = v376;
    v148 = v132;
    v149 = v133;
    v150 = v134;
    v151 = v135;
    v152 = -1;
    v153 = v370;
    v154 = v378;
    goto LABEL_29;
  }

  v111 = dispatch thunk of Collection.subscript.read();
  v113 = *v112;
  v114 = v112[1];
  v328 = v112[2];
  v329 = v114;
  v115 = v112[3];
  v326 = v113;
  v327 = v115;
  v111(&v390, 0);
  v87(v89, v78);
  v116 = v339;
  RangeSet.ranges.getter();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v87(v116, v78);
    goto LABEL_22;
  }

  v320 = v83;
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BB0]);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v289 = dispatch thunk of Collection.subscript.read();
  v148 = v290[4];
  v291 = v290[5];
  v292 = v290[6];
  v293 = v290[7];
  v289(&v390, 0);
  v87(v116, v78);
  v142 = v326;
  v294 = v338;
  AttributedString.Guts.findRun(at:)(v326, v327, &v390);
  *&v378 = v390;
  v295 = v391;
  v321 = v393;
  v322 = v392;
  v343 = v395;
  v339 = v396;
  v377 = v397;
  v376 = v398;
  v296 = *(v294 + 40);
  v411 = *(v294 + 24);
  v412 = v296;
  v413 = *(v294 + 56);
  v297 = BigString.endIndex.getter();
  v324 = v292;
  v325 = v291;
  v323 = v293;
  if ((v297 ^ v148) > 0x3FF)
  {
    AttributedString.Guts.findRun(at:)(v148, v293, &v390);
    v373 = v391;
    v374 = v390;
    v140 = v392;
    v370 = v395;
    v318 = v396;
    v319 = v393;
    v316 = v398;
    v317 = v397;
    v306 = v350;
    v307 = v362;
    RangeSet.ranges.getter();
    v308 = v375;
    v152 = RangeSet.Ranges.count.getter();
    v309 = *(v349 + 8);
    v309(v348, v307);
    v344(v306, v308);
    v153 = v295;
    v142 = v326;
    v309(v361, v307);
    v133 = v318;
    v139 = v319;
    v154 = v378;
    v135 = v316;
    v134 = v317;
    v84 = v351;
    v132 = v370;
    v119 = v371;
    v141 = 0;
    v138 = v342;
    v145 = v328;
    v143 = v329;
    v147 = v327;
    v121 = v343;
    v123 = v339;
    v144 = v377;
    v146 = v376;
    v150 = v324;
    v149 = v325;
    v137 = v322;
    v151 = v323;
    v136 = v321;
  }

  else
  {
    v370 = v295;
    v298 = *(v294 + 72);
    if (v298)
    {
      v299 = *(v294 + 80);
    }

    else
    {
      v299 = 0;
    }

    v319 = v299;
    v300 = *(v294 + 96);
    v301 = swift_unknownObjectRetain();
    v374 = v300;
    v373 = specialized Rope._endPath.getter(v301);
    if (v298)
    {
      swift_unknownObjectRelease();
    }

    v302 = v350;
    v84 = v351;
    v303 = v362;
    RangeSet.ranges.getter();
    v304 = v375;
    v152 = RangeSet.Ranges.count.getter();
    v305 = *(v349 + 8);
    v305(v348, v303);
    v344(v302, v304);
    v305(v361, v303);
    v141 = 0;
    v140 = 0;
    v132 = v148;
    v150 = v324;
    v149 = v325;
    v133 = v325;
    v134 = v324;
    v137 = v322;
    v151 = v323;
    v135 = v323;
    v153 = v370;
    v119 = v371;
    v138 = v342;
    v154 = v378;
    v145 = v328;
    v143 = v329;
    v147 = v327;
    v121 = v343;
    v123 = v339;
    v144 = v377;
    v146 = v376;
    v136 = v321;
    v139 = v319;
  }

LABEL_29:
  *(v84 + 8) = v136;
  *(v84 + 16) = v154;
  *(v84 + 24) = v153;
  *(v84 + 32) = v137;
  *(v84 + 40) = v121;
  *(v84 + 48) = v123;
  *(v84 + 56) = v144;
  *(v84 + 64) = v146;
  *(v84 + 72) = v142;
  *(v84 + 80) = v143;
  *(v84 + 88) = v145;
  *(v84 + 96) = v147;
  *(v84 + 104) = v141;
  *(v84 + 112) = 0;
  *(v84 + 113) = v138;
  v155 = v373;
  v156 = v374;
  *(v84 + 120) = v139;
  *(v84 + 128) = v156;
  *(v84 + 136) = v155;
  *(v84 + 144) = v140;
  *(v84 + 152) = v132;
  *(v84 + 160) = v133;
  *(v84 + 168) = v134;
  *(v84 + 176) = v135;
  *(v84 + 184) = v148;
  *(v84 + 192) = v149;
  *(v84 + 200) = v150;
  *(v84 + 208) = v151;
  *(v84 + 216) = v152;
  *(v84 + 224) = 0;
  *(v84 + 225) = v138;
  v157 = v345;
  outlined init with take of AttributedString.Runs(v84, v345);
  v158 = v157;
  v159 = v346;
  outlined init with copy of AttributedString.Runs(v158, v346);
  outlined init with copy of AttributedString.Runs(v159, v352);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v160 = swift_allocObject();
  *(v160 + 16) = xmmword_18121D6C0;
  v161 = v369;
  v328 = *(v119 + 24);
  v329 = v119 + 24;
  *(v160 + 32) = v328(v369, v119);
  *(v160 + 40) = v162;
  v163 = v365;
  v164 = v360;
  v326 = *(v365 + 24);
  v327 = v365 + 24;
  *(v160 + 48) = v326(v360, v365);
  *(v160 + 56) = v165;
  v166 = v366;
  v167 = v367;
  v324 = *(v366 + 24);
  v325 = (v366 + 24);
  *(v160 + 64) = v324(v367, v366);
  *(v160 + 72) = v168;
  v169 = v372;
  v170 = v368;
  v322 = *(v372 + 24);
  v323 = v372 + 24;
  *(v160 + 80) = v322(v368, v372);
  *(v160 + 88) = v171;
  *(v352 + *(v347 + 84)) = v160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd, &_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMR);
  v172 = swift_allocObject();
  v173 = *(v371 + 32);
  v377 = v172 + 32;
  v173(v161);
  (*(v163 + 32))(v164, v163);
  (*(v166 + 32))(v167, v166);
  v174 = *(v169 + 32);
  v376 = v172;
  v174(v170, v169);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd, &_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMR);
  v175 = static _SetStorage.allocate(capacity:)();
  v176 = 0;
  v49 = v175 + 56;
  while (2)
  {
    v179 = (v377 + 16 * v176);
    v180 = *v179;
    v53 = v179[1];
    Hasher.init(_seed:)();
    *&v378 = v176;
    if (v53 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if (v53)
      {
        MEMORY[0x1865CD060](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x1865CD060](0);
      }
    }

    v52 = &v390;
    v181 = Hasher._finalize()();
    v47 = ~(-1 << *(v175 + 32));
    v182 = v181 & v47;
    v183 = (v181 & v47) >> 6;
    v184 = *(v49 + 8 * v183);
    v185 = 1 << (v181 & v47);
    if ((v185 & v184) == 0)
    {
LABEL_57:
      *(v49 + 8 * v183) = v184 | v185;
      v192 = (*(v175 + 48) + 16 * v182);
      *v192 = v180;
      v192[1] = v53;
      v193 = *(v175 + 16);
      v194 = __OFADD__(v193, 1);
      v195 = v193 + 1;
      if (!v194)
      {
        *(v175 + 16) = v195;
        goto LABEL_31;
      }

      __break(1u);
      goto LABEL_103;
    }

    while (1)
    {
      v186 = (*(v175 + 48) + 16 * v182);
      v52 = *v186;
      v187 = v186[1];
      if (v187 == 1)
      {
        if (v53 == 1)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v186, 1);
          v177 = v52;
          v178 = 1;
          goto LABEL_30;
        }

LABEL_42:
        outlined copy of AttributedString.AttributeRunBoundaries?(*v186, v186[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v180, v53);
        outlined consume of AttributedString.AttributeRunBoundaries?(v52, v187);
        v188 = v180;
        v189 = v53;
LABEL_43:
        outlined consume of AttributedString.AttributeRunBoundaries?(v188, v189);
        goto LABEL_44;
      }

      if (v53 == 1)
      {
        goto LABEL_42;
      }

      if (!v187)
      {
        break;
      }

      if (!v53)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v186, v186[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v180, 0);
        outlined copy of AttributedString.AttributeRunBoundaries?(v52, v187);

        v188 = v52;
        v189 = v187;
        goto LABEL_43;
      }

      if (v52 == v180 && v187 == v53)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v180, v53);
        outlined copy of AttributedString.AttributeRunBoundaries?(v180, v53);

LABEL_61:
        v177 = v180;
        v178 = v53;
        goto LABEL_30;
      }

      v191 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of AttributedString.AttributeRunBoundaries?(v52, v187);
      outlined copy of AttributedString.AttributeRunBoundaries?(v180, v53);
      outlined copy of AttributedString.AttributeRunBoundaries?(v52, v187);

      if (v191)
      {
        outlined consume of AttributedString.AttributeRunBoundaries?(v180, v53);
        v180 = v52;
        v53 = v187;
        goto LABEL_61;
      }

      outlined consume of AttributedString.AttributeRunBoundaries?(v52, v187);
LABEL_44:
      v182 = (v182 + 1) & v47;
      v183 = v182 >> 6;
      v184 = *(v49 + 8 * (v182 >> 6));
      v185 = 1 << v182;
      if ((v184 & (1 << v182)) == 0)
      {
        goto LABEL_57;
      }
    }

    outlined copy of AttributedString.AttributeRunBoundaries?(*v186, 0);
    if (v53)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v180, v53);

      v188 = v52;
      v189 = 0;
      goto LABEL_43;
    }

    swift_bridgeObjectRelease_n();
    v177 = v52;
    v178 = 0;
LABEL_30:
    outlined consume of AttributedString.AttributeRunBoundaries?(v177, v178);
LABEL_31:
    v176 = v378 + 1;
    if (v378 != 3)
    {
      continue;
    }

    break;
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMR);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  outlined destroy of AttributedString.Runs(v346);
  outlined destroy of AttributedString.Runs(v345);
  v196 = v347;
  v197 = v352;
  *(v352 + *(v347 + 88)) = v175;
  v199 = v340;
  v198 = v341;
  v200 = *(v341 + 16);
  v200(v340, v197, v196);
  v201 = v337;
  result = (v200)(v337, v199, v196);
  v203 = *(v199 + 12);
  if (v203 == 2)
  {
    __break(1u);
  }

  else
  {
    v204 = *(v199 + 11);
    v378 = *(v199 + 72);
    v205 = *(v198 + 8);
    v205(v197, v196);
    v206 = *(*v199 + 16);
    v205(v199, v196);
    v207 = v336;
    v208 = &v201[*(v336 + 84)];
    *v208 = v378;
    *(v208 + 2) = v204;
    *(v208 + 3) = v203;
    *(v208 + 4) = v206;
    v209 = v333;
    AttributedString.Runs.AttributesSlice4.Iterator.next()(v207, v333);
    v210 = TupleTypeMetadata;
    v211 = *(TupleTypeMetadata - 8);
    v212 = *(v211 + 48);
    v320 = v211 + 48;
    v321 = v212;
    v213 = v212(v209, 1, TupleTypeMetadata);
    v214 = v369;
    v215 = v358;
    v216 = v359;
    v217 = v357;
    if (v213 != 1)
    {
      v218 = *(v335 + 32);
      v318 = (v313 + 4);
      v319 = v218;
      v317 = (v314 + 4);
      v219 = v315++;
      v316 = (v219 + 4);
      ++v314;
      v335 += 32;
      v312 = (v335 - 24);
      ++v313;
      do
      {
        v230 = v210[12];
        v231 = v210[20];
        v352 = v210[16];
        v353 = v231;
        v232 = (v209 + v210[24]);
        v233 = *v232;
        v234 = v363;
        v370 = v232[1];
        v235 = v232[3];
        v376 = v232[2];
        v377 = v235;
        v236 = v232[4];
        v237 = v232[5];
        v238 = v232[6];
        v375 = v232[7];
        v240 = v232[8];
        v239 = v232[9];
        v373 = v236;
        v374 = v240;
        v361 = v233;
        v362 = v239;
        v319(v217, v209, v215);
        v241 = v354;
        (*v318)(v354, v209 + v230, v355);
        (*v317)(v234, v209 + v352, v356);
        (*v316)(v364, v209 + v353, v216);
        v242 = v361;
        v243 = v371;
        static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v217, v214, v371, &v402);
        v244 = v328(v214, v243);
        v390 = v242;
        v391 = v370;
        v245 = v376;
        v392 = v376;
        v246 = v377;
        v393 = v377;
        v247 = v373;
        v248 = v374;
        v394 = v373;
        *&v378 = v237;
        v395 = v237;
        v396 = v238;
        v397 = v375;
        v398 = v374;
        v399 = v362;
        v343 = v244;
        v400 = v244;
        v339 = v249;
        v401 = v249;
        v250 = v241;
        v251 = v360;
        v252 = v365;
        static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v250, v360, v365, &v389);
        v253 = v326(v251, v252);
        v388[0] = v242;
        v388[1] = v370;
        v388[2] = v245;
        v388[3] = v246;
        v388[4] = v247;
        v388[5] = v237;
        v254 = v238;
        v388[6] = v238;
        v255 = v375;
        v388[7] = v375;
        v256 = v248;
        v388[8] = v248;
        v257 = v362;
        v388[9] = v362;
        v344 = v253;
        v388[10] = v253;
        v340 = v258;
        v388[11] = v258;
        v260 = v366;
        v259 = v367;
        static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v363, v367, v366, &v387);
        v261 = v324(v259, v260);
        v386[0] = v242;
        v262 = v370;
        v386[1] = v370;
        v263 = v376;
        v386[2] = v376;
        v386[3] = v377;
        v265 = v372;
        v264 = v373;
        v386[4] = v373;
        v386[5] = v378;
        v386[6] = v254;
        v386[7] = v255;
        v386[8] = v256;
        v386[9] = v257;
        v345 = v261;
        v386[10] = v261;
        v341 = v266;
        v386[11] = v266;
        v267 = v368;
        static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v364, v368, v372, &v385);
        v268 = v322(v267, v265);
        v269 = v361;
        v384[0] = v361;
        v384[1] = v262;
        v384[2] = v263;
        v384[3] = v377;
        v384[4] = v264;
        v384[5] = v378;
        v373 = v254;
        v384[6] = v254;
        v384[7] = v255;
        v384[8] = v256;
        v384[9] = v257;
        v346 = v268;
        v384[10] = v268;
        v342 = v270;
        v384[11] = v270;
        v271 = v369;
        v273 = type metadata accessor for AttributedString.SingleAttributeTransformer(0, v369, v371, v272);
        v362 = *(v273 - 8);
        v274 = *(v362 + 16);
        v351 = v273;
        v274(v383, &v390);
        v275 = v360;
        v277 = type metadata accessor for AttributedString.SingleAttributeTransformer(0, v360, v365, v276);
        v352 = *(v277 - 8);
        v353 = v277;
        (*(v352 + 16))(v382, v388);
        v279 = type metadata accessor for AttributedString.SingleAttributeTransformer(0, v367, v366, v278);
        v280 = *(v279 - 8);
        v349 = v279;
        v350 = v280;
        (*(v280 + 2))(v381, v386);
        v282 = type metadata accessor for AttributedString.SingleAttributeTransformer(0, v368, v372, v281);
        v347 = *(v282 - 8);
        v348 = v282;
        (*(v347 + 16))(v379, v384);
        v331(v383, v382, v381, v379);
        v283 = v269;
        v284 = v269 >> 10;
        if (v269 >> 10 != v383[0] >> 10 || (v383[5] ^ v378) > 0x3FF || (v343 != v383[10] || v339 != v383[11]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v407[0] = v269;
          v407[1] = v262;
          v407[2] = v376;
          v407[3] = v377;
          v407[4] = v378;
          v407[5] = v373;
          v407[6] = v375;
          v407[7] = v374;
          AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(v271, v407, v271, v371);
        }

        v285 = v365;
        if (v284 != v382[0] >> 10 || (v382[5] ^ v378) > 0x3FF || (v344 != v382[10] || v340 != v382[11]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v406[0] = v269;
          v406[1] = v262;
          v406[2] = v376;
          v406[3] = v377;
          v406[4] = v378;
          v406[5] = v373;
          v406[6] = v375;
          v406[7] = v374;
          AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(v275, v406, v275, v285);
        }

        v286 = v366;
        v287 = v367;
        if (v284 != v381[0] >> 10 || (v381[5] ^ v378) > 0x3FF || (v345 != v381[10] || v341 != v381[11]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v405[0] = v283;
          v405[1] = v262;
          v405[2] = v376;
          v405[3] = v377;
          v405[4] = v378;
          v405[5] = v373;
          v405[6] = v375;
          v405[7] = v374;
          AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(v287, v405, v287, v286);
        }

        v62 = v284 == v379[0] >> 10;
        v288 = v368;
        if (!v62 || (v379[5] ^ v378) > 0x3FF || ((v220 = v380, v346 != v379[10]) || v342 != v380) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v404[0] = v283;
          v404[1] = v262;
          v404[2] = v376;
          v404[3] = v377;
          v404[4] = v378;
          v404[5] = v373;
          v404[6] = v375;
          v404[7] = v374;
          AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(v288, v404, v288, v372);
        }

        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(&v390, v383, &v403, v220, v369, v371);
        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(v388, v382, &v403, v221, v275, v285);
        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(v386, v381, &v403, v222, v287, v286);
        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(v384, v379, &v403, v223, v288, v372);
        (*v315)(v364, v359);
        (*v314)(v363, v356);
        (*v313)(v354, v355);
        (*v312)(v357, v358);
        v224 = v348;
        *&v378 = *(v347 + 8);
        (v378)(v379, v348);
        v225 = v349;
        v377 = *(v350 + 1);
        (v377)(v381, v349);
        v226 = v353;
        v376 = *(v352 + 8);
        (v376)(v382, v353);
        v227 = *(v362 + 8);
        v228 = v351;
        v227(v383, v351);
        (v378)(v384, v224);
        (v377)(v386, v225);
        (v376)(v388, v226);
        v227(&v390, v228);
        v209 = v333;
        AttributedString.Runs.AttributesSlice4.Iterator.next()(v336, v333);
        v210 = TupleTypeMetadata;
        v229 = v321(v209, 1, TupleTypeMetadata);
        v217 = v357;
        v215 = v358;
        v216 = v359;
        v214 = v369;
      }

      while (v229 != 1);
    }

    (*(v310 + 8))(v337, v336, v215);

    *v311 = v403;
  }

  return result;
}

uint64_t AttributedString.transformingAttributes<A, B, C, D, E>(_:_:_:_:_:_:)@<X0>(void (*a1)(void *, void *, void *, void *, void *)@<X5>, uint64_t a2@<X6>, uint64_t a3@<X7>, void *a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v380 = a3;
  v347 = a1;
  v348 = a2;
  v325 = a4;
  v392 = a13;
  v397 = a12;
  v391 = a10;
  v396 = a9;
  v390 = a8;
  v389 = a7;
  v395 = a6;
  v388 = a5;
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v358 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v387 = &v323 - v14;
  swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  v357 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v386 = &v323 - v16;
  swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Optional();
  v356 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v385 = &v323 - v18;
  swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for Optional();
  v355 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v384 = &v323 - v20;
  v21 = v380;
  v23 = v22;
  v374 = v22;
  v375 = v17;
  v376 = v15;
  v24 = v396;
  v393 = a11;
  v25 = v397;
  swift_getAssociatedTypeWitness();
  v378 = type metadata accessor for Optional();
  v351 = *(v378 - 8);
  MEMORY[0x1EEE9AC00](v378);
  v377 = &v323 - v26;
  v418 = v27;
  v419 = v23;
  v420 = v17;
  v421 = v15;
  v379 = v13;
  v422 = v13;
  v423 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v28 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v349 = &v323 - v29;
  v418 = v21;
  v30 = v388;
  v419 = v388;
  v31 = v395;
  v420 = v395;
  v32 = v389;
  v421 = v389;
  v33 = v390;
  v422 = v390;
  v423 = v24;
  v34 = v391;
  v424 = v391;
  v425 = a11;
  v426 = v25;
  v35 = v392;
  v427 = v392;
  v367 = type metadata accessor for AttributedString.Runs.AttributesSlice5(0, &v418);
  v36 = *(v367 - 8);
  MEMORY[0x1EEE9AC00](v367);
  v360 = &v323 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v371 = &v323 - v39;
  v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v381 = *(v400 - 1);
  MEMORY[0x1EEE9AC00](v400 - 1);
  v359 = &v323 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v363 = &v323 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v370 = &v323 - v44;
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
  MEMORY[0x1EEE9AC00](v402);
  v399 = &v323 - v45;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
  v369 = *(v383 - 8);
  MEMORY[0x1EEE9AC00](v383);
  v382 = &v323 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v368 = &v323 - v48;
  v362 = type metadata accessor for AttributedString.Runs(0);
  MEMORY[0x1EEE9AC00](v362);
  v366 = &v323 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v372 = &v323 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v365 = &v323 - v53;
  v418 = v21;
  v419 = v30;
  v420 = v31;
  v421 = v32;
  v422 = v33;
  v423 = v396;
  v424 = v34;
  v425 = a11;
  v426 = v397;
  v427 = v35;
  v353 = type metadata accessor for AttributedString.Runs.AttributesSlice5.Iterator(0, &v418);
  v54 = *(v353 - 8);
  MEMORY[0x1EEE9AC00](v353);
  v352 = &v323 - v55;
  v431 = *v403;
  v56 = v431;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = &unk_1EA7B2000;
  v373 = v56;
  v59 = &static AttributedString.Guts._nextVersion;
  v354 = v56;
  v361 = v36;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_11;
  }

  v60 = *(v56 + 40);
  v452 = *(v56 + 24);
  v453 = v60;
  v454 = *(v56 + 56);
  v61 = *(v56 + 72);
  v62 = *(v56 + 80);
  v63 = *(v56 + 88);
  v64 = *(v56 + 96);
  type metadata accessor for AttributedString.Guts();
  v373 = swift_allocObject();
  v65 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v452, &v418);
  v66 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v66);
  if (v61)
  {
    v67 = v63 == 0;
  }

  else
  {
    v67 = 1;
  }

  v68 = v67;
  if (v68 != v65)
  {
    goto LABEL_111;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_112;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(v59, 1uLL, memory_order_relaxed);
    v70 = v453;
    v71 = v373;
    *(v373 + 24) = v452;
    *(v71 + 16) = add_explicit;
    *(v71 + 40) = v70;
    *(v71 + 56) = v454;
    *(v71 + 72) = v61;
    *(v71 + 80) = v62;
    *(v71 + 88) = v63;
    *(v71 + 96) = v64;
    *(v71 + 104) = MEMORY[0x1E69E7CC0];
    v56 = v354;

    v431 = v71;
LABEL_11:
    if (*(v58 + 1176) != -1)
    {
LABEL_109:
      swift_once();
    }

    v72 = atomic_fetch_add_explicit(v59, 1uLL, memory_order_relaxed);
    *(v373 + 16) = v72;
    v73 = *(v56 + 40);
    v449 = *(v56 + 24);
    v450 = v73;
    v451 = *(v56 + 56);
    v59 = v56;
    v64 = BigString.startIndex.getter();
    v61 = v74;
    v62 = v75;
    v63 = v76;
    v77 = BigString.endIndex.getter();
    if (v77 >> 10 >= v64 >> 10)
    {
      break;
    }

    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    swift_once();
  }

  v324 = v54;
  v418 = v64;
  v419 = v61;
  v420 = v62;
  v421 = v63;
  v422 = v77;
  v423 = v78;
  v424 = v79;
  v425 = v80;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  RangeSet.init(_:)();
  *v372 = v59;
  RangeSet.init()();
  v81 = v370;
  RangeSet.ranges.getter();
  v82 = v381;
  v83 = v399;
  v84 = v400;
  (*(v381 + 16))(v399, v81, v400);
  v85 = *(v402 + 36);
  v86 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8]);
  dispatch thunk of Collection.startIndex.getter();
  v87 = *(v82 + 8);
  v381 = v82 + 8;
  v364 = v87;
  v87(v81, v84);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v83 + v85) != v418)
  {
    v398 = v86;
    v394 = v85;
    do
    {
      v96 = dispatch thunk of Collection.subscript.read();
      v98 = v97[5];
      *&v403 = v97[4];
      v402 = v98;
      v401 = v97[6];
      v96(&v418, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v99 = v354;
      v100 = *(v354 + 40);
      v446 = *(v354 + 24);
      v447 = v100;
      v448 = *(v354 + 56);
      swift_unknownObjectRetain();
      v101 = BigString.UnicodeScalarView.index(roundingDown:)();
      v103 = v102;
      v105 = v104;
      v107 = v106;
      swift_unknownObjectRelease();
      v108 = *(v99 + 40);
      v443 = *(v99 + 24);
      v444 = v108;
      v445 = *(v99 + 56);
      swift_unknownObjectRetain();
      v109 = BigString.UnicodeScalarView.index(roundingDown:)();
      v111 = v110;
      v113 = v112;
      v115 = v114;
      v84 = v400;
      swift_unknownObjectRelease();
      v418 = v101;
      v419 = v103;
      v420 = v105;
      v421 = v107;
      v422 = v109;
      v423 = v111;
      v424 = v113;
      v425 = v115;
      if ((v109 ^ v101) >= 0x400)
      {
        v116 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v116(v416, 0);
      }

      v83 = v399;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v83 + v394) != v418);
  }

  outlined destroy of TermOfAddress?(v83, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
  v88 = v362;
  v89 = v372;
  (*(v369 + 16))(v372 + *(v362 + 24), v382, v383);
  v90 = v370;
  RangeSet.ranges.getter();
  v91 = RangeSet.Ranges.count.getter();
  v92 = v364;
  v364(v90, v84);
  v93 = *(v88 + 28);
  LODWORD(v362) = v91 > 1;
  *(v89 + v93) = v362;
  v94 = v363;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v416[0] == v418)
  {
    v92(v94, v84);
    v95 = v354;
LABEL_22:
    v123 = *(v95 + 72);
    v124 = v380;
    v125 = v383;
    if (v123)
    {
      *&v403 = *(v123 + 18);
    }

    else
    {
      *&v403 = 0;
    }

    v402 = *(v95 + 96);
    v126 = *(v95 + 40);
    v440 = *(v95 + 24);
    v441 = v126;
    v442 = *(v95 + 56);
    v127 = BigString.startIndex.getter();
    v129 = v128;
    v401 = v130;
    v399 = v131;
    v132 = *(v95 + 72);
    v398 = *(v95 + 96);
    if (v132)
    {
      v394 = *(v132 + 18);
      v133 = *(v369 + 8);
      swift_unknownObjectRetain();
      v133(v368, v125);
      v133(v382, v125);
      swift_unknownObjectRelease();
    }

    else
    {
      v134 = *(v369 + 8);
      v134(v368, v125);
      v134(v382, v125);
      v394 = 0;
    }

    v135 = *(v95 + 40);
    v437 = *(v95 + 24);
    v438 = v135;
    v439 = *(v95 + 56);
    v136 = BigString.startIndex.getter();
    v138 = v137;
    v140 = v139;
    v142 = v141;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v148 = -1;
    v149 = v127;
    v150 = v129;
    v151 = v401;
    v152 = v401;
    v153 = v399;
    v154 = v399;
    v155 = v136;
    v156 = v137;
    v157 = v139;
    v158 = v142;
    v159 = -1;
    v160 = v403;
    v161 = v402;
    goto LABEL_29;
  }

  v117 = dispatch thunk of Collection.subscript.read();
  v119 = *v118;
  v345 = v118[1];
  v346 = v119;
  v120 = v118[2];
  v343 = v118[3];
  v344 = v120;
  v117(&v418, 0);
  v92(v94, v84);
  v121 = v359;
  RangeSet.ranges.getter();
  v122 = dispatch thunk of Collection.isEmpty.getter();
  v95 = v354;
  if (v122)
  {
    v92(v121, v84);
    goto LABEL_22;
  }

  v303 = v121;
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BB0]);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v304 = dispatch thunk of Collection.subscript.read();
  v306 = v305[4];
  v307 = v305[5];
  v308 = v305[7];
  v363 = v305[6];
  v304(&v418, 0);
  v92(v303, v84);
  AttributedString.Guts.findRun(at:)(v346, v343, &v418);
  v402 = v418;
  *&v403 = v419;
  v337 = v421;
  v338 = v420;
  v359 = v423;
  v342 = v424;
  v401 = v425;
  v399 = v426;
  v309 = *(v95 + 40);
  v440 = *(v95 + 24);
  v441 = v309;
  v442 = *(v95 + 56);
  v310 = BigString.endIndex.getter();
  v340 = v307;
  v341 = v306;
  v339 = v308;
  if ((v310 ^ v306) > 0x3FF)
  {
    AttributedString.Guts.findRun(at:)(v306, v308, &v418);
    v398 = v418;
    v394 = v419;
    v335 = v420;
    v336 = v421;
    v136 = v423;
    v138 = v424;
    v140 = v425;
    v142 = v426;
    v319 = v369;
    v320 = v370;
    v321 = v383;
    RangeSet.ranges.getter();
    v159 = RangeSet.Ranges.count.getter();
    v322 = *(v319 + 8);
    v322(v368, v321);
    v364(v320, v400);
    v322(v382, v321);
    v147 = v335;
    v146 = v336;
    v155 = v341;
    v129 = v342;
    v148 = 0;
    v124 = v380;
    v145 = v362;
    v160 = v403;
    v150 = v345;
    v149 = v346;
    v161 = v402;
    v154 = v343;
    v152 = v344;
    v127 = v359;
    v151 = v401;
    v153 = v399;
    v158 = v339;
    v156 = v340;
    v157 = v363;
    v143 = v337;
    v144 = v338;
  }

  else
  {
    v311 = *(v95 + 72);
    if (v311)
    {
      v312 = *(v95 + 80);
    }

    else
    {
      v312 = 0;
    }

    v336 = v312;
    v313 = *(v95 + 96);
    v314 = swift_unknownObjectRetain();
    v398 = v313;
    v394 = specialized Rope._endPath.getter(v314);
    if (v311)
    {
      swift_unknownObjectRelease();
    }

    v315 = v370;
    v316 = v383;
    RangeSet.ranges.getter();
    v317 = v400;
    v159 = RangeSet.Ranges.count.getter();
    v318 = *(v369 + 8);
    v318(v368, v316);
    v92(v315, v317);
    v318(v382, v316);
    v148 = 0;
    v147 = 0;
    v156 = v340;
    v155 = v341;
    v136 = v341;
    v138 = v340;
    v157 = v363;
    v140 = v363;
    v144 = v338;
    v158 = v339;
    v142 = v339;
    v124 = v380;
    v145 = v362;
    v160 = v403;
    v150 = v345;
    v149 = v346;
    v161 = v402;
    v154 = v343;
    v152 = v344;
    v127 = v359;
    v129 = v342;
    v151 = v401;
    v153 = v399;
    v146 = v336;
    v143 = v337;
  }

LABEL_29:
  v162 = v372;
  *(v372 + 8) = v143;
  *(v162 + 16) = v161;
  *(v162 + 24) = v160;
  *(v162 + 32) = v144;
  *(v162 + 40) = v127;
  *(v162 + 48) = v129;
  *(v162 + 56) = v151;
  *(v162 + 64) = v153;
  *(v162 + 72) = v149;
  *(v162 + 80) = v150;
  *(v162 + 88) = v152;
  *(v162 + 96) = v154;
  *(v162 + 104) = v148;
  *(v162 + 112) = 0;
  *(v162 + 113) = v145;
  v163 = v398;
  *(v162 + 120) = v146;
  *(v162 + 128) = v163;
  *(v162 + 136) = v394;
  *(v162 + 144) = v147;
  *(v162 + 152) = v136;
  *(v162 + 160) = v138;
  *(v162 + 168) = v140;
  *(v162 + 176) = v142;
  *(v162 + 184) = v155;
  *(v162 + 192) = v156;
  *(v162 + 200) = v157;
  *(v162 + 208) = v158;
  *(v162 + 216) = v159;
  *(v162 + 224) = 0;
  *(v162 + 225) = v145;
  v164 = v365;
  outlined init with take of AttributedString.Runs(v162, v365);
  v165 = v164;
  v166 = v366;
  outlined init with copy of AttributedString.Runs(v165, v366);
  outlined init with copy of AttributedString.Runs(v166, v371);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_18121D6C0;
  v56 = v396;
  v345 = *(v396 + 24);
  v346 = v396 + 24;
  *(v167 + 32) = v345(v124, v396);
  *(v167 + 40) = v168;
  v169 = v391;
  v170 = v388;
  v343 = *(v391 + 24);
  v344 = (v391 + 24);
  *(v167 + 48) = (v343)(v388, v391);
  *(v167 + 56) = v171;
  v172 = v393;
  v173 = v395;
  v341 = *(v393 + 24);
  v342 = v393 + 24;
  *(v167 + 64) = v341(v395, v393);
  *(v167 + 72) = v174;
  v175 = v397;
  v176 = v389;
  v339 = *(v397 + 24);
  v340 = v397 + 24;
  *(v167 + 80) = v339(v389, v397);
  *(v167 + 88) = v177;
  *(v371 + *(v367 + 100)) = v167;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd, &_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMR);
  v178 = swift_allocObject();
  v179 = *(v56 + 32);
  v402 = v178 + 32;
  v179();
  (*(v169 + 32))(v170, v169);
  (*(v172 + 32))(v173, v172);
  (*(v175 + 32))(v176, v175);
  v180 = *(v392 + 32);
  v401 = v178;
  v180();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd, &_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMR);
  v181 = static _SetStorage.allocate(capacity:)();
  v182 = 0;
  v183 = v181 + 56;
  v58 = 1;
  while (2)
  {
    v186 = (v402 + 16 * v182);
    v187 = *v186;
    v188 = v186[1];
    Hasher.init(_seed:)();
    *&v403 = v182;
    if (v188 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if (v188)
      {
        MEMORY[0x1865CD060](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x1865CD060](0);
      }
    }

    v189 = Hasher._finalize()();
    v54 = ~(-1 << *(v181 + 32));
    v59 = v189 & v54;
    v190 = (v189 & v54) >> 6;
    v191 = *(v183 + 8 * v190);
    v192 = 1 << (v189 & v54);
    if ((v192 & v191) == 0)
    {
LABEL_57:
      *(v183 + 8 * v190) = v191 | v192;
      v199 = (*(v181 + 48) + 16 * v59);
      *v199 = v187;
      v199[1] = v188;
      v200 = *(v181 + 16);
      v201 = __OFADD__(v200, 1);
      v202 = v200 + 1;
      if (!v201)
      {
        *(v181 + 16) = v202;
        goto LABEL_31;
      }

      __break(1u);
      goto LABEL_109;
    }

    while (1)
    {
      v193 = (*(v181 + 48) + 16 * v59);
      v194 = *v193;
      v56 = v193[1];
      if (v56 == 1)
      {
        if (v188 == 1)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v193, 1);
          v184 = v194;
          v185 = 1;
          goto LABEL_30;
        }

LABEL_42:
        outlined copy of AttributedString.AttributeRunBoundaries?(*v193, v193[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v187, v188);
        outlined consume of AttributedString.AttributeRunBoundaries?(v194, v56);
        v195 = v187;
        v196 = v188;
LABEL_43:
        outlined consume of AttributedString.AttributeRunBoundaries?(v195, v196);
        goto LABEL_44;
      }

      if (v188 == 1)
      {
        goto LABEL_42;
      }

      if (!v56)
      {
        break;
      }

      if (!v188)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v193, v193[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v187, 0);
        outlined copy of AttributedString.AttributeRunBoundaries?(v194, v56);

        v195 = v194;
        v196 = v56;
        goto LABEL_43;
      }

      if (v194 == v187 && v56 == v188)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v187, v188);
        outlined copy of AttributedString.AttributeRunBoundaries?(v187, v188);

LABEL_61:
        v184 = v187;
        v185 = v188;
        goto LABEL_30;
      }

      v198 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of AttributedString.AttributeRunBoundaries?(v194, v56);
      outlined copy of AttributedString.AttributeRunBoundaries?(v187, v188);
      outlined copy of AttributedString.AttributeRunBoundaries?(v194, v56);

      if (v198)
      {
        outlined consume of AttributedString.AttributeRunBoundaries?(v187, v188);
        v187 = v194;
        v188 = v56;
        v58 = 1;
        goto LABEL_61;
      }

      outlined consume of AttributedString.AttributeRunBoundaries?(v194, v56);
      v58 = 1;
LABEL_44:
      v59 = (v59 + 1) & v54;
      v190 = v59 >> 6;
      v191 = *(v183 + 8 * (v59 >> 6));
      v192 = 1 << v59;
      if ((v191 & (1 << v59)) == 0)
      {
        goto LABEL_57;
      }
    }

    outlined copy of AttributedString.AttributeRunBoundaries?(*v193, 0);
    if (v188)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v187, v188);

      v195 = v194;
      v196 = 0;
      goto LABEL_43;
    }

    swift_bridgeObjectRelease_n();
    v184 = v194;
    v185 = 0;
LABEL_30:
    outlined consume of AttributedString.AttributeRunBoundaries?(v184, v185);
LABEL_31:
    v182 = v403 + 1;
    if (v403 != 4)
    {
      continue;
    }

    break;
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMR);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  outlined destroy of AttributedString.Runs(v366);
  outlined destroy of AttributedString.Runs(v365);
  v203 = v367;
  v204 = v371;
  *(v371 + *(v367 + 104)) = v181;
  v206 = v360;
  v205 = v361;
  v207 = *(v361 + 16);
  v207(v360, v204, v203);
  v208 = v352;
  result = (v207)(v352, v206, v203);
  v210 = *(v206 + 12);
  if (v210 == 2)
  {
    __break(1u);
  }

  else
  {
    v211 = *(v206 + 11);
    v403 = *(v206 + 72);
    v212 = *(v205 + 8);
    v212(v204, v203);
    v213 = *(*v206 + 16);
    v212(v206, v203);
    v214 = v353;
    v215 = &v208[*(v353 + 100)];
    *v215 = v403;
    *(v215 + 2) = v211;
    *(v215 + 3) = v210;
    *(v215 + 4) = v213;
    v216 = v349;
    v217 = v208;
    AttributedString.Runs.AttributesSlice5.Iterator.next()(v214, v349);
    v218 = TupleTypeMetadata;
    v219 = *(TupleTypeMetadata - 8);
    v220 = *(v219 + 48);
    v337 = v219 + 48;
    v338 = v220;
    v221 = v220(v216, 1, TupleTypeMetadata);
    v222 = v378;
    v223 = v379;
    v224 = v377;
    if (v221 != 1)
    {
      v225 = *(v351 + 32);
      v335 = (v355 + 32);
      v336 = v225;
      v334 = (v356 + 32);
      v333 = (v357 + 32);
      v331 = v392 + 24;
      v332 = (v358 + 32);
      v330 = (v358 + 8);
      v329 = (v357 + 8);
      v327 = (v355 + 8);
      v328 = (v356 + 8);
      v351 += 32;
      v326 = (v351 - 24);
      do
      {
        v236 = v218[12];
        v237 = v218[20];
        v370 = v218[16];
        v371 = v237;
        v372 = v218[24];
        v238 = (v216 + v218[28]);
        v240 = *v238;
        v239 = v238[1];
        v242 = v238[2];
        v241 = v238[3];
        v243 = v238[5];
        v383 = v238[4];
        v244 = v238[7];
        v401 = v238[6];
        *&v403 = v244;
        v246 = v238[8];
        v245 = v238[9];
        v402 = v246;
        v394 = v245;
        v336(v224, v216, v222);
        (*v335)(v384, v216 + v236, v374);
        (*v334)(v385, (v216 + v370), v375);
        (*v333)(v386, v216 + v371, v376);
        (*v332)(v387, v216 + v372, v223);
        v247 = v224;
        v248 = v380;
        v249 = v396;
        static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v247, v380, v396, &v430);
        v250 = v345(v248, v249);
        v381 = v240;
        v382 = v243;
        v418 = v240;
        v419 = v239;
        v400 = v242;
        v420 = v242;
        v421 = v241;
        v251 = v383;
        v422 = v383;
        v423 = v243;
        v252 = v401;
        v424 = v401;
        v425 = v403;
        v426 = v402;
        v427 = v394;
        v360 = v250;
        v428 = v250;
        v355 = v253;
        v429 = v253;
        v254 = v388;
        v255 = v391;
        static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v384, v388, v391, &v417);
        v256 = (v343)(v254, v255);
        v416[0] = v240;
        v416[1] = v239;
        v399 = v239;
        v416[2] = v242;
        v416[3] = v241;
        v398 = v241;
        v416[4] = v251;
        v257 = v251;
        v416[5] = v243;
        v416[6] = v252;
        v258 = v403;
        v416[7] = v403;
        v259 = v402;
        v416[8] = v402;
        v260 = v394;
        v416[9] = v394;
        v361 = v256;
        v416[10] = v256;
        v356 = v261;
        v416[11] = v261;
        v262 = v395;
        v263 = v393;
        static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v385, v395, v393, &v415);
        v264 = v341(v262, v263);
        v265 = v381;
        v414[0] = v381;
        v414[1] = v239;
        v266 = v400;
        v414[2] = v400;
        v414[3] = v241;
        v414[4] = v257;
        v414[5] = v382;
        v414[6] = v401;
        v414[7] = v258;
        v414[8] = v259;
        v414[9] = v260;
        v362 = v264;
        v414[10] = v264;
        v357 = v267;
        v414[11] = v267;
        v268 = v389;
        v269 = v397;
        static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v386, v389, v397, &v413);
        v270 = v339(v268, v269);
        v412[0] = v265;
        v271 = v399;
        v412[1] = v399;
        v412[2] = v266;
        v272 = v398;
        v412[3] = v398;
        v412[4] = v257;
        v273 = v382;
        v412[5] = v382;
        v274 = v401;
        v412[6] = v401;
        v275 = v403;
        v412[7] = v403;
        v276 = v402;
        v412[8] = v402;
        v277 = v394;
        v412[9] = v394;
        v363 = v270;
        v412[10] = v270;
        v358 = v278;
        v412[11] = v278;
        v279 = v390;
        v280 = v392;
        static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v387, v390, v392, &v411);
        v281 = (*(v280 + 24))(v279, v280);
        v410[0] = v381;
        v410[1] = v271;
        v410[2] = v400;
        v410[3] = v272;
        v410[4] = v383;
        v410[5] = v273;
        v410[6] = v274;
        v410[7] = v275;
        v410[8] = v276;
        v410[9] = v277;
        v282 = v381;
        v364 = v281;
        v410[10] = v281;
        v359 = v283;
        v410[11] = v283;
        v284 = v380;
        v286 = type metadata accessor for AttributedString.SingleAttributeTransformer(0, v380, v396, v285);
        v371 = *(v286 - 8);
        v372 = v286;
        (*(v371 + 16))(v409, &v418);
        v287 = v391;
        v289 = type metadata accessor for AttributedString.SingleAttributeTransformer(0, v388, v391, v288);
        v369 = *(v289 - 8);
        v370 = v289;
        (*(v369 + 16))(v408, v416);
        v291 = type metadata accessor for AttributedString.SingleAttributeTransformer(0, v395, v393, v290);
        v367 = *(v291 - 8);
        v368 = v291;
        (*(v367 + 16))(v407, v414);
        v293 = type metadata accessor for AttributedString.SingleAttributeTransformer(0, v389, v397, v292);
        v366 = *(v293 - 8);
        v294 = *(v366 + 16);
        v394 = v293;
        v294(v406, v412);
        v296 = type metadata accessor for AttributedString.SingleAttributeTransformer(0, v390, v392, v295);
        v365 = *(v296 - 8);
        v297 = *(v365 + 16);
        v383 = v296;
        v297(v404, v410);
        v347(v409, v408, v407, v406, v404);
        v298 = v282 >> 10;
        if (v282 >> 10 != v409[0] >> 10 || (v409[5] ^ v273) > 0x3FF || (v360 != v409[10] || v355 != v409[11]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v436[0] = v282;
          v436[1] = v399;
          v436[2] = v400;
          v436[3] = v398;
          v436[4] = v273;
          v436[5] = v401;
          v436[6] = v403;
          v436[7] = v402;
          AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(v284, v436, v284, v396);
        }

        v299 = v388;
        if (v298 != v408[0] >> 10 || (v408[5] ^ v273) > 0x3FF || (v361 != v408[10] || v356 != v408[11]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v435[0] = v282;
          v435[1] = v399;
          v435[2] = v400;
          v435[3] = v398;
          v435[4] = v273;
          v435[5] = v401;
          v435[6] = v403;
          v435[7] = v402;
          AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(v299, v435, v299, v287);
        }

        v300 = v389;
        if (v298 != v407[0] >> 10 || (v407[5] ^ v273) > 0x3FF || (v362 != v407[10] || v357 != v407[11]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v434[0] = v282;
          v434[1] = v399;
          v434[2] = v400;
          v434[3] = v398;
          v434[4] = v273;
          v434[5] = v401;
          v434[6] = v403;
          v434[7] = v402;
          AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(v395, v434, v395, v393);
        }

        if (v298 != v406[0] >> 10 || (v406[5] ^ v273) > 0x3FF || (v363 != v406[10] || v358 != v406[11]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v433[0] = v282;
          v433[1] = v399;
          v433[2] = v400;
          v433[3] = v398;
          v433[4] = v273;
          v433[5] = v401;
          v433[6] = v403;
          v433[7] = v402;
          AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(v300, v433, v300, v397);
        }

        v67 = v298 == v404[0] >> 10;
        v301 = v390;
        v302 = v392;
        if (!v67 || (v404[5] ^ v273) > 0x3FF || ((v226 = v405, v364 != v404[10]) || v359 != v405) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v432[0] = v282;
          v432[1] = v399;
          v432[2] = v400;
          v432[3] = v398;
          v432[4] = v273;
          v432[5] = v401;
          v432[6] = v403;
          v432[7] = v402;
          AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(v301, v432, v301, v302);
        }

        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(&v418, v409, &v431, v226, v284, v396);
        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(v416, v408, &v431, v227, v299, v391);
        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(v414, v407, &v431, v228, v395, v393);
        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(v412, v406, &v431, v229, v300, v397);
        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(v410, v404, &v431, v230, v301, v302);
        (*v330)(v387, v379);
        (*v329)(v386, v376);
        (*v328)(v385, v375);
        (*v327)(v384, v374);
        (*v326)(v377, v378);
        *&v403 = *(v365 + 8);
        (v403)(v404, v383);
        v402 = *(v366 + 8);
        (v402)(v406, v394);
        v231 = v368;
        v401 = *(v367 + 8);
        v401(v407, v368);
        v232 = v370;
        v400 = *(v369 + 8);
        (v400)(v408, v370);
        v233 = v372;
        v234 = *(v371 + 8);
        v234(v409, v372);
        (v403)(v410, v383);
        (v402)(v412, v394);
        v401(v414, v231);
        (v400)(v416, v232);
        v234(&v418, v233);
        v216 = v349;
        v217 = v352;
        AttributedString.Runs.AttributesSlice5.Iterator.next()(v353, v349);
        v218 = TupleTypeMetadata;
        v235 = v338(v216, 1, TupleTypeMetadata);
        v224 = v377;
        v222 = v378;
        v223 = v379;
      }

      while (v235 != 1);
    }

    (*(v324 + 8))(v217, v353, v222);

    *v325 = v431;
  }

  return result;
}

uint64_t type metadata instantiation function for AttributedString.SingleAttributeTransformer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10Foundation16AttributedStringV15_AttributeValueVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AttributedString.SingleAttributeTransformer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AttributedString.SingleAttributeTransformer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AttributedString.characters.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[9] = 0;
  *a1 = v3;
  v4 = BigString.startIndex.getter();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = BigString.endIndex.getter();
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v11;
  a1[6] = v12;
  a1[7] = v13;
  a1[8] = v14;
}

uint64_t AttributedString.CharacterView.init()@<X0>(uint64_t *a1@<X8>)
{
  BigString.init()();
  v17 = 0;
  MEMORY[0x1865D26B0](&v17, 8);
  v2 = v17;
  type metadata accessor for AttributedString.Guts();
  v3 = swift_allocObject();
  if ((BigString.isEmpty.getter() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_5:
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v5 = v19;
  *(v3 + 24) = v18;
  *(v3 + 16) = add_explicit;
  *(v3 + 40) = v5;
  *(v3 + 56) = v20;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = v2;
  *(v3 + 104) = MEMORY[0x1E69E7CC0];
  v6 = BigString.startIndex.getter();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = BigString.endIndex.getter();
  *a1 = v3;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = result;
  a1[6] = v14;
  a1[7] = v15;
  a1[8] = v16;
  a1[9] = 0;
  return result;
}