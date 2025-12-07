void storeEnumTagSinglePayload for ArrayWith2Inline(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + *(v5 + 80)) & ~*(v5 + 80)) + v6;
  if (v7 > v6)
  {
    v6 = v7;
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = v6 + 1;
  if (a3 < 0xFD)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 252) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFC)
  {
    v10 = a2 - 253;
    if (v8 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v6 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_41:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v6] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_26;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t type metadata completion function for ArrayWith2Inline.Storage(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v5 = &v3;
    v6 = MEMORY[0x1E69E5D20] + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ArrayWith2Inline(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = v6 + v7;
  if (((v6 + v8) & ~v8) + v6 > v6)
  {
    v6 += (v6 + v7) & ~v7;
  }

  if (v6 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v6;
  }

  v11 = v7 & 0x100000;
  if (v8 > 7 || v11 != 0 || (v10 + 1) > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
LABEL_15:

    return v3;
  }

  v16 = a2[v10];
  v17 = v16 - 3;
  if (v16 >= 3)
  {
    if (v10 <= 3)
    {
      v18 = v10;
    }

    else
    {
      v18 = 4;
    }

    if (v18 <= 1)
    {
      if (!v18)
      {
        goto LABEL_31;
      }

      v19 = *a2;
    }

    else if (v18 == 2)
    {
      v19 = *a2;
    }

    else if (v18 == 3)
    {
      v19 = *a2 | (a2[2] << 16);
    }

    else
    {
      v19 = *a2;
    }

    v20 = (v19 | (v17 << (8 * v10))) + 3;
    v16 = v19 + 3;
    if (v10 < 4)
    {
      v16 = v20;
    }
  }

LABEL_31:
  switch(v16)
  {
    case 2u:
      *__dst = *a2;
      *(__dst + v10) = 2;
      goto LABEL_15;
    case 1u:
      v21 = ~v8;
      v22 = *(v5 + 16);
      (v22)(__dst);
      v22((v3 + v9) & v21, &a2[v9] & v21, v4);
      *(v3 + v10) = 1;
      return v3;
    case 0u:
      (*(v5 + 16))(__dst);
      *(v3 + v10) = 0;
      return v3;
  }

  return memcpy(__dst, a2, v10 + 1);
}

uint64_t getEnumTag for ArrayWith2Inline.Storage(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 64);
  v4 = ((v3 + *(v2 + 80)) & ~*(v2 + 80)) + v3;
  if (v4 > v3)
  {
    v3 = v4;
  }

  v5 = 8;
  if (v3 > 8)
  {
    v5 = v3;
  }

  v6 = a1[v5];
  v7 = v6 - 3;
  if (v6 >= 3)
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
        return v6;
      }

      v9 = *a1;
    }

    else if (v8 == 2)
    {
      v9 = *a1;
    }

    else if (v8 == 3)
    {
      v9 = *a1 | (a1[2] << 16);
    }

    else
    {
      v9 = *a1;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 3;
    LODWORD(v6) = v9 + 3;
    if (v5 >= 4)
    {
      return v6;
    }

    else
    {
      return v10;
    }
  }

  return v6;
}

void destructiveInjectEnumTag for ArrayWith2Inline.Storage(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + *(v3 + 80)) & ~*(v3 + 80)) + v4;
  if (v5 > v4)
  {
    v4 = v5;
  }

  if (v4 <= 8)
  {
    v6 = 8;
  }

  else
  {
    v6 = v4;
  }

  if (a2 > 2)
  {
    v7 = a2 - 3;
    if (v6 < 4)
    {
      a1[v6] = (v7 >> (8 * v6)) + 3;
      if (v6)
      {
        v9 = v7 & ~(-1 << (8 * v6));
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v9;
          a1[2] = BYTE2(v9);
        }

        else if (v6 == 2)
        {
          *a1 = v9;
        }

        else
        {
          *a1 = v7;
        }
      }
    }

    else
    {
      a1[v6] = 3;
      bzero(a1, v6);
      *a1 = v7;
    }
  }

  else
  {
    a1[v6] = a2;
  }
}

uint64_t partial apply for closure #1 in ArrayWith2Inline.withUnsafeMutableBufferPointer<A>(_:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(v3 + 32);
  v9[0] = UnsafeMutableBufferPointer.init(start:count:)();
  v9[1] = v7;
  result = v6(v9);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Edge@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Edge.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

SwiftUI::Edge __swiftcall Edge.init(_horizontal:)(SwiftUI::HorizontalEdge _horizontal)
{
  if (_horizontal)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

uint64_t Edge.Set.init(_:)(char a1)
{
  if ((a1 & 2) != 0)
  {
    v1 = 15;
  }

  else
  {
    v1 = 10;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return ((a1 << 6) >> 7) & 5;
  }
}

SwiftUI::VerticalEdge_optional __swiftcall VerticalEdge.init(rawValue:)(Swift::Int8 rawValue)
{
  if (rawValue == 1)
  {
    v1.value = SwiftUI_VerticalEdge_bottom;
  }

  else
  {
    v1.value = SwiftUI_VerticalEdge_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void Edge.Set.viewDebugValue.getter(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  v3 = 0;
  v4 = a1;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = outlined read-only object #0 of Edge.Set.viewDebugValue.getter[v3 + 32];
    if (v8 - 9 < 0xEF || (v8 & 0x80) != 0 || v8 > 7 || ((1 << v8) & ~v4) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + v7 + 32) = v8;
    }

    ++v3;
  }

  while (v3 != 4);
  type metadata accessor for [HorizontalDirection](0, &lazy cache variable for type metadata for [Edge], &type metadata for Edge);
  a2[3] = v9;
  *a2 = v5;
}

uint64_t static Edge.unwrap(codingProxy:)(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

unsigned __int8 *protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Edge@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 4)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t specialized Edge.init(rawValue:)(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

void lazy protocol witness table accessor for type Edge.Set and conformance Edge.Set()
{
  if (!lazy protocol witness table cache variable for type Edge.Set and conformance Edge.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for Edge.Set, &type metadata for Edge.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Edge.Set and conformance Edge.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type Edge.Set and conformance Edge.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for Edge.Set, &type metadata for Edge.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Edge.Set and conformance Edge.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type Edge.Set and conformance Edge.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for Edge.Set, &type metadata for Edge.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Edge.Set and conformance Edge.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type Edge.Set and conformance Edge.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for Edge.Set, &type metadata for Edge.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Edge.Set and conformance Edge.Set);
  }
}

void lazy protocol witness table accessor for type HorizontalEdge.Set and conformance HorizontalEdge.Set()
{
  if (!lazy protocol witness table cache variable for type HorizontalEdge.Set and conformance HorizontalEdge.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for HorizontalEdge.Set, &type metadata for HorizontalEdge.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HorizontalEdge.Set and conformance HorizontalEdge.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type HorizontalEdge.Set and conformance HorizontalEdge.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for HorizontalEdge.Set, &type metadata for HorizontalEdge.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HorizontalEdge.Set and conformance HorizontalEdge.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type HorizontalEdge.Set and conformance HorizontalEdge.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for HorizontalEdge.Set, &type metadata for HorizontalEdge.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HorizontalEdge.Set and conformance HorizontalEdge.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type HorizontalEdge.Set and conformance HorizontalEdge.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for HorizontalEdge.Set, &type metadata for HorizontalEdge.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HorizontalEdge.Set and conformance HorizontalEdge.Set);
  }
}

void lazy protocol witness table accessor for type VerticalEdge.Set and conformance VerticalEdge.Set()
{
  if (!lazy protocol witness table cache variable for type VerticalEdge.Set and conformance VerticalEdge.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for VerticalEdge.Set, &type metadata for VerticalEdge.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type VerticalEdge.Set and conformance VerticalEdge.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type VerticalEdge.Set and conformance VerticalEdge.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for VerticalEdge.Set, &type metadata for VerticalEdge.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type VerticalEdge.Set and conformance VerticalEdge.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type VerticalEdge.Set and conformance VerticalEdge.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for VerticalEdge.Set, &type metadata for VerticalEdge.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type VerticalEdge.Set and conformance VerticalEdge.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type VerticalEdge.Set and conformance VerticalEdge.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for VerticalEdge.Set, &type metadata for VerticalEdge.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type VerticalEdge.Set and conformance VerticalEdge.Set);
  }
}

double static ViewSize.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 ViewGeometry.init(origin:dimensions:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = a1->n128_u64[0];
  v5 = a1->n128_u64[1];
  a2->n128_f64[0] = a3;
  a2->n128_f64[1] = a4;
  a2[1].n128_u64[0] = v4;
  a2[1].n128_u64[1] = v5;
  result = a1[1];
  v7 = a1[2];
  a2[2] = result;
  a2[3] = v7;
  return result;
}

double ViewDimensions.guideComputer.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

__n128 ViewDimensions.size.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ViewDimensions.size.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  return result;
}

__n128 ViewDimensions.init(guideComputer:size:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  *(a3 + 8) = v3;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 16) = *a2;
  *(a3 + 32) = v5;
  return result;
}

void *ViewDimensions.init(guideComputer:size:proposal:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = result[1];
  v6 = *a2;
  v7 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = NAN;
  }

  if (*(a2 + 24))
  {
    v7 = NAN;
  }

  *a3 = *result;
  *(a3 + 8) = v5;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  return result;
}

uint64_t ViewSize.init(_:proposal:)@<X0>(uint64_t result@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = *result;
  v5 = *(result + 16);
  if (*(result + 8))
  {
    v4 = NAN;
  }

  if (*(result + 24))
  {
    v5 = NAN;
  }

  *a2 = a3;
  a2[1] = a4;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

void static ViewSize.fixed(_:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a2;
  a1[3] = a3;
}

double (*ViewSize.width.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

double ViewSize.width.modify(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

double (*ViewSize.height.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return ViewSize.height.modify;
}

double ViewSize.height.modify(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 8) = *a1;
  return result;
}

void key path getter for ViewSize.proposal : ViewSize(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v11 = *a1;
  v12 = v3;
  ViewSize.proposal.getter(&v7);
  v4 = v8;
  v5 = v9;
  v6 = v10;
  *a2 = v7;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
}

uint64_t ViewSize.proposal.setter(uint64_t result)
{
  v2 = *result;
  v3 = *(result + 16);
  if (*(result + 8))
  {
    v2 = NAN;
  }

  if (*(result + 24))
  {
    v3 = NAN;
  }

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

void (*ViewSize.proposal.modify(uint64_t *a1))(void **a1)
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
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (~v4 & 0x7FF0000000000000) == 0 && (v4 & 0xFFFFFFFFFFFFFLL) != 0;
  if (v6)
  {
    v4 = 0;
  }

  v7 = (~v5 & 0x7FF0000000000000) == 0 && (v5 & 0xFFFFFFFFFFFFFLL) != 0;
  if (v7)
  {
    v5 = 0;
  }

  *v3 = v4;
  *(v3 + 8) = v6;
  *(v3 + 16) = v5;
  *(v3 + 24) = v7;
  return ViewSize.proposal.modify;
}

void ViewSize.proposal.modify(void **a1)
{
  v1 = *a1;
  v2 = *(v1 + 4);
  v3 = *v1;
  v4 = *(v1 + 2);
  if (*(v1 + 8))
  {
    v3 = NAN;
  }

  if (*(v1 + 24))
  {
    v4 = NAN;
  }

  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  free(v1);
}

__n128 static ViewSize.invalidValue.getter@<Q0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for invalidValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = static CGSize.invalidValue;
  *a1 = static CGSize.invalidValue;
  *(a1 + 16) = result;
  return result;
}

double ViewSize.subscript.getter(char a1)
{
  v2 = v1 + 8;
  if ((a1 & 1) == 0)
  {
    v2 = v1;
  }

  return *v2;
}

double (*ViewSize.subscript.modify(uint64_t a1, char a2))(uint64_t a1)
{
  *(a1 + 8) = v2;
  *(a1 + 16) = a2;
  v3 = v2 + 1;
  if ((a2 & 1) == 0)
  {
    v3 = v2;
  }

  *a1 = *v3;
  return CGPoint.subscript.modify;
}

int8x16_t ViewSize.inset(by:)@<Q0>(uint64_t a1@<X8>, float64_t a2@<D0>, float64x2_t a3@<Q1>, float64_t a4@<D2>, float64x2_t a5@<Q3>)
{
  v6 = v5->f64[0];
  a3.f64[1] = a2;
  a5.f64[1] = a4;
  v7 = vaddq_f64(a3, a5);
  v8 = v5->f64[1] - v7.f64[1];
  v9 = 0.0;
  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  if (v6 - v7.f64[0] >= 0.0)
  {
    v9 = v6 - v7.f64[0];
  }

  *a1 = v9;
  *(a1 + 8) = v8;
  v10 = v5[1];
  v11 = vdupq_n_s64(0x7FF0000000000000uLL);
  v12 = vsubq_f64(v10, v7);
  result = vbslq_s8(vbicq_s8(vceqq_s64(vandq_s8(v10, v11), v11), vceqzq_s64(vandq_s8(v10, vdupq_n_s64(0xFFFFFFFFFFFFFuLL)))), vdupq_n_s64(0x7FF8000000000000uLL), vandq_s8(v12, vcgezq_f64(v12)));
  *(a1 + 16) = result;
  return result;
}

void ViewSize.animatableData.setter(double a1, double a2)
{
  *v2 = a1;
  v2[1] = a2;
  v2[2] = a1;
  v2[3] = a2;
}

__n128 (*ViewSize.animatableData.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return ViewSize.animatableData.modify;
}

__n128 ViewSize.animatableData.modify(__n128 *a1)
{
  v1 = a1[1].n128_u64[0];
  result = *a1;
  *v1 = *a1;
  v1[1] = result;
  return result;
}

__n128 protocol witness for Animatable.animatableData.setter in conformance ViewSize(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  v1[1] = result;
  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance ViewSize(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance ViewSize;
}

void ViewGeometry.animatableData.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[4] = a3;
  v4[5] = a4;
  v4[6] = a3;
  v4[7] = a4;
}

void (*ViewGeometry.animatableData.modify(uint64_t *a1))(void **a1)
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
  v4 = v1[2];
  *v3 = *v1;
  *(v3 + 16) = v4;
  return ViewGeometry.animatableData.modify;
}

void ViewGeometry.animatableData.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[4];
  v3 = *(v1 + 1);
  *v2 = *v1;
  v2[2] = v3;
  v2[3] = v3;
  free(v1);
}

double ViewGeometry.dimensions.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  v3 = *(v1 + 48);
  *(a1 + 16) = *(v1 + 32);
  *(a1 + 32) = v3;

  return result;
}

__n128 ViewGeometry.dimensions.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u64[1];

  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  result = a1[1];
  v6 = a1[2];
  v1[2] = result;
  v1[3] = v6;
  return result;
}

__n128 ViewGeometry.init(dimensions:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1->n128_u64[0];
  v3 = a1->n128_u64[1];
  *a2 = 0uLL;
  a2[1].n128_u64[0] = v2;
  a2[1].n128_u64[1] = v3;
  result = a1[1];
  v5 = a1[2];
  a2[2] = result;
  a2[3] = v5;
  return result;
}

float64x2_t ViewGeometry.init(placement:dimensions:)@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = a2[1];
  v4 = a2[2];
  result = vsubq_f64(a1[3], vmulq_f64(a1[2], v3));
  v6 = a2->f64[0];
  v7 = a2->f64[1];
  *a3 = result;
  a3[1].f64[0] = v6;
  a3[1].f64[1] = v7;
  a3[2] = v3;
  a3[3] = v4;
  return result;
}

__n128 protocol witness for Animatable.animatableData.getter in conformance ViewGeometry@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 32);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 protocol witness for Animatable.animatableData.setter in conformance ViewGeometry(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[2] = v3;
  v1[3] = v3;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance ViewGeometry(uint64_t **a1))(void *a1)
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
  v2[4] = ViewGeometry.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient.AbsolutePaint;
}

void __swiftcall ViewFrame.init(origin:size:)(SwiftUI::ViewFrame *__return_ptr retstr, CGPoint origin, SwiftUI::ViewSize size)
{
  retstr->origin.x = origin.x;
  retstr->origin.y = origin.y;
  v4 = v3[1];
  retstr->size.value = *v3;
  retstr->size._proposal = v4;
}

void __swiftcall ViewFrame.init(size:)(SwiftUI::ViewFrame *__return_ptr retstr, SwiftUI::ViewSize size)
{
  retstr->origin.x = 0.0;
  retstr->origin.y = 0.0;
  v3 = v2[1];
  retstr->size.value = *v2;
  retstr->size._proposal = v3;
}

__C::CGRect __swiftcall CGRect.init(_:)(SwiftUI::ViewFrame *a1)
{
  x = a1->origin.x;
  y = a1->origin.y;
  width = a1->size.value.width;
  height = a1->size.value.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

void ViewFrame.animatableData.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void (*ViewFrame.animatableData.modify(uint64_t *a1))(void **a1)
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
  v4 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v4;
  return ViewFrame.animatableData.modify;
}

void ViewFrame.animatableData.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[4];
  v3 = *(v1 + 1);
  *v2 = *v1;
  v2[1] = v3;
  free(v1);
}

__n128 protocol witness for Animatable.animatableData.getter in conformance ViewFrame@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 protocol witness for Animatable.animatableData.setter in conformance ViewFrame(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance ViewFrame(uint64_t **a1))()
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
  v2[4] = ViewFrame.animatableData.modify(v2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

double static ViewDimensions.invalidValue.getter@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for invalidValue != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = *(&static ViewDimensions.invalidValue + 1);
  *a1 = static ViewDimensions.invalidValue;
  *(a1 + 1) = v2;
  v3 = unk_1ED539E38;
  a1[1] = xmmword_1ED539E28;
  a1[2] = v3;

  return result;
}

double one-time initialization function for zero()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  static ViewDimensions.zero = static LayoutComputer.defaultValue;
  xmmword_1EAB13A60 = 0u;
  unk_1EAB13A70 = 0u;

  return result;
}

{
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  static ViewGeometry.zero = 0uLL;
  xmmword_1EAB13B40 = static ViewDimensions.zero;
  xmmword_1EAB13B50 = xmmword_1EAB13A60;
  unk_1EAB13B60 = unk_1EAB13A70;

  return result;
}

{
  static Duration.zero.getter();
  v0 = Duration.components.getter();
  result = v1 * 1.0e-18 + v0;
  *&static Calendar.Component.Magnitude.zero = result;
  return result;
}

{
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  static ViewSpacing.zero = static Spacing.zero;
  byte_1ED52A120 = 2;

  return result;
}

double static ViewDimensions.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for zero != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = *(&static ViewDimensions.zero + 1);
  *a1 = static ViewDimensions.zero;
  *(a1 + 1) = v2;
  v3 = unk_1EAB13A70;
  a1[1] = xmmword_1EAB13A60;
  a1[2] = v3;

  return result;
}

double ViewDimensions.at(_:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = *v3;
  v5 = v3[1];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v3 + 2);
  *(a1 + 32) = *(v3 + 1);
  *(a1 + 48) = v6;

  return result;
}

double ViewDimensions.centered(in:)@<D0>(float64x2_t *a1@<X8>, float64x2_t a2@<Q0>, float64_t a3@<D1>)
{
  a2.f64[1] = a3;
  v4 = v3[1];
  v5 = v3[2];
  __asm { FMOV            V3.2D, #0.5 }

  v11 = v3->f64[0];
  v12 = v3->f64[1];
  *a1 = vaddq_f64(vmulq_f64(vsubq_f64(a2, v4), _Q3), 0);
  a1[1].f64[0] = v11;
  a1[1].f64[1] = v12;
  a1[2] = v4;
  a1[3] = v5;

  return result;
}

uint64_t static ViewGeometry.zero.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for zero != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EAB13B40;
  v7[0] = static ViewGeometry.zero;
  v7[1] = xmmword_1EAB13B40;
  v2 = xmmword_1EAB13B50;
  v3 = unk_1EAB13B60;
  v7[2] = xmmword_1EAB13B50;
  v7[3] = unk_1EAB13B60;
  *a1 = static ViewGeometry.zero;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of ViewGeometry(v7, &v6);
}

Swift::Void __swiftcall ViewGeometry.finalizeLayoutDirection(_:parentSize:)(SwiftUI::LayoutDirection _, CGSize parentSize)
{
  if (*_ == 1)
  {
    width = parentSize.width;
    v4.origin.x = *v2;
    v4.origin.y = v2[1];
    v4.size.width = v2[4];
    v4.size.height = v2[5];
    *v2 = width - CGRectGetMaxX(v4);
  }
}

BOOL specialized static ViewFrame.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v10 = v2;
  v11 = v3;
  v6 = *(a1 + 32);
  v9[0] = *(a1 + 16);
  v9[1] = v6;
  v7 = *(a2 + 32);
  v8[0] = *(a2 + 16);
  v8[1] = v7;
  return specialized static ViewSize.== infix(_:_:)(v9, v8);
}

BOOL specialized static ViewFrame.shouldFinishEarly(in:)(double *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v8 = a1[6];
  v7 = a1[7];
  EnvironmentValues.pixelLength.getter();
  if (fabs(v2 * v2 + v6 * v6) >= v9 * v9)
  {
    return 0;
  }

  if (fabs(v1 * v1 + v5 * v5) >= v9 * v9)
  {
    return 0;
  }

  v10 = (v9 + v9) * (v9 + v9);
  return fabs(v4 * v4 + v8 * v8) < v10 && fabs(v3 * v3 + v7 * v7) < v10;
}

void instantiation function for generic protocol witness table for ViewFrame(uint64_t a1)
{
  lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame();
  *(a1 + 8) = v2;
  lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame();
  *(a1 + 16) = v3;
}

uint64_t initializeWithCopy for ViewDimensions(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 2);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v4;

  return a1;
}

uint64_t *assignWithCopy for ViewDimensions(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  return a1;
}

uint64_t *assignWithTake for ViewDimensions(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  v4 = *(a2 + 2);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = v4;
  return a1;
}

uint64_t assignWithTake for ViewGeometry(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  return a1;
}

uint64_t getEnumTagSinglePayload for ViewGeometry(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ViewGeometry(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

SwiftUI::_FixedSizeLayout __swiftcall _FixedSizeLayout.init(horizontal:vertical:)(Swift::Bool horizontal, Swift::Bool vertical)
{
  if (vertical)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (v2 & 0xFFFE | horizontal);
}

_WORD *storeEnumTagSinglePayload for _FixedSizeLayout(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t EnvironmentValues.gestureConstantsProvider.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE031CorePlatfromProvidersDefinitionI033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt1g5(v1);
  }

  else if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(*v0) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  static CorePlatformProvidersDefinition.providers.getter(v3);
  return v4;
}

uint64_t one-time initialization function for gestureConstantsProvider(uint64_t a1)
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.gestureConstantsProvider = result;
  return result;
}

uint64_t specialized implicit closure #1 in _GraphInputs.gestureConstantsProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.gestureConstantsProvider.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Void __swiftcall _GraphInputs.pushStableIndex(_:)(Swift::Int a1)
{
  if (*(v1 + 37))
  {
    specialized _GraphInputs.pushScope<A>(id:)(a1);
  }
}

unint64_t _DisplayList_StableIdentityMap.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(*result), (v5 & 1) != 0))
  {
    v6 = *(v4 + 56) + 24 * result;
    *a2 = *v6;
    *(a2 + 16) = *(v6 + 16);
    *(a2 + 24) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
  }

  return result;
}

__n128 _DisplayList_StableIdentity.hash.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u32[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u32[0] = v2;
  return result;
}

__n128 _DisplayList_StableIdentity.hash.setter(__n128 *a1)
{
  v2 = a1[1].n128_u32[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = v2;
  return result;
}

__n128 _DisplayList_StableIdentity.init(hash:serial:)@<Q0>(__n128 *a1@<X0>, unsigned __int32 a2@<W1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u32[0];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u32[0] = v3;
  a3[1].n128_u32[1] = a2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance _DisplayList_StableIdentity.CodingKeys()
{
  if (*v0)
  {
    return 0x6C6169726573;
  }

  else
  {
    return 1752392040;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance _DisplayList_StableIdentity.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1752392040 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6C6169726573 && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _DisplayList_StableIdentity.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _DisplayList_StableIdentity.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _DisplayList_StableIdentity.encode(to:)(void *a1)
{
  v2 = v1;
  type metadata accessor for KeyedEncodingContainer<_DisplayList_StableIdentity.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<_DisplayList_StableIdentity.CodingKeys>, lazy protocol witness table accessor for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys, &unk_1F0050358, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = *(v2 + 4);
  v17 = *(v2 + 5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v2[1];
  v14 = *v2;
  v15 = v10;
  v16 = v9;
  v18 = 0;
  lazy protocol witness table accessor for type StrongHash and conformance StrongHash();
  v11 = v13;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v11)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void _DisplayList_StableIdentity.hash(into:)()
{
  v1 = *(v0 + 20);
  Hasher.combine(bytes:)();
  Hasher._combine(_:)(v1);
}

Swift::Int _DisplayList_StableIdentity.hashValue.getter()
{
  v1 = *(v0 + 20);
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t _DisplayList_StableIdentity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  type metadata accessor for KeyedEncodingContainer<_DisplayList_StableIdentity.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<_DisplayList_StableIdentity.CodingKeys>, lazy protocol witness table accessor for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys, &unk_1F0050358, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v14;
    v17 = 0;
    lazy protocol witness table accessor for type StrongHash and conformance StrongHash();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v15;
    v10 = v16;
    LOBYTE(v15) = 1;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *v9 = v13;
    *(v9 + 16) = v10;
    *(v9 + 20) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _DisplayList_StableIdentity()
{
  v1 = *(v0 + 20);
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance _DisplayList_StableIdentity()
{
  v1 = *(v0 + 20);
  Hasher.combine(bytes:)();
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _DisplayList_StableIdentity(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(v1 + 20);
  Hasher.combine(bytes:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int _DisplayList_StableIdentityMap.subscript.setter(uint64_t *a1, Swift::UInt32 *a2)
{
  v3 = v2;
  v4 = *a2;
  if (a1[3])
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(*a2);
    if (v6)
    {
      v7 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v14 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v9 = v14;
      }

      result = specialized _NativeDictionary._delete(at:)(v7, v9);
      *v3 = v9;
    }
  }

  else
  {
    v11 = a1[1];
    v10 = a1[2];
    v12 = *a1;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v11, v10, v4, v13);
    *v2 = v15;
  }

  return result;
}

void (*_DisplayList_StableIdentityMap.subscript.modify(void *a1, Swift::UInt32 *a2))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *a2;
  *(v6 + 9) = *a2;
  v8 = *v2;
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v10 & 1) != 0))
  {
    v11 = 0;
    v12 = *(v8 + 56) + 24 * v9;
    v13 = *(v12 + 16);
    *(v6 + 1) = *v12;
    v6[3] = v13;
  }

  else
  {
    v6[1] = 0;
    v6[2] = 0;
    v11 = 1;
    v6[3] = 0;
  }

  *(v6 + 32) = v11;
  return _DisplayList_StableIdentityMap.subscript.modify;
}

void _DisplayList_StableIdentityMap.subscript.modify(uint64_t *a1)
{
  v1 = *a1;
  specialized Dictionary.subscript.setter(*(*a1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(*a1 + 36));

  free(v1);
}

Swift::Void __swiftcall _DisplayList_StableIdentityMap.formUnion(_:)(SwiftUI::_DisplayList_StableIdentityMap a1)
{
  v2 = *a1.map._rawValue;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  *v1 = 0x8000000000000000;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v2, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v5);

  v4 = v5;

  *v1 = v4;
}

uint64_t _DisplayList_StableIdentityRoot.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(result + 24) = 0;
  return result;
}

uint64_t _DisplayList_StableIdentityRoot.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  return result;
}

void _DisplayList_StableIdentityRoot.subscript.getter(Swift::UInt32 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45 = *a1;
  swift_beginAccess();
  if (!*(v2 + 24))
  {
    swift_beginAccess();
    v4 = *(*(v2 + 16) + 16);
    if (v4)
    {
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC8];
      v49 = *MEMORY[0x1E698D3F8];
      v47 = v3;
      while (1)
      {
        while (1)
        {
          swift_beginAccess();
          if (v5 < 0)
          {
            goto LABEL_54;
          }

          v7 = *(v3 + 16);
          v8 = *(v7 + 2);
          if (v5 >= v8)
          {
            goto LABEL_55;
          }

          v9 = *&v7[8 * v5 + 32];
          Attribute = AGWeakAttributeGetAttribute();
          swift_endAccess();
          if (Attribute != v49)
          {
            break;
          }

          if (v5 != --v4)
          {
            if (v4 >= v8)
            {
              goto LABEL_58;
            }

            v11 = *&v7[8 * v4 + 32];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v3 + 16) = v7;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
            }

            v13 = *(v7 + 2);
            if (v5 >= v13)
            {
              goto LABEL_59;
            }

            *&v7[8 * v5 + 32] = v11;
            if (v4 >= v13)
            {
              goto LABEL_60;
            }

            *&v7[8 * v4 + 32] = v9;
          }

          if (!*(v7 + 2))
          {
            goto LABEL_56;
          }

          v14 = swift_isUniquelyReferenced_nonNull_native();
          *(v3 + 16) = v7;
          if (v14)
          {
            v15 = *(v7 + 2);
            if (!v15)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
            v15 = *(v7 + 2);
            if (!v15)
            {
              goto LABEL_57;
            }
          }

          *(v7 + 2) = v15 - 1;
          *(v3 + 16) = v7;
          if (v5 >= v4)
          {
            goto LABEL_44;
          }
        }

        v48 = v5;
        v16 = *(AGGraphGetValue() + 32);
        swift_bridgeObjectRetain_n();
        v17 = swift_isUniquelyReferenced_nonNull_native();
        v51 = v6;
        v18 = -1 << *(v16 + 32);
        if (-v18 < 64)
        {
          v19 = ~(-1 << -v18);
        }

        else
        {
          v19 = -1;
        }

        v20 = v19 & *(v16 + 64);
        v21 = (63 - v18) >> 6;

        for (i = 0; v20; i = v23)
        {
          while (1)
          {
            v23 = i;
LABEL_31:
            v25 = __clz(__rbit64(v20)) | (v23 << 6);
            v26 = *(*(v16 + 48) + 4 * v25);
            v27 = *(v16 + 56) + 24 * v25;
            v50 = *v27;
            v28 = *(v27 + 16);
            v30 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
            v31 = v6[2];
            v32 = (v29 & 1) == 0;
            v33 = v31 + v32;
            if (__OFADD__(v31, v32))
            {
              goto LABEL_52;
            }

            v34 = v29;
            if (v6[3] >= v33)
            {
              if ((v17 & 1) == 0)
              {
                specialized _NativeDictionary.copy()();
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v17 & 1);
              v35 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
              if ((v34 & 1) != (v36 & 1))
              {
                goto LABEL_62;
              }

              v30 = v35;
            }

            v20 &= v20 - 1;
            if ((v34 & 1) == 0)
            {
              break;
            }

            v17 = 1;
            v6 = v51;
            i = v23;
            if (!v20)
            {
              goto LABEL_27;
            }
          }

          v6 = v51;
          v51[(v30 >> 6) + 8] |= 1 << v30;
          *(v51[6] + 4 * v30) = v26;
          v37 = v51[7] + 24 * v30;
          *v37 = v50;
          *(v37 + 16) = v28;
          v38 = v51[2];
          v39 = __OFADD__(v38, 1);
          v40 = v38 + 1;
          if (v39)
          {
            goto LABEL_53;
          }

          v51[2] = v40;
          v17 = 1;
        }

LABEL_27:
        v24 = i;
        while (1)
        {
          v23 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
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
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          if (v23 >= v21)
          {
            break;
          }

          v20 = *(v16 + 64 + 8 * v23);
          ++v24;
          if (v20)
          {
            goto LABEL_31;
          }
        }

        outlined consume of Set<EventID>.Iterator._Variant(v16);

        swift_bridgeObjectRelease_n();
        v5 = v48 + 1;
        v3 = v47;
        if (v48 + 1 >= v4)
        {
          goto LABEL_44;
        }
      }
    }

    v6 = MEMORY[0x1E69E7CC8];
LABEL_44:
    *(v3 + 24) = v6;
  }

  swift_beginAccess();
  v41 = *(v3 + 24);
  if (!v41)
  {
    goto LABEL_61;
  }

  if (*(v41 + 16) && (v42 = specialized __RawDictionaryStorage.find<A>(_:)(v45), (v43 & 1) != 0))
  {
    v44 = *(v41 + 56) + 24 * v42;
    *a2 = *v44;
    *(a2 + 16) = *(v44 + 16);
    *(a2 + 24) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
  }

  swift_endAccess();
}

uint64_t _DisplayList_StableIdentityRoot.deinit()
{

  return v0;
}

uint64_t _DisplayList_StableIdentityRoot.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static _DisplayList_StableIdentityScope.defaultValue.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  return static _DisplayList_StableIdentityScope.defaultValue;
}

__n128 _DisplayList_StableIdentityScope.hash.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u32[0] = v2;
  return result;
}

double _DisplayList_StableIdentityScope.map.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 32);

  return result;
}

void _DisplayList_StableIdentityScope.map.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 32) = v2;
}

double _DisplayList_StableIdentityScope.init(root:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  *(a2 + 32) = MEMORY[0x1E69E7CC8];
  *(a2 + 40) = 0;
  *a2 = a1;
  memset(&v5, 0, sizeof(v5));

  CC_SHA1_Init(&v5);
  c = v5;
  specialized StrongHasher.combine<A>(_:)(1953460082, 0xE400000000000000);
  memset(&v5, 0, 20);
  CC_SHA1_Final(&v5, &c);

  h4 = v5.h4;
  result = *&v5.h0;
  *(a2 + 8) = *&v5.h0;
  *(a2 + 24) = h4;
  return result;
}

void specialized StrongHasher.combine<A>(_:)(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = String.utf8CString.getter();
    v5 = *(v4 + 16);
    if (HIDWORD(v5))
    {
      __break(1u);
    }

    else
    {
      CC_SHA1_Update(v2, (v4 + 32), v5);
    }
  }
}

double _DisplayList_StableIdentityScope.init<A>(id:parent:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = *(a2 + 6);
  *(a5 + 32) = MEMORY[0x1E69E7CC8];
  *(a5 + 40) = 0;
  *a5 = v10;
  memset(&v15, 0, sizeof(v15));

  CC_SHA1_Init(&v15);
  c = v15;
  StrongHasher.combine<A>(_:)(a1, a3, a4);
  v12 = a2[2];
  *&v15.h0 = a2[1];
  *&v15.h2 = v12;
  v15.h4 = v11;
  CC_SHA1_Update(&c, &v15, 0x14u);

  memset(&v15, 0, 20);
  CC_SHA1_Final(&v15, &c);
  (*(*(a3 - 8) + 8))(a1, a3);
  h4 = v15.h4;
  result = *&v15.h0;
  *(a5 + 8) = *&v15.h0;
  *(a5 + 24) = h4;
  return result;
}

__n128 _DisplayList_StableIdentityScope.makeIdentity()@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40) + 1;
  *(v1 + 40) = v2;
  v3 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u32[0] = v3;
  a1[1].n128_u32[1] = v2;
  return result;
}

double _DisplayList_StableIdentityScope.pushIdentity(_:)(unsigned int *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = (*(v1 + 10) + 1);
  *(v2 + 10) = v4;
  v5 = v2[1];
  v6 = v2[2];
  v7 = *(v2 + 6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v2[4];
  v2[4] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v5, v6, v7 | (v4 << 32), v3, isUniquelyReferenced_nonNull_native);

  v2[4] = v11;
  v9 = *v2;
  swift_beginAccess();
  *(v9 + 24) = 0;

  return result;
}

double protocol witness for static _ViewTraitKey.defaultValue.getter in conformance _DisplayList_StableIdentityScope@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static _DisplayList_StableIdentityScope.defaultValue;
  *a1 = static _DisplayList_StableIdentityScope.defaultValue;
  return result;
}

void _DisplayList_StableIdentity.encode(to:)(void *a1)
{
  v3 = *(v1 + 20);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v4 = a1[1];
  v5 = a1[3];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  a1[3] = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    a1[1] = v4 + 1;
    StrongHash.encode(to:)(a1);
    ProtobufEncoder.endLengthDelimited()();
    if (v3)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(v3);
    }
  }
}

void _DisplayList_StableIdentityMap.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = (*v4 + 64);
  v7 = 1 << *(*v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *v6;
  v10 = (v7 + 63) >> 6;
  v32 = *v4;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v12 << 6);
      v14 = *(*(v32 + 48) + 4 * v13);
      v15 = (*(v32 + 56) + 24 * v13);
      v34 = v15[1];
      v35 = *v15;
      v33 = v15[2];
      v16 = a1[1];
      v17 = a1[2];
      v37 = v3;
      v36 = v14;
      if (v16 >= v17)
      {
        v26 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_43;
        }

        if (v17 < v26)
        {
          v27 = ProtobufEncoder.growBufferSlow(to:)(v26);
        }

        else
        {
          a1[1] = v26;
          v27 = (*a1 + v16);
        }

        *v27 = 10;
        v18 = a1[1];
      }

      else
      {
        *(*a1 + v16) = 10;
        v18 = v16 + 1;
        a1[1] = v16 + 1;
      }

      v19 = a1[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      *&v19[8 * v21 + 32] = v18;
      a1[3] = v19;
      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      a1[1] = v22;
      v23 = v36;
      if (v36)
      {
        v24 = a1[2];
        v3 = v37;
        if (v22 >= v24)
        {
          v30 = v18 + 2;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_45;
          }

          if (v24 < v30)
          {
            v31 = ProtobufEncoder.growBufferSlow(to:)(v30);
          }

          else
          {
            a1[1] = v30;
            v31 = (*a1 + v22);
          }

          *v31 = 8;
          v23 = v36;
        }

        else
        {
          *(*a1 + v22) = 8;
          a1[1] = v18 + 2;
        }

        ProtobufEncoder.encodeVarint(_:)(v23);
        v22 = a1[1];
      }

      else
      {
        v3 = v37;
      }

      v25 = a1[2];
      if (v22 >= v25)
      {
        v28 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_44;
        }

        if (v25 < v28)
        {
          v29 = ProtobufEncoder.growBufferSlow(to:)(v28);
        }

        else
        {
          a1[1] = v28;
          v29 = (*a1 + v22);
        }

        *v29 = 18;
      }

      else
      {
        *(*a1 + v22) = 18;
        a1[1] = v22 + 1;
      }

      specialized ProtobufEncoder.encodeMessage<A>(_:)(v35, v34, v33);
      if (v3)
      {
        goto LABEL_40;
      }

      v9 &= v9 - 1;
      ProtobufEncoder.endLengthDelimited()();
      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
LABEL_40:

        return;
      }

      v9 = v6[v12];
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t _ViewInputs.configureStableIDs(root:)(uint64_t a1)
{
  v2 = v1;
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(v1 + 36);
  if ((v4 & 0x100) == 0)
  {
    *(v1 + 36) = v4 | 0x100;
  }

  _DisplayList_StableIdentityScope.init(root:)(v5, &v11);
  v12[2] = v11;
  v13[0] = v12[0];
  *(v13 + 12) = *(v12 + 12);
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of _DisplayList_StableIdentityScope(&v11);
  v6 = AGCreateWeakAttribute();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v2, v6);

  swift_beginAccess();
  v7 = *(a1 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v7;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
    *(a1 + 16) = result;
  }

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v10 >= v9 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v10 + 1;
  *(v7 + 8 * v10 + 32) = v6;
  *(a1 + 16) = v7;
  return result;
}

unsigned int *_ViewInputs.pushIdentity(_:)(unsigned int *result)
{
  if (*(v1 + 37))
  {
    v2 = *result;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*v1, v5);
    result = AGWeakAttributeGetAttribute();
    if (result == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    else
    {
      v6[0] = v2;
      v3 = Attribute<A>.subscript.modify(v5, result);
      v4 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v6);
      return (v3)(v5, 0, v4);
    }
  }

  return result;
}

__n128 _ViewInputs.makeStableIdentity()@<Q0>(uint64_t a1@<X8>)
{
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(*v1);
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    v3 = static os_log_type_t.fault.getter();
    if (one-time initialization token for internalErrorsLog != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = static Log.internalErrorsLog;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18DDAF080;
    v6 = MEMORY[0x1E69E6158];
    *(v5 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v8 = v7;
    *(v5 + 64) = v7;
    *(v5 + 32) = 0xD000000000000023;
    *(v5 + 40) = 0x800000018DD77510;
    v9 = v4;
    v10 = StaticString.description.getter();
    *(v5 + 96) = v6;
    *(v5 + 104) = v8;
    *(v5 + 72) = v10;
    *(v5 + 80) = v11;
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v5 + 136) = v6;
    *(v5 + 144) = v8;
    *(v5 + 112) = v12;
    *(v5 + 120) = v13;
    os_log(_:dso:log:_:_:)(v3, &dword_18D018000, v9, "%s %s:%s", v21, v22, 0x6B);

    type metadata accessor for _ContiguousArrayStorage<Any>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18DDA6EB0;
    _StringGuts.grow(_:)(38);

    v15 = StaticString.description.getter();
    MEMORY[0x193ABEDD0](v15);

    MEMORY[0x193ABEDD0](58, 0xE100000000000000);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v16);

    MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
    *(v14 + 56) = v6;
    *(v14 + 32) = 0xD000000000000026;
    *(v14 + 40) = 0x800000018DD77540;
    print(_:separator:terminator:)();

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v19 = *(Value + 40) + 1;
    *(Value + 40) = v19;
    v20 = *(Value + 24);
    result = *(Value + 8);
    *a1 = result;
    *(a1 + 16) = v20;
    *(a1 + 20) = v19;
  }

  return result;
}

uint64_t _GraphInputs.pushScope<A>(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *v3;
  v11 = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(*v3);
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    Value = AGGraphGetValue();
    v13 = *(Value + 28);
    v14 = Value[1];
    v20 = *Value;
    v21[0] = v14;
    *(v21 + 12) = v13;
    (*(v7 + 16))(v9, a1, a2);
    v24 = v20;
    v25[0] = v21[0];
    *(v25 + 12) = *(v21 + 12);
    outlined init with copy of _DisplayList_StableIdentityScope(&v20, &v22);
    outlined init with copy of _DisplayList_StableIdentityScope(&v20, &v22);
    _DisplayList_StableIdentityScope.init<A>(id:parent:)(v9, &v24, a2, a3, &v22);
    v24 = v22;
    v25[0] = v23[0];
    *(v25 + 12) = *(v23 + 12);
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of _DisplayList_StableIdentityScope(&v22);
    a3 = AGCreateWeakAttribute();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v3, a3);

    v11 = v20;
    swift_beginAccess();
    v10 = *(v11 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 16) = v10;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
  *(v11 + 16) = v10;
LABEL_3:
  v17 = *(v10 + 16);
  v16 = *(v10 + 24);
  if (v17 >= v16 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v10);
  }

  *(v10 + 16) = v17 + 1;
  *(v10 + 8 * v17 + 32) = a3;
  *(v11 + 16) = v10;
  return outlined destroy of _DisplayList_StableIdentityScope(&v20);
}

void makeStableIDData<A>(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v6);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Encodable, MEMORY[0x1E69E5E78]);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v21, &v24);
    v9 = v26;
    v10 = __swift_project_boxed_opaque_existential_1(&v24, v26);
    v11 = MEMORY[0x1EEE9AC00](v10);
    v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13, v11);
    StrongHash.init<A>(encodable:)(v13, v9, &v21);
    v15 = 0;
    v18 = *(&v21 + 1);
    v17 = v21;
    v19 = v22;
    __swift_destroy_boxed_opaque_existential_1(&v24);
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    outlined destroy of StronglyHashable?(&v21, &lazy cache variable for type metadata for Encodable?, &lazy cache variable for type metadata for Encodable, MEMORY[0x1E69E5E78]);
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v24 = 0xD00000000000001ALL;
    v25 = 0x800000018DD77570;
    swift_getDynamicType();
    v16 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v16);

    specialized static Log.externalWarning(_:)(v24, v25);

    v17 = 0;
    v18 = 0;
    v19 = 0;
    v15 = 1;
  }

  *a3 = v17;
  *(a3 + 8) = v18;
  *(a3 + 16) = v19;
  *(a3 + 20) = v15;
}

void _GraphInputs.pushStableType(_:)(uint64_t result)
{
  if (*(v1 + 37))
  {
    AGTypeGetSignature();

    specialized _GraphInputs.pushScope<A>(id:)(v2, v3, v4);
  }
}

double makeStableTypeData(_:)@<D0>(uint64_t a2@<X8>)
{
  AGTypeGetSignature();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

unint64_t _GraphInputs.stableIDScope.getter()
{
  if ((*(v0 + 37) & 1) == 0)
  {
    return 0;
  }

  v2 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(*v0);
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4DataV_Tt1g5@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  memset(&v20, 0, sizeof(v20));
  CC_SHA1_Init(&v20);
  c = v20;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      *(&v20.h1 + 2) = 0;
      *&v20.h0 = 0;
      v8 = &v20;
      LODWORD(v7) = 0;
      goto LABEL_24;
    }

    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    v11 = __DataStorage._bytes.getter();
    if (v11)
    {
      v12 = __DataStorage._offset.getter();
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_28;
      }

      v11 += v9 - v12;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (v13)
    {
      goto LABEL_26;
    }

    result = MEMORY[0x193ABC2C0]();
    if (result >= v14)
    {
      v7 = v14;
    }

    else
    {
      v7 = result;
    }

    if (!v11)
    {
      goto LABEL_31;
    }

    if (v7 <= 0xFFFFFFFFLL)
    {
LABEL_22:
      v8 = v11;
      goto LABEL_24;
    }

    __break(1u);
  }

  else if (!v6)
  {
    LOWORD(v20.h0) = a1;
    BYTE2(v20.h0) = BYTE2(a1);
    HIBYTE(v20.h0) = BYTE3(a1);
    LOBYTE(v20.h1) = BYTE4(a1);
    BYTE1(v20.h1) = BYTE5(a1);
    BYTE2(v20.h1) = BYTE6(a1);
    HIBYTE(v20.h1) = HIBYTE(a1);
    LOWORD(v20.h2) = a2;
    BYTE2(v20.h2) = BYTE2(a2);
    HIBYTE(v20.h2) = BYTE3(a2);
    LOBYTE(v20.h3) = BYTE4(a2);
    LODWORD(v7) = BYTE6(a2);
    BYTE1(v20.h3) = BYTE5(a2);
    v8 = &v20;
LABEL_24:
    CC_SHA1_Update(&c, v8, v7);
    outlined consume of Data._Representation(a1, a2);
    memset(&v20, 0, 20);
    result = CC_SHA1_Final(&v20, &c);
    h4 = v20.h4;
    *a3 = *&v20.h0;
    *(a3 + 16) = h4;
    return result;
  }

  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v16 = __DataStorage._bytes.getter();
  if (v16)
  {
    v17 = v16;
    v18 = __DataStorage._offset.getter();
    if (!__OFSUB__(a1, v18))
    {
      v11 = a1 - v18 + v17;
      result = MEMORY[0x193ABC2C0]();
      if (v11)
      {
        if (result >= (a1 >> 32) - a1)
        {
          v7 = (a1 >> 32) - a1;
        }

        else
        {
          LODWORD(v7) = result;
        }

        goto LABEL_22;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  result = MEMORY[0x193ABC2C0]();
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

double _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4UUIDV_Tt1g5@<D0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(&v10, 0, sizeof(v10));
  CC_SHA1_Init(&v10);
  c = v10;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (HIDWORD(v6))
  {
    goto LABEL_5;
  }

  v7 = v4;
  CC_SHA1_Update(&c, a1, v6);
  memset(&v10, 0, 20);
  CC_SHA1_Final(&v10, &c);
  (*(v5 + 8))(a1, v7);
  h4 = v10.h4;
  result = *&v10.h0;
  *a2 = *&v10.h0;
  *(a2 + 16) = h4;
  return result;
}

void specialized _NativeDictionary.copy()(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<StyleContextDescriptor>>(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 64 + 8 * v10)
    {
      memmove(v9, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 56) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 56) + 8 * v21) = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }
}

void specialized _NativeDictionary.copy()(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(_BYTE *, unint64_t))
{
  v6 = v4;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ScrollStateRequest>(0, a1, a2, a3);
  v7 = *v4;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, (v7 + 64), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = *(*(v7 + 48) + 8 * v22);
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v22, v24);
        *(*(v9 + 48) + 8 * v22) = v23;
        a4(v24, *(v9 + 56) + 40 * v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        goto LABEL_21;
      }

      v21 = *(v7 + 64 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v9;
  }
}

void specialized _NativeDictionary.copy()(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 64 + 8 * v10)
    {
      memmove(v9, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 56) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 56) + 8 * v21) = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }
}

double specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  *(a2 + 24) = v2;
  return result;
}

{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;

  return result;
}

BOOL specialized static _DisplayList_StableIdentity.== infix(_:_:)(int32x4_t *a1, int32x4_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vceqq_s32(*a1, *a2))) & 1) != 0 && a1[1].i32[0] == a2[1].i32[0])
  {
    return a1[1].i32[1] == a2[1].i32[1];
  }

  return result;
}

void lazy protocol witness table accessor for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for _DisplayList_StableIdentity.CodingKeys, &unk_1F0050358, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for _DisplayList_StableIdentity.CodingKeys, &unk_1F0050358, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for _DisplayList_StableIdentity.CodingKeys, &unk_1F0050358, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for _DisplayList_StableIdentity.CodingKeys, &unk_1F0050358, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys);
  }
}

void lazy protocol witness table accessor for type StrongHash and conformance StrongHash()
{
  if (!lazy protocol witness table cache variable for type StrongHash and conformance StrongHash)
  {
    swift_getWitnessTable(protocol conformance descriptor for StrongHash, &type metadata for StrongHash, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type StrongHash and conformance StrongHash);
  }
}

{
  if (!lazy protocol witness table cache variable for type StrongHash and conformance StrongHash)
  {
    swift_getWitnessTable(protocol conformance descriptor for StrongHash, &type metadata for StrongHash, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type StrongHash and conformance StrongHash);
  }
}

{
  if (!lazy protocol witness table cache variable for type StrongHash and conformance StrongHash)
  {
    swift_getWitnessTable(protocol conformance descriptor for StrongHash, &type metadata for StrongHash, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type StrongHash and conformance StrongHash);
  }
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(Swift::UInt32 *__return_ptr, int *), uint64_t a3, char a4, void *a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_11:
    v14 = v11;
    v15 = __clz(__rbit64(v9)) | (v11 << 6);
    v16 = *(*(a1 + 48) + 4 * v15);
    v17 = *(a1 + 56) + 24 * v15;
    v38 = v16;
    v39 = *v17;
    v40 = *(v17 + 16);
    a2(&v41, &v38);
    v44 = 0;
    v18 = v41;
    v36 = v42;
    v19 = v43;
    v20 = *a5;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_22;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if ((a4 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, a4 & 1);
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_24;
      }

      v22 = v27;
    }

    v11 = v14;
    v9 &= v9 - 1;
    a4 = 1;
    if ((v26 & 1) == 0)
    {
      v29 = *a5;
      *(*a5 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      *(v29[6] + 4 * v22) = v18;
      v30 = v29[7] + 24 * v22;
      *v30 = v36;
      *(v30 + 16) = v19;
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_23;
      }

      v29[2] = v33;
    }
  }

  v12 = v11;
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      outlined consume of Set<EventID>.Iterator._Variant(a1);

      return;
    }

    ++v12;
    if (*(v6 + 8 * v13))
    {
      v9 = *(v6 + 8 * v13);
      v11 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t outlined destroy of StronglyHashable?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for _ContiguousArrayStorage<CVarArg>(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void lazy protocol witness table accessor for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity()
{
  if (!lazy protocol witness table cache variable for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity)
  {
    swift_getWitnessTable(protocol conformance descriptor for _DisplayList_StableIdentity, &type metadata for _DisplayList_StableIdentity, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity);
  }
}

uint64_t *assignWithCopy for _DisplayList_StableIdentityScope(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 6) = *(a2 + 6);
  a1[4] = a2[4];

  *(a1 + 10) = *(a2 + 10);
  return a1;
}

uint64_t *assignWithTake for _DisplayList_StableIdentityScope(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  *(a1 + 6) = *(a2 + 6);
  a1[4] = a2[4];

  *(a1 + 10) = *(a2 + 10);
  return a1;
}

uint64_t getEnumTagSinglePayload for _DisplayList_StableIdentityScope(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
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

uint64_t storeEnumTagSinglePayload for _DisplayList_StableIdentityScope(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<AGSubgraphRef, [(_:)]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AGSubgraphRef, [(_:)]>)
  {
    type metadata accessor for AGSubgraphRef(255);
    type metadata accessor for [(AbstractHomogeneousCollection, Int)](255, &lazy cache variable for type metadata for [(_:)], type metadata accessor for (_:), MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef, type metadata accessor for AGSubgraphRef, protocol conformance descriptor for AGSubgraphRef);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<AGSubgraphRef, [(_:)]>);
    }
  }
}

uint64_t outlined init with copy of SeedValue<GlassContainer.EntryState>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for _ContiguousArrayStorage<Any>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, Attribute<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, Attribute<Bool>>)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for Attribute<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E698D388]);
    lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, Attribute<Bool>>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, Attribute<PlatformGlassInteractionState>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, Attribute<PlatformGlassInteractionState>>)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for Attribute<PlatformGlassInteractionState>, &type metadata for PlatformGlassInteractionState, MEMORY[0x1E698D388]);
    lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, Attribute<PlatformGlassInteractionState>>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>>)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
    lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>>);
    }
  }
}

void type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item)
  {
    v2 = MEMORY[0x1E69E6530];
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v4 = v3;
    type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>(255);
    v6 = v5;
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    v8 = v7;
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>, lazy protocol witness table accessor for type ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>> and conformance <> ModifiedContent<A, B>, &protocol witness table for _OffsetEffect);
    v12[0] = v4;
    v12[1] = v2;
    v12[2] = v6;
    v12[3] = v8;
    v12[4] = MEMORY[0x1E69E6540];
    v12[5] = v9;
    v10 = type metadata accessor for ForEachState.Item(a1, v12);
    if (!v11)
    {
      atomic_store(v10, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item);
    }
  }
}

void type metadata accessor for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>)
  {
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for _ValueTransactionModifier<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63E0], type metadata accessor for _ValueTransactionModifier);
    v4 = type metadata accessor for ModifiedContent(a1, &type metadata for SummarySymbol, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>);
    }
  }
}

void lazy protocol witness table accessor for type Axis and conformance Axis()
{
  if (!lazy protocol witness table cache variable for type Axis and conformance Axis)
  {
    swift_getWitnessTable(protocol conformance descriptor for Axis, &type metadata for Axis, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Axis and conformance Axis);
  }
}

{
  if (!lazy protocol witness table cache variable for type Axis and conformance Axis)
  {
    swift_getWitnessTable(protocol conformance descriptor for Axis, &type metadata for Axis, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Axis and conformance Axis);
  }
}

void type metadata accessor for _DictionaryStorage<AGAttribute, AGAttribute>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AGAttribute, AGAttribute>)
  {
    type metadata accessor for AGAttribute(255);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type AGAttribute and conformance AGAttribute, type metadata accessor for AGAttribute, MEMORY[0x1E698D3E8]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<AGAttribute, AGAttribute>);
    }
  }
}

void type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_StableIdentity.CodingKeys>(255, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
    v3 = v2;
    lazy protocol witness table accessor for type Slice<SubviewsCollection> and conformance <> Slice<A>();
    v5 = v4;
    lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
    v9[0] = v3;
    v9[1] = &type metadata for Subview.ID;
    v9[2] = &type metadata for Subview;
    v9[3] = v5;
    v9[4] = v6;
    v9[5] = &protocol witness table for Subview;
    v7 = type metadata accessor for ForEachState.Item(a1, v9);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item);
    }
  }
}

void lazy protocol witness table accessor for type _ViewDebug.Property and conformance _ViewDebug.Property()
{
  if (!lazy protocol witness table cache variable for type _ViewDebug.Property and conformance _ViewDebug.Property)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ViewDebug.Property, &type metadata for _ViewDebug.Property, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ViewDebug.Property and conformance _ViewDebug.Property);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ViewDebug.Property and conformance _ViewDebug.Property)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ViewDebug.Property, &type metadata for _ViewDebug.Property, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ViewDebug.Property and conformance _ViewDebug.Property);
  }
}

void type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item)
  {
    lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
    v5[0] = &type metadata for _VariadicView_Children;
    v5[1] = MEMORY[0x1E69E69B8];
    v5[2] = &type metadata for _VariadicView_Children.Element;
    v5[3] = v2;
    v5[4] = MEMORY[0x1E69E69C0];
    v5[5] = &protocol witness table for _VariadicView_Children.Element;
    v3 = type metadata accessor for ForEachState.Item(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item);
    }
  }
}

void type metadata accessor for _DictionaryStorage<EventID, EventType>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<EventID, EventType>)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
    lazy protocol witness table accessor for type EventID and conformance EventID();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventType>);
    }
  }
}

void lazy protocol witness table accessor for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton()
{
  if (!lazy protocol witness table cache variable for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton)
  {
    swift_getWitnessTable(protocol conformance descriptor for CAHostingLayerEvent.MouseButton, &type metadata for CAHostingLayerEvent.MouseButton, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton);
  }
}

{
  if (!lazy protocol witness table cache variable for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton)
  {
    swift_getWitnessTable(protocol conformance descriptor for CAHostingLayerEvent.MouseButton, &type metadata for CAHostingLayerEvent.MouseButton, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton);
  }
}

void lazy protocol witness table accessor for type CachedVectorImageContents.CacheKey and conformance CachedVectorImageContents.CacheKey()
{
  if (!lazy protocol witness table cache variable for type CachedVectorImageContents.CacheKey and conformance CachedVectorImageContents.CacheKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for CachedVectorImageContents.CacheKey, &type metadata for CachedVectorImageContents.CacheKey, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CachedVectorImageContents.CacheKey and conformance CachedVectorImageContents.CacheKey);
  }
}

{
  if (!lazy protocol witness table cache variable for type CachedVectorImageContents.CacheKey and conformance CachedVectorImageContents.CacheKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for CachedVectorImageContents.CacheKey, &type metadata for CachedVectorImageContents.CacheKey, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CachedVectorImageContents.CacheKey and conformance CachedVectorImageContents.CacheKey);
  }
}

void lazy protocol witness table accessor for type ScrollAnchorStorage.Role and conformance ScrollAnchorStorage.Role()
{
  if (!lazy protocol witness table cache variable for type ScrollAnchorStorage.Role and conformance ScrollAnchorStorage.Role)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrollAnchorStorage.Role, &type metadata for ScrollAnchorStorage.Role, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrollAnchorStorage.Role and conformance ScrollAnchorStorage.Role);
  }
}

{
  if (!lazy protocol witness table cache variable for type ScrollAnchorStorage.Role and conformance ScrollAnchorStorage.Role)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrollAnchorStorage.Role, &type metadata for ScrollAnchorStorage.Role, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrollAnchorStorage.Role and conformance ScrollAnchorStorage.Role);
  }
}

void type metadata accessor for _DictionaryStorage<AGSubgraphRef.Map.Key, [ScrapeableContent.Node]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AGSubgraphRef.Map.Key, [ScrapeableContent.Node]>)
  {
    type metadata accessor for [(AbstractHomogeneousCollection, Int)](255, &lazy cache variable for type metadata for [ScrapeableContent.Node], type metadata accessor for ScrapeableContent.Node, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type AGSubgraphRef.Map.Key and conformance AGSubgraphRef.Map.Key();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<AGSubgraphRef.Map.Key, [ScrapeableContent.Node]>);
    }
  }
}

void lazy protocol witness table accessor for type AGSubgraphRef.Map.Key and conformance AGSubgraphRef.Map.Key()
{
  if (!lazy protocol witness table cache variable for type AGSubgraphRef.Map.Key and conformance AGSubgraphRef.Map.Key)
  {
    swift_getWitnessTable(protocol conformance descriptor for AGSubgraphRef.Map.Key, &type metadata for AGSubgraphRef.Map.Key, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AGSubgraphRef.Map.Key and conformance AGSubgraphRef.Map.Key);
  }
}

{
  if (!lazy protocol witness table cache variable for type AGSubgraphRef.Map.Key and conformance AGSubgraphRef.Map.Key)
  {
    swift_getWitnessTable(protocol conformance descriptor for AGSubgraphRef.Map.Key, &type metadata for AGSubgraphRef.Map.Key, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AGSubgraphRef.Map.Key and conformance AGSubgraphRef.Map.Key);
  }
}

void lazy protocol witness table accessor for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributedString.AnyAttribute, &type metadata for AttributedString.AnyAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute);
  }
}

{
  if (!lazy protocol witness table cache variable for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributedString.AnyAttribute, &type metadata for AttributedString.AnyAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute);
  }
}

void lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index()
{
  if (!lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index);
  }
}

{
  if (!lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index);
  }
}

{
  if (!lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index);
  }
}

void type metadata accessor for _DictionaryStorage<NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>>)
  {
    type metadata accessor for NSAttributedStringKey(255);
    type metadata accessor for KeyedEncodingContainer<_DisplayList_StableIdentity.CodingKeys>(255, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<URL, WeakBox<CUICatalog>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<URL, WeakBox<CUICatalog>>)
  {
    type metadata accessor for URL();
    type metadata accessor for WeakBox<CUICatalog>(255);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<URL, WeakBox<CUICatalog>>);
    }
  }
}

uint64_t outlined destroy of NamedImage.VectorKey(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for _DictionaryStorage<UUID, NamedImage.DecodedInfo>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UUID, NamedImage.DecodedInfo>)
  {
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<UUID, NamedImage.DecodedInfo>);
    }
  }
}

void type metadata accessor for (Solarium.EnablementLevel, Solarium.EnablementCriteria)()
{
  if (!lazy cache variable for type metadata for (Solarium.EnablementLevel, Solarium.EnablementCriteria))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Solarium.EnablementLevel, Solarium.EnablementCriteria));
    }
  }
}

void lazy protocol witness table accessor for type _ForegroundLayerLevel and conformance _ForegroundLayerLevel()
{
  if (!lazy protocol witness table cache variable for type _ForegroundLayerLevel and conformance _ForegroundLayerLevel)
  {
    swift_getWitnessTable("E{\rah=\a", &type metadata for _ForegroundLayerLevel, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ForegroundLayerLevel and conformance _ForegroundLayerLevel);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ForegroundLayerLevel and conformance _ForegroundLayerLevel)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ForegroundLayerLevel, &type metadata for _ForegroundLayerLevel, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ForegroundLayerLevel and conformance _ForegroundLayerLevel);
  }
}

uint64_t outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _DictionaryStorage<_ProposedSize, ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<_ProposedSize, ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_StableIdentity.CodingKeys>(255, &lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer, lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer, &type metadata for SizeThatFitsMeasurer, type metadata accessor for ViewGraphGeometryObservers.Observer);
    lazy protocol witness table accessor for type _ProposedSize and conformance _ProposedSize();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<_ProposedSize, ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<DisplayList.GraphicsRenderer.Cache.AnimatorKey, _DisplayList_AnyEffectAnimator>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<DisplayList.GraphicsRenderer.Cache.AnimatorKey, _DisplayList_AnyEffectAnimator>)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimator, &protocol descriptor for _DisplayList_AnyEffectAnimator);
    lazy protocol witness table accessor for type DisplayList.GraphicsRenderer.Cache.AnimatorKey and conformance DisplayList.GraphicsRenderer.Cache.AnimatorKey();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.GraphicsRenderer.Cache.AnimatorKey, _DisplayList_AnyEffectAnimator>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    v7 = type metadata accessor for _DictionaryStorage();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry, MEMORY[0x1E69E62F8]);
    v3 = v2;
    type metadata accessor for ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>(255);
    v5 = v4;
    lazy protocol witness table accessor for type [GlassContainer.Item] and conformance [A](&lazy protocol witness table cache variable for type [GlassContainer.Entry] and conformance [A], &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry);
    v7 = v6;
    lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID();
    v9 = v8;
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>, lazy protocol witness table accessor for type ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>> and conformance <> ModifiedContent<A, B>, &protocol witness table for _TraitWritingModifier<A>);
    v13[0] = v3;
    v13[1] = &type metadata for GlassContainer.Entry.StableID;
    v13[2] = v5;
    v13[3] = v7;
    v13[4] = v9;
    v13[5] = v10;
    v11 = type metadata accessor for ForEachState.Item(a1, v13);
    if (!v12)
    {
      atomic_store(v11, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item);
    }
  }
}

void lazy protocol witness table accessor for type [GlassContainer.Item] and conformance [A](unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if (!*a1)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, a2, a3, MEMORY[0x1E69E62F8]);
    swift_getWitnessTable(MEMORY[0x1E69E6338], v4);
    atomic_store(v5, a1);
  }
}

void lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a1)
  {
    v7 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v9);
    atomic_store(v8, a1);
  }
}

void type metadata accessor for _DictionaryStorage<GlassContainer.Entry.ModelID, SeedValue<GlassEffectContainerTintConfiguration.Element>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.ModelID, SeedValue<GlassEffectContainerTintConfiguration.Element>>)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for SeedValue<GlassEffectContainerTintConfiguration.Element>, &type metadata for GlassEffectContainerTintConfiguration.Element, type metadata accessor for SeedValue);
    lazy protocol witness table accessor for type GlassContainer.Entry.ModelID and conformance GlassContainer.Entry.ModelID();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.ModelID, SeedValue<GlassEffectContainerTintConfiguration.Element>>);
    }
  }
}

void lazy protocol witness table accessor for type GlassContainer.Entry.ModelID and conformance GlassContainer.Entry.ModelID()
{
  if (!lazy protocol witness table cache variable for type GlassContainer.Entry.ModelID and conformance GlassContainer.Entry.ModelID)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassContainer.Entry.ModelID and conformance GlassContainer.Entry.ModelID);
  }
}

{
  if (!lazy protocol witness table cache variable for type GlassContainer.Entry.ModelID and conformance GlassContainer.Entry.ModelID)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassContainer.Entry.ModelID and conformance GlassContainer.Entry.ModelID);
  }
}

void type metadata accessor for _DictionaryStorage<ResolvedIDs.Key, SeedValue<GlassContainer.Entry.StableID>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ResolvedIDs.Key, SeedValue<GlassContainer.Entry.StableID>>)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for SeedValue<GlassContainer.Entry.StableID>, &type metadata for GlassContainer.Entry.StableID, type metadata accessor for SeedValue);
    lazy protocol witness table accessor for type ResolvedIDs.Key and conformance ResolvedIDs.Key();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ResolvedIDs.Key, SeedValue<GlassContainer.Entry.StableID>>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, [GlassContainer.Entry.StableID]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, [GlassContainer.Entry.StableID]>)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for [GlassContainer.Entry.StableID], &type metadata for GlassContainer.Entry.StableID, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, [GlassContainer.Entry.StableID]>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3();
    v6 = type metadata accessor for _DictionaryStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
    v3 = v2;
    lazy protocol witness table accessor for type [GlassContainer.Item] and conformance [A](&lazy protocol witness table cache variable for type [GlassContainer.Item] and conformance [A], &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item);
    v5 = v4;
    lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID();
    v7 = v6;
    lazy protocol witness table accessor for type GlassItemView and conformance GlassItemView();
    v11[0] = v3;
    v11[1] = &type metadata for GlassContainer.Item.ID;
    v11[2] = &type metadata for GlassItemView;
    v11[3] = v5;
    v11[4] = v7;
    v11[5] = v8;
    v9 = type metadata accessor for ForEachState.Item(a1, v11);
    if (!v10)
    {
      atomic_store(v9, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item);
    }
  }
}

uint64_t static ForEach<>.create(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v23[0] = a4;
  v23[1] = a5;
  v23[2] = a6;
  v23[3] = a7;
  v23[4] = a8;
  KeyPath = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return ForEach.init(_:idGenerator:content:)(v19, &KeyPath, a2, a3, a4, a5, a6, a7, a9, AssociatedConformanceWitness);
}

uint64_t static ForEach.create(_:id:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a2;
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v25 = a2;
  v22 = *(v17 + *MEMORY[0x1E69E77B0] + 8);

  return ForEach.init(_:idGenerator:content:)(v20, &v25, a3, a4, a5, v22, a6, a7, a9, a8);
}

uint64_t static ForEach<>.create(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  v16 = 0;
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a3;
  v10[4] = a4;
  type metadata accessor for Range<Int>();
  v12 = v11;
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v14 = v13;

  return ForEach.init(_:idGenerator:content:)(v17, &v16, partial apply for thunk for @escaping @callee_guaranteed (@unowned Int) -> (@out C), v10, v12, MEMORY[0x1E69E6530], a5, v14, a6, MEMORY[0x1E69E6540]);
}

void type metadata accessor for Range<Int>()
{
  if (!lazy cache variable for type metadata for Range<Int>)
  {
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Range<Int>);
    }
  }
}

uint64_t static PrimitiveCustomHoverContextEffect._makeCustomHoverEffect(effect:inputs:body:)@<X0>(unsigned int *a1@<X0>, _OWORD *a2@<X1>, void (*a3)(__int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a6;
  v38 = a4;
  v39 = a3;
  v37 = a7;
  v70 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  *(v69 + 12) = *(a2 + 76);
  v9 = a2[3];
  v67 = a2[2];
  v68 = v9;
  v69[0] = a2[4];
  v10 = a2[1];
  v66[0] = *a2;
  v66[1] = v10;
  v11 = ++lastIdentity;
  v36 = *(&v10 + 1);
  v12 = v10;
  v13 = *(a2 + 52);
  v62 = *(a2 + 36);
  v63 = v13;
  v64 = *(a2 + 68);
  v65 = v66[0];
  v14 = DWORD1(v69[1]);
  v34 = v67;
  v35 = DWORD2(v69[1]);
  outlined init with copy of _CustomHoverEffectInputs(v66, &v53);
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v15 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v16 = specialized CachedEnvironment.attribute<A>(id:_:)(v15, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  v17 = swift_endAccess();
  *&v53 = __PAIR64__(v8, v11);
  *(&v53 + 1) = __PAIR64__(v16, v14);
  MEMORY[0x1EEE9AC00](v17);
  v31 = type metadata accessor for ApplyPrimitiveCustomHoverContextEffect(0, a5, v33, v18);
  swift_getWitnessTable(protocol conformance descriptor for ApplyPrimitiveCustomHoverContextEffect<A>, v31);
  v32 = v19;
  type metadata accessor for Attribute<HoverEffectContext>(0, &lazy cache variable for type metadata for Attribute<HoverEffectContext>, &type metadata for HoverEffectContext, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v53, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, &v30, v31, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
  v22 = v51[0];
  *&v53 = __PAIR64__(*(v12 + 16), v51[0]);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type UpdateEnvironmentCustomHoverEffectContext and conformance UpdateEnvironmentCustomHoverEffectContext();
  v23 = Attribute.init<A>(body:value:flags:update:)();
  v40 = 1;
  v24 = MEMORY[0x1E69E7CC0];
  v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Attribute<HoverEffectContext>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = v24;
  *(v26 + 32) = 0u;
  *(v26 + 48) = 0u;
  *(v26 + 64) = 0u;
  *(v26 + 80) = 256;
  *(v26 + 82) = v41;
  *(v26 + 86) = v42;
  *(v26 + 88) = v25;

  LODWORD(v24) = v35;
  v27 = v34 | 0x20;
  v28 = v36;
  *&v49 = v26;
  *(&v49 + 1) = v36;
  LODWORD(v50[0]) = v34 | 0x20;
  *(&v50[2] + 4) = v64;
  *(&v50[1] + 4) = v63;
  *(v50 + 4) = v62;
  v45 = v50[0];
  v46 = v50[1];
  *(&v50[3] + 4) = __PAIR64__(v35, v22);
  v47[0] = v50[2];
  *(v47 + 12) = *(&v50[2] + 12);
  v48 = v65;
  v43 = v65;
  v44 = v49;
  outlined init with copy of _CustomHoverEffectInputs(&v48, &v53);
  v39(&v43);
  v51[2] = v45;
  v51[3] = v46;
  v52[0] = v47[0];
  *(v52 + 12) = *(v47 + 12);
  v51[0] = v43;
  v51[1] = v44;
  outlined destroy of _CustomHoverEffectInputs(v51);
  v53 = v65;
  v54 = v26;
  v55 = v28;
  v56 = v27;
  v57 = v62;
  v58 = v63;
  v59 = v64;
  v60 = v22;
  v61 = v24;
  return outlined destroy of _CustomHoverEffectInputs(&v53);
}

void *PrimitiveCustomHoverContextEffect.systemHoverEffect.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = (*(a1 + 24))(&v5);
  v4 = (v5 & 1) == 0;
  if ((v5 & 0xFE) == 2)
  {
    v4 = 1;
  }

  *a2 = 3;
  a2[1] = v4;
  return result;
}

double ApplyPrimitiveCustomHoverContextEffect.value.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  Value = AGGraphGetValue();
  v12 = *(Value + 16);
  v11 = *(Value + 32);
  v13 = *Value;
  v28 = *(Value + 48);
  v27[1] = v12;
  v27[2] = v11;
  v27[0] = v13;
  v14 = *(Value + 16);
  v22 = *Value;
  v23 = v14;
  v24 = *(Value + 32);
  v25 = *(Value + 48);
  outlined init with copy of HoverEffectContext(v27, v26);
  v15 = AGGraphGetValue();
  v16 = *(v6 + 16);
  v16(v8, v15, v5);
  LODWORD(v27[0]) = v9;
  v17 = *(a1 + 24);
  (*(v17 + 16))(&v22, v27, v5, v17);
  v18 = *(v6 + 8);
  v18(v8, v5);
  v19 = AGGraphGetValue();
  v16(v8, v19, v5);
  (*(v17 + 24))(v27, v5, v17);
  v18(v8, v5);
  if (LOBYTE(v27[0]) != 3 && LOBYTE(v27[0]) != 2 && (v27[0] & 1) != 0 && (v24 & 1) == 0)
  {
    LOBYTE(v24) = 1;
  }

  v20 = v23;
  *a2 = v22;
  *(a2 + 16) = v20;
  result = *&v24;
  *(a2 + 32) = v24;
  *(a2 + 48) = v25;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance ApplyPrimitiveCustomHoverContextEffect<A>@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

uint64_t DefaultAnimation.function.getter()
{
  if (one-time initialization token for base != -1)
  {
    swift_once();
  }

  return (*(*static DefaultAnimation.base + 96))();
}

uint64_t ForEachSectionCollection.init<A>(subviewOf:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v37 = a6;
  v38 = a1;
  v40 = a4;
  v41 = a2;
  v42 = a3;
  v43 = a8;
  Description = a5[-1].Description;
  v13 = Description;
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type SectionCollection and conformance SectionCollection();
  v17 = v16;
  lazy protocol witness table accessor for type SectionConfiguration.ID and conformance SectionConfiguration.ID();
  v46 = &type metadata for SectionCollection;
  v47 = &type metadata for SectionConfiguration.ID;
  v48 = a4;
  v49 = v17;
  v50 = v18;
  v19 = type metadata accessor for ForEach(255, &v46);
  v45 = a6;
  swift_getWitnessTable("A}b", v19, &v45);
  v21 = v20;
  v46 = a5;
  v47 = v19;
  v48 = a7;
  v49 = v20;
  v22 = type metadata accessor for GroupSectionsOfContent(255, &v46);
  v25 = type metadata accessor for Group(0, v22, v23, v24);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v37 - v27;
  (v13[2])(v15, a1, a5, v26);
  v29 = swift_allocObject();
  v29[2] = v40;
  v29[3] = a5;
  v29[4] = v37;
  v29[5] = a7;
  v30 = v42;
  v29[6] = v41;
  v29[7] = v30;

  Group.init<A, B>(sections:transform:)(v15, partial apply for closure #1 in ForEachSectionCollection.init<A>(subviewOf:content:), v29, a5, v19, a7, v21, v31);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for GroupSectionsOfContent<A, B>, v22);
  v44 = v33;
  swift_getWitnessTable("A](b4z\a", v25, &v44, WitnessTable);
  v35 = AnyView.init<A>(_:)(v28, v25, v34);

  result = Description[1](v38, a5);
  *v43 = v35;
  return result;
}

double ForEach.init<A>(sectionOf:content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  Description = a5[-1].Description;
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &KeyPath - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Description[2](v19, a1, v20, v17);

  ForEachSectionCollection.init<A>(subviewOf:content:)(v19, a2, a3, a4, a5, a6, a7, &v30);
  KeyPath = swift_getKeyPath();
  v22 = type metadata accessor for ForEachSectionCollection(0, a4, a6, v21);
  swift_getWitnessTable(protocol conformance descriptor for ForEachSectionCollection<A>, v22);
  v24 = v23;
  lazy protocol witness table accessor for type SectionConfiguration.ID and conformance SectionConfiguration.ID();
  ForEach.init(_:idGenerator:content:)(&v30, &KeyPath, a2, a3, v22, &type metadata for SectionConfiguration.ID, a4, v24, &v31, v25);
  (Description[1])(a1, a5);
  v26 = v32;
  v27 = v34;
  *a8 = v31;
  *(a8 + 16) = v26;
  result = *&v33;
  *(a8 + 24) = v33;
  *(a8 + 40) = v27;
  return result;
}

double closure #1 in ForEachSectionCollection.init<A>(subviewOf:content:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v30 = *a1;
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;
  lazy protocol witness table accessor for type SectionCollection and conformance SectionCollection();
  v15 = v14;
  lazy protocol witness table accessor for type SectionConfiguration and conformance SectionConfiguration();
  v17 = v16;

  ForEach<>.init(_:content:)(&v30, partial apply for closure #1 in closure #1 in ForEachSectionCollection.init<A>(subviewOf:content:), v13, &type metadata for SectionCollection, &type metadata for SectionConfiguration.ID, a4, v15, a6, &v26, v17);
  v22 = v26;
  v23 = v27;
  v24 = v28;
  v25 = v29;
  lazy protocol witness table accessor for type SectionConfiguration.ID and conformance SectionConfiguration.ID();
  *&v30 = &type metadata for SectionCollection;
  *(&v30 + 1) = &type metadata for SectionConfiguration.ID;
  v31 = a4;
  *&v32 = v15;
  *(&v32 + 1) = v18;
  v19 = type metadata accessor for ForEach(0, &v30);
  v21 = a6;
  swift_getWitnessTable("A}b", v19, &v21);
  static ViewBuilder.buildExpression<A>(_:)();

  v26 = v30;
  v27 = v31;
  v28 = v32;
  v29 = v33;
  static ViewBuilder.buildExpression<A>(_:)();

  return result;
}

uint64_t closure #1 in closure #1 in ForEachSectionCollection.init<A>(subviewOf:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12(v9);
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v5 + 8);
  v13(v7, a4);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v11, a4);
}

double associated type witness table accessor for Collection.SubSequence : RandomAccessCollection in ForEachSectionCollection<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ForEachSectionCollection<A>);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74F0], a1, &v5, WitnessTable);
}

double associated type witness table accessor for Collection.SubSequence : BidirectionalCollection in ForEachSectionCollection<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ForEachSectionCollection<A>);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74D8], a1, &v5, WitnessTable);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance ForEachSectionCollection<A>(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(protocol conformance descriptor for ForEachSectionCollection<A>);

  return RandomAccessCollection<>.index(before:)();
}

void protocol witness for Collection.subscript.read in conformance ForEachSectionCollection<A>(uint64_t *a1)
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
  ForEachSectionCollection.subscript.read();
}

void *protocol witness for Collection.indices.getter in conformance ForEachSectionCollection<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ForEachSectionCollection<A>, a1);

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for Collection.index(after:) in conformance ForEachSectionCollection<A>(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(protocol conformance descriptor for ForEachSectionCollection<A>);

  return RandomAccessCollection<>.index(after:)();
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance ForEachSectionCollection<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void, double))
{
  v9 = *a1;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ForEachSectionCollection<A>, a2, a3);
  return a4(&v9, a2, v7, MEMORY[0x1E69E6570], WitnessTable);
}

void protocol witness for Sequence.makeIterator() in conformance ForEachSectionCollection<A>(void *a1@<X8>)
{
  *a1 = *v1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ForEachSectionCollection<A>(uint64_t a1)
{
  v3.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for ForEachSectionCollection<A>, a1);

  return MEMORY[0x1EEE698E0](a1, v2, v3);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ForEachSectionCollection<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ForEachSectionCollection<A>, a1);

  return Collection._copyToContiguousArray()();
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void lazy protocol witness table accessor for type SectionCollection and conformance SectionCollection()
{
  if (!lazy protocol witness table cache variable for type SectionCollection and conformance SectionCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for SectionCollection, &type metadata for SectionCollection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SectionCollection and conformance SectionCollection);
  }
}

{
  if (!lazy protocol witness table cache variable for type SectionCollection and conformance SectionCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for SectionCollection, &type metadata for SectionCollection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SectionCollection and conformance SectionCollection);
  }
}

{
  if (!lazy protocol witness table cache variable for type SectionCollection and conformance SectionCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for SectionCollection, &type metadata for SectionCollection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SectionCollection and conformance SectionCollection);
  }
}

{
  if (!lazy protocol witness table cache variable for type SectionCollection and conformance SectionCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for SectionCollection, &type metadata for SectionCollection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SectionCollection and conformance SectionCollection);
  }
}

void lazy protocol witness table accessor for type SectionConfiguration and conformance SectionConfiguration()
{
  if (!lazy protocol witness table cache variable for type SectionConfiguration and conformance SectionConfiguration)
  {
    swift_getWitnessTable(protocol conformance descriptor for SectionConfiguration, &type metadata for SectionConfiguration, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SectionConfiguration and conformance SectionConfiguration);
  }
}

uint64_t (*EnvironmentValues.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  a1[2] = a3;
  a1[3] = v4;
  a1[1] = a2;
  *a1 = EnvironmentValues.subscript.getter(a1, a3, a3, a4);
  return EnvironmentValues.subscript.modify;
}

{
  a1[1] = a3;
  a1[2] = v4;
  *a1 = EnvironmentValues.subscript.getter(a1, a3, a3, a4);
  return EnvironmentValues.subscript.modify;
}

{
  a1[1] = a3;
  a1[2] = v4;
  *a1 = specialized EnvironmentValues.subscript.getter(a3, a2, a3, a4);
  return EnvironmentValues.subscript.modify;
}

{
  a1[1] = a3;
  a1[2] = v4;
  *a1 = EnvironmentValues.subscript.getter(a3, a3, a3, a4);
  return EnvironmentValues.subscript.modify;
}

{
  a1[1] = a3;
  a1[2] = v4;
  *a1 = EnvironmentValues.subscript.getter(a3, a3, a3, a4);
  return EnvironmentValues.subscript.modify;
}

uint64_t EnvironmentValues.subscript.modify(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = *a1;
  if (a2)
  {
    v7 = swift_unknownObjectRetain();
    specialized EnvironmentValues.subscript.setter(v7, v5, v4, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    specialized EnvironmentValues.subscript.setter(v6, v5, v4, a4);
  }

  return swift_unknownObjectRelease();
}

{
  v4 = a1[1];
  v5 = *a1;
  if (a2)
  {
    v6 = swift_unknownObjectRetain();
    specialized EnvironmentValues.subscript.setter(v6, v4, v4, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    specialized EnvironmentValues.subscript.setter(v5, v4, v4, a4);
  }

  return swift_unknownObjectRelease();
}

uint64_t key path setter for EnvironmentValues.subscript<A>(_:) : <A>EnvironmentValuesA(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = swift_unknownObjectRetain();
  specialized EnvironmentValues.subscript.setter(v5, v4, v6, v7);

  return swift_unknownObjectRelease();
}

{
  v4 = *(a3 + a4 - 16);
  v5 = swift_unknownObjectRetain();
  specialized EnvironmentValues.subscript.setter(v5, v4, v6, v7);

  return swift_unknownObjectRelease();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EnvironmentObjectKey<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  specialized EnvironmentObjectKey.hash(into:)(v4, *(a2 + 16));
  return Hasher._finalize()();
}

Swift::Int specialized EnvironmentObjectKey.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  return Hasher._finalize()();
}

unint64_t UnsafeBufferPointer.startAddress.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = a4(a1, a2);
  if (!result)
  {
    return ~*(*(a3 - 8) + 80) | 0xFFFFFFFFFFFFFF00;
  }

  return result;
}

uint64_t static AccessibilityProperties.ActivationPointKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

ValueMetadata *protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.ActivationPointKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return &type metadata for AccessibilityActivationPointStorage;
}

uint64_t key path setter for AccessibilityProperties.activationPointStorage : AccessibilityProperties(__int128 *a1)
{
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = *(a1 + 4);
    v3 = *(a1 + 2);
    v7 = *a1;
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityActivationPointStorage?>(0);
    v8[3] = v4;
    v8[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v5 = swift_allocObject();
    v8[0] = v5;
    *(v5 + 16) = v7;
    *(v5 + 32) = v3;
    *(v5 + 40) = v1;
    *(v5 + 48) = v2;

    return specialized Dictionary.subscript.setter(v8, &type metadata for AccessibilityProperties.ActivationPointKey);
  }

  else
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.ActivationPointKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v8);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v8, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }
}

void _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC17ChildBehaviorKindV_Tt0g5(char *a1@<X8>)
{
  v3 = *(v1 + 280);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.ChildBehaviorKind), (v5 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v4, v10 + 1);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1((v10 + 1), v11);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorKind?, &type metadata for AccessibilityChildBehaviorKind, MEMORY[0x1E69E6720]);
    (*(v7 + 16))(v10, v8, v8, v6, v7);
    v9 = v10[0];
    __swift_destroy_boxed_opaque_existential_1((v10 + 1));
  }

  else
  {
    v9 = 2;
  }

  *a1 = v9;
}

void *_s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC023DataSeriesConfigurationG0V_Tt0g5@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 280);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.DataSeriesConfigurationKey), (v5 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v4, v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration, MEMORY[0x1E69E6720]);
    (*(v7 + 16))(v10, v8, v8, v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    _s7SwiftUI36AccessibilityDataSeriesConfigurationVSgWOi0_(v10);
  }

  return memcpy(a1, v10, 0x138uLL);
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC05HintsG0V_Tt0g5()
{
  v1 = *(v0 + 280);
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.HintsKey), (v3 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v1 + 56) + 40 * v2, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for [Text], &type metadata for Text, MEMORY[0x1E69E62F8]);
    (*(v5 + 16))(&v9, v6, v6, v4, v5);
    v7 = v9;
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v7 = static AccessibilityProperties.HintsKey.defaultValue;
  }

  return v7;
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015LinkDestinationG0V_Tt0g5@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LinkDestination.Configuration??(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 280);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.LinkDestinationKey), (v8 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v6 + 56) + 40 * v7, v18);
    v9 = v19;
    v10 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    type metadata accessor for LinkDestination.Configuration?(0);
    v12 = v11;
    (*(v10 + 16))(v11, v11, v9, v10);
    v13 = *(v12 - 8);
    (*(v13 + 56))(v5, 0, 1, v12);
    __swift_destroy_boxed_opaque_existential_1(v18);
    if ((*(v13 + 48))(v5, 1, v12) != 1)
    {
      return outlined init with take of LinkDestination.Configuration?(v5, a1, type metadata accessor for LinkDestination.Configuration?);
    }
  }

  else
  {
    type metadata accessor for LinkDestination.Configuration?(0);
    v12 = v14;
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  }

  v15 = type metadata accessor for LinkDestination.Configuration(0);
  (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  type metadata accessor for LinkDestination.Configuration?(0);
  result = (*(*(v12 - 8) + 48))(v5, 1, v12);
  if (result != 1)
  {
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v5, type metadata accessor for LinkDestination.Configuration??);
  }

  return result;
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015RoleDescriptionG0V_Tt0g5()
{
  v1 = *(v0 + 280);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.RoleDescriptionKey);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of AnyTrackedValue(*(v1 + 56) + 40 * v2, v10);
  v4 = v11;
  v5 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for Text?, &type metadata for Text, MEMORY[0x1E69E6720]);
  (*(v5 + 16))(&v9, v6, v6, v4, v5);
  v7 = v9;
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

void _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015TextContentTypeG0V_Tt0g5(char *a1@<X8>)
{
  v3 = *(v1 + 280);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.TextContentTypeKey), (v5 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v4, v10 + 1);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1((v10 + 1), v11);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityTextContentType?, &type metadata for AccessibilityTextContentType, MEMORY[0x1E69E6720]);
    (*(v7 + 16))(v10, v8, v8, v6, v7);
    v9 = v10[0];
    __swift_destroy_boxed_opaque_existential_1((v10 + 1));
  }

  else
  {
    v9 = 8;
  }

  *a1 = v9;
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC06LocaleG0V_Tt0g5@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Locale??(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 280);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.LocaleKey), (v8 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v6 + 56) + 40 * v7, v18);
    v9 = v19;
    v10 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    type metadata accessor for Locale?(0);
    v12 = v11;
    (*(v10 + 16))(v11, v11, v9, v10);
    v13 = *(v12 - 8);
    (*(v13 + 56))(v5, 0, 1, v12);
    __swift_destroy_boxed_opaque_existential_1(v18);
    if ((*(v13 + 48))(v5, 1, v12) != 1)
    {
      return outlined init with take of LinkDestination.Configuration?(v5, a1, type metadata accessor for Locale?);
    }
  }

  else
  {
    type metadata accessor for Locale?(0);
    v12 = v14;
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  }

  v15 = type metadata accessor for Locale();
  (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  type metadata accessor for Locale?(0);
  result = (*(*(v12 - 8) + 48))(v5, 1, v12);
  if (result != 1)
  {
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v5, type metadata accessor for Locale??);
  }

  return result;
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC06ImagesG0V_Tt0g5()
{
  v1 = *(v0 + 280);
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.ImagesKey), (v3 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v1 + 56) + 40 * v2, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for [Image], &type metadata for Image, MEMORY[0x1E69E62F8]);
    (*(v5 + 16))(&v9, v6, v6, v4, v5);
    v7 = v9;
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v7 = static AccessibilityProperties.ImagesKey.defaultValue;
  }

  return v7;
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluisAC015LinkDestinationG0V_Tt0g5(uint64_t *a1)
{
  type metadata accessor for LinkDestination.Configuration?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of LinkDestination.Configuration?(a1, v4, type metadata accessor for LinkDestination.Configuration?);
  v5 = type metadata accessor for LinkDestination.Configuration(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.LinkDestinationKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v12);
    outlined destroy of AnyAccessibilityPropertiesEntry?(a1, type metadata accessor for LinkDestination.Configuration?);
    v6 = type metadata accessor for AnyAccessibilityPropertiesEntry?;
    v7 = v12;
  }

  else
  {
    outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for LinkDestination.Configuration?);
    type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<LinkDestination.Configuration?>, type metadata accessor for LinkDestination.Configuration?, type metadata accessor for AccessibilityPropertiesEntry);
    v12[3] = v8;
    v12[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    outlined init with copy of LinkDestination.Configuration?(a1, boxed_opaque_existential_1, type metadata accessor for LinkDestination.Configuration?);
    specialized Dictionary.subscript.setter(v12, &type metadata for AccessibilityProperties.LinkDestinationKey);
    v7 = a1;
    v6 = type metadata accessor for LinkDestination.Configuration?;
  }

  return outlined destroy of AnyAccessibilityPropertiesEntry?(v7, v6);
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluisAC06LocaleG0V_Tt0g5(uint64_t *a1)
{
  type metadata accessor for Locale?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of LinkDestination.Configuration?(a1, v4, type metadata accessor for Locale?);
  v5 = type metadata accessor for Locale();
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.LocaleKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v12);
    outlined destroy of AnyAccessibilityPropertiesEntry?(a1, type metadata accessor for Locale?);
    v6 = type metadata accessor for AnyAccessibilityPropertiesEntry?;
    v7 = v12;
  }

  else
  {
    outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for Locale?);
    type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<Locale?>, type metadata accessor for Locale?, type metadata accessor for AccessibilityPropertiesEntry);
    v12[3] = v8;
    v12[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    outlined init with copy of LinkDestination.Configuration?(a1, boxed_opaque_existential_1, type metadata accessor for Locale?);
    specialized Dictionary.subscript.setter(v12, &type metadata for AccessibilityProperties.LocaleKey);
    v7 = a1;
    v6 = type metadata accessor for Locale?;
  }

  return outlined destroy of AnyAccessibilityPropertiesEntry?(v7, v6);
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluisAC06ImagesG0V_Tt0g5(uint64_t a1)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ImageV_Tt1g5(a1, static AccessibilityProperties.ImagesKey.defaultValue);
  if (v2)
  {

    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.ImagesKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v5);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v5, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<[Image]>(0);
    v5[3] = v4;
    v5[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v5[0] = a1;
    return specialized Dictionary.subscript.setter(v5, &type metadata for AccessibilityProperties.ImagesKey);
  }
}

void AccessibilityProperties.activationPoint.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 280);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.ActivationPointKey), (v5 & 1) != 0) && (outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v4, v15), v6 = v16, v7 = v17, __swift_project_boxed_opaque_existential_1(v15, v16), type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityActivationPointStorage?, &type metadata for AccessibilityActivationPointStorage, MEMORY[0x1E69E6720]), (*(v7 + 16))(v14, v8, v8, v6, v7), v9 = v14[0], v10 = v14[1], v11 = v14[2], v12 = v14[3], v13 = v14[4], __swift_destroy_boxed_opaque_existential_1(v15), v12))
  {
    outlined consume of AccessibilityActivationPointStorage?(v9, v10, v11, v12, v13);
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 16) = v11;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
  }
}

uint64_t one-time initialization function for valueType()
{
  result = type metadata accessor for AccessibilityChartDescriptorStorage();
  static AccessibilityProperties.ChartDescriptorKey.valueType = result;
  return result;
}

uint64_t static AccessibilityProperties.ChartDescriptorKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return static AccessibilityProperties.ChartDescriptorKey.valueType;
}

uint64_t protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.ChartDescriptorKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return static AccessibilityProperties.ChartDescriptorKey.valueType;
}

uint64_t key path setter for AccessibilityProperties.chartDescriptor : AccessibilityProperties(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityChartDescriptorStorage?>, type metadata accessor for AccessibilityChartDescriptorStorage?, type metadata accessor for AccessibilityPropertiesEntry);
    v4[3] = v2;
    v4[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v1;

    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.ChartDescriptorKey);
  }

  else
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.ChartDescriptorKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }
}

void (*AccessibilityProperties.chartDescriptor.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 40) = _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015ChartDescriptorG0V_Tt0g5Tm(&type metadata for AccessibilityProperties.ChartDescriptorKey, type metadata accessor for AccessibilityChartDescriptorStorage?);
  return AccessibilityProperties.chartDescriptor.modify;
}

void AccessibilityProperties.chartDescriptor.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 5);
  if (a2)
  {
    if (v3)
    {
      type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityChartDescriptorStorage?>, type metadata accessor for AccessibilityChartDescriptorStorage?, type metadata accessor for AccessibilityPropertiesEntry);
      v7 = v4;
      v8 = &protocol witness table for AccessibilityPropertiesEntry<A>;
      v6[0] = v3;

      specialized Dictionary.subscript.setter(v6, &type metadata for AccessibilityProperties.ChartDescriptorKey);
    }

    else
    {
      specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.ChartDescriptorKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v2);
      outlined destroy of AnyAccessibilityPropertiesEntry?(v2, type metadata accessor for AnyAccessibilityPropertiesEntry?);
    }
  }

  else if (v3)
  {
    type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityChartDescriptorStorage?>, type metadata accessor for AccessibilityChartDescriptorStorage?, type metadata accessor for AccessibilityPropertiesEntry);
    v7 = v5;
    v8 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v6[0] = v3;
    specialized Dictionary.subscript.setter(v6, &type metadata for AccessibilityProperties.ChartDescriptorKey);
  }

  else
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.ChartDescriptorKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v2);
    outlined destroy of AnyAccessibilityPropertiesEntry?(v2, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  free(v2);
}

uint64_t static AccessibilityProperties.ChildBehaviorKind.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

ValueMetadata *protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.ChildBehaviorKind()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return &type metadata for AccessibilityChildBehaviorKind;
}

void AccessibilityProperties.childBehaviorKind.getter(char *a1@<X8>)
{
  v3 = *(v1 + 280);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.ChildBehaviorKind), (v5 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v4, v10 + 1);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1((v10 + 1), v11);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorKind?, &type metadata for AccessibilityChildBehaviorKind, MEMORY[0x1E69E6720]);
    (*(v7 + 16))(v10, v8, v8, v6, v7);
    v9 = v10[0];
    __swift_destroy_boxed_opaque_existential_1((v10 + 1));
  }

  else
  {
    v9 = 2;
  }

  *a1 = v9;
}

uint64_t key path setter for AccessibilityProperties.childBehaviorKind : AccessibilityProperties(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 2)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.ChildBehaviorKind, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityChildBehaviorKind?>(0);
    v5 = v3;
    v6 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v1;
    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.ChildBehaviorKind);
  }
}

uint64_t AccessibilityProperties.childBehaviorKind.setter(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 2)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.ChildBehaviorKind, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityChildBehaviorKind?>(0);
    v5 = v3;
    v6 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v1;
    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.ChildBehaviorKind);
  }
}

void (*AccessibilityProperties.childBehaviorKind.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC17ChildBehaviorKindV_Tt0g5((v3 + 48));
  return AccessibilityProperties.childBehaviorKind.modify;
}

void AccessibilityProperties.childBehaviorKind.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  if (v2 == 2)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.ChildBehaviorKind, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v1);
    outlined destroy of AnyAccessibilityPropertiesEntry?(v1, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityChildBehaviorKind?>(0);
    v5 = v3;
    v6 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v2;
    specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.ChildBehaviorKind);
  }

  free(v1);
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluisAC017CustomContentListG0V_Tt0g5Tm(uint64_t a1)
{
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI31AccessibilityCustomContentEntryV_Tt1g5(a1, MEMORY[0x1E69E7CC0]))
  {

    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.CustomContentListKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<[AccessibilityCustomContentEntry]>(0);
    v4[3] = v3;
    v4[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = a1;
    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.CustomContentListKey);
  }
}

uint64_t static AccessibilityProperties.CustomAttributesKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

ValueMetadata *protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.CustomAttributesKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return &type metadata for AccessibilityCustomAttributes;
}

uint64_t key path setter for AccessibilityProperties.customAttributes : AccessibilityProperties(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityCustomAttributes?>(0);
    v4[3] = v2;
    v4[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v1;

    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.CustomAttributesKey);
  }

  else
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.CustomAttributesKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }
}

uint64_t AccessibilityProperties.customAttributes.setter(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityCustomAttributes?>(0);
    v4[3] = v2;
    v4[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v1;
    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.CustomAttributesKey);
  }

  else
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.CustomAttributesKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }
}

uint64_t static AccessibilityProperties.DataSeriesConfigurationKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

ValueMetadata *protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.DataSeriesConfigurationKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return &type metadata for AccessibilityDataSeriesConfiguration;
}

void *AccessibilityProperties.dataSeriesConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 280);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.DataSeriesConfigurationKey), (v5 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v4, v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration, MEMORY[0x1E69E6720]);
    (*(v7 + 16))(v10, v8, v8, v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    _s7SwiftUI36AccessibilityDataSeriesConfigurationVSgWOi0_(v10);
  }

  return memcpy(a1, v10, 0x138uLL);
}

uint64_t key path setter for AccessibilityProperties.dataSeriesConfiguration : AccessibilityProperties(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (_s7SwiftUI36AccessibilityDataSeriesConfigurationVSgWOg(__dst) == 1)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.DataSeriesConfigurationKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v6);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v6, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityDataSeriesConfiguration?>(0);
    v5[3] = v3;
    v5[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v5[0] = swift_allocObject();
    memcpy((v5[0] + 16), __src, 0x138uLL);
    memcpy(v6, __src, sizeof(v6));
    outlined init with copy of AccessibilityDataSeriesConfiguration(v6, &v4);
    return specialized Dictionary.subscript.setter(v5, &type metadata for AccessibilityProperties.DataSeriesConfigurationKey);
  }
}

uint64_t AccessibilityProperties.dataSeriesConfiguration.setter(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (_s7SwiftUI36AccessibilityDataSeriesConfigurationVSgWOg(__dst) == 1)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.DataSeriesConfigurationKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityDataSeriesConfiguration?>(0);
    v4[3] = v3;
    v4[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = swift_allocObject();
    memcpy((v4[0] + 16), __src, 0x138uLL);
    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.DataSeriesConfigurationKey);
  }
}

void (*AccessibilityProperties.dataSeriesConfiguration.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x4E8uLL);
  }

  *a1 = v3;
  v3[156] = v1;
  _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC023DataSeriesConfigurationG0V_Tt0g5(v3);
  return AccessibilityProperties.dataSeriesConfiguration.modify;
}

void AccessibilityProperties.dataSeriesConfiguration.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    memcpy(__dst, v2, sizeof(__dst));
    memcpy((v2 + 312), v2, 0x138uLL);
    if (_s7SwiftUI36AccessibilityDataSeriesConfigurationVSgWOg(v2 + 312) == 1)
    {
      specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.DataSeriesConfigurationKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v2 + 624);
      outlined destroy of AnyAccessibilityPropertiesEntry?(v2 + 624, type metadata accessor for AnyAccessibilityPropertiesEntry?);
    }

    else
    {
      type metadata accessor for AccessibilityPropertiesEntry<AccessibilityDataSeriesConfiguration?>(0);
      v8 = v3;
      v9 = &protocol witness table for AccessibilityPropertiesEntry<A>;
      v7[0] = swift_allocObject();
      memcpy((v7[0] + 16), __dst, 0x138uLL);
      memcpy((v2 + 624), __dst, 0x138uLL);
      outlined init with copy of AccessibilityDataSeriesConfiguration(v2 + 624, v2 + 936);
      specialized Dictionary.subscript.setter(v7, &type metadata for AccessibilityProperties.DataSeriesConfigurationKey);
    }

    memcpy((v2 + 624), v2, 0x138uLL);
    outlined destroy of AccessibilityDataSeriesConfiguration?(v2 + 624);
  }

  else
  {
    memcpy(__src, v2, sizeof(__src));
    memcpy((v2 + 312), v2, 0x138uLL);
    if (_s7SwiftUI36AccessibilityDataSeriesConfigurationVSgWOg(v2 + 312) == 1)
    {
      specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.DataSeriesConfigurationKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v2 + 624);
      outlined destroy of AnyAccessibilityPropertiesEntry?(v2 + 624, type metadata accessor for AnyAccessibilityPropertiesEntry?);
    }

    else
    {
      type metadata accessor for AccessibilityPropertiesEntry<AccessibilityDataSeriesConfiguration?>(0);
      v8 = v4;
      v9 = &protocol witness table for AccessibilityPropertiesEntry<A>;
      v7[0] = swift_allocObject();
      memcpy((v7[0] + 16), __src, 0x138uLL);
      specialized Dictionary.subscript.setter(v7, &type metadata for AccessibilityProperties.DataSeriesConfigurationKey);
    }
  }

  free(v2);
}

uint64_t static AccessibilityProperties.AutomationTypeKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t AccessibilityProperties.explicitAutomationType.getter()
{
  v1 = *(v0 + 280);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.AutomationTypeKey);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of AnyTrackedValue(*(v1 + 56) + 40 * v2, v10);
  v4 = v11;
  v5 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  type metadata accessor for AXAutomationType?(0);
  (*(v5 + 16))(&v9, v6, v6, v4, v5);
  v7 = v9;
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

uint64_t key path setter for AccessibilityProperties.explicitAutomationType : AccessibilityProperties(uint64_t *a1)
{
  if (a1[1])
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.AutomationTypeKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), &v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(&v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    v2 = *a1;
    type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AXAutomationType?>, type metadata accessor for AXAutomationType?, type metadata accessor for AccessibilityPropertiesEntry);
    v6 = v3;
    v7 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4 = v2;
    v5 = 0;
    return specialized Dictionary.subscript.setter(&v4, &type metadata for AccessibilityProperties.AutomationTypeKey);
  }
}

uint64_t AccessibilityProperties.explicitAutomationType.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.AutomationTypeKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), &v5);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(&v5, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AXAutomationType?>, type metadata accessor for AXAutomationType?, type metadata accessor for AccessibilityPropertiesEntry);
    v7 = v4;
    v8 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v5 = a1;
    v6 = 0;
    return specialized Dictionary.subscript.setter(&v5, &type metadata for AccessibilityProperties.AutomationTypeKey);
  }
}

void (*AccessibilityProperties.explicitAutomationType.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 40) = AccessibilityProperties.explicitAutomationType.getter();
  *(v4 + 48) = v5 & 1;
  return AccessibilityProperties.explicitAutomationType.modify;
}

void AccessibilityProperties.explicitAutomationType.modify(uint64_t a1)
{
  v1 = *a1;
  if (*(*a1 + 48))
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.AutomationTypeKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v1);
    outlined destroy of AnyAccessibilityPropertiesEntry?(v1, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    v2 = v1[5];
    type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AXAutomationType?>, type metadata accessor for AXAutomationType?, type metadata accessor for AccessibilityPropertiesEntry);
    v6 = v3;
    v7 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4 = v2;
    v5 = 0;
    specialized Dictionary.subscript.setter(&v4, &type metadata for AccessibilityProperties.AutomationTypeKey);
  }

  free(v1);
}

void (*AccessibilityProperties.hints.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC05HintsG0V_Tt0g5();
  return AccessibilityProperties.hints.modify;
}

uint64_t static AccessibilityProperties.InputLabelsKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

void protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.InputLabelsKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for [Text], &type metadata for Text, MEMORY[0x1E69E62F8]);
}

uint64_t key path setter for AccessibilityProperties.inputLabels : AccessibilityProperties(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<[Text]?>, type metadata accessor for [Text]?, type metadata accessor for AccessibilityPropertiesEntry);
    v4[3] = v2;
    v4[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v1;

    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.InputLabelsKey);
  }

  else
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.InputLabelsKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }
}

void (*AccessibilityProperties.inputLabels.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 40) = _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015ChartDescriptorG0V_Tt0g5Tm(&type metadata for AccessibilityProperties.InputLabelsKey, type metadata accessor for [Text]?);
  return AccessibilityProperties.inputLabels.modify;
}

void AccessibilityProperties.inputLabels.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 5);
  if (a2)
  {
    if (v3)
    {
      type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<[Text]?>, type metadata accessor for [Text]?, type metadata accessor for AccessibilityPropertiesEntry);
      v7 = v4;
      v8 = &protocol witness table for AccessibilityPropertiesEntry<A>;
      v6[0] = v3;

      specialized Dictionary.subscript.setter(v6, &type metadata for AccessibilityProperties.InputLabelsKey);
    }

    else
    {
      specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.InputLabelsKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v2);
      outlined destroy of AnyAccessibilityPropertiesEntry?(v2, type metadata accessor for AnyAccessibilityPropertiesEntry?);
    }
  }

  else if (v3)
  {
    type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<[Text]?>, type metadata accessor for [Text]?, type metadata accessor for AccessibilityPropertiesEntry);
    v7 = v5;
    v8 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v6[0] = v3;
    specialized Dictionary.subscript.setter(v6, &type metadata for AccessibilityProperties.InputLabelsKey);
  }

  else
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.InputLabelsKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v2);
    outlined destroy of AnyAccessibilityPropertiesEntry?(v2, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  free(v2);
}

uint64_t static AccessibilityProperties.LinkDestinationKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.AutomationTypeKey(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (*a3 == -1)
  {

    return (a4)(0, a2);
  }

  else
  {
    swift_once();

    return a4(0);
  }
}

uint64_t AccessibilityProperties.linkDestination.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LinkDestination.Configuration??(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 280);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.LinkDestinationKey), (v8 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v6 + 56) + 40 * v7, v18);
    v9 = v19;
    v10 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    type metadata accessor for LinkDestination.Configuration?(0);
    v12 = v11;
    (*(v10 + 16))(v11, v11, v9, v10);
    v13 = *(v12 - 8);
    (*(v13 + 56))(v5, 0, 1, v12);
    __swift_destroy_boxed_opaque_existential_1(v18);
    if ((*(v13 + 48))(v5, 1, v12) != 1)
    {
      return outlined init with take of LinkDestination.Configuration?(v5, a1, type metadata accessor for LinkDestination.Configuration?);
    }
  }

  else
  {
    type metadata accessor for LinkDestination.Configuration?(0);
    v12 = v14;
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  }

  v15 = type metadata accessor for LinkDestination.Configuration(0);
  (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  type metadata accessor for LinkDestination.Configuration?(0);
  result = (*(*(v12 - 8) + 48))(v5, 1, v12);
  if (result != 1)
  {
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v5, type metadata accessor for LinkDestination.Configuration??);
  }

  return result;
}

uint64_t (*AccessibilityProperties.linkDestination.modify(void *a1))()
{
  *a1 = v1;
  type metadata accessor for LinkDestination.Configuration?(0);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    a1[2] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    a1[2] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[3] = v5;
  _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015LinkDestinationG0V_Tt0g5(v5);
  return AccessibilityProperties.linkDestination.modify;
}

uint64_t static AccessibilityProperties.RoleDescriptionKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

ValueMetadata *protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.RoleDescriptionKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return &type metadata for Text;
}

uint64_t AccessibilityProperties.roleDescription.getter()
{
  v1 = *(v0 + 280);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.RoleDescriptionKey);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of AnyTrackedValue(*(v1 + 56) + 40 * v2, v10);
  v4 = v11;
  v5 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for Text?, &type metadata for Text, MEMORY[0x1E69E6720]);
  (*(v5 + 16))(&v9, v6, v6, v4, v5);
  v7 = v9;
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

uint64_t key path setter for AccessibilityProperties.roleDescription : AccessibilityProperties(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  outlined copy of Text?(*a1, v2, v3, v4);
  return AccessibilityProperties.roleDescription.setter(v1, v2, v3, v4);
}

uint64_t AccessibilityProperties.roleDescription.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    outlined copy of Text?(a1, a2, a3, a4);
    outlined copy of Text.Storage(a1, a2, a3 & 1);

    outlined consume of Text.Storage(a1, a2, a3 & 1);

    type metadata accessor for AccessibilityPropertiesEntry<Text?>(0);
    v11[3] = v8;
    v11[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v9 = swift_allocObject();
    v11[0] = v9;
    v9[2] = a1;
    v9[3] = a2;
    v9[4] = a3;
    v9[5] = a4;
    specialized Dictionary.subscript.setter(v11, &type metadata for AccessibilityProperties.RoleDescriptionKey);
    return outlined consume of Text?(a1, a2, a3, a4);
  }

  else
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.RoleDescriptionKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v11);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v11, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }
}

void (*AccessibilityProperties.roleDescription.modify(void *a1))(uint64_t **a1, char a2)
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
  *v3 = _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015RoleDescriptionG0V_Tt0g5();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return AccessibilityProperties.roleDescription.modify;
}

void AccessibilityProperties.roleDescription.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    outlined copy of Text?(**a1, v4, v5, v6);
    AccessibilityProperties.roleDescription.setter(v3, v4, v5, v6);
    outlined consume of Text?(*v2, v2[1], v2[2], v2[3]);
  }

  else
  {
    AccessibilityProperties.roleDescription.setter(**a1, v4, v5, v6);
  }

  free(v2);
}

uint64_t static AccessibilityProperties.SortPriorityKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.SortPriorityKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return MEMORY[0x1E69E63B0];
}

uint64_t AccessibilityProperties.sortPriority.getter()
{
  v1 = *(v0 + 280);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.SortPriorityKey);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of AnyTrackedValue(*(v1 + 56) + 40 * v2, v10);
  v4 = v11;
  v5 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  (*(v5 + 16))(&v9, v6, v6, v4, v5);
  v7 = v9;
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

uint64_t key path setter for AccessibilityProperties.sortPriority : AccessibilityProperties(uint64_t *a1)
{
  if (a1[1])
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.SortPriorityKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), &v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(&v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    v2 = *a1;
    type metadata accessor for AccessibilityPropertiesEntry<Double?>(0);
    v6 = v3;
    v7 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4 = v2;
    v5 = 0;
    return specialized Dictionary.subscript.setter(&v4, &type metadata for AccessibilityProperties.SortPriorityKey);
  }
}

uint64_t AccessibilityProperties.sortPriority.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.SortPriorityKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), &v5);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(&v5, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<Double?>(0);
    v7 = v4;
    v8 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v5 = a1;
    v6 = 0;
    return specialized Dictionary.subscript.setter(&v5, &type metadata for AccessibilityProperties.SortPriorityKey);
  }
}

void (*AccessibilityProperties.sortPriority.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 40) = AccessibilityProperties.sortPriority.getter();
  *(v4 + 48) = v5 & 1;
  return AccessibilityProperties.sortPriority.modify;
}

void AccessibilityProperties.sortPriority.modify(uint64_t a1)
{
  v1 = *a1;
  if (*(*a1 + 48))
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.SortPriorityKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v1);
    outlined destroy of AnyAccessibilityPropertiesEntry?(v1, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    v2 = v1[5];
    type metadata accessor for AccessibilityPropertiesEntry<Double?>(0);
    v6 = v3;
    v7 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4 = v2;
    v5 = 0;
    specialized Dictionary.subscript.setter(&v4, &type metadata for AccessibilityProperties.SortPriorityKey);
  }

  free(v1);
}

uint64_t static AccessibilityProperties.TextContentTypeKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

ValueMetadata *protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.TextContentTypeKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return &type metadata for AccessibilityTextContentType;
}

void AccessibilityProperties.textContentType.getter(char *a1@<X8>)
{
  v3 = *(v1 + 280);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.TextContentTypeKey), (v5 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v4, v10 + 1);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1((v10 + 1), v11);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityTextContentType?, &type metadata for AccessibilityTextContentType, MEMORY[0x1E69E6720]);
    (*(v7 + 16))(v10, v8, v8, v6, v7);
    v9 = v10[0];
    __swift_destroy_boxed_opaque_existential_1((v10 + 1));
  }

  else
  {
    v9 = 8;
  }

  *a1 = v9;
}

uint64_t key path setter for AccessibilityProperties.textContentType : AccessibilityProperties(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 8)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.TextContentTypeKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityTextContentType?>(0);
    v5 = v3;
    v6 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v1;
    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.TextContentTypeKey);
  }
}

uint64_t AccessibilityProperties.textContentType.setter(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 8)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.TextContentTypeKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityTextContentType?>(0);
    v5 = v3;
    v6 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v1;
    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.TextContentTypeKey);
  }
}

void (*AccessibilityProperties.textContentType.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015TextContentTypeG0V_Tt0g5((v3 + 48));
  return AccessibilityProperties.textContentType.modify;
}

void AccessibilityProperties.textContentType.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  if (v2 == 8)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.TextContentTypeKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v1);
    outlined destroy of AnyAccessibilityPropertiesEntry?(v1, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityTextContentType?>(0);
    v5 = v3;
    v6 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v2;
    specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.TextContentTypeKey);
  }

  free(v1);
}

uint64_t static AccessibilityProperties.TextHeadingLevelKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

ValueMetadata *protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.TextHeadingLevelKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return &type metadata for AccessibilityHeadingLevel;
}

uint64_t AccessibilityProperties.textHeadingLevel.getter()
{
  v1 = *(v0 + 280);
  if (!*(v1 + 16))
  {
    return 7;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.TextHeadingLevelKey);
  if ((v3 & 1) == 0)
  {
    return 7;
  }

  outlined init with copy of AnyTrackedValue(*(v1 + 56) + 40 * v2, v9 + 1);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1((v9 + 1), v10);
  type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityHeadingLevel?, &type metadata for AccessibilityHeadingLevel, MEMORY[0x1E69E6720]);
  (*(v5 + 16))(v9, v6, v6, v4, v5);
  v7 = LOBYTE(v9[0]);
  __swift_destroy_boxed_opaque_existential_1((v9 + 1));
  return v7;
}

uint64_t key path setter for AccessibilityProperties.textHeadingLevel : AccessibilityProperties(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 7)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.TextHeadingLevelKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityHeadingLevel?>(0);
    v5 = v3;
    v6 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v1;
    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.TextHeadingLevelKey);
  }
}

uint64_t AccessibilityProperties.textHeadingLevel.setter(char a1)
{
  if (a1 == 7)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.TextHeadingLevelKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityHeadingLevel?>(0);
    v5 = v3;
    v6 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = a1;
    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.TextHeadingLevelKey);
  }
}

void (*AccessibilityProperties.textHeadingLevel.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = AccessibilityProperties.textHeadingLevel.getter();
  return AccessibilityProperties.textHeadingLevel.modify;
}

void AccessibilityProperties.textHeadingLevel.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  if (v2 == 7)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.TextHeadingLevelKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v1);
    outlined destroy of AnyAccessibilityPropertiesEntry?(v1, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityHeadingLevel?>(0);
    v5 = v3;
    v6 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v2;
    specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.TextHeadingLevelKey);
  }

  free(v1);
}

uint64_t static AccessibilityProperties.LocaleKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t AccessibilityProperties.locale.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Locale??(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 280);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.LocaleKey), (v8 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v6 + 56) + 40 * v7, v18);
    v9 = v19;
    v10 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    type metadata accessor for Locale?(0);
    v12 = v11;
    (*(v10 + 16))(v11, v11, v9, v10);
    v13 = *(v12 - 8);
    (*(v13 + 56))(v5, 0, 1, v12);
    __swift_destroy_boxed_opaque_existential_1(v18);
    if ((*(v13 + 48))(v5, 1, v12) != 1)
    {
      return outlined init with take of LinkDestination.Configuration?(v5, a1, type metadata accessor for Locale?);
    }
  }

  else
  {
    type metadata accessor for Locale?(0);
    v12 = v14;
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  }

  v15 = type metadata accessor for Locale();
  (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  type metadata accessor for Locale?(0);
  result = (*(*(v12 - 8) + 48))(v5, 1, v12);
  if (result != 1)
  {
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v5, type metadata accessor for Locale??);
  }

  return result;
}

uint64_t key path setter for AccessibilityProperties.linkDestination : AccessibilityProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(char *), uint64_t (*a8)(void))
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v19 - v16;
  outlined init with copy of LinkDestination.Configuration?(a1, &v19 - v16, a6);
  outlined init with copy of LinkDestination.Configuration?(v17, v14, a6);
  a7(v14);
  return outlined destroy of AnyAccessibilityPropertiesEntry?(v17, a8);
}

uint64_t AccessibilityProperties.linkDestination.setter(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(char *), uint64_t (*a5)(void))
{
  v9 = a2(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v13 - v10;
  outlined init with copy of LinkDestination.Configuration?(a1, &v13 - v10, a3);
  a4(v11);
  return outlined destroy of AnyAccessibilityPropertiesEntry?(a1, a5);
}

uint64_t (*AccessibilityProperties.locale.modify(void *a1))()
{
  *a1 = v1;
  type metadata accessor for Locale?(0);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    a1[2] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    a1[2] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[3] = v5;
  _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC06LocaleG0V_Tt0g5(v5);
  return AccessibilityProperties.locale.modify;
}

void AccessibilityProperties.linkDestination.modify(void *a1, char a2, uint64_t (*a3)(void), void (*a4)(void *), uint64_t (*a5)(void), double a6)
{
  v11 = a1[2];
  v12 = a1[3];
  outlined init with copy of LinkDestination.Configuration?(v12, v11, a3);
  v13 = a1[1];
  if (a2)
  {
    outlined init with copy of LinkDestination.Configuration?(v11, v13, a3);
    a4(v13);
    outlined destroy of AnyAccessibilityPropertiesEntry?(v11, a5);
  }

  else
  {
    a4(v11);
  }

  outlined destroy of AnyAccessibilityPropertiesEntry?(v12, a5);
  free(v12);
  free(v11);

  free(v13);
}

double static AccessibilityProperties.HintsKey.defaultValue.getter(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

double protocol witness for static AccessibilityPropertiesKey.defaultValue.getter in conformance AccessibilityProperties.HintsKey@<D0>(void *a1@<X2>, void *a2@<X3>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a4;
    swift_once();
    a4 = v7;
    a2 = v6;
  }

  *a4 = *a2;

  return result;
}

uint64_t AccessibilityProperties.images.getter()
{
  v1 = *(v0 + 280);
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.ImagesKey), (v3 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v1 + 56) + 40 * v2, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for [Image], &type metadata for Image, MEMORY[0x1E69E62F8]);
    (*(v5 + 16))(&v9, v6, v6, v4, v5);
    v7 = v9;
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v7 = static AccessibilityProperties.ImagesKey.defaultValue;
  }

  return v7;
}

void (*AccessibilityProperties.images.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC06ImagesG0V_Tt0g5();
  return AccessibilityProperties.images.modify;
}

void AccessibilityProperties.hints.modify(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  if (a2)
  {

    a3(v4);
  }

  else
  {
    a3(*a1);
  }
}

uint64_t AccessibilityProperties.subscript.getter(unsigned __int8 *a1)
{
  if (*(v1 + 56))
  {
    return 2;
  }

  v3 = *a1;
  if (v3 > 0x3F)
  {
    return 1;
  }

  v4 = 1 << v3;
  if ((v4 & *(v1 + 40)) != 0)
  {
    return 1;
  }

  else
  {
    return 2 * ((v4 & *(v1 + 48)) == 0);
  }
}

double (*AccessibilityProperties.subscript.modify(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, char a2)
{
  *a1 = v2;
  v3 = *a2;
  *(a1 + 9) = v3;
  if (*(v2 + 56))
  {
    v4 = 2;
  }

  else if (v3 <= 0x3F)
  {
    v5 = 1 << v3;
    if ((*(v2 + 40) & v5) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2 * ((*(v2 + 48) & v5) == 0);
    }
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 8) = v4;
  return AccessibilityProperties.subscript.modify;
}

double AccessibilityProperties.subscript.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 9);
  v3 = *(a1 + 8);
  if (a2)
  {
    v6 = v2;
    v4 = &v6;
  }

  else
  {
    v7 = v2;
    v4 = &v7;
  }

  return AccessibilityProperties.subscript.setter(v3, v4);
}

uint64_t AccessibilityProperties.subscript.getter(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = a2;
  if (*(v2 + 56))
  {
    return v3 & 1;
  }

  v4 = *a1;
  if (v4 > 0x3F)
  {
    return 1;
  }

  v3 = 1;
  v6 = 1 << v4;
  if ((v6 & *(v2 + 40)) != 0)
  {
    return v3 & 1;
  }

  else
  {
    return ((v6 & *(v2 + 48)) == 0) & a2;
  }
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v10;
  }

  outlined destroy of AnyHashable(*(v7 + 48) + 40 * v5);
  v8 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v5, v7);
  *v2 = v7;
  return v8;
}

double specialized Dictionary.removeValue(forKey:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __int16 a3@<W2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3 & 0x1FF);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    *&v17[0] = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = *&v17[0];
    }

    memmove(a4, (*(v11 + 56) + (v9 << 7)), 0x80uLL);
    specialized _NativeDictionary._delete(at:)(v9, v11);
    *v5 = v11;
    _ViewInputs.base.modify();
  }

  else
  {
    _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(v17);
    v13 = v21;
    a4[4] = v20;
    a4[5] = v13;
    v14 = v23;
    a4[6] = v22;
    a4[7] = v14;
    v15 = v17[1];
    *a4 = v17[0];
    a4[1] = v15;
    result = *&v18;
    v16 = v19;
    a4[2] = v18;
    a4[3] = v16;
  }

  return result;
}

void type metadata accessor for AccessibilityPropertiesEntry<AccessibilityActivationPointStorage?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityActivationPointStorage?>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for AccessibilityActivationPointStorage?, &type metadata for AccessibilityActivationPointStorage, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for AccessibilityPropertiesEntry(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityActivationPointStorage?>);
    }
  }
}

double outlined consume of AccessibilityActivationPointStorage?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
  }

  return result;
}

void type metadata accessor for AccessibilityPropertiesEntry<AccessibilityChildBehaviorKind?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityChildBehaviorKind?>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for AccessibilityChildBehaviorKind?, &type metadata for AccessibilityChildBehaviorKind, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for AccessibilityPropertiesEntry(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityChildBehaviorKind?>);
    }
  }
}

void type metadata accessor for AccessibilityPropertiesEntry<[AccessibilityCustomContentEntry]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<[AccessibilityCustomContentEntry]>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for [AccessibilityCustomContentEntry], &type metadata for AccessibilityCustomContentEntry, MEMORY[0x1E69E62F8]);
    v5 = type metadata accessor for AccessibilityPropertiesEntry(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<[AccessibilityCustomContentEntry]>);
    }
  }
}

void type metadata accessor for AccessibilityPropertiesEntry<AccessibilityCustomAttributes?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityCustomAttributes?>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for AccessibilityCustomAttributes?, &type metadata for AccessibilityCustomAttributes, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for AccessibilityPropertiesEntry(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityCustomAttributes?>);
    }
  }
}

uint64_t _s7SwiftUI36AccessibilityDataSeriesConfigurationVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void type metadata accessor for AccessibilityPropertiesEntry<AccessibilityDataSeriesConfiguration?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityDataSeriesConfiguration?>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for AccessibilityPropertiesEntry(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityDataSeriesConfiguration?>);
    }
  }
}

uint64_t outlined destroy of AccessibilityDataSeriesConfiguration?(uint64_t a1)
{
  type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for [Text]?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for [Text]?)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for [Text], &type metadata for Text, MEMORY[0x1E69E62F8]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [Text]?);
    }
  }
}

void type metadata accessor for AccessibilityPropertiesEntry<Text?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<Text?>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for Text?, &type metadata for Text, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for AccessibilityPropertiesEntry(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<Text?>);
    }
  }
}

void type metadata accessor for AccessibilityPropertiesEntry<Double?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<Double?>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for AccessibilityPropertiesEntry(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<Double?>);
    }
  }
}

void type metadata accessor for AccessibilityPropertiesEntry<AccessibilityTextContentType?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityTextContentType?>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for AccessibilityTextContentType?, &type metadata for AccessibilityTextContentType, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for AccessibilityPropertiesEntry(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityTextContentType?>);
    }
  }
}

void type metadata accessor for AccessibilityPropertiesEntry<AccessibilityHeadingLevel?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityHeadingLevel?>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for AccessibilityHeadingLevel?, &type metadata for AccessibilityHeadingLevel, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for AccessibilityPropertiesEntry(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityHeadingLevel?>);
    }
  }
}

uint64_t outlined init with copy of LinkDestination.Configuration?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for AccessibilityActivationPointStorage?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for AccessibilityPropertiesEntry<[Image]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<[Image]>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for [Image], &type metadata for Image, MEMORY[0x1E69E62F8]);
    v5 = type metadata accessor for AccessibilityPropertiesEntry(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<[Image]>);
    }
  }
}

void type metadata accessor for AccessibilityPropertiesEntry<[Text]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<[Text]>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for [Text], &type metadata for Text, MEMORY[0x1E69E62F8]);
    v5 = type metadata accessor for AccessibilityPropertiesEntry(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<[Text]>);
    }
  }
}

uint64_t _CustomHoverEffectInputs.updateContext(_:)(int a1)
{
  *(v1 + 84) = a1;
  swift_beginAccess();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type UpdateEnvironmentCustomHoverEffectContext and conformance UpdateEnvironmentCustomHoverEffectContext();
  v2 = Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter(v2);
}

SwiftUI::SystemHoverEffect __swiftcall SystemHoverEffect.init(info:isEnabled:)(SwiftUI::SystemHoverEffect::Info_optional info, Swift::Bool isEnabled)
{
  *v2 = *info.value.style;
  v2[1] = isEnabled;
  result.info = info;
  return result;
}

void _s7SwiftUI17CustomHoverEffectPAAE05_makecdE06effect6inputs4bodyAA01_cdE7OutputsVAA11_GraphValueVyxG_AA01_cdE6InputsVAiNctFZs5NeverO_Tt3B5(uint64_t a1, uint64_t a2)
{
  if (AGTypeGetKind() - 2 > 3)
  {
    _StringGuts.grow(_:)(44);

    v3 = 0xD00000000000002ALL;
    v4 = 0x800000018DD77700;
    MEMORY[0x193ABEDD0](0x726576654ELL, 0xE500000000000000);
  }

  else
  {
    static DynamicPropertyCache.fields(of:)(MEMORY[0x1E69E73E0], &v3);
    v5 = 0;
    v6 = 0xE000000000000000;
    outlined init with copy of _CustomHoverEffectInputs(a2, &v3);
    _StringGuts.grow(_:)(29);

    v3 = 0x726576654ELL;
    v4 = 0xE500000000000000;
    MEMORY[0x193ABEDD0](0xD00000000000001BLL, 0x800000018DD77760);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static EmptyHoverEffect._makeCustomHoverEffect(effect:inputs:body:)(uint64_t a1, _OWORD *a2, uint64_t (*a3)(_OWORD *))
{
  v3 = a2[3];
  v6[2] = a2[2];
  v6[3] = v3;
  v7[0] = a2[4];
  *(v7 + 12) = *(a2 + 76);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  return a3(v6);
}

uint64_t _CustomHoverEffectInputs.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 64);
  v10 = *(v1 + 48);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 80);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of _ViewInputs(v9, v8);
}

__n128 _CustomHoverEffectInputs.base.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v8[4] = *(v1 + 64);
  v9 = *(v1 + 80);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  outlined destroy of _ViewInputs(v8);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  return result;
}

uint64_t _CustomHoverEffectInputs.init(base:context:inheritedTransform:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 24) = *(a1 + 24);
  *(a4 + 40) = *(a1 + 40);
  *(a4 + 56) = *(a1 + 56);
  *(a4 + 68) = *(a1 + 68);
  swift_beginAccess();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type UpdateEnvironmentCustomHoverEffectContext and conformance UpdateEnvironmentCustomHoverEffectContext();
  v8 = Attribute.init<A>(body:value:flags:update:)();
  result = _GraphInputs.environment.setter(v8);
  *(a4 + 84) = a2;
  *(a4 + 88) = a3;
  return result;
}

double _CustomHoverEffectInputs.makeIndirectOutputs()@<D0>(double *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 16);
  v17 = *(v1 + 32);
  v18 = v3;
  v5 = *(v1 + 48);
  v19 = *(v1 + 64);
  v6 = *(v1 + 16);
  v16[0] = *v1;
  v16[1] = v6;
  v10 = v17;
  v11 = v5;
  v12 = *(v1 + 64);
  v20 = *(v1 + 80);
  v13 = *(v1 + 80);
  v8 = v16[0];
  v9 = v4;
  outlined init with copy of _ViewInputs(v16, v21);
  _ViewInputs.makeIndirectOutputs()(&v14);
  v21[2] = v10;
  v21[3] = v11;
  v21[4] = v12;
  v22 = v13;
  v21[0] = v8;
  v21[1] = v9;
  outlined destroy of _ViewInputs(v21);
  *a1 = v14;
  result = v15;
  a1[1] = v15;
  return result;
}

double _CustomHoverEffectOutputs.init(base:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double _CustomHoverEffectOutputs.base.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = v1[1];

  return result;
}

double _CustomHoverEffectOutputs.base.setter(double *a1)
{
  v3 = *a1;

  *v1 = v3;
  result = a1[1];
  *(v1 + 8) = result;
  return result;
}

void _s7SwiftUI17CustomHoverEffectPAAE9bodyErrors5NeverOyFAF_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0x726576654ELL, 0xE500000000000000);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI17CustomHoverEffectPAAE9bodyErrors5NeverOyFAA05EmptydE0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DDAFE90);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void protocol witness for static CustomHoverEffect._makeCustomHoverEffect(effect:inputs:body:) in conformance Never(unsigned int *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[3];
  v5[2] = a2[2];
  v5[3] = v3;
  v6[0] = a2[4];
  *(v6 + 12) = *(a2 + 76);
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  _s7SwiftUI17CustomHoverEffectPAAE05_makecdE06effect6inputs4bodyAA01_cdE7OutputsVAA11_GraphValueVyxG_AA01_cdE6InputsVAiNctFZs5NeverO_Tt3B5(v2, v5);
}

Swift::Int SystemHoverEffect.Style.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

SwiftUI::SystemHoverEffect::Resolved __swiftcall SystemHoverEffect.Resolved.init(info:isEnabled:)(SwiftUI::SystemHoverEffect::Info info, Swift::Bool isEnabled)
{
  *v2 = *info.style;
  v2[1] = isEnabled;
  result.info = info;
  return result;
}

SwiftUI::SystemHoverEffect::Resolved __swiftcall SystemHoverEffect.resolve()()
{
  v2 = *v1;
  v3 = v1[1];
  if (v2 == 3)
  {
    LOBYTE(v2) = 0;
  }

  *v0 = v2;
  v0[1] = v3;
  return result;
}

SwiftUI::SystemHoverEffect __swiftcall SystemHoverEffect.merge(with:)(SwiftUI::SystemHoverEffect with)
{
  v3 = **&with.info.value.style;
  v4 = *(*&with.info.value.style + 1);
  v5 = v2[1];
  if (v3 == 3)
  {
    LOBYTE(v3) = *v2;
  }

  *v1 = v3;
  v1[1] = v4 & v5 & 1;
  return with;
}

uint64_t EnvironmentValues.hoverEffectContext.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  v3 = *v1;
  swift_retain_n();
  outlined init with copy of HoverEffectContext?(v6, v5);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(v1, v6);

  outlined destroy of HoverEffectContext?(v6);
  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018HoverEffectContextK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(v3, *v1);
  }

  return outlined destroy of HoverEffectContext?(v6);
}

uint64_t protocol witness for Rule.value.getter in conformance UpdateEnvironmentCustomHoverEffectContext@<X0>(Swift::UInt *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;

  v5 = AGGraphGetValue();
  v7 = *(v5 + 16);
  v6 = *(v5 + 32);
  v8 = *v5;
  v14 = *(v5 + 48);
  v13[0] = v8;
  v13[1] = v7;
  v13[2] = v6;
  v11[0] = v8;
  v11[1] = v7;
  v11[2] = v6;
  v12 = v14;
  outlined init with copy of HoverEffectContext(v13, v10);
  swift_retain_n();
  outlined init with copy of HoverEffectContext(v13, v10);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(a1, v11);

  outlined destroy of HoverEffectContext(v13);
  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018HoverEffectContextK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(v4, *a1);
  }

  return outlined destroy of HoverEffectContext(v13);
}

double protocol witness for Rule.value.getter in conformance ClearCustomHoverEffectContextFromEnvironment@<D0>(Swift::UInt *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;
  memset(v6, 0, sizeof(v6));
  v7 = 1;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(a1, v6);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018HoverEffectContextK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(v4, *a1);
  }

  return result;
}

void EnvironmentValues.hoverEffectContext.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018HoverEffectContextI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v2, a1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5(v2, a1);
  }
}

double key path getter for EnvironmentValues.hoverEffectContext : EnvironmentValues@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018HoverEffectContextI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v3, v7);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5(*a1, v7);
  }

  v4 = v9;
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v4;
  return result;
}

double key path setter for EnvironmentValues.hoverEffectContext : EnvironmentValues(uint64_t a1, Swift::UInt *a2)
{
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  v4 = *a2;
  swift_retain_n();
  outlined init with copy of HoverEffectContext?(v7, v6);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(a2, v7);

  outlined destroy of HoverEffectContext?(v7);
  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018HoverEffectContextK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(v4, *a2);
  }

  return result;
}

void (*EnvironmentValues.hoverEffectContext.modify(uint64_t **a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x108uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[30] = v1;
  v5 = *v1;
  v3[31] = *v1;
  v6 = *(v1 + 8);
  v3[32] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018HoverEffectContextI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v5, v4 + 14);
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HoverEffectContextKey>, &type metadata for HoverEffectContextKey, &protocol witness table for HoverEffectContextKey);
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018HoverEffectContextV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(v5, v17);
    if (v8)
    {
      v10 = v8[9];
      v9 = v8[10];
      v11 = v8[11];
      v12 = v8[12];
      v13 = v8[13];
      v14 = v8[14];
      v15 = v8[15];
      v4[14] = v10;
      v4[15] = v9;
      v4[16] = v11;
      v4[17] = v12;
      v4[18] = v13;
      v4[19] = v14;
      v4[20] = v15;
      outlined copy of HoverEffectContext?(v10, v9, v11, v12, v13, v14, v15);
    }

    else
    {
      *(v4 + 8) = 0u;
      *(v4 + 9) = 0u;
      *(v4 + 7) = 0u;
      v4[20] = 1;
    }
  }

  return EnvironmentValues.hoverEffectContext.modify;
}

void EnvironmentValues.hoverEffectContext.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 30);
  if (a2)
  {
    v5 = *(v2 + 8);
    *v2 = *(v2 + 7);
    *(v2 + 1) = v5;
    *(v2 + 2) = *(v2 + 9);
    v2[6] = v2[20];

    outlined init with copy of HoverEffectContext?(v2, (v2 + 21));

    outlined init with copy of HoverEffectContext?(v2, (v2 + 21));
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(v4, v2);

    outlined destroy of HoverEffectContext?(v2);
    if (v3)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018HoverEffectContextK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(v2[31], *v2[30]);
    }

    outlined destroy of HoverEffectContext?(v2);
    outlined consume of HoverEffectContext?(v2[14], v2[15], v2[16], v2[17], v2[18], v2[19], v2[20]);
  }

  else
  {
    v6 = *(v2 + 8);
    *(v2 + 7) = *(v2 + 7);
    *(v2 + 9) = v6;
    *(v2 + 11) = *(v2 + 9);
    v2[13] = v2[20];
    swift_retain_n();
    outlined init with copy of HoverEffectContext?((v2 + 7), (v2 + 21));
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(v4, (v2 + 7));

    outlined destroy of HoverEffectContext?((v2 + 7));
    if (v3)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018HoverEffectContextK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(v2[31], *v2[30]);
    }

    outlined destroy of HoverEffectContext?((v2 + 7));
  }

  free(v2);
}

void EnvironmentValues.hoverEffectState.getter(char *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016HoverEffectStateI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v2, a1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5(v2, a1);
  }
}

double key path getter for EnvironmentValues.hoverEffectState : EnvironmentValues@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016HoverEffectStateI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v3, v5);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5(*a1, v5);
  }

  *a2 = v5[0];
  result = *&v6;
  *(a2 + 8) = v6;
  return result;
}

double key path setter for EnvironmentValues.hoverEffectState : EnvironmentValues(uint64_t a1, Swift::UInt *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *a2;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(a2, v3, v4, v5);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE016HoverEffectStateK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(v6, *a2);
  }

  return result;
}

double EnvironmentValues.hoverEffectState.setter(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *v2;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(v2, v3, v4, v5);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE016HoverEffectStateK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(v6, *v2);
  }

  return result;
}

void (*EnvironmentValues.hoverEffectState.modify(char **a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *v1;
  *(v3 + 48) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 56) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016HoverEffectStateI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v5, v4);
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>, &type metadata for EnvironmentValues.HoverEffectStateKey, &protocol witness table for EnvironmentValues.HoverEffectStateKey);
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016HoverEffectStateV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(v5, v14);
    if (v8)
    {
      v9 = *(v8 + 72);
      v11 = v8[10];
      v10 = v8[11];
      *v4 = v9;
      *(v4 + 8) = v11;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v12 = qword_1EAB144B0;
      v10 = qword_1EAB144B8;
      *v4 = static EnvironmentValues.HoverEffectStateKey.defaultValue;
      *(v4 + 8) = v12;
    }

    *(v4 + 16) = v10;
  }

  return EnvironmentValues.hoverEffectState.modify;
}

void EnvironmentValues.hoverEffectState.modify(char **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = *(*a1 + 1);
  v6 = *(*a1 + 2);

  v7 = *(v3 + 7);
  v8 = *(v3 + 5);
  if (a2)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(v8, v4, v5, v6);

    if (v7)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE016HoverEffectStateK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(*(v3 + 6), **(v3 + 5));
    }
  }

  else
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(v8, v4, v5, v6);

    if (v7)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE016HoverEffectStateK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(*(v3 + 6), **(v3 + 5));
    }
  }

  free(v3);
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.HoverEffectStateKey@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAB144B0;
  v2 = qword_1EAB144B8;
  *a1 = static EnvironmentValues.HoverEffectStateKey.defaultValue;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

uint64_t EnvironmentValues.isHoverEffectEnabled.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016HoverEffectStateI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v1, &v6);

    v2 = v6;
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>, &type metadata for EnvironmentValues.HoverEffectStateKey, &protocol witness table for EnvironmentValues.HoverEffectStateKey);
    BloomFilter.init(hashValue:)(v3);
    v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016HoverEffectStateV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(v1, v6);
    if (v4)
    {
      v2 = *(v4 + 72);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v2 = static EnvironmentValues.HoverEffectStateKey.defaultValue;
    }
  }

  return v2 ^ 1u;
}

void key path getter for EnvironmentValues.isHoverEffectEnabled : EnvironmentValues(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016HoverEffectStateI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v3, v5);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5(*a1, v5);
  }

  v4 = v5[0];

  *a2 = (v4 & 1) == 0;
}

double EnvironmentValues.isHoverEffectEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  if (v5)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016HoverEffectStateI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v4, &v15);

    v6 = v15;
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>, &type metadata for EnvironmentValues.HoverEffectStateKey, &protocol witness table for EnvironmentValues.HoverEffectStateKey);
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016HoverEffectStateV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(v4, v15);
    if (v8)
    {
      v6 = *(v8 + 72);
      v10 = v8[10];
      v9 = v8[11];
      v16 = v10;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v6 = static EnvironmentValues.HoverEffectStateKey.defaultValue;
      v9 = qword_1EAB144B8;
      v16 = qword_1EAB144B0;
    }

    v17 = v9;
  }

  v11 = v6 | ~a1;
  v12 = v16;
  v13 = v17;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(v2, v11 & 1, v12, v13);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE016HoverEffectStateK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(v4, *v2);
  }

  return result;
}

double (*EnvironmentValues.isHoverEffectEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016HoverEffectStateI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v3, &v8);

    v4 = v8;
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>, &type metadata for EnvironmentValues.HoverEffectStateKey, &protocol witness table for EnvironmentValues.HoverEffectStateKey);
    BloomFilter.init(hashValue:)(v5);
    v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016HoverEffectStateV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(v3, v8);
    if (v6)
    {
      v4 = *(v6 + 72);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v4 = static EnvironmentValues.HoverEffectStateKey.defaultValue;
    }
  }

  *(a1 + 8) = v4 ^ 1;
  return EnvironmentValues.isHoverEffectEnabled.modify;
}

uint64_t one-time initialization function for isHoverEffectEnabled(uint64_t a1)
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.isHoverEffectEnabled = result;
  return result;
}

uint64_t one-time initialization function for hoverEffectContext(uint64_t a1)
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.hoverEffectContext = result;
  return result;
}

uint64_t _GraphInputs.isHoverEffectEnabled.getter()
{
  if (one-time initialization token for isHoverEffectEnabled != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.isHoverEffectEnabled;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0, specialized implicit closure #1 in _GraphInputs.isHoverEffectEnabled.getter, 0);
  swift_endAccess();
  return v1;
}

void specialized implicit closure #1 in _GraphInputs.isHoverEffectEnabled.getter(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    swift_retain_n();
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016HoverEffectStateI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v3, &v8);

    v4 = v8;
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>, &type metadata for EnvironmentValues.HoverEffectStateKey, &protocol witness table for EnvironmentValues.HoverEffectStateKey);
    BloomFilter.init(hashValue:)(v5);

    v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016HoverEffectStateV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(v6, v8);
    if (v7)
    {
      v4 = *(v7 + 72);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v4 = static EnvironmentValues.HoverEffectStateKey.defaultValue;
    }
  }

  *a2 = v4 ^ 1;
}

uint64_t _GraphInputs.hoverEffectContext.getter()
{
  if (one-time initialization token for hoverEffectContext != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.hoverEffectContext;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0, specialized implicit closure #1 in _GraphInputs.hoverEffectContext.getter, 0);
  swift_endAccess();
  return v1;
}

void specialized implicit closure #1 in _GraphInputs.hoverEffectContext.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    swift_retain_n();
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018HoverEffectContextI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v3, v14);

    v4 = v14[1];
    v5 = v14[0];
    v6 = v15;
    v7 = v16;
    v8 = v17;
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HoverEffectContextKey>, &type metadata for HoverEffectContextKey, &protocol witness table for HoverEffectContextKey);
    BloomFilter.init(hashValue:)(v9);

    v11 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018HoverEffectContextV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(v10, *&v14[0]);
    if (v11)
    {
      v6 = v11[13];
      v7 = v11[14];
      v8 = v11[15];
      v12 = *(v11 + 11);
      v13 = *(v11 + 9);
      outlined copy of HoverEffectContext?(v11[9], *(&v13 + 1), v12, *(&v12 + 1), v6, v7, v8);
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v12 = 0u;
      v13 = 0u;
      v8 = 1;
    }

    v4 = v12;
    v5 = v13;
  }

  *a2 = v5;
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
}

void specialized CustomHoverEffect.bodyError()(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t outlined destroy of HoverEffectContext?(uint64_t a1)
{
  type metadata accessor for HoverEffectContext?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void lazy protocol witness table accessor for type SystemHoverEffect.Style and conformance SystemHoverEffect.Style()
{
  if (!lazy protocol witness table cache variable for type SystemHoverEffect.Style and conformance SystemHoverEffect.Style)
  {
    swift_getWitnessTable(protocol conformance descriptor for SystemHoverEffect.Style, &type metadata for SystemHoverEffect.Style, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SystemHoverEffect.Style and conformance SystemHoverEffect.Style);
  }
}

uint64_t *assignWithCopy for _CustomHoverEffectInputs(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  a1[2] = a2[2];

  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  a1[5] = a2[5];

  a1[6] = a2[6];

  *(a1 + 14) = *(a2 + 14);
  *(a1 + 15) = *(a2 + 15);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 21) = *(a2 + 21);
  *(a1 + 22) = *(a2 + 22);
  return a1;
}

__n128 __swift_memcpy92_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t *assignWithTake for _CustomHoverEffectInputs(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  a1[2] = a2[2];

  *(a1 + 3) = *(a2 + 3);

  *(a1 + 5) = *(a2 + 5);

  *(a1 + 7) = *(a2 + 7);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 22) = *(a2 + 22);
  return a1;
}

uint64_t getEnumTagSinglePayload for _CustomHoverEffectInputs(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 92))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _CustomHoverEffectInputs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 92) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 92) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *assignWithCopy for _CustomHoverEffectOutputs(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  return a1;
}

uint64_t default associated conformance accessor for InternalCustomHoverEffect.InternalCustomHoverEffect.WrappedEffectType: InternalCustomHoverEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t getEnumTagSinglePayload for SystemHoverEffect(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemHoverEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t type metadata accessor for CVarArg()
{
  result = lazy cache variable for type metadata for CVarArg;
  if (!lazy cache variable for type metadata for CVarArg)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CVarArg);
  }

  return result;
}

uint64_t AttributeInvalidatingSubscriber.__allocating_init(host:attribute:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized AttributeInvalidatingSubscriber.__allocating_init(host:attribute:)(a1, a2);

  return v2;
}

double specialized AttributeInvalidatingSubscriber.receive(completion:)()
{
  v1 = *v0;
  swift_beginAccess();
  v3 = type metadata accessor for AttributeInvalidatingSubscriber.StateType(0, *(v1 + 80), *(v1 + 88), v2);
  v4 = *(v3 - 8);
  (*(v4 + 16))(v7, v0 + 4, v3);
  v5 = v8;
  (*(v4 + 8))(v7, v3);
  if (v5 >= 2)
  {
    memset(v7, 0, sizeof(v7));
    v8 = xmmword_18DD85500;
    swift_beginAccess();
    (*(v4 + 40))(v0 + 4, v7, v3);
    swift_endAccess();
    return AttributeInvalidatingSubscriber.invalidateAttribute()();
  }

  return result;
}

__n128 assignWithCopy for AttributeInvalidatingSubscriber.StateType(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = *(a2 + 24);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v3 < 0xFFFFFFFF)
    {
      result = *a2;
      v8 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *a1 = result;
      *(a1 + 16) = v8;
    }

    else
    {
      *(a1 + 24) = v3;
      *(a1 + 32) = *(a2 + 32);
      (**(v3 - 8))(a3.n128_f64[0]);
    }
  }

  else if (v3 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    result = *a2;
    v7 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *a1 = result;
    *(a1 + 16) = v7;
  }

  else
  {
    result.n128_f64[0] = __swift_assign_boxed_opaque_existential_1(a1, a2, a3);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributeInvalidatingSubscriber.StateType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AttributeInvalidatingSubscriber.StateType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
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

double destructiveInjectEnumTag for AttributeInvalidatingSubscriber.StateType(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

void ColorView.draw(path:style:in:bounds:)(double *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(v3 + 16);
  v16 = *v3;
  LODWORD(v17) = v9;
  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v16);
  v14[8] = v24;
  v14[9] = v25;
  v15 = v26;
  v14[4] = v20;
  v14[5] = v21;
  v14[6] = v22;
  v14[7] = v23;
  v14[0] = v16;
  v14[1] = v17;
  v14[2] = v18;
  v14[3] = v19;
  v10 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v10;
  v12 = v7;
  v13 = v8;
  GraphicsContext.draw(_:with:style:)(a1, v14, v11, a3);
}

float *ColorView.encode(to:)(float *result)
{
  v2 = v1;
  v3 = result;
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  if (*v2 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0xDuLL);
    v9 = *(v3 + 1);
    v10 = v9 + 4;
    if (__OFADD__(v9, 4))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (*(v3 + 2) < v10)
    {
      goto LABEL_33;
    }

    *(v3 + 1) = v10;
    result = (*v3 + v9);
    goto LABEL_8;
  }

  if (v4 != 0.0)
  {
    goto LABEL_9;
  }

  while (v7 != 0.0)
  {
LABEL_13:
    ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
    v12 = *(v3 + 1);
    v10 = v12 + 4;
    if (!__OFADD__(v12, 4))
    {
      if (*(v3 + 2) < v10)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(v10);
      }

      else
      {
        *(v3 + 1) = v10;
        result = (*v3 + v12);
      }

      *result = v7;
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_33:
      result = ProtobufEncoder.growBufferSlow(to:)(v10);
LABEL_8:
      *result = v5;
      if (v4 == 0.0)
      {
        break;
      }

LABEL_9:
      ProtobufEncoder.encodeVarint(_:)(0x15uLL);
      v11 = *(v3 + 1);
      v10 = v11 + 4;
      if (!__OFADD__(v11, 4))
      {
        if (*(v3 + 2) >= v10)
        {
          *(v3 + 1) = v10;
          result = (*v3 + v11);
          goto LABEL_12;
        }

        goto LABEL_35;
      }

LABEL_31:
      __break(1u);
    }
  }

  while (v6 != 1.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x25uLL);
    v13 = *(v3 + 1);
    v10 = v13 + 4;
    if (!__OFADD__(v13, 4))
    {
      if (*(v3 + 2) < v10)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(v10);
      }

      else
      {
        *(v3 + 1) = v10;
        result = (*v3 + v13);
      }

      *result = v6;
      break;
    }

    __break(1u);
LABEL_35:
    result = ProtobufEncoder.growBufferSlow(to:)(v10);
LABEL_12:
    *result = v4;
    if (v7 != 0.0)
    {
      goto LABEL_13;
    }
  }

  if (v8 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x2DuLL);
    v14 = *(v3 + 1);
    v15 = v14 + 4;
    if (__OFADD__(v14, 4))
    {
      __break(1u);
    }

    else if (*(v3 + 2) >= v15)
    {
      *(v3 + 1) = v15;
      result = (*v3 + v14);
LABEL_26:
      *result = v8;
      return result;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(v15);
    goto LABEL_26;
  }

  return result;
}

uint64_t BidirectionalCollection<>.insertionSort()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a2;
  v52 = a4;
  v50 = a3;
  v6 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v42 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v56 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v42 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v47 = a1;
  result = dispatch thunk of Collection.isEmpty.getter();
  if ((result & 1) == 0)
  {
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.index(after:)();
    v24 = v56 + 8;
    v25 = *(v56 + 8);
    v25(v19, v13);
    v53 = (v63 + 16);
    v58 = (v24 + 8);
    v60 = (v63 + 8);
    v48 = (v24 + 24);
    v64 = v6;
    v44 = v4;
    v42 = v10;
    v56 = v24;
    v46 = v22;
    v54 = v13;
    v55 = v25;
    for (i = v19; ; v19 = i)
    {
      dispatch thunk of Collection.endIndex.getter();
      v61 = *(swift_getAssociatedConformanceWitness() + 8);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25(v19, v13);
      if (v26)
      {
        break;
      }

      v27 = dispatch thunk of Collection.subscript.read();
      v28 = *v53;
      (*v53)(v62);
      v27(v67, 0);
      v29 = v66;
      v57 = *v58;
      v57(v66, v22, v13);
      v30 = v42;
      v31 = v43;
      v63 = v28;
      while (1)
      {
        dispatch thunk of BidirectionalCollection.index(before:)();
        v32 = dispatch thunk of Collection.subscript.read();
        v28(v30);
        v32(v67, 0);
        if (dispatch thunk of static Comparable.>= infix(_:_:)())
        {
          break;
        }

        v33 = i;
        v34 = v54;
        v57(i, v29, v54);
        v35 = AssociatedTypeWitness;
        (v63)(v49, v30, AssociatedTypeWitness);
        dispatch thunk of MutableCollection.subscript.setter();
        v36 = *v60;
        (*v60)(v30, v35);
        v37 = v55;
        v55(v29, v34);
        (*v48)(v66, v31, v34);
        dispatch thunk of Collection.startIndex.getter();
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();
        v39 = v34;
        v28 = v63;
        v37(v33, v39);
        v29 = v66;
        if (v38)
        {
          v40 = v55;
          v41 = v54;
          goto LABEL_10;
        }
      }

      v36 = *v60;
      (*v60)(v30, AssociatedTypeWitness);
      v41 = v54;
      v40 = v55;
      v55(v31, v54);
LABEL_10:
      v45 = v36;
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v57(i, v29, v41);
        (v28)(v49, v62, AssociatedTypeWitness);
        dispatch thunk of MutableCollection.subscript.setter();
      }

      v13 = v41;
      dispatch thunk of Collection.formIndex(after:)();
      v22 = v46;
      v40(v29, v41);
      v45(v62, AssociatedTypeWitness);
      v25 = v40;
    }

    return (v55)(v22, v13);
  }

  return result;
}

uint64_t BidirectionalCollection<>.insertionSort(by:)(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v54 = a1;
  v55 = a2;
  v7 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v46 - v13;
  v64 = swift_getAssociatedTypeWitness();
  v14 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  v50 = v5;
  result = dispatch thunk of Collection.isEmpty.getter();
  if ((result & 1) == 0)
  {
    v61 = AssociatedTypeWitness;
    v62 = v16;
    v66 = a4;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.index(after:)();
    v26 = *(v14 + 8);
    v24 = v14 + 8;
    v25 = v26;
    v26(v19, v64);
    v68 = (v67 + 16);
    v58 = (v67 + 8);
    v59 = (v24 + 8);
    v65 = v7;
    v51 = v24;
    v47 = v22;
    v49 = v19;
    v60 = v26;
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      v27 = v64;
      v57 = *(swift_getAssociatedConformanceWitness() + 8);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25(v19, v27);
      if (v28)
      {
        return v60(v22, v64);
      }

      v29 = dispatch thunk of Collection.subscript.read();
      v67 = *v68;
      v67(v63);
      v29(v69, 0);
      v56 = *v59;
      v56(v62, v22, v64);
      v30 = v48;
      v31 = v49;
      v32 = v60;
      while (1)
      {
        dispatch thunk of BidirectionalCollection.index(before:)();
        v33 = dispatch thunk of Collection.subscript.read();
        v34 = v61;
        v67(v30);
        v33(v69, 0);
        v35 = v64;
        v32(v31, v64);
        v36 = v70;
        v37 = v54(v63, v30);
        v38 = v30;
        v70 = v36;
        if (v36)
        {
          v43 = v34;
          v56(v31, v62, v35);
          v44 = v63;
          (v67)(v52, v63, v43);
          dispatch thunk of MutableCollection.subscript.setter();
          swift_willThrow();
          v45 = *v58;
          (*v58)(v38, v43);
          v32(v62, v35);
          v45(v44, v43);
          return (v32)(v47, v35);
        }

        if ((v37 & 1) == 0)
        {
          break;
        }

        v56(v31, v62, v35);
        (v67)(v52, v30, v34);
        dispatch thunk of MutableCollection.subscript.setter();
        dispatch thunk of BidirectionalCollection.formIndex(before:)();
        v39 = v34;
        v40 = *v58;
        (*v58)(v30, v39);
        dispatch thunk of Collection.startIndex.getter();
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = v60;
        v60(v31, v35);
        if (v41)
        {
          v46 = v40;
          v34 = v61;
          goto LABEL_11;
        }
      }

      v46 = *v58;
      (v46)(v30);
LABEL_11:
      v42 = v62;
      v22 = v47;
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v56(v49, v42, v64);
        (v67)(v52, v63, v34);
        dispatch thunk of MutableCollection.subscript.setter();
      }

      dispatch thunk of Collection.formIndex(after:)();
      v25 = v60;
      v60(v42, v64);
      v46(v63, v34);
      v19 = v49;
    }
  }

  return result;
}

uint64_t Gesture.exclusively<A>(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, a2, v16);
  (*(v12 + 16))(v14, a1, a3);
  return ExclusiveGesture.init(_:_:)(v18, v14, a2, a3, a4, a5, a6);
}

uint64_t ExclusiveGesture.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for ExclusiveGesture(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

double static ExclusiveGesture._makeGesture(gesture:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v149 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v13 = a2[5];
  v146 = a2[4];
  v147 = v13;
  *v148 = a2[6];
  *&v148[12] = *(a2 + 108);
  v14 = a2[1];
  v142 = *a2;
  v143 = v14;
  v15 = a2[3];
  v144 = a2[2];
  v145 = v15;
  v120 = a3;
  v121 = a4;
  v122 = a5;
  v123 = a6;
  LODWORD(v107) = v12;
  v119 = v12;
  *&v135 = a3;
  *(&v135 + 1) = a4;
  *&v136 = a5;
  *(&v136 + 1) = a6;
  v16 = type metadata accessor for ExclusiveGesture(255, &v135);
  v102 = type metadata accessor for _GraphValue(0, v16, v17, v18);
  _GraphValue.subscript.getter(partial apply for closure #1 in static ExclusiveGesture._makeGesture(gesture:inputs:), a3, &v124);
  v139 = v146;
  v140 = v147;
  v141[0] = *v148;
  *(v141 + 12) = *&v148[12];
  v135 = v142;
  v136 = v143;
  v137 = v144;
  v138 = v145;
  (*(a5 + 32))(v117, &v124, &v135, a3, a5);
  v20 = *&v148[24];
  v108 = a4;
  v109 = a3;
  v97 = a7;
  v106 = a6;
  v94 = v16;
  v100 = *&v148[24];
  if ((v148[24] & 8) != 0)
  {
    if (swift_conformsToProtocol2() && a3)
    {
      LODWORD(v99) = 0;
      v21 = v20;
    }

    else
    {
      _gestureModifierProtocolDescriptor();
      if (swift_conformsToProtocol())
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      v124.i8[0] = v22;
      v139 = v146;
      v140 = v147;
      v141[0] = *v148;
      *(v141 + 12) = *&v148[12];
      v135 = v142;
      v136 = v143;
      v137 = v144;
      v138 = v145;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v26 = type metadata accessor for _GestureOutputs(0, AssociatedTypeWitness, v24, v25);
      v27 = _GestureOutputs.debugData.getter();
      LOBYTE(v115[0]) = 1;
      _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(a3, &v124, 0x100000000, &v135, v27 | ((HIDWORD(v27) & 1) << 32), 0x100000000, v26);
      v21 = *&v148[24];
      LODWORD(v99) = (v148[24] & 8) == 0;
    }
  }

  else
  {
    LODWORD(v99) = 1;
    v21 = *&v148[24];
  }

  *&v19 = v117[0];
  v110 = v19;
  v104 = v117[1];
  v28 = *&v148[20];
  v134 = *&v148[16];
  v103 = v118;
  v131 = v146;
  v132 = v147;
  v133 = *v148;
  v127 = v142;
  v128 = v143;
  v129 = v144;
  v130 = v145;
  v29 = v109;
  v30 = swift_getAssociatedTypeWitness();
  v124 = __PAIR64__(v110, v28);
  v101 = v110;
  MEMORY[0x1EEE9AC00](v30);
  v31 = a5;
  v93 = v32;
  v91 = type metadata accessor for ExclusiveState(0, v32, v33, v34);
  swift_getWitnessTable(protocol conformance descriptor for ExclusiveState<A>, v91);
  v92 = v35;
  outlined init with copy of _GestureInputs(&v142, &v135);
  type metadata accessor for Attribute<_GestureInputs.InheritedPhase>();
  v38 = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v124, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_1, &v89, v91, MEMORY[0x1E69E73E0], v36, MEMORY[0x1E69E7410], v37);
  v95 = 0;
  v39 = v135;
  MEMORY[0x1EEE9AC00](v38);
  v89 = v29;
  v90 = v108;
  v105 = v31;
  v91 = v31;
  v40 = v108;
  v41 = v106;
  v92 = v106;
  LODWORD(v115[0]) = v107;
  _GraphValue.subscript.getter(partial apply for closure #2 in static ExclusiveGesture._makeGesture(gesture:inputs:), v108, v112);
  v139 = v131;
  v140 = v132;
  v141[0] = v133;
  v135 = v127;
  v136 = v128;
  v137 = v129;
  v138 = v130;
  *&v141[1] = __PAIR64__(v39, v134);
  v98 = v39;
  DWORD2(v141[1]) = v21;
  v42 = (*(v41 + 32))(&v124, v112, &v135, v40, v41);
  if ((v99 & 1) == 0)
  {
    v42 = swift_conformsToProtocol2();
    if (!v42 || !v40)
    {
      _gestureModifierProtocolDescriptor();
      if (swift_conformsToProtocol())
      {
        v44 = 2;
      }

      else
      {
        v44 = 1;
      }

      LOBYTE(v112[0]) = v44;
      v139 = v131;
      v140 = v132;
      v141[0] = v133;
      v135 = v127;
      v136 = v128;
      v137 = v129;
      v138 = v130;
      *&v141[1] = __PAIR64__(v98, v134);
      DWORD2(v141[1]) = v21;
      v45 = swift_getAssociatedTypeWitness();
      v48 = type metadata accessor for _GestureOutputs(0, v45, v46, v47);
      v49 = _GestureOutputs.debugData.getter();
      v114[0] = 1;
      v42 = _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v40, v112, 0x100000000, &v135, v49 | ((HIDWORD(v49) & 1) << 32), 0x100000000, v48);
    }
  }

  v96 = v21;
  *&v43 = v124;
  v107 = v125;
  LODWORD(v102) = v126;
  v99 = v43;
  v124 = vzip1_s32(*&v110, v124);
  MEMORY[0x1EEE9AC00](v42);
  v50 = v109;
  *&v135 = v109;
  *(&v135 + 1) = v40;
  v51 = v105;
  *&v136 = v105;
  *(&v136 + 1) = v41;
  v52 = type metadata accessor for ExclusiveGesture.Value(255, &v135);
  v89 = type metadata accessor for GesturePhase(0, v52, v53, v54);
  *&v135 = v50;
  *(&v135 + 1) = v40;
  *&v136 = v51;
  *(&v136 + 1) = v41;
  v55 = type metadata accessor for ExclusivePhase(0, &v135);
  v90 = v55;
  swift_getWitnessTable(protocol conformance descriptor for ExclusivePhase<A, B>, v55);
  v91 = v56;
  v57 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v124, partial apply for closure #1 in Attribute.init<A>(_:), v88, v55, MEMORY[0x1E69E73E0], v57, MEMORY[0x1E69E7410], v58);
  _GestureOutputs.init(phase:)(v135, v115);
  v61 = v104;
  if ((v100 & 8) != 0)
  {
    v114[0] = 4;
    v139 = v146;
    v140 = v147;
    v141[0] = *v148;
    *(v141 + 12) = *&v148[12];
    v135 = v142;
    v136 = v143;
    v137 = v144;
    v138 = v145;
    v124 = v110;
    v125 = v104;
    v126 = v103;
    type metadata accessor for _GestureOutputs(0, v93, v59, v60);
    v62 = _GestureOutputs.debugData.getter();
    v112[0] = v99;
    v112[1] = v107;
    v113 = v102;
    v63 = swift_getAssociatedTypeWitness();
    type metadata accessor for _GestureOutputs(0, v63, v64, v65);
    v66 = _GestureOutputs.debugData.getter();
    v69 = type metadata accessor for _GestureOutputs(0, v52, v67, v68);
    v111 = 1;
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v94, v114, 0x100000000, &v135, v62 | ((HIDWORD(v62) & 1) << 32), v66 | ((HIDWORD(v66) & 1) << 32), v69);
  }

  v70 = *(*v148 + 16);
  v95 = *v148;
  if (v70)
  {
    v100 = *MEMORY[0x1E698D3F8];
    v71 = ( + 40);
    do
    {
      v73 = *(v71 - 1);
      v72 = *v71;
      *&v135 = v61;
      DWORD2(v135) = v103;
      v74 = PreferencesOutputs.subscript.getter(v73, v73, v72);
      v75 = v100;
      if ((v74 & 0x100000000) != 0)
      {
        v76 = v100;
      }

      else
      {
        v76 = v74;
      }

      *&v135 = v107;
      DWORD2(v135) = v102;
      v77 = PreferencesOutputs.subscript.getter(v73, v73, v72);
      *&v110 = &v93;
      if ((v77 & 0x100000000) != 0)
      {
        v78 = v75;
      }

      else
      {
        v78 = v77;
      }

      v124 = __PAIR64__(v78, v76);
      v125 = __PAIR64__(v99, v101);
      MEMORY[0x1EEE9AC00](v77);
      v89 = swift_getAssociatedTypeWitness();
      *&v135 = v109;
      *(&v135 + 1) = v108;
      *&v136 = v73;
      *(&v136 + 1) = v105;
      *&v137 = v106;
      *(&v137 + 1) = v72;
      v79 = type metadata accessor for ExclusivePreference(0, &v135);
      v90 = v79;
      swift_getWitnessTable(protocol conformance descriptor for ExclusivePreference<A, B, C>, v79);
      v91 = v80;
      v61 = v104;
      v81 = type metadata accessor for Attribute();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v124, closure #1 in Attribute.init<A>(_:)partial apply, v88, v79, MEMORY[0x1E69E73E0], v81, MEMORY[0x1E69E7410], v82);
      v83 = v135;
      swift_beginAccess();
      v124.i8[0] = 0;
      PreferencesOutputs.subscript.setter(v83, v73, v73, v72);
      swift_endAccess();
      v71 += 2;
      --v70;
    }

    while (v70);
  }

  else
  {
  }

  v139 = v131;
  v140 = v132;
  v141[0] = v133;
  v135 = v127;
  v136 = v128;
  v137 = v129;
  v138 = v130;
  *&v141[1] = __PAIR64__(v98, v134);
  DWORD2(v141[1]) = v96;
  outlined destroy of _GestureInputs(&v135);

  swift_beginAccess();
  v84 = v115[1];
  v85 = v116;
  result = *v115;
  v87 = v97;
  *v97 = v115[0];
  v87[1] = v84;
  *(v87 + 4) = v85;
  return result;
}

uint64_t closure #1 in static ExclusiveGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v10[2] = type metadata accessor for ExclusiveGesture(0, v11);
  v10[3] = a2;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11[0];
}

uint64_t closure #2 in static ExclusiveGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v7 = type metadata accessor for ExclusiveGesture(0, v13);
  v8 = *(v7 + 52);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, partial apply for closure #1 in static PointerOffset.of(_:), v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t static ExclusiveGesture.Value<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a7;
  v42 = a8;
  v47 = a1;
  v48 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v46 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v40 = &v39 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v44 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v39 - v15;
  v49[0] = a3;
  v49[1] = a4;
  v49[2] = a5;
  v49[3] = a6;
  v16 = type metadata accessor for ExclusiveGesture.Value(0, v49);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  v24 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v26 = &v39 - v25;
  v28 = *(v27 + 48);
  v29 = *(v17 + 16);
  v29(&v39 - v25, v47, v16, v24);
  (v29)(&v26[v28], v48, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v29)(v22, v26, v16);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v35 = v44;
      v36 = v39;
      (*(v44 + 32))(v39, &v26[v28], v14);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v35 + 8);
      v37(v36, v14);
      v37(v22, v14);
      goto LABEL_9;
    }

    (*(v44 + 8))(v22, v14);
    goto LABEL_7;
  }

  (v29)(v19, v26, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v45 + 8))(v19, v46);
LABEL_7:
    v33 = 0;
    v17 = v43;
    v16 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v31 = v45;
  v30 = v46;
  v32 = v40;
  (*(v45 + 32))(v40, &v26[v28], v46);
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  v34 = *(v31 + 8);
  v34(v32, v30);
  v34(v19, v30);
LABEL_9:
  (*(v17 + 8))(v26, v16);
  return v33 & 1;
}

uint64_t ExclusiveState.phase.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t x2_0@<X2>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for GesturePhase(0, a2, x2_0, a4);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a3, Value, v6);
}

uint64_t ExclusiveState.value.getter@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t x2_0@<X2>, uint64_t a4@<X3>)
{
  v7 = type metadata accessor for GesturePhase(0, a2, x2_0, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = *AGGraphGetValue();
  ExclusiveState.phase.getter(a2, v10, v12, v13);
  v14 = GesturePhase.isFailed.getter(v7);
  v15 = *(v8 + 8);
  v15(v10, v7);
  if (v14)
  {
    v18 = v11;
  }

  else
  {
    v18 = v11 & 0xFFFFFFFFFFFFFFFELL;
  }

  ExclusiveState.phase.getter(a2, v10, v16, v17);
  v19 = GesturePhase.isActive.getter(v7);
  result = (v15)(v10, v7);
  if (v19 && (v18 & 2) == 0)
  {
    v21 = v18 | 2;
  }

  else
  {
    v21 = v18;
  }

  *a3 = v21;
  return result;
}

uint64_t ExclusivePhase.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v96 = a4;
  v97 = a5;
  v94 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for GesturePhase(255, AssociatedTypeWitness, v8, v9);
  v88 = swift_getAssociatedTypeWitness();
  v90 = v10;
  v91 = type metadata accessor for GesturePhase(255, v88, v11, v12);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v84 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v81 - v14;
  v95 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v83 = &v81 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v81 - v21;
  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v81 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v86 = &v81 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v87 = &v81 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v81 - v31;
  SimultaneousPhase.phase1.getter(&v81 - v31);
  v92 = a2;
  v93 = a3;
  SimultaneousPhase.phase2.getter(v22);
  v85 = TupleTypeMetadata2;
  v33 = *(TupleTypeMetadata2 + 48);
  v34 = v90;
  (*(v23 + 32))(v15, v32, v90);
  v35 = v22;
  v36 = v34;
  v37 = v91;
  (*(v95 + 32))(&v15[v33], v35, v91);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v39 = v86;
        (*(v23 + 16))(v86, v15, v34);
        v40 = AssociatedTypeWitness;
        v41 = *(AssociatedTypeWitness - 8);
        v42 = (*(v41 + 48))(v39, 1, AssociatedTypeWitness);
        v43 = v88;
        if (v42 == 1)
        {
          v44 = type metadata accessor for Optional();
          (*(*(v44 - 8) + 8))(v39, v44);
          goto LABEL_14;
        }

        v68 = v94;
        (*(v41 + 32))(v94, v39, v40);
        v98 = v92;
        v99 = v93;
        v100 = v96;
        v101 = v97;
        v69 = type metadata accessor for ExclusiveGesture.Value(0, &v98);
        swift_storeEnumTagMultiPayload();
        (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
        type metadata accessor for GesturePhase(0, v69, v70, v71);
        swift_storeEnumTagMultiPayload();
        (*(v95 + 8))(&v15[v33], v37);
        return (*(v23 + 8))(v15, v36);
      }

      goto LABEL_11;
    }

LABEL_7:
    v45 = v87;
    (*(v23 + 16))(v87, v15, v36);
    (*(*(AssociatedTypeWitness - 8) + 32))(v94, v45);
    v98 = v92;
    v99 = v93;
    v100 = v96;
    v101 = v97;
    v46 = type metadata accessor for ExclusiveGesture.Value(0, &v98);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for GesturePhase(0, v46, v47, v48);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 8))(&v15[v33], v37);
    return (*(v23 + 8))(v15, v36);
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_7;
  }

  v50 = swift_getEnumCaseMultiPayload();
  if (v50 == 1)
  {
LABEL_11:
    (*(*(v88 - 8) + 32))(v94, &v15[v33]);
    v98 = v92;
    v99 = v93;
    v100 = v96;
    v101 = v97;
    v54 = type metadata accessor for ExclusiveGesture.Value(0, &v98);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for GesturePhase(0, v54, v55, v56);
    goto LABEL_12;
  }

  v43 = v88;
  v40 = AssociatedTypeWitness;
  if (v50 == 2)
  {
    (*(*(v88 - 8) + 32))(v94, &v15[v33], v88);
    v98 = v92;
    v99 = v93;
    v100 = v96;
    v101 = v97;
    v51 = type metadata accessor for ExclusiveGesture.Value(0, &v98);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for GesturePhase(0, v51, v52, v53);
LABEL_12:
    swift_storeEnumTagMultiPayload();
    return (*(v23 + 8))(v15, v36);
  }

LABEL_14:
  v57 = swift_getEnumCaseMultiPayload();
  v58 = v95;
  if (v57)
  {
    goto LABEL_17;
  }

  v59 = v83;
  (*(v95 + 16))(v83, &v15[v33], v37);
  v60 = *(v43 - 8);
  if ((*(v60 + 48))(v59, 1, v43) != 1)
  {
    v72 = v59;
    v73 = v94;
    (*(v60 + 32))(v94, v72, v43);
    v98 = v92;
    v99 = v93;
    v100 = v96;
    v101 = v97;
    v74 = type metadata accessor for ExclusiveGesture.Value(0, &v98);
    swift_storeEnumTagMultiPayload();
    (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
    type metadata accessor for GesturePhase(0, v74, v75, v76);
    swift_storeEnumTagMultiPayload();
    (*(v58 + 8))(&v15[v33], v37);
    return (*(v23 + 8))(v15, v36);
  }

  v61 = type metadata accessor for Optional();
  (*(*(v61 - 8) + 8))(v59, v61);
LABEL_17:
  if (!swift_getEnumCaseMultiPayload())
  {
    v62 = v81;
    (*(v23 + 16))(v81, v15, v36);
    if ((*(*(v40 - 8) + 48))(v62, 1, v40) == 1)
    {
LABEL_22:
      (*(v58 + 8))(&v15[v33], v37);
      (*(v23 + 8))(v15, v36);
      v98 = v92;
      v99 = v93;
      v100 = v96;
      v101 = v97;
      v65 = type metadata accessor for ExclusiveGesture.Value(0, &v98);
      (*(*(v65 - 8) + 56))(v94, 1, 1, v65);
      type metadata accessor for GesturePhase(0, v65, v66, v67);
      return swift_storeEnumTagMultiPayload();
    }

    v63 = type metadata accessor for Optional();
    (*(*(v63 - 8) + 8))(v62, v63);
  }

  if (!swift_getEnumCaseMultiPayload())
  {
    v64 = v82;
    (*(v58 + 16))(v82, &v15[v33], v37);
    if ((*(*(v43 - 8) + 48))(v64, 1, v43) == 1)
    {
      goto LABEL_22;
    }

    v77 = type metadata accessor for Optional();
    (*(*(v77 - 8) + 8))(v82, v77);
  }

  v98 = v92;
  v99 = v93;
  v100 = v96;
  v101 = v97;
  v78 = type metadata accessor for ExclusiveGesture.Value(255, &v98);
  type metadata accessor for GesturePhase(0, v78, v79, v80);
  swift_storeEnumTagMultiPayload();
  return (*(v84 + 8))(v15, v85);
}