void *initializeWithCopy for BreadthFirstSearchEvaluation(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= 0x28uLL)
  {
    v3 = 40;
  }

  else
  {
    v3 = *(*(*(a3 + 24) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        goto LABEL_18;
      }

      v7 = *a2;
    }

    else if (v6 == 2)
    {
      v7 = *a2;
    }

    else if (v6 == 3)
    {
      v7 = *a2 | (a2[2] << 16);
    }

    else
    {
      v7 = *a2;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    v4 = v7 + 2;
    if (v3 < 4)
    {
      v4 = v8;
    }
  }

LABEL_18:
  if (v4 == 1)
  {
    v10 = *(a2 + 24);
    *(a1 + 24) = v10;
    v9 = a1;
    (**(v10 - 8))();
    *(v9 + v3) = 1;
    return v9;
  }

  if (!v4)
  {
    v9 = a1;
    (*(*(*(a3 + 24) - 8) + 16))();
    *(v9 + v3) = 0;
    return v9;
  }

  return memcpy(a1, a2, v3 + 1);
}

unsigned __int8 *assignWithCopy for BreadthFirstSearchEvaluation(unsigned __int8 *__dst, unsigned __int8 *a2, uint64_t a3)
{
  if (__dst == a2)
  {
    return __dst;
  }

  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) <= 0x28uLL)
  {
    v5 = 40;
  }

  else
  {
    v5 = *(v4 + 64);
  }

  v6 = __dst[v5];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_19;
      }

      v9 = *__dst;
    }

    else if (v8 == 2)
    {
      v9 = *__dst;
    }

    else if (v8 == 3)
    {
      v9 = *__dst | (__dst[2] << 16);
    }

    else
    {
      v9 = *__dst;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 2;
    v6 = v9 + 2;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_19:
  if (v6 == 1)
  {
    v11 = a2;
    __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    if (v6)
    {
      goto LABEL_24;
    }

    v11 = a2;
    (*(v4 + 8))(__dst, *(a3 + 24));
  }

  a2 = v11;
LABEL_24:
  v12 = a2[v5];
  v13 = v12 - 2;
  if (v12 < 2)
  {
    goto LABEL_38;
  }

  if (v5 <= 3)
  {
    v14 = v5;
  }

  else
  {
    v14 = 4;
  }

  if (v14 <= 1)
  {
    if (!v14)
    {
      goto LABEL_38;
    }

    v15 = *a2;
  }

  else if (v14 == 2)
  {
    v15 = *a2;
  }

  else if (v14 == 3)
  {
    v15 = *a2 | (a2[2] << 16);
  }

  else
  {
    v15 = *a2;
  }

  v16 = (v15 | (v13 << (8 * v5))) + 2;
  v12 = v15 + 2;
  if (v5 < 4)
  {
    v12 = v16;
  }

LABEL_38:
  if (v12 == 1)
  {
    v17 = *(a2 + 3);
    *(__dst + 3) = v17;
    *(__dst + 4) = *(a2 + 4);
    (**(v17 - 8))(__dst);
    __dst[v5] = 1;
    return __dst;
  }

  if (!v12)
  {
    (*(v4 + 16))(__dst);
    __dst[v5] = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v5 + 1);
}

_OWORD *initializeWithTake for BreadthFirstSearchEvaluation(_OWORD *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= 0x28uLL)
  {
    v3 = 40;
  }

  else
  {
    v3 = *(*(*(a3 + 24) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        goto LABEL_18;
      }

      v7 = *a2;
    }

    else if (v6 == 2)
    {
      v7 = *a2;
    }

    else if (v6 == 3)
    {
      v7 = *a2 | (a2[2] << 16);
    }

    else
    {
      v7 = *a2;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    v4 = v7 + 2;
    if (v3 < 4)
    {
      v4 = v8;
    }
  }

LABEL_18:
  if (v4 == 1)
  {
    v10 = *(a2 + 1);
    *result = *a2;
    result[1] = v10;
    *(result + 4) = *(a2 + 4);
    *(result + v3) = 1;
  }

  else if (v4)
  {

    return memcpy(result, a2, v3 + 1);
  }

  else
  {
    v9 = result;
    (*(*(*(a3 + 24) - 8) + 32))();
    result = v9;
    *(v9 + v3) = 0;
  }

  return result;
}

unsigned __int8 *assignWithTake for BreadthFirstSearchEvaluation(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 24) - 8);
  if (*(v3 + 64) <= 0x28uLL)
  {
    v4 = 40;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  v5 = result[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_19;
      }

      v8 = *result;
    }

    else if (v7 == 2)
    {
      v8 = *result;
    }

    else if (v7 == 3)
    {
      v8 = *result | (result[2] << 16);
    }

    else
    {
      v8 = *result;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_19:
  if (v5 == 1)
  {
    v10 = result;
    v11 = a2;
    __swift_destroy_boxed_opaque_existential_1(result);
  }

  else
  {
    if (v5)
    {
      goto LABEL_24;
    }

    v10 = result;
    v11 = a2;
    (*(v3 + 8))();
  }

  a2 = v11;
  result = v10;
LABEL_24:
  v12 = a2[v4];
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    if (v4 <= 3)
    {
      v14 = v4;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *a2;
      }

      else if (v14 == 3)
      {
        v15 = *a2 | (a2[2] << 16);
      }

      else
      {
        v15 = *a2;
      }

LABEL_36:
      v16 = (v15 | (v13 << (8 * v4))) + 2;
      v12 = v15 + 2;
      if (v4 < 4)
      {
        v12 = v16;
      }

      goto LABEL_38;
    }

    if (v14)
    {
      v15 = *a2;
      goto LABEL_36;
    }
  }

LABEL_38:
  if (v12 == 1)
  {
    v18 = *(a2 + 1);
    *result = *a2;
    *(result + 1) = v18;
    *(result + 4) = *(a2 + 4);
    result[v4] = 1;
  }

  else if (v12)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    v17 = result;
    (*(v3 + 32))();
    result = v17;
    v17[v4] = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BreadthFirstSearchEvaluation(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 40;
  if (*(v3 + 64) > 0x28uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void storeEnumTagSinglePayload for BreadthFirstSearchEvaluation(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 0x28)
  {
    v5 = 40;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t getEnumTag for BreadthFirstSearchEvaluation(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 24) - 8);
  v3 = 40;
  if (*(v2 + 64) > 0x28uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    LODWORD(v4) = v7 + 2;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void destructiveInjectEnumTag for BreadthFirstSearchEvaluation(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= 0x28uLL)
  {
    v3 = 40;
  }

  else
  {
    v3 = *(*(*(a3 + 24) - 8) + 64);
  }

  if (a2 > 1)
  {
    v4 = a2 - 2;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 2;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 2;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

uint64_t partial apply for closure #1 in Deque._Storage.update<A>(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(v3 + 24))(a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t partial apply for closure #1 in UnsafeMutableBufferPointer.initialize<A>(fromContentsOf:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a3 = v5;
    return result;
  }

  if (*(v3 + 48) >= a2)
  {
    result = UnsafeMutablePointer.initialize(from:count:)();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t key path getter for Duration.UnitsFormatStyle.allowedUnits : Duration.UnitsFormatStyle@<X0>(uint64_t *a2@<X8>)
{
  result = Duration.UnitsFormatStyle.allowedUnits.getter();
  *a2 = result;
  return result;
}

uint64_t static Date.FormatStyle.representation<A>(of:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v30 = a1;
  v9 = type metadata accessor for Date.FormatStyle.Attributed();
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed, MEMORY[0x1E6969178], MEMORY[0x1E6969168]);
  v13 = v12;
  v31 = a3;
  v32 = v9;
  v33 = a4;
  v34 = v12;
  v35 = &protocol witness table for AttributedString;
  v28 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v31);
  v14 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v16 = (&v26 - v15);
  v17 = *a2;
  v18 = type metadata accessor for Date.FormatStyle();
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x1E6969328], MEMORY[0x1E6969318]);
  v31 = a3;
  v32 = v18;
  v33 = a4;
  v34 = v19;
  v35 = &protocol witness table for String;
  if (v17 > 1)
  {
    v24 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v31);
    a5[3] = v24;
    a5[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    return (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v30, v24);
  }

  else
  {
    v20 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v31);
    v26 = a4;
    v27 = a5;
    v21 = v20;
    Date.FormatStyle.attributedStyle.getter();
    TimeDataFormatting.Resolvable.replacingFormat<A>(with:)(v11, v21, v9, v13, &protocol witness table for AttributedString, v16);
    (*(v29 + 8))(v11, v9);
    LOBYTE(v31) = v17;
    v22 = static Date.FormatStyle.Attributed.representation<A>(of:for:)(v16, &v31, a3, v26, v27);
    return (*(v14 + 8))(v16, v28, v22);
  }
}

double static Date.FormatStyle.Attributed.representation<A>(of:for:)@<D0>(uint64_t *a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v99 = a4;
  v102 = a1;
  v100 = type metadata accessor for ResolvableCurrentDate(0);
  MEMORY[0x1EEE9AC00](v100);
  v95 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation8TimeZoneVSgMaTm_2(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v96 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v97 = v84 - v12;
  v94 = type metadata accessor for TimeZone();
  v101 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v91 = v84 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v92 = v84 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v98 = v84 - v19;
  v20 = type metadata accessor for Calendar();
  v90 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v87 = v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v89 = v84 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v88 = v84 - v25;
  v26 = type metadata accessor for Locale();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v84 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v84 - v34;
  v36 = *a2;
  v37 = type metadata accessor for Date.FormatStyle.Attributed();
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed, MEMORY[0x1E6969178], MEMORY[0x1E6969168]);
  if (v36 > 1)
  {
    v103 = a3;
    v104 = v37;
    v105 = v99;
    v106 = v38;
    v107 = &protocol witness table for AttributedString;
    v72 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v103);
    a5[3] = v72;
    a5[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    (*(*(v72 - 8) + 16))(boxed_opaque_existential_1, v102, v72);
  }

  else
  {
    v86 = a5;
    v103 = a3;
    v104 = v37;
    v105 = v99;
    v106 = v38;
    v107 = &protocol witness table for AttributedString;
    v39 = *(type metadata accessor for TimeDataFormatting.Resolvable(0, &v103) + 60);
    EnvironmentValues.init()(&v103);
    swift_getKeyPath();
    v99 = v39;
    MEMORY[0x193ABCF80]();

    v40 = *(v27 + 16);
    v40(v32, v35, v26);
    v41 = v103;
    v84[1] = v27 + 16;
    v84[0] = v40;
    v40(v29, v32, v26);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v103, v29);

    v42 = *(v27 + 8);
    v42(v29, v26);
    v43 = v104;
    if (v104)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v41, v103);
    }

    v42(v32, v26);
    v85 = v26;
    v42(v35, v26);
    swift_getKeyPath();
    v44 = v88;
    MEMORY[0x193ABCF80]();

    v45 = v90;
    v46 = *(v90 + 16);
    v47 = v89;
    v46(v89, v44, v20);
    v48 = v103;
    v49 = v87;
    v46(v87, v47, v20);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v103, v49);

    v50 = *(v45 + 8);
    v50(v49, v20);
    if (v43)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA08CalendarK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v48, v103);
    }

    v50(v47, v20);
    v50(v44, v20);
    swift_getKeyPath();
    v51 = v98;
    MEMORY[0x193ABCF80]();

    v52 = v101;
    v53 = *(v101 + 16);
    v54 = v92;
    v55 = v94;
    v53(v92, v51, v94);
    v56 = v103;
    v57 = v91;
    v53(v91, v54, v55);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v103, v57);

    v58 = *(v52 + 8);
    v58(v57, v55);
    v59 = v95;
    if (v43)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA08TimeZoneK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v56, v103);
    }

    v58(v54, v55);
    v58(v98, v55);
    v60 = Date.FormatStyle.Attributed.template()();
    v62 = v61;
    swift_getKeyPath();
    v63 = v97;
    MEMORY[0x193ABCF80]();
    v64 = v63;

    (*(v101 + 56))(v63, 0, 1, v55);
    v65 = v103;
    v66 = v100;
    v67 = v86;
    v86[3] = v100;
    v67[4] = &protocol witness table for ResolvableCurrentDate;
    v102 = __swift_allocate_boxed_opaque_existential_1(v67);
    *v59 = v60;
    *(v59 + 8) = v62;
    v68 = v66;
    *(v59 + 16) = 1;
    v69 = *(v66 + 20);
    v70 = v43;
    if (v43)
    {
      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v65, v59 + v69);
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v65, v59 + *(v68 + 24));

      v71 = v96;
    }

    else
    {
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v65, v59 + v69);
      v75 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v65);
      if (v75)
      {
        (v84[0])(v59 + *(v68 + 24), v75 + *(*v75 + 248), v85);
        v71 = v96;
      }

      else
      {
        v71 = v96;
        v76 = v85;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v77 = __swift_project_value_buffer(v76, static LocaleKey.defaultValue);
        (v84[0])(v59 + *(v68 + 24), v77, v76);
      }
    }

    _s10Foundation8TimeZoneVSgWOcTm_0(v64, v71, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
    v78 = v64;
    v79 = v101;
    v80 = *(v101 + 48);
    if (v80(v71, 1, v55) == 1)
    {
      if (v70)
      {
        v81 = v93;
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v65, v93);
        v71 = v96;
      }

      else
      {
        v82 = v93;
        _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v65, v93);
        v81 = v82;
      }

      _s10Foundation8TimeZoneVSgWOhTm_0(v97, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
      v83 = v80(v71, 1, v55);
      v79 = v101;
      if (v83 != 1)
      {
        _s10Foundation8TimeZoneVSgWOhTm_0(v71, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
      }
    }

    else
    {

      _s10Foundation8TimeZoneVSgWOhTm_0(v78, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
      v81 = v93;
      (*(v79 + 32))(v93, v71, v55);
    }

    (*(v79 + 32))(v59 + *(v100 + 28), v81, v55);
    outlined init with take of ResolvableCurrentDate(v59, v102);
  }

  return result;
}

uint64_t Date.FormatStyle.Attributed.template()()
{
  v165 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v177 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v163 = &v122 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v176 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v161 = &v122 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v175 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v159 = &v122 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for Date.FormatStyle.Symbol.Hour();
  v174 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v157 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for Date.FormatStyle.Symbol.Minute();
  v173 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v155 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for Date.FormatStyle.Symbol.Second();
  v172 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v153 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for Date.FormatStyle.Symbol.TimeZone();
  v171 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v150 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v170 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for Date.FormatStyle.Symbol.SecondFraction();
  v169 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v146 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for Date.FormatStyle.Symbol.DayOfYear();
  v168 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v144 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for Date.FormatStyle.Symbol.Week();
  v167 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v142 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for Date.FormatStyle.Symbol.Quarter();
  v166 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v12 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for Date.FormatStyle.Symbol.Era();
  v13 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v15 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date.FormatStyle.Attributed();
  v162 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v122 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v122 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v130 = &v122 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v131 = &v122 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v132 = &v122 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v133 = &v122 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v134 = &v122 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v135 = &v122 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v137 = &v122 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v140 = &v122 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v122 - v42;
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = &v122 - v46;
  MEMORY[0x193ABD190](v45);
  v136 = v15;
  Date.FormatStyle.Attributed.era(_:)();
  v48 = *(v13 + 8);
  v139 = v13 + 8;
  v138 = v48;
  v48(v15, v164);
  v49 = v162;
  static Date.FormatStyle.Symbol.Month.omitted.getter();
  Date.FormatStyle.Attributed.quarter(_:)();
  v50 = *(v166 + 8);
  v129 = v12;
  v166 += 8;
  v123 = v50;
  v50(v12, v141);
  v53 = *(v49 + 8);
  v51 = v49 + 8;
  v52 = v53;
  v54 = (v53)(v18, v16);
  v55 = v142;
  MEMORY[0x193ABD240](v54);
  Date.FormatStyle.Attributed.week(_:)();
  v56 = *(v167 + 8);
  v167 += 8;
  v124 = v56;
  v56(v55, v143);
  v57 = (v53)(v21, v16);
  v58 = v144;
  MEMORY[0x193ABD400](v57);
  v59 = v130;
  Date.FormatStyle.Attributed.dayOfYear(_:)();
  v60 = *(v168 + 8);
  v168 += 8;
  v125 = v60;
  v60(v58, v145);
  v61 = v24;
  v62 = v47;
  v53(v61, v16);
  v63 = v146;
  static Date.FormatStyle.Symbol.SecondFraction.omitted.getter();
  v64 = v131;
  Date.FormatStyle.Attributed.secondFraction(_:)();
  v65 = *(v169 + 8);
  v169 += 8;
  v126 = v65;
  v65(v63, v147);
  v66 = (v53)(v59, v16);
  v67 = v148;
  MEMORY[0x193ABD3C0](v66);
  v68 = v132;
  Date.FormatStyle.Attributed.weekday(_:)();
  v69 = *(v170 + 8);
  v170 += 8;
  v128 = v69;
  v69(v67, v149);
  v53(v64, v16);
  v70 = v150;
  static Date.FormatStyle.Symbol.TimeZone.omitted.getter();
  v71 = v133;
  Date.FormatStyle.Attributed.timeZone(_:)();
  v72 = *(v171 + 8);
  v171 += 8;
  v130 = v72;
  (v72)(v70, v151);
  v73 = (v53)(v68, v16);
  v74 = v153;
  MEMORY[0x193ABD340](v73);
  v75 = v134;
  Date.FormatStyle.Attributed.second(_:)();
  v76 = *(v172 + 8);
  v172 += 8;
  v131 = v76;
  (v76)(v74, v154);
  v77 = (v53)(v71, v16);
  v78 = v155;
  MEMORY[0x193ABD310](v77);
  v79 = v135;
  Date.FormatStyle.Attributed.minute(_:)();
  v80 = *(v173 + 8);
  v173 += 8;
  v132 = v80;
  (v80)(v78, v156);
  v53(v75, v16);
  v81 = v157;
  static Date.FormatStyle.Symbol.Hour.omitted.getter();
  v82 = v137;
  Date.FormatStyle.Attributed.hour(_:)();
  v83 = *(v174 + 8);
  v174 += 8;
  v133 = v83;
  (v83)(v81, v158);
  v84 = (v53)(v79, v16);
  v85 = v159;
  MEMORY[0x193ABD160](v84);
  v86 = v140;
  Date.FormatStyle.Attributed.day(_:)();
  v87 = *(v175 + 8);
  v175 += 8;
  v134 = v87;
  (v87)(v85, v160);
  v53(v82, v16);
  v88 = v161;
  static Date.FormatStyle.Symbol.Month.omitted.getter();
  Date.FormatStyle.Attributed.month(_:)();
  v89 = *(v176 + 8);
  v176 += 8;
  v135 = v89;
  (v89)(v88, v152);
  v53(v86, v16);
  v90 = v163;
  static Date.FormatStyle.Symbol.SecondFraction.omitted.getter();
  Date.FormatStyle.Attributed.year(_:)();
  v91 = *(v177 + 8);
  v177 += 8;
  v137 = v91;
  (v91)(v90, v165);
  v53(v43, v16);
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed, MEMORY[0x1E6969178], MEMORY[0x1E6969180]);
  v127 = v92;
  v93 = dispatch thunk of static Equatable.== infix(_:_:)();
  v94 = v136;
  if (v93 & 1) == 0 && (MEMORY[0x193ABD180](), v95 = v140, Date.FormatStyle.Attributed.era(_:)(), v96 = v164, v162 = v51, v122 = v62, v97 = v138, v98 = (v138)(v94, v164), MEMORY[0x193ABD190](v98), Date.FormatStyle.Attributed.era(_:)(), v97(v94, v96), v62 = v122, v52(v95, v16), LOBYTE(v96) = static Date.FormatStyle.Attributed.== infix(_:_:)(), v52(v43, v16), (v96) && (v99 = v163, static Date.FormatStyle.Symbol.Year.defaultDigits.getter(), v100 = v140, Date.FormatStyle.Attributed.year(_:)(), v101 = v137, (v137)(v99, v165), static Date.FormatStyle.Symbol.SecondFraction.omitted.getter(), Date.FormatStyle.Attributed.year(_:)(), v101(v99, v165), v62 = v122, v52(v100, v16), LOBYTE(v100) = static Date.FormatStyle.Attributed.== infix(_:_:)(), v52(v43, v16), (v100))
  {
    v52(v62, v16);
    return 0x594D646D6D6ALL;
  }

  else
  {
    v178 = 0;
    v179 = 0xE000000000000000;
    MEMORY[0x193ABD190]();
    Date.FormatStyle.Attributed.era(_:)();
    v138(v94, v164);
    v103 = dispatch thunk of static Equatable.== infix(_:_:)();
    v52(v43, v16);
    if ((v103 & 1) == 0)
    {
      MEMORY[0x193ABEDD0](71, 0xE100000000000000);
    }

    v104 = v129;
    static Date.FormatStyle.Symbol.Month.omitted.getter();
    Date.FormatStyle.Attributed.quarter(_:)();
    v123(v104, v141);
    LOBYTE(v104) = dispatch thunk of static Equatable.== infix(_:_:)();
    v105 = (v52)(v43, v16);
    if ((v104 & 1) == 0)
    {
      v105 = MEMORY[0x193ABEDD0](5329233, 0xE300000000000000);
    }

    v106 = v142;
    MEMORY[0x193ABD240](v105);
    Date.FormatStyle.Attributed.week(_:)();
    v124(v106, v143);
    LOBYTE(v106) = dispatch thunk of static Equatable.== infix(_:_:)();
    v107 = (v52)(v43, v16);
    if ((v106 & 1) == 0)
    {
      v107 = MEMORY[0x193ABEDD0](119, 0xE100000000000000);
    }

    v108 = v144;
    MEMORY[0x193ABD400](v107);
    Date.FormatStyle.Attributed.dayOfYear(_:)();
    v125(v108, v145);
    LOBYTE(v108) = dispatch thunk of static Equatable.== infix(_:_:)();
    v52(v43, v16);
    if ((v108 & 1) == 0)
    {
      MEMORY[0x193ABEDD0](68, 0xE100000000000000);
    }

    v109 = v146;
    static Date.FormatStyle.Symbol.SecondFraction.omitted.getter();
    Date.FormatStyle.Attributed.secondFraction(_:)();
    v126(v109, v147);
    LOBYTE(v109) = dispatch thunk of static Equatable.== infix(_:_:)();
    v110 = (v52)(v43, v16);
    if ((v109 & 1) == 0)
    {
      v110 = MEMORY[0x193ABEDD0](83, 0xE100000000000000);
    }

    v111 = v148;
    MEMORY[0x193ABD3C0](v110);
    Date.FormatStyle.Attributed.weekday(_:)();
    v128(v111, v149);
    LOBYTE(v111) = dispatch thunk of static Equatable.== infix(_:_:)();
    v52(v43, v16);
    if ((v111 & 1) == 0)
    {
      MEMORY[0x193ABEDD0](4539717, 0xE300000000000000);
    }

    v112 = v150;
    static Date.FormatStyle.Symbol.TimeZone.omitted.getter();
    Date.FormatStyle.Attributed.timeZone(_:)();
    (v130)(v112, v151);
    LOBYTE(v112) = dispatch thunk of static Equatable.== infix(_:_:)();
    v113 = (v52)(v43, v16);
    if ((v112 & 1) == 0)
    {
      v113 = MEMORY[0x193ABEDD0](118, 0xE100000000000000);
    }

    v114 = v153;
    MEMORY[0x193ABD340](v113);
    Date.FormatStyle.Attributed.second(_:)();
    (v131)(v114, v154);
    LOBYTE(v114) = dispatch thunk of static Equatable.== infix(_:_:)();
    v115 = (v52)(v43, v16);
    if ((v114 & 1) == 0)
    {
      v115 = MEMORY[0x193ABEDD0](29555, 0xE200000000000000);
    }

    v116 = v155;
    MEMORY[0x193ABD310](v115);
    Date.FormatStyle.Attributed.minute(_:)();
    (v132)(v116, v156);
    LOBYTE(v116) = dispatch thunk of static Equatable.== infix(_:_:)();
    v52(v43, v16);
    if ((v116 & 1) == 0)
    {
      MEMORY[0x193ABEDD0](28013, 0xE200000000000000);
    }

    v117 = v157;
    static Date.FormatStyle.Symbol.Hour.omitted.getter();
    Date.FormatStyle.Attributed.hour(_:)();
    (v133)(v117, v158);
    LOBYTE(v117) = dispatch thunk of static Equatable.== infix(_:_:)();
    v118 = (v52)(v43, v16);
    if ((v117 & 1) == 0)
    {
      v118 = MEMORY[0x193ABEDD0](106, 0xE100000000000000);
    }

    v119 = v159;
    MEMORY[0x193ABD160](v118);
    Date.FormatStyle.Attributed.day(_:)();
    (v134)(v119, v160);
    LOBYTE(v119) = dispatch thunk of static Equatable.== infix(_:_:)();
    v52(v43, v16);
    if ((v119 & 1) == 0)
    {
      MEMORY[0x193ABEDD0](100, 0xE100000000000000);
    }

    v120 = v161;
    static Date.FormatStyle.Symbol.Month.omitted.getter();
    Date.FormatStyle.Attributed.month(_:)();
    (v135)(v120, v152);
    LOBYTE(v120) = dispatch thunk of static Equatable.== infix(_:_:)();
    v52(v43, v16);
    if ((v120 & 1) == 0)
    {
      MEMORY[0x193ABEDD0](77, 0xE100000000000000);
    }

    v121 = v163;
    static Date.FormatStyle.Symbol.SecondFraction.omitted.getter();
    Date.FormatStyle.Attributed.year(_:)();
    (v137)(v121, v165);
    LOBYTE(v121) = dispatch thunk of static Equatable.== infix(_:_:)();
    v52(v43, v16);
    if ((v121 & 1) == 0)
    {
      MEMORY[0x193ABEDD0](1499027801, 0xE400000000000000);
    }

    v52(v62, v16);
    return v178;
  }
}

uint64_t static Date.VerbatimFormatStyle.representation<A>(of:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v30 = a1;
  v9 = type metadata accessor for Date.VerbatimFormatStyle.Attributed();
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed, MEMORY[0x1E6969408], MEMORY[0x1E69693F8]);
  v13 = v12;
  v31 = a3;
  v32 = v9;
  v33 = a4;
  v34 = v12;
  v35 = &protocol witness table for AttributedString;
  v28 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v31);
  v14 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v16 = &v26 - v15;
  v17 = *a2;
  v18 = type metadata accessor for Date.VerbatimFormatStyle();
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.VerbatimFormatStyle and conformance Date.VerbatimFormatStyle, MEMORY[0x1E6969450], MEMORY[0x1E6969440]);
  v31 = a3;
  v32 = v18;
  v33 = a4;
  v34 = v19;
  v35 = &protocol witness table for String;
  if (v17 > 1)
  {
    v24 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v31);
    a5[3] = v24;
    a5[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    return (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v30, v24);
  }

  else
  {
    v20 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v31);
    v26 = a4;
    v27 = a5;
    v21 = v20;
    Date.VerbatimFormatStyle.attributedStyle.getter();
    TimeDataFormatting.Resolvable.replacingFormat<A>(with:)(v11, v21, v9, v13, &protocol witness table for AttributedString, v16);
    (*(v29 + 8))(v11, v9);
    LOBYTE(v31) = v17;
    v22 = static Date.VerbatimFormatStyle.Attributed.representation<A>(of:for:)(v16, &v31, a3, v26, v27);
    return (*(v14 + 8))(v16, v28, v22);
  }
}

double static Date.VerbatimFormatStyle.Attributed.representation<A>(of:for:)@<D0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v110 = a3;
  v111 = a4;
  v112 = a1;
  v115 = a5;
  v116 = type metadata accessor for ResolvableCurrentDate(0);
  MEMORY[0x1EEE9AC00](v116);
  v107 = (&v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1E69E6720];
  _s10Foundation8TimeZoneVSgMaTm_2(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v108 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v109 = &v96 - v11;
  v106 = type metadata accessor for TimeZone();
  v117 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v105 = &v96 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v114 = &v96 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v113 = &v96 - v19;
  v104 = type metadata accessor for Calendar();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v100 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v96 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v101 = &v96 - v24;
  _s10Foundation8TimeZoneVSgMaTm_2(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], v7);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v96 - v26;
  v28 = type metadata accessor for Locale();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v99 = &v96 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v98 = &v96 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v96 - v37;
  v39 = type metadata accessor for Date.VerbatimFormatStyle.Attributed();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v96 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a2) = *a2;
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed, MEMORY[0x1E6969408], MEMORY[0x1E69693F8]);
  if (a2 > 1)
  {
    v118 = v110;
    v119 = v39;
    v120 = v111;
    v121 = v43;
    v122 = &protocol witness table for AttributedString;
    v48 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v118);
    v49 = v115;
    v115[3] = v48;
    v49[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
    (*(*(v48 - 8) + 16))(boxed_opaque_existential_1, v112, v48);
  }

  else
  {
    v97 = v13;
    v118 = v110;
    v119 = v39;
    v120 = v111;
    v121 = v43;
    v122 = &protocol witness table for AttributedString;
    v44 = *(type metadata accessor for TimeDataFormatting.Resolvable(0, &v118) + 60);
    v110 = v40;
    v111 = v39;
    (*(v40 + 16))(v42, &v112[v44], v39);
    EnvironmentValues.init()(&v118);
    swift_getKeyPath();
    v112 = v42;
    MEMORY[0x193ABD5D0]();

    v45 = (*(v29 + 48))(v27, 1, v28);
    v96 = v29;
    if (v45 == 1)
    {
      _s10Foundation8TimeZoneVSgWOhTm_0(v27, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);
      v46 = v102;
      v47 = v101;
    }

    else
    {
      (*(v29 + 32))(v38, v27, v28);
      v52 = *(v29 + 16);
      v53 = v98;
      v52(v98, v38, v28);
      v54 = v99;
      v52(v99, v53, v28);
      v55 = v118;
      v52(v31, v54, v28);
      swift_retain_n();
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v118, v31);

      v56 = *(v29 + 8);
      v56(v31, v28);
      v47 = v101;
      if (v119)
      {
        _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v55, v118);
      }

      v56(v99, v28);
      v56(v98, v28);
      v56(v38, v28);
      v46 = v102;
    }

    v102 = v28;
    swift_getKeyPath();
    MEMORY[0x193ABD5D0]();

    v57 = v103;
    v58 = *(v103 + 16);
    v59 = v104;
    v58(v46, v47, v104);
    v60 = v118;
    v61 = v100;
    v58(v100, v46, v59);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v118, v61);

    v62 = *(v57 + 8);
    v62(v61, v59);
    v63 = v119;
    if (v119)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA08CalendarK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v60, v118);
    }

    v62(v46, v59);
    v62(v47, v59);
    swift_getKeyPath();
    v64 = v113;
    MEMORY[0x193ABD5D0]();

    v65 = v117;
    v66 = *(v117 + 16);
    v67 = v114;
    v68 = v64;
    v69 = v106;
    v66(v114, v68, v106);
    v70 = v118;
    v71 = v105;
    v66(v105, v67, v69);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v118, v71);

    v72 = *(v65 + 8);
    v72(v71, v69);
    if (v63)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA08TimeZoneK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v70, v118);
    }

    v72(v114, v69);
    v72(v113, v69);
    v73 = Date.VerbatimFormatStyle.Attributed.formatPattern.getter();
    v75 = v74;
    swift_getKeyPath();
    v76 = v109;
    MEMORY[0x193ABD5D0]();
    v77 = v76;

    (*(v117 + 56))(v76, 0, 1, v69);
    v78 = v118;
    v79 = v115;
    v80 = v116;
    v115[3] = v116;
    v79[4] = &protocol witness table for ResolvableCurrentDate;
    v115 = __swift_allocate_boxed_opaque_existential_1(v79);
    v81 = v107;
    *v107 = v73;
    *(v81 + 8) = v75;
    *(v81 + 16) = 0;
    v82 = *(v80 + 20);
    if (v63)
    {
      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v78, v81 + v82);
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v78, v81 + *(v80 + 24));

      v83 = v108;
    }

    else
    {
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v78, v81 + v82);
      v84 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v78);
      if (v84)
      {
        (*(v96 + 16))(v81 + *(v80 + 24), &v84[*(*v84 + 248)], v102);
        v83 = v108;
      }

      else
      {
        v83 = v108;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v85 = v102;
        v86 = __swift_project_value_buffer(v102, static LocaleKey.defaultValue);
        (*(v96 + 16))(v81 + *(v80 + 24), v86, v85);
      }
    }

    _s10Foundation8TimeZoneVSgWOcTm_0(v77, v83, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
    v87 = v77;
    v88 = v117;
    v89 = *(v117 + 48);
    if (v89(v83, 1, v69) == 1)
    {
      if (v63)
      {
        v90 = v97;
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v78, v97);
        v83 = v108;
        v91 = v90;
      }

      else
      {
        v91 = v97;
        _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v78, v97);
      }

      v94 = v116;
      v88 = v117;
      v92 = v111;
      _s10Foundation8TimeZoneVSgWOhTm_0(v109, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
      v95 = v89(v83, 1, v69);
      v93 = v110;
      if (v95 != 1)
      {
        _s10Foundation8TimeZoneVSgWOhTm_0(v83, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
      }
    }

    else
    {

      _s10Foundation8TimeZoneVSgWOhTm_0(v87, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
      v91 = v97;
      (*(v88 + 32))(v97, v83, v69);
      v93 = v110;
      v92 = v111;
      v94 = v116;
    }

    (*(v88 + 32))(v81 + *(v94 + 28), v91, v69);
    outlined init with take of ResolvableCurrentDate(v81, v115);
    (*(v93 + 8))(v112, v92);
  }

  return result;
}

uint64_t key path setter for Date.VerbatimFormatStyle.locale : Date.VerbatimFormatStyle(uint64_t a1)
{
  v2 = MEMORY[0x1E6969770];
  _s10Foundation8TimeZoneVSgMaTm_2(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  _s10Foundation8TimeZoneVSgWOcTm_0(a1, &v6 - v4, &lazy cache variable for type metadata for Locale?, v2);
  return Date.VerbatimFormatStyle.locale.setter();
}

uint64_t Date.VerbatimFormatStyle.Attributed.formatPattern.getter()
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for Date.VerbatimFormatStyle.Attributed();
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed, MEMORY[0x1E6969408], MEMORY[0x1E6969410]);
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v2 = v1;

  lazy protocol witness table accessor for type CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(v0, v2);

  return v4;
}

double static Date.ComponentsFormatStyle.representation<A>(of:for:)@<D0>(char *a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v174 = a3;
  v175 = a4;
  v176 = a1;
  v172 = a5;
  v151 = type metadata accessor for Date.ComponentsFormatStyle.Style();
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v148 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v149 = &v142 - v9;
  type metadata accessor for Range<Date>(0);
  v163 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v164 = (&v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v173 = type metadata accessor for Date();
  v169 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v168 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v167 = &v142 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v160 = &v142 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v142 - v18;
  v159 = type metadata accessor for Calendar();
  v162 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v161 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v152 = &v142 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v154 = &v142 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v153 = &v142 - v26;
  v27 = type metadata accessor for Locale();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v158 = &v142 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v142 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v142 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v142 - v37;
  v39 = type metadata accessor for Date.ComponentsFormatStyle();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v155 = &v142 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v156 = &v142 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v157 = &v142 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v142 - v47;
  LODWORD(a2) = *a2;
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle, MEMORY[0x1E69694D0], MEMORY[0x1E69694C0]);
  if (a2 > 1)
  {
    v177 = v174;
    v178 = v39;
    v179 = v175;
    v180 = v49;
    v181 = &protocol witness table for String;
    v97 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v177);
    v98 = v172;
    v172[3] = v97;
    v98[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v98);
    (*(*(v97 - 8) + 16))(boxed_opaque_existential_1, v176, v97);
    return result;
  }

  v171 = v19;
  v177 = v174;
  v178 = v39;
  v179 = v175;
  v180 = v49;
  v181 = &protocol witness table for String;
  v50 = *(type metadata accessor for TimeDataFormatting.Resolvable(0, &v177) + 60);
  v165 = v40;
  v51 = *(v40 + 16);
  v166 = v39;
  v51(v48, &v176[v50], v39);
  EnvironmentValues.init()(&v177);
  v170 = v48;
  Date.ComponentsFormatStyle.locale.getter();
  v52 = *(v28 + 16);
  v52(v35, v38, v27);
  v53 = v177;
  v143 = v52;
  v144 = v28 + 16;
  v52(v32, v35, v27);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v177, v32);

  v56 = *(v28 + 8);
  v55 = v28 + 8;
  v54 = v56;
  v56(v32, v27);
  v57 = v178;
  if (v178)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v53, v177);
  }

  v54(v35, v27);
  v147 = v27;
  v146 = v55;
  v145 = v54;
  v54(v38, v27);
  v58 = v153;
  Date.ComponentsFormatStyle.calendar.getter();
  v59 = v162;
  v60 = *(v162 + 16);
  v61 = v154;
  v62 = v159;
  v60(v154, v58, v159);
  v63 = v177;
  v64 = v152;
  v60(v152, v61, v62);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v177, v64);
  v142 = 0;

  v65 = *(v59 + 8);
  v65(v64, v62);
  if (v57)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA08CalendarK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v63, v177);
  }

  v65(v61, v62);
  v65(v58, v62);
  v66 = v160;
  Date.init(timeIntervalSinceReferenceDate:)();
  v67 = v164;
  (*(v175 + 40))(v66, v174);
  v68 = v169;
  v69 = v66;
  v70 = v173;
  v174 = *(v169 + 8);
  v175 = v169 + 8;
  (v174)(v69, v173);
  v72 = *(v68 + 16);
  v71 = v68 + 16;
  v73 = v67 + *(v163 + 36);
  v176 = v72;
  (v72)(v171, v73, v70);
  outlined destroy of Range<Date>(v67);
  v74 = v155;
  static FormatStyle<>.timeDuration.getter();
  v75 = v161;
  Date.ComponentsFormatStyle.calendar.getter();
  v76 = v156;
  Date.ComponentsFormatStyle.calendar(_:)();
  v65(v75, v62);
  v78 = v165 + 8;
  v77 = *(v165 + 8);
  v79 = v166;
  v77(v74, v166);
  v80 = v158;
  Date.ComponentsFormatStyle.locale.getter();
  v81 = v157;
  Date.ComponentsFormatStyle.locale(_:)();
  v145(v80, v147);
  v77(v76, v79);
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle, MEMORY[0x1E69694D0], MEMORY[0x1E69694D8]);
  LOBYTE(v76) = dispatch thunk of static Equatable.== infix(_:_:)();
  v164 = v77;
  v77(v81, v79);
  v82 = v172;
  if ((v76 & 1) == 0)
  {
    v101 = v171;
    v169 = v71;
    v102 = v149;
    Date.ComponentsFormatStyle.style.getter();
    v103 = v148;
    static Date.ComponentsFormatStyle.Style.narrow.getter();
    lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style and conformance Date.ComponentsFormatStyle.Style, MEMORY[0x1E6969488], MEMORY[0x1E6969490]);
    v104 = v151;
    v105 = dispatch thunk of static Equatable.== infix(_:_:)();
    v106 = *(v150 + 8);
    v106(v103, v104);
    if (v105)
    {
      v106(v102, v104);
      v107 = 0;
    }

    else
    {
      static Date.ComponentsFormatStyle.Style.abbreviated.getter();
      v108 = dispatch thunk of static Equatable.== infix(_:_:)();
      v106(v103, v104);
      if (v108)
      {
        v106(v102, v104);
        v107 = 1;
      }

      else
      {
        static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
        v114 = dispatch thunk of static Equatable.== infix(_:_:)();
        v106(v103, v104);
        v106(v102, v104);
        if (v114)
        {
          v107 = 1;
        }

        else
        {
          v107 = 2;
        }
      }
    }

    v115 = v173;
    (v176)(v167, v101, v173);
    v116 = Date.ComponentsFormatStyle.fields.getter();
    if (!v116)
    {
      _s10Foundation8TimeZoneVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date.ComponentsFormatStyle.Field>, MEMORY[0x1E6969498], MEMORY[0x1E69E6F90]);
      type metadata accessor for Date.ComponentsFormatStyle.Field();
      v117 = swift_allocObject();
      *(v117 + 16) = xmmword_18DDAC2E0;
      static Date.ComponentsFormatStyle.Style.wide.getter();
      static Date.ComponentsFormatStyle.Style.narrow.getter();
      static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
      static Date.ComponentsFormatStyle.Style.spellOut.getter();
      static Date.ComponentsFormatStyle.Field.minute.getter();
      static Date.ComponentsFormatStyle.Field.second.getter();
      v118 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt0gq5Tf4g_n(v117);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v116 = v118;
    }

    specialized NSCalendarUnit.init(_:)(v116);
    v120 = v119;
    v121 = v177;
    v122 = v178;
    v123 = type metadata accessor for ResolvableAbsoluteDate(0);
    v124 = v172;
    v172[3] = v123;
    v124[4] = &protocol witness table for ResolvableAbsoluteDate;
    v125 = __swift_allocate_boxed_opaque_existential_1(v124);
    v126 = v167;
    (v176)(v125, v167, v115);
    v127 = v125 + v123[5];
    *v127 = 2;
    *(v127 + 1) = v120;
    v127[16] = v107;
    v128 = v123[6];
    if (v122)
    {

      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v121, v125 + v128);

      v129 = v123[7];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v121, v125 + v129);

      v130 = v123[8];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v121, v125 + v130);

      v131 = v174;
      (v174)(v126, v115);
      v131(v171, v115);
      v164(v170, v166);
      goto LABEL_36;
    }

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v132, v125 + v128);
    v133 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v121);
    if (v133)
    {
      v143(v125 + v123[7], &v133[*(*v133 + 248)], v147);
      v134 = v170;
      v135 = v167;
    }

    else
    {
      v134 = v170;
      v135 = v167;
      v139 = v147;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v140 = __swift_project_value_buffer(v139, static LocaleKey.defaultValue);
      v143(v125 + v123[7], v140, v139);
    }

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v121, v125 + v123[8]);
    v141 = v174;
    (v174)(v135, v115);
    v141(v171, v115);
    v164(v134, v166);
LABEL_35:

    goto LABEL_36;
  }

  v165 = v78;
  v83 = v176;
  (v176)(v168, v171, v70);
  if (one-time initialization token for timer != -1)
  {
    swift_once();
  }

  v84 = static Text.DateStyle.timer;
  v85 = qword_1EAB1F268;
  v86 = byte_1EAB1F270;
  v87 = v177;
  v88 = v178;
  v89 = type metadata accessor for ResolvableAbsoluteDate(0);
  v82[3] = v89;
  v82[4] = &protocol witness table for ResolvableAbsoluteDate;
  v90 = __swift_allocate_boxed_opaque_existential_1(v82);
  (v83)(v90, v168, v173);
  v91 = v90 + v89[5];
  *v91 = v84;
  *(v91 + 1) = v85;
  v91[16] = v86;
  v92 = v89[6];
  if (!v88)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v109, v90 + v92);
    v110 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v87);
    v111 = v173;
    v112 = v168;
    if (v110)
    {
      v143(v90 + v89[7], &v110[*(*v110 + 248)], v147);
      v113 = v170;
    }

    else
    {
      v113 = v170;
      v136 = v147;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v137 = __swift_project_value_buffer(v136, static LocaleKey.defaultValue);
      v143(v90 + v89[7], v137, v136);
    }

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v87, v90 + v89[8]);
    v138 = v174;
    (v174)(v112, v111);
    v138(v171, v111);
    v164(v113, v166);
    goto LABEL_35;
  }

  swift_retain_n();
  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v87, v90 + v92);

  v93 = v89[7];

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v87, v90 + v93);

  v94 = v89[8];

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v87, v90 + v94);

  v96 = v173;
  v95 = v174;
  (v174)(v168, v173);
  v95(v171, v96);
  v164(v170, v166);
LABEL_36:

  return result;
}

double static Date.AnchoredRelativeFormatStyle.representation<A>(of:for:)@<D0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v95 = a3;
  v96 = a4;
  v97 = a1;
  v98 = a5;
  v99 = type metadata accessor for Date();
  v94 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v7 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.RelativeFormatStyle.UnitsStyle();
  v92 = *(v8 - 8);
  v93 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v90 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v91 = v80 - v11;
  v89 = type metadata accessor for Calendar();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v85 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v87 = v80 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v86 = v80 - v16;
  v17 = type metadata accessor for Locale();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v80 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v80 - v25;
  v27 = type metadata accessor for Date.AnchoredRelativeFormatStyle();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a2) = *a2;
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle, MEMORY[0x1E6969510], MEMORY[0x1E6969500]);
  if (a2 > 1)
  {
    v100 = v95;
    v101 = v27;
    v102 = v96;
    v103 = v31;
    v104 = &protocol witness table for String;
    v52 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v100);
    v53 = v98;
    v98[3] = v52;
    v53[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
    (*(*(v52 - 8) + 16))(boxed_opaque_existential_1, v97, v52);
  }

  else
  {
    v84 = v7;
    v100 = v95;
    v101 = v27;
    v102 = v96;
    v103 = v31;
    v104 = &protocol witness table for String;
    v32 = *(type metadata accessor for TimeDataFormatting.Resolvable(0, &v100) + 60);
    v95 = v28;
    v96 = v27;
    (*(v28 + 16))(v30, &v97[v32], v27);
    EnvironmentValues.init()(&v100);
    Date.AnchoredRelativeFormatStyle.locale.getter();
    v33 = *(v18 + 16);
    v33(v23, v26, v17);
    v34 = v100;
    v82 = v18 + 16;
    v81 = v33;
    v33(v20, v23, v17);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v100, v20);

    v35 = *(v18 + 8);
    v35(v20, v17);
    v36 = v101;
    v97 = v30;
    if (v101)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v34, v100);
    }

    v35(v23, v17);
    v83 = v17;
    v35(v26, v17);
    v37 = v86;
    Date.AnchoredRelativeFormatStyle.calendar.getter();
    v38 = v88;
    v39 = *(v88 + 16);
    v40 = v87;
    v41 = v89;
    v39(v87, v37, v89);
    v42 = v100;
    v43 = v85;
    v39(v85, v40, v41);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v100, v43);
    v80[1] = 0;

    v44 = *(v38 + 8);
    v44(v43, v41);
    if (v36)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA08CalendarK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v42, v100);
    }

    v44(v40, v41);
    v44(v37, v41);
    v45 = v91;
    Date.AnchoredRelativeFormatStyle.unitsStyle.getter();
    v46 = v90;
    static Date.RelativeFormatStyle.UnitsStyle.narrow.getter();
    lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle and conformance Date.RelativeFormatStyle.UnitsStyle, MEMORY[0x1E69693C0], MEMORY[0x1E69693C8]);
    v47 = v93;
    v48 = dispatch thunk of static Equatable.== infix(_:_:)();
    v49 = *(v92 + 8);
    v49(v46, v47);
    v50 = v98;
    if (v48)
    {
      v49(v45, v47);
      v51 = 0;
    }

    else
    {
      static Date.RelativeFormatStyle.UnitsStyle.abbreviated.getter();
      v56 = dispatch thunk of static Equatable.== infix(_:_:)();
      v49(v46, v47);
      v49(v45, v47);
      if (v56)
      {
        v51 = 1;
      }

      else
      {
        v51 = 2;
      }
    }

    if (one-time initialization token for offset != -1)
    {
      swift_once();
    }

    v57 = static Text.DateStyle.offset;
    v58 = v97;
    v59 = Date.AnchoredRelativeFormatStyle.allowedFields.getter();
    specialized NSCalendarUnit.init(_:)(v59);
    v61 = v60;
    v62 = v84;
    Date.AnchoredRelativeFormatStyle.anchor.getter();
    v63 = v100;
    v64 = v101;
    v65 = type metadata accessor for ResolvableAbsoluteDate(0);
    v50[3] = v65;
    v50[4] = &protocol witness table for ResolvableAbsoluteDate;
    v66 = __swift_allocate_boxed_opaque_existential_1(v50);
    v67 = v94;
    (*(v94 + 16))(v66, v62, v99);
    v68 = v66 + v65[5];
    *v68 = v57;
    *(v68 + 1) = v61;
    v68[16] = v51;
    v69 = v65[6];
    if (v64)
    {

      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v63, v66 + v69);

      v70 = v65[7];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v63, v66 + v70);

      v71 = v65[8];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v63, v66 + v71);

      (*(v67 + 8))(v62, v99);
      (*(v95 + 8))(v58, v96);
    }

    else
    {
      v72 = v58;

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v73, v66 + v69);
      v74 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v63);
      if (v74)
      {
        v81(v66 + v65[7], &v74[*(*v74 + 248)], v83);
        v76 = v95;
        v75 = v96;
        v77 = v99;
      }

      else
      {
        v76 = v95;
        v75 = v96;
        v77 = v99;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v78 = v83;
        v79 = __swift_project_value_buffer(v83, static LocaleKey.defaultValue);
        v81(v66 + v65[7], v79, v78);
      }

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v63, v66 + v65[8]);
      (*(v94 + 8))(v84, v77);
      (*(v76 + 8))(v72, v75);
    }
  }

  return result;
}

uint64_t static Duration.TimeFormatStyle.representation<A>(of:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v30 = a1;
  v9 = type metadata accessor for Duration.TimeFormatStyle.Attributed();
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed and conformance Duration.TimeFormatStyle.Attributed, MEMORY[0x1E696A160], MEMORY[0x1E696A158]);
  v13 = v12;
  v31 = a3;
  v32 = v9;
  v33 = a4;
  v34 = v12;
  v35 = &protocol witness table for AttributedString;
  v28 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v31);
  v14 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v16 = &v26 - v15;
  v17 = *a2;
  v18 = type metadata accessor for Duration.TimeFormatStyle();
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, MEMORY[0x1E696A188], MEMORY[0x1E696A178]);
  v31 = a3;
  v32 = v18;
  v33 = a4;
  v34 = v19;
  v35 = &protocol witness table for String;
  if (v17 > 1)
  {
    v24 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v31);
    a5[3] = v24;
    a5[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    return (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v30, v24);
  }

  else
  {
    v20 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v31);
    v26 = a4;
    v27 = a5;
    v21 = v20;
    Duration.TimeFormatStyle.attributed.getter();
    TimeDataFormatting.Resolvable.replacingFormat<A>(with:)(v11, v21, v9, v13, &protocol witness table for AttributedString, v16);
    (*(v29 + 8))(v11, v9);
    LOBYTE(v31) = v17;
    v22 = static Duration.TimeFormatStyle.Attributed.representation<A>(of:for:)(v16, &v31, a3, v26, v27);
    return (*(v14 + 8))(v16, v28, v22);
  }
}

double static Duration.TimeFormatStyle.Attributed.representation<A>(of:for:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v119 = a4;
  v120 = a1;
  v112 = type metadata accessor for Date();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v117 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for Duration.TimeFormatStyle();
  v118 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v109 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v99 = v94 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v107 = v94 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v108 = v94 - v16;
  v105 = type metadata accessor for AttributedString.CharacterView();
  MEMORY[0x1EEE9AC00](v105);
  v103 = v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for AttributedString();
  v102 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v19 = v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Locale();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v98 = v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v106 = v94 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v94 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v94 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v94 - v32;
  v34 = *a2;
  v35 = type metadata accessor for Duration.TimeFormatStyle.Attributed();
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed and conformance Duration.TimeFormatStyle.Attributed, MEMORY[0x1E696A160], MEMORY[0x1E696A158]);
  if (v34 > 1)
  {
    v127 = a3;
    v128 = v35;
    v129 = v119;
    v130 = v36;
    v131 = &protocol witness table for AttributedString;
    v54 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v127);
    a5[3] = v54;
    a5[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    (*(*(v54 - 8) + 16))(boxed_opaque_existential_1, v120, v54);
  }

  else
  {
    v97 = a5;
    v100 = a3;
    v127 = a3;
    v128 = v35;
    v129 = v119;
    v130 = v36;
    v131 = &protocol witness table for AttributedString;
    type metadata accessor for TimeDataFormatting.Resolvable(0, &v127);
    EnvironmentValues.init()(&v127);
    swift_getKeyPath();
    Duration.TimeFormatStyle.Attributed.subscript.getter();

    v37 = *(v21 + 16);
    v37(v30, v33, v20);
    v38 = v127;
    v96 = v21 + 16;
    v95 = v37;
    v37(v27, v30, v20);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v127, v27);
    v94[1] = 0;

    v39 = *(v21 + 8);
    v101 = v20;
    v113 = v39;
    v39(v27, v20);
    v40 = v128;
    v41 = v21 + 8;
    if (v128)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v38, v127);
    }

    v42 = v30;
    v43 = v101;
    v44 = v113;
    v113(v42, v101);
    v44(v33, v43);
    Duration.TimeFormatStyle.Attributed.format(_:)();
    AttributedString.characters.getter();
    lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
    v45 = String.init<A>(_:)();
    v47 = v46;
    (*(v102 + 8))(v19, v104);
    v104 = v45;
    v125 = v45;
    v126 = v47;
    v105 = v47;
    v48 = v114;
    static Duration.TimeFormatStyle.Pattern.hourMinuteSecond.getter();
    v49 = v107;
    static FormatStyle<>.time(pattern:)();
    v50 = *(v117 + 8);
    v117 += 8;
    v50(v48, v115);
    v51 = v127;
    if (v40)
    {

      v52 = v106;
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v51, v106);

      v53 = v100;
    }

    else
    {
      v57 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v127);
      v53 = v100;
      v52 = v106;
      if (v57)
      {
        v58 = v57 + *(*v57 + 248);
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v58 = __swift_project_value_buffer(v43, static LocaleKey.defaultValue);
      }

      v95(v52, v58, v43);
    }

    v59 = v108;
    Duration.TimeFormatStyle.locale(_:)();
    v106 = v41;
    v113(v52, v43);
    v60 = v118 + 8;
    v61 = *(v118 + 8);
    v62 = v116;
    v61(v49, v116);
    lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, MEMORY[0x1E696A188], MEMORY[0x1E696A180]);
    Duration.formatted<A>(_:)();
    v118 = v60;
    v61(v59, v62);
    v121 = v123;
    v122 = v124;
    lazy protocol witness table accessor for type String and conformance String();
    LOBYTE(v60) = StringProtocol.contains<A>(_:)();

    if (v60)
    {

      v63 = 224;
      v64 = v110;
      v65 = v119;
    }

    else
    {
      v125 = v104;
      v126 = v105;
      v66 = v114;
      static Duration.TimeFormatStyle.Pattern.minuteSecond.getter();
      static FormatStyle<>.time(pattern:)();
      v50(v66, v115);
      v103 = v51;
      if (v40)
      {

        v67 = v51;
        v68 = v98;
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v67, v98);

        v64 = v110;
        v65 = v119;
        v69 = v101;
      }

      else
      {
        v70 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v51);
        v64 = v110;
        v65 = v119;
        v71 = v98;
        if (v70)
        {
          v72 = v70 + *(*v70 + 248);
          v73 = v98;
          v69 = v101;
        }

        else
        {
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          v69 = v101;
          v72 = __swift_project_value_buffer(v101, static LocaleKey.defaultValue);
          v73 = v71;
        }

        v95(v73, v72, v69);
        v68 = v71;
      }

      v74 = v99;
      v75 = v109;
      Duration.TimeFormatStyle.locale(_:)();
      v113(v68, v69);
      v76 = v75;
      v77 = v116;
      v61(v76, v116);
      Duration.formatted<A>(_:)();
      v61(v74, v77);
      v121 = v123;
      v122 = v124;
      v78 = StringProtocol.contains<A>(_:)();

      if (v78)
      {
        v63 = 192;
      }

      else
      {
        v63 = 96;
      }

      v53 = v100;
      v51 = v103;
    }

    v125 = static Duration.zero.getter();
    v126 = v79;
    (*(v65 + 48))(&v125, v53, v65);
    v80 = type metadata accessor for ResolvableAbsoluteDate(0);
    v81 = v97;
    v97[3] = v80;
    v81[4] = &protocol witness table for ResolvableAbsoluteDate;
    v82 = __swift_allocate_boxed_opaque_existential_1(v81);
    v83 = v111;
    v84 = v112;
    (*(v111 + 16))(v82, v64, v112);
    v85 = v82 + v80[5];
    *v85 = 4;
    *(v85 + 1) = v63;
    v85[16] = 2;
    v86 = v80[6];
    if (v40)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v51, v82 + v86);
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v51, v82 + v80[7]);
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v51, v82 + v80[8]);
    }

    else
    {
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v51, v82 + v86);
      v87 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v51);
      if (v87)
      {
        v88 = *(*v87 + 248);
        v89 = v87;
        v90 = v82 + v80[7];
        v91 = v89 + v88;
        v92 = v101;
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v93 = v101;
        v91 = __swift_project_value_buffer(v101, static LocaleKey.defaultValue);
        v90 = v82 + v80[7];
        v92 = v93;
      }

      v95(v90, v91, v92);
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v51, v82 + v80[8]);
    }

    (*(v83 + 8))(v64, v84);
  }

  return result;
}

uint64_t static Duration.UnitsFormatStyle.representation<A>(of:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v30 = a1;
  v9 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed and conformance Duration.UnitsFormatStyle.Attributed, MEMORY[0x1E696A1A8], MEMORY[0x1E696A198]);
  v13 = v12;
  v31 = a3;
  v32 = v9;
  v33 = a4;
  v34 = v12;
  v35 = &protocol witness table for AttributedString;
  v28 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v31);
  v14 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v16 = &v26 - v15;
  v17 = *a2;
  v18 = type metadata accessor for Duration.UnitsFormatStyle();
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle and conformance Duration.UnitsFormatStyle, MEMORY[0x1E696A218], MEMORY[0x1E696A208]);
  v31 = a3;
  v32 = v18;
  v33 = a4;
  v34 = v19;
  v35 = &protocol witness table for String;
  if (v17 > 1)
  {
    v24 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v31);
    a5[3] = v24;
    a5[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    return (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v30, v24);
  }

  else
  {
    v20 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v31);
    v26 = a4;
    v27 = a5;
    v21 = v20;
    Duration.UnitsFormatStyle.attributed.getter();
    TimeDataFormatting.Resolvable.replacingFormat<A>(with:)(v11, v21, v9, v13, &protocol witness table for AttributedString, v16);
    (*(v29 + 8))(v11, v9);
    LOBYTE(v31) = v17;
    v22 = static Duration.UnitsFormatStyle.Attributed.representation<A>(of:for:)(v16, &v31, a3, v26, v27);
    return (*(v14 + 8))(v16, v28, v22);
  }
}

double static Duration.UnitsFormatStyle.Attributed.representation<A>(of:for:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v84 = a4;
  v85 = a3;
  v86 = a1;
  v7 = type metadata accessor for Date();
  v81 = *(v7 - 8);
  v82 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v69 - v12;
  v13 = type metadata accessor for Locale();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v69 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v69 - v21;
  v23 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a2) = *a2;
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed and conformance Duration.UnitsFormatStyle.Attributed, MEMORY[0x1E696A1A8], MEMORY[0x1E696A198]);
  if (a2 > 1)
  {
    v88 = v85;
    v89 = v23;
    v90 = v84;
    v91 = v27;
    v92 = &protocol witness table for AttributedString;
    v43 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v88);
    a5[3] = v43;
    a5[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    (*(*(v43 - 8) + 16))(boxed_opaque_existential_1, v86, v43);
  }

  else
  {
    v73 = a5;
    v88 = v85;
    v89 = v23;
    v28 = v84;
    v90 = v84;
    v91 = v27;
    v92 = &protocol witness table for AttributedString;
    v29 = *(type metadata accessor for TimeDataFormatting.Resolvable(0, &v88) + 60);
    v74 = v24;
    v30 = *(v24 + 16);
    v75 = v23;
    v30(v26, v86 + v29, v23);
    EnvironmentValues.init()(&v88);
    swift_getKeyPath();
    v83 = v26;
    Duration.UnitsFormatStyle.Attributed.subscript.getter();

    v31 = *(v14 + 16);
    v31(v19, v22, v13);
    v32 = v88;
    v71 = v14 + 16;
    v70 = v31;
    v31(v16, v19, v13);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v88, v16);
    v69 = 0;

    v33 = *(v14 + 8);
    v33(v16, v13);
    if (v89)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v32, v88);
    }

    v33(v19, v13);
    v33(v22, v13);
    swift_getKeyPath();
    v34 = v77;
    Duration.UnitsFormatStyle.Attributed.subscript.getter();

    v35 = v76;
    static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
    lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth and conformance Duration.UnitsFormatStyle.UnitWidth, MEMORY[0x1E696A1E8], MEMORY[0x1E696A1F0]);
    v36 = v79;
    v37 = dispatch thunk of static Equatable.== infix(_:_:)();
    v38 = *(v78 + 8);
    v38(v35, v36);
    v39 = v28;
    v72 = v13;
    if (v37)
    {
      v38(v34, v36);
      v40 = 0;
      v41 = v80;
      v42 = v85;
    }

    else
    {
      static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      v46 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38(v35, v36);
      v42 = v85;
      if (v46)
      {
        v38(v34, v36);
        v40 = 1;
      }

      else
      {
        static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
        v47 = dispatch thunk of static Equatable.== infix(_:_:)();
        v38(v35, v36);
        v38(v34, v36);
        if (v47)
        {
          v40 = 1;
        }

        else
        {
          v40 = 2;
        }
      }

      v41 = v80;
    }

    v87[0] = static Duration.zero.getter();
    v87[1] = v48;
    (*(v39 + 48))(v87, v42, v39);
    swift_getKeyPath();
    v49 = v83;
    Duration.UnitsFormatStyle.Attributed.subscript.getter();

    specialized NSCalendarUnit.init(_:)(v87[0]);
    v51 = v50;
    v52 = v88;
    v53 = v89;
    v54 = type metadata accessor for ResolvableAbsoluteDate(0);
    v55 = v73;
    v73[3] = v54;
    v55[4] = &protocol witness table for ResolvableAbsoluteDate;
    v56 = __swift_allocate_boxed_opaque_existential_1(v55);
    v57 = v81;
    v58 = v82;
    (*(v81 + 16))(v56, v41, v82);
    v59 = v56 + v54[5];
    *v59 = 2;
    *(v59 + 1) = v51;
    v59[16] = v40;
    v60 = v54[6];
    v61 = v41;
    if (v53)
    {

      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v52, v56 + v60);

      v62 = v54[7];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v52, v56 + v62);

      v63 = v54[8];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v52, v56 + v63);

      (*(v57 + 8))(v61, v58);
      (*(v74 + 8))(v49, v75);
    }

    else
    {

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v64, v56 + v60);
      v65 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v52);
      if (v65)
      {
        v70(v56 + v54[7], &v65[*(*v65 + 248)], v72);
        v66 = v83;
      }

      else
      {
        v66 = v83;
        v67 = v72;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v68 = __swift_project_value_buffer(v67, static LocaleKey.defaultValue);
        v70(v56 + v54[7], v68, v67);
      }

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v52, v56 + v54[8]);
      (*(v57 + 8))(v41, v58);
      (*(v74 + 8))(v66, v75);
    }
  }

  return result;
}

uint64_t key path setter for Duration.UnitsFormatStyle.unitWidth : Duration.UnitsFormatStyle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

void protocol witness for CodingKey.init(stringValue:) in conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x615074616D726F66 && a2 == 0xED00006E72657474)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter(uint64_t a1)
{
  lazy protocol witness table accessor for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter(uint64_t a1)
{
  lazy protocol witness table accessor for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  type metadata accessor for KeyedDecodingContainer<CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter>, lazy protocol witness table accessor for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter, &unk_1F00AF240);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v15;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v10;
  v9[1] = v12;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter(uint64_t a1)
{
  lazy protocol witness table accessor for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter(uint64_t a1)
{
  lazy protocol witness table accessor for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized init(from:) in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t outlined init with take of ResolvableCurrentDate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvableCurrentDate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s10Foundation8TimeZoneVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s10Foundation8TimeZoneVSgMaTm_2(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Range<Date>(uint64_t a1)
{
  type metadata accessor for Range<Date>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void lazy protocol witness table accessor for type CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter()
{
  if (!lazy protocol witness table cache variable for type CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter, &unk_1F00AF098, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  }
}

void lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void *specialized init(from:) in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter>, lazy protocol witness table accessor for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter, &unk_1F00AF130);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter();
  v9 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    lazy protocol witness table accessor for type Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    v9 = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void lazy protocol witness table accessor for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter()
{
  if (!lazy protocol witness table cache variable for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter, &unk_1F00AF130, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter, &unk_1F00AF130, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter, &unk_1F00AF130, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter, &unk_1F00AF130, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  }
}

void lazy protocol witness table accessor for type Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter()
{
  if (!lazy protocol witness table cache variable for type Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter)
  {
    swift_getWitnessTable(protocol conformance descriptor for Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter, &unk_1F00AF1A8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  }
}

void type metadata accessor for KeyedDecodingContainer<CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for KeyedDecodingContainer();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void lazy protocol witness table accessor for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter()
{
  if (!lazy protocol witness table cache variable for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter)
  {
    swift_getWitnessTable(protocol conformance descriptor for Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter, &unk_1F00AF240, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  }
}

{
  if (!lazy protocol witness table cache variable for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter)
  {
    swift_getWitnessTable(protocol conformance descriptor for Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter, &unk_1F00AF240, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  }
}

{
  if (!lazy protocol witness table cache variable for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter)
  {
    swift_getWitnessTable(protocol conformance descriptor for Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter, &unk_1F00AF240, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  }
}

{
  if (!lazy protocol witness table cache variable for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter)
  {
    swift_getWitnessTable(protocol conformance descriptor for Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter, &unk_1F00AF240, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  }
}

uint64_t View.testID<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, a2, v16);
  (*(v12 + 16))(v14, a1, a3);
  return TestIDView.init(content:id:)(v18, v14, a2, a3, a4, a5, a6);
}

uint64_t TestIDView.init(content:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for TestIDView(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

void *static TestIDView._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a6;
  v39 = a7;
  v35 = a5;
  v40 = a3;
  v65 = *MEMORY[0x1E69E9840];
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - v14;
  *&v59 = a3;
  *(&v59 + 1) = a4;
  *&v60 = a5;
  *(&v60 + 1) = a6;
  v16 = type metadata accessor for TestIDView.IdentifiedView(0, &v59);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - v21;
  LODWORD(a1) = *a1;
  v23 = a2[3];
  v61 = a2[2];
  v62 = v23;
  v63 = a2[4];
  v64 = *(a2 + 20);
  v24 = a2[1];
  v59 = *a2;
  v60 = v24;
  (*(*(a4 - 8) + 56))(v15, 1, 1, a4);
  v25 = a1;
  v26 = v40;
  v27 = v35;
  TestIDView.IdentifiedView.init(view:id:)(v25, v15, v40, a4, v35, v38, v22);
  v37 = v22;
  v38 = v17;
  (*(v17 + 16))(v19, v22, v16);
  swift_getWitnessTable(protocol conformance descriptor for TestIDView<A, B>.IdentifiedView, v16);
  _GraphValue.init<A>(_:)(v19, v26, v16, v28, &v42);
  v29 = v42;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v51 = v61;
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v49 = v59;
  v50 = v60;
  v36 = v61;
  LODWORD(v51) = 0;
  v41 = v29;
  v55[0] = v59;
  v55[1] = v60;
  v56 = v64;
  v55[3] = v62;
  v55[4] = v63;
  v55[2] = v51;
  v45 = v51;
  v46 = v62;
  v47 = v63;
  v48 = v64;
  v43 = v59;
  v44 = v60;
  v31 = *(v27 + 24);
  outlined init with copy of _ViewInputs(&v59, v57);
  outlined init with copy of _ViewInputs(v55, v57);
  v32 = v39;
  v31(&v41, &v43);
  v57[2] = v45;
  v57[3] = v46;
  v57[4] = v47;
  v58 = v48;
  v57[0] = v43;
  v57[1] = v44;
  outlined destroy of _ViewInputs(v57);
  LODWORD(v51) = v36;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v32, &v49);
    AGSubgraphEndTreeElement();
  }

  (*(v38 + 8))(v37, v16);
  v45 = v51;
  v46 = v52;
  v47 = v53;
  v48 = v54;
  v43 = v49;
  v44 = v50;
  return outlined destroy of _ViewInputs(&v43);
}

uint64_t TestIDView.IdentifiedView.init(view:id:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  v9 = *(type metadata accessor for TestIDView.IdentifiedView(0, v12) + 52);
  v10 = type metadata accessor for Optional();
  return (*(*(v10 - 8) + 32))(&a7[v9], a2, v10);
}

uint64_t TestIDView.IdentifiedView.view.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v7[0] = *(a1 + 16);
  v7[1] = v3;
  v4 = type metadata accessor for TestIDView(0, v7);
  Value = AGGraphGetValue();
  return (*(*(v4 - 8) + 16))(a2, Value, v4);
}

uint64_t TestIDView.IdentifiedView.updateValue()(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v24 = *(a1 + 16);
  v26 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v25 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 40);
  v30 = v6;
  v23 = *(v4 + 24);
  v31 = v23;
  v32 = v5;
  v7 = type metadata accessor for TestIDView(0, &v30);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = v23;
  *&v23 = type metadata accessor for Optional();
  v12 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v14 = &v23 - v13;
  TestIDView.IdentifiedView.view.getter(a1, v10);
  v15 = *(v11 - 8);
  (*(v15 + 16))(v14, &v10[*(v7 + 52)], v11);
  v16 = *(v8 + 8);
  v16(v10, v7);
  (*(v15 + 56))(v14, 0, 1, v11);
  (*(v12 + 40))(v1 + *(a1 + 52), v14, v23);
  TestIDView.IdentifiedView.view.getter(a1, v10);
  v18 = v25;
  v17 = v26;
  v19 = v24;
  (*(v26 + 16))(v25, v10, v24);
  v16(v10, v7);
  v28 = a1;
  swift_getWitnessTable(protocol conformance descriptor for TestIDView<A, B>.IdentifiedView, a1);
  v29 = v20;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v18, partial apply for closure #1 in StatefulRule.value.setter, v27, v19, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v21);
  return (*(v17 + 8))(v18, v19);
}

uint64_t TestIDView.IdentifiedView.matchesIdentifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = *(a2 + 24);
  v13 = type metadata accessor for Optional();
  v14 = MEMORY[0x1EEE9AC00](v13);
  (*(v15 + 16))(&v20 - v16, v4 + *(a2 + 52), v13, v14);
  v17 = swift_dynamicCast();
  (*(*(a3 - 8) + 56))(v11, v17 ^ 1u, 1, a3);
  v23 = *(a2 + 16);
  v24 = v12;
  v25 = a3;
  v26 = *(a2 + 32);
  v27 = v21;
  v28 = a1;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in TestIDView.IdentifiedView.matchesIdentifier<A>(_:), v22, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v18, &v29);
  (*(v9 + 8))(v11, v8);
  return v29 & 1;
}

uint64_t TestIDView.IdentifiedView.description.getter(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - v6;
  v8 = *(v3 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v1 + *(a1 + 52), v4, v10);
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    (*(v5 + 8))(v7, v4);
    return 17481;
  }

  else
  {
    (*(v8 + 32))(v12, v7, v3);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    MEMORY[0x193ABEDD0](540689481, 0xE400000000000000);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v13 = v15[0];
    (*(v8 + 8))(v12, v3);
  }

  return v13;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance TestIDView<A, B>.IdentifiedView(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for TestIDView<A, B>.IdentifiedView, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t type metadata completion function for TestIDView.IdentifiedView(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TestIDView.IdentifiedView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = v7 & 0x100000;
  if (v8 <= 7 && v10 == 0 && ((-5 - v8) | v8) - v9 >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v14 = a1 + v8 + 4;
    v15 = a2 + v8 + 4;
    if ((*(v5 + 48))(v15 & ~v8, 1, v4))
    {
      memcpy((v14 & ~v8), (v15 & ~v8), v9);
    }

    else
    {
      (*(v6 + 16))(v14 & ~v8, v15 & ~v8, v4);
      (*(v6 + 56))(v14 & ~v8, 0, 1, v4);
    }
  }

  else
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v8 & 0xFC ^ 0x1FC) & (v8 + 16)));
  }

  return v3;
}

uint64_t destroy for TestIDView.IdentifiedView(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v7 = *(v2 - 8);
  v3 = *(v7 + 80);
  v4 = a1 + v3 + 4;
  result = (*(v7 + 48))(v4 & ~v3, 1, v2);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(v4 & ~v3, v2);
  }

  return result;
}

_DWORD *initializeWithCopy for TestIDView.IdentifiedView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = a1 + v6 + 4;
  v8 = a2 + v6 + 4;
  if ((*(v5 + 48))(v8 & ~v6, 1, v4))
  {
    if (*(v5 + 84))
    {
      v9 = *(v5 + 64);
    }

    else
    {
      v9 = *(v5 + 64) + 1;
    }

    memcpy((v7 & ~v6), (v8 & ~v6), v9);
  }

  else
  {
    (*(v5 + 16))(v7 & ~v6, v8 & ~v6, v4);
    (*(v5 + 56))(v7 & ~v6, 0, 1, v4);
  }

  return a1;
}

_DWORD *assignWithCopy for TestIDView.IdentifiedView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = a1 + v6 + 4;
  v8 = a2 + v6 + 4;
  v9 = *(v5 + 48);
  v10 = v9(v7 & ~v6, 1, v4);
  v11 = v9(v8 & ~v6, 1, v4);
  if (v10)
  {
    if (!v11)
    {
      (*(v5 + 16))(v7 & ~v6, v8 & ~v6, v4);
      (*(v5 + 56))(v7 & ~v6, 0, 1, v4);
      return a1;
    }

    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v5 + 24))(v7 & ~v6, v8 & ~v6, v4);
      return a1;
    }

    v15 = *(v5 + 8);
    v14 = v5 + 8;
    v15(v7 & ~v6, v4);
    v12 = *(v14 + 76);
    v13 = *(v14 + 56);
  }

  if (v12)
  {
    v16 = v13;
  }

  else
  {
    v16 = v13 + 1;
  }

  memcpy((v7 & ~v6), (v8 & ~v6), v16);
  return a1;
}

_DWORD *initializeWithTake for TestIDView.IdentifiedView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = a1 + v6 + 4;
  v8 = a2 + v6 + 4;
  if ((*(v5 + 48))(v8 & ~v6, 1, v4))
  {
    if (*(v5 + 84))
    {
      v9 = *(v5 + 64);
    }

    else
    {
      v9 = *(v5 + 64) + 1;
    }

    memcpy((v7 & ~v6), (v8 & ~v6), v9);
  }

  else
  {
    (*(v5 + 32))(v7 & ~v6, v8 & ~v6, v4);
    (*(v5 + 56))(v7 & ~v6, 0, 1, v4);
  }

  return a1;
}

_DWORD *assignWithTake for TestIDView.IdentifiedView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = a1 + v6 + 4;
  v8 = a2 + v6 + 4;
  v9 = *(v5 + 48);
  v10 = v9(v7 & ~v6, 1, v4);
  v11 = v9(v8 & ~v6, 1, v4);
  if (v10)
  {
    if (!v11)
    {
      (*(v5 + 32))(v7 & ~v6, v8 & ~v6, v4);
      (*(v5 + 56))(v7 & ~v6, 0, 1, v4);
      return a1;
    }

    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v5 + 40))(v7 & ~v6, v8 & ~v6, v4);
      return a1;
    }

    v15 = *(v5 + 8);
    v14 = v5 + 8;
    v15(v7 & ~v6, v4);
    v12 = *(v14 + 76);
    v13 = *(v14 + 56);
  }

  if (v12)
  {
    v16 = v13;
  }

  else
  {
    v16 = v13 + 1;
  }

  memcpy((v7 & ~v6), (v8 & ~v6), v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for TestIDView.IdentifiedView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(v4 + 80);
  v8 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v6;
  if (a2 > v6)
  {
    v10 = v8 + ((v7 + 4) & ~v7);
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))((a1 + v7 + 4) & ~v7);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for TestIDView.IdentifiedView(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v7 + 80);
  v11 = *(*(*(a4 + 24) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = v11 + ((v10 + 4) & ~v10);
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 == 0 || !v13)
  {
LABEL_18:
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
  {
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_18;
  }

  v6 = 4;
  if (v9 < a2)
  {
LABEL_19:
    v17 = ~v9 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_46:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_28:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v12] = 0;
  }

  else if (v6)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v8 >= 2)
  {
    v20 = *(v7 + 56);
    v21 = &a1[v10 + 4] & ~v10;
    v22 = a2 + 1;

    v20(v21, v22);
  }
}

uint64_t partial apply for closure #1 in TestIDView.IdentifiedView.matchesIdentifier<A>(_:)@<X0>(_BYTE *a2@<X8>)
{
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  *a2 = result & 1;
  return result;
}

uint64_t (*enableProfiler.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for enableProfiler != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance EnableScrollPrefetchFeature;
}

const char *one-time initialization function for enableProfiler(int a1, char *a2, BOOL *a3)
{
  result = getenv(a2);
  if (result)
  {
    result = atoi(result);
    v5 = result != 0;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
  return result;
}

uint64_t enableProfiler.getter(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return *a2;
}

void enableProfiler.setter(char a1, void *a2, _BYTE *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1 & 1;
}

uint64_t (*enableTracer.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for enableTracer != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DisplayList.GraphicsRenderer.platformViewMode.modify;
}

double _BenchmarkHost.measureAction(action:)(void (*a1)(uint64_t))
{
  v3 = CACurrentMediaTime();
  if (one-time initialization token for enableTracer != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (enableTracer)
  {
    if (one-time initialization token for tracingOptions != -1)
    {
      swift_once();
    }

    started = AGGraphStartTracing();
  }

  else
  {
    if (one-time initialization token for enableProfiler != -1)
    {
      swift_once();
    }

    started = swift_beginAccess();
    if (enableProfiler)
    {
      swift_getObjectType();
      started = swift_conformsToProtocol2();
      if (started)
      {
        if (v1)
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          ViewRendererHost.startProfiling()();
          started = swift_unknownObjectRelease();
        }
      }
    }
  }

  a1(started);
  v5 = CACurrentMediaTime();
  if (enableTracer)
  {
    AGGraphStopTracing();
  }

  else
  {
    if (one-time initialization token for enableProfiler != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (enableProfiler)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        if (v1)
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          ViewRendererHost.stopProfiling()();
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return v5 - v3;
}

char *_BenchmarkHost.measureRenders(duration:)(double a1)
{
  v5 = a1 / 60.0;
  v6 = *&v5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = 0xC3E0000000000001;
  if (v5 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = 0x43E0000000000000;
  if (v5 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = v5;
  if (v5 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!__OFADD__(v3, 1))
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 + 1, 0, MEMORY[0x1E69E7CC0]);
    v5 = _BenchmarkHost.measureAction(action:)(partial apply for closure #1 in _BenchmarkHost.measureRender(interval:));
    v4 = *(v1 + 2);
    v6 = *(v1 + 3);
    v2 = v4 + 1;
    if (v4 < v6 >> 1)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v13 = v5;
  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v2, 1, v1);
  v5 = v13;
  v1 = v14;
LABEL_7:
  *(v1 + 2) = v2;
  for (*&v1[8 * v4 + 32] = v5; v3; --v3)
  {
    v7 = _BenchmarkHost.measureAction(action:)(partial apply for closure #1 in _BenchmarkHost.measureRender(interval:));
    v9 = *(v1 + 2);
    v8 = *(v1 + 3);
    if (v9 >= v8 >> 1)
    {
      v10 = v7;
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v1);
      v7 = v10;
      v1 = v11;
    }

    *(v1 + 2) = v9 + 1;
    *&v1[8 * v9 + 32] = v7;
  }

  return v1;
}

Swift::String __swiftcall summarize(_:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  if (v1)
  {
    rawValue = a1._rawValue;
    v54 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = 0;
    v4 = v54;
    v5 = rawValue + 32;
    while (1)
    {
      outlined init with copy of (_Benchmark, [Double])(&v5[48 * v3], &v50);
      v6 = v53;
      __swift_project_boxed_opaque_existential_1(&v50, v52);
      swift_getDynamicType();
      type metadata accessor for _Benchmark.Type();
      v7 = String.init<A>(describing:)();
      v9 = v8;
      v10 = *(v6 + 16);
      if (v10)
      {
        if (v10 >= 4)
        {
          v11 = v10 & 0x7FFFFFFFFFFFFFFCLL;
          v13 = (v6 + 48);
          v12 = 0.0;
          v14 = v10 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v12 = v12 + *(v13 - 2) + *(v13 - 1) + *v13 + v13[1];
            v13 += 4;
            v14 -= 4;
          }

          while (v14);
          if (v10 == v11)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v11 = 0;
          v12 = 0.0;
        }

        v15 = v10 - v11;
        v16 = (v6 + 8 * v11 + 32);
        do
        {
          v17 = *v16++;
          v12 = v12 + v17;
          --v15;
        }

        while (v15);
      }

      else
      {
        v12 = 0.0;
      }

LABEL_12:
      a1._rawValue = outlined destroy of (_Benchmark, [Double])(&v50, type metadata accessor for (_Benchmark, [Double]));
      v54 = v4;
      v20 = *(v4 + 16);
      v19 = *(v4 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        a1._rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v4 = v54;
      }

      ++v3;
      *(v4 + 16) = v21;
      v22 = v4 + 24 * v20;
      *(v22 + 32) = v7;
      *(v22 + 40) = v9;
      *(v22 + 48) = v12;
      if (v3 == v1)
      {
        goto LABEL_17;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
  v21 = *(MEMORY[0x1E69E7CC0] + 16);
  v23 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
LABEL_17:
    v24 = 0;
    v25 = 0;
    v26 = v4 + 40;
    do
    {
      if (v25 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      ++v25;

      v27 = String.count.getter();

      if (v27 > v24)
      {
        v24 = v27;
      }

      v26 += 24;
    }

    while (v21 != v25);
    v28 = (v4 + 48);
    v23 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v29 = *(v28 - 2);
      v30 = *(v28 - 1);
      v31 = *v28;

      a1._rawValue = String.count.getter();
      v32 = v24 - a1._rawValue;
      if (__OFSUB__(v24, a1._rawValue))
      {
        break;
      }

      if (__OFADD__(v32, 1))
      {
        goto LABEL_33;
      }

      v33._countAndFlagsBits = 32;
      v33._object = 0xE100000000000000;
      v34 = String.init(repeating:count:)(v33, v32 + 1);
      v50 = v29;
      v51 = v30;

      MEMORY[0x193ABEDD0](58, 0xE100000000000000);

      MEMORY[0x193ABEDD0](v34._countAndFlagsBits, v34._object);

      v35 = v50;
      v36 = v51;
      type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_18DDA6EB0;
      *(v37 + 56) = MEMORY[0x1E69E63B0];
      *(v37 + 64) = MEMORY[0x1E69E6438];
      *(v37 + 32) = v31 * 1000.0;
      v38 = String.init(format:_:)();
      v40 = v39;
      v50 = v35;
      v51 = v36;

      MEMORY[0x193ABEDD0](v38, v40);

      v41 = v50;
      v42 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
      }

      v44 = *(v23 + 2);
      v43 = *(v23 + 3);
      if (v44 >= v43 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v23);
      }

      *(v23 + 2) = v44 + 1;
      v45 = &v23[16 * v44];
      *(v45 + 4) = v41;
      *(v45 + 5) = v42;
      v28 += 3;
      if (!--v21)
      {
        goto LABEL_30;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
LABEL_30:

    v50 = v23;
    type metadata accessor for [Double](0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v46 = BidirectionalCollection<>.joined(separator:)();
    v48 = v47;

    a1._rawValue = v46;
    v18 = v48;
  }

  result._object = v18;
  result._countAndFlagsBits = a1._rawValue;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> write(_:to:)(Swift::OpaquePointer _, Swift::String to)
{
  countAndFlagsBits = to._countAndFlagsBits;
  object = to._object;
  v50[6] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(_._rawValue + 2);
  if (v7)
  {
    v41 = object;
    v42 = v5;
    v43 = v4;
    v48 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = _._rawValue + 32;
    v9 = v48;
    type metadata accessor for _DictionaryStorage<String, [Double]>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, [Double]>, MEMORY[0x1E69E6EC8], v10);
    do
    {
      outlined init with copy of (_Benchmark, [Double])(v8, v50);
      v11 = v50[5];
      __swift_project_boxed_opaque_existential_1(v50, v50[3]);
      DynamicType = swift_getDynamicType();
      v47 = v50[4];
      type metadata accessor for _Benchmark.Type();
      v12 = String.init<A>(describing:)();
      v14 = v13;
      v49[0] = v12;
      v49[1] = v13;
      v49[2] = v11;
      v15 = static _DictionaryStorage.allocate(capacity:)();
      swift_bridgeObjectRetain_n();

      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v14);
      if (v17)
      {
        __break(1u);
LABEL_18:
        __break(1u);
      }

      v15[(v16 >> 6) + 8] |= 1 << v16;
      v18 = (v15[6] + 16 * v16);
      *v18 = v12;
      v18[1] = v14;
      *(v15[7] + 8 * v16) = v11;
      v19 = v15[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_18;
      }

      v15[2] = v21;

      outlined destroy of (_Benchmark, [Double])(v49, type metadata accessor for (String, [Double]));
      outlined destroy of (_Benchmark, [Double])(v50, type metadata accessor for (_Benchmark, [Double]));
      v48 = v9;
      v23 = *(v9 + 16);
      v22 = *(v9 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v9 = v48;
      }

      *(v9 + 16) = v23 + 1;
      *(v9 + 8 * v23 + 32) = v15;
      v8 += 48;
      --v7;
    }

    while (v7);
    v4 = v43;
    v5 = v42;
    object = v41;
  }

  v24 = objc_opt_self();
  type metadata accessor for _DictionaryStorage<String, [Double]>(0, &lazy cache variable for type metadata for [String : [Double]], MEMORY[0x1E69E5E28], v25);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v50[0] = 0;
  v27 = [v24 dataWithJSONObject:isa options:1 error:v50];

  v28 = v50[0];
  if (v27)
  {
    v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = [objc_opt_self() defaultManager];
    v33 = MEMORY[0x193ABEC20](countAndFlagsBits, object);
    v34 = [v33 stringByDeletingLastPathComponent];

    if (!v34)
    {
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = MEMORY[0x193ABEC20](v35);
    }

    v50[0] = 0;
    v36 = [v32 createDirectoryAtPath:v34 withIntermediateDirectories:1 attributes:0 error:v50];

    if (v36)
    {
      v37 = v50[0];
      v38 = v44;
      URL.init(fileURLWithPath:)();
      Data.write(to:options:)();
      (*(v5 + 8))(v38, v4);
    }

    else
    {
      v40 = v50[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    outlined consume of Data._Representation(v29, v31);
  }

  else
  {
    v39 = v28;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

Swift::Void __swiftcall log(_:)(Swift::OpaquePointer a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = summarize(_:)(a1);
  type metadata accessor for [Double](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  v43 = xmmword_18DDA6EB0;
  *(v7 + 16) = xmmword_18DDA6EB0;
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 32) = v6;
  print(_:separator:terminator:)();

  v9 = *(static CommandLine.arguments.getter() + 16);

  if (v9 < 2)
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v14 = MEMORY[0x193ABEC20](0xD000000000000011, 0x800000018DD82A20);
    [v13 setDateFormat_];

    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v5, v2);
    v16 = [v13 stringFromDate_];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v48 = 0xD000000000000022;
    v49 = 0x800000018DD82A40;
    MEMORY[0x193ABEDD0](v17, v19);

    MEMORY[0x193ABEDD0](0x6E6F736A2ELL, 0xE500000000000000);

    v12 = v48;
    v11 = v49;
  }

  else
  {
    v10 = static CommandLine.arguments.getter();
    if (v10[2] < 2uLL)
    {
      __break(1u);
      return;
    }

    v12 = v10[6];
    v11 = v10[7];
    swift_bridgeObjectRetain_n();
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v43;
  *(v20 + 56) = v8;
  *(v20 + 32) = v12;
  *(v20 + 40) = v11;
  print(_:separator:terminator:)();

  v21._countAndFlagsBits = v12;
  v21._object = v11;
  write(_:to:)(a1, v21);
  if (v22)
  {

    v23 = static os_log_type_t.fault.getter();
    if (one-time initialization token for internalErrorsLog != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = static Log.internalErrorsLog;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_18DDAF080;
    swift_getErrorValue();
    v26 = v24;
    v27 = Error.localizedDescription.getter();
    v29 = v28;
    *(v25 + 56) = v8;
    lazy protocol witness table accessor for type String and conformance String();
    v30 = v8;
    v32 = v31;
    *(v25 + 64) = v31;
    *(v25 + 32) = v27;
    *(v25 + 40) = v29;
    v33 = StaticString.description.getter();
    *(v25 + 96) = v30;
    *(v25 + 104) = v32;
    *(v25 + 72) = v33;
    *(v25 + 80) = v34;
    v46 = 107;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v25 + 136) = v30;
    *(v25 + 144) = v32;
    *(v25 + 112) = v35;
    *(v25 + 120) = v36;
    os_log(_:dso:log:_:_:)(v23, &dword_18D018000, v26, "%s %s:%s", v43, *(&v43 + 1), v44);

    v37 = swift_allocObject();
    *(v37 + 16) = v43;
    v46 = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    swift_getErrorValue();
    v46 = Error.localizedDescription.getter();
    v47 = v38;
    MEMORY[0x193ABEDD0](2108704, 0xE300000000000000);
    v39 = StaticString.description.getter();
    MEMORY[0x193ABEDD0](v39);

    MEMORY[0x193ABEDD0](58, 0xE100000000000000);
    v45 = 107;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v40);

    MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
    v41 = v46;
    v42 = v47;
    *(v37 + 56) = v30;
    *(v37 + 32) = v41;
    *(v37 + 40) = v42;
    print(_:separator:terminator:)();
  }

  else
  {
  }
}

uint64_t outlined init with copy of (_Benchmark, [Double])(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (_Benchmark, [Double])(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (_Benchmark, [Double])(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (_Benchmark, [Double]))
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for _Benchmark, &protocol descriptor for _Benchmark);
    type metadata accessor for [Double](255, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (_Benchmark, [Double]));
    }
  }
}

unint64_t type metadata accessor for _Benchmark.Type()
{
  result = lazy cache variable for type metadata for _Benchmark.Type;
  if (!lazy cache variable for type metadata for _Benchmark.Type)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for _Benchmark, &protocol descriptor for _Benchmark);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _Benchmark.Type);
  }

  return result;
}

uint64_t outlined destroy of (_Benchmark, [Double])(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (String, [Double])(uint64_t a1, __n128 a2)
{
  if (!lazy cache variable for type metadata for (String, [Double]))
  {
    type metadata accessor for [Double](255, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, [Double]));
    }
  }
}

void type metadata accessor for _DictionaryStorage<String, [Double]>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void), __n128 a4)
{
  if (!*a2)
  {
    type metadata accessor for [Double](255, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    v8 = a3(a1, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for [Double](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void Transition._makeContentTransition(transition:)(uint64_t a1)
{
  if (*a1 == 3)
  {
    outlined consume of _Transition_ContentTransition.Result(*(a1 + 24), *(a1 + 32));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }
}

uint64_t Transition.hasContentTransition.getter(uint64_t a1, uint64_t a2)
{
  v3[0] = 3;
  v3[1] = 0;
  v3[2] = 0;
  v4 = 0;
  v5 = 2;
  (*(a2 + 40))(v3, a1);
  if (v5)
  {
    outlined consume of _Transition_ContentTransition.Result(v4, v5);
  }

  else if (v4)
  {
    return 1;
  }

  return 0;
}

uint64_t Transition.contentTransitionEffects(style:size:)(unsigned __int8 *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v6[0] = *a1;
  *&v6[1] = a2;
  *&v6[2] = a3;
  v7 = 0;
  v8 = 2;
  (*(a5 + 40))(v6, a4);
  result = v7;
  if (v8 != 1)
  {
    outlined consume of _Transition_ContentTransition.Result(v7, v8);
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void protocol witness for Transition._makeContentTransition(transition:) in conformance ModifierTransition<A>(uint64_t a1)
{
  if (*a1 == 3)
  {
    outlined consume of _Transition_ContentTransition.Result(*(a1 + 24), *(a1 + 32));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance ApplyTransitionModifier<A>.Child@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 56);

  return v4(a2, 1, 1, AssociatedTypeWitness);
}

__n128 _Transition_ContentTransition.operation.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 _Transition_ContentTransition.operation.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v2;
  return result;
}

double _Transition_ContentTransition.result.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  v3 = *(v1 + 32);
  *(a1 + 8) = v3;
  return outlined copy of _Transition_ContentTransition.Result(v2, v3);
}

void _Transition_ContentTransition.result.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  outlined consume of _Transition_ContentTransition.Result(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
}

Swift::Int TransitionPhase.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  return Hasher._finalize()();
}

void IdentityTransition._makeContentTransition(transition:)(uint64_t a1)
{
  if (*a1 == 3)
  {
    outlined consume of _Transition_ContentTransition.Result(*(a1 + 24), *(a1 + 32));
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
  }
}

void protocol witness for Transition._makeContentTransition(transition:) in conformance SlideTransition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 == 3)
  {
    outlined consume of _Transition_ContentTransition.Result(*(a1 + 24), *(a1 + 32));
    *(a1 + 24) = a4;
    *(a1 + 32) = 0;
  }
}

double outlined copy of _Transition_ContentTransition.Result(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

void lazy protocol witness table accessor for type TransitionPhase and conformance TransitionPhase()
{
  if (!lazy protocol witness table cache variable for type TransitionPhase and conformance TransitionPhase)
  {
    swift_getWitnessTable(protocol conformance descriptor for TransitionPhase, &type metadata for TransitionPhase, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TransitionPhase and conformance TransitionPhase);
  }
}

uint64_t getEnumTagSinglePayload for ApplyTransitionModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFD)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 3)
      {
        return v15 - 2;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

uint64_t initializeWithCopy for _Transition_ContentTransition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  outlined copy of _Transition_ContentTransition.Result(v3, v4);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  return a1;
}

uint64_t assignWithCopy for _Transition_ContentTransition(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  v4 = *(a2 + 3);
  v5 = *(a2 + 32);
  outlined copy of _Transition_ContentTransition.Result(v4, v5);
  v6 = *(a1 + 24);
  *(a1 + 24) = v4;
  v7 = *(a1 + 32);
  *(a1 + 32) = v5;
  outlined consume of _Transition_ContentTransition.Result(v6, v7);
  return a1;
}

uint64_t assignWithTake for _Transition_ContentTransition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v6 = *(a1 + 32);
  *(a1 + 32) = v4;
  outlined consume of _Transition_ContentTransition.Result(v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for _Transition_ContentTransition.Operation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[24])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _Transition_ContentTransition.Operation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for _Transition_ContentTransition.Operation(void *result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 254;
  }

  else if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t assignWithCopy for _Transition_ContentTransition.Result(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of _Transition_ContentTransition.Result(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of _Transition_ContentTransition.Result(v5, v6);
  return a1;
}

uint64_t assignWithTake for _Transition_ContentTransition.Result(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  outlined consume of _Transition_ContentTransition.Result(v4, v5);
  return a1;
}

void key path getter for EnvironmentValues.isVisionEnabled : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    IsVisionEnabledI0VG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015IsVisionEnabledI0VG_Tt1g5(v3);
  }

  else
  {
    IsVisionEnabledI0VG_Tt1g5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA015IsVisionEnabledF0VG_Tt2g5(*a1);
  }

  *a2 = IsVisionEnabledI0VG_Tt1g5 & 1;
}

double key path setter for EnvironmentValues.isVisionEnabled : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015IsVisionEnabledF0VG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015IsVisionEnabledK0VG_Ttg5(v4, *a2);
  }

  return result;
}

double EnvironmentValues.isVisionEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015IsVisionEnabledF0VG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015IsVisionEnabledK0VG_Ttg5(v4, *v2);
  }

  return result;
}

void (*EnvironmentValues.isVisionEnabled.modify(void *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    IsVisionEnabledI0VG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015IsVisionEnabledI0VG_Tt1g5(v5);
  }

  else
  {
    IsVisionEnabledI0VG_Tt1g5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA015IsVisionEnabledF0VG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = IsVisionEnabledI0VG_Tt1g5 & 1;
  return EnvironmentValues.isVisionEnabled.modify;
}

void EnvironmentValues.isVisionEnabled.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015IsVisionEnabledF0VG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015IsVisionEnabledK0VG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t static EmptyVisualEffect._makeVisualEffect(effect:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return a3(a1, v6);
}

double static ModifiedContent<>._makeVisualEffect(effect:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v15 = *(a2 + 48);
  v24[2] = *(a2 + 32);
  v24[3] = v15;
  v24[4] = *(a2 + 64);
  v25 = *(a2 + 80);
  v16 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v16;
  v23[1] = v14;
  v17 = type metadata accessor for ModifiedContent(255, a5, a6, a4);
  type metadata accessor for _GraphValue(0, v17, v18, v19);
  _GraphValue.subscript.getter(partial apply for closure #1 in static ModifiedContent<>._makeVisualEffect(effect:inputs:body:), a6, v23);
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  *(v20 + 32) = a7;
  *(v20 + 40) = a8;
  *(v20 + 48) = v14;
  *(v20 + 56) = a3;
  *(v20 + 64) = a4;
  v21 = *(a8 + 16);

  v21(v23, v24, partial apply for closure #2 in static ModifiedContent<>._makeVisualEffect(effect:inputs:body:), v20, a6, a8);

  return result;
}

uint64_t closure #2 in static ModifiedContent<>._makeVisualEffect(effect:inputs:body:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v12;
  v19[4] = *(a2 + 64);
  v20 = *(a2 + 80);
  v13 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v13;
  v18[1] = a3;
  v14 = type metadata accessor for ModifiedContent(255, a6, a7, a4);
  type metadata accessor for _GraphValue(0, v14, v15, v16);
  _GraphValue.subscript.getter(partial apply for closure #1 in closure #2 in static ModifiedContent<>._makeVisualEffect(effect:inputs:body:), a6, v18);
  return (*(a8 + 16))(v18, v19, a4, a5, a6, a8);
}

uint64_t closure #1 in closure #2 in static ModifiedContent<>._makeVisualEffect(effect:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for ModifiedContent(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t VisualEffect.combining<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return ModifiedContent.init(content:modifier:)(v14, v10, a2, a3, a4);
}

SwiftUI::CoordinateSpace::ID __swiftcall CoordinateSpace.ID.init()()
{
  v1 = v0;
  result.value.value = AGMakeUniqueID();
  v1->value.value = result.value.value;
  return result;
}

void *static CoordinateSpaceProtocol<>.id(_:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 40) = 1;
  return result;
}

BOOL CoordinateSpace.isGlobal.getter()
{
  outlined init with copy of CoordinateSpace(v0, &v3);
  if (v6)
  {
    if (v6 != 1)
    {
      v1 = vorrq_s8(v4, v5);
      return (*&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | v3) == 0;
    }
  }

  else
  {
    outlined destroy of CoordinateSpace(&v3);
  }

  return 0;
}

uint64_t static CoordinateSpace.root.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for root != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of CoordinateSpace(&static CoordinateSpace.root, v2);
}

BOOL CoordinateSpace.isLocal.getter()
{
  outlined init with copy of CoordinateSpace(v0, &v3);
  if (v6)
  {
    if (v6 != 1)
    {
      v1 = vorrq_s8(v4, v5);
      return (*&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | v3) != 0;
    }
  }

  else
  {
    outlined destroy of CoordinateSpace(&v3);
  }

  return 0;
}

uint64_t CoordinateSpace.hash(into:)(uint64_t a1)
{
  outlined init with copy of CoordinateSpace(v1, &v7);
  if (v10)
  {
    v2 = v7;
    if (v10 == 1)
    {
      MEMORY[0x193AC11A0](3);
      v3 = v2;
    }

    else
    {
      v3 = (*(&v8 + 1) | v9 | v7 | v8 | *(&v7 + 1)) != 0;
    }

    return MEMORY[0x193AC11A0](v3);
  }

  else
  {
    v5[0] = v7;
    v5[1] = v8;
    v6 = v9;
    MEMORY[0x193AC11A0](2);
    AnyHashable.hash(into:)();
    return outlined destroy of AnyHashable(v5);
  }
}

Swift::Int CoordinateSpace.hashValue.getter()
{
  Hasher.init(_seed:)();
  CoordinateSpace.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CoordinateSpace()
{
  Hasher.init(_seed:)();
  CoordinateSpace.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CoordinateSpace(uint64_t a1)
{
  Hasher.init(_seed:)();
  CoordinateSpace.hash(into:)(v2);
  return Hasher._finalize()();
}

__n128 NamedCoordinateSpace.init(name:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 25);
  *(a2 + 25) = result;
  return result;
}

double LocalCoordinateSpace.coordinateSpace.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 2;
  return result;
}

double GlobalCoordinateSpace.coordinateSpace.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 2;
  return result;
}

double protocol witness for CoordinateSpaceProtocol.coordinateSpace.getter in conformance GlobalCoordinateSpace@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 2;
  return result;
}

void lazy protocol witness table accessor for type CoordinateSpace and conformance CoordinateSpace()
{
  if (!lazy protocol witness table cache variable for type CoordinateSpace and conformance CoordinateSpace)
  {
    swift_getWitnessTable(protocol conformance descriptor for CoordinateSpace, &type metadata for CoordinateSpace, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CoordinateSpace and conformance CoordinateSpace);
  }
}

__n128 assignWithCopy for CoordinateSpace(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 40);
    if (v2 >= 2)
    {
      v2 = *a1 + 2;
    }

    if (!v2)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 40);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      *a1 = *a2;
      *(a1 + 40) = 1;
    }

    else if (v6)
    {
      result = *a2;
      v9 = *(a2 + 16);
      *(a1 + 25) = *(a2 + 25);
      *a1 = result;
      *(a1 + 16) = v9;
    }

    else
    {
      v7 = *(a2 + 24);
      *(a1 + 24) = v7;
      *(a1 + 32) = *(a2 + 32);
      v8 = a1;
      (**(v7 - 8))();
      *(v8 + 40) = 0;
    }
  }

  return result;
}

__n128 assignWithTake for CoordinateSpace(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 40);
    if (v2 >= 2)
    {
      v2 = *a1 + 2;
    }

    if (!v2)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 40);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      *a1 = *a2;
      *(a1 + 40) = 1;
    }

    else if (v6)
    {
      v8 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v8;
      result = *(a2 + 25);
      *(a1 + 25) = result;
    }

    else
    {
      result = *a2;
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = 0;
    }
  }

  return result;
}

uint64_t assignWithCopy for CoordinateSpace.Name(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(result + 40);
    if (v2 >= 2)
    {
      v2 = *result + 2;
    }

    if (v2 != 1)
    {
      v3 = result;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(result);
      a2 = v4;
      result = v3;
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *result = *a2;
      v6 = 1;
    }

    else
    {
      v7 = *(a2 + 24);
      *(result + 24) = v7;
      *(result + 32) = *(a2 + 32);
      v8 = result;
      (**(v7 - 8))();
      result = v8;
      v6 = 0;
    }

    *(result + 40) = v6;
  }

  return result;
}

uint64_t assignWithTake for CoordinateSpace.Name(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(result + 40);
    if (v2 >= 2)
    {
      v2 = *result + 2;
    }

    if (v2 != 1)
    {
      v3 = result;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(result);
      a2 = v4;
      result = v3;
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *result = *a2;
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v7;
      *(result + 32) = *(a2 + 32);
    }

    *(result + 40) = v6;
  }

  return result;
}

uint64_t assignWithCopy for NamedCoordinateSpace(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of CoordinateSpace.Name(a1);
    if (*(a2 + 40))
    {
      v4 = *a2;
      v5 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v4;
      *(a1 + 16) = v5;
    }

    else
    {
      v6 = *(a2 + 3);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

_OWORD *assignWithTake for NamedCoordinateSpace(_OWORD *result, _OWORD *a2)
{
  if (result != a2)
  {
    v3 = result;
    outlined destroy of CoordinateSpace.Name(result);
    v4 = a2[1];
    *v3 = *a2;
    v3[1] = v4;
    *(v3 + 25) = *(a2 + 25);
    return v3;
  }

  return result;
}

uint64_t ClosedRange<>.minimumValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  type metadata accessor for AccessibilityNumeric();
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v9, v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    if ((*(v7 + 8))(v6, v7))
    {
      outlined init with copy of AnyTrackedValue(v11, a2);
    }

    else
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    result = outlined destroy of AccessibilityNumeric?(v9);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t type metadata accessor for AccessibilityNumeric()
{
  result = lazy cache variable for type metadata for AccessibilityNumeric;
  if (!lazy cache variable for type metadata for AccessibilityNumeric)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AccessibilityNumeric);
  }

  return result;
}

uint64_t outlined destroy of AccessibilityNumeric?(uint64_t a1)
{
  type metadata accessor for AccessibilityNumeric?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ClosedRange<>.maximumValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + *(v7 + 36), v4, v5);
  type metadata accessor for AccessibilityNumeric();
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v12, v14);
    v9 = v15;
    v10 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    if ((*(v10 + 16))(v9, v10))
    {
      outlined init with copy of AnyTrackedValue(v14, a2);
    }

    else
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    result = outlined destroy of AccessibilityNumeric?(v12);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t AccessibilityNumeric<>.isValidMinValue.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v6 + 8) + 24);
  if (Numeric.isNaN.getter(v8, v7) || (Numeric.isFinite.getter(a1, v7) & 1) == 0)
  {
    v9 = 0;
  }

  else if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of static FixedWidthInteger.bitWidth.getter() != 8)
  {
    dispatch thunk of static FixedWidthInteger.min.getter();
    v9 = dispatch thunk of static Comparable.> infix(_:_:)();
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

uint64_t AccessibilityNumeric<>.isValidMaxValue.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v6 + 8) + 24);
  if (Numeric.isNaN.getter(v8, v7) || (Numeric.isFinite.getter(a1, v7) & 1) == 0)
  {
    v9 = 0;
  }

  else
  {
    dispatch thunk of static FixedWidthInteger.max.getter();
    v9 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v3 + 8))(v5, a1);
  }

  return v9 & 1;
}

uint64_t AccessibilityNumeric<>.isValidMinValue.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  if ((dispatch thunk of FloatingPoint.isNaN.getter() & 1) != 0 || (dispatch thunk of FloatingPoint.isSignalingNaN.getter() & 1) != 0 || (dispatch thunk of FloatingPoint.isFinite.getter() & 1) == 0)
  {
    v9 = 0;
  }

  else
  {
    dispatch thunk of static FloatingPoint.greatestFiniteMagnitude.getter();
    dispatch thunk of static SignedNumeric.- prefix(_:)();
    v8 = *(v2 + 8);
    v8(v4, a1);
    v9 = dispatch thunk of static Comparable.> infix(_:_:)();
    v8(v7, a1);
  }

  return v9 & 1;
}

uint64_t AccessibilityNumeric<>.isValidMaxValue.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((dispatch thunk of FloatingPoint.isNaN.getter() & 1) != 0 || (dispatch thunk of FloatingPoint.isSignalingNaN.getter() & 1) != 0 || (dispatch thunk of FloatingPoint.isFinite.getter() & 1) == 0)
  {
    v5 = 0;
  }

  else
  {
    dispatch thunk of static FloatingPoint.greatestFiniteMagnitude.getter();
    v5 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v2 + 8))(v4, a1);
  }

  return v5 & 1;
}

SwiftUI::AccessibilityNumber_optional __swiftcall Int8.asNumber()()
{
  v2 = v1;
  result.value.base.super.super.isa = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithChar_];
  v2->value.base.super.super.isa = result.value.base.super.super.isa;
  return result;
}

id protocol witness for AccessibilityNumeric.asNumber() in conformance Int8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithChar_];
  *a1 = result;
  return result;
}

SwiftUI::AccessibilityNumber_optional __swiftcall Int16.asNumber()()
{
  v2 = v1;
  result.value.base.super.super.isa = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v2->value.base.super.super.isa = result.value.base.super.super.isa;
  return result;
}

id protocol witness for AccessibilityNumeric.asNumber() in conformance Int16@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  *a1 = result;
  return result;
}

SwiftUI::AccessibilityNumber_optional __swiftcall UInt8.asNumber()()
{
  v2 = v1;
  result.value.base.super.super.isa = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedChar_];
  v2->value.base.super.super.isa = result.value.base.super.super.isa;
  return result;
}

id protocol witness for AccessibilityNumeric.asNumber() in conformance UInt8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedChar_];
  *a1 = result;
  return result;
}

SwiftUI::AccessibilityNumber_optional __swiftcall UInt16.asNumber()()
{
  v2 = v1;
  result.value.base.super.super.isa = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
  v2->value.base.super.super.isa = result.value.base.super.super.isa;
  return result;
}

id protocol witness for AccessibilityNumeric.asNumber() in conformance UInt16@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
  *a1 = result;
  return result;
}

id Int32.asNumber()@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, void *a3@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a2];
  *a3 = result;
  return result;
}

id protocol witness for AccessibilityNumeric.asNumber() in conformance Int32@<X0>(SEL *a1@<X2>, void *a2@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a1];
  *a2 = result;
  return result;
}

id protocol witness for AccessibilityNumeric.asNumber() in conformance Int@<X0>(SEL *a1@<X2>, void *a2@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a1];
  *a2 = result;
  return result;
}

SwiftUI::AccessibilityNumber_optional __swiftcall Double.asNumber()()
{
  v2 = v0;
  result.value.base.super.super.isa = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v2->value.base.super.super.isa = result.value.base.super.super.isa;
  return result;
}

id protocol witness for AccessibilityNumeric.asNumber() in conformance Double@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *a1 = result;
  return result;
}

SwiftUI::AccessibilityNumber_optional __swiftcall Float.asNumber()()
{
  v2 = v1;
  v3 = v0;
  v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v5) = v2;
  result.value.base.super.super.isa = [v4 initWithFloat_];
  v3->value.base.super.super.isa = result.value.base.super.super.isa;
  return result;
}

id protocol witness for AccessibilityNumeric.asNumber() in conformance Float@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v5) = v3;
  result = [v4 initWithFloat_];
  *a1 = result;
  return result;
}

uint64_t AccessibilityValueStorage.init<A>(_:from:to:description:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v91 = a7;
  v89 = a6;
  v88 = a5;
  v87 = a4;
  v94 = a2;
  v95 = type metadata accessor for Optional();
  v13 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v82 - v17;
  MEMORY[0x1EEE9AC00](v19);
  *&v107 = 0;
  v105 = 0u;
  v106 = 0u;
  v93 = v21;
  v22 = *(v21 + 16);
  v92 = a1;
  v22(&v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a8);
  type metadata accessor for AccessibilityNumeric();
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v104 = 0;
    v102 = 0u;
    v103 = 0u;
    outlined destroy of AccessibilityNumeric?(&v102);
    goto LABEL_8;
  }

  v23 = v95;
  v90 = v13;
  v25 = *(&v103 + 1);
  v24 = v104;
  __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
  v26 = *(v24 + 24);
  v27 = v24;
  v13 = v90;
  v26(&v96, v25, v27);
  v28 = v96;
  __swift_destroy_boxed_opaque_existential_1(&v102);
  if (!v28)
  {
LABEL_8:
    *&v102 = 0;
    *(&v102 + 1) = 0xE000000000000000;
    v38 = v92;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v39 = v102;
    type metadata accessor for AnyAccessibilityValue.ConcreteBase<String>();
    v100 = v40;
    lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<String> and conformance AnyAccessibilityValue.ConcreteBase<A>(&lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<String> and conformance AnyAccessibilityValue.ConcreteBase<A>, type metadata accessor for AnyAccessibilityValue.ConcreteBase<String>);
    v101 = v41;
    v99 = v39;
    *&v98 = 0;
    v97 = 0u;
    v96 = 0u;
    outlined assign with copy of AnyAccessibilityValue?(&v99, &v96);
    v42 = v91;
    if (v91)
    {
      _s7SwiftUI21AnyAccessibilityValueVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_18DDA6EB0;
      v44 = a9;
      v45 = a3;
      v46 = v87;
      v47 = v88;
      *(v43 + 32) = v87;
      *(v43 + 40) = v47;
      v48 = v89;
      v49 = v89 & 1;
      *(v43 + 48) = v89 & 1;
      *(v43 + 56) = v42;
      outlined copy of Text.Storage(v46, v47, v49);

      v50 = v46;
      a3 = v45;
      a9 = v44;
      outlined consume of Text?(v50, v47, v48, v42);
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC0];
    }

    outlined destroy of AnyAccessibilityValue?(&v99);
    *(&v98 + 1) = v43;
    v102 = v96;
    v103 = v97;
    v104 = v98;
    goto LABEL_30;
  }

  v85 = a9;
  v29 = *(v93 + 48);
  if (v29(v94, 1, a8) != 1 || v29(a3, 1, a8) != 1)
  {
    v86 = a3;
    v51 = v90;
    v84 = *(v90 + 16);
    v84(v18, v94, v95);
    if (v29(v18, 1, a8) == 1)
    {
      v83 = *(v51 + 8);
      v52 = v28;
      v83(v18, v23);
    }

    else
    {
      v53 = v28;
      if (swift_dynamicCast())
      {
        v54 = *(&v103 + 1);
        v55 = v91;
        if (*(&v103 + 1))
        {
          v56 = v104;
          __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
          (*(v56 + 24))(&v96, v54, v56);
          v57 = v96;
          __swift_destroy_boxed_opaque_existential_1(&v102);
          goto LABEL_19;
        }

LABEL_18:
        outlined destroy of AccessibilityNumeric?(&v102);
        v57 = 0;
LABEL_19:
        v84(v15, v86, v95);
        if (v29(v15, 1, a8) == 1)
        {
          v13 = v90;
          (*(v90 + 8))(v15, v95);
          a9 = v85;
          v38 = v92;
        }

        else
        {
          v58 = swift_dynamicCast();
          a9 = v85;
          v13 = v90;
          v38 = v92;
          if (v58)
          {
            v59 = *(&v103 + 1);
            a3 = v86;
            if (*(&v103 + 1))
            {
              v60 = v104;
              __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
              v61 = *(v60 + 24);
              v62 = v60;
              v13 = v90;
              v61(&v96, v59, v62);
              v63 = v96;
              __swift_destroy_boxed_opaque_existential_1(&v102);
LABEL_26:
              type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityBoundedNumber>(0);
              v100 = v64;
              lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<String> and conformance AnyAccessibilityValue.ConcreteBase<A>(&lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<AccessibilityBoundedNumber> and conformance AnyAccessibilityValue.ConcreteBase<A>, type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityBoundedNumber>);
              v101 = v65;
              v66 = swift_allocObject();
              *&v99 = v66;
              v66[2] = v28;
              v66[3] = v57;
              v66[4] = v63;
              v66[5] = 0;
              *&v98 = 0;
              v97 = 0u;
              v96 = 0u;
              outlined assign with copy of AnyAccessibilityValue?(&v99, &v96);
              if (v55)
              {
                _s7SwiftUI21AnyAccessibilityValueVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
                v67 = swift_allocObject();
                *(v67 + 16) = xmmword_18DDA6EB0;
                v68 = v55;
                v69 = v38;
                v70 = v28;
                v71 = a9;
                v72 = a3;
                v73 = v87;
                v74 = v88;
                *(v67 + 32) = v87;
                *(v67 + 40) = v74;
                v75 = v89;
                v76 = v89 & 1;
                *(v67 + 48) = v89 & 1;
                *(v67 + 56) = v68;
                outlined copy of Text.Storage(v73, v74, v76);

                v77 = v73;
                a3 = v72;
                a9 = v71;
                v28 = v70;
                v38 = v69;
                v78 = v68;
                v13 = v90;
                outlined consume of Text?(v77, v74, v75, v78);
              }

              else
              {
                v67 = MEMORY[0x1E69E7CC0];
              }

              outlined destroy of AnyAccessibilityValue?(&v99);
              *(&v98 + 1) = v67;
              v102 = v96;
              v103 = v97;
              v104 = v98;

LABEL_30:
              (*(v93 + 8))(v38, a8);
              goto LABEL_31;
            }

LABEL_25:
            outlined destroy of AccessibilityNumeric?(&v102);
            v63 = 0;
            goto LABEL_26;
          }
        }

        *&v104 = 0;
        v102 = 0u;
        v103 = 0u;
        a3 = v86;
        goto LABEL_25;
      }
    }

    *&v104 = 0;
    v102 = 0u;
    v103 = 0u;
    v55 = v91;
    goto LABEL_18;
  }

  type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityNumber>(0);
  v100 = v30;
  lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<String> and conformance AnyAccessibilityValue.ConcreteBase<A>(&lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<AccessibilityNumber> and conformance AnyAccessibilityValue.ConcreteBase<A>, type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityNumber>);
  v101 = v31;
  *&v99 = v28;
  *&v98 = 0;
  v97 = 0u;
  v96 = 0u;
  outlined assign with copy of AnyAccessibilityValue?(&v99, &v96);
  v32 = v91;
  if (v91)
  {
    _s7SwiftUI21AnyAccessibilityValueVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_18DDA6EB0;
    v34 = v87;
    v35 = v88;
    *(v33 + 32) = v87;
    *(v33 + 40) = v35;
    v36 = v89;
    v37 = v89 & 1;
    *(v33 + 48) = v89 & 1;
    *(v33 + 56) = v32;
    outlined copy of Text.Storage(v34, v35, v37);

    outlined consume of Text?(v34, v35, v36, v32);
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  a9 = v85;
  v13 = v90;
  v81 = v92;
  outlined destroy of AnyAccessibilityValue?(&v99);
  *(&v98 + 1) = v33;
  v102 = v96;
  v103 = v97;
  v104 = v98;
  (*(v93 + 8))(v81, a8);
LABEL_31:
  v79 = *(v13 + 8);
  v79(v94, v95);
  outlined destroy of AnyAccessibilityValue?(&v105);
  v105 = v102;
  v106 = v103;
  v107 = v104;
  outlined init with copy of AccessibilityValueStorage(&v105, a9);
  v79(a3, v95);
  return outlined destroy of AccessibilityValueStorage(&v105);
}

uint64_t outlined destroy of AnyAccessibilityValue?(uint64_t a1)
{
  _s7SwiftUI21AnyAccessibilityValueVSgMaTm_0(0, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<String> and conformance AnyAccessibilityValue.ConcreteBase<A>(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  if (!*a1)
  {
    v3 = a2(255);
    swift_getWitnessTable(protocol conformance descriptor for AnyAccessibilityValue.ConcreteBase<A>, v3);
    atomic_store(v4, a1);
  }
}

uint64_t _s7SwiftUI7ForEachVAA7Element_2IDQZRs_AA4ViewR0_s12IdentifiableADRpzrlE_7contentACyxq_q0_Gx_q0_AIctcfCs5SliceVyAA18SubviewsCollectionVG_AA7SubviewVAEVARTt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  outlined init with copy of Slice<SubviewsCollection>(a1, v12);
  type metadata accessor for Slice<SubviewsCollection>(0, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
  lazy protocol witness table accessor for type Slice<SubviewsCollection> and conformance <> Slice<A>();
  lazy protocol witness table accessor for type Subview and conformance Subview();
  KeyPath = swift_getKeyPath();
  a4[13] = 0;
  outlined init with copy of Slice<SubviewsCollection>(v12, a4);
  a4[11] = a3;
  a4[12] = KeyPath;
  a4[10] = a2;
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v9 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v9)
    {
      goto LABEL_7;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_9;
  }

LABEL_7:
  v10 = AGMakeUniqueID();
LABEL_10:
  outlined destroy of Slice<SubviewsCollection>(a1);
  result = outlined destroy of Slice<SubviewsCollection>(v12);
  a4[14] = v10;
  return result;
}

uint64_t _s7SwiftUI7ForEachVAA7Element_2IDQZRs_AA4ViewR0_s12IdentifiableADRpzrlE_7contentACyxq_q0_Gx_q0_AIctcfCAA09_VariadicG9_ChildrenV_s11AnyHashableVAmDVTt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  outlined init with copy of _VariadicView_Children(a1, v12);
  lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
  lazy protocol witness table accessor for type _VariadicView_Children.Element and conformance _VariadicView_Children.Element();
  KeyPath = swift_getKeyPath();
  a4[11] = 0;
  outlined init with copy of _VariadicView_Children(v12, a4);
  a4[9] = a3;
  a4[10] = KeyPath;
  a4[8] = a2;
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v9 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v9)
    {
      goto LABEL_7;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_9;
  }

LABEL_7:
  v10 = AGMakeUniqueID();
LABEL_10:
  outlined destroy of _VariadicView_Children(a1);
  result = outlined destroy of _VariadicView_Children(v12);
  a4[12] = v10;
  return result;
}

__n128 SubviewsCollection.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t SubviewsCollection.init(list:contentSubgraph:transform:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v6 = *a3;
  v7 = a3[1];
  result = outlined init with take of _ViewList_Elements(a1, a4);
  a4[5] = a2;
  a4[6] = v6;
  a4[7] = v7;
  return result;
}

Swift::Int __swiftcall SubviewsCollection.index(before:)(Swift::Int before)
{
  v2 = before - 1;
  if (__OFSUB__(before, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
LABEL_7:
    swift_once();
  }

  v3 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v6 = ViewList.count.getter(v4, v5);
  static Update.end()();
  result = _MovableLockUnlock(v3);
  if ((v2 & 0x8000000000000000) == 0 && v2 < v6)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t SubviewsCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = outlined init with copy of SubviewsCollection(v3, (a3 + 2));
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance SubviewsCollection@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  result = outlined init with copy of SubviewsCollection(v2, (a2 + 2));
  *a2 = v4;
  a2[1] = v5;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance SubviewsCollection()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);
  outlined destroy of SubviewsCollection(v0);
  return v1;
}

void static SubviewsCollection._makeViewList(view:inputs:)(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>(0);
  lazy protocol witness table accessor for type _VariadicView_Children.Child and conformance _VariadicView_Children.Child();
  v6 = Attribute.init<A>(body:value:flags:update:)();
  if (ShouldRecordTree)
  {
    v7 = v6;
    AGSubgraphBeginTreeElement();
    _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZAA09_VariadicE9_ChildrenV_s11AnyHashableVAQ7ElementVTt2B5(v7, a2, a3);
    AGSubgraphEndTreeElement();
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZAA09_VariadicE9_ChildrenV_s11AnyHashableVAQ7ElementVTt2B5(v6, a2, a3);
  }
}

uint64_t SubviewsCollectionSlice.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*v2 <= result && v2[1] > result)
  {
    return _VariadicView_Children.subscript.getter(result, a2);
  }

  __break(1u);
  return result;
}

uint64_t SubviewsCollectionSlice.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = outlined init with copy of SubviewsCollection(v3 + 16, (a3 + 2));
  *a3 = a1;
  a3[1] = a2;
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance SubviewsCollectionSlice@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 >= *v2 && v3 < v2[1])
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance SubviewsCollectionSlice(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 >= *v1 && v2 < v1[1])
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance SubviewsCollectionSlice(uint64_t *a1, uint64_t (**a2)()))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  result = *a2;
  if (*a2 >= *v2 && result < v2[1])
  {
    _VariadicView_Children.subscript.getter(result, v6);
    return protocol witness for Collection.subscript.read in conformance SubviewsCollectionSlice;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance SubviewsCollectionSlice@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  result = outlined init with copy of SubviewsCollection(v2 + 16, (a2 + 2));
  *a2 = v4;
  a2[1] = v5;
  return result;
}

void protocol witness for Collection.indices.getter in conformance SubviewsCollectionSlice(void *a1@<X8>)
{
  v2 = v1[1];
  if (v2 < *v1)
  {
    __break(1u);
  }

  else
  {
    *a1 = *v1;
    a1[1] = v2;
  }
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance SubviewsCollectionSlice@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 >= *v3 && v3[1] >= v4)
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance SubviewsCollectionSlice(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  v5 = *v2;
  v6 = v2[1];
  if (v6 < *a2 || v4 < v5 || v3 < v5 || v6 < v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = (v4 - v3);
  if (__OFSUB__(v4, v3))
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t *protocol witness for Collection.index(after:) in conformance SubviewsCollectionSlice@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = v2[1];
  if (*result >= *v2)
  {
    v6 = __OFSUB__(v3, v4);
    v5 = v3 - v4 < 0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if (v5 != v6)
  {
    *a2 = v3 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance SubviewsCollectionSlice(uint64_t *result)
{
  v2 = *result;
  v3 = v1[1];
  if (*result >= *v1)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 != v5)
  {
    *result = v2 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance SubviewsCollectionSlice@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of SubviewsCollectionSlice(v1, a1);
  v3 = *v1;
  result = outlined destroy of SubviewsCollectionSlice(v1);
  *(a1 + 80) = v3;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance SubviewsCollectionSlice()
{
  v1 = v0[1];
  result = v1 - *v0;
  if (v1 < *v0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (__OFSUB__(v1, *v0))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance SubviewsCollectionSlice()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);
  outlined destroy of SubviewsCollectionSlice(v0);
  return v1;
}

uint64_t static SubviewsCollection._viewListCount(inputs:)(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return a2(v5);
}

double protocol witness for static Rule.initialValue.getter in conformance SubviewsCollectionSlice.Child@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance SubviewsCollectionSlice.Child@<X0>(void *a1@<X8>)
{
  type metadata accessor for Slice<SubviewsCollection>(0, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
  Value = AGGraphGetValue();
  outlined init with copy of Slice<SubviewsCollection>(Value, v4);
  return _s7SwiftUI7ForEachVAA7Element_2IDQZRs_AA4ViewR0_s12IdentifiableADRpzrlE_7contentACyxq_q0_Gx_q0_AIctcfCs5SliceVyAA18SubviewsCollectionVG_AA7SubviewVAEVARTt2g5(v4, closure #1 in SubviewsCollectionSlice.Child.value.getter, 0, a1);
}

uint64_t protocol witness for static View._viewListCount(inputs:) in conformance SubviewsCollection(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  v4 = a1[3];
  v7[2] = a1[2];
  v7[3] = v4;
  v7[4] = a1[4];
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return (a4)(v7, a2, a3);
}

void lazy protocol witness table accessor for type IndexingIterator<SubviewsCollection> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a1)
  {
    type metadata accessor for Slice<SubviewsCollection>(255, a2, a3, a4, MEMORY[0x1E69E6CF0]);
    swift_getWitnessTable(MEMORY[0x1E69E6CF8], v5);
    atomic_store(v6, a1);
  }
}

void type metadata accessor for Slice<SubviewsCollection>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void *initializeBufferWithCopyOfBuffer for GroupElementsOfContent(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 + 16) - 8);
  if (*(v5 + 64) <= 0x40uLL)
  {
    v6 = 64;
  }

  else
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  v7 = *(v5 + 80);
  if ((v7 & 0x1000F8) != 0 || (v6 & 0xFFFFFFFFFFFFFFF8) != 0 && (v6 & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFFFFFFFE8)
  {
    v9 = *a2;
    *v4 = *a2;
    v4 = (v9 + (((v7 & 0xF8) + 23) & ~(v7 & 0xF8) & 0x1F8));
    goto LABEL_28;
  }

  v10 = *(a2 + v6);
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v6 <= 3)
    {
      v12 = v6;
    }

    else
    {
      v12 = 4;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = *a2;
      }

      else if (v12 == 3)
      {
        v13 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v13 = *a2;
      }

LABEL_22:
      v14 = (v13 | (v11 << (8 * v6))) + 2;
      v10 = v13 + 2;
      if (v6 < 4)
      {
        v10 = v14;
      }

      goto LABEL_24;
    }

    if (v12)
    {
      v13 = *a2;
      goto LABEL_22;
    }
  }

LABEL_24:
  v15 = v6 + 1;
  if (v10 == 1)
  {
    (*(v5 + 16))(a1, a2);
    v16 = 1;
  }

  else
  {
    v17 = *(a2 + 12);
    *(a1 + 24) = v17;
    (**(v17 - 8))(a1, a2);
    v18 = *(a2 + 5);
    v19 = *(a2 + 6);
    v4[5] = v18;
    v4[6] = v19;
    v4[7] = *(a2 + 7);
    v20 = v18;

    v16 = 0;
  }

  *(v4 + v6) = v16;
  v21 = ((a2 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = v21[1];
  v23 = ((v4 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v21;
  v23[1] = v22;
LABEL_28:

  return v4;
}

__n128 initializeWithTake for GroupElementsOfContent(_OWORD *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x40uLL)
  {
    v4 = 64;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 < 2)
  {
    goto LABEL_18;
  }

  if (v4 <= 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 4;
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = *a2;
  }

  else if (v7 == 2)
  {
    v8 = *a2;
  }

  else if (v7 == 3)
  {
    v8 = *a2 | (a2[2] << 16);
  }

  else
  {
    v8 = *a2;
  }

  v9 = (v8 | (v6 << (8 * v4))) + 2;
  v5 = v8 + 2;
  if (v4 < 4)
  {
    v5 = v9;
  }

LABEL_18:
  if (v5 == 1)
  {
    v10 = a1;
    (*(*(*(a3 + 16) - 8) + 32))(a1, a2);
    a1 = v10;
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v12 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v12;
    v13 = *(a2 + 3);
    a1[2] = *(a2 + 2);
    a1[3] = v13;
  }

  *(a1 + v4) = v11;
  v14 = (&a2[v4 + 8] & 0xFFFFFFFFFFFFFFF8);
  result = *v14;
  *((a1 + v4 + 8) & 0xFFFFFFFFFFFFFFF8) = *v14;
  return result;
}

id *assignWithTake for GroupElementsOfContent(id *a1, id *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 != a2)
  {
    if (*(v6 + 64) <= 0x40uLL)
    {
      v7 = 64;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = *(a1 + v7);
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *a1;
      }

      else if (v10 == 2)
      {
        v11 = *a1;
      }

      else if (v10 == 3)
      {
        v11 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v11 = *a1;
      }

      v12 = (v11 | (v9 << (8 * v7))) + 2;
      v8 = v11 + 2;
      if (v7 < 4)
      {
        v8 = v12;
      }
    }

LABEL_19:
    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v13 = *(a2 + v7);
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      if (v15 <= 1)
      {
        if (!v15)
        {
          goto LABEL_36;
        }

        v16 = *a2;
        if (v7 < 4)
        {
LABEL_39:
          if ((v16 | (v14 << (8 * v7))) != 0xFFFFFFFF)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }

      else if (v15 == 2)
      {
        v16 = *a2;
        if (v7 < 4)
        {
          goto LABEL_39;
        }
      }

      else if (v15 == 3)
      {
        v16 = *a2 | (*(a2 + 2) << 16);
        if (v7 < 4)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v16 = *a2;
        if (v7 < 4)
        {
          goto LABEL_39;
        }
      }

      v13 = v16 + 2;
    }

LABEL_36:
    if (v13 != 1)
    {
LABEL_40:
      v17 = 0;
      v18 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v18;
      v19 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v19;
      goto LABEL_41;
    }

LABEL_37:
    (*(v6 + 32))(a1, a2, v5);
    v17 = 1;
LABEL_41:
    *(a1 + v7) = v17;
  }

  v20 = *(v6 + 64);
  if (v20 <= 0x40)
  {
    v20 = 64;
  }

  *((a1 + v20 + 8) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v20 + 8) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

int *storeEnumTagSinglePayload for GroupElementsOfContent(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  if (v4 <= 0x40)
  {
    v4 = 64;
  }

  v5 = (v4 & 0xFFFFFFFFFFFFFFF8) + 24;
  if (a3 < 0)
  {
    v7 = a3 - 2147483646;
    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v7 = 2;
    }

    if (v7 >= 0x10000)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (v7 < 0x100)
    {
      v6 = 1;
    }

    else
    {
      v6 = v8;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v9 = a2 & 0x7FFFFFFF;
    if ((v4 & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 1;
    }

    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v11 = result;
      bzero(result, v5);
      result = v11;
      *v11 = v9;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(result + v5) = v10;
      }

      else
      {
        *(result + v5) = v10;
      }
    }

    else if (v6)
    {
      *(result + v5) = v10;
    }

    return result;
  }

  v6 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v6 <= 1)
  {
    if (v6)
    {
      *(result + v5) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v6 == 2)
  {
    *(result + v5) = 0;
    goto LABEL_28;
  }

  *(result + v5) = 0;
  if (a2)
  {
LABEL_29:
    *((result + v4 + 8) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

uint64_t assignWithTake for SubviewsCollectionSlice(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1((a1 + 16));
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  v5 = *(a2 + 56);
  v6 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t storeEnumTagSinglePayload for SubviewsCollectionSlice(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for GroupElementsOfContent.Storage(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 0x40uLL)
  {
    v5 = 64;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    v9 = *(a2 + v5);
    if (v9 >= 2)
    {
      v9 = *a2 + 2;
    }

    if (v9 == 1)
    {
      (*(v4 + 16))(a1);
      *(v3 + v5) = 1;
    }

    else
    {
      v10 = *(a2 + 3);
      *(a1 + 24) = v10;
      (**(v10 - 8))(a1);
      v12 = a2[5];
      v13 = a2[6];
      v3[5] = v12;
      v3[6] = v13;
      v3[7] = a2[7];
      *(v3 + v5) = 0;
      v14 = v12;
    }
  }

  return v3;
}

double destroy for GroupElementsOfContent.Storage(id *a1, uint64_t a2)
{
  v3 = *(*(*(a2 + 16) - 8) + 64);
  if (v3 <= 0x40)
  {
    v3 = 64;
  }

  v4 = *(a1 + v3);
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        goto LABEL_17;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (*(a1 + 2) << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    v4 = v7 + 2;
    if (v3 < 4)
    {
      v4 = v8;
    }
  }

LABEL_17:
  if (v4 == 1)
  {
    v9 = *(*(*(a2 + 16) - 8) + 8);

    v9();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return result;
}

id *assignWithCopy for GroupElementsOfContent.Storage(id *a1, id *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 0x40uLL)
    {
      v7 = 64;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = *(a1 + v7);
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *a1;
      }

      else if (v10 == 2)
      {
        v11 = *a1;
      }

      else if (v10 == 3)
      {
        v11 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v11 = *a1;
      }

      v12 = (v11 | (v9 << (8 * v7))) + 2;
      v8 = v11 + 2;
      if (v7 < 4)
      {
        v8 = v12;
      }
    }

LABEL_19:
    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v13 = *(a2 + v7);
    v14 = v13 - 2;
    if (v13 < 2)
    {
      goto LABEL_36;
    }

    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
LABEL_36:
        if (v13 == 1)
        {
          (*(v6 + 16))(a1, a2, v5);
          *(a1 + v7) = 1;
        }

        else
        {
          v18 = a2[3];
          a1[3] = v18;
          a1[4] = a2[4];
          (**(v18 - 1))(a1, a2);
          v19 = a2[5];
          a1[5] = v19;
          a1[6] = a2[6];
          a1[7] = a2[7];
          *(a1 + v7) = 0;
          v20 = v19;
        }

        return a1;
      }

      v16 = *a2;
    }

    else if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v16 = *a2;
    }

    v17 = (v16 | (v14 << (8 * v7))) + 2;
    v13 = v16 + 2;
    if (v7 < 4)
    {
      v13 = v17;
    }

    goto LABEL_36;
  }

  return a1;
}

_OWORD *initializeWithTake for GroupElementsOfContent.Storage(_OWORD *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x40uLL)
  {
    v3 = 64;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 2;
  if (v4 < 2)
  {
    goto LABEL_18;
  }

  if (v3 <= 3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 4;
  }

  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = *a2;
  }

  else if (v6 == 2)
  {
    v7 = *a2;
  }

  else if (v6 == 3)
  {
    v7 = *a2 | (a2[2] << 16);
  }

  else
  {
    v7 = *a2;
  }

  v8 = (v7 | (v5 << (8 * v3))) + 2;
  v4 = v7 + 2;
  if (v3 < 4)
  {
    v4 = v8;
  }

LABEL_18:
  if (v4 == 1)
  {
    v9 = result;
    (*(*(*(a3 + 16) - 8) + 32))();
    result = v9;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v11 = *(a2 + 1);
    *result = *a2;
    result[1] = v11;
    v12 = *(a2 + 3);
    result[2] = *(a2 + 2);
    result[3] = v12;
  }

  *(result + v3) = v10;
  return result;
}

id *assignWithTake for GroupElementsOfContent.Storage(id *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 0x40uLL)
  {
    v7 = 64;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(a1 + v7);
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (*(a1 + 2) << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 2;
    v8 = v11 + 2;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_19:
  if (v8 == 1)
  {
    (*(v6 + 8))(a1, v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = *(a2 + v7);
  v14 = v13 - 2;
  if (v13 >= 2)
  {
    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a2;
      }

      else if (v15 == 3)
      {
        v16 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v16 = *a2;
      }

LABEL_34:
      v17 = (v16 | (v14 << (8 * v7))) + 2;
      v13 = v16 + 2;
      if (v7 < 4)
      {
        v13 = v17;
      }

      goto LABEL_36;
    }

    if (v15)
    {
      v16 = *a2;
      goto LABEL_34;
    }
  }

LABEL_36:
  if (v13 == 1)
  {
    (*(v6 + 32))(a1, a2, v5);
    v18 = 1;
  }

  else
  {
    v18 = 0;
    v19 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v19;
    v20 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v20;
  }

  *(a1 + v7) = v18;
  return a1;
}

uint64_t getEnumTagSinglePayload for GroupElementsOfContent.Storage(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 64;
  if (*(v3 + 64) > 0x40uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void storeEnumTagSinglePayload for GroupElementsOfContent.Storage(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x40)
  {
    v5 = 64;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t outlined init with copy of Slice<SubviewsCollection>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Slice<SubviewsCollection>(0, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double ImageRenderer.objectWillChange.getter()
{
  specialized ImageRenderer.objectWillChange.getter();

  return result;
}

uint64_t ImageRenderer._content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[3];
  v5 = *(*v4 + 232);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v4 + v5);
}

void (*ImageRenderer.content.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  ImageRenderer._content.getter(v9);
  return ImageRenderer.content.modify;
}

void ImageRenderer.content.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    specialized ImageRendererHost.content.setter(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    specialized ImageRendererHost.content.setter(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*ImageRenderer.proposedSize.modify(void *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  *v3 = ImageRenderer.proposedSize.getter();
  *(v4 + 8) = v5;
  v4[2] = v6;
  *(v4 + 24) = v7;
  return ImageRenderer.proposedSize.modify;
}

void ImageRenderer.proposedSize.modify(uint64_t **a1)
{
  v1 = *a1;
  ImageRendererHost.proposedSize.setter(**a1, *(v1 + 8), v1[2], *(v1 + 24));

  free(v1);
}

uint64_t (*ImageRenderer.scale.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = *(v1 + 32);
  return ImageRenderer.scale.modify;
}

void *ImageRenderer.scale.modify(void *a1)
{
  v1 = a1[1];
  v2 = *(v1 + 32);
  *(v1 + 32) = *a1;
  return ImageRenderer.currentScale.didset(v2);
}

uint64_t ImageRenderer.isOpaque.setter(uint64_t result)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(*(v1 + 24) + 24) = *(*(v1 + 24) + 24) & 0xFFFFFFFD | v2;
  return result;
}

uint64_t (*ImageRenderer.isOpaque.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = (*(*(v1 + 24) + 24) & 2) != 0;
  return ImageRenderer.isOpaque.modify;
}

_BYTE *ImageRenderer.isOpaque.modify(_BYTE *result)
{
  if (result[8])
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  *(*(*result + 24) + 24) = *(*(*result + 24) + 24) & 0xFFFFFFFD | v1;
  return result;
}

uint64_t (*ImageRenderer.colorMode.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(*(v1 + 24) + 20);
  return ImageRenderer.colorMode.modify;
}

uint64_t (*ImageRenderer.allowedDynamicRange.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(*(v1 + 24) + 21);
  return ImageRenderer.allowedDynamicRange.modify;
}

void *ImageRenderer.__allocating_init(content:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = specialized ImageRenderer.init(content:)(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

double closure #2 in closure #1 in ImageRenderer.initializeRenderer()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    ImageRenderer.accessSeed()();
    ImageRenderer.seed.setter(*(v3 + direct field offset for ImageRenderer._seed) + 1);
  }

  return result;
}

double ImageRenderer.seed.setter(int a1)
{
  v2 = *v1;
  swift_getKeyPath();
  swift_getWitnessTable(protocol conformance descriptor for ImageRenderer<A>, v2);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void *ImageRenderer.cgImage.getter()
{
  ImageRenderer.accessSeed()();
  v0 = specialized ImageRendererHost.cgImage.getter();
  v1 = v0;
  return v0;
}

void *ImageRenderer._cgImage.getter()
{
  v0 = specialized ImageRenderer._cgImage.getter();
  v1 = v0;
  return v0;
}

Swift::Void __swiftcall ImageRenderer.accessSeed()()
{
  v1 = *v0;
  v2 = direct field offset for ImageRenderer.observationEnabled;
  v3 = swift_beginAccess();
  if (*(v0 + v2) == 1)
  {
    MEMORY[0x1EEE9AC00](v3);
    swift_getKeyPath();
    swift_getWitnessTable(protocol conformance descriptor for ImageRenderer<A>, v1);
    ObservationRegistrar.access<A, B>(_:keyPath:)();
  }
}

uint64_t ImageRenderer.observationEnabled.getter()
{
  v1 = direct field offset for ImageRenderer.observationEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void ImageRenderer.observationEnabled.setter(char a1)
{
  v3 = direct field offset for ImageRenderer.observationEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ImageRenderer.isObservationEnabled.getter()
{
  v1 = direct field offset for ImageRenderer.observationEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void ImageRenderer.isObservationEnabled.setter(char a1)
{
  v3 = direct field offset for ImageRenderer.observationEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double protocol witness for ObservableObject.objectWillChange.getter in conformance ImageRenderer<A>@<D0>(uint64_t *a1@<X8>)
{
  *a1 = specialized ImageRenderer.objectWillChange.getter();

  return result;
}

void (*ImageRenderer._content.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  ImageRenderer._content.getter(v9);
  return ImageRenderer.content.modify;
}

void (*ImageRenderer._proposedSize.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 24) + *(**(v1 + 24) + 248);
  v5 = *(v4 + 16);
  v8 = *(v4 + 8);
  v7 = *(v4 + 24);
  *v3 = *v4;
  *(v3 + 8) = v8;
  *(v3 + 16) = v5;
  *(v3 + 24) = v7;
  return ImageRenderer._proposedSize.modify;
}

void ImageRenderer._proposedSize.modify(uint64_t **a1)
{
  v1 = *a1;
  ImageRendererHost.proposedSize.setter(**a1, *(v1 + 8), v1[2], *(v1 + 24));

  free(v1);
}

uint64_t (*ImageRenderer._scale.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = *(v1 + 32);
  return ImageRenderer._scale.modify;
}

uint64_t (*ImageRenderer._isOpaque.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = (*(*(v1 + 24) + 24) & 2) != 0;
  return ImageRenderer._isOpaque.modify;
}

uint64_t (*ImageRenderer._colorMode.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(*(v1 + 24) + 20);
  return ImageRenderer._colorMode.modify;
}

uint64_t (*ImageRenderer._allowedDynamicRange.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(*(v1 + 24) + 21);
  return ImageRenderer._allowedDynamicRange.modify;
}

void closure #1 in closure #1 in closure #1 in ImageRenderer._render(rasterizationScale:renderer:)(CGContext *a1, uint64_t a2, void (*a3)(uint64_t *), double a4, double a5, double a6)
{
  v11 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  [v11 setProfile_];
  [v11 setDefaultColorSpace_];
  ClipBoundingBox = CGContextGetClipBoundingBox(a1);
  [v11 setContentRect_];
  [v11 setDeviceScale_];
  [v11 translateByX:0.0 Y:a5];
  [v11 scaleByX:1.0 Y:-1.0];
  v12 = v11;
  EnvironmentValues.init()(v22);
  v13 = v22[0];
  v14 = v22[1];
  type metadata accessor for GraphicsContext.Storage();
  v15 = swift_allocObject();
  *(v15 + 32) = xmmword_18DD85500;
  *(v15 + 48) = 1065353216;
  *(v15 + 56) = 0x7FF8000000000000;
  v21[0] = v13;
  v21[1] = v14;
  type metadata accessor for GraphicsContext.Storage.Shared();
  swift_allocObject();
  v16 = v12;
  *(v15 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v16, v21);
  *(v15 + 24) = RBDisplayListGetState();
  *(v15 + 64) = 0;

  v22[0] = v15;
  a3(v22);
  type metadata accessor for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(RBDisplayListRenderKey, Any)>, &lazy cache variable for type metadata for (RBDisplayListRenderKey, Any), type metadata accessor for RBDisplayListRenderKey);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDA6EB0;
  v18 = *MEMORY[0x1E69C7160];
  *(inited + 32) = *MEMORY[0x1E69C7160];
  *(inited + 64) = MEMORY[0x1E69E7DE0];
  *(inited + 40) = a6;
  v19 = v18;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo22RBDisplayListRenderKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (RBDisplayListRenderKey, Any)(inited + 32);
  type metadata accessor for RBDisplayListRenderKey(0);
  lazy protocol witness table accessor for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type RBDisplayListRenderKey and conformance RBDisplayListRenderKey, type metadata accessor for RBDisplayListRenderKey, protocol conformance descriptor for RBDisplayListRenderKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v16 renderInContext:a1 options:isa];
}

double ImageRendererHost.viewGraph.getter()
{
  specialized ImageRendererHost.viewGraph.getter();

  return result;
}

void ImageRendererHost.currentTimestamp.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 64) = v2;
}

void ImageRendererHost.cgImageSize.setter(double a1, double a2)
{
  swift_beginAccess();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

double ImageRendererHost._platformImage.getter()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

uint64_t ImageRendererHost._platformImage.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
  return swift_unknownObjectRelease();
}

void (*protocol witness for ViewGraphOwner.renderingPhase.modify in conformance ImageRendererHost<A>(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = ImageRendererHost.renderingPhase.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient.AbsolutePaint;
}

uint64_t (*protocol witness for ViewGraphOwner.externalUpdateCount.modify in conformance ImageRendererHost<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = ImageRendererHost.externalUpdateCount.modify(v2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t keypath_get_12Tm@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6 & 1;
  return result;
}

double (*_SaturationEffect.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

double _SaturationEffect.effectValue(size:)@<D0>(uint64_t a1@<X8>, double a2@<D2>)
{
  v4 = swift_allocObject();
  *v9 = a2;
  _s7SwiftUI14GraphicsFilterOWOi9_(v9);
  v5 = v13;
  v4[5] = v12;
  v4[6] = v5;
  v4[7] = v14[0];
  *(v4 + 124) = *(v14 + 12);
  v6 = v9[1];
  v4[1] = v9[0];
  v4[2] = v6;
  result = *&v10;
  v8 = v11;
  v4[3] = v10;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _SaturationEffect@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *&v9[0] = v3;
  _s7SwiftUI14GraphicsFilterOWOi9_(v9);
  v5 = v13;
  v4[5] = v12;
  v4[6] = v5;
  v4[7] = v14[0];
  *(v4 + 124) = *(v14 + 12);
  v6 = v9[1];
  v4[1] = v9[0];
  v4[2] = v6;
  result = *&v10;
  v8 = v11;
  v4[3] = v10;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

void type metadata accessor for RendererVisualEffect<_SaturationEffect>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for RendererVisualEffect<_SaturationEffect>)
  {
    v4 = type metadata accessor for RendererVisualEffect(0, &type metadata for _SaturationEffect, &protocol witness table for _SaturationEffect, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for RendererVisualEffect<_SaturationEffect>);
    }
  }
}

void lazy protocol witness table accessor for type RendererVisualEffect<_SaturationEffect> and conformance RendererVisualEffect<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy protocol witness table cache variable for type RendererVisualEffect<_SaturationEffect> and conformance RendererVisualEffect<A>)
  {
    type metadata accessor for RendererVisualEffect<_SaturationEffect>(255, a2, a3, a4);
    swift_getWitnessTable(protocol conformance descriptor for RendererVisualEffect<A>, v6, v4, v5);
    atomic_store(v7, &lazy protocol witness table cache variable for type RendererVisualEffect<_SaturationEffect> and conformance RendererVisualEffect<A>);
  }
}

float Color.Resolved.quantizedLuma.getter(float a1, float a2, float a3)
{
  v6 = -a1;
  if (a1 > 0.0)
  {
    v6 = a1;
  }

  if (v6 <= 0.0031308)
  {
    v7 = v6 * 12.92;
  }

  else
  {
    v7 = 1.0;
    if (v6 != 1.0)
    {
      v7 = (powf(v6, 0.41667) * 1.055) + -0.055;
    }
  }

  v8 = -a2;
  if (a2 > 0.0)
  {
    v8 = a2;
  }

  if (v8 <= 0.0031308)
  {
    v9 = v8 * 12.92;
  }

  else
  {
    v9 = 1.0;
    if (v8 != 1.0)
    {
      v9 = (powf(v8, 0.41667) * 1.055) + -0.055;
    }
  }

  v10 = -a3;
  if (a3 > 0.0)
  {
    v10 = a3;
  }

  if (v10 <= 0.0031308)
  {
    v11 = v10 * 12.92;
  }

  else
  {
    v11 = 1.0;
    if (v10 != 1.0)
    {
      v11 = (powf(v10, 0.41667) * 1.055) + -0.055;
    }
  }

  v12 = -v9;
  if (a2 > 0.0)
  {
    v12 = v9;
  }

  v13 = -v7;
  if (a1 > 0.0)
  {
    v13 = v7;
  }

  if (a3 <= 0.0)
  {
    v11 = -v11;
  }

  return roundf((((v13 * 0.2126) + (v12 * 0.7152)) + (v11 * 0.0722)) * 32.0) * 0.03125;
}

uint64_t Color.mix(with:by:in:)(uint64_t a1, char *a2, uint64_t a3, double a4)
{
  v6 = *a2;
  v7 = a4;
  type metadata accessor for ColorBox<Color.MixProvider>(0, &lazy cache variable for type metadata for ColorBox<Color.MixProvider>, lazy protocol witness table accessor for type Color.MixProvider and conformance Color.MixProvider, &type metadata for Color.MixProvider);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a1;
  *(v8 + 32) = v6;
  *(v8 + 36) = v7;

  return v8;
}

uint64_t Color.over(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ColorBox<Color.MixProvider>(0, &lazy cache variable for type metadata for ColorBox<Color.DestinationOverProvider>, lazy protocol witness table accessor for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider, &type metadata for Color.DestinationOverProvider);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return v4;
}

uint64_t Color.multiplyingHierarchicalOpacity(at:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ColorBox<Color.MixProvider>(0, &lazy cache variable for type metadata for ColorBox<Color.HierarchicalOpacityColor>, lazy protocol witness table accessor for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor, &type metadata for Color.HierarchicalOpacityColor);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return v4;
}

CGColorRef protocol witness for ColorProvider.staticColor.getter in conformance Color.OpacityColor()
{
  v1 = v0[1];
  v2 = (*(**v0 + 136))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Alpha = CGColorGetAlpha(v2);
  result = CGColorCreateCopyWithAlpha(v3, v1 * Alpha);
  if (result)
  {
    v6 = result;

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for ColorProvider.resolve(in:) in conformance Color.HierarchicalOpacityColor(uint64_t *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v5 = a1[1];
  v7 = *a1;
  v4 = v7;
  v8 = v5;
  (*(*v3 + 168))(v2, &v7);
  v7 = v4;
  v8 = v5;
  return (*(*v3 + 112))(&v7);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.HierarchicalOpacityColor()
{
  v1 = *v0;
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v2);

  v3 = MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  v4 = (*(*v1 + 160))(v3);
  MEMORY[0x193ABEDD0](v4);

  return 0x206C6576654CLL;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Color.HierarchicalOpacityColor()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  (*(*v1 + 152))(v4);
  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Color.HierarchicalOpacityColor()
{
  v1 = v0[1];
  (*(**v0 + 152))();
  return MEMORY[0x193AC11A0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color.HierarchicalOpacityColor(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  (*(*v2 + 152))(v5);
  MEMORY[0x193AC11A0](v3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Color.HierarchicalOpacityColor(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return (*a1 == *a2 || ((*(**a1 + 88))() & 1) != 0) && v2 == v3;
}

void protocol witness for ColorProvider.resolve(in:) in conformance Color.DestinationOverProvider(uint64_t *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = a1[1];
  v17 = *a1;
  v4 = v17;
  v18 = v5;
  v6 = (*(*v2 + 112))(&v17);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v17 = v4;
  v18 = v5;
  (*(*v3 + 112))(&v17);

  Color.Resolved.over(_:)(v13, v14, v15, v16, v6, v8, v10, v12);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Color.DestinationOverProvider()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  (*(*v1 + 152))(v4);
  (*(*v2 + 152))(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Color.DestinationOverProvider(uint64_t a1)
{
  v3 = v1[1];
  (*(**v1 + 152))();
  return (*(*v3 + 152))(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color.DestinationOverProvider(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  (*(*v2 + 152))(v5);
  (*(*v3 + 152))(v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Color.DestinationOverProvider(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (*a1 != *a2 && ((*(**a1 + 88))() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  return (*(*v2 + 88))(v3) & 1;
}

uint64_t Color.blend(with:in:by:)(uint64_t a1, char *a2, uint64_t a3, double a4)
{
  v6 = *a2;
  v7 = a4;
  type metadata accessor for ColorBox<Color.MixProvider>(0, &lazy cache variable for type metadata for ColorBox<Color.MixProvider>, lazy protocol witness table accessor for type Color.MixProvider and conformance Color.MixProvider, &type metadata for Color.MixProvider);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a1;
  *(v8 + 32) = v6;
  *(v8 + 36) = v7;

  return v8;
}

void Color.MixProvider.resolve(in:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
  v5 = *(v1 + 1);
  v6 = v1[5];
  v20 = *(v1 + 16);
  v18 = v2;
  v19 = v3;
  v7 = (*(*v4 + 112))(&v18);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v18 = v2;
  v19 = v3;
  v14 = (*(*v5 + 112))(&v18);
  ResolvedGradient.ColorSpace.mix(_:_:by:)(v7, v9, v11, v13, v14, v15, v16, v17, v6);
}

void Color.MixProvider.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 20);
  v5 = *(v1 + 16);
  (*(**v1 + 152))();
  (*(*v3 + 152))(a1);
  Hasher._combine(_:)(v5);
  v6 = 0.0;
  if (v4 != 0.0)
  {
    v6 = v4;
  }

  Hasher._combine(_:)(LODWORD(v6));
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Color.MixProvider()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 5);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  Hasher.init(_seed:)();
  Color.MixProvider.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color.MixProvider(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 5);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  Hasher.init(_seed:)();
  Color.MixProvider.hash(into:)(v5);
  return Hasher._finalize()();
}

uint64_t Color._settingOpacity(_:)(uint64_t a1, double a2)
{
  v3 = a2;
  type metadata accessor for ColorBox<Color.MixProvider>(0, &lazy cache variable for type metadata for ColorBox<Color.SettingOpacityProvider>, lazy protocol witness table accessor for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider, &type metadata for Color.SettingOpacityProvider);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;

  return v4;
}

void type metadata accessor for ColorBox<Color.MixProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for ColorBox(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

Swift::Int Color.SettingOpacityProvider.hashValue.getter(uint64_t a1, float a2)
{
  Hasher.init(_seed:)();
  (*(*a1 + 152))(v6);
  v4 = 0.0;
  if (a2 != 0.0)
  {
    v4 = a2;
  }

  Hasher._combine(_:)(LODWORD(v4));
  return Hasher._finalize()();
}

uint64_t protocol witness for ColorProvider.resolve(in:) in conformance Color.SettingOpacityProvider(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  return (*(*v2 + 112))(&v4);
}

CGColorRef protocol witness for ColorProvider.staticColor.getter in conformance Color.SettingOpacityProvider()
{
  v1 = v0[2];
  v2 = (*(**v0 + 136))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  CopyWithAlpha = CGColorCreateCopyWithAlpha(v2, v1);

  return CopyWithAlpha;
}

BOOL specialized static Color.MixProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 20);
  if (*a1 != *a2 && ((*(**a1 + 88))() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v5)
  {
    if (v3 == v6)
    {
      return v4 == v7;
    }

    return 0;
  }

  v8 = (*(*v2 + 88))(v5);
  result = 0;
  if ((v8 & 1) != 0 && v3 == v6)
  {
    return v4 == v7;
  }

  return result;
}

uint64_t static StyleWriterOverrideModifier.injectStyleOverride<A>(in:requiring:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1[1];
  v20[0] = *a1;
  v20[1] = v11;
  v13 = *a1;
  v12 = a1[1];
  v20[2] = a1[2];
  v17 = v13;
  v18 = v12;
  v19 = a1[2];
  v14 = *(a6 + 8);
  outlined init with copy of _GraphInputs(v20, v21);
  v15 = v14(&v17, a4, a6);
  v21[0] = v17;
  v21[1] = v18;
  v21[2] = v19;
  result = outlined destroy of _GraphInputs(v21);
  if (v15)
  {
    return (*(a5 + 32))(a1, a3, a5);
  }

  return result;
}

uint64_t AttributedString.TextAlignment.init(_:layoutDirection:writingMode:)@<X0>(char a1@<W0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    v6 = type metadata accessor for AttributedString.TextAlignment();
    v7 = *(*(v6 - 8) + 104);
    if (a1)
    {
      if (a1 == 1)
      {
        v8 = MEMORY[0x1E6965578];
      }

      else
      {
        v8 = MEMORY[0x1E6965570];
      }
    }

    else
    {
      v8 = MEMORY[0x1E6965568];
    }

    v10 = *v8;
    v11 = a4;
    goto LABEL_16;
  }

  if (!a1)
  {
    if ((*a2 & 1) == 0)
    {
LABEL_14:
      v9 = MEMORY[0x1E6965568];
      goto LABEL_15;
    }

LABEL_10:
    v9 = MEMORY[0x1E6965570];
    goto LABEL_15;
  }

  if (a1 != 1)
  {
    if (*a2)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v9 = MEMORY[0x1E6965578];
LABEL_15:
  v12 = *v9;
  v13 = type metadata accessor for AttributedString.TextAlignment();
  v7 = *(*(v13 - 8) + 104);
  v6 = v13;
  v11 = a4;
  v10 = v12;
LABEL_16:

  return v7(v11, v10, v6);
}

SwiftUI::TextAlignment_optional __swiftcall NSParagraphStyle.textAlignment(for:)(SwiftUI::LayoutDirection a1)
{
  v1 = a1;
  type metadata accessor for (AttributedString.TextAlignment, LayoutDirection)(0);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.TextAlignment?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString.TextAlignment();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  NSParagraphStyle.textAlignment.getter(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of AttributedString.TextAlignment?(v8, type metadata accessor for AttributedString.TextAlignment?);
    return 3;
  }

  (*(v10 + 32))(v12, v8, v9);
  v15 = *(v3 + 48);
  (*(v10 + 16))(v5, v12, v9);
  v5[v15] = v13;
  v16 = (*(v10 + 88))(v5, v9);
  if (v16 == *MEMORY[0x1E6965568])
  {
    if (v13)
    {
LABEL_6:
      v17 = *(v10 + 8);
      v17(v5, v9);
      v17(v12, v9);
      return 2;
    }
  }

  else
  {
    if (v16 == *MEMORY[0x1E6965578])
    {
      v18 = *(v10 + 8);
      v18(v5, v9);
      v18(v12, v9);
      return 1;
    }

    if (v16 != *MEMORY[0x1E6965570])
    {
      outlined destroy of AttributedString.TextAlignment?(v5, type metadata accessor for (AttributedString.TextAlignment, LayoutDirection));
      (*(v10 + 8))(v12, v9);
      return 3;
    }

    if (!v13)
    {
      goto LABEL_6;
    }
  }

  v19 = *(v10 + 8);
  v19(v5, v9);
  v19(v12, v9);
  return 0;
}

Swift::Int TextAlignment.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  return Hasher._finalize()();
}

uint64_t static TextAlignment.unwrap(codingProxy:)(char a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

unsigned __int8 *protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance TextAlignment@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 == 1;
  }

  *a2 = v3;
  return result;
}

SwiftUI::TextAlignment_optional __swiftcall TextAlignment.init(protobufValue:)(Swift::UInt protobufValue)
{
  if (protobufValue >= 4)
  {
    return 3;
  }

  else
  {
    return (0x2010003u >> (8 * protobufValue));
  }
}

unint64_t protocol witness for ProtobufEnum.init(protobufValue:) in conformance TextAlignment@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x2010003u >> (8 * result);
  if (result >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Text.AlignmentStrategy.Storage.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x614274756F79616CLL;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance Text.AlignmentStrategy.Storage.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614274756F79616CLL && a2 == 0xEB00000000646573;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000018DD82C20 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Text.AlignmentStrategy.Storage.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Text.AlignmentStrategy.Storage.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Text.AlignmentStrategy.Storage.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys>, lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys, &unk_1F00B0E18, MEMORY[0x1E69E6F58]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - v5;
  type metadata accessor for KeyedEncodingContainer<Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys>, lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys, &unk_1F00B0DF8, v3);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v20 = &v19 - v7;
  type metadata accessor for KeyedEncodingContainer<Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Text.AlignmentStrategy.Storage.CodingKeys>, lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys, &unk_1F00B0DD8, v3);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = (v10 + 8);
  if (v13)
  {
    v27 = 1;
    lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys();
    v15 = v23;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v24;
    v16 = v25;
  }

  else
  {
    v26 = 0;
    lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys();
    v15 = v20;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v21;
    v16 = v22;
  }

  (*(v17 + 8))(v15, v16);
  return (*v14)(v12, v9);
}