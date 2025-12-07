uint64_t static TransferRepresentationBuilder.buildExpression<A, B>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a8;
  v14[7] = a10;
  v12 = type metadata accessor for CodableRepresentation(0, v14);
  return (*(*(v12 - 8) + 16))(a9, a1, v12);
}

uint64_t static TransferRepresentationBuilder.buildBlock<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = &v18 - v14;
  v16 = *(v13 + 48);
  (*(*(a4 - 8) + 16))(&v18 - v14, a1, a4);
  (*(*(a5 - 8) + 16))(&v15[v16], a2, a5);
  swift_getAssociatedConformanceWitness();
  return TupleTransferRepresentation.init(_:)(v15, TupleTypeMetadata2, x8_0);
}

uint64_t static TransferRepresentationBuilder.buildBlock<A, B, C, D>(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v27 = a5;
  v28 = a9;
  v24 = a3;
  v25 = a4;
  v23 = a2;
  v26 = a11;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a10;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata);
  v18 = &v23 - v17;
  v19 = v16[12];
  v20 = v16[16];
  v21 = v16[20];
  (*(*(a6 - 8) + 16))(&v23 - v17, a1, a6);
  (*(*(a7 - 8) + 16))(&v18[v19], v23, a7);
  (*(*(a8 - 8) + 16))(&v18[v20], v24, a8);
  (*(*(a10 - 8) + 16))(&v18[v21], v25, a10);
  swift_getAssociatedConformanceWitness();
  return TupleTransferRepresentation.init(_:)(v18, TupleTypeMetadata, v28);
}

uint64_t getEnumTagSinglePayload for TransferRepresentationBuilder(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TransferRepresentationBuilder(_WORD *result, int a2, int a3)
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

uint64_t AtomicBox.init(wrappedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = specialized AtomicBox.init(wrappedValue:)(a1, a2, a3, a4);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

void AtomicBox.wrappedValue.getter(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = (*(v6 + 80) + 20) & ~*(v6 + 80);
  os_unfair_lock_lock(a1 + 4);
  (*(v6 + 16))(a3, a1 + v7, a2);

  os_unfair_lock_unlock(a1 + 4);
}

void (*AtomicBox.wrappedValue.modify(os_unfair_lock_s **a1, os_unfair_lock_s *a2))(os_unfair_lock_s **a1)
{
  *a1 = a2;
  os_unfair_lock_lock(a2 + 4);
  return AtomicBox.wrappedValue.modify;
}

uint64_t closure #2 in static AtomicBuffer.allocate(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  return (*(v5 + 32))(a1, v7, a3);
}

uint64_t AtomicBuffer.__deallocating_deinit()
{
  v0 = UnsafeMutablePointer.deinitialize(count:)();
  v1 = MEMORY[0x20F32D780](v0);

  return MEMORY[0x2821FE8D8](v1, 20, 7);
}

uint64_t specialized AtomicBox.init(wrappedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AtomicBuffer(0, a2, a3, a4);
  v6 = static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
  closure #2 in static AtomicBuffer.allocate(value:)(v6 + ((*(*(*(v5 + class metadata base offset for AtomicBuffer) - 8) + 80) + 20) & ~*(*(*(v5 + class metadata base offset for AtomicBuffer) - 8) + 80)), a1, *(v5 + class metadata base offset for AtomicBuffer));
  return v6;
}

uint64_t type metadata instantiation function for AtomicBox(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
    }
  }
}

uint64_t TransferRepresentation.exportingCondition(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v11 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v5);
  v15 = type metadata accessor for _ConditionalTransferRepresentation(0, a3, a4, v14);
  (*(v11 + 32))(&a5[*(v15 + 36)], v13, a3);
  *a5 = a1;
  *(a5 + 1) = a2;
}

uint64_t static _ConditionalTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v23[0] = a1;
  v23[1] = a4;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _TransferRepresentationValue(0, v9, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - v13;
  v16 = type metadata accessor for _ConditionalTransferRepresentation(0, a2, a3, v15);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v23 - v18;
  (*(v17 + 16))(v23 - v18, v23[0], v16);
  (*(v6 + 16))(v8, &v19[*(v16 + 36)], a2);
  _TransferRepresentationValue.init(_:)(v8, a2, v14);
  (*(a3 + 48))(&v28, v14);
  (*(v12 + 8))(v14, v11);
  v25 = a2;
  v26 = a3;
  v27 = v19;
  v20 = type metadata accessor for ResolvedTransferRepresentation(0);
  v21 = _TransferRepresentationOutputs.map<A>(_:)(partial apply for closure #1 in static _ConditionalTransferRepresentation._decomposedTransferRepresentation(_:inputs:), v24, v20);

  _TransferRepresentationOutputs.init(_:)(v21);
  return (*(v17 + 8))(v19, v16);
}

uint64_t closure #1 in static _ConditionalTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a3;
  v25 = a4;
  v23 = a2;
  v7 = type metadata accessor for _ConditionalTransferRepresentation(0, a3, a4, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for ResolvedTransferRepresentation(0);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ResolvedTransferRepresentation(a1, a5);
  outlined init with copy of ResolvedTransferRepresentation(a1, v15);
  (*(v8 + 16))(v10, v23, v7);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = (v14 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = v25;
  *(v18 + 16) = v24;
  *(v18 + 24) = v19;
  outlined init with take of ResolvedTransferRepresentation(v15, v18 + v16);
  (*(v8 + 32))(v18 + v17, v10, v7);
  v20 = (a5 + *(v12 + 48));
  result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*v20, v20[1]);
  *v20 = partial apply for closure #1 in closure #1 in static _ConditionalTransferRepresentation._decomposedTransferRepresentation(_:inputs:);
  v20[1] = v18;
  return result;
}

uint64_t closure #1 in closure #1 in static _ConditionalTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1, uint64_t a2, uint64_t (**a3)(char *), uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x28223BE20](v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v20 - v11;
  v13 = a2 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 40);
  v14 = *v13;
  if (!*v13 || (v21 = a3, v15 = *(v13 + 8), , v16 = v14(a1), outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v14, v15), a3 = v21, (v16 & 1) != 0))
  {
    v18 = *a3;
    outlined init with copy of Transferable(a1, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
    swift_dynamicCast();
    v17 = v18(v12);
    (*(v10 + 8))(v12, AssociatedTypeWitness);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t instantiation function for generic protocol witness table for _ConditionalTransferRepresentation<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for _ConditionalTransferRepresentation(uint64_t a1)
{
  result = type metadata accessor for ()();
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

uint64_t getEnumTagSinglePayload for _ConditionalTransferRepresentation(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

void storeEnumTagSinglePayload for _ConditionalTransferRepresentation(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

uint64_t outlined init with take of ResolvedTransferRepresentation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedTransferRepresentation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in static _ConditionalTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for ResolvedTransferRepresentation(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v9 = *(type metadata accessor for _ConditionalTransferRepresentation(0, v3, v4, v8) - 8);
  v10 = (v1 + ((v7 + *(v9 + 80)) & ~*(v9 + 80)));

  return closure #1 in closure #1 in static _ConditionalTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(a1, v1 + v6, v10, v3, v4);
}

uint64_t outlined init with copy of Transferable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TransferRepresentation.suggestedFileName(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v5);
  (*(v11 + 32))(a5, v13, a3);
  v15 = a5 + *(type metadata accessor for _FileNamedTransferRepresentation(0, a3, a4, v14) + 36);
  *v15 = a1;
  *(v15 + 8) = a2;
  *(v15 + 16) = 0;
}

{
  v11 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v5);
  (*(v11 + 32))(a5, v13, a3);
  v15 = a5 + *(type metadata accessor for _FileNamedTransferRepresentation(0, a3, a4, v14) + 36);
  *v15 = a1;
  *(v15 + 8) = a2;
  *(v15 + 16) = 1;
}

uint64_t static _FileNamedTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v23[0] = a1;
  v23[1] = a4;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _TransferRepresentationValue(0, v9, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - v13;
  v16 = type metadata accessor for _FileNamedTransferRepresentation(0, a2, a3, v15);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v23 - v18;
  (*(v17 + 16))(v23 - v18, v23[0], v16);
  (*(v6 + 16))(v8, v19, a2);
  _TransferRepresentationValue.init(_:)(v8, a2, v14);
  (*(a3 + 48))(&v28, v14);
  (*(v12 + 8))(v14, v11);
  v25 = a2;
  v26 = a3;
  v27 = v19;
  v20 = type metadata accessor for ResolvedTransferRepresentation(0);
  v21 = _TransferRepresentationOutputs.map<A>(_:)(partial apply for closure #1 in static _FileNamedTransferRepresentation._decomposedTransferRepresentation(_:inputs:), v24, v20);

  _TransferRepresentationOutputs.init(_:)(v21);
  return (*(v17 + 8))(v19, v16);
}

uint64_t partial apply for closure #1 in static _FileNamedTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  outlined init with copy of ResolvedTransferRepresentation(a1, a2);
  v8 = (v6 + *(type metadata accessor for _FileNamedTransferRepresentation(0, v4, v5, v7) + 36));
  v10 = *v8;
  v9 = v8[1];
  if (v8[2])
  {
    v11 = swift_allocObject();
    v11[2] = v4;
    v11[3] = v5;
    v11[4] = v10;
    v11[5] = v9;
    v12 = *a2;
    v13 = *(a2 + 8);
    v14 = *(a2 + 16);

    result = outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage?(v12, v13, v14);
    *a2 = partial apply for closure #1 in closure #1 in static _FileNamedTransferRepresentation._decomposedTransferRepresentation(_:inputs:);
    *(a2 + 8) = v11;
    *(a2 + 16) = 1;
  }

  else
  {
    v17 = *a2;
    v16 = *(a2 + 8);
    v18 = *(a2 + 16);

    result = outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage?(v17, v16, v18);
    *a2 = v10;
    *(a2 + 8) = v9;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t closure #1 in closure #1 in static _FileNamedTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(void *a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v22 - v14;
  outlined init with copy of Transferable(a1, &v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  v16 = swift_dynamicCast();
  v17 = *(v13 + 56);
  if (v16)
  {
    v17(v12, 0, 1, AssociatedTypeWitness);
    (*(v13 + 32))(v15, v12, AssociatedTypeWitness);
    v18 = a2(v15);
    (*(v13 + 8))(v15, AssociatedTypeWitness);
    return v18;
  }

  else
  {
    v17(v12, 1, 1, AssociatedTypeWitness);
    (*(v9 + 8))(v12, v8);
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v23 = 0x6465746365707845;
    v24 = 0xE900000000000020;
    v20 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v20);

    MEMORY[0x20F32D540](0x756F662074756220, 0xEB0000000020646ELL);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v21 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v21);

    MEMORY[0x20F32D540](0x64616574736E6920, 0xE90000000000002ELL);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for _FileNamedTransferRepresentation<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for _FileNamedTransferRepresentation(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for _FileNamedTransferRepresentation.Storage(319, result, *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _FileNamedTransferRepresentation(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for _FileNamedTransferRepresentation(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v18 + 16) = 0;
          *v18 = a2 - 255;
          *(v18 + 8) = 0;
        }

        else
        {
          *(v18 + 16) = -a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t type metadata instantiation function for _FileNamedTransferRepresentation.Storage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _FileNamedTransferRepresentation.Storage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _FileNamedTransferRepresentation.Storage(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage?(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage(result, a2, a3 & 1);
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

uint64_t CodableRepresentation.init<>(for:contentType:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v20 = a3;
  v21 = a4;
  v11 = type metadata accessor for UTType();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a2, v11);
  v15 = type metadata accessor for JSONEncoder();
  swift_allocObject();
  v23 = JSONEncoder.init()();
  v16 = type metadata accessor for JSONDecoder();
  swift_allocObject();
  v22 = JSONDecoder.init()();
  v17 = lazy protocol witness table accessor for type JSONEncoder and conformance JSONEncoder(&lazy protocol witness table cache variable for type JSONEncoder and conformance JSONEncoder, MEMORY[0x277CC87B8], MEMORY[0x277CC8798]);
  v18 = lazy protocol witness table accessor for type JSONEncoder and conformance JSONEncoder(&lazy protocol witness table cache variable for type JSONDecoder and conformance JSONDecoder, MEMORY[0x277CC8710], MEMORY[0x277CC86F0]);
  CodableRepresentation.init(for:contentType:encoder:decoder:)(v14, &v23, &v22, v20, v15, v16, v21, x8_0, a5, a6, v17, v18);
  return (*(v12 + 8))(a2, v11);
}

uint64_t CodableRepresentation.init(for:contentType:encoder:decoder:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = type metadata accessor for UTType();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v17 = *(a5 - 8);
  v18 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v19[6] = a9;
  v19[7] = a10;
  v19[8] = a11;
  v19[9] = a12;
  v20 = v19 + v18;
  v21 = a5;
  (*(v17 + 32))(v20, a2);
  v34[0] = a4;
  v34[1] = a5;
  v34[2] = a6;
  v34[3] = a7;
  v34[4] = a9;
  v34[5] = a10;
  v34[6] = a11;
  v34[7] = a12;
  v22 = type metadata accessor for CodableRepresentation(0, v34);
  v23 = (a8 + *(v22 + 84));
  *v23 = partial apply for closure #1 in CodableRepresentation.init(for:contentType:encoder:decoder:);
  v23[1] = v19;
  v24 = *(a6 - 8);
  v25 = (*(v24 + 80) + 80) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = a4;
  *(v26 + 3) = v21;
  *(v26 + 4) = a6;
  *(v26 + 5) = a7;
  *(v26 + 6) = a9;
  *(v26 + 7) = a10;
  *(v26 + 8) = a11;
  *(v26 + 9) = a12;
  result = (*(v24 + 32))(&v26[v25], a3, a6);
  v28 = (a8 + *(v22 + 88));
  *v28 = partial apply for closure #2 in CodableRepresentation.init(for:contentType:encoder:decoder:);
  v28[1] = v26;
  return result;
}

uint64_t lazy protocol witness table accessor for type JSONEncoder and conformance JSONEncoder(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *partial apply for closure #1 in CodableRepresentation.init(for:contentType:encoder:decoder:)(uint64_t a1)
{
  result = dispatch thunk of TopLevelEncoder.encode<A>(_:)();
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t static CodableRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v54 = a2;
  v55 = a6;
  v48 = a3;
  v53 = a8;
  v17 = type metadata accessor for UTType();
  MEMORY[0x28223BE20](v17);
  v52 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 16);
  v50 = a1;
  v20();
  v56[0] = a2;
  v56[1] = a3;
  v56[2] = a4;
  v56[3] = a5;
  v56[4] = a6;
  v56[5] = a7;
  v56[6] = a9;
  v56[7] = a10;
  v49 = type metadata accessor for CodableRepresentation(0, v56);
  v21 = (a1 + *(v49 + 84));
  v22 = v21[1];
  v45 = *v21;
  v51 = v22;
  v23 = swift_allocObject();
  v24 = v54;
  v25 = v48;
  v23[2] = v54;
  v23[3] = v25;
  v23[4] = a4;
  v23[5] = a5;
  v26 = a5;
  v46 = a5;
  v47 = a10;
  v27 = v55;
  v23[6] = v55;
  v23[7] = a7;
  v23[8] = a9;
  v23[9] = a10;
  v23[10] = v45;
  v23[11] = v22;
  v28 = swift_allocObject();
  v28[2] = v24;
  v28[3] = v25;
  v28[4] = a4;
  v28[5] = v26;
  v43 = a7;
  v44 = a4;
  v28[6] = v27;
  v28[7] = a7;
  v28[8] = a9;
  v28[9] = a10;
  v28[10] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@owned Data, @error @owned Error);
  v28[11] = v23;
  v29 = (v50 + *(v49 + 88));
  v30 = v29[1];
  v50 = *v29;
  v31 = swift_allocObject();
  v33 = v54;
  v32 = v55;
  v31[2] = v54;
  v31[3] = v25;
  v34 = v25;
  v31[4] = a4;
  v35 = v46;
  v36 = v47;
  v31[5] = v46;
  v31[6] = v32;
  v31[7] = a7;
  v31[8] = a9;
  v37 = v50;
  v31[9] = v36;
  v31[10] = v37;
  v31[11] = v30;
  v38 = swift_allocObject();
  v38[2] = v33;
  v38[3] = v34;
  v39 = v43;
  v38[4] = v44;
  v38[5] = v35;
  v38[6] = v32;
  v38[7] = v39;
  v38[8] = a9;
  v38[9] = v36;
  v38[10] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data) -> (@out A, @error @owned Error);
  v38[11] = v31;

  *&v42 = MEMORY[0x277CC9318];
  *(&v42 + 1) = v35;
  *&v41 = v33;
  *(&v41 + 1) = MEMORY[0x277CC9318];
  return _TransferRepresentationOutputs.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)(v52, 0, 0, 2u, &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed A) -> (@owned Data, @error @owned Error), v28, &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed Data) -> (@out A, @error @owned Error), v38, v53, v41, v42, &protocol witness table for Data, &protocol witness table for Data);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@owned Data, @error @owned Error)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = a2(a1);
  v4 = *(v2 + 8);

  return v4(v3);
}

void partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@owned Data, @error @owned Error)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@owned Data, @error @owned Error);

  JUMPOUT(0x20E3DF9E0);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@owned Data, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed A) -> (@owned Data, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed A) -> (@owned Data, @error @owned Error);

  return v7(a2);
}

{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed A) -> (@owned Data, @error @owned Error);

  return v7(a2);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed A) -> (@owned Data, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

void partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed A) -> (@owned Data, @error @owned Error)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  JUMPOUT(0x20E3DFCB0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data) -> (@out A, @error @owned Error)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  a4(a2, a3);
  v5 = *(v4 + 8);

  return v5();
}

void partial apply for thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data) -> (@out A, @error @owned Error)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  JUMPOUT(0x20E3DFFD0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed Data) -> (@out A, @error @owned Error)(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = Transferable.file(contentType:fileHandler:);

  return v9(a1, v5, v6);
}

{
  v5 = *a2;
  v6 = a2[1];
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = Transferable.file(contentType:fileHandler:);

  return v9(a1, v5, v6);
}

void partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed Data) -> (@out A, @error @owned Error)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = Transferable.file(contentType:fileHandler:);

  JUMPOUT(0x20E3E017CLL);
}

uint64_t instantiation function for generic protocol witness table for CodableRepresentation<A, B, C>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t type metadata completion function for CodableRepresentation(uint64_t a1)
{
  result = type metadata accessor for UTType();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

CoreTransferable::_TransferRepresentationOutputs static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v41 = a4;
  v40 = a2;
  v42 = a6;
  v9 = type metadata accessor for ResolvedTransferRepresentation(0);
  v43 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v44 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
  v37 = *(v39 - 8);
  v11 = MEMORY[0x28223BE20](v39);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v37 - v17;
  v38 = type metadata accessor for _TransferRepresentationValue(0, AssociatedTypeWitness, v19, v20);
  v21 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v23 = &v37 - v22;
  v24 = a1[1];
  v54 = *a1;
  v55 = v24;
  v56 = a1[2];
  (*(a5 + 24))(a3, a5);
  _TransferRepresentationValue.init(_:)(v18, AssociatedTypeWitness, v23);
  _TransferRepresentationInputs.init()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(&v53, v23);
  (*(v21 + 8))(v23, v38);
  v46 = v40;
  v47 = a3;
  v48 = v41;
  v49 = a5;
  v50 = (v55 | v54) != 0;
  v51 = v56 != 0;
  v52 = &v54;
  v26 = _TransferRepresentationOutputs.map<A>(_:)(partial apply for closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:), v45, v39);

  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = *(v37 + 80);
    v41 = v26;
    v29 = v26 + ((v28 + 32) & ~v28);
    v30 = *(v37 + 72);
    v31 = (v43 + 48);
    v32 = MEMORY[0x277D84F90];
    v33 = v9;
    do
    {
      outlined init with copy of ResolvedTransferRepresentation?(v29, v15);
      outlined init with take of ResolvedTransferRepresentation?(v15, v13);
      if ((*v31)(v13, 1, v9) == 1)
      {
        outlined destroy of ResolvedTransferRepresentation?(v13);
      }

      else
      {
        outlined init with take of ResolvedTransferRepresentation(v13, v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
        }

        v35 = v32[2];
        v34 = v32[3];
        if (v35 >= v34 >> 1)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v32);
        }

        v32[2] = v35 + 1;
        outlined init with take of ResolvedTransferRepresentation(v44, v32 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v35);
        v9 = v33;
      }

      v29 += v30;
      --v27;
    }

    while (v27);
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  return _TransferRepresentationOutputs.init(_:)(v32);
}

uint64_t closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t (**a4)(uint64_t a1)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t (*a8)(uint64_t a1)@<X7>, uint64_t a9@<X8>)
{
  v69 = a5;
  v70 = a6;
  v71 = a4;
  v68 = a9;
  v14 = type metadata accessor for ResolvedTransferRepresentation(0);
  v67 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ResolvedTransferRepresentation(a1, v16);
  if (a2)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = &v16[v14[8]];
    outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*v17, v17[1]);
    *v17 = 0;
    v17[1] = 0;
    if (a3)
    {
LABEL_3:
      if ((a2 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }
  }

  v18 = &v16[v14[9]];
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*v18, v18[1]);
  *v18 = 0;
  v18[1] = 0;
  if ((a2 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v19 = v71[2];
  v20 = v71[3];
  if (v19)
  {
    v21 = swift_allocObject();
    v22 = v70;
    *(v21 + 2) = v69;
    *(v21 + 3) = v22;
    *(v21 + 4) = a7;
    *(v21 + 5) = a8;
    *(v21 + 6) = v19;
    *(v21 + 7) = v20;
    v65 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@out B, @error @owned Error);
  }

  else
  {
    if (!*v71)
    {
      goto LABEL_13;
    }

    v65 = *v71;
    v21 = v71[1];
  }

  v23 = (a1 + v14[8]);
  v24 = *v23;
  if (!*v23)
  {
    outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v19, v20);

    if ((a3 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v64 = a1;
  v25 = v23[1];
  v26 = swift_allocObject();
  v66 = a7;
  v27 = v26;
  v28 = v70;
  v26[2] = v69;
  v26[3] = v28;
  v29 = v65;
  v26[4] = v66;
  v26[5] = a8;
  v26[6] = v29;
  v26[7] = v21;
  v26[8] = v24;
  v26[9] = v25;
  v30 = v20;
  v31 = &v16[v14[8]];
  v65 = a8;
  v32 = *v31;
  v33 = v31[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v19, v30);
  v34 = v25;
  a1 = v64;
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v24, v34);
  v35 = v33;
  a8 = v65;
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v32, v35);
  *v31 = &async function pointer to partial apply for closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  v31[1] = v27;
  a7 = v66;
LABEL_13:
  if ((a3 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v36 = v71[4];
  if (v36)
  {
    v37 = (a1 + v14[9]);
    v38 = *v37;
    if (*v37)
    {
      v39 = v71[5];
      v64 = v37[1];
      v40 = v64;
      v41 = swift_allocObject();
      v42 = v70;
      v41[2] = v69;
      v41[3] = v42;
      v41[4] = a7;
      v41[5] = a8;
      v41[6] = v38;
      v41[7] = v40;
      v41[8] = v36;
      v41[9] = v39;
      v43 = v14[9];
      v65 = a8;
      v66 = a7;
      v44 = &v16[v43];
      v45 = *&v16[v43];
      v46 = *&v16[v43 + 8];
      outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v36, v39);
      outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v38, v64);
      v47 = v45;
      a8 = v65;
      outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v47, v46);
      *v44 = &async function pointer to partial apply for closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
      *(v44 + 1) = v41;
      a7 = v66;
    }
  }

LABEL_18:
  v48 = (a1 + v14[10]);
  v49 = *v48;
  if (*v48)
  {
    v50 = v48[1];
    v51 = swift_allocObject();
    v52 = v69;
    v53 = v70;
    *(v51 + 16) = v69;
    *(v51 + 24) = v53;
    *(v51 + 32) = a7;
    *(v51 + 40) = a8;
    v54 = v71;
    v55 = *(v71 + 1);
    *(v51 + 48) = *v71;
    *(v51 + 64) = v55;
    *(v51 + 80) = *(v54 + 2);
    *(v51 + 96) = v49;
    *(v51 + 104) = v50;
    v56 = a8;
    v57 = &v16[v14[10]];
    v66 = v16;
    v58 = v14;
    v59 = *v57;
    v65 = v57[1];
    outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v49, v50);
    v72[0] = v52;
    v72[1] = v53;
    v72[2] = a7;
    v72[3] = v56;
    v60 = type metadata accessor for ProxyRepresentation(0, v72);
    (*(*(v60 - 8) + 16))(v72, v71, v60);
    v61 = v59;
    v14 = v58;
    v16 = v66;
    outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v61, v65);
    *v57 = partial apply for closure #3 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
    v57[1] = v51;
  }

  v62 = v68;
  outlined init with copy of ResolvedTransferRepresentation(v16, v68);
  (*(v67 + 56))(v62, 0, 1, v14);
  return outlined destroy of ResolvedTransferRepresentation(v16);
}

uint64_t outlined init with copy of ResolvedTransferRepresentation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ResolvedTransferRepresentation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ResolvedTransferRepresentation?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a8;
  v8[20] = v13;
  v8[17] = a6;
  v8[18] = a7;
  v8[15] = a4;
  v8[16] = a5;
  v8[13] = a2;
  v8[14] = a3;
  v8[12] = a1;
  v8[21] = *(a8 - 8);
  v8[22] = swift_task_alloc();
  v10 = type metadata accessor for Optional();
  v8[23] = v10;
  v8[24] = *(v10 - 8);
  v8[25] = swift_task_alloc();
  v8[26] = *(a7 - 8);
  v8[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:), 0, 0);
}

uint64_t closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)()
{
  outlined init with copy of Transferable(v0[13], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  if (swift_dynamicCast())
  {
    v2 = v0[26];
    v1 = v0[27];
    v3 = v0[25];
    v4 = v0[18];
    v5 = v0[14];
    (*(v2 + 56))(v3, 0, 1, v4);
    (*(v2 + 32))(v1, v3, v4);
    v18 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[28] = v6;
    *v6 = v0;
    v6[1] = closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
    v7 = v0[27];
    v8 = v0[22];

    return v18(v8, v7);
  }

  else
  {
    v11 = v0[25];
    v10 = v0[26];
    v12 = v0[23];
    v13 = v0[24];
    v14 = v0[18];
    v15 = v0[13];
    (*(v10 + 56))(v11, 1, 1, v14);
    (*(v13 + 8))(v11, v12);
    _StringGuts.grow(_:)(33);

    v16 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v16);

    MEMORY[0x20F32D540](0x756F662074756220, 0xEB0000000020646ELL);
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    swift_getDynamicType();
    v17 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v17);

    MEMORY[0x20F32D540](0x64616574736E6920, 0xE90000000000002ELL);
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  }

  else
  {
    v2 = closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 128);
  v8 = *(v0 + 152);
  *(v0 + 80) = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  (*(v2 + 16))(boxed_opaque_existential_1, v1, v8);
  v9 = (v3 + *v3);
  v5 = swift_task_alloc();
  *(v0 + 240) = v5;
  *v5 = v0;
  v5[1] = closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  v6 = *(v0 + 96);

  return v9(v6, v0 + 56);
}

{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v3 = closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[18];
  (*(v0[21] + 8))(v0[22], v0[19]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  (*(v0[26] + 8))(v0[27], v0[18]);

  v1 = v0[1];

  return v1();
}

{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[18];
  (*(v0[21] + 8))(v0[22], v0[19]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  v4 = v0[1];

  return v4();
}

uint64_t closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v17;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a1;
  v8[13] = a5;
  v12 = type metadata accessor for Optional();
  v8[18] = v12;
  v8[19] = *(v12 - 8);
  v8[20] = swift_task_alloc();
  v8[21] = *(a8 - 8);
  v8[22] = swift_task_alloc();
  v15 = a3 + *a3;
  v13 = swift_task_alloc();
  v8[23] = v13;
  *v13 = v8;
  v13[1] = closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);

  return (v15)(v8 + 2, a2);
}

uint64_t closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  }

  else
  {
    v2 = closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  outlined init with copy of Transferable((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  v1 = swift_dynamicCast();
  v2 = v0[16];
  if (v1)
  {
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[20];
    v6 = v0[17];
    v7 = v0[15];
    v9 = v0[12];
    v8 = v0[13];
    (*(v4 + 56))(v5, 0, 1, v0[16]);
    (*(v4 + 32))(v3, v5, v2);
    v9[3] = v7;
    v9[4] = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
    v19 = (v8 + *v8);
    v11 = swift_task_alloc();
    v0[25] = v11;
    *v11 = v0;
    v11[1] = closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
    v12 = v0[22];

    return v19(boxed_opaque_existential_1, v12);
  }

  else
  {
    v14 = v0[20];
    v15 = v0[18];
    v16 = v0[19];
    (*(v0[21] + 56))(v14, 1, 1, v0[16]);
    (*(v16 + 8))(v14, v15);
    _StringGuts.grow(_:)(33);

    v17 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v17);

    MEMORY[0x20F32D540](0x756F662074756220, 0xEB0000000020646ELL);
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    swift_getDynamicType();
    v18 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v18);

    MEMORY[0x20F32D540](0x64616574736E6920, 0xE90000000000002ELL);
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  }

  else
  {
    v2 = closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  (*(v0[21] + 8))(v0[22], v0[16]);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[12];
  (*(v0[21] + 8))(v0[22], v0[16]);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_deallocate_boxed_opaque_existential_1(v1);

  v2 = v0[1];

  return v2();
}

uint64_t closure #3 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a5 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v14[2];
  if (v22)
  {
    v34 = v19;
    v35 = v18;
    v38 = v16;
    v36 = v15;
    v23 = v14[3];
    outlined init with copy of Transferable(v13, v37);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
    swift_dynamicCast();
    v24 = v23;
    v22(v12);
    if (v6)
    {
      outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v22, v23);
      (*(v9 + 8))(v12, a5);
    }

    else
    {
      (*(v9 + 8))(v12, a5);
      v37[3] = a6;
      v37[4] = v35;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
      v32 = v34;
      (*(v34 + 16))(boxed_opaque_existential_1, v21, a6);
      v24 = (v36)(v37);
      (*(v32 + 8))(v21, a6);
      outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v22, v23);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
    }
  }

  else
  {
    v25 = *v14;
    if (*v14)
    {
      v26 = v14[1];
      v27 = v13;
      v28 = v17;
      v29 = v15;
      v38 = v16;
      v30 = v18;
      v35 = type metadata accessor for MainActor();
      v36 = &v34;
      MEMORY[0x28223BE20](v35);
      *(&v34 - 10) = a5;
      *(&v34 - 9) = a6;
      *(&v34 - 8) = v28;
      *(&v34 - 7) = v30;
      *(&v34 - 6) = v25;
      *(&v34 - 5) = v26;
      *(&v34 - 4) = v27;
      *(&v34 - 3) = v29;
      *(&v34 - 2) = v38;

      v24 = specialized static MainActor.assumeIsolated<A>(_:file:line:)(partial apply for closure #1 in closure #3 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:), (&v34 - 12), "CoreTransferable/ProxyRepresentation.swift", 42, 2, 146);
      outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v25, v26);
    }

    else
    {
      v24 = 1;
    }
  }

  return v24 & 1;
}

uint64_t closure #1 in closure #3 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v37 = a8;
  v31 = a5;
  v32 = a4;
  v35 = a1;
  v36 = a2;
  v33 = a9;
  v13 = *(a6 - 8);
  v40 = a10;
  MEMORY[0x28223BE20](a1);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Optional();
  v28 = *(v30 - 8);
  v16 = MEMORY[0x28223BE20](v30);
  v18 = &v28 - v17;
  v34 = *(a7 - 8);
  MEMORY[0x28223BE20](v16);
  v29 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  outlined init with copy of Transferable(a3, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  swift_dynamicCast();
  v20 = v38;
  v21 = v40;
  static LegacyExporterCaller.callSynchronously<A, B>(_:item:)(v35, v36, v15, a6, a7, v37, v40, v18);
  (*(v13 + 8))(v15, a6);
  if (v20)
  {
  }

  v23 = v34;
  if ((*(v34 + 48))(v18, 1, a7) == 1)
  {
    (*(v28 + 8))(v18, v30);

    v24 = 1;
  }

  else
  {
    v25 = v29;
    (*(v23 + 32))(v29, v18, a7);
    v39[3] = a7;
    v39[4] = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
    (*(v23 + 16))(boxed_opaque_existential_1, v25, a7);
    v27 = v32(v39);
    (*(v23 + 8))(v25, a7);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);

    v24 = v27 & 1;
  }

  *v33 = v24;
  return result;
}

uint64_t specialized static MainActor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3;
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)(v15);
    if (v6)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v7 & 1;
      }

      __break(1u);
    }

    v7 = v15[0];
    v12 = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return v7 & 1;
    }

    __break(1u);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  MEMORY[0x20F32D540](0xD00000000000003FLL, 0x800000020E3FF3B0);
  v14 = _typeName(_:qualified:)();
  MEMORY[0x20F32D540](v14);

  MEMORY[0x20F32D540](46, 0xE100000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *ProxyRepresentation.init(importing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 0u;
  *(a7 + 16) = 0u;
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  result[5] = a6;
  result[6] = a1;
  result[7] = a2;
  *(a7 + 32) = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed B) -> (@out A, @error @owned Error);
  *(a7 + 40) = result;
  return result;
}

double ProxyRepresentation.init(importing:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  return result;
}

uint64_t ProxyRepresentation.init(exporting:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = result;
  a3[3] = a2;
  a3[4] = 0;
  a3[5] = 0;
  return result;
}

double ProxyRepresentation.init(exporting:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  return result;
}

void *ProxyRepresentation.init(exporting:importing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = 0;
  a9[1] = 0;
  a9[2] = a1;
  a9[3] = a2;
  result = swift_allocObject();
  result[2] = a5;
  result[3] = a6;
  result[4] = a7;
  result[5] = a8;
  result[6] = a3;
  result[7] = a4;
  a9[4] = &thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed B) -> (@out A, @error @owned Error)partial apply;
  a9[5] = result;
  return result;
}

uint64_t ProxyRepresentation.init(exporting:importing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[4] = a3;
  a5[5] = a4;
  a5[2] = 0;
  a5[3] = 0;
  return result;
}

{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = result;
  a5[3] = a2;
  a5[4] = a3;
  a5[5] = a4;
  return result;
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMd, &_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMR);
  v10 = *(type metadata accessor for ResolvedTransferRepresentation(0) - 8);
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
  v15 = *(type metadata accessor for ResolvedTransferRepresentation(0) - 8);
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

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed B) -> (@out A, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 48);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@out B, @error @owned Error)(a1, a2, v6);
}

uint64_t instantiation function for generic protocol witness table for ProxyRepresentation<A, B>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata instantiation function for ProxyRepresentation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ProxyRepresentation(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for ProxyRepresentation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t outlined destroy of ResolvedTransferRepresentation(uint64_t a1)
{
  v2 = type metadata accessor for ResolvedTransferRepresentation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = Transferable.file(contentType:fileHandler:);

  return closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)(a1, a2, v8, v9, v11, v10, v6, v7);
}

uint64_t objectdestroy_14Tm()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t partial apply for closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[8];
  v11 = v2[9];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:)(a1, a2, v8, v9, v10, v11, v6, v7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@out B, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 48);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@out B, @error @owned Error)(a1, a2, v6);
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x20F32E080);
  }

  return result;
}

void *partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t static DataTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v34 = a4;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DataTransferRepresentation(0, a2, a3, v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v32 = v15;
  (*(v15 + 16))(&v29 - v13, a1, v12);
  v16 = *(v8 + 16);
  v33 = v10;
  v16(v10, v14, v7);
  v17 = &v14[*(v12 + 36)];
  v19 = *v17;
  v18 = v17[1];
  if (*v17)
  {
    v20 = swift_allocObject();
    v20[2] = a2;
    v20[3] = a3;
    v20[4] = v19;
    v20[5] = v18;
    v31 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed A) -> (@owned Data, @error @owned Error);
  }

  else
  {
    v31 = 0;
    v20 = 0;
  }

  v30 = v18;
  v21 = &v14[*(v12 + 40)];
  v23 = *v21;
  v22 = v21[1];
  if (*v21)
  {
    v24 = swift_allocObject();
    v24[2] = a2;
    v24[3] = a3;
    v24[4] = v23;
    v24[5] = v22;
    v25 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed Data) -> (@out A, @error @owned Error);
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v19, v30);
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v23, v22);
  *&v28 = MEMORY[0x277CC9318];
  *(&v28 + 1) = a3;
  *&v27 = a2;
  *(&v27 + 1) = MEMORY[0x277CC9318];
  _TransferRepresentationOutputs.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporter:importer:)(v33, 0, 0, 2u, v31, v20, v25, v24, v34, v27, v28, &protocol witness table for Data, &protocol witness table for Data);
  return (*(v32 + 8))(v14, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed Data) -> (@out A, @error @owned Error)(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = Transferable.file(contentType:fileHandler:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed Data) -> (@out A, @error @owned Error)(a1, a2, v6);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed A) -> (@owned Data, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed A) -> (@owned Data, @error @owned Error)(a1, a2, v6);
}

uint64_t DataTransferRepresentation.init(contentType:exporter:importer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for UTType();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  result = type metadata accessor for DataTransferRepresentation(0, a6, a7, v17);
  v19 = (a8 + *(result + 36));
  *v19 = a2;
  v19[1] = a3;
  v20 = (a8 + *(result + 40));
  *v20 = a4;
  v20[1] = a5;
  return result;
}

uint64_t DataTransferRepresentation.init(exportedContentType:exporter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;

  return DataTransferRepresentation.init(contentType:exporter:importer:)(a1, a2, a3, &async function pointer to partial apply for closure #1 in DataTransferRepresentation.init(exportedContentType:exporter:), v12, a4, a5, a6);
}

uint64_t closure #1 in DataTransferRepresentation.init(exportedContentType:exporter:)()
{
  return MEMORY[0x2822009F8](closure #1 in DataTransferRepresentation.init(exportedContentType:exporter:), 0, 0);
}

{
  lazy protocol witness table accessor for type TransferableSupportError and conformance TransferableSupportError();
  swift_allocError();
  *v1 = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in DataTransferRepresentation.init(exportedContentType:exporter:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return closure #1 in DataTransferRepresentation.init(exportedContentType:exporter:)();
}

uint64_t DataTransferRepresentation.init(importedContentType:importer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;

  return DataTransferRepresentation.init(contentType:exporter:importer:)(a1, &async function pointer to partial apply for closure #1 in DataTransferRepresentation.init(importedContentType:importer:), v12, a2, a3, a4, a5, a6);
}

uint64_t closure #1 in DataTransferRepresentation.init(importedContentType:importer:)()
{
  return MEMORY[0x2822009F8](closure #1 in DataTransferRepresentation.init(importedContentType:importer:), 0, 0);
}

{
  lazy protocol witness table accessor for type TransferableSupportError and conformance TransferableSupportError();
  swift_allocError();
  *v1 = 1;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in DataTransferRepresentation.init(importedContentType:importer:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@owned Data, @error @owned Error);

  return closure #1 in DataTransferRepresentation.init(importedContentType:importer:)();
}

uint64_t instantiation function for generic protocol witness table for DataTransferRepresentation<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for DataTransferRepresentation(uint64_t a1)
{
  type metadata accessor for UTType();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (())?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for (())?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (())?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (())?);
    }
  }
}

uint64_t static DataRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v34 = a4;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DataRepresentation(0, a2, a3, v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v32 = v15;
  (*(v15 + 16))(&v29 - v13, a1, v12);
  v16 = *(v8 + 16);
  v33 = v10;
  v16(v10, v14, v7);
  v17 = &v14[*(v12 + 36)];
  v19 = *v17;
  v18 = v17[1];
  if (*v17)
  {
    v20 = swift_allocObject();
    v20[2] = a2;
    v20[3] = a3;
    v20[4] = v19;
    v20[5] = v18;
    v31 = &_sx10Foundation4DataVs5Error_pIeghHnozo_xACsAD_pIeghHnrzo_16CoreTransferable0E0RzlTRTATu_0;
  }

  else
  {
    v31 = 0;
    v20 = 0;
  }

  v30 = v18;
  v21 = &v14[*(v12 + 40)];
  v23 = *v21;
  v22 = v21[1];
  if (*v21)
  {
    v24 = swift_allocObject();
    v24[2] = a2;
    v24[3] = a3;
    v24[4] = v23;
    v24[5] = v22;
    v25 = &_s10Foundation4DataVxs5Error_pIeghHgrzo_ACxsAD_pIeghHnrzo_16CoreTransferable0E0RzlTRTATu_0;
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v19, v30);
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v23, v22);
  *&v28 = MEMORY[0x277CC9318];
  *(&v28 + 1) = a3;
  *&v27 = a2;
  *(&v27 + 1) = MEMORY[0x277CC9318];
  _TransferRepresentationOutputs.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporter:importer:)(v33, 0, 0, 2u, v31, v20, v25, v24, v34, v27, v28, &protocol witness table for Data, &protocol witness table for Data);
  return (*(v32 + 8))(v14, v12);
}

uint64_t DataRepresentation.init(_:exporting:importing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for UTType();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  result = type metadata accessor for DataRepresentation(0, a6, a7, v17);
  v19 = (a8 + *(result + 36));
  *v19 = a2;
  v19[1] = a3;
  v20 = (a8 + *(result + 40));
  *v20 = a4;
  v20[1] = a5;
  return result;
}

uint64_t instantiation function for generic protocol witness table for DataRepresentation<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t SentTransferredFile.init(_:allowAccessingOriginalFile:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for SentTransferredFile(0);
  *(a3 + *(result + 20)) = a2;
  *(a3 + *(result + 24)) = 0;
  return result;
}

uint64_t SentTransferredFile.init(_:isTemporary:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for SentTransferredFile(0);
  *(a3 + *(result + 20)) = 0;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t SentTransferredFile.file.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for SentTransferredFile(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReceivedTransferredFile.init(file:isOriginalFile:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ReceivedTransferredFile(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t static FileRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v36 = a3;
  v37 = a2;
  v38 = a4;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FileRepresentation(0, a2, a3, v11);
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  (*(v13 + 16))(&v33 - v14, a1, v12);
  (*(v8 + 16))(v10, v15, v7);
  v16 = v12[10];
  v17 = &v15[v12[9]];
  v18 = *v17;
  v19 = v17[1];
  v20 = v12[12];
  v21 = &v15[v12[11]];
  v22 = *v21;
  v23 = v21[1];
  if (*v21)
  {
    v24 = v21[1];
  }

  else
  {
    v24 = 0;
  }

  v34 = v24;
  v35 = v18;
  v25 = *&v15[v20];
  v26 = *&v15[v20 + 8];
  if (v25)
  {
    v27 = *&v15[v20 + 8];
  }

  else
  {
    v27 = 0;
  }

  v33 = v27;
  v28 = v15[v16];

  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v22, v23);
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v25, v26);
  v29 = type metadata accessor for SentTransferredFile(0);
  *&v32 = type metadata accessor for ReceivedTransferredFile(0);
  *(&v32 + 1) = v36;
  *(&v31 + 1) = v29;
  *&v31 = v37;
  _TransferRepresentationOutputs.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)(v10, v35, v19, v28, v22, v34, v25, v33, v38, v31, v32, &protocol witness table for SentTransferredFile, &protocol witness table for ReceivedTransferredFile);
  return (*(v13 + 8))(v15, v12);
}

uint64_t FileRepresentation.init(contentType:shouldAttemptToOpenInPlace:exporting:importing:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = type metadata accessor for FileRepresentation(0, a7, a8, a4);
  v17 = v16[10];
  v18 = type metadata accessor for UTType();
  result = (*(*(v18 - 8) + 32))(a9, a1, v18);
  *(a9 + v17) = a2;
  v20 = (a9 + v16[9]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (a9 + v16[11]);
  *v21 = a3;
  v21[1] = a4;
  v22 = (a9 + v16[12]);
  *v22 = a5;
  v22[1] = a6;
  return result;
}

uint64_t FileRepresentation.init(exportedContentType:shouldAllowToOpenInPlace:exporting:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = type metadata accessor for FileRepresentation(0, a5, a6, a4);
  v13 = v12[10];
  v14 = type metadata accessor for UTType();
  result = (*(*(v14 - 8) + 32))(a7, a1, v14);
  *(a7 + v13) = a2;
  v16 = (a7 + v12[9]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a7 + v12[11]);
  *v17 = a3;
  v17[1] = a4;
  v18 = (a7 + v12[12]);
  *v18 = 0;
  v18[1] = 0;
  return result;
}

uint64_t FileRepresentation.init(importedContentType:shouldAttemptToOpenInPlace:importing:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = type metadata accessor for FileRepresentation(0, a5, a6, a4);
  v13 = v12[10];
  v14 = type metadata accessor for UTType();
  result = (*(*(v14 - 8) + 32))(a7, a1, v14);
  *(a7 + v13) = a2;
  v16 = (a7 + v12[9]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a7 + v12[11]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a7 + v12[12]);
  *v18 = a3;
  v18[1] = a4;
  return result;
}

uint64_t instantiation function for generic protocol witness table for FileRepresentation<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for SentTransferredFile(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata completion function for ReceivedTransferredFile(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for FileRepresentation(uint64_t a1)
{
  type metadata accessor for UTType();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for (())?(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _TransferRepresentationValue.applying<A>(offset:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a3 + 16);
  v12 = a4;
  v13 = a1;
  return _ss15withUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, partial apply for closure #1 in _TransferRepresentationValue.applying<A>(offset:to:), &v10, v11, MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], a8);
}

uint64_t _ss15withUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v12, v12 + *(*(v15 - 8) + 64), v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

void *__TupleType.indices.getter(void *result)
{
  if (*result != 769)
  {
    return 0;
  }

  if ((result[1] & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t __TupleType.type(at:)(uint64_t result, void *a2)
{
  if (*a2 != 769 || a2[1] <= result)
  {
    return a2;
  }

  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else if ((2 * result - 0x1000000000000000) >> 61 == 7)
  {
    return a2[2 * result + 3];
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall __TupleType.offset(at:)(Swift::Int at)
{
  if (*(v1 + 8) > at)
  {
    if (at + 0x4000000000000000 < 0)
    {
      __break(1u);
    }

    else if ((2 * at - 0x1000000000000000) >> 61 == 7)
    {
      return *(v1 + 16 * at + 32);
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t type metadata completion function for _TransferRepresentationValue(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _TransferRepresentationValue(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for _TransferRepresentationValue(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t getEnumTagSinglePayload for __TupleType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for __TupleType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t static FileTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v36 = a3;
  v37 = a2;
  v38 = a4;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FileTransferRepresentation(0, a2, a3, v11);
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  (*(v13 + 16))(&v33 - v14, a1, v12);
  (*(v8 + 16))(v10, v15, v7);
  v16 = v12[10];
  v17 = &v15[v12[9]];
  v18 = *v17;
  v19 = v17[1];
  v20 = v12[12];
  v21 = &v15[v12[11]];
  v22 = *v21;
  v23 = v21[1];
  if (*v21)
  {
    v24 = v21[1];
  }

  else
  {
    v24 = 0;
  }

  v34 = v24;
  v35 = v18;
  v25 = *&v15[v20];
  v26 = *&v15[v20 + 8];
  if (v25)
  {
    v27 = *&v15[v20 + 8];
  }

  else
  {
    v27 = 0;
  }

  v33 = v27;
  v28 = v15[v16];

  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v22, v23);
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v25, v26);
  v29 = type metadata accessor for SentTransferredFile(0);
  *&v32 = type metadata accessor for ReceivedTransferredFile(0);
  *(&v32 + 1) = v36;
  *(&v31 + 1) = v29;
  *&v31 = v37;
  _TransferRepresentationOutputs.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporter:importer:)(v10, v35, v19, v28, v22, v34, v25, v33, v38, v31, v32, &protocol witness table for SentTransferredFile, &protocol witness table for ReceivedTransferredFile);
  return (*(v13 + 8))(v15, v12);
}

uint64_t FileTransferRepresentation.init(contentType:shouldAttemptToOpenInPlace:exporter:importer:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = type metadata accessor for FileTransferRepresentation(0, a7, a8, a4);
  v17 = v16[10];
  v18 = type metadata accessor for UTType();
  result = (*(*(v18 - 8) + 32))(a9, a1, v18);
  *(a9 + v17) = a2;
  v20 = (a9 + v16[9]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (a9 + v16[11]);
  *v21 = a3;
  v21[1] = a4;
  v22 = (a9 + v16[12]);
  *v22 = a5;
  v22[1] = a6;
  return result;
}

uint64_t FileTransferRepresentation.init(exportedContentType:shouldAllowToOpenInPlace:exporter:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;

  return FileTransferRepresentation.init(contentType:shouldAttemptToOpenInPlace:exporter:importer:)(a1, a2, a3, a4, &async function pointer to partial apply for closure #1 in FileTransferRepresentation.init(exportedContentType:shouldAllowToOpenInPlace:exporter:), v14, a5, a6, a7);
}

uint64_t partial apply for closure #1 in FileTransferRepresentation.init(exportedContentType:shouldAllowToOpenInPlace:exporter:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = Transferable.file(contentType:fileHandler:);

  return closure #1 in DataTransferRepresentation.init(exportedContentType:exporter:)();
}

uint64_t FileTransferRepresentation.init(importedContentType:shouldAttemptToOpenInPlace:importer:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;

  return FileTransferRepresentation.init(contentType:shouldAttemptToOpenInPlace:exporter:importer:)(a1, a2, &async function pointer to partial apply for closure #1 in FileTransferRepresentation.init(importedContentType:shouldAttemptToOpenInPlace:importer:), v14, a3, a4, a5, a6, a7);
}

uint64_t partial apply for closure #1 in FileTransferRepresentation.init(importedContentType:shouldAttemptToOpenInPlace:importer:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return closure #1 in DataTransferRepresentation.init(importedContentType:importer:)();
}

uint64_t instantiation function for generic protocol witness table for FileTransferRepresentation<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t CodableTransferRepresentation.init<>(for:contentType:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v20 = a3;
  v21 = a4;
  v11 = type metadata accessor for UTType();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a2, v11);
  v15 = type metadata accessor for JSONEncoder();
  swift_allocObject();
  v23 = JSONEncoder.init()();
  v16 = type metadata accessor for JSONDecoder();
  swift_allocObject();
  v22 = JSONDecoder.init()();
  v17 = lazy protocol witness table accessor for type JSONEncoder and conformance JSONEncoder(&lazy protocol witness table cache variable for type JSONEncoder and conformance JSONEncoder, MEMORY[0x277CC87B8], MEMORY[0x277CC8798]);
  v18 = lazy protocol witness table accessor for type JSONEncoder and conformance JSONEncoder(&lazy protocol witness table cache variable for type JSONDecoder and conformance JSONDecoder, MEMORY[0x277CC8710], MEMORY[0x277CC86F0]);
  CodableTransferRepresentation.init(for:contentType:encoder:decoder:)(v18, v14, &v23, &v22, v20, v15, v16, v21, x8_0, a5, a6, v17, v18);
  return (*(v12 + 8))(a2, v11);
}

uint64_t CodableTransferRepresentation.init(for:contentType:encoder:decoder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v65 = a5;
  v66 = a4;
  v60 = a3;
  v56 = a13;
  v57 = a8;
  v64 = a12;
  v67 = *(a7 - 8);
  v18 = *(v67 + 64);
  v58 = a11;
  v62 = v18;
  v63 = a10;
  v19 = MEMORY[0x28223BE20](a1);
  v61 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v59 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for UTType();
  v25 = *(*(v24 - 8) + 32);
  v54 = a9;
  v25(a9, a2, v24);
  v26 = v65;
  v68[0] = v65;
  v68[1] = a6;
  v68[2] = a7;
  v68[3] = a8;
  v27 = v63;
  v68[4] = v63;
  v68[5] = a11;
  v68[6] = a12;
  v68[7] = a13;
  v28 = type metadata accessor for CodableTransferRepresentation(0, v68);
  v29 = *(v28 + 84);
  v30 = v28;
  v55 = v28;
  v31 = v60;
  (*(v22 + 16))(a9 + v29, v60, a6);
  (*(v67 + 16))(a9 + *(v30 + 88), v66, a7);
  v32 = *(v22 + 32);
  v33 = v59;
  v32(v59, v31, a6);
  v34 = (*(v22 + 80) + 80) & ~*(v22 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = v26;
  *(v35 + 3) = a6;
  v36 = a6;
  v53 = a6;
  v37 = v56;
  v38 = v57;
  *(v35 + 4) = a7;
  *(v35 + 5) = v38;
  *(v35 + 6) = v27;
  v39 = v58;
  v40 = v64;
  *(v35 + 7) = v58;
  *(v35 + 8) = v40;
  *(v35 + 9) = v37;
  v32(&v35[v34], v33, v36);
  v41 = v55;
  v42 = v54;
  v43 = (v54 + *(v55 + 92));
  *v43 = partial apply for closure #1 in CodableRepresentation.init(for:contentType:encoder:decoder:);
  v43[1] = v35;
  v45 = *(v67 + 32);
  v67 += 32;
  v44 = v67;
  v46 = v61;
  v45(v61, v66, a7);
  v47 = (*(v44 + 48) + 80) & ~*(v44 + 48);
  v48 = swift_allocObject();
  v49 = v53;
  *(v48 + 2) = v65;
  *(v48 + 3) = v49;
  *(v48 + 4) = a7;
  *(v48 + 5) = v38;
  v50 = v64;
  *(v48 + 6) = v63;
  *(v48 + 7) = v39;
  *(v48 + 8) = v50;
  *(v48 + 9) = v37;
  result = (v45)(v48 + v47, v46, a7);
  v52 = (v42 + *(v41 + 96));
  *v52 = partial apply for closure #2 in CodableRepresentation.init(for:contentType:encoder:decoder:);
  v52[1] = v48;
  return result;
}

uint64_t static CodableTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v54 = a2;
  v55 = a6;
  v48 = a3;
  v53 = a8;
  v17 = type metadata accessor for UTType();
  MEMORY[0x28223BE20](v17);
  v52 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 16);
  v50 = a1;
  v20();
  v56[0] = a2;
  v56[1] = a3;
  v56[2] = a4;
  v56[3] = a5;
  v56[4] = a6;
  v56[5] = a7;
  v56[6] = a9;
  v56[7] = a10;
  v49 = type metadata accessor for CodableTransferRepresentation(0, v56);
  v21 = (a1 + *(v49 + 92));
  v22 = v21[1];
  v45 = *v21;
  v51 = v22;
  v23 = swift_allocObject();
  v24 = v54;
  v25 = v48;
  v23[2] = v54;
  v23[3] = v25;
  v23[4] = a4;
  v23[5] = a5;
  v26 = a5;
  v46 = a5;
  v47 = a10;
  v27 = v55;
  v23[6] = v55;
  v23[7] = a7;
  v23[8] = a9;
  v23[9] = a10;
  v23[10] = v45;
  v23[11] = v22;
  v28 = swift_allocObject();
  v28[2] = v24;
  v28[3] = v25;
  v28[4] = a4;
  v28[5] = v26;
  v43 = a7;
  v44 = a4;
  v28[6] = v27;
  v28[7] = a7;
  v28[8] = a9;
  v28[9] = a10;
  v28[10] = &_sx10Foundation4DataVs5Error_pIeghnozo_xACsAD_pIeghHnozo_16CoreTransferable0E0RzSeRzSERz7Combine15TopLevelEncoderR_s8SendableR_AG0gH7DecoderR0_sAIR0_AC6OutputRt_AC5InputRt0_r1_lTRTATu_0;
  v28[11] = v23;
  v29 = (v50 + *(v49 + 96));
  v30 = v29[1];
  v50 = *v29;
  v31 = swift_allocObject();
  v33 = v54;
  v32 = v55;
  v31[2] = v54;
  v31[3] = v25;
  v34 = v25;
  v31[4] = a4;
  v35 = v46;
  v36 = v47;
  v31[5] = v46;
  v31[6] = v32;
  v31[7] = a7;
  v31[8] = a9;
  v37 = v50;
  v31[9] = v36;
  v31[10] = v37;
  v31[11] = v30;
  v38 = swift_allocObject();
  v38[2] = v33;
  v38[3] = v34;
  v39 = v43;
  v38[4] = v44;
  v38[5] = v35;
  v38[6] = v32;
  v38[7] = v39;
  v38[8] = a9;
  v38[9] = v36;
  v38[10] = &_s10Foundation4DataVxs5Error_pIeghgrzo_ACxsAD_pIeghHgrzo_16CoreTransferable0E0RzSeRzSERz7Combine15TopLevelEncoderR_s8SendableR_AG0gH7DecoderR0_sAIR0_AC6OutputRt_AC5InputRt0_r1_lTRTATu_0;
  v38[11] = v31;

  *&v42 = MEMORY[0x277CC9318];
  *(&v42 + 1) = v35;
  *&v41 = v33;
  *(&v41 + 1) = MEMORY[0x277CC9318];
  return _TransferRepresentationOutputs.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporter:importer:)(v52, 0, 0, 2u, &_sx10Foundation4DataVs5Error_pIeghHnozo_xACsAD_pIeghHnrzo_16CoreTransferable0E0RzSeRzSERz7Combine15TopLevelEncoderR_s8SendableR_AG0gH7DecoderR0_sAIR0_AC6OutputRt_AC5InputRt0_r1_lTRTATu_0, v28, &_s10Foundation4DataVxs5Error_pIeghHgrzo_ACxsAD_pIeghHnrzo_16CoreTransferable0E0RzSeRzSERz7Combine15TopLevelEncoderR_s8SendableR_AG0gH7DecoderR0_sAIR0_AC6OutputRt_AC5InputRt0_r1_lTRTATu_0, v38, v53, v41, v42, &protocol witness table for Data, &protocol witness table for Data);
}

uint64_t instantiation function for generic protocol witness table for CodableTransferRepresentation<A, B, C>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t type metadata completion function for CodableTransferRepresentation(uint64_t a1)
{
  result = type metadata accessor for UTType();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ()();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodableTransferRepresentation(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  v8 = *(a3 + 32);
  v9 = *(*(a3 + 24) - 8);
  v10 = *(v7 + 84);
  v11 = v9;
  v12 = *(v9 + 84);
  if (v12 <= v10)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  v14 = *(v8 - 8);
  v15 = *(v14 + 84);
  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  v18 = *(v14 + 80);
  if (v15 <= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = *(v14 + 84);
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(*(v6 - 8) + 64) + v16;
  v21 = *(*(v8 - 8) + 64) + 7;
  if (v19 >= a2)
  {
    goto LABEL_32;
  }

  v22 = ((((v21 + ((v17 + v18 + (v20 & ~v16)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v23 = v22 & 0xFFFFFFF8;
  if ((v22 & 0xFFFFFFF8) != 0)
  {
    v24 = 2;
  }

  else
  {
    v24 = a2 - v19 + 1;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v27 = *(a1 + v22);
      if (!v27)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v27 = *(a1 + v22);
      if (!v27)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    v29 = v27 - 1;
    if (v23)
    {
      v29 = 0;
      v30 = *a1;
    }

    else
    {
      v30 = 0;
    }

    return v19 + (v30 | v29) + 1;
  }

  if (v26)
  {
    v27 = *(a1 + v22);
    if (v27)
    {
      goto LABEL_29;
    }
  }

LABEL_32:
  if (v10 == v19)
  {
    v31 = *(v7 + 48);

    return v31(a1, v10, v6);
  }

  else
  {
    v32 = (a1 + v20) & ~v16;
    if (v12 == v19)
    {
      v33 = *(v11 + 48);

      return v33(v32);
    }

    else
    {
      v34 = (v32 + v17 + v18) & ~v18;
      if (v15 == v19)
      {
        v35 = *(v14 + 48);

        return v35(v34, v15, v8);
      }

      else
      {
        v36 = *((v21 + v34) & 0xFFFFFFFFFFFFFFF8);
        if (v36 >= 0xFFFFFFFF)
        {
          LODWORD(v36) = -1;
        }

        return (v36 + 1);
      }
    }
  }
}

void storeEnumTagSinglePayload for CodableTransferRepresentation(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  v10 = *(a4 + 32);
  v11 = *(*(a4 + 24) - 8);
  v12 = *(v9 + 84);
  v13 = v11;
  v14 = *(v11 + 84);
  if (v14 <= v12)
  {
    v15 = *(v9 + 84);
  }

  else
  {
    v15 = *(v11 + 84);
  }

  v16 = *(v10 - 8);
  v17 = *(v16 + 84);
  v18 = *(*(v8 - 8) + 64);
  v19 = *(v11 + 80);
  v20 = *(v11 + 64);
  v21 = *(v16 + 80);
  if (v17 <= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = *(v16 + 84);
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  v23 = v18 + v19;
  v24 = *(*(v10 - 8) + 64) + 7;
  v25 = ((((v24 + ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v22 >= a3)
  {
    v28 = 0;
    v29 = a2 - v22;
    if (a2 <= v22)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v25)
    {
      v26 = 2;
    }

    else
    {
      v26 = a3 - v22 + 1;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = a2 - v22;
    if (a2 <= v22)
    {
LABEL_22:
      if (v28 > 1)
      {
        if (v28 != 2)
        {
          *(a1 + v25) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *(a1 + v25) = 0;
      }

      else if (v28)
      {
        *(a1 + v25) = 0;
        if (!a2)
        {
          return;
        }

LABEL_38:
        if (v12 == v22)
        {
          v32 = *(v9 + 56);

          v32(a1, a2, v12, v8);
        }

        else
        {
          v33 = (a1 + v23) & ~v19;
          if (v14 == v22)
          {
            v34 = *(v13 + 56);

            v34(v33, a2);
          }

          else
          {
            v35 = (v33 + v20 + v21) & ~v21;
            if (v17 == v22)
            {
              v36 = *(v16 + 56);

              v36(v35, a2, v17, v10);
            }

            else
            {
              v37 = ((v24 + v35) & 0xFFFFFFFFFFFFFFF8);
              if ((a2 & 0x80000000) != 0)
              {
                *v37 = a2 & 0x7FFFFFFF;
                v37[1] = 0;
              }

              else
              {
                *v37 = (a2 - 1);
              }
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }
  }

  if (v25)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  if (v25)
  {
    v31 = ~v22 + a2;
    bzero(a1, v25);
    *a1 = v31;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      *(a1 + v25) = v30;
    }

    else
    {
      *(a1 + v25) = v30;
    }
  }

  else if (v28)
  {
    *(a1 + v25) = v30;
  }
}

uint64_t _TransferRepresentationOutputs.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v32 = a4;
  v30 = a2;
  v31 = a3;
  v33 = a9;
  v28 = a11;
  v29 = a10;
  v26 = a13;
  v27 = a12;
  v18 = type metadata accessor for UTType();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMd, &_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMR);
  v22 = *(type metadata accessor for ResolvedTransferRepresentation(0) - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20E3FD830;
  (*(v19 + 16))(v21, a1, v18);
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(a5, a6);
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(a7, a8);
  ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)(v21, v30, v31, v32, a5, a6, a7, a8, v24 + v23, v29, *(&v29 + 1), v28, *(&v28 + 1), v27, v26);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(a7, a8);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(a5, a6);
  result = (*(v19 + 8))(a1, v18);
  *v33 = v24;
  return result;
}

uint64_t type metadata accessor for ResolvedTransferRepresentation(uint64_t a1)
{
  result = type metadata singleton initialization cache for ResolvedTransferRepresentation;
  if (!type metadata singleton initialization cache for ResolvedTransferRepresentation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = -1;
  v20 = type metadata accessor for ResolvedTransferRepresentation(0);
  v21 = (a9 + v20[10]);
  *v21 = 0;
  v21[1] = 0;
  v22 = v20[11];
  *(a9 + v22) = *TransferRepresentationVisibility.all.unsafeMutableAddressor();
  v23 = (a9 + v20[12]);
  *v23 = 0;
  v23[1] = 0;
  v24 = v20[5];
  v25 = type metadata accessor for UTType();
  (*(*(v25 - 8) + 32))(a9 + v24, a1, v25);
  if (a3)
  {
    outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage?(*a9, *(a9 + 8), *(a9 + 16));
    *a9 = a2;
    *(a9 + 8) = a3;
    *(a9 + 16) = 0;
  }

  v26 = (a9 + v20[8]);
  *(a9 + v20[6]) = a4;
  v27 = (a9 + v20[7]);
  *v27 = a11;
  v27[1] = a14;
  if (a5)
  {
    v28 = swift_allocObject();
    v28[2] = a10;
    v28[3] = a11;
    v28[4] = a12;
    v28[5] = a13;
    v28[6] = a14;
    v28[7] = a15;
    v28[8] = a5;
    v28[9] = a6;
    v29 = &async function pointer to partial apply for closure #1 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:);
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  *v26 = v29;
  v26[1] = v28;
  v30 = v20[9];
  if (a7)
  {
    result = swift_allocObject();
    result[2] = a10;
    result[3] = a11;
    result[4] = a12;
    result[5] = a13;
    result[6] = a14;
    result[7] = a15;
    result[8] = a7;
    result[9] = a8;
    v32 = &async function pointer to partial apply for closure #2 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:);
  }

  else
  {
    v32 = 0;
    result = 0;
  }

  v33 = (a9 + v30);
  *v33 = v32;
  v33[1] = result;
  return result;
}

Swift::Void __swiftcall _TransferRepresentationOutputs.append(_:)(CoreTransferable::_TransferRepresentationOutputs a1)
{

  specialized Array.append<A>(contentsOf:)(v1);
}

uint64_t _TransferRepresentationOutputs.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *v3;
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a2;

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16CoreTransferable30ResolvedTransferRepresentationVGMd, &_sSay16CoreTransferable30ResolvedTransferRepresentationVGMR);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v7 = lazy protocol witness table accessor for type [ResolvedTransferRepresentation] and conformance [A]();
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed ResolvedTransferRepresentation) -> (@out A, @error @owned Error), v10, v5, a3, v6, v7, MEMORY[0x277D84950], v11);

  return v8;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*ResolvedTransferRepresentation.SuggestedFileNameStorage.resolved(_:)(uint64_t a1))(void *)
{
  v2 = *v1;
  if (*(v1 + 16))
  {
    outlined init with copy of Transferable?(a1, &v4);
    if (v5)
    {
      outlined init with take of Transferable(&v4, v6);
      v2 = v2(v6);
      __swift_destroy_boxed_opaque_existential_0Tm(v6);
    }

    else
    {
      outlined destroy of Transferable?(&v4);
      return 0;
    }
  }

  else
  {
  }

  return v2;
}

uint64_t ResolvedTransferRepresentation.suggestedFileNameStorage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return outlined copy of ResolvedTransferRepresentation.SuggestedFileNameStorage?(v2, v3, v4);
}

uint64_t ResolvedTransferRepresentation.suggestedFileNameStorage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage?(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t ResolvedTransferRepresentation.contentType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResolvedTransferRepresentation(0) + 20);
  v4 = type metadata accessor for UTType();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResolvedTransferRepresentation.contentType.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResolvedTransferRepresentation(0) + 20);
  v4 = type metadata accessor for UTType();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ResolvedTransferRepresentation.shouldAttemptToOpenInPlace.setter(char a1)
{
  result = type metadata accessor for ResolvedTransferRepresentation(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t ResolvedTransferRepresentation.representationType.setter(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for ResolvedTransferRepresentation(0);
  v6 = (v2 + *(result + 28));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t key path getter for ResolvedTransferRepresentation.exporting : ResolvedTransferRepresentation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = v3[1];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v4, v5);
}

uint64_t key path setter for ResolvedTransferRepresentation.exporting : ResolvedTransferRepresentation(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 32));
  v6 = *v5;
  v7 = v5[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v2, v3);
  result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v6, v7);
  *v5 = v2;
  v5[1] = v4;
  return result;
}

uint64_t ResolvedTransferRepresentation.exporting.getter()
{
  v1 = (v0 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 32));
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(*v1, v1[1]);
  return v2;
}

uint64_t ResolvedTransferRepresentation.exporting.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 32));
  result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t key path getter for ResolvedTransferRepresentation.importing : ResolvedTransferRepresentation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = v3[1];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v4, v5);
}

uint64_t key path setter for ResolvedTransferRepresentation.importing : ResolvedTransferRepresentation(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 36));
  v6 = *v5;
  v7 = v5[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v2, v3);
  result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v6, v7);
  *v5 = v2;
  v5[1] = v4;
  return result;
}

uint64_t ResolvedTransferRepresentation.importing.getter()
{
  v1 = (v0 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 36));
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(*v1, v1[1]);
  return v2;
}

uint64_t ResolvedTransferRepresentation.importing.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 36));
  result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t key path getter for ResolvedTransferRepresentation.exportingCondition : ResolvedTransferRepresentation@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Transferable) -> (@unowned Bool, @error @owned Error);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v4, v5);
}

uint64_t key path setter for ResolvedTransferRepresentation.exportingCondition : ResolvedTransferRepresentation(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Transferable) -> (@out Bool, @error @owned Error);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 40));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t ResolvedTransferRepresentation.exportingCondition.getter()
{
  v1 = (v0 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 40));
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(*v1, v1[1]);
  return v2;
}

uint64_t ResolvedTransferRepresentation.exportingCondition.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 40));
  result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ResolvedTransferRepresentation.visibility.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for ResolvedTransferRepresentation(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t ResolvedTransferRepresentation.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for ResolvedTransferRepresentation(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t ResolvedTransferRepresentation.suggestedFileName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 48));

  return v1;
}

uint64_t ResolvedTransferRepresentation.suggestedFileName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t closure #1 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a6;
  v6[13] = v11;
  v6[10] = a4;
  v6[11] = a5;
  v6[8] = a2;
  v6[9] = a3;
  v6[7] = a1;
  v8 = type metadata accessor for Optional();
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = *(a5 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:), 0, 0);
}

uint64_t closure #1 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)()
{
  outlined init with copy of Transferable(*(v0 + 64), v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 136);
    v1 = *(v0 + 144);
    v3 = *(v0 + 128);
    v4 = *(v0 + 88);
    v5 = *(v0 + 72);
    v6 = *(v0 + 56);
    v19 = *(v0 + 96);
    (*(v2 + 56))(v3, 0, 1, v4);
    (*(v2 + 32))(v1, v3, v4);
    *(v6 + 24) = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
    v20 = (v5 + *v5);
    v8 = swift_task_alloc();
    *(v0 + 152) = v8;
    *v8 = v0;
    v8[1] = closure #1 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:);
    v9 = *(v0 + 144);

    return v20(boxed_opaque_existential_1, v9);
  }

  else
  {
    v12 = *(v0 + 128);
    v11 = *(v0 + 136);
    v13 = *(v0 + 112);
    v14 = *(v0 + 120);
    v15 = *(v0 + 88);
    v16 = *(v0 + 64);
    (*(v11 + 56))(v12, 1, 1, v15);
    (*(v14 + 8))(v12, v13);
    _StringGuts.grow(_:)(33);

    v17 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v17);

    MEMORY[0x20F32D540](0x756F662074756220, 0xEB0000000020646ELL);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    swift_getDynamicType();
    v18 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v18);

    MEMORY[0x20F32D540](0x64616574736E6920, 0xE90000000000002ELL);
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = closure #1 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:);
  }

  else
  {
    v2 = closure #1 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  (*(v0[17] + 8))(v0[18], v0[11]);

  v1 = v0[1];

  return v1();
}

{
  v1 = v0[7];
  (*(v0[17] + 8))(v0[18], v0[11]);
  __swift_deallocate_boxed_opaque_existential_1(v1);

  v2 = v0[1];

  return v2();
}

uint64_t closure #2 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a4;
  v8[11] = a5;
  v8[8] = a2;
  v8[9] = a3;
  v8[7] = a1;
  v10 = type metadata accessor for Optional();
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = *(a7 - 8);
  v8[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:), 0, 0);
}

uint64_t closure #2 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)()
{
  outlined init with copy of Transferable(v0[8], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B8Currency_pMd, &_s16CoreTransferable0B8Currency_pMR);
  v1 = swift_dynamicCast();
  v2 = v0[12];
  if (v1)
  {
    v4 = v0[17];
    v3 = v0[18];
    v5 = v0[16];
    v6 = v0[13];
    v7 = v0[11];
    v8 = v0[9];
    v9 = v0[7];
    (*(v4 + 56))(v5, 0, 1, v0[12]);
    (*(v4 + 32))(v3, v5, v2);
    v9[3] = v7;
    v9[4] = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
    v21 = (v8 + *v8);
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = closure #2 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:);
    v12 = v0[18];

    return v21(boxed_opaque_existential_1, v12);
  }

  else
  {
    v15 = v0[16];
    v14 = v0[17];
    v16 = v0[14];
    v17 = v0[15];
    v18 = v0[8];
    (*(v14 + 56))(v15, 1, 1, v2);
    (*(v17 + 8))(v15, v16);
    _StringGuts.grow(_:)(33);

    v19 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v19);

    MEMORY[0x20F32D540](0x756F662074756220, 0xEB0000000020646ELL);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    swift_getDynamicType();
    v20 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v20);

    MEMORY[0x20F32D540](0x64616574736E6920, 0xE90000000000002ELL);
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = closure #2 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:);
  }

  else
  {
    v2 = closure #2 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  (*(v0[17] + 8))(v0[18], v0[12]);

  v1 = v0[1];

  return v1();
}

{
  v1 = v0[7];
  (*(v0[17] + 8))(v0[18], v0[12]);
  __swift_deallocate_boxed_opaque_existential_1(v1);

  v2 = v0[1];

  return v2();
}

uint64_t partial apply for closure #2 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[4];
  v8 = v2[5];
  v10 = v2[8];
  v9 = v2[9];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = Transferable.file(contentType:fileHandler:);

  return closure #2 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)(a1, a2, v10, v9, v6, v11, v7, v8);
}

uint64_t partial apply for closure #1 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[8];
  v8 = v2[9];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return closure #1 in ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)(a1, a2, v9, v8, v6, v7);
}

uint64_t partial apply for thunk for @callee_guaranteed (@in_guaranteed ResolvedTransferRepresentation) -> (@out A, @error @owned Error)(uint64_t a1, void *a2)
{
  result = (*(v2 + 24))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ResolvedTransferRepresentation] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ResolvedTransferRepresentation] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ResolvedTransferRepresentation] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16CoreTransferable30ResolvedTransferRepresentationVGMd, &_sSay16CoreTransferable30ResolvedTransferRepresentationVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ResolvedTransferRepresentation] and conformance [A]);
  }

  return result;
}

uint64_t outlined init with copy of Transferable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Transferable?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Transferable(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t getEnumTagSinglePayload for _TransferRepresentationOutputs(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for _TransferRepresentationOutputs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for ResolvedTransferRepresentation(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for ResolvedTransferRepresentation.SuggestedFileNameStorage?, &type metadata for ResolvedTransferRepresentation.SuggestedFileNameStorage);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UTType();
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for @thick TransferableCurrency.Type();
        if (v4 <= 0x3F)
        {
          type metadata accessor for (())?(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t type metadata accessor for @thick TransferableCurrency.Type()
{
  result = lazy cache variable for type metadata for @thick TransferableCurrency.Type;
  if (!lazy cache variable for type metadata for @thick TransferableCurrency.Type)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16CoreTransferable0B8Currency_pMd, &_s16CoreTransferable0B8Currency_pMR);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for @thick TransferableCurrency.Type);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Transferable) -> (@out Bool, @error @owned Error)()
{
  (*(v0 + 16))(&var1);
  if (!v1)
  {
    v2 = var1;
  }

  return v2 & 1;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Transferable) -> (@unowned Bool, @error @owned Error)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t one-time initialization function for transferableRunLoopMode()
{
  result = MEMORY[0x20F32D490](0xD000000000000017, 0x800000020E3FF5D0);
  static CFRunLoopMode.transferableRunLoopMode = result;
  return result;
}

uint64_t RunLoopSource.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*(v0 + 120), *(v0 + 128));

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t closure #1 in closure #1 in variable initialization expression of performCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in variable initialization expression of performCallback, v6, v5);
}

uint64_t closure #1 in closure #1 in variable initialization expression of performCallback()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 120);
  *(v0 + 56) = v2;
  if (v2)
  {
    *(v0 + 64) = *(v1 + 128);

    v6 = (v2 + *v2);
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = closure #1 in closure #1 in variable initialization expression of performCallback;

    return v6();
  }

  else
  {

    **(v0 + 16) = *(v0 + 56) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);

  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v3, v2);
  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in variable initialization expression of performCallback, v5, v4);
}

{

  **(v0 + 16) = *(v0 + 56) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t @objc closure #1 in variable initialization expression of performCallback(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  result = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  if (a1)
  {

    static TaskPriority.userInitiated.getter();
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
    type metadata accessor for MainActor();

    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = a1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #1 in variable initialization expression of performCallback, v8);
  }

  return result;
}

void static LegacyExporterCaller.callSynchronously<A, B>(_:item:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v89 = a7;
  v88 = a6;
  v86 = a3;
  v91 = a2;
  v87 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v104 = type metadata accessor for Result();
  v93 = type metadata accessor for Optional();
  v92 = *(v93 - 8);
  v12 = MEMORY[0x28223BE20](v93);
  v94 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v81 - v15;
  v90 = a4;
  v85 = *(a4 - 8);
  MEMORY[0x28223BE20](v14);
  v84 = v17;
  v103 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchWorkItemFlags();
  v105 = *(v18 - 8);
  v106 = v18;
  MEMORY[0x28223BE20](v18);
  v100 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v101 = *(v20 - 8);
  v102 = v20;
  MEMORY[0x28223BE20](v20);
  v99 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = CFRunLoopGetMain();
  if (v26)
  {
    v27 = v26;
    v98 = v8;
    v82 = a8;
    v95 = a5;
    if (one-time initialization token for transferableRunLoopMode != -1)
    {
      swift_once();
    }

    v28 = static CFRunLoopMode.transferableRunLoopMode;
    type metadata accessor for RunLoopSource();
    v29 = swift_allocObject();
    *(v29 + 96) = 0u;
    v30 = (v29 + 96);
    *(v29 + 112) = 0u;
    *(v29 + 128) = 0;
    *(v29 + 104) = v27;
    *(v29 + 112) = v28;
    *(v29 + 16) = 0;
    *(v29 + 24) = v29;
    *(v29 + 32) = 0u;
    *(v29 + 48) = 0u;
    *(v29 + 64) = 0;
    *(v29 + 72) = @objc closure #1 in variable initialization expression of scheduleCallback;
    *(v29 + 80) = @objc closure #1 in variable initialization expression of cancelCallback;
    *(v29 + 88) = @objc closure #1 in variable initialization expression of performCallback;
    v31 = v28;
    v32 = v27;
    *&context.version = *(v29 + 16);
    *&context.release = *(v29 + 40);
    *&context.equal = *(v29 + 56);
    *&context.schedule = *(v29 + 72);
    v97 = v29;
    context.perform = *(v29 + 88);
    context.retain = 0;
    v33 = v32;
    v34 = v31;
    v35 = v33;
    v36 = v34;
    CFRunLoopAddCommonMode(v35, v36);
    v37 = CFRunLoopSourceCreate(0, 0, &context);
    v38 = *v30;
    *v30 = v37;

    v81 = v30;
    v39 = *v30;
    CFRunLoopAddSource(v35, v39, v36);

    v83 = v35;
    static Date.distantFuture.getter();
    Date.timeIntervalSinceNow.getter();
    v41 = v40;
    (*(v23 + 8))(v25, v22);
    type metadata accessor for LegacyExporterCaller.MainQueueDrainingFlag();
    v42 = swift_allocObject();
    *(v42 + 16) = 1;
    type metadata accessor for OS_dispatch_queue();
    v43 = static OS_dispatch_queue.main.getter();
    context.copyDescription = partial apply for closure #1 in static LegacyExporterCaller.callSynchronously<A, B>(_:item:);
    context.equal = v42;
    context.version = MEMORY[0x277D85DD0];
    context.info = 1107296256;
    context.retain = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    context.release = &block_descriptor_0;
    v44 = _Block_copy(&context);
    v96 = v42;

    v45 = v99;
    static DispatchQoS.unspecified.getter();
    v108 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v46 = v100;
    v47 = v106;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F32D6C0](0, v45, v46, v44);
    _Block_release(v44);

    (v105->info)(v46, v47);
    v101[1](v45, v102);

    if (CFRunLoopRunInMode(v36, 0.001, 0) != kCFRunLoopRunFinished && CFRunLoopRunInMode(v36, 0.001, 0) != kCFRunLoopRunFinished && CFRunLoopRunInMode(v36, 0.001, 0) != kCFRunLoopRunFinished && CFRunLoopRunInMode(v36, 0.001, 0) != kCFRunLoopRunFinished && CFRunLoopRunInMode(v36, 0.001, 0) != kCFRunLoopRunFinished && CFRunLoopRunInMode(v36, 0.001, 0) != kCFRunLoopRunFinished && CFRunLoopRunInMode(v36, 0.001, 0) != kCFRunLoopRunFinished && CFRunLoopRunInMode(v36, 0.001, 0) != kCFRunLoopRunFinished && CFRunLoopRunInMode(v36, 0.001, 0) != kCFRunLoopRunFinished)
    {
      CFRunLoopRunInMode(v36, 0.001, 0);
    }

    if (*(v96 + 16) == 1)
    {

      (*(*(v95 - 8) + 56))(v82, 1, 1);
    }

    else
    {
      v48 = v93;
      v49 = swift_allocBox();
      v105 = v36;
      v106 = v50;
      v102 = *(v104 - 8);
      (*(v102 + 56))(v50, 1, 1, v104);
      v51 = v85;
      v52 = v90;
      (*(v85 + 16))(v103, v86, v90);
      v53 = (*(v51 + 80) + 72) & ~*(v51 + 80);
      v54 = (v84 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
      v55 = swift_allocObject();
      v56 = v95;
      *(v55 + 2) = v52;
      *(v55 + 3) = v56;
      v57 = v89;
      *(v55 + 4) = v88;
      *(v55 + 5) = v57;
      v58 = v87;
      *(v55 + 6) = v49;
      *(v55 + 7) = v58;
      *(v55 + 8) = v91;
      (*(v51 + 32))(&v55[v53], v103, v52);
      v59 = v83;
      *&v55[v54] = v83;
      v60 = v97;
      v62 = v97[15];
      v61 = v97[16];
      v97[15] = &async function pointer to partial apply for closure #2 in static LegacyExporterCaller.callSynchronously<A, B>(_:item:);
      v60[16] = v55;
      v101 = v59;
      v103 = v49;

      outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v62, v61);
      v63 = v60[12];

      CFRunLoopSourceSignal(v63);
      CFRunLoopWakeUp(v60[13]);

      v64 = v106;
      swift_beginAccess();
      v65 = v92;
      v66 = *(v92 + 16);
      v66(v16, v64, v48);
      v67 = *(v102 + 48);
      v68 = v104;
      v69 = v67(v16, 1);
      v70 = v65 + 8;
      v71 = *(v65 + 8);
      if (v69 == 1)
      {
        do
        {
          v72 = v70;
          v71(v16, v48);
          CFRunLoopRunInMode(v105, v41, 0);
          v66(v16, v106, v48);
          v73 = (v67)(v16, 1, v68);
          v70 = v72;
        }

        while (v73 == 1);
      }

      v71(v16, v48);
      v74 = v97[13];
      if (v74)
      {
        if (*v81)
        {
          v75 = v97[14];
          if (v75)
          {
            CFRunLoopRemoveSource(v74, *v81, v75);
          }
        }
      }

      v76 = v94;
      v66(v94, v106, v48);
      v77 = v104;
      v78 = (v67)(v76, 1, v104);
      v79 = v98;
      if (v78 == 1)
      {
        __break(1u);
      }

      else
      {
        v80 = v82;
        _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF(v77, &v108, v82);

        if (v79)
        {
        }

        else
        {

          (*(*(v95 - 8) + 56))(v80, 0, 1);
        }
      }
    }
  }

  else
  {
    (*(*(a5 - 8) + 56))(a8, 1, 1);
  }
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t partial apply for closure #1 in static LegacyExporterCaller.callSynchronously<A, B>(_:item:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(v0 + 16) = 0;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t closure #2 in static LegacyExporterCaller.callSynchronously<A, B>(_:item:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v7[9] = type metadata accessor for Result();
  v10 = type metadata accessor for Optional();
  v7[10] = v10;
  v7[11] = *(v10 - 8);
  v7[12] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[13] = v11;
  v7[14] = swift_projectBox();
  v7[15] = type metadata accessor for MainActor();
  v7[16] = static MainActor.shared.getter();
  v14 = (a2 + *a2);
  v12 = swift_task_alloc();
  v7[17] = v12;
  *v12 = v7;
  v12[1] = closure #2 in static LegacyExporterCaller.callSynchronously<A, B>(_:item:);

  return v14(v11, a4);
}

uint64_t closure #2 in static LegacyExporterCaller.callSynchronously<A, B>(_:item:)()
{
  *(*v1 + 144) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = closure #2 in static LegacyExporterCaller.callSynchronously<A, B>(_:item:);
  }

  else
  {
    v4 = closure #2 in static LegacyExporterCaller.callSynchronously<A, B>(_:item:);
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);

  swift_storeEnumTagMultiPayload();
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  swift_beginAccess();
  (*(v4 + 40))(v2, v1, v3);
  CFRunLoopStop(*(v0 + 64));

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);

  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  swift_beginAccess();
  (*(v4 + 40))(v2, v3, v5);
  CFRunLoopStop(*(v0 + 64));

  v7 = *(v0 + 8);

  return v7();
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

uint64_t partial apply for closure #2 in static LegacyExporterCaller.callSynchronously<A, B>(_:item:)()
{
  v2 = v0[3];
  v3 = (*(*(v0[2] - 8) + 80) + 72) & ~*(*(v0[2] - 8) + 80);
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = *(v0 + ((*(*(v0[2] - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return closure #2 in static LegacyExporterCaller.callSynchronously<A, B>(_:item:)(v4, v5, v6, v0 + v3, v7, v9, v2);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CFRunLoopSourceContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for CFRunLoopSourceContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in variable initialization expression of performCallback(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = Transferable.file(contentType:fileHandler:);

  return closure #1 in closure #1 in variable initialization expression of performCallback(a1, v5, v6, v4);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_25(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = Transferable.file(contentType:fileHandler:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

void type metadata accessor for CFRunLoopMode(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

CoreTransferable::_TransferRepresentationOutputs static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v42 = a2;
  v43 = a4;
  *&v40 = a1;
  v44 = a6;
  v8 = type metadata accessor for ResolvedTransferRepresentation(0);
  v45 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v46 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
  v37 = *(v41 - 8);
  v10 = MEMORY[0x28223BE20](v41);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v36 - v16;
  v39 = type metadata accessor for _TransferRepresentationValue(0, AssociatedTypeWitness, v18, v19);
  v20 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v22 = &v36 - v21;
  (*(a5 + 24))(a3);
  v23 = *(v40 + 16);
  v38 = *v40;
  v40 = v23;
  _TransferRepresentationValue.init(_:)(v17, AssociatedTypeWitness, v22);
  _TransferRepresentationInputs.init()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(&v54, v22);
  (*(v20 + 8))(v22, v39);
  v48 = v42;
  v49 = a3;
  v50 = v43;
  v51 = a5;
  v52 = v38;
  v53 = v40;
  v25 = _TransferRepresentationOutputs.map<A>(_:)(partial apply for closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:), v47, v41);

  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = *(v37 + 80);
    v43 = v25;
    v28 = v25 + ((v27 + 32) & ~v27);
    v29 = *(v37 + 72);
    v30 = (v45 + 48);
    v31 = MEMORY[0x277D84F90];
    v32 = v8;
    do
    {
      outlined init with copy of ResolvedTransferRepresentation?(v28, v14);
      outlined init with take of ResolvedTransferRepresentation?(v14, v12);
      if ((*v30)(v12, 1, v8) == 1)
      {
        outlined destroy of ResolvedTransferRepresentation?(v12);
      }

      else
      {
        outlined init with take of ResolvedTransferRepresentation(v12, v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
        }

        v34 = v31[2];
        v33 = v31[3];
        if (v34 >= v33 >> 1)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v31);
        }

        v31[2] = v34 + 1;
        outlined init with take of ResolvedTransferRepresentation(v46, v31 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v34);
        v8 = v32;
      }

      v28 += v29;
      --v26;
    }

    while (v26);
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  return _TransferRepresentationOutputs.init(_:)(v31);
}

uint64_t closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v40 = a7;
  v41 = a8;
  v38 = a10;
  v39 = a6;
  v16 = type metadata accessor for ResolvedTransferRepresentation(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ResolvedTransferRepresentation(a1, v19);
  if (a2)
  {
    v37 = a4;
    v20 = a5;

    v21 = ResolvedTransferRepresentation.exporter.getter();
    if (v21)
    {
      v23 = v21;
      v24 = v22;
      v25 = swift_allocObject();
      v26 = v40;
      v25[2] = v39;
      v25[3] = v26;
      v27 = v38;
      v25[4] = v41;
      v25[5] = v27;
      v25[6] = a2;
      v25[7] = a3;
      v25[8] = v23;
      v25[9] = v24;
      ResolvedTransferRepresentation.exporter.setter(&async function pointer to partial apply for closure #1 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:), v25);
    }

    else
    {
      outlined consume of (@escaping @callee_guaranteed @async () -> ())?(a2, a3);
    }

    a5 = v20;
    a4 = v37;
  }

  if (a4)
  {

    v28 = ResolvedTransferRepresentation.importer.getter();
    if (v28)
    {
      v30 = v28;
      v31 = v29;
      v32 = swift_allocObject();
      v33 = v40;
      v32[2] = v39;
      v32[3] = v33;
      v34 = v38;
      v32[4] = v41;
      v32[5] = v34;
      v32[6] = v30;
      v32[7] = v31;
      v32[8] = a4;
      v32[9] = a5;
      ResolvedTransferRepresentation.importer.setter(&async function pointer to partial apply for closure #2 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:), v32);
    }

    else
    {
      outlined consume of (@escaping @callee_guaranteed @async () -> ())?(a4, a5);
    }
  }

  outlined init with take of ResolvedTransferRepresentation(v19, a9);
  return (*(v17 + 56))(a9, 0, 1, v16);
}

uint64_t closure #1 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a8;
  v8[20] = v13;
  v8[17] = a6;
  v8[18] = a7;
  v8[15] = a4;
  v8[16] = a5;
  v8[13] = a2;
  v8[14] = a3;
  v8[12] = a1;
  v8[21] = *(a8 - 8);
  v8[22] = swift_task_alloc();
  v10 = type metadata accessor for Optional();
  v8[23] = v10;
  v8[24] = *(v10 - 8);
  v8[25] = swift_task_alloc();
  v8[26] = *(a7 - 8);
  v8[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:), 0, 0);
}

uint64_t closure #1 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:)()
{
  outlined init with copy of Transferable(v0[13], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  if (swift_dynamicCast())
  {
    v2 = v0[26];
    v1 = v0[27];
    v3 = v0[25];
    v4 = v0[18];
    v5 = v0[14];
    (*(v2 + 56))(v3, 0, 1, v4);
    (*(v2 + 32))(v1, v3, v4);
    v18 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[28] = v6;
    *v6 = v0;
    v6[1] = closure #1 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
    v7 = v0[27];
    v8 = v0[22];

    return v18(v8, v7);
  }

  else
  {
    v11 = v0[25];
    v10 = v0[26];
    v12 = v0[23];
    v13 = v0[24];
    v14 = v0[18];
    v15 = v0[13];
    (*(v10 + 56))(v11, 1, 1, v14);
    (*(v13 + 8))(v11, v12);
    _StringGuts.grow(_:)(33);

    v16 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v16);

    MEMORY[0x20F32D540](0x756F662074756220, 0xEB0000000020646ELL);
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    swift_getDynamicType();
    v17 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v17);

    MEMORY[0x20F32D540](0x64616574736E6920, 0xE90000000000002ELL);
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t closure #2 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v17;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a1;
  v8[13] = a5;
  v12 = type metadata accessor for Optional();
  v8[18] = v12;
  v8[19] = *(v12 - 8);
  v8[20] = swift_task_alloc();
  v8[21] = *(a8 - 8);
  v8[22] = swift_task_alloc();
  v15 = a3 + *a3;
  v13 = swift_task_alloc();
  v8[23] = v13;
  *v13 = v8;
  v13[1] = closure #2 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:);

  return (v15)(v8 + 2, a2);
}

uint64_t closure #2 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:)()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
  }

  else
  {
    v2 = closure #2 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  outlined init with copy of Transferable((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  v1 = swift_dynamicCast();
  v2 = v0[16];
  if (v1)
  {
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[20];
    v6 = v0[17];
    v7 = v0[15];
    v9 = v0[12];
    v8 = v0[13];
    (*(v4 + 56))(v5, 0, 1, v0[16]);
    (*(v4 + 32))(v3, v5, v2);
    v9[3] = v7;
    v9[4] = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
    v19 = (v8 + *v8);
    v11 = swift_task_alloc();
    v0[25] = v11;
    *v11 = v0;
    v11[1] = closure #2 in closure #1 in static ProxyRepresentation._decomposedTransferRepresentation(_:inputs:);
    v12 = v0[22];

    return v19(boxed_opaque_existential_1, v12);
  }

  else
  {
    v14 = v0[20];
    v15 = v0[18];
    v16 = v0[19];
    (*(v0[21] + 56))(v14, 1, 1, v0[16]);
    (*(v16 + 8))(v14, v15);
    _StringGuts.grow(_:)(33);

    v17 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v17);

    MEMORY[0x20F32D540](0x756F662074756220, 0xEB0000000020646ELL);
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    swift_getDynamicType();
    v18 = _typeName(_:qualified:)();
    MEMORY[0x20F32D540](v18);

    MEMORY[0x20F32D540](0x64616574736E6920, 0xE90000000000002ELL);
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

void *ProxyTransferRepresentation.init(importer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  result[5] = a6;
  result[6] = a1;
  result[7] = a2;
  a7[2] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed B) -> (@out A);
  a7[3] = result;
  return result;
}

void *ProxyTransferRepresentation.init(exporter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  result[5] = a6;
  result[6] = a1;
  result[7] = a2;
  *a7 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@out B);
  a7[1] = result;
  a7[2] = 0;
  a7[3] = 0;
  return result;
}

void *ProxyTransferRepresentation.init(exporter:importer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = a7;
  v18[5] = a8;
  v18[6] = a1;
  v18[7] = a2;
  *a9 = &thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@out B)partial apply;
  a9[1] = v18;
  result = swift_allocObject();
  result[2] = a5;
  result[3] = a6;
  result[4] = a7;
  result[5] = a8;
  result[6] = a3;
  result[7] = a4;
  a9[2] = &thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed B) -> (@out A)partial apply;
  a9[3] = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed B) -> (@out A)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 48);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@out B)(a1, a2, v6);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@out B)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 48);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A) -> (@out B)(a1, a2, v6);
}

uint64_t instantiation function for generic protocol witness table for ProxyTransferRepresentation<A, B>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata instantiation function for ProxyTransferRepresentation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ProxyTransferRepresentation(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for ProxyTransferRepresentation(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = Transferable.file(contentType:fileHandler:);

  return closure #2 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(a1, a2, v8, v9, v11, v10, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[8];
  v11 = v2[9];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return closure #1 in closure #1 in static ProxyTransferRepresentation._decomposedTransferRepresentation(_:inputs:)(a1, a2, v8, v9, v10, v11, v6, v7);
}

void *static __TupleDescriptor.tupleDescription(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  destructiveProjectEnumData for _FileNamedTransferRepresentation.Storage();
  v7 = v6;
  v8 = (*(a3 + 16))(a2, a3);
  v18 = v7;
  v9 = *(a3 + 8);
  v11 = type metadata accessor for __TupleTypeDescription(0, a2, v9, v10);
  MEMORY[0x20F32D450](v17, &v18, v8, MEMORY[0x277D83690], v11, MEMORY[0x277D83698]);

  result = v17[0];
  if (!v17[0])
  {
    v14 = __TupleTypeDescription.init(_:)(a1, a2, v9, v12);
    v17[4] = v7;
    v18 = v14;
    v15 = *(a3 + 32);

    v16 = v15(v17, a2, a3);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    v16(v17, 0);
    return v14;
  }

  return result;
}

void *__TupleTypeDescription.init(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TypeConformance(255, a2, a3, a4);
  swift_getTupleTypeMetadata2();
  v7 = Array.init()();
  result = __TupleType.indices.getter(a1);
  if (result == v9)
  {
    return v7;
  }

  v10 = result;
  v11 = v9;
  if (v9 < result)
  {
    __break(1u);
  }

  else if (result < v9)
  {
    do
    {
      v12 = __TupleType.type(at:)(v10, a1);
      (*(a3 + 8))(a2, a3);
      if (swift_conformsToProtocol())
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        type metadata accessor for Array();
        Array.append(_:)();
      }

      v10 = (v10 + 1);
    }

    while (v11 != v10);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t type metadata instantiation function for TypeConformance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TypeConformance(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for TypeConformance(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for __TupleTypeDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static TupleTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v38 = a1;
  v40[3] = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for TupleTransferRepresentation(255, a2, a3, a4);
  v12 = type metadata accessor for _TransferRepresentationValue(0, v9, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v16 = type metadata accessor for TupleTransferRepresentation.Visitor(0, a2, a3, a4);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - v18;
  destructiveProjectEnumData for _FileNamedTransferRepresentation.Storage();
  v21 = v20;
  v22 = static __TupleDescriptor.tupleDescription(_:)(v20, &type metadata for TransferRepresentationDescriptor, &protocol witness table for TransferRepresentationDescriptor);
  _TransferRepresentationOutputs.init()();
  v23 = v22[2];
  if (v23)
  {
    v32 = v22;
    v33 = a5;
    v36 = (v13 + 32);
    v37 = (v13 + 16);
    v34 = v21;
    v35 = (v17 + 8);
    v24 = v15;
    v25 = v22 + 6;
    do
    {
      v26 = *(v25 - 2);
      v27 = *(v25 - 1);
      v28 = *v25;
      v25 += 3;
      v29 = __TupleType.offset(at:)(v26);
      (*v37)(v24, v38, v12);
      _TransferRepresentationOutputs.init()();
      v30 = v40[0];
      (*v36)(v19, v24, v12);
      *&v19[*(v16 + 44)] = v29;
      *&v19[*(v16 + 48)] = v30;
      v40[0] = v19;
      v40[1] = v16;
      v40[2] = &protocol witness table for TupleTransferRepresentation<A, B>.Visitor;
      _callVisitTransferRepresentationType1(v40, v27, v28);
      v40[0] = *&v19[*(v16 + 48)];

      _TransferRepresentationOutputs.append(_:)(v40);

      (*v35)(v19, v16);
      --v23;
    }

    while (v23);

    a5 = v33;
  }

  else
  {
  }

  *a5 = v39;
  return result;
}

uint64_t TupleTransferRepresentation.Visitor.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v7 = type metadata accessor for _TransferRepresentationValue(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = *(a2 - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = *(v4 + *(a1 + 44));
  v19 = type metadata accessor for TupleTransferRepresentation(255, *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v22 = type metadata accessor for _TransferRepresentationValue(0, v19, v20, v21);
  _TransferRepresentationValue.applying<A>(offset:to:)(v18, a2, v22, a2, v23, v24, v25, v26);
  (*(v12 + 16))(v15, v17, a2);
  _TransferRepresentationValue.init(_:)(v15, a2, v11);
  (*(v28 + 48))(&v29, v11);
  (*(v8 + 8))(v11, v7);
  _TransferRepresentationOutputs.append(_:)(&v29);

  return (*(v12 + 8))(v17, a2);
}

uint64_t one-time initialization function for _typeCache()
{
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_16CoreTransferable22__TupleTypeDescriptionVyAC32TransferRepresentationDescriptorVGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySO16CoreTransferable22__TupleTypeDescriptionVyAA32TransferRepresentationDescriptorVGGMd, &_sSDySO16CoreTransferable22__TupleTypeDescriptionVyAA32TransferRepresentationDescriptorVGGMR);
  result = AtomicBox.init(wrappedValue:)(&v4, v0, v1, v2);
  static TransferRepresentationDescriptor._typeCache = result;
  return result;
}

uint64_t protocol witness for static __TupleDescriptor.typeCache.getter in conformance TransferRepresentationDescriptor()
{
  if (one-time initialization token for _typeCache != -1)
  {
    swift_once();
  }

  v0 = static TransferRepresentationDescriptor._typeCache;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySO16CoreTransferable22__TupleTypeDescriptionVyAA32TransferRepresentationDescriptorVGGMd, &_sSDySO16CoreTransferable22__TupleTypeDescriptionVyAA32TransferRepresentationDescriptorVGGMR);
  AtomicBox.wrappedValue.getter(v0, v1, &v3);
  return v3;
}

uint64_t protocol witness for static __TupleDescriptor.typeCache.setter in conformance TransferRepresentationDescriptor(uint64_t a1)
{
  if (one-time initialization token for _typeCache != -1)
  {
    swift_once();
  }

  v2 = static TransferRepresentationDescriptor._typeCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySO16CoreTransferable22__TupleTypeDescriptionVyAA32TransferRepresentationDescriptorVGGMd, &_sSDySO16CoreTransferable22__TupleTypeDescriptionVyAA32TransferRepresentationDescriptorVGGMR);
  v3 = AtomicBox.wrappedValue.modify(v6, v2);
  *v4 = a1;

  return (v3)(v6, 0);
}

uint64_t (*protocol witness for static __TupleDescriptor.typeCache.modify in conformance TransferRepresentationDescriptor(os_unfair_lock_s ***a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (one-time initialization token for _typeCache != -1)
  {
    swift_once();
  }

  v4 = static TransferRepresentationDescriptor._typeCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySO16CoreTransferable22__TupleTypeDescriptionVyAA32TransferRepresentationDescriptorVGGMd, &_sSDySO16CoreTransferable22__TupleTypeDescriptionVyAA32TransferRepresentationDescriptorVGGMR);
  v3[4] = AtomicBox.wrappedValue.modify(v3, v4);
  return protocol witness for static __TupleDescriptor.typeCache.modify in conformance TransferRepresentationDescriptor;
}

void static TransferRepresentationDescriptor.typeCache.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t type metadata completion function for TupleTransferRepresentation(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TupleTransferRepresentation(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for TupleTransferRepresentation(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t type metadata completion function for TupleTransferRepresentation.Visitor(uint64_t *a1)
{
  v1 = type metadata accessor for TupleTransferRepresentation(255, a1[2], a1[3], a1[4]);
  result = type metadata accessor for _TransferRepresentationValue(319, v1, v2, v3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TupleTransferRepresentation.Visitor(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void storeEnumTagSinglePayload for TupleTransferRepresentation.Visitor(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&a1[v9] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v9] = 0;
      }

      else if (v13)
      {
        a1[v9] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v6 < 0x7FFFFFFF)
        {
          v22 = (((&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            v23 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v23 = a2 - 1;
          }

          *v22 = v23;
        }

        else if (v6 >= a2)
        {
          v24 = *(v5 + 56);

          v24();
        }

        else
        {
          if (v8 <= 3)
          {
            v18 = ~(-1 << (8 * v8));
          }

          else
          {
            v18 = -1;
          }

          if (v8)
          {
            v19 = v18 & (~v6 + a2);
            if (v8 <= 3)
            {
              v20 = v8;
            }

            else
            {
              v20 = 4;
            }

            v21 = a1;
            bzero(a1, v8);
            if (v20 > 2)
            {
              if (v20 == 3)
              {
                *v21 = v19;
                v21[2] = BYTE2(v19);
              }

              else
              {
                *v21 = v19;
              }
            }

            else if (v20 == 1)
            {
              *v21 = v19;
            }

            else
            {
              *v21 = v19;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, v9);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&a1[v9] = v15;
    }

    else
    {
      *&a1[v9] = v15;
    }
  }

  else if (v13)
  {
    a1[v9] = v15;
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_16CoreTransferable22__TupleTypeDescriptionVyAC32TransferRepresentationDescriptorVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO16CoreTransferable22__TupleTypeDescriptionVyAC32TransferRepresentationDescriptorVGGMd, &_ss18_DictionaryStorageCySO16CoreTransferable22__TupleTypeDescriptionVyAC32TransferRepresentationDescriptorVGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t TransferableError.description.getter()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TransferableError(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TransferableError(v0, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v6 + 32))(v8, v11, v5);
      v20 = 0;
      v21 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      MEMORY[0x20F32D540](0xD000000000000032, 0x800000020E3FF670);
      v18 = UTType.identifier.getter();
      MEMORY[0x20F32D540](v18);

      v14 = 0xD000000000000012;
      v15 = 0x800000020E3FF6B0;
    }

    else
    {
      (*(v6 + 32))(v8, v11, v5);
      v20 = 0;
      v21 = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      MEMORY[0x20F32D540](0xD000000000000032, 0x800000020E3FF670);
      v13 = UTType.identifier.getter();
      MEMORY[0x20F32D540](v13);

      v14 = 0x2E646E756F6620;
      v15 = 0xE700000000000000;
    }

    MEMORY[0x20F32D540](v14, v15);
    v17 = v20;
    (*(v6 + 8))(v8, v5);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    (*(v2 + 32))(v4, v11, v1);
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    MEMORY[0x20F32D540](0xD00000000000003FLL, 0x800000020E3FF630);
    v16 = URL.path.getter();
    MEMORY[0x20F32D540](v16);

    MEMORY[0x20F32D540](46, 0xE100000000000000);
    v17 = v20;
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    return 0xD000000000000042;
  }

  return v17;
}

uint64_t type metadata accessor for TransferableError(uint64_t a1)
{
  result = type metadata singleton initialization cache for TransferableError;
  if (!type metadata singleton initialization cache for TransferableError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of TransferableError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransferableError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TransferableError.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TransferableError(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TransferableError(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v7 + 32))(v9, v12, v6);
      v15 = 3;
    }

    else
    {
      (*(v7 + 32))(v9, v12, v6);
      v15 = 2;
    }

    MEMORY[0x20F32D8B0](v15);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578], MEMORY[0x277D85588]);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v7 + 8))(v9, v6);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    (*(v3 + 32))(v5, v12, v2);
    MEMORY[0x20F32D8B0](4);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v3 + 8))(v5, v2);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return MEMORY[0x20F32D8B0](0);
  }

  else
  {
    return MEMORY[0x20F32D8B0](1);
  }
}

Swift::Int TransferableError.hashValue.getter()
{
  Hasher.init(_seed:)();
  TransferableError.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TransferableError()
{
  Hasher.init(_seed:)();
  TransferableError.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransferableError(uint64_t a1)
{
  Hasher.init(_seed:)();
  TransferableError.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TransferableSupportError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F32D8B0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransferableSupportError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F32D8B0](v2);
  return Hasher._finalize()();
}

uint64_t specialized static TransferableError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = type metadata accessor for URL();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UTType();
  v40 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = type metadata accessor for TransferableError(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v36 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B5ErrorO_ACtMd, &_s16CoreTransferable0B5ErrorO_ACtMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v36 - v22;
  v24 = *(v21 + 56);
  outlined init with copy of TransferableError(a1, &v36 - v22);
  outlined init with copy of TransferableError(v41, &v23[v24]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v26 = v40;
    if (EnumCaseMultiPayload)
    {
      outlined init with copy of TransferableError(v23, v17);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v26 + 8))(v17, v5);
        goto LABEL_17;
      }

      (*(v26 + 32))(v8, &v23[v24], v5);
      v31 = static UTType.== infix(_:_:)();
      v33 = *(v26 + 8);
      v33(v8, v5);
      v33(v17, v5);
    }

    else
    {
      outlined init with copy of TransferableError(v23, v19);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v26 + 8))(v19, v5);
        goto LABEL_17;
      }

      (*(v26 + 32))(v10, &v23[v24], v5);
      v31 = static UTType.== infix(_:_:)();
      v34 = *(v26 + 8);
      v34(v10, v5);
      v34(v19, v5);
    }

LABEL_19:
    outlined destroy of TransferableError(v23);
    return v31 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    outlined init with copy of TransferableError(v23, v14);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v38 + 8))(v14, v39);
      goto LABEL_17;
    }

    v28 = v38;
    v27 = v39;
    v29 = &v23[v24];
    v30 = v37;
    (*(v38 + 32))(v37, v29, v39);
    v31 = static URL.== infix(_:_:)();
    v32 = *(v28 + 8);
    v32(v30, v27);
    v32(v14, v27);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_12;
    }

LABEL_17:
    outlined destroy of (TransferableError, TransferableError)(v23);
    v31 = 0;
    return v31 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_17;
  }

LABEL_12:
  outlined destroy of TransferableError(v23);
  v31 = 1;
  return v31 & 1;
}

void type metadata completion function for TransferableError(uint64_t a1)
{
  type metadata accessor for (to: UTType)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (to: UTType)()
{
  if (!lazy cache variable for type metadata for (to: UTType))
  {
    v0 = type metadata accessor for UTType();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (to: UTType));
    }
  }
}

uint64_t getEnumTagSinglePayload for TransferableSupportError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransferableSupportError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransferRepresentationVisibility(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TransferRepresentationVisibility(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t outlined destroy of (TransferableError, TransferableError)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B5ErrorO_ACtMd, &_s16CoreTransferable0B5ErrorO_ACtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of TransferableError(uint64_t a1)
{
  v2 = type metadata accessor for TransferableError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

uint64_t logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, logger);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t closure #1 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:)(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = a6;
  v30 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v15 = type metadata accessor for Result();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v29 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v29 - v20;
  if (a2 >> 60 != 15)
  {
    v22 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      if (!v22)
      {
        if ((a2 & 0xFF000000000000) == 0)
        {
          goto LABEL_9;
        }

LABEL_16:
        v26 = type metadata accessor for TaskPriority();
        (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
        v27 = swift_allocObject();
        v27[2] = 0;
        v27[3] = 0;
        v27[4] = a8;
        v27[5] = a9;
        v28 = v30;
        v27[6] = v29;
        v27[7] = a7;
        v27[8] = a1;
        v27[9] = a2;
        v27[10] = v28;
        v27[11] = a5;

        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v21, &async function pointer to partial apply for closure #1 in closure #1 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:), v27);
      }

      if (a1 == a1 >> 32)
      {
        goto LABEL_11;
      }

LABEL_15:
      outlined copy of Data?(a1, a2);
      goto LABEL_16;
    }

    if (v22 != 2)
    {
LABEL_9:
      outlined consume of Data?(a1, a2);
      goto LABEL_11;
    }

    if (*(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_15;
    }
  }

LABEL_11:
  if (a3)
  {
    v23 = a3;
  }

  else
  {
    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError();
    v23 = swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  *v18 = v23;
  swift_storeEnumTagMultiPayload();
  v24 = a3;
  v30(v18);
  return (*(v16 + 8))(v18, v15);
}

uint64_t closure #1 in closure #1 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = v13;
  v8[18] = v14;
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v9 = type metadata accessor for Result();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  v10 = type metadata accessor for Optional();
  v8[22] = v10;
  v8[23] = *(v10 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = *(v14 - 8);
  v8[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:), 0, 0);
}

uint64_t closure #1 in closure #1 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:)()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v0[10] = MEMORY[0x277CC9318];
  v0[11] = &protocol witness table for Data;
  v0[7] = v1;
  v0[8] = v2;
  outlined copy of Data._Representation(v1, v2);
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:);

  return (v6)(v0 + 2, v0 + 7);
}

{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v3 = closure #1 in closure #1 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v5 = v0[25];
    v4 = v0[26];
    v6 = v0[24];
    v8 = v0[20];
    v7 = v0[21];
    v10 = v0[18];
    v9 = v0[19];
    v21 = v0[16];
    v3(v6, 0, 1, v10);
    (*(v5 + 32))(v4, v6, v10);
    (*(v5 + 16))(v7, v4, v10);
    swift_storeEnumTagMultiPayload();
    v21(v7);
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v10);
  }

  else
  {
    v12 = v0[23];
    v11 = v0[24];
    v13 = v0[21];
    v14 = v0[22];
    v15 = v0[19];
    v16 = v0[20];
    v17 = v0[16];
    v3(v11, 1, 1, v0[18]);
    (*(v12 + 8))(v11, v14);
    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError();
    v18 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    *v13 = v18;
    swift_storeEnumTagMultiPayload();
    v17(v13);
    (*(v16 + 8))(v13, v15);
  }

  v19 = v0[1];

  return v19();
}

{
  v1 = v0[28];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v5 = v0[16];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  v5(v2);

  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of UTType?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of UTType?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of UTType?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of UTType?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void closure #2 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:)(uint64_t a1, int a2, void *a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v71 = a6;
  v72 = a7;
  v75 = a5;
  v76 = a4;
  v69 = a2;
  v80 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v70 = a8;
  v12 = type metadata accessor for Result();
  v73 = *(v12 - 8);
  v74 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v63 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v63 - v19;
  v21 = type metadata accessor for URL();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v63 - v25;
  v28 = v27;
  outlined init with copy of UTType?(a1, v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v28 + 48))(v20, 1, v21) != 1)
  {
    v66 = v15;
    (*(v28 + 32))(v26, v20, v21);
    v31 = v28;
    v32 = *(v28 + 16);
    v68 = v26;
    v65 = v28 + 16;
    v64 = v32;
    v32(v24, v26, v21);
    type metadata accessor for FileOperator(0);
    v33 = swift_allocObject();
    FileOperator.init(url:)(v24);
    v79 = 0;
    v34 = OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_coordinator;
    v35 = [*(v33 + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_coordinator) retainAccess];
    v36 = OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_token;
    *(v33 + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_token) = v35;
    v37 = swift_unknownObjectRelease();
    v67 = &v63;
    MEMORY[0x28223BE20](v37);
    *(&v63 - 10) = v70;
    *(&v63 - 9) = a9;
    *(&v63 - 8) = &v79;
    *(&v63 - 56) = v69 & 1;
    v38 = v72;
    *(&v63 - 6) = v71;
    *(&v63 - 5) = v38;
    v39 = v75;
    v40 = v76;
    *(&v63 - 4) = v33;
    *(&v63 - 3) = v40;
    *(&v63 - 2) = v39;
    v78 = 0;
    v41 = *(v33 + v34);
    URL._bridgeToObjectiveC()(OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_url);
    v43 = v42;
    v44 = swift_allocObject();
    *(v44 + 16) = partial apply for closure #1 in closure #2 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:);
    *(v44 + 24) = &v63 - 12;
    aBlock[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed URL) -> ();
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ();
    aBlock[3] = &block_descriptor_70;
    v45 = _Block_copy(aBlock);

    [v41 coordinateReadingItemAtURL:v43 options:0 error:&v78 byAccessor:v45];

    _Block_release(v45);
    LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

    if (v45)
    {
      __break(1u);
    }

    v46 = v78;
    if (v79)
    {
      v47 = *(v28 + 8);
      v48 = v78;
      v47(v68, v21);

      return;
    }

    v49 = *(v33 + v36);
    v50 = v68;
    if (v49)
    {
      v51 = *(v33 + v34);
      v52 = v78;
      [v51 releaseAccess_];
      v53 = v66;
      if (v46)
      {
LABEL_9:
        *v53 = v46;
        v54 = v74;
        swift_storeEnumTagMultiPayload();
        v55 = v46;
        v76(v53);

        (*(v73 + 8))(v53, v54);
        (*(v31 + 8))(v50, v21);

        return;
      }
    }

    else
    {
      v58 = v78;
      v53 = v66;
      if (v46)
      {
        goto LABEL_9;
      }
    }

    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError();
    v59 = v53;
    v60 = swift_allocError();
    v64(v61, v50, v21);
    swift_storeEnumTagMultiPayload();
    *v59 = v60;
    v62 = v74;
    swift_storeEnumTagMultiPayload();
    v76(v59);

    (*(v73 + 8))(v59, v62);
    (*(v31 + 8))(v50, v21);
    return;
  }

  v29 = v76;
  outlined destroy of UTType?(v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (a3)
  {
    v30 = a3;
  }

  else
  {
    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError();
    v30 = swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  *v17 = v30;
  v56 = v74;
  swift_storeEnumTagMultiPayload();
  v57 = a3;
  v29(v17);
  (*(v73 + 8))(v17, v56);
}

uint64_t closure #1 in closure #2 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:)(uint64_t a1, _BYTE *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v43 = a7;
  v44 = a8;
  v41 = a5;
  v42 = a6;
  v37 = a3;
  v39 = a10;
  v40 = a4;
  v38 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36[-v13];
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v36[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for ReceivedTransferredFile(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v36[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v25 = &v36[-v24];
  *a2 = 1;
  (*(v16 + 16))(v18, a1, v15);
  ReceivedTransferredFile.init(file:isOriginalFile:)(v18, v37, v25);
  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  outlined init with copy of ResolvedTransferRepresentation(v25, v23, type metadata accessor for ReceivedTransferredFile);
  v27 = (*(v20 + 80) + 64) & ~*(v20 + 80);
  v28 = (v21 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v30 = v39;
  v29[4] = v38;
  v29[5] = v30;
  v31 = v41;
  v29[6] = v40;
  v29[7] = v31;
  _s16CoreTransferable30ResolvedTransferRepresentationVWObTm_0(v23, v29 + v27, type metadata accessor for ReceivedTransferredFile);
  v32 = v43;
  *(v29 + v28) = v42;
  v33 = (v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8));
  v34 = v44;
  *v33 = v32;
  v33[1] = v34;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in closure #1 in closure #2 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:), v29);

  return _s16CoreTransferable30ResolvedTransferRepresentationVWOhTm_0(v25, type metadata accessor for ReceivedTransferredFile);
}

uint64_t closure #1 in closure #1 in closure #2 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = v13;
  v8[18] = v14;
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v9 = type metadata accessor for Result();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  v10 = type metadata accessor for Optional();
  v8[22] = v10;
  v8[23] = *(v10 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = *(v14 - 8);
  v8[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #2 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #2 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:)()
{
  v1 = v0[14];
  v2 = v0[12];
  v0[10] = type metadata accessor for ReceivedTransferredFile(0);
  v0[11] = &protocol witness table for ReceivedTransferredFile;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  outlined init with copy of ResolvedTransferRepresentation(v1, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in closure #2 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:);

  return v6(v0 + 2, v0 + 7);
}

{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in closure #2 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v3 = closure #1 in closure #1 in closure #2 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v5 = v0[25];
    v4 = v0[26];
    v6 = v0[24];
    v7 = v0[18];
    v8 = v0[15];
    v3(v6, 0, 1, v7);
    (*(v5 + 32))(v4, v6, v7);
    if (*(v8 + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_token))
    {
      [*(v0[15] + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_coordinator) releaseAccess_];
    }

    v10 = v0[25];
    v9 = v0[26];
    v12 = v0[20];
    v11 = v0[21];
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[16];
    (*(v10 + 16))(v11, v9, v14);
    swift_storeEnumTagMultiPayload();
    v15(v11);
    (*(v12 + 8))(v11, v13);
    (*(v10 + 8))(v9, v14);
  }

  else
  {
    v17 = v0[23];
    v16 = v0[24];
    v18 = v0[22];
    v19 = v0[15];
    v3(v16, 1, 1, v0[18]);
    (*(v17 + 8))(v16, v18);
    if (*(v19 + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_token))
    {
      [*(v0[15] + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_coordinator) releaseAccess_];
    }

    v21 = v0[20];
    v20 = v0[21];
    v22 = v0[19];
    v23 = v0[16];
    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError();
    v24 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    *v20 = v24;
    swift_storeEnumTagMultiPayload();
    v23(v20);
    (*(v21 + 8))(v20, v22);
  }

  v25 = v0[1];

  return v25();
}

{
  v1 = v0[15];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  if (*(v1 + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_token))
  {
    [*(v0[15] + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_coordinator) releaseAccess_];
  }

  v2 = v0[28];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = v0[16];
  *v3 = v2;
  swift_storeEnumTagMultiPayload();
  v7 = v2;
  v6(v3);

  (*(v4 + 8))(v3, v5);

  v8 = v0[1];

  return v8();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = a4;
  v11(v10, a3, a4);

  return outlined destroy of UTType?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t closure #3 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:)(void **a1, void *a2, void (*a3)(uint64_t *), void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v51 = a8;
  v52 = a6;
  v50 = a5;
  v54 = a3;
  v55 = a4;
  v46 = a2;
  v53 = a1;
  v57[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v49 = a7;
  v9 = type metadata accessor for Result();
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = (&v46 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v46 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v46 - v26;
  outlined init with copy of UTType?(v53, v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v28 = v54;
    outlined destroy of UTType?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v29 = v46;
    if (v46)
    {
      v30 = v46;
    }

    else
    {
      type metadata accessor for TransferableError(0);
      lazy protocol witness table accessor for type TransferableError and conformance TransferableError();
      v30 = swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    *v11 = v30;
    v44 = v48;
    swift_storeEnumTagMultiPayload();
    v45 = v29;
    v28(v11);
    return (*(v47 + 8))(v11, v44);
  }

  else
  {
    (*(v19 + 32))(v27, v17, v18);
    (*(v19 + 56))(v15, 1, 1, v18);
    copyFile(from:to:)(v27, v15, v25);
    outlined destroy of UTType?(v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v19 + 16))(v22, v25, v18);
    type metadata accessor for FileOperator(0);
    v31 = swift_allocObject();
    v32 = FileOperator.init(url:)(v22);
    v53 = &v46;
    MEMORY[0x28223BE20](v32);
    v33 = v50;
    v34 = v51;
    *(&v46 - 8) = v49;
    *(&v46 - 7) = v34;
    *(&v46 - 6) = v31;
    *(&v46 - 5) = v33;
    v36 = v54;
    v35 = v55;
    *(&v46 - 4) = v52;
    *(&v46 - 3) = v36;
    *(&v46 - 2) = v35;
    v57[0] = 0;
    v37 = *(v31 + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_coordinator);
    URL._bridgeToObjectiveC()(OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_url);
    v39 = v38;
    v40 = swift_allocObject();
    *(v40 + 16) = partial apply for closure #1 in closure #3 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:);
    *(v40 + 24) = &v46 - 10;
    aBlock[4] = thunk for @callee_guaranteed (@in_guaranteed URL) -> ()partial apply;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ();
    aBlock[3] = &block_descriptor_82;
    v41 = _Block_copy(aBlock);

    [v37 coordinateReadingItemAtURL:v39 options:0 error:v57 byAccessor:v41];

    _Block_release(v41);
    v42 = *(v19 + 8);
    v42(v25, v18);
    v42(v27, v18);
    LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

    if (v39)
    {
      __break(1u);
    }
  }

  return result;
}

void copyFile(from:to:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v67 = a3;
  v68 = a2;
  v66 = a1;
  v71 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for UUID();
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  v62 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v61 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v61 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v61 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v61 - v19;
  v65 = [objc_opt_self() defaultManager];
  outlined init with copy of UTType?(v68, v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v68 = v13;
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) == 1)
  {
    backupDirectory()();
    v22 = v12;
    if (v21(v11, 1, v12) != 1)
    {
      outlined destroy of UTType?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else
  {
    v22 = v12;
    (*(v68 + 32))(v20, v11, v12);
  }

  v69 = URL.lastPathComponent.getter();
  v70 = v23;
  (*(v6 + 104))(v8, *MEMORY[0x277CC91D8], v5);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v6 + 8))(v8, v5);

  v24 = URL.path.getter();
  v25 = MEMORY[0x20F32D490](v24);

  v26 = v65;
  v27 = [v65 fileExistsAtPath_];

  v29 = v22;
  if (v27)
  {
    URL.deletingPathExtension()();
    v30 = URL.lastPathComponent.getter();
    v32 = v31;
    v33 = *(v68 + 8);
    v33(v18, v22);
    v69 = v30;
    v70 = v32;
    MEMORY[0x20F32D540](45, 0xE100000000000000);
    v34 = v62;
    UUID.init()();
    v35 = UUID.uuidString.getter();
    v37 = v36;
    (*(v63 + 8))(v34, v64);
    MEMORY[0x20F32D540](v35, v37);

    v38 = v26;
    v39 = v29;
    v40 = v61;
    URL.appendingPathComponent(_:)();

    URL.pathExtension.getter();
    URL.appendingPathExtension(_:)();

    v41 = v40;
    v29 = v39;
    v26 = v38;
    v33(v41, v29);
    v33(v67, v29);
    (*(v68 + 32))(v67, v18, v29);
  }

  v42 = v20;
  URL._bridgeToObjectiveC()(v28);
  v44 = v43;
  URL._bridgeToObjectiveC()(v45);
  v47 = v46;
  v69 = 0;
  v48 = [v26 copyItemAtURL:v44 toURL:v46 error:&v69];

  if (v48)
  {
    v49 = *(v68 + 8);
    v50 = v69;
    v49(v42, v29);
  }

  else
  {
    v51 = v69;
    v52 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, logger);
    v54 = v52;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      v59 = v52;
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 4) = v60;
      *v58 = v60;
      _os_log_impl(&dword_20E3BF000, v55, v56, "Error copying file: %@", v57, 0xCu);
      outlined destroy of UTType?(v58, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F32E080](v58, -1, -1);
      MEMORY[0x20F32E080](v57, -1, -1);
    }

    else
    {
    }

    (*(v68 + 8))(v42, v29);
  }
}

uint64_t closure #1 in closure #3 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a7;
  v37 = a8;
  v38 = a5;
  v39 = a6;
  v34 = a3;
  v35 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ReceivedTransferredFile(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v34 - v22;
  (*(v14 + 16))(v16, a1, v13);
  ReceivedTransferredFile.init(file:isOriginalFile:)(v16, 0, v23);
  v24 = [*(a2 + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_coordinator) retainAccess];
  *(a2 + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_token) = v24;
  swift_unknownObjectRelease();
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
  outlined init with copy of ResolvedTransferRepresentation(v23, v21, type metadata accessor for ReceivedTransferredFile);
  v26 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v27 = (v19 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v29 = v37;
  v28[4] = v36;
  v28[5] = v29;
  v30 = v35;
  v28[6] = v34;
  v28[7] = v30;
  _s16CoreTransferable30ResolvedTransferRepresentationVWObTm_0(v21, v28 + v26, type metadata accessor for ReceivedTransferredFile);
  *(v28 + v27) = a2;
  v31 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
  v32 = v39;
  *v31 = v38;
  v31[1] = v32;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in closure #3 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:), v28);

  return _s16CoreTransferable30ResolvedTransferRepresentationVWOhTm_0(v23, type metadata accessor for ReceivedTransferredFile);
}

uint64_t closure #1 in closure #1 in closure #3 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = v13;
  v8[18] = v14;
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v9 = type metadata accessor for Result();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  v10 = type metadata accessor for Optional();
  v8[22] = v10;
  v8[23] = *(v10 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = *(v14 - 8);
  v8[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #3 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #3 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:)()
{
  v1 = v0[14];
  v2 = v0[12];
  v0[10] = type metadata accessor for ReceivedTransferredFile(0);
  v0[11] = &protocol witness table for ReceivedTransferredFile;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  outlined init with copy of ResolvedTransferRepresentation(v1, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in closure #3 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:);

  return v6(v0 + 2, v0 + 7);
}

{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in closure #3 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v3 = closure #1 in closure #1 in closure #3 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v5 = v0[25];
    v4 = v0[26];
    v6 = v0[24];
    v7 = v0[18];
    v8 = v0[15];
    v3(v6, 0, 1, v7);
    (*(v5 + 32))(v4, v6, v7);
    if (*(v8 + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_token))
    {
      [*(v0[15] + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_coordinator) releaseAccess_];
    }

    v10 = v0[25];
    v9 = v0[26];
    v12 = v0[20];
    v11 = v0[21];
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[16];
    NSFileCoordinator.scheduleDeletion(url:queue:)(v0[15] + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_url, *(v0[15] + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_operationQueue));
    (*(v10 + 16))(v11, v9, v14);
    swift_storeEnumTagMultiPayload();
    v15(v11);
    (*(v12 + 8))(v11, v13);
    (*(v10 + 8))(v9, v14);
  }

  else
  {
    v17 = v0[23];
    v16 = v0[24];
    v18 = v0[22];
    v19 = v0[15];
    v3(v16, 1, 1, v0[18]);
    (*(v17 + 8))(v16, v18);
    if (*(v19 + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_token))
    {
      [*(v0[15] + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_coordinator) releaseAccess_];
    }

    v21 = v0[20];
    v20 = v0[21];
    v22 = v0[19];
    v23 = v0[16];
    NSFileCoordinator.scheduleDeletion(url:queue:)(v0[15] + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_url, *(v0[15] + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_operationQueue));
    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError();
    v24 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    *v20 = v24;
    swift_storeEnumTagMultiPayload();
    v23(v20);
    (*(v21 + 8))(v20, v22);
  }

  v25 = v0[1];

  return v25();
}

{
  v1 = v0[15];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  if (*(v1 + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_token))
  {
    [*(v0[15] + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_coordinator) releaseAccess_];
  }

  v2 = v0[28];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = v0[16];
  NSFileCoordinator.scheduleDeletion(url:queue:)(v0[15] + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_url, *(v0[15] + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_operationQueue));
  *v3 = v2;
  swift_storeEnumTagMultiPayload();
  v7 = v2;
  v6(v3);

  (*(v4 + 8))(v3, v5);

  v8 = v0[1];

  return v8();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return outlined destroy of UTType?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t static NSItemProvider.Loader.loadData<A>(exporting:transferable:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  return MEMORY[0x2822009F8](static NSItemProvider.Loader.loadData<A>(exporting:transferable:completionHandler:), 0, 0);
}

uint64_t static NSItemProvider.Loader.loadData<A>(exporting:transferable:completionHandler:)()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 168);
    v7 = *(v0 + 192);
    *(v0 + 80) = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v2);

    v8 = (v1 + *v1);
    v4 = swift_task_alloc();
    *(v0 + 208) = v4;
    *v4 = v0;
    v4[1] = static NSItemProvider.Loader.loadData<A>(exporting:transferable:completionHandler:);

    return v8(v0 + 16, v0 + 56);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = static NSItemProvider.Loader.loadData<A>(exporting:transferable:completionHandler:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v3 = static NSItemProvider.Loader.loadData<A>(exporting:transferable:completionHandler:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  outlined init with copy of Transferable((v0 + 2), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B8Currency_pMd, &_s16CoreTransferable0B8Currency_pMR);
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = v0[17];
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v0[18];
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  v1(v5, v6, 0);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v3, v2);
  outlined consume of Data?(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v7 = v0[1];

  return v7();
}

{
  v1 = v0[27];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v5 = v1;
  v2(0, 0xF000000000000000, v1);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v4, v3);

  v6 = v0[1];

  return v6();
}

uint64_t static NSItemProvider.Loader.loadFile<A>(exporting:transferable:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[29] = a6;
  v7[30] = a7;
  v7[27] = a4;
  v7[28] = a5;
  v7[25] = a2;
  v7[26] = a3;
  v7[24] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v7[33] = v8;
  v7[34] = *(v8 - 8);
  v7[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
  v7[36] = swift_task_alloc();
  v9 = type metadata accessor for SentTransferredFile(0);
  v7[37] = v9;
  v7[38] = *(v9 - 8);
  v7[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](static NSItemProvider.Loader.loadFile<A>(exporting:transferable:completionHandler:), 0, 0);
}

uint64_t static NSItemProvider.Loader.loadFile<A>(exporting:transferable:completionHandler:)()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    v2 = *(v0 + 208);
    v7 = *(v0 + 232);
    *(v0 + 128) = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 104));
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v2);

    v8 = (v1 + *v1);
    v4 = swift_task_alloc();
    *(v0 + 320) = v4;
    *v4 = v0;
    v4[1] = static NSItemProvider.Loader.loadFile<A>(exporting:transferable:completionHandler:);

    return v8(v0 + 64, v0 + 104);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = static NSItemProvider.Loader.loadFile<A>(exporting:transferable:completionHandler:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 104));
    v3 = static NSItemProvider.Loader.loadFile<A>(exporting:transferable:completionHandler:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 304);
  outlined init with copy of Transferable(v0 + 64, v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B8Currency_pMd, &_s16CoreTransferable0B8Currency_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (!v2)
  {
    v24 = *(v0 + 288);
    v25 = *(v0 + 264);
    v26 = *(v0 + 272);
    v27 = *(v0 + 248);
    v28 = *(v0 + 216);
    v30 = *(v0 + 192);
    v29 = *(v0 + 200);
    v3(v24, 1, 1, *(v0 + 296));
    outlined destroy of UTType?(v24, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
    (*(v26 + 56))(v27, 1, 1, v25);
    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError();
    v31 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v28(v27, 0, v31);
    outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v30, v29);

    outlined destroy of UTType?(v27, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));
    goto LABEL_10;
  }

  v4 = *(v0 + 312);
  v6 = *(v0 + 288);
  v5 = *(v0 + 296);
  v7 = *(v0 + 272);
  v3(v6, 0, 1, v5);
  _s16CoreTransferable30ResolvedTransferRepresentationVWObTm_0(v6, v4, type metadata accessor for SentTransferredFile);
  v8 = *(v4 + *(v5 + 24));
  v9 = *(v7 + 16);
  v10 = *(v0 + 312);
  if (v8 != 1)
  {
    v32 = *(v0 + 264);
    v33 = *(v0 + 272);
    v34 = *(v0 + 248);
    v35 = *(v0 + 216);
    v37 = *(v0 + 192);
    v36 = *(v0 + 200);
    v9(v34, *(v0 + 312), v32);
    (*(v33 + 56))(v34, 0, 1, v32);
    v35(v34, 0, 0);
    outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v37, v36);
    outlined destroy of UTType?(v34, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    _s16CoreTransferable30ResolvedTransferRepresentationVWOhTm_0(v10, type metadata accessor for SentTransferredFile);
    goto LABEL_9;
  }

  v11 = *(v0 + 280);
  v45 = *(v0 + 216);
  v9(v11, v10, *(v0 + 264));
  type metadata accessor for FileOperator(0);
  v12 = swift_allocObject();
  FileOperator.init(url:)(v11);
  *(v0 + 336) = 0;
  v13 = swift_task_alloc();
  *(v13 + 16) = v0 + 336;
  *(v13 + 24) = v45;
  *(v13 + 40) = 1;
  *(v13 + 48) = v12;
  *(v0 + 184) = 0;
  v14 = *(v12 + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_coordinator);
  v46 = OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_url;
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_url);
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in static NSItemProvider.Loader.loadFile<A>(exporting:transferable:completionHandler:);
  *(v17 + 24) = v13;
  *(v0 + 48) = thunk for @callee_guaranteed (@in_guaranteed URL) -> ()partial apply;
  *(v0 + 56) = v17;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ();
  *(v0 + 40) = &block_descriptor_112;
  v18 = _Block_copy((v0 + 16));

  [v14 coordinateReadingItemAtURL:v16 options:0 error:v0 + 184 byAccessor:v18];

  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  v19 = *(v0 + 184);

  v20 = *(v0 + 312);
  if (*(v0 + 336))
  {
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v23 = v19;
    outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v22, v21);

    _s16CoreTransferable30ResolvedTransferRepresentationVWOhTm_0(v20, type metadata accessor for SentTransferredFile);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));
  }

  else
  {
    v40 = *(v0 + 256);
    v41 = *(v0 + 216);
    v42 = *(v0 + 192);
    v44 = *(v0 + 200);
    (*(*(v0 + 272) + 56))(v40, 1, 1, *(v0 + 264));
    v43 = v19;
    v41(v40, 1, v19);

    outlined destroy of UTType?(v40, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    NSFileCoordinator.scheduleDeletion(url:queue:)(v12 + v46, *(v12 + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_operationQueue));
    outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v42, v44);
    _s16CoreTransferable30ResolvedTransferRepresentationVWOhTm_0(v20, type metadata accessor for SentTransferredFile);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));
  }

LABEL_10:

  v38 = *(v0 + 8);

  return v38();
}

{
  v1 = v0[41];
  v2 = v0[33];
  v3 = v0[34];
  v4 = v0[31];
  v5 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  (*(v3 + 56))(v4, 1, 1, v2);
  v8 = v1;
  v5(v4, 0, v1);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v7, v6);

  outlined destroy of UTType?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v9 = v0[1];

  return v9();
}