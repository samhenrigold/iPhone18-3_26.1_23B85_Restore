uint64_t specialized static _Int128.&<< infix(_:_:)(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x7F) != 0)
  {
    v3 = a1 << a3;
  }

  else
  {
    v3 = a1;
  }

  if ((a3 & 0x7Fu) <= 0x3FuLL)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

unint64_t specialized static _Int128.&>> infix(_:_:)(unint64_t a1, uint64_t a2, char a3)
{
  v3 = (a1 >> a3) | (a2 << -a3);
  if ((a3 & 0x7F) == 0)
  {
    v3 = a1;
  }

  if ((a3 & 0x7Fu) <= 0x3FuLL)
  {
    return v3;
  }

  else
  {
    return a2 >> a3;
  }
}

uint64_t specialized _Int128.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  result = _Int128.init<A>(exactly:)(v6, a2, a3);
  if (v9)
  {
    __break(1u);
  }

  return result;
}

unint64_t *specialized static _UInt128.*= infix(_:_:)(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *result;
  v5 = result[1];
  v6 = !is_mul_ok(v5, *a2);
  v7 = v5 * *a2;
  v8 = !is_mul_ok(*result, v3);
  v9 = __CFADD__(v7, *result * v3);
  v10 = v7 + *result * v3;
  v11 = v9;
  v12 = (v4 * v2) >> 64;
  v9 = __CFADD__(v10, v12);
  v13 = v10 + v12;
  v14 = v9;
  if (v3)
  {
    v15 = v5 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 || v6 || v8 || (v11 & 1) != 0 || (v14 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v4 * v2;
    result[1] = v13;
  }

  return result;
}

uint64_t *specialized static _UInt128.&<<= infix(_:_:)(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = *a2 & 0x7FLL;
  v4 = (result[1] << *a2) | (*result >> -*a2);
  if (v3)
  {
    v2 = *result << *a2;
  }

  else
  {
    v4 = result[1];
  }

  if (v3 > 0x3F)
  {
    v4 = *result << *a2;
    v2 = 0;
  }

  *result = v2;
  result[1] = v4;
  return result;
}

unint64_t *specialized static _UInt128.&>>= infix(_:_:)(unint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = *a2 & 0x7FLL;
  v4 = v2 >> *a2;
  v5 = (v2 << -*a2) | (*result >> *a2);
  if (v3)
  {
    v2 >>= *a2;
  }

  else
  {
    v5 = *result;
  }

  if (v3 <= 0x3F)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  if (v3 > 0x3F)
  {
    v5 = v4;
  }

  *result = v5;
  result[1] = v6;
  return result;
}

unint64_t *specialized static _UInt128.%= infix(_:_:)(unint64_t *result, unint64_t *a2)
{
  if (*a2 == 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    result = specialized _wideDivide22<A>(_:by:)(&v6, &v5, &v4, result[1], *result, a2[1], *a2);
    v3 = v5;
    *v2 = v4;
    v2[1] = v3;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _Int128 and conformance _Int128()
{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int64 and conformance Int64()
{
  result = lazy protocol witness table cache variable for type Int64 and conformance Int64;
  if (!lazy protocol witness table cache variable for type Int64 and conformance Int64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int64 and conformance Int64);
  }

  return result;
}

uint64_t *specialized static _Int128.&<<= infix(_:_:)(uint64_t *result, char a2)
{
  v2 = *result;
  v3 = result[1];
  if ((a2 & 0x7F) != 0)
  {
    v3 = (v3 << a2) | (*result >> -a2);
    v2 = *result << a2;
  }

  if ((a2 & 0x7Fu) > 0x3FuLL)
  {
    v3 = *result << a2;
    v2 = 0;
  }

  *result = v2;
  result[1] = v3;
  return result;
}

unint64_t *specialized static _Int128.&>>= infix(_:_:)(unint64_t *result, char a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = v3 >> 63;
  v5 = v3 >> a2;
  v6 = (v3 << -a2) | (*result >> a2);
  if ((a2 & 0x7F) != 0)
  {
    v3 >>= a2;
    v2 = v6;
  }

  if ((a2 & 0x7Fu) > 0x3FuLL)
  {
    v3 = v4;
    v2 = v5;
  }

  *result = v2;
  result[1] = v3;
  return result;
}

unint64_t *specialized static _Int128./= infix(_:_:)(unint64_t *result, int64_t a2, uint64_t a3)
{
  v3 = result;
  v5 = *result;
  v4 = result[1];
  if (a3 == -1)
  {
    if (a2 == -1 && v4 == 0x8000000000000000 && v5 == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = _Int128.quotientAndRemainder(dividingBy:)(a2, a3, v5, v4);
    *v3 = result;
    v3[1] = v7;
    return result;
  }

  if (a3 || a2)
  {
    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t *specialized static _Int128.%= infix(_:_:)(unint64_t *result, int64_t a2, uint64_t a3)
{
  v3 = result;
  v5 = *result;
  v4 = result[1];
  if (a3 == -1)
  {
    if (a2 == -1 && v4 == 0x8000000000000000 && v5 == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = _Int128.quotientAndRemainder(dividingBy:)(a2, a3, v5, v4);
    *v3 = v7;
    v3[1] = v8;
    return result;
  }

  if (a3 || a2)
  {
    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type _UInt128.Words and conformance _UInt128.Words()
{
  result = lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words;
  if (!lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words;
  if (!lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words;
  if (!lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words;
  if (!lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<_UInt128.Words> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy4VDAF8_UInt128V5WordsVGMd, &_ss5SliceVy4VDAF8_UInt128V5WordsVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _Int128.Words and conformance _Int128.Words()
{
  result = lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words;
  if (!lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words;
  if (!lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words;
  if (!lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words;
  if (!lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<_Int128.Words> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy4VDAF7_Int128V5WordsVGMd, &_ss5SliceVy4VDAF7_Int128V5WordsVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Collection.prefix(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = specialized RandomAccessCollection<>.distance(from:to:)(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = specialized RandomAccessCollection<>.index(_:offsetBy:)(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    result = outlined consume of Data._Representation(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t specialized Collection.prefix(_:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = a3 - a2;
    }

    else
    {
      v4 = 0;
    }

    result = specialized RandomAccessCollection<>.distance(from:to:)(0, v4, a2, a3);
    if (v3 && result < v3)
    {
      v3 = v4;
      if ((v4 & 0x8000000000000000) == 0)
      {
        return 0;
      }

      __break(1u);
    }

    if (v4 >= v3)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized Collection.prefix(_:)(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result || (v6 = a5 >> 1, (a5 >> 1) - a4 >= result))
  {
    v6 = a4 + result;
    if (__OFADD__(a4, result))
    {
      goto LABEL_17;
    }
  }

  if (v6 < a4)
  {
    goto LABEL_13;
  }

  if (v5 < a4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      return a2;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result)
  {
    v6 = a5 >> 1;
    if ((a5 >> 1) - a4 < result)
    {
      goto LABEL_7;
    }
  }

  v6 = a4 + result;
  if (!__OFADD__(a4, result))
  {
    if (v5 < v6)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_7:
    if (v6 >= a4)
    {
      if (v5 >= a4)
      {
        return a2;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t static PINEPrepareState.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = *(a1 + 24);
  v11 = a2[1];
  v12 = a2[2];
  v13 = *(a2 + 24);
  v15 = *a2;
  v16 = v7;

  LOBYTE(a5) = static OutputShare.== infix(_:_:)(&v16, &v15, a3, a5);

  if (a5 & 1) != 0 && (specialized static Seed.== infix(_:_:)(v8, v11))
  {
    return specialized static Seed.== infix(_:_:)(v9, v12) & (v10 == v13);
  }

  else
  {
    return 0;
  }
}

void *PINEPrepareState.init(outputShare:wraparoundJointRandSeed:verificationJointRandSeed:aggregatorID:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t PINEPrepareState.DecodableParameter.encodedLength.getter(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  result = (*(*(a1 + 32) + 64))(*(a1 + 16));
  v5 = v3 * result;
  if ((v3 * result) >> 64 != (v3 * result) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = v5 + v2;
  if (__OFADD__(v5, v2))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t PINEPrepareState.DecodableParameter.init(aggregatorID:outputShareCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, void *a5@<X8>)
{
  result = (*(a4 + 8))(a3, a4);
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    *a5 = a1;
    a5[1] = 2 * result;
    a5[2] = a2;
  }

  return result;
}

uint64_t PINEPrepareState.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v111 = a6;
  v9 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v10 + 24) == 1)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v18 = 0;
    v18[1] = 0;
    swift_willThrow();
    return (*(v9 + 8))(a1, a5);
  }

  v109 = v9;
  v110 = a5;
  v102 = v15;
  v103 = v6;
  v20 = v13;
  v21 = *v10;
  v22 = *(v10 + 8);
  v23 = v11;
  v24 = *(v10 + 16);
  v107 = *(*(v14 + 8) + 8);
  v25 = v12;
  v26 = dispatch thunk of Collection.count.getter();
  v108 = a1;
  v27 = v26;
  v104 = v22;
  v105 = v21;
  v116 = v21;
  v117 = v22;
  v106 = v24;
  v118 = v24;
  v28 = v23;
  v112 = v23;
  v113 = v25;
  v114 = v111;
  v115 = v20;
  v29 = type metadata accessor for PINEPrepareState.DecodableParameter(0, &v112);
  if (v27 != PINEPrepareState.DecodableParameter.encodedLength.getter(v29))
  {
    v112 = 0;
    v113 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    v56 = v110;
    v112 = v28;
    v113 = v25;
    v114 = v111;
    v115 = v20;
    type metadata accessor for PINEPrepareState(0, &v112);
    v57 = _typeName(_:qualified:)();
    v59 = v58;

    v116 = v57;
    v117 = v59;
    MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
    v112 = v105;
    v113 = v104;
    v114 = v106;
    v119 = PINEPrepareState.DecodableParameter.encodedLength.getter(v29);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v60);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v61 = v108;
    v112 = dispatch thunk of Collection.count.getter();
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v62);

    v63 = v116;
    v64 = v117;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v65 = v63;
    v65[1] = v64;
    swift_willThrow();
    return (*(v109 + 8))(v61, v56);
  }

  v104 = v25;
  (*(v109 + 16))(v17, v108, v110);
  v30 = ArraySlice.init<A>(_:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = (*(v111 + 64))(v28);
  v38 = v106 * v37;
  if ((v106 * v37) >> 64 != (v106 * v37) >> 63)
  {
    __break(1u);
    goto LABEL_32;
  }

  v107 = v20;
  v39 = specialized Collection.prefix(_:)(v38, v30, v32, v34, v36);
  v40 = v36;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = specialized Collection.dropFirst(_:)(v38, v30, v32, v34, v40);
  v49 = v48;
  v51 = v50;
  v106 = v52;
  v112 = v39;
  v113 = v42;
  v114 = v44;
  v115 = v46;
  swift_unknownObjectRetain();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, "xq");
  v54 = lazy protocol witness table accessor for type ArraySlice<UInt8> and conformance ArraySlice<A>();
  v55 = v103;
  OutputShare.init<A>(from:parameter:)(&v112, v28, v53, v111, v54, &v116);
  if (v55)
  {
    (*(v109 + 8))(v108, v110);
    return swift_unknownObjectRelease();
  }

  v66 = *(v107 + 8);
  v67 = v49;
  v100 = v116;
  v101 = v66;
  v68 = v66();
  v69 = v106;
  v38 = specialized Collection.prefix(_:)(v68, v47, v49, v51, v106);
  v99 = v70;
  v111 = v71;
  v28 = v72;
  v30 = specialized Collection.dropFirst(_:)(v68, v47, v67, v51, v69);
  v74 = v73;
  v106 = v75;
  v103 = v76;
  if (v28)
  {
    v98 = v73;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v79 = swift_dynamicCastClass();
    if (!v79)
    {
      swift_unknownObjectRelease();
      v79 = MEMORY[0x277D84F90];
    }

    v80 = *(v79 + 16);

    if (__OFSUB__(v28 >> 1, v111))
    {
      goto LABEL_34;
    }

    if (v80 != (v28 >> 1) - v111)
    {
      goto LABEL_36;
    }

    v28 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    v74 = v98;
    v78 = v101;
    if (v28)
    {
      goto LABEL_18;
    }

    v28 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v38, v99, v111, v28);
    v28 = v77;
    v78 = v101;
LABEL_17:
    swift_unknownObjectRelease();
LABEL_18:
    v81 = v78();
    v82 = v106;
    v83 = v103;
    v38 = specialized Collection.prefix(_:)(v81, v30, v74, v106, v103);
    v111 = v84;
    v86 = v85;
    v87 = v74;
    v89 = v88;
    specialized Collection.dropFirst(_:)(v81, v30, v87, v82, v83);
    if ((v89 & 1) == 0)
    {
      swift_unknownObjectRetain();
      v90 = v110;
LABEL_20:
      specialized _copyCollectionToContiguousArray<A>(_:)(v38, v111, v86, v89);
      v30 = v91;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      result = (*(v109 + 8))(v108, v90);
      v92 = v105;
      goto LABEL_28;
    }

    v107 = v28;
    v28 = type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v93 = swift_dynamicCastClass();
    if (!v93)
    {
      swift_unknownObjectRelease();
      v93 = MEMORY[0x277D84F90];
    }

    v94 = *(v93 + 16);

    if (__OFSUB__(v89 >> 1, v86))
    {
      goto LABEL_35;
    }

    if (v94 != (v89 >> 1) - v86)
    {
      swift_unknownObjectRelease_n();
      v90 = v110;
      v28 = v107;
      goto LABEL_20;
    }

    v30 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v95 = v110;
    if (!v30)
    {
      v96 = v110;
      swift_unknownObjectRelease();
      v95 = v96;
      v30 = MEMORY[0x277D84F90];
    }

    (*(v109 + 8))(v108, v95);
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    v92 = v105;
    v28 = v107;
LABEL_28:
    v97 = v102;
    if ((v92 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_unknownObjectRelease_n();
    v74 = v98;
  }

  if (v92 > 0xFF)
  {
    goto LABEL_33;
  }

  *v102 = v100;
  v97[1] = v28;
  v97[2] = v30;
  *(v97 + 24) = v92;
  return result;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<UInt8> and conformance ArraySlice<A>()
{
  result = lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVys5UInt8VGMd, "xq");
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance ArraySlice<A>);
  }

  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance PINEPrepareState<A, B>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *(a2 + 2);
  v6 = *(a2 + 24);
  v8 = *a2;
  v9 = v5;
  v10 = v6;
  return PINEPrepareState.init<A>(from:parameter:)(a1, &v8, a5[2], a5[3], a3, a5[4]);
}

uint64_t PINEPrepareState.encodedLength.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = type metadata accessor for OutputShare(0, *(a1 + 16), *(a1 + 32), a4);
  result = OutputShare.encodedLength.getter(v7);
  v9 = *(v5 + 16);
  v10 = __OFADD__(result, v9);
  v11 = result + v9;
  if (v10)
  {
    __break(1u);
    goto LABEL_5;
  }

  v12 = *(v6 + 16);
  result = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t PINEPrepareState.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 8);
  v9 = *(v4 + 16);
  v10 = type metadata accessor for OutputShare(0, *(a2 + 16), *(a2 + 32), a4);

  OutputShare.encode<A>(into:)(a1, v10, a3, a4);

  Seed.encode<A>(into:)(a1, v8, a3, a4);

  return Seed.encode<A>(into:)(a1, v9, a3, a4);
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySuGMd, &_ss23_ContiguousArrayStorageCySuGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 25;
  }

  v4[2] = 2;
  v4[3] = 2 * (v6 >> 3);
  v4[4] = a1;
  v4[5] = a2;
  return v4;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF7Field40VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field40VGMR);
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF7Field32VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field32VGMR);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF7Field64VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field64VGMR);
}

uint64_t type metadata instantiation function for PINEPrepareState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PINEPrepareState(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for PINEPrepareState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for PINEPrepareState.DecodableParameter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      v10 = MEMORY[0x277D84F90];
      if (v6 != a3)
      {
LABEL_7:
        memcpy(v10 + 4, (a2 + 8 * a3), 8 * v7);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v12 = v11 - 32;
      if (v11 < 32)
      {
        v12 = v11 - 25;
      }

      v10[2] = v7;
      v10[3] = 2 * (v12 >> 3);
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t VDAFEncodable.encodedData.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  v9[0] = specialized Data._Representation.init(capacity:)(v4);
  v9[1] = v5;
  v6 = *(a2 + 24);
  v7 = lazy protocol witness table accessor for type Data and conformance Data();
  v6(v9, MEMORY[0x277CC9318], v7, a1, a2);
  return v9[0];
}

char *VDAFEncodable.encodedBytes.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0, MEMORY[0x277D84F90]);
  v5 = *(a2 + 24);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v7 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277D83990]);
  v5(&v9, v6, v7, a1, a2);
  return v9;
}

uint64_t VDAFDecodable.init<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a1, a3);
  (*(*(AssociatedTypeWitness - 8) + 56))(v13, 1, 1, AssociatedTypeWitness);
  (*(a4 + 24))(v16, v13, a3, v18, a2, a4);
  return (*(v14 + 8))(a1, a3);
}

char *protocol witness for VDAFEncodable.encodedBytes.getter in conformance Seed()
{
  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*v0 + 16), 0, MEMORY[0x277D84F90]);

  specialized Array.append<A>(contentsOf:)(v1);
  return v3;
}

uint64_t *Array<A>.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v70 = a1;
  v71 = a2;
  v69 = a4;
  v6 = *(a4 - 8);
  v67 = a6;
  v68 = v6;
  MEMORY[0x28223BE20](a1);
  v63 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v8;
  v66 = v9;
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  v16 = swift_getTupleTypeMetadata3();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v57 - v18;
  v20 = *(v10 - 8);
  MEMORY[0x28223BE20](v17);
  v22 = &v57 - v21;
  (*(v13 + 16))(v15, v71, v12);
  if ((*(*(TupleTypeMetadata3 - 8) + 48))(v15, 1, TupleTypeMetadata3) == 1)
  {
    v23 = *(v13 + 8);
    (v23)(v15, v12);
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v24 = 0;
    v24[1] = 0;
    swift_willThrow();
    (v23)(v71, v12);
    (*(v68 + 8))(v70, v69);
    return v23;
  }

  v59 = v13;
  v60 = v12;
  v25 = *&v15[*(TupleTypeMetadata3 + 48)];
  v61 = *&v15[*(TupleTypeMetadata3 + 64)];
  v62 = v25;
  v26 = *(v16 + 48);
  v27 = *(v16 + 64);
  v58 = v20;
  v28 = *(v20 + 32);
  v28(v19, v15, v10);
  v29 = v61;
  *&v19[v26] = v62;
  *&v19[v27] = v29;
  v30 = *&v19[*(v16 + 48)];
  v31 = *&v19[*(v16 + 64)];
  v62 = v10;
  result = (v28)(v22, v19, v10);
  if ((v31 | v30) < 0)
  {
    __break(1u);
  }

  else if ((v30 * v31) >> 64 == (v30 * v31) >> 63)
  {
    v33 = v67;
    v34 = v69;
    v35 = v70;
    if (v30 * v31 == dispatch thunk of Collection.count.getter())
    {
      v36 = v35;
      v37 = v68;
      (*(v68 + 16))(v63, v36, v34);
      v74 = ArraySlice.init<A>(_:)();
      v75 = v38;
      v76 = v39;
      v77 = v40;
      v72 = 0;
      v73 = v30;
      MEMORY[0x28223BE20](v74);
      v23 = &v57 - 10;
      v41 = v66;
      *(&v57 - 8) = v66;
      *(&v57 - 7) = v34;
      *(&v57 - 6) = v64;
      *(&v57 - 5) = v33;
      *(&v57 - 4) = &v74;
      *(&v57 - 3) = v31;
      *(&v57 - 2) = v22;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v44 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
      v45 = v65;
      v46 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in Array<A>.init<A>(from:parameter:), (&v57 - 10), v42, v41, v43, v44, MEMORY[0x277D84950], &v78);
      if (!v45)
      {
        v72 = v46;
        type metadata accessor for Array();
        swift_getWitnessTable();
        v23 = Array.init<A>(_:)();
        (*(v59 + 8))(v71, v60);
        (*(v37 + 8))(v70, v34);
        swift_unknownObjectRelease();
        (*(v58 + 8))(v22, v62);
        return v23;
      }

      (*(v59 + 8))(v71, v60);
      (*(v37 + 8))(v70, v34);
      swift_unknownObjectRelease();
      v47 = *(v58 + 8);
      v48 = v22;
    }

    else
    {
      v74 = 0;
      v75 = 0xE000000000000000;
      _StringGuts.grow(_:)(36);
      type metadata accessor for Array();
      v49 = _typeName(_:qualified:)();
      v67 = v22;
      v51 = v50;

      v74 = v49;
      v75 = v51;
      MEMORY[0x2743B25F0](0xD000000000000012, 0x8000000270C524A0);
      v72 = v30;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v52);

      MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
      v72 = v31;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v53);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v72 = dispatch thunk of Collection.count.getter();
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v54);

      v23 = v74;
      v55 = v75;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v56 = v23;
      v56[1] = v55;
      swift_willThrow();
      (*(v59 + 8))(v71, v60);
      (*(v68 + 8))(v35, v34);
      v47 = *(v58 + 8);
      v48 = v67;
    }

    v47(v48, v62);
    return v23;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for VDAFEncodable.encodedBytes.getter in conformance Int32()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v8[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0, MEMORY[0x277D84F90]);
  v7 = v1;
  v2 = specialized Collection.prefix(_:)(4uLL, &v7, v8);
  specialized Array.append<A>(contentsOf:)(v2, v3, v4, v5);
  return v8[0];
}

uint64_t protocol witness for VDAFEncodable.encodedBytes.getter in conformance UInt64()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = *v0;
  v7[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8, 0, MEMORY[0x277D84F90]);
  v1 = specialized Collection.prefix(_:)(8uLL, &v6, v7);
  specialized Array.append<A>(contentsOf:)(v1, v2, v3, v4);
  return v7[0];
}

uint64_t protocol witness for VDAFEncodable.encodedBytes.getter in conformance _UInt128()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v7[1] = v0[1];
  v8[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 16, 0, MEMORY[0x277D84F90]);
  v7[0] = v1;
  v2 = specialized Collection.prefix(_:)(0x10uLL, v7, v8);
  specialized Array.append<A>(contentsOf:)(v2, v3, v4, v5);
  return v8[0];
}

uint64_t Collection<>.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v30 = a1;
  v31 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Optional();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - v13;
  v15 = *(a2 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v28 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  (*(v15 + 16))(v17, v6, a2);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = v20;
  v35 = v18;
  v29 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v22 = v27;
  v23 = *(v27 + 48);
  if (v23(v14, 1, AssociatedTypeWitness) != 1)
  {
    v24 = *(v22 + 32);
    do
    {
      v24(v10, v14, AssociatedTypeWitness);
      (*(v33 + 24))(v30, v31, v32, AssociatedTypeWitness);
      (*(v22 + 8))(v10, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v23(v14, 1, AssociatedTypeWitness) != 1);
  }

  return (*(v28 + 8))(v34, v35);
}

uint64_t closure #1 in Array<A>.init<A>(from:parameter:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>, void *a6)
{
  v28 = a4;
  v29 = a2;
  v30 = a3;
  v31 = a5;
  swift_getAssociatedTypeWitness();
  v27 = type metadata accessor for Optional();
  v7 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v24 - v8;
  v9 = specialized Collection.prefix(_:)();
  v24 = v10;
  v25 = v9;
  v12 = v11;
  v14 = v13;
  *a1 = specialized Collection.dropFirst(_:)();
  a1[1] = v15;
  a1[2] = v16;
  a1[3] = v17;
  v32[0] = v25;
  v32[1] = v12;
  v32[2] = v14;
  v32[3] = v24;
  v18 = v26;
  (*(v7 + 16))(v26, v29, v27);
  v19 = *(v28 + 24);
  swift_unknownObjectRetain();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, "xq");
  v21 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance ArraySlice<A>, &_ss10ArraySliceVys5UInt8VGMd, "xq", MEMORY[0x277D83FB8]);
  v22 = v32[5];
  result = v19(v32, v18, v20, v21);
  if (v22)
  {
    *a6 = v22;
  }

  return result;
}

uint64_t *protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance <A> [A]@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t **a7@<X8>)
{
  result = Array<A>.init<A>(from:parameter:)(a1, a2, *(a5 + 16), a3, *(a6 - 8), a4);
  if (!v7)
  {
    *a7 = result;
  }

  return result;
}

uint64_t Collection<>.encodedLength.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  Collection.first.getter();
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(a3 + 16))(AssociatedTypeWitness, a3);
    v6 = v9;
    v5 = AssociatedTypeWitness;
  }

  (*(v6 + 8))(v8, v5);
  v11 = dispatch thunk of Collection.count.getter();
  result = v10 * v11;
  if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for VDAFEncodable.encodedLength.getter in conformance <A> [A](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();

  return Collection<>.encodedLength.getter(a1, WitnessTable, v3);
}

uint64_t protocol witness for VDAFEncodable.encode<A>(into:) in conformance <A> [A](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  WitnessTable = swift_getWitnessTable();

  return Collection<>.encode<A>(into:)(a1, a4, a2, WitnessTable, a3, v9);
}

uint64_t protocol witness for VDAFEncodable.encodedLength.getter in conformance <A> ArraySlice<A>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();

  return Collection<>.encodedLength.getter(a1, WitnessTable, v3);
}

uint64_t protocol witness for VDAFEncodable.encode<A>(into:) in conformance <A> ArraySlice<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  WitnessTable = swift_getWitnessTable();

  return Collection<>.encode<A>(into:)(a1, a4, a2, WitnessTable, a3, v9);
}

uint64_t specialized FieldElement.encode<A>(into:)(uint64_t a1, unsigned int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2 + 4293918721u * (-1048577 * a2) >= 0xFFF0000100000000)
  {
    v2 = 0;
  }

  else
  {
    v2 = (a2 + 4293918721u * (-1048577 * a2)) >> 32;
  }

  v8 = v2;
  v3 = specialized Collection.prefix(_:)(4uLL, &v8, &v9);
  return specialized Array.append<A>(contentsOf:)(v3, v4, v5, v6);
}

char *protocol witness for VDAFEncodable.encodedBytes.getter in conformance Field32()
{
  v1 = *v0;
  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0, MEMORY[0x277D84F90]);
  specialized FieldElement.encode<A>(into:)(&v3, v1);
  return v3;
}

uint64_t protocol witness for VDAFEncodable.encodedBytes.getter in conformance Field40(uint64_t a1, uint64_t a2)
{

  return protocol witness for VDAFEncodable.encodedBytes.getter in conformance Field40(a1, a2, 5uLL, specialized FieldElement.integerValue.getter);
}

uint64_t protocol witness for VDAFEncodable.encodedBytes.getter in conformance Field64(uint64_t a1, uint64_t a2)
{

  return protocol witness for VDAFEncodable.encodedBytes.getter in conformance Field40(a1, a2, 8uLL, specialized FieldElement.integerValue.getter);
}

uint64_t protocol witness for VDAFEncodable.encodedBytes.getter in conformance Field40(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t))
{
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = *v4;
  v14[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a3, 0, MEMORY[0x277D84F90]);
  v13 = a4(v7);
  v8 = specialized Collection.prefix(_:)(a3, &v13, v14);
  specialized Array.append<A>(contentsOf:)(v8, v9, v10, v11);
  return v14[0];
}

char *protocol witness for VDAFEncodable.encodedBytes.getter in conformance Field128()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = v0[1];
  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 16, 0, MEMORY[0x277D84F90]);
  specialized FieldElement.integerValue.getter(v1, v2, &v9);
  v8 = v9;
  v3 = specialized Collection.prefix(_:)(0x10uLL, &v8, &v9);
  specialized Array.append<A>(contentsOf:)(v3, v4, v5, v6);
  return v10;
}

uint64_t specialized BitMasks.encode<A>(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  if (v3 != *(v2 + 16))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v4 = 2 * v3;
  if (__OFADD__(v3, v3))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v5 = __OFADD__(v4, 7);
  v6 = v4 + 7;
  if (v5)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  v7 = v6 + 7;
  if (v6 >= 0)
  {
    v7 = v6;
  }

  if (v6 < -7)
  {
    goto LABEL_38;
  }

  if (v6 < 8)
  {
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    v8 = v7 >> 3;
    v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v9 + 16) = v8;
    bzero((v9 + 32), v8);
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
  }

  v10 = *(v1 + 16);

  if (v10)
  {
    v12 = 0;
    v13 = v9 + 32;
    do
    {
      v14 = *(v2 + 16);
      if (v12 == v14)
      {
        break;
      }

      if (v12 >= v14)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v15 = *(v2 + v12 + 32);
      if (*(v1 + 32 + v12))
      {
        if (v12 >> 3 >= *(v9 + 16))
        {
          goto LABEL_32;
        }

        *(v13 + (v12 >> 3)) |= 1 << (v12 & 7);
      }

      if (v15)
      {
        v16 = v12 + v3;
        if (__OFADD__(v12, v3))
        {
          goto LABEL_33;
        }

        if (v16 >= 0)
        {
          v17 = v12 + v3;
        }

        else
        {
          v17 = v16 + 7;
        }

        v18 = v16 - (v17 & 0xFFFFFFFFFFFFFFF8);
        if (v18 >= 0)
        {
          v19 = 1 << v18;
        }

        else
        {
          v19 = 0;
        }

        if (v16 < -7)
        {
          goto LABEL_34;
        }

        if (v17 >> 3 >= *(v9 + 16))
        {
          __break(1u);
          break;
        }

        *(v13 + (v17 >> 3)) |= v19;
      }

      ++v12;
    }

    while (v10 != v12);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v22 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277CC9C28]);
  v20[0] = v9;
  __swift_project_boxed_opaque_existential_1(v20, v21);

  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_1(v20);
}

char *specialized BitMasks.encode<A>(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  if (v3 != *(v2 + 16))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v4 = 2 * v3;
  if (__OFADD__(v3, v3))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v5 = __OFADD__(v4, 7);
  v6 = v4 + 7;
  if (v5)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  v7 = v6 + 7;
  if (v6 >= 0)
  {
    v7 = v6;
  }

  if (v6 < -7)
  {
    goto LABEL_38;
  }

  if (v6 < 8)
  {
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    v8 = v7 >> 3;
    v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v9 + 16) = v8;
    bzero((v9 + 32), v8);
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
  }

  v10 = *(v1 + 16);

  if (v10)
  {
    v12 = 0;
    v13 = v9 + 32;
    do
    {
      v14 = *(v2 + 16);
      if (v12 == v14)
      {
        break;
      }

      if (v12 >= v14)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v15 = *(v2 + v12 + 32);
      if (*(v1 + 32 + v12))
      {
        if (v12 >> 3 >= *(v9 + 16))
        {
          goto LABEL_32;
        }

        *(v13 + (v12 >> 3)) |= 1 << (v12 & 7);
      }

      if (v15)
      {
        v16 = v12 + v3;
        if (__OFADD__(v12, v3))
        {
          goto LABEL_33;
        }

        if (v16 >= 0)
        {
          v17 = v12 + v3;
        }

        else
        {
          v17 = v16 + 7;
        }

        v18 = v16 - (v17 & 0xFFFFFFFFFFFFFFF8);
        if (v18 >= 0)
        {
          v19 = 1 << v18;
        }

        else
        {
          v19 = 0;
        }

        if (v16 < -7)
        {
          goto LABEL_34;
        }

        if (v17 >> 3 >= *(v9 + 16))
        {
          __break(1u);
          break;
        }

        *(v13 + (v17 >> 3)) |= v19;
      }

      ++v12;
    }

    while (v10 != v12);
  }

  return specialized Array.append<A>(contentsOf:)(v9);
}

void specialized BitCorrections.encode<A>(into:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_19:
    __break(1u);
    return;
  }

  do
  {
    v4 = 0;
    while ((a2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2743B2D10](v4, a2);
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      specialized BitMasks.encode<A>(into:)();

      ++v4;
      if (v5 == v3)
      {
        return;
      }
    }

    if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v5 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    if ((a2 & 0x8000000000000000) != 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (MEMORY[0x2743B2FD0](v6) < 1)
    {
      goto LABEL_19;
    }

    v3 = MEMORY[0x2743B2FD0](v6);
  }

  while (v3);
}

{
  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_19:
    __break(1u);
    return;
  }

  do
  {
    v4 = 0;
    while ((a2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2743B2D10](v4, a2);
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      specialized BitMasks.encode<A>(into:)();

      ++v4;
      if (v5 == v3)
      {
        return;
      }
    }

    if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v5 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    if ((a2 & 0x8000000000000000) != 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (MEMORY[0x2743B2FD0](v6) < 1)
    {
      goto LABEL_19;
    }

    v3 = MEMORY[0x2743B2FD0](v6);
  }

  while (v3);
}

char *protocol witness for VDAFEncodable.encodedBytes.getter in conformance BitCorrections()
{
  v1 = *v0;
  v2 = specialized Collection<>.encodedLength.getter(*v0);
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0, MEMORY[0x277D84F90]);
  specialized BitCorrections.encode<A>(into:)(&v4, v1);
  return v4;
}

char *protocol witness for VDAFEncodable.encodedBytes.getter in conformance OneBlockSparseInnerCorrection()
{
  if (*(v0 + 9))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return specialized VDAFEncodable.encodedBytes.getter(*v0, v1 | *(v0 + 8));
}

void specialized InnerCorrections.encode<A>(into:)(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a2[2];
  if (a3 >> 62)
  {
LABEL_60:
    if ((a3 & 0x8000000000000000) != 0)
    {
      v31 = a3;
    }

    else
    {
      v31 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v32 = a2;
    v33 = a3;
    v5 = MEMORY[0x2743B2FD0](v31);
    a3 = v33;
    a2 = v32;
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v6 = v4 == v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    __break(1u);
  }

  v7 = (a2 + 4);
  v8 = a2 + 5;
  v9 = v4 & ~(v4 >> 63);
  v10 = v4;
  v11 = a2 + 5;
  while (1)
  {
    if (!v9)
    {
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
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v13 = *(v11 - 1);
    v14 = *v11 >> 62;
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v17 = v13 + 16;
        v15 = *(v13 + 16);
        v16 = *(v17 + 8);
        v18 = __OFSUB__(v16, v15);
        v13 = v16 - v15;
        if (v18)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else if (v14)
    {
      v18 = __OFSUB__(HIDWORD(v13), v13);
      LODWORD(v13) = HIDWORD(v13) - v13;
      if (v18)
      {
        goto LABEL_53;
      }

      v13 = v13;
    }

    else
    {
      v13 = BYTE6(*v11);
    }

    v12 = *v7;
    v19 = *v8 >> 62;
    if (v19 > 1)
    {
      break;
    }

    if (v19)
    {
      v18 = __OFSUB__(HIDWORD(v12), v12);
      LODWORD(v12) = HIDWORD(v12) - v12;
      if (v18)
      {
        goto LABEL_54;
      }

      v12 = v12;
    }

    else
    {
      v12 = BYTE6(*v8);
    }

LABEL_10:
    if (v13 != v12)
    {
      goto LABEL_51;
    }

LABEL_11:
    --v9;
    v11 += 2;
    if (!--v10)
    {
      goto LABEL_33;
    }
  }

  if (v19 == 2)
  {
    v22 = v12 + 16;
    v20 = *(v12 + 16);
    v21 = *(v22 + 8);
    v18 = __OFSUB__(v21, v20);
    v12 = v21 - v20;
    if (v18)
    {
      goto LABEL_55;
    }

    goto LABEL_10;
  }

  if (!v13)
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_33:
  v34 = a3;
  v23 = MEMORY[0x277CC9318];
  v24 = MEMORY[0x277CC9300];
  while (2)
  {
    v37 = v23;
    v38 = v24;
    v35 = *v7;
    v36 = *v7;
    v25 = __swift_project_boxed_opaque_existential_1(&v36, v23);
    v26 = *v25;
    v27 = v25[1] >> 62;
    if (v27 > 1)
    {
      if (v27 != 2)
      {
        goto LABEL_34;
      }

      v28 = *(v26 + 16);
      v29 = *(v26 + 24);
      outlined copy of Data._Representation(v35, *(&v35 + 1));
      if (__DataStorage._bytes.getter() && __OFSUB__(v28, __DataStorage._offset.getter()))
      {
        goto LABEL_58;
      }

      if (__OFSUB__(v29, v28))
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (!v27)
      {
LABEL_34:
        outlined copy of Data._Representation(v35, *(&v35 + 1));
        goto LABEL_35;
      }

      v30 = v26;
      if (v26 >> 32 < v26)
      {
        goto LABEL_56;
      }

      outlined copy of Data._Representation(v35, *(&v35 + 1));
      if (__DataStorage._bytes.getter() && __OFSUB__(v30, __DataStorage._offset.getter()))
      {
        goto LABEL_59;
      }
    }

    MEMORY[0x2743B2250]();
LABEL_35:
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_1(&v36);
    ++v7;
    if (--v4)
    {
      continue;
    }

    break;
  }

  specialized BitCorrections.encode<A>(into:)(a1, v34);
}

void specialized InnerCorrections.encode<A>(into:)(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2[2];
  if (a3 >> 62)
  {
    goto LABEL_53;
  }

  v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    if (v5)
    {
      v7 = v5 == v6;
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v5 & ~(v5 >> 63);
    if (!v8)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v9 = a2[4];
    v10 = a2[5];
    v11 = v10 >> 62;
    if ((v10 >> 62) <= 1)
    {
      break;
    }

LABEL_14:
    if (v11 == 3 || !__OFSUB__(*(v9 + 24), *(v9 + 16)))
    {
      goto LABEL_16;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    if ((a3 & 0x8000000000000000) != 0)
    {
      v27 = a3;
    }

    else
    {
      v27 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v28 = a2;
    v6 = MEMORY[0x2743B2FD0](v27);
    a2 = v28;
  }

  if (v11 && __OFSUB__(HIDWORD(v9), v9))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_16:
  v12 = v5 - 1;
  if (v5 != 1)
  {
    v16 = __OFSUB__(HIDWORD(v9), v9);
    v10 = BYTE6(v10);
    --v8;
    v17 = a2 + 7;
    while (1)
    {
      if (!v8)
      {
        goto LABEL_48;
      }

      v22 = *(v17 - 1);
      v23 = *v17 >> 62;
      if (v23 <= 1)
      {
        break;
      }

      if (v23 == 2)
      {
        v26 = v22 + 16;
        v24 = *(v22 + 16);
        v25 = *(v26 + 8);
        v20 = __OFSUB__(v25, v24);
        v22 = v25 - v24;
        if (v20)
        {
          goto LABEL_50;
        }

LABEL_40:
        if (v11 <= 1)
        {
          goto LABEL_41;
        }

        goto LABEL_45;
      }

      v22 = 0;
      if (v11 <= 1)
      {
LABEL_41:
        v21 = v10;
        if (v11)
        {
          v21 = HIDWORD(v9) - v9;
          if (v16)
          {
            goto LABEL_51;
          }
        }

        goto LABEL_27;
      }

LABEL_45:
      if (v11 == 2)
      {
        v18 = *(v9 + 16);
        v19 = *(v9 + 24);
        v20 = __OFSUB__(v19, v18);
        v21 = v19 - v18;
        if (v20)
        {
          goto LABEL_52;
        }

LABEL_27:
        if (v22 != v21)
        {
          goto LABEL_49;
        }

        goto LABEL_28;
      }

      if (v22)
      {
        __break(1u);
        goto LABEL_48;
      }

LABEL_28:
      --v8;
      v17 += 2;
      if (!--v12)
      {
        goto LABEL_17;
      }
    }

    if (!v23)
    {
      v22 = BYTE6(*v17);
      if (v11 <= 1)
      {
        goto LABEL_41;
      }

      goto LABEL_45;
    }

    v20 = __OFSUB__(HIDWORD(v22), v22);
    LODWORD(v22) = HIDWORD(v22) - v22;
    if (v20)
    {
      goto LABEL_13;
    }

    v22 = v22;
    goto LABEL_40;
  }

LABEL_17:
  v13 = a2 + 5;
  do
  {
    v14 = *(v13 - 1);
    v15 = *v13;
    outlined copy of Data._Representation(v14, *v13);
    specialized Array.append<A>(contentsOf:)(v14, v15);
    v13 += 2;
    --v5;
  }

  while (v5);

  specialized BitCorrections.encode<A>(into:)(a1, a3);
}

char *protocol witness for VDAFEncodable.encodedBytes.getter in conformance InnerCorrections()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = InnerCorrections.encodedLength.getter(v1, v2);
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0, MEMORY[0x277D84F90]);
  specialized InnerCorrections.encode<A>(into:)(&v5, v1, v2);
  return v5;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for VDAFCodableError(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
  result = lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type VoidCodable and conformance VoidCodable()
{
  result = lazy protocol witness table cache variable for type VoidCodable and conformance VoidCodable;
  if (!lazy protocol witness table cache variable for type VoidCodable and conformance VoidCodable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoidCodable and conformance VoidCodable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoidCodable and conformance VoidCodable;
  if (!lazy protocol witness table cache variable for type VoidCodable and conformance VoidCodable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoidCodable and conformance VoidCodable);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VDAFCodableError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VDAFCodableError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t getEnumTag for VDAFCodableError(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for VDAFCodableError(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t protocol witness for VDAFEncodable.encodedBytes.getter in conformance UInt32()
{

  return sub_270B60A2C();
}

uint64_t specialized InnerCorrectionCalculator.generate(at:with:using:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  result = specialized InnerCorrectionCalculator.calculate(at:withParty0:andParty1:using:)(a1, a2, a3, a6, a7, a8);
  if (!v10)
  {
    v43 = v18;
    v44 = v17;
    v45 = result;
    v41 = a9;
    v42 = a4;
    if (a8 >> 62)
    {
      goto LABEL_36;
    }

    v19 = *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v20 = MEMORY[0x277D84F90];
    if (v19)
    {
      v40 = a5;
      v47 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
      if ((v19 & 0x8000000000000000) == 0)
      {
        a5 = 0;
        v20 = v47;
        v46 = ~a1;
        while (1)
        {
          v21 = a5 + 1;
          if (__OFADD__(a5, 1))
          {
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            if (a8 < 0)
            {
              v39 = a8;
            }

            else
            {
              v39 = a8 & 0xFFFFFFFFFFFFFF8;
            }

            v19 = MEMORY[0x2743B2FD0](v39);
            goto LABEL_4;
          }

          if ((a8 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x2743B2D10](a5, a8);
            v23 = *(v22 + 32);
            if ((v23 & 0x8000000000000000) != 0)
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (a5 >= *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v22 = *(a8 + 8 * a5 + 32);

            v23 = *(v22 + 32);
            if ((v23 & 0x8000000000000000) != 0)
            {
              goto LABEL_34;
            }
          }

          if (v23 <= a1)
          {
            lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
            swift_allocError();
            *v31 = a1;
            *(v31 + 8) = 0;
            *(v31 + 16) = v23 - 1;
            *(v31 + 24) = 0;
            swift_willThrow();
          }

          v24 = *(v22 + 16);

          v25 = v23 + v46;
          if ((v23 + v46) >= -64)
          {
            if (v25 <= 64)
            {
              if (v25 < 0)
              {
                if (v25 != -64 && ((v24 << -v25) & 1) != 0)
                {
                  goto LABEL_25;
                }
              }

              else
              {
                v26 = v25 == 64;
                v27 = v24 >> v25;
                if (v26)
                {
                  v27 = v24 >> 63;
                }

                if (v27)
                {
LABEL_25:
                  v28 = 1;
                  goto LABEL_26;
                }
              }
            }

            else if (v24 < 0)
            {
              goto LABEL_25;
            }
          }

          v28 = 0;
LABEL_26:
          v30 = *(v47 + 16);
          v29 = *(v47 + 24);
          if (v30 >= v29 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
          }

          *(v47 + 16) = v30 + 1;
          *(v47 + v30 + 32) = v28;
          ++a5;
          if (v21 == v19)
          {
            a5 = v40;
            goto LABEL_31;
          }
        }
      }

      __break(1u);
    }

    else
    {
LABEL_31:
      v32 = ClientLevelOutput.nextLevelInput(onPathDirections:prevParty0CtrlList:prevParty1CtrlList:)(v20, v42, a5, v45, v44, v43);
      v34 = v33;
      v36 = v35;
      v38 = v37;

      *v41 = v44;
      v41[1] = v43;
      v41[2] = v32;
      v41[3] = v34;
      v41[4] = v36;
      v41[5] = v38;
    }
  }

  return result;
}

uint64_t specialized InnerCorrectionCalculator.calculate(at:withParty0:andParty1:using:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v176 = a1;
  v199 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 16);
  v8 = *(a3 + 16);
  v9 = a6 >> 62;
  if (v7 != v8)
  {
    goto LABEL_172;
  }

  v182 = *(a2 + 16);
  v172 = a6;
  v10 = a6 & 0xFFFFFFFFFFFFFF8;
  if (v9)
  {
    goto LABEL_168;
  }

  v11 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 != v11)
  {
LABEL_172:
    if (v9)
    {
      if (a6 < 0)
      {
        v162 = a6;
      }

      else
      {
        v162 = a6 & 0xFFFFFFFFFFFFFF8;
      }

      v159 = MEMORY[0x2743B2FD0](v162);
    }

    else
    {
      v159 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    lazy protocol witness table accessor for type InnerCorrectionError and conformance InnerCorrectionError();
    swift_allocError();
    *v160 = v7;
    v160[1] = v8;
    v160[2] = v159;
    swift_willThrow();
    return v175;
  }

LABEL_4:
  MEMORY[0x28223BE20](v11);
  v163[2] = v7;
  v163[3] = v12;
  v163[4] = v13;
  v163[5] = v14;
  v16 = v15;
  v175 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay10Foundation4DataVGAKG_4VDAF4PairVyAM18SeedCtrlUnadjustedVGs5NeverOTg5015_s10Foundation4g9VAC4VDAF4i6VyAD18jkl18VGIgggo_AC_ACtAIs5M11OIegnrzr_TRA2jRIgggo_Tf1cn_nTf4ng_n(v15, v17, partial apply for closure #1 in static SeedCtrlUnadjusted.makePairList(from:using:for:), v163);
  v189 = MEMORY[0x277D84FA0];
  v188 = MEMORY[0x277D84F90];
  if (v9)
  {
    v19 = v172;
    if (v172 < 0)
    {
      v20 = v172;
    }

    else
    {
      v20 = v172 & 0xFFFFFFFFFFFFFF8;
    }

    v21 = MEMORY[0x2743B2FD0](v20);
    v18 = v19;
    v9 = v21;
  }

  else
  {
    v18 = v172;
    v9 = *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v9)
  {
    v178 = MEMORY[0x277D84F90];

    return v175;
  }

  v22 = 0;
  v169 = v18 & 0xFFFFFFFFFFFFFF8;
  v167 = v9;
  v168 = v18 + 32;
  v170 = v175 + 32;
  v171 = v18 & 0xC000000000000001;
  v23 = vcvtd_n_f64_u64(v7, 3uLL);
  v24 = vcvtpd_s64_f64(v23);
  v165 = v24 + 0x4000000000000000;
  v166 = v16 + 32;
  v164 = 2 * v24;
  v25 = ceil(v23);
  v180 = 1 - v7;
  v183 = MEMORY[0x277D84F90];
  v178 = MEMORY[0x277D84F90];
  v8 = v6;
  while (1)
  {
    if (v171)
    {
      v177 = MEMORY[0x2743B2D10](v22, v172);
      v10 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_166;
      }
    }

    else
    {
      v10 = *(v169 + 16);
      if (v22 >= v10)
      {
        goto LABEL_167;
      }

      v177 = *(v168 + 8 * v22);

      v10 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_166;
      }
    }

    v184 = v22;
    v173 = v10;
    type metadata accessor for BitMasks();
    v26 = swift_allocObject();
    v27 = v26;
    if (v7)
    {
      v28 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v28 + 16) = v7;
      bzero((v28 + 32), v7);
      *(v27 + 16) = v28;
      v186 = (v27 + 16);
      v29 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v29 + 16) = v7;
      bzero((v29 + 32), v7);
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
      *(v26 + 16) = MEMORY[0x277D84F90];
      v30 = v26 + 16;
      v186 = (v26 + 16);
    }

    *(v27 + 24) = v29;
    v6 = v8;
    v31 = specialized LeafParent.prefix(leadingToLevel:)(v176, v30);
    if (v8)
    {
LABEL_146:

      goto LABEL_147;
    }

    v32 = v31;
    v33 = specialized Set.contains(_:)(v31, v189);
    v187 = v27;
    v174 = 0;
    if (v33)
    {
      break;
    }

    v9 = &v189;
    specialized Set._Variant.insert(_:)(&v191, v32);
    if (v7)
    {
      if (v184 < *(v175 + 16))
      {
        v8 = v170 + 96 * v184;
        v39 = *(v8 + 64);
        v40 = *(v8 + 80);
        v41 = *(v8 + 48);
        v193 = *(v8 + 32);
        v42 = *v8;
        v43 = *(v8 + 16);
        v195 = v39;
        v196 = v40;
        v194 = v41;
        v191 = v42;
        v192 = v43;
        v10 = v193;
        if (*(v193 + 16))
        {
          v44 = *(&v196 + 1);
          v45 = v196;
          v46 = 32;
          v47 = *(&v193 + 1);
          while (1)
          {
            v48 = v46 - 32;
            if ((v46 - 32) >= *(v45 + 16))
            {
              break;
            }

            if (v48 >= *(v47 + 16))
            {
              goto LABEL_150;
            }

            if (v48 >= *(v44 + 16))
            {
              goto LABEL_151;
            }

            v49 = *(v10 + v46);
            v50 = *(v45 + v46);
            LODWORD(v185) = *(v47 + v46);
            v51 = *(v44 + v46);
            v52 = v186;
            v9 = *v186;
            outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(&v191, &v190, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMd, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMR);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v52 = v9;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
            }

            v10 = *(v9 + 16);
            if (v48 >= v10)
            {
              goto LABEL_152;
            }

            *(v9 + v46) = (v49 ^ v50) & 1;
            v54 = v187;
            *(v187 + 16) = v9;
            v9 = *(v54 + 24);
            v55 = swift_isUniquelyReferenced_nonNull_native();
            *(v54 + 24) = v9;
            if ((v55 & 1) == 0)
            {
              v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
            }

            v10 = *(v9 + 16);
            if (v48 >= v10)
            {
              goto LABEL_153;
            }

            v56 = v180 + v46;
            *(v9 + v46) = (v185 ^ v51) & 1;
            *(v187 + 24) = v9;
            outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(&v191, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMd, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMR);
            v7 = v182;
            if (v56 == 32)
            {
              goto LABEL_40;
            }

            v58 = *(v8 + 32);
            v57 = *(v8 + 48);
            v59 = *(v8 + 64);
            v196 = *(v8 + 80);
            v193 = v58;
            v60 = *v8;
            v61 = *(v8 + 16);
            v194 = v57;
            v195 = v59;
            v191 = v60;
            v192 = v61;
            v44 = *(&v196 + 1);
            v45 = v196;
            v47 = *(&v193 + 1);
            v10 = v193;
            v62 = v46 - 31;
            ++v46;
            if (v62 >= *(v193 + 16))
            {
              goto LABEL_148;
            }
          }
        }

        else
        {
LABEL_148:
          __break(1u);
        }

        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        if (a6 < 0)
        {
          v158 = a6;
        }

        else
        {
          v158 = v10;
        }

        v11 = MEMORY[0x2743B2FD0](v158);
        a6 = v172;
        v7 = v182;
        if (v182 != v11)
        {
          goto LABEL_172;
        }

        goto LABEL_4;
      }

LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
    }

LABEL_40:
    v63 = v174;
    v64 = specialized LeafParent.firstDiverge(fromAnyOf:at:)(v172, v176);
    if (v63)
    {
      goto LABEL_146;
    }

    if (v65)
    {
      v66 = specialized LeafParent.bit(atLevel:)(v176);
      if (v184 >= *(v175 + 16))
      {
        goto LABEL_188;
      }

      v67 = v170 + 96 * v184;
      v68 = 16;
      if (v66)
      {
        v68 = 0;
      }

      v69 = 24;
      if (v66)
      {
        v69 = 8;
      }

      v70 = *(v67 + v69);
      v71 = *(v67 + v68);
      if (v66)
      {
        v72 = 48;
      }

      else
      {
        v72 = 64;
      }

      if (v66)
      {
        v73 = 56;
      }

      else
      {
        v73 = 72;
      }

      outlined copy of Data._Representation(v71, v70);

      outlined copy of Data._Representation(v71, v70);
      outlined consume of Data._Representation(v71, v70);

      v74 = *(v67 + v73);
      v75 = *(v67 + v72);
      outlined copy of Data._Representation(v75, v74);

      outlined copy of Data._Representation(v75, v74);
      outlined consume of Data._Representation(v75, v74);

      v76 = Data.xor(_:)(v75, v74, v71, v70);
      v78 = v77;
      v79 = swift_isUniquelyReferenced_nonNull_native();
      v174 = 0;
      if ((v79 & 1) == 0)
      {
        v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v178 + 2) + 1, 1, v178);
      }

      v81 = *(v178 + 2);
      v80 = *(v178 + 3);
      if (v81 >= v80 >> 1)
      {
        v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v178);
      }

      outlined consume of Data._Representation(v75, v74);
      outlined consume of Data._Representation(v71, v70);
      v82 = v178;
      *(v178 + 2) = v81 + 1;
      v83 = &v82[16 * v81];
      *(v83 + 4) = v76;
      *(v83 + 5) = v78;
      v8 = v174;
      v7 = v182;
    }

    else
    {
      if (v184 >= v7)
      {
        goto LABEL_187;
      }

      v87 = v64;
      v88 = (v166 + 16 * v184);
      v89 = *v88;
      v90 = v88[1];
      v91 = v90 >> 62;
      if ((v90 >> 62) > 1)
      {
        if (v91 == 2)
        {
          v132 = v89 + 16;
          v130 = *(v89 + 16);
          v131 = *(v132 + 8);
          v92 = v131 - v130;
          if (__OFSUB__(v131, v130))
          {
            goto LABEL_194;
          }
        }

        else
        {
          v92 = 0;
        }
      }

      else if (v91)
      {
        v93 = __OFSUB__(HIDWORD(v89), v89);
        v133 = HIDWORD(v89) - v89;
        if (v93)
        {
          goto LABEL_195;
        }

        v92 = v133;
      }

      else
      {
        v92 = BYTE6(v90);
      }

      v134 = _ss17FixedWidthIntegerP4VDAFE12randomVector5countSayxGSi_tFZs5UInt8V_Tt0g5(v92);
      v135 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v134);
      v137 = v136;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v178 + 2) + 1, 1, v178);
      }

      v139 = *(v178 + 2);
      v138 = *(v178 + 3);
      if (v139 >= v138 >> 1)
      {
        v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v138 > 1), v139 + 1, 1, v178);
      }

      v140 = v178;
      *(v178 + 2) = v139 + 1;
      v141 = &v140[16 * v139];
      *(v141 + 4) = v135;
      *(v141 + 5) = v137;
      if (v171)
      {
        MEMORY[0x2743B2D10](v87);
        v7 = v182;
        v142 = v184;
      }

      else
      {
        v7 = v182;
        if ((v87 & 0x8000000000000000) != 0)
        {
          goto LABEL_192;
        }

        v142 = v184;
        if (v87 >= *(v169 + 16))
        {
          goto LABEL_193;
        }
      }

      v8 = v63;
      v143 = specialized LeafParent.bit(atLevel:)(v176);

      if (v142 >= *(v175 + 16))
      {
        goto LABEL_189;
      }

      v144 = (v170 + 96 * v142);
      v145 = v144[1];
      v198[0] = *v144;
      v198[1] = v145;
      v146 = v144[2];
      v147 = v144[3];
      v148 = v144[5];
      v198[4] = v144[4];
      v198[5] = v148;
      v198[2] = v146;
      v198[3] = v147;
      outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(v198, &v191, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMd, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMR);
      BitMasks.enableSeedCorrection(between:forPath:withOnPathBit:)(v198, v87, v143 & 1);
      outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v198, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMd, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMR);
    }

    v6 = v8;
    v149 = specialized LeafParent.bit(atLevel:)(v176);
    if (v8)
    {
      goto LABEL_146;
    }

    v150 = v184;
    if (v184 >= *(v175 + 16))
    {
      goto LABEL_185;
    }

    v151 = v149;
    v152 = (v170 + 96 * v184);
    v153 = v152[1];
    v197[0] = *v152;
    v197[1] = v153;
    v154 = v152[2];
    v155 = v152[3];
    v156 = v152[5];
    v197[4] = v152[4];
    v197[5] = v156;
    v197[2] = v154;
    v197[3] = v155;
    outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(v197, &v191, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMd, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMR);
    BitMasks.enableSeedCorrection(between:forPath:withOnPathBit:)(v197, v150, v151 & 1);
    outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v197, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMd, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMR);
LABEL_133:

    MEMORY[0x2743B2760](v157);
    if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v183 = v188;
    v22 = v173;
    v9 = v167;
    if (v173 == v167)
    {

      return v175;
    }
  }

  if (v184 >= v7)
  {
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v34 = (v166 + 16 * v184);
  v35 = *v34;
  v36 = v34[1];
  v37 = v36 >> 62;
  if ((v36 >> 62) > 1)
  {
    if (v37 == 2)
    {
      v86 = v35 + 16;
      v84 = *(v35 + 16);
      v85 = *(v86 + 8);
      v38 = v85 - v84;
      if (__OFSUB__(v85, v84))
      {
        goto LABEL_190;
      }
    }

    else
    {
      v38 = 0;
    }
  }

  else if (v37)
  {
    v93 = __OFSUB__(HIDWORD(v35), v35);
    v94 = HIDWORD(v35) - v35;
    if (v93)
    {
      goto LABEL_191;
    }

    v38 = v94;
  }

  else
  {
    v38 = BYTE6(v36);
  }

  v95 = _ss17FixedWidthIntegerP4VDAFE12randomVector5countSayxGSi_tFZs5UInt8V_Tt0g5(v38);
  v96 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v95);
  v98 = v97;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v178 + 2) + 1, 1, v178);
  }

  v100 = *(v178 + 2);
  v99 = *(v178 + 3);
  if (v100 >= v99 >> 1)
  {
    v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), v100 + 1, 1, v178);
  }

  v101 = v178;
  *(v178 + 2) = v100 + 1;
  v102 = &v101[16 * v100];
  *(v102 + 4) = v96;
  *(v102 + 5) = v98;
  if (v25 == INFINITY)
  {
    goto LABEL_181;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  if ((v165 & 0x8000000000000000) != 0)
  {
    goto LABEL_184;
  }

  v103 = _ss17FixedWidthIntegerP4VDAFE12randomVector5countSayxGSi_tFZs5UInt8V_Tt0g5(v164);
  v104 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v103);
  v106 = v105;
  v9 = v104;

  v107 = v106 >> 62;
  v184 = v9;
  v185 = v9;
  v181 = v9 >> 32;
  v8 = 32;
  v179 = BYTE6(v106);
  v183 = v106 >> 62;
  while (v7)
  {
    v108 = v8 - 32;
    v10 = (v8 - 32) >> 2;
    v109 = v10 & 0x1FFFFFFFFFFFFFFELL;
    v110 = v10 | 1;
    if (v107 > 1)
    {
      if (v107 != 2)
      {
        goto LABEL_196;
      }

      v10 = *(v9 + 16);
      if (v109 < v10)
      {
        goto LABEL_155;
      }

      v10 = *(v9 + 24);
      if (v109 >= v10)
      {
        goto LABEL_158;
      }

      v113 = __DataStorage._bytes.getter();
      if (!v113)
      {
        goto LABEL_198;
      }

      v114 = v113;
      v9 = v106 & 0x3FFFFFFFFFFFFFFFLL;
      v115 = __DataStorage._offset.getter();
      v10 = v109 - v115;
      if (__OFSUB__(v109, v115))
      {
        goto LABEL_160;
      }

      if (v110 < *(v185 + 16))
      {
        goto LABEL_162;
      }

      if (v110 >= *(v185 + 24))
      {
        goto LABEL_164;
      }

      v111 = *(v114 + v10);
      v116 = __DataStorage._bytes.getter();
      if (!v116)
      {
        goto LABEL_200;
      }

      v117 = v116;
      v9 = v106 & 0x3FFFFFFFFFFFFFFFLL;
      v118 = __DataStorage._offset.getter();
      v10 = v110 - v118;
      if (__OFSUB__(v110, v118))
      {
        goto LABEL_165;
      }
    }

    else
    {
      if (!v107)
      {
        if (v109 >= v179)
        {
          goto LABEL_154;
        }

        LOBYTE(v191) = v184;
        v10 = v9 >> 8;
        BYTE1(v191) = BYTE1(v9);
        BYTE2(v191) = BYTE2(v9);
        BYTE3(v191) = BYTE3(v9);
        BYTE4(v191) = BYTE4(v9);
        BYTE5(v191) = BYTE5(v9);
        BYTE6(v191) = BYTE6(v9);
        BYTE7(v191) = HIBYTE(v9);
        WORD4(v191) = v106;
        BYTE10(v191) = BYTE2(v106);
        v6 = HIDWORD(v106);
        BYTE11(v191) = BYTE3(v106);
        BYTE12(v191) = BYTE4(v106);
        BYTE13(v191) = BYTE5(v106);
        if (v110 >= v179)
        {
          goto LABEL_157;
        }

        v111 = *(&v191 + v109);
        BYTE1(v191) = BYTE1(v9);
        BYTE2(v191) = BYTE2(v9);
        BYTE3(v191) = BYTE3(v9);
        BYTE4(v191) = BYTE4(v9);
        BYTE5(v191) = BYTE5(v9);
        BYTE6(v191) = BYTE6(v9);
        BYTE7(v191) = HIBYTE(v9);
        WORD4(v191) = v106;
        BYTE10(v191) = BYTE2(v106);
        BYTE11(v191) = BYTE3(v106);
        BYTE12(v191) = BYTE4(v106);
        BYTE13(v191) = BYTE5(v106);
        v112 = *(&v191 + v110);
        goto LABEL_104;
      }

      v10 = v184;
      if (v109 < v184)
      {
        goto LABEL_156;
      }

      v10 = v181;
      if (v109 >= v181)
      {
        goto LABEL_156;
      }

      v119 = __DataStorage._bytes.getter();
      if (!v119)
      {
        goto LABEL_197;
      }

      v120 = v119;
      v9 = v106 & 0x3FFFFFFFFFFFFFFFLL;
      v121 = __DataStorage._offset.getter();
      v10 = v109 - v121;
      if (__OFSUB__(v109, v121))
      {
        goto LABEL_159;
      }

      if (v110 < v184 || v110 >= v181)
      {
        goto LABEL_161;
      }

      v111 = *(v120 + v10);
      v122 = __DataStorage._bytes.getter();
      if (!v122)
      {
        goto LABEL_199;
      }

      v117 = v122;
      v9 = v106 & 0x3FFFFFFFFFFFFFFFLL;
      v123 = __DataStorage._offset.getter();
      v10 = v110 - v123;
      if (__OFSUB__(v110, v123))
      {
        goto LABEL_163;
      }
    }

    v112 = *(v117 + v10);
LABEL_104:
    v124 = v186;
    v125 = *v186;
    v126 = swift_isUniquelyReferenced_nonNull_native();
    *v124 = v125;
    if ((v126 & 1) == 0)
    {
      v125 = specialized _ArrayBuffer._consumeAndCreateNew()(v125);
    }

    if (v108 >= *(v125 + 2))
    {
      goto LABEL_144;
    }

    v125[v8] = (v111 >> (v108 & 7)) & 1;
    v127 = v187;
    *(v187 + 16) = v125;
    v128 = *(v127 + 24);
    v129 = swift_isUniquelyReferenced_nonNull_native();
    *(v127 + 24) = v128;
    if ((v129 & 1) == 0)
    {
      v128 = specialized _ArrayBuffer._consumeAndCreateNew()(v128);
    }

    if (v108 >= *(v128 + 2))
    {
      goto LABEL_145;
    }

    v128[v8] = (v112 >> (v108 & 7)) & 1;
    *(v127 + 24) = v128;
    ++v8;
    --v7;
    v9 = v185;
    LODWORD(v107) = v183;
    if (!v7)
    {
      outlined consume of Data._Representation(v185, v106);
      v8 = v174;
      v7 = v182;
      goto LABEL_133;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);

LABEL_147:

  return v175;
}

uint64_t specialized LeafParent.prefix(leadingToLevel:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v3 + 32);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    a2 = v4 - a1;
    if (v4 < a1)
    {
      lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
      swift_allocError();
      *v6 = a1;
      *(v6 + 8) = 0;
      *(v6 + 16) = v4;
      *(v6 + 24) = 0;
      return swift_willThrow();
    }

    if (a2 < -64)
    {
      return 0;
    }

    v2 = *(v3 + 16);
    if (a2 >= 65)
    {
      return v2 >> 63;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      v8 = a2 == 64;
      v9 = v2 >> a2;
      if (v8)
      {
        return v2 >> 63;
      }

      else
      {
        return v9;
      }
    }
  }

  v10 = v2 << -a2;
  if (a2 == -64)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

uint64_t specialized LeafParent.firstDiverge(fromAnyOf:at:)(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
LABEL_72:
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v22 = a1;
    }

    else
    {
      v22 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = MEMORY[0x2743B2FD0](v22);
  }

  else
  {
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v23 = v5;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2743B2D10](v6, a1);
      if (v8 == v2)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (v6 >= *(v24 + 16))
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v8 = *(a1 + 8 * v6 + 32);

      if (v8 == v2)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    v9 = *(v8 + 32);
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_70;
    }

    v10 = v9 - a2;
    if (v9 <= a2)
    {
      v13 = v9 - 1;
LABEL_66:
      lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
      swift_allocError();
      *v21 = a2;
      *(v21 + 8) = 0;
      *(v21 + 16) = v13;
      *(v21 + 24) = 0;
      swift_willThrow();
    }

    v11 = *(v8 + 16);
    if (v10 < -64)
    {
LABEL_14:
      v12 = 0;
      v13 = *(v2 + 32);
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_71;
      }

      goto LABEL_22;
    }

    if (v10 > 64)
    {
LABEL_17:
      v12 = v11 >> 63;
      v13 = *(v2 + 32);
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_71;
      }

      goto LABEL_22;
    }

    if (v10 < 0)
    {
      if (v10 == -64)
      {
        goto LABEL_14;
      }

      v12 = v11 << -v10;
      v13 = *(v2 + 32);
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v10 == 64)
      {
        goto LABEL_17;
      }

      v12 = v11 >> v10;
      v13 = *(v2 + 32);
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_71;
      }
    }

LABEL_22:
    v14 = v13 - a2;
    if (v13 < a2)
    {
      goto LABEL_66;
    }

    v15 = *(v2 + 16);
    if (v14 <= -65)
    {
LABEL_4:
      if (v12)
      {
        goto LABEL_5;
      }

      goto LABEL_30;
    }

    if (v14 > 64)
    {
LABEL_25:
      if (v12 != v15 >> 63)
      {
        goto LABEL_5;
      }

      goto LABEL_30;
    }

    if (v14 < 0)
    {
      if (v14 == -64)
      {
        goto LABEL_4;
      }

      if (v12 != v15 << (a2 - v13))
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (v14 == 64)
      {
        goto LABEL_25;
      }

      if (v12 != v15 >> v14)
      {
        goto LABEL_5;
      }
    }

LABEL_30:
    v16 = v10 - 1;
    if (v10 - 1 > -65)
    {
      if (v16 > 64)
      {
        goto LABEL_34;
      }

      if ((v16 & 0x8000000000000000) == 0)
      {
        if (v10 == 65)
        {
LABEL_34:
          v18 = v11 >> 63;
          if (v13 <= a2)
          {
            goto LABEL_65;
          }
        }

        else
        {
          v18 = v11 >> v16;
          if (v13 <= a2)
          {
            goto LABEL_65;
          }
        }

LABEL_39:

        v17 = v18 & 1;
        goto LABEL_40;
      }

      if (v10 != -63)
      {
        v18 = v11 << (1 - v10);
        if (v13 <= a2)
        {
LABEL_65:
          --v13;
          goto LABEL_66;
        }

        goto LABEL_39;
      }
    }

    if (v13 <= a2)
    {
      goto LABEL_65;
    }

    v17 = 0;
LABEL_40:
    v5 = v23;
    if (v14 >= -63)
    {
      break;
    }

LABEL_41:
    if (v17)
    {
      return v6;
    }

LABEL_6:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_69;
    }
  }

  if (v14 > 65)
  {
    goto LABEL_44;
  }

  if (v14 <= 0)
  {
    if (v14 != -63)
    {
      v19 = v15 << (1 - v14);
      goto LABEL_48;
    }

    goto LABEL_41;
  }

  if (v14 == 65)
  {
LABEL_44:
    v19 = v15 >> 63;
    goto LABEL_48;
  }

  v19 = v15 >> (v14 - 1);
LABEL_48:
  if ((v17 ^ ((v19 & 1) == 0)))
  {
    goto LABEL_6;
  }

  return v6;
}

uint64_t _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(uint64_t a1)
{

  return _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA8PreambleVyAA7Field32Vs5Int32VAA19XofHmacSha256Aes128CG_Tt0B5Tm(a1, 8, 51445759);
}

uint64_t _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA12PreambleKWayVyAA7Field32Vs5Int32VAA19XofHmacSha256Aes128CG_Tt0B5(uint64_t a1)
{

  return _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA8PreambleVyAA7Field32Vs5Int32VAA19XofHmacSha256Aes128CG_Tt0B5Tm(a1, 0, 118554623);
}

uint64_t _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA8PreambleVyAA7Field32Vs5Int32VAA19XofHmacSha256Aes128CG_Tt0B5Tm(unsigned __int8 a1, char a2, int a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8, 0, MEMORY[0x277D84F90]);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  v9 = v7 >> 1;
  v10 = v8 + 1;
  if (v7 >> 1 <= v8)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
    v7 = *(v6 + 3);
    v9 = v7 >> 1;
  }

  *(v6 + 2) = v10;
  v6[v8 + 32] = a2;
  if (v9 < (v8 + 2))
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 2, 1, v6);
  }

  *(v6 + 2) = v8 + 2;
  v6[v10 + 32] = 0;
  v15[0] = v6;
  v14 = a3;
  v11 = specialized _copyCollectionToContiguousArray<A>(_:)(&v14, v15);
  specialized Array.append<A>(contentsOf:)(v11);
  LOWORD(v14) = __rev16(a1 + 1);
  v12 = specialized _copyCollectionToContiguousArray<A>(_:)(&v14, &v14 + 2);
  specialized Array.append<A>(contentsOf:)(v12);
  return v15[0];
}

uint64_t Preamble<>.shardAndEncode(_:nonce:seedBytes:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v12 = *v5;
  v13 = v5[1];
  v14 = v5[2];
  outlined copy of Data._Representation(a2, a3);
  v15 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a2, a3);
  v16 = specialized Preamble.shard<A>(_:nonce:seedBytes:)(&v36, a1, v15, a4, a5, v12, v13);

  if (!v6)
  {
    v18 = *(&v36 + 1);
    v17 = v36;
    v19 = specialized PreamblePublicShare.encodedLength.getter(v36, *(&v36 + 1));
    *&v36 = specialized Data._Representation.init(capacity:)(v19);
    *(&v36 + 1) = v20;
    specialized PreamblePublicShare.encode<A>(into:)(&v36, v17, v18);

    v14 = v36;
    v21 = *(v16 + 16);
    if (v21)
    {
      v35 = v36;
      v40 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v22 = 32;
      v23 = v40;
      do
      {
        v24 = *(v16 + v22);
        v25 = *(v24 + 16);
        if (v25)
        {
          if (v25 <= 0xE)
          {
            v12 &= 0xF00000000000000uLL;

            v27 = 0;
            v28 = v12;
          }

          else
          {
            type metadata accessor for __DataStorage();
            swift_allocObject();

            v26 = __DataStorage.init(capacity:)();
            if (v25 >= 0x7FFFFFFF)
            {
              type metadata accessor for Data.RangeReference();
              v27 = swift_allocObject();
              v28 = v26 | 0x8000000000000000;
              *(v27 + 16) = 0;
              *(v27 + 24) = 0;
            }

            else
            {
              v27 = 0;
              v28 = v26 | 0x4000000000000000;
            }
          }
        }

        else
        {

          v27 = 0;
          v28 = 0xC000000000000000;
        }

        *&v39 = v27;
        *(&v39 + 1) = v28;
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
        v37 = v29;
        v38 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
        *&v36 = v24;
        __swift_project_boxed_opaque_existential_1(&v36, v29);
        Data._Representation.append(contentsOf:)();
        __swift_destroy_boxed_opaque_existential_1(&v36);
        v30 = v39;
        v40 = v23;
        v32 = *(v23 + 16);
        v31 = *(v23 + 24);
        if (v32 >= v31 >> 1)
        {
          v34 = v39;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
          v30 = v34;
          v23 = v40;
        }

        *(v23 + 16) = v32 + 1;
        *(v23 + 16 * v32 + 32) = v30;
        v22 += 8;
        --v21;
      }

      while (v21);

      return v35;
    }

    else
    {
    }
  }

  return v14;
}

uint64_t specialized Preamble.shard<A>(_:nonce:seedBytes:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = BYTE6(a5);
  v95 = *MEMORY[0x277D85DE8];
  v12 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v12 != 2)
    {
      v19 = 0;
      goto LABEL_40;
    }

    v14 = *(a4 + 16);
    v13 = *(a4 + 24);
    v15 = __OFSUB__(v13, v14);
    v16 = v13 - v14;
    if (v15)
    {
      goto LABEL_89;
    }

    if (v16 != 64)
    {
      goto LABEL_13;
    }
  }

  else if (v12)
  {
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    if (HIDWORD(a4) - a4 != 64)
    {
      goto LABEL_13;
    }
  }

  else if (BYTE6(a5) != 64)
  {
LABEL_13:
    if (v12 != 2)
    {
      if (v12 != 1)
      {
        v19 = BYTE6(a5);
        goto LABEL_40;
      }

      if (!__OFSUB__(HIDWORD(a4), a4))
      {
        v19 = HIDWORD(a4) - a4;
LABEL_40:
        lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
        swift_allocError();
        *(v40 + 8) = 0;
        *(v40 + 16) = 0;
        *v40 = v19;
        *(v40 + 24) = 1;
        swift_willThrow();
        return v9;
      }

      goto LABEL_91;
    }

    v21 = *(a4 + 16);
    v20 = *(a4 + 24);
    v19 = v20 - v21;
    if (!__OFSUB__(v20, v21))
    {
      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_22;
  }

  v87 = a2;
  v88 = a6;
  v85 = a1;
  v86 = a7;
  v7 = v8;
  if (!v12)
  {
    v17 = specialized RandomAccessCollection<>.index(_:offsetBy:)(0, 32, a4, a5);
    v18 = 0;
    goto LABEL_23;
  }

  if (v12 == 2)
  {
    v17 = specialized RandomAccessCollection<>.index(_:offsetBy:)(*(a4 + 16), 32, a4, a5);
    v18 = *(a4 + 16);
    goto LABEL_23;
  }

LABEL_22:
  v17 = specialized RandomAccessCollection<>.index(_:offsetBy:)(a4, 32, a4, a5);
  v18 = a4;
LABEL_23:
  if (v17 < v18)
  {
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v22 = Data._Representation.subscript.getter();
  v23 = MEMORY[0x277CC9318];
  v9 = MEMORY[0x277CC9300];
  v93 = MEMORY[0x277CC9318];
  v94 = MEMORY[0x277CC9300];
  *&v92 = v22;
  *(&v92 + 1) = v24;
  v25 = __swift_project_boxed_opaque_existential_1(&v92, MEMORY[0x277CC9318]);
  v26 = *v25;
  v27 = v25[1];
  v28 = v27 >> 62;
  if ((v27 >> 62) > 1)
  {
    if (v28 != 2)
    {
      memset(v89, 0, 14);
      v29 = v89;
      goto LABEL_54;
    }

    v30 = *(v26 + 16);
    v82 = *(v26 + 24);
    v31 = __DataStorage._bytes.getter();
    if (v31)
    {
      v32 = __DataStorage._offset.getter();
      if (__OFSUB__(v30, v32))
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v31 += v30 - v32;
    }

    v15 = __OFSUB__(v82, v30);
    v33 = v82 - v30;
    if (v15)
    {
      goto LABEL_93;
    }

    v34 = MEMORY[0x2743B2250]();
    if (v34 >= v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = v34;
    }

    v36 = (v35 + v31);
    if (v31)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v38 = v31;
    v39 = v7;
LABEL_52:
    closure #1 in Data.init<A>(_:)(v38, v37, &v90);
    v7 = v39;
    v23 = MEMORY[0x277CC9318];
    v9 = MEMORY[0x277CC9300];
    goto LABEL_55;
  }

  if (v28)
  {
    v83 = v7;
    v41 = v26;
    v42 = v26 >> 32;
    v43 = v42 - v41;
    if (v42 < v41)
    {
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v44 = __DataStorage._bytes.getter();
    if (v44)
    {
      v45 = __DataStorage._offset.getter();
      if (__OFSUB__(v41, v45))
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v44 += v41 - v45;
    }

    v46 = MEMORY[0x2743B2250]();
    if (v46 >= v43)
    {
      v47 = v43;
    }

    else
    {
      v47 = v46;
    }

    v48 = (v47 + v44);
    if (v44)
    {
      v37 = v48;
    }

    else
    {
      v37 = 0;
    }

    v38 = v44;
    v39 = v83;
    goto LABEL_52;
  }

  v89[0] = *v25;
  LOWORD(v89[1]) = v27;
  BYTE2(v89[1]) = BYTE2(v27);
  BYTE3(v89[1]) = BYTE3(v27);
  BYTE4(v89[1]) = BYTE4(v27);
  BYTE5(v89[1]) = BYTE5(v27);
  v29 = v89 + BYTE6(v27);
LABEL_54:
  closure #1 in Data.init<A>(_:)(v89, v29, &v90);
LABEL_55:
  v50 = v90;
  v49 = v91;
  __swift_destroy_boxed_opaque_existential_1(&v92);
  if (v12 == 2)
  {
    v51 = *(a4 + 24);
  }

  else if (v12 == 1)
  {
    v51 = a4 >> 32;
  }

  else
  {
    v51 = v10;
  }

  if (v51 < v17)
  {
    goto LABEL_88;
  }

  v52 = Data._Representation.subscript.getter();
  v93 = v23;
  v94 = v9;
  *&v92 = v52;
  *(&v92 + 1) = v53;
  v54 = __swift_project_boxed_opaque_existential_1(&v92, v23);
  v55 = *v54;
  v56 = v54[1];
  v57 = v56 >> 62;
  if ((v56 >> 62) <= 1)
  {
    if (!v57)
    {
      v89[0] = *v54;
      LOWORD(v89[1]) = v56;
      BYTE2(v89[1]) = BYTE2(v56);
      BYTE3(v89[1]) = BYTE3(v56);
      BYTE4(v89[1]) = BYTE4(v56);
      BYTE5(v89[1]) = BYTE5(v56);
      v58 = v89 + BYTE6(v56);
      v59 = v89;
      goto LABEL_83;
    }

    goto LABEL_71;
  }

  if (v57 == 2)
  {
    v60 = *(v55 + 16);
    v61 = *(v55 + 24);
    v9 = __DataStorage._bytes.getter();
    if (v9)
    {
      v62 = __DataStorage._offset.getter();
      v55 = v60 - v62;
      if (__OFSUB__(v60, v62))
      {
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
      }

      v9 += v55;
    }

    v15 = __OFSUB__(v61, v60);
    v63 = v61 - v60;
    if (!v15)
    {
LABEL_75:
      v67 = MEMORY[0x2743B2250]();
      if (v67 >= v63)
      {
        v68 = v63;
      }

      else
      {
        v68 = v67;
      }

      v69 = (v68 + v9);
      if (v9)
      {
        v58 = v69;
      }

      else
      {
        v58 = 0;
      }

      v59 = v9;
      goto LABEL_83;
    }

    __break(1u);
LABEL_71:
    v64 = v55;
    v65 = v55 >> 32;
    v63 = v65 - v64;
    if (v65 < v64)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v9 = __DataStorage._bytes.getter();
    if (v9)
    {
      v66 = __DataStorage._offset.getter();
      if (__OFSUB__(v64, v66))
      {
        goto LABEL_98;
      }

      v9 += v64 - v66;
    }

    goto LABEL_75;
  }

  memset(v89, 0, 14);
  v59 = v89;
  v58 = v89;
LABEL_83:
  closure #1 in Data.init<A>(_:)(v59, v58, &v90);
  v71 = v90;
  v70 = v91;
  __swift_destroy_boxed_opaque_existential_1(&v92);
  outlined copy of Data._Representation(v50, v49);
  v72 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v50, v49);
  _s4VDAF18PreambleInputShareV4fromACyxGqd___tKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SayAGGTt1g5(v72, &v92);
  if (v7)
  {
    outlined consume of Data._Representation(v50, v49);
    outlined consume of Data._Representation(v71, v70);
  }

  else
  {
    v73 = v92;
    outlined copy of Data._Representation(v71, v70);
    v74 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v71, v70);
    _s4VDAF18PreambleInputShareV4fromACyxGqd___tKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SayAGGTt1g5(v74, &v92);
    v81 = v92;
    v84 = v73;
    v75 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA8PreambleVyAA7Field32Vs5Int32VAA19XofHmacSha256Aes128CG_Tt0B5Tm(0, 0, 118554623);

    v77 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v76);
    v79 = v78;

    specialized DPFGenerator.generate<A>(for:seedForParty0:seedForParty1:using:)(v87, v50, v49, v71, v70, v77, v79, v88, &v92, v86, v75);

    outlined consume of Data._Representation(v77, v79);
    *v85 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF18PreambleInputShareVyAC19XofHmacSha256Aes128CGGMd, &_ss23_ContiguousArrayStorageCy4VDAF18PreambleInputShareVyAC19XofHmacSha256Aes128CGGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_270C44550;
    *(v9 + 32) = v84;
    *(v9 + 40) = v81;
    outlined consume of Data._Representation(v71, v70);
    outlined consume of Data._Representation(v50, v49);
  }

  return v9;
}

char *Preamble<>.shardAndEncodeIntoBytes(_:nonce:seedBytes:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v12 = *v5;
  v13 = v5[1];
  outlined copy of Data._Representation(a2, a3);
  v14 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a2, a3);
  v15 = specialized Preamble.shard<A>(_:nonce:seedBytes:)(&v36, a1, v14, a4, a5, v12, v13);

  if (v6)
  {
    return a4;
  }

  v17 = *(&v36 + 1);
  v16 = v36;
  v18 = specialized PreamblePublicShare.encodedLength.getter(v36, *(&v36 + 1));
  v19 = MEMORY[0x277D84F90];
  *&v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 & ~(v18 >> 63), 0, MEMORY[0x277D84F90]);
  specialized PreamblePublicShare.encode<A>(into:)(&v36, v16, v17);

  a4 = v36;
  v20 = *(v15 + 16);
  if (!v20)
  {

    return a4;
  }

  v37 = v36;
  *&v36 = v19;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
  v21 = 32;
  v22 = v36;
  while (1)
  {
    v23 = *(v15 + v21);
    v24 = *(v23 + 16);

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0, v19);
    v26 = *(v23 + 16);
    v27 = *(result + 2);
    v28 = v27 + v26;
    if (__OFADD__(v27, v26))
    {
      break;
    }

    v29 = result;
    if (v28 > *(result + 3) >> 1)
    {
      if (v27 <= v28)
      {
        v33 = v27 + v26;
      }

      else
      {
        v33 = *(result + 2);
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v33, 1, result);
      v29 = result;
      v27 = *(result + 2);
      if (*(v23 + 16))
      {
LABEL_7:
        if (((*(v29 + 3) >> 1) - v27) < v26)
        {
          goto LABEL_24;
        }

        memcpy(&v29[v27 + 32], (v23 + 32), v26);

        if (v26)
        {
          v30 = *(v29 + 2);
          v31 = __OFADD__(v30, v26);
          v32 = v30 + v26;
          if (v31)
          {
            goto LABEL_25;
          }

          *(v29 + 2) = v32;
        }

        goto LABEL_16;
      }
    }

    else if (v26)
    {
      goto LABEL_7;
    }

    if (v26)
    {
      goto LABEL_23;
    }

LABEL_16:
    *&v36 = v22;
    v35 = *(v22 + 16);
    v34 = *(v22 + 24);
    if (v35 >= v34 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
      v22 = v36;
    }

    *(v22 + 16) = v35 + 1;
    *(v22 + 8 * v35 + 32) = v29;
    v21 += 8;
    if (!--v20)
    {

      return v37;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t *Preamble<>.encodedAggregateShare(_:)(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2 >> 61)
  {
    __break(1u);
  }

  else
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4 * v2, 0, MEMORY[0x277D84F90]);
    specialized Collection<>.encode<A>(into:)(&v3, v1);
    return v3;
  }

  return result;
}

uint64_t Preamble<>.unshardAndEncodeIntoBytes(_:numOfMeasurements:)(void *a1)
{
  result = _s4VDAF8PreambleV7unshard_17numOfMeasurements9parameterSayq_Gqd___SiAA11VoidCodableVtKSkRd__AA14AggregateShareVyxG7ElementRtd__lFAA7Field32V_s5Int32VAA19XofHmacSha256Aes128CSayAKyAPGGTt1B5Tf4ndn_n(a1, *v1);
  if (!v2)
  {
    v4 = specialized VDAFEncodable.encodedBytes.getter();

    return v4;
  }

  return result;
}

uint64_t Preamble<>.prepareInitAndEncodeIntoBytes(verifyKey:aggregatorID:nonce:encodedPublicShare:encodedInputShare:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, _BYTE *a6, _BYTE *a7, _OWORD *a8, unint64_t a9)
{
  v17 = *v9;
  v16 = v9[1];
  v18 = v9[2];
  outlined copy of Data._Representation(a1, a2);
  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a1, a2);

  outlined copy of Data._Representation(a4, a5);
  result = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a4, a5);
  v20 = 63 - __clz(v16);
  v21 = v17 - v20;
  if (__OFSUB__(v17, v20))
  {
    __break(1u);
    goto LABEL_11;
  }

  v22 = result;
  v23 = v17;
  v52[0] = v18;
  v52[1] = 32;
  v52[2] = v16;
  v52[3] = v17 - v20;
  v53 = 0;
  _s4VDAF19PreamblePublicShareV4from9parameterACyxGqd___AA0bcD18DecodableParameterVSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_SWTt2B5(a6, a7, v52, v45);
  if (v44)
  {
LABEL_6:

    return v16;
  }

  v24 = v45[0];
  v25 = v45[1];
  _s4VDAF18PreambleInputShareV4fromACyxGqd___tKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt1g5(a8, a9, &v54);
  if (a3 >= 2)
  {

    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v38 = v35;
    *(v38 + 8) = v37;
    *(v38 + 16) = 0;
    swift_willThrow();
    goto LABEL_6;
  }

  v26 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA8PreambleVyAA7Field32Vs5Int32VAA19XofHmacSha256Aes128CG_Tt0B5Tm(0, 0, 118554623);
  v46[0] = a3;
  v47 = v23;
  v48 = v18;
  v49 = v16;
  v50 = v21;
  v51 = v26;

  v28 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v27);
  v30 = v29;

  v31 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v22);
  v33 = v32;

  v34 = specialized DPFEvaluator.evaluateAllInternal(seed:nonce:innerCorrections:untilLevel:)(v28, v30, v31, v33, v24, 0, 1uLL);
  v39 = specialized DPFEvaluator.evaluateLeaves(inputs:nonce:leafCorrections:)(v34, v31, v33, v25);
  outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v46, &_s4VDAF12DPFEvaluatorVyAA7Field32VAA19XofHmacSha256Aes128CGMd, &_s4VDAF12DPFEvaluatorVyAA7Field32VAA19XofHmacSha256Aes128CGMR);
  outlined consume of Data._Representation(v31, v33);
  outlined consume of Data._Representation(v28, v30);

  v40 = *(v39 + 2);

  if (!(v40 >> 61))
  {
    v41 = MEMORY[0x277D84F90];
    v45[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4 * v40, 0, MEMORY[0x277D84F90]);
    specialized Collection<>.encode<A>(into:)(v45, v39);

    v16 = v45[0];
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0, v41);
    return v16;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t Preamble<>.encodedPrepareMessageFrom(encodedShares:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v7 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v7;
    v3 = *(v7 + 16);
    do
    {
      v8 = v2;
      v4 = *(v2 + 24);
      v5 = v3 + 1;
      if (v3 >= v4 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v3 + 1, 1);
        v2 = v8;
      }

      *(v2 + 16) = v5;
      v3 = v5;
      --v1;
    }

    while (v1);
  }

  return 0;
}

char *Preamble<>.prepareNextAndEncodeIntoBytes(aggregatorID:encodedState:encodedMessage:)(uint64_t a1, char *a2, _BYTE *a3)
{
  result = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_SWTt0g5(a2, a3);
  if (v3)
  {
    return v5;
  }

  v6 = *(result + 2);
  if (!(v6 >> 61))
  {
    v7 = result;
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4 * v6, 0, MEMORY[0x277D84F90]);
    specialized Collection<>.encode<A>(into:)(&v8, v7);

    return v8;
  }

  __break(1u);
  return result;
}

char *Preamble<>.outputShare(from:)@<X0>(char *a1@<X0>, _BYTE *a2@<X1>, char **a3@<X8>)
{
  result = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_SWTt0g5(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

char *_s4VDAF10LeafParentC04makeB7Parents17dimensionBitCount9blockSize4fromSayACyxGGSi_SiSDySiqd__GtKSzRd__lFZAA7Field32V_s5Int32VTt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v28 = MEMORY[0x277D84F98];
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  do
  {
    if (!v9)
    {
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v10)
        {
          goto LABEL_12;
        }

        v9 = *(v6 + 8 * v12);
        ++v11;
        if (v9)
        {
          v11 = v12;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    specialized closure #1 in static LeafParent.makeLeafParents<A>(dimensionBitCount:blockSize:from:)(&v28, *(*(a3 + 48) + 8 * (v13 | (v12 << 6))), *(*(a3 + 56) + 4 * (v13 | (v12 << 6))), a2);
  }

  while (!v3);
  MEMORY[0x2743B3440](v3);

  __break(1u);
LABEL_12:
  v27 = v3;

  v14 = v28;
  v15 = *(v28 + 2);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    goto LABEL_15;
  }

  v17 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi3key_Say4VDAF4LeafVyAG7Field32VGG5valuet_Tt1g5(*(v28 + 2), 0);
  v26 = specialized Sequence._copySequenceContents(initializing:)(&v28, v17 + 4, v15, v14);
  v18 = v28;

  outlined consume of [Int : [Leaf<Field32>]].Iterator._Variant(v18);
  if (v26 != v15)
  {
    __break(1u);
LABEL_15:
    v17 = v16;
  }

  v28 = v17;
  specialized MutableCollection<>.sort(by:)(&v28);
  v6 = v27;
  if (v27)
  {
    goto LABEL_25;
  }

  v19 = v28;
  v20 = *(v28 + 2);
  if (!v20)
  {

    return MEMORY[0x277D84F90];
  }

  v28 = v16;
  specialized ContiguousArray.reserveCapacity(_:)();
  v21 = 0;
  v22 = (v19 + 40);
  while (v21 < *(v19 + 2))
  {
    v23 = *(v22 - 1);
    v24 = *v22;
    swift_bridgeObjectRetain_n();
    _s4VDAF10LeafParentC17dimensionBitCount6prefix9blockSize6leavesACyxGSi_S2iSayAA0B0VyxGGtKcfCAA7Field32V_Tt3g5(v29, v23, a2, v24);

    ++v21;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v22 += 2;
    if (v20 == v21)
    {

      return v28;
    }
  }

LABEL_24:
  __break(1u);
LABEL_25:
  MEMORY[0x2743B3440](v6);

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in static LeafParent.makeLeafParents<A>(dimensionBitCount:blockSize:from:)(char **a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!a4)
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = a4;
  v7 = a2;
  if (a2 == 0x8000000000000000 && a4 == -1)
  {
    __break(1u);
LABEL_23:
    specialized _NativeDictionary.copy()();
    v5 = v24;
    *a1 = v24;
    if (v10)
    {
      goto LABEL_15;
    }

LABEL_14:
    specialized _NativeDictionary._insert(at:key:value:)(v9, v8, MEMORY[0x277D84F90], v5);
    goto LABEL_15;
  }

  if ((a3 & 0x80000000) == 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = a3 - 0xFFFFF;
  }

  v8 = a2 / a4;
  _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field32V_Tt1g5(v12, &v25);
  v4 = v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *a1;
  v24 = *a1;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7 / v6);
  v15 = *(v5 + 2);
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  LOBYTE(v10) = v14;
  if (*(v5 + 3) >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *a1 = v5;
      if (v14)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_23;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
  v5 = v24;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v7 / v6);
  if ((v10 & 1) != (v19 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v9 = v18;
  *a1 = v24;
  if ((v10 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  v10 = *(v5 + 7);
  v5 = *(v10 + 8 * v9);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 8 * v9) = v5;
  if ((result & 1) == 0)
  {
LABEL_21:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *(v10 + 8 * v9) = result;
  }

  v22 = *(v5 + 2);
  v21 = *(v5 + 3);
  if (v22 >= v21 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v5);
    v5 = result;
    *(v10 + 8 * v9) = result;
  }

  *(v5 + 2) = v22 + 1;
  v23 = &v5[16 * v22];
  *(v23 + 4) = v7 - v8 * v6;
  *(v23 + 10) = v4;
  return result;
}

uint64_t specialized Sequence<>.max()(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 48);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (result <= v16)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(a1 + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

unint64_t specialized DPFGenerator.generate<A>(for:seedForParty0:seedForParty1:using:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char **a9@<X8>, uint64_t a10, uint64_t a11)
{
  v21 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v21)
    {
      v22 = BYTE6(a3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v21 != 2)
  {
    v22 = 0;
    goto LABEL_11;
  }

  v24 = a2[2];
  v23 = a2[3];
  v25 = __OFSUB__(v23, v24);
  v22 = v23 - v24;
  if (v25)
  {
    __break(1u);
LABEL_8:
    LODWORD(v22) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
      goto LABEL_59;
    }

    v22 = v22;
  }

LABEL_11:
  v26 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v26 != 2)
    {
      if (!v22)
      {
        goto LABEL_18;
      }

LABEL_24:
      lazy protocol witness table accessor for type GeneratorError and conformance GeneratorError();
      swift_allocError();
      *v31 = xmmword_270C44F50;
      goto LABEL_25;
    }

    v28 = a4[2];
    v27 = a4[3];
    v25 = __OFSUB__(v27, v28);
    v29 = v27 - v28;
    if (!v25)
    {
      if (v22 == v29)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v26)
  {
    if (!__OFSUB__(HIDWORD(a4), a4))
    {
      if (v22 != HIDWORD(a4) - a4)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v22 != BYTE6(a5))
  {
    goto LABEL_24;
  }

LABEL_18:
  v19 = a6;
  v18 = a7;
  v14 = v13;
  v17 = a2;
  v12 = a3;
  v16 = a4;
  v15 = a5;
  v60 = a9;
  v11 = a1;
  a1 = specialized Sequence<>.max()(a1);
  if (v30)
  {
    lazy protocol witness table accessor for type GeneratorError and conformance GeneratorError();
    swift_allocError();
    *v31 = 0;
    *(v31 + 8) = 0;
LABEL_25:
    *(v31 + 16) = 1;
    return swift_willThrow();
  }

  if (a8 >= -64)
  {
    if (a8 > 64)
    {
      goto LABEL_32;
    }

    if ((a8 & 0x8000000000000000) == 0)
    {
      if (a8 == 64)
      {
LABEL_32:
        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_38;
      }

      v35 = 1 << a8;
LABEL_37:
      if (a1 >= v35)
      {
        goto LABEL_30;
      }

      goto LABEL_38;
    }

LABEL_61:
    if (a8 == -64)
    {
      goto LABEL_29;
    }

    v35 = 0;
    v13 = v14;
    goto LABEL_37;
  }

LABEL_29:
  v13 = v14;
  if ((a1 & 0x8000000000000000) == 0)
  {
LABEL_30:
    v33 = a1;
    lazy protocol witness table accessor for type GeneratorError and conformance GeneratorError();
    swift_allocError();
    *v34 = v33;
    *(v34 + 8) = a8;
    *(v34 + 16) = 0;
    return swift_willThrow();
  }

LABEL_38:
  result = _s4VDAF10LeafParentC04makeB7Parents17dimensionBitCount9blockSize4fromSayACyxGGSi_SiSDySiqd__GtKSzRd__lFZAA7Field32V_s5Int32VTt2g5(a8, a10, v11);
  if (!v13)
  {
    v59 = result;
    if (result >> 62)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        v55 = result;
      }

      else
      {
        v55 = result & 0xFFFFFFFFFFFFFF8;
      }

      v37 = MEMORY[0x2743B2FD0](v55);
      v56 = v55;
      v36 = v59;
      result = MEMORY[0x2743B2FD0](v56);
    }

    else
    {
      v36 = result;
      result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      v37 = result;
    }

    if (result)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        goto LABEL_68;
      }

      if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v63 = *(*(v36 + 32) + 32);
    }

    else
    {

      v63 = 0;
    }

    while (1)
    {
      outlined copy of Data._Representation(v17, v12);
      v70 = _sSa9repeating5countSayxGx_SitcfC10Foundation4DataV_Tt1g5Tf4gn_n(v17, v12, v37);
      outlined consume of Data._Representation(v17, v12);
      outlined copy of Data._Representation(v16, v15);
      v17 = _sSa9repeating5countSayxGx_SitcfC10Foundation4DataV_Tt1g5Tf4gn_n(v16, v15, v37);
      outlined consume of Data._Representation(v16, v15);
      v38 = makeClientRootCtrls(_:)(v37);
      v12 = v63;
      if ((v63 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_68:

      v63 = *(MEMORY[0x2743B2D10](0, v36) + 32);
      swift_unknownObjectRelease();
    }

    v40 = v39;
    v57 = v19;
    v58 = v18;
    v41 = a11;
    if (v63)
    {
      v42 = 0;
      v43 = MEMORY[0x277D84F90];
      v44 = v39;
      v45 = v38;
      v46 = v17;
      v47 = v70;
      do
      {
        specialized InnerCorrectionCalculator.generate(at:with:using:)(v42, v47, v46, v45, v44, v57, v58, v59, &v65, v41);
        v61 = v65;
        v70 = v66;
        v48 = v69;
        v62 = v68;
        v64 = v67;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 2) + 1, 1, v43);
        }

        v50 = *(v43 + 2);
        v49 = *(v43 + 3);
        v41 = a11;
        if (v50 >= v49 >> 1)
        {
          v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v43);
          v40 = v48;
          v41 = a11;
          v43 = v53;
        }

        else
        {
          v40 = v48;
        }

        ++v42;
        *(v43 + 2) = v50 + 1;
        *&v43[16 * v50 + 32] = v61;
        v44 = v40;
        v51 = v64;
        v45 = v62;
        v46 = v64;
        v52 = v70;
        v47 = v70;
      }

      while (v12 != v42);
    }

    else
    {
      v43 = MEMORY[0x277D84F90];
      v52 = v70;
      v51 = v17;
    }

    v54 = specialized LeafCorrectionCalculator.calculate(seedsParty0:seedsParty1:nonce:ctrlParty1:)(v52, v51, v57, v58, v40, a10, v59, v41);

    *v60 = v43;
    v60[1] = v54;
  }

  return result;
}

uint64_t specialized LeafCorrectionCalculator.calculate(seedsParty0:seedsParty1:nonce:ctrlParty1:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  if ((a6 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a7 >> 62)
  {
LABEL_14:
    v8 = a2;
    v9 = result;
    v10 = a7;
    if ((a7 & 0x8000000000000000) != 0)
    {
      v32 = a7;
    }

    else
    {
      v32 = a7 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x2743B2FD0](v32);
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_19;
  }

  v11 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a7; v11; i = v10)
  {
    if (v11 > *(result + 16))
    {
LABEL_19:
      __break(1u);
    }

    else if (v11 <= *(a2 + 16))
    {
      v12 = (a2 + 40);
      v13 = (result + 40);
      v14 = MEMORY[0x277D84F90];
      do
      {
        v15 = *(v13 - 1);
        v16 = *v13;
        outlined copy of Data._Representation(v15, *v13);
        v17 = _s4VDAF4SeedV4from9parameterACx_ytSgtcSkRzs5UInt8V7ElementRtzlufC10Foundation4DataV_Tt1g5Tf4nd_n(v15, v16);
        outlined copy of Data._Representation(a3, a4);
        v18 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
        v19 = _s4VDAF31BatchedExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binder10generatingxAA4SeedV_Says5UInt8VGAMSitFZAA19XofHmacSha256Aes128C_Tt3g5(v17, a8, v18, a6);

        v20 = *(v12 - 1);
        v21 = *v12;
        outlined copy of Data._Representation(v20, *v12);
        v22 = _s4VDAF4SeedV4from9parameterACx_ytSgtcSkRzs5UInt8V7ElementRtzlufC10Foundation4DataV_Tt1g5Tf4nd_n(v20, v21);
        outlined copy of Data._Representation(a3, a4);
        v23 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
        v24 = _s4VDAF31BatchedExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binder10generatingxAA4SeedV_Says5UInt8VGAMSitFZAA19XofHmacSha256Aes128C_Tt3g5(v22, a8, v23, a6);

        v25 = _s4VDAF12FieldElementPAAE19randomVectorBatched5count5usingSayxGSi_qd__tAA0F24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(a6, v19);
        v26 = v14;
        v27 = _s4VDAF12FieldElementPAAE19randomVectorBatched5count5usingSayxGSi_qd__tAA0F24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(a6, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
        }

        v29 = v26[2];
        v28 = v26[3];
        v14 = v26;
        v30 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v14);
        }

        v12 += 2;
        v13 += 2;

        v14[2] = v30;
        v31 = &v14[2 * v29];
        v31[4] = v25;
        v31[5] = v27;
        --v11;
      }

      while (v11);
      goto LABEL_23;
    }

    __break(1u);
LABEL_21:
    v11 = result;
    result = v9;
    a2 = v8;
  }

  v14 = MEMORY[0x277D84F90];
  v30 = *(MEMORY[0x277D84F90] + 16);
  v33 = MEMORY[0x277D84F90];
  if (!v30)
  {
LABEL_66:

    return v33;
  }

LABEL_23:
  v34 = 0;
  v58 = v14 + 4;
  v57 = v30;
  v33 = MEMORY[0x277D84F90];
  v60 = v14;
  while (1)
  {
    if (v34 >= v14[2])
    {
      goto LABEL_78;
    }

    v35 = &v58[2 * v34];
    v67 = *v35;
    v65 = v35[1];
    if ((i & 0xC000000000000001) != 0)
    {

      v36 = MEMORY[0x2743B2D10](v34, i);
    }

    else
    {
      if (v34 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_79;
      }

      v36 = *(i + 32 + 8 * v34);
    }

    v59 = v33;
    v37 = *(v36 + 24);

    v38 = *(v37 + 16);
    if (v38)
    {
      break;
    }

    v40 = MEMORY[0x277D84F90];
LABEL_59:

    v33 = v59;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59[2] + 1, 1, v59);
      v33 = result;
    }

    v14 = v60;
    v54 = v33[2];
    v53 = v33[3];
    v55 = v57;
    if (v54 >= v53 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v33);
      v55 = v57;
      v33 = result;
    }

    ++v34;
    v33[2] = v54 + 1;
    v33[v54 + 4] = v40;
    if (v34 == v55)
    {
      goto LABEL_66;
    }
  }

  v39 = 0;
  v40 = MEMORY[0x277D84F90];
  while (v39 < *(v37 + 16))
  {
    if (v34 >= *(a5 + 16))
    {
      goto LABEL_68;
    }

    v41 = *(a5 + 32 + 8 * v34);
    if (v34 >= *(v41 + 16))
    {
      goto LABEL_69;
    }

    if (v39 >= *(v67 + 16))
    {
      goto LABEL_70;
    }

    v42 = *(v37 + 32 + 4 * v39);
    v43 = *(v41 + v34 + 32);
    v44 = *(v67 + 32 + 4 * v39);
    v45 = v42 - v44;
    if (v42 < v44)
    {
      v46 = v44 <= 0xFFF00001;
      v47 = -1048575 - v44;
      if (!v46)
      {
        goto LABEL_73;
      }

      v45 = v42 + v47;
      if (__CFADD__(v42, v47))
      {
        goto LABEL_74;
      }
    }

    if (v39 >= *(v65 + 16))
    {
      goto LABEL_71;
    }

    v48 = *(v65 + 32 + 4 * v39);
    if (v48)
    {
      v46 = v48 <= 0xFFF00001;
      v49 = -1048575 - v48;
      if (!v46)
      {
        goto LABEL_72;
      }

      if (v45 >= v49)
      {
        v45 -= v49;
        if ((v43 & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_49;
      }

      v46 = v49 <= 0xFFF00001;
      v50 = -1048575 - v49;
      if (!v46)
      {
        goto LABEL_75;
      }

      v46 = __CFADD__(v45, v50);
      v45 += v50;
      if (v46)
      {
        goto LABEL_77;
      }
    }

    if ((v43 & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    if (v45)
    {
      v46 = v45 <= 0xFFF00001;
      v45 = -1048575 - v45;
      if (!v46)
      {
        goto LABEL_76;
      }
    }

LABEL_52:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 16) + 1, 1, v40);
      v40 = result;
    }

    v52 = *(v40 + 16);
    v51 = *(v40 + 24);
    if (v52 >= v51 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v40);
      v40 = result;
    }

    ++v39;
    *(v40 + 16) = v52 + 1;
    *(v40 + 4 * v52 + 32) = v45;
    if (v38 == v39)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
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
LABEL_79:
  __break(1u);
  return result;
}

uint64_t _s4VDAF18PreambleInputShareV4fromACyxGqd___tKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SayAGGTt1g5@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (*(result + 16) == 32)
  {
    *a2 = result;
  }

  else
  {

    _StringGuts.grow(_:)(24);

    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v2);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v3);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v4 = 0xD000000000000032;
    v4[1] = 0x8000000270C524C0;
    return swift_willThrow();
  }

  return result;
}

void *_s4VDAF18PreambleInputShareV4fromACyxGqd___tKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt1g5@<X0>(_OWORD *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1 && a2 - a1 == 32)
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(32, 0);
    if (a2 <= a1)
    {
      __break(1u);
    }

    else
    {
      v7 = a1[1];
      *(result + 2) = *a1;
      *(result + 3) = v7;
      *a3 = result;
    }
  }

  else
  {
    _StringGuts.grow(_:)(24);

    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v10 = 0xD000000000000032;
    v10[1] = 0x8000000270C524C0;
    return swift_willThrow();
  }

  return result;
}

uint64_t _s4VDAF19PreamblePublicShareV4from9parameterACyxGqd___AA0bcD18DecodableParameterVSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_SWTt2B5@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a3 + 32))
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v9 = 0;
    v9[1] = 0;
    return swift_willThrow();
  }

  v47 = v5;
  v12 = *a3;
  v11 = *(a3 + 8);
  v14 = *(a3 + 16);
  v13 = *(a3 + 24);
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v15 = v11 * v12;
  if ((v11 * v12) >> 64 != (v11 * v12) >> 63)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v12 + 0x4000000000000000 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = 2 * v12 + 7;
  if (__OFADD__(2 * v12, 7))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v16 < 0)
  {
    v16 = 2 * v12 + 14;
  }

  v17 = v16 >> 3;
  v18 = v12 * (v16 >> 3);
  if ((v12 * v17) >> 64 != v18 >> 63)
  {
    goto LABEL_30;
  }

  v6 = v15 + v18;
  if (__OFADD__(v15, v18))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = v13 * v6;
  if ((v13 * v6) >> 64 != (v13 * v6) >> 63)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v37 = v14;
  v19 = specialized Collection.prefix(_:)();
  v40 = v21;
  v41 = v20;
  v23 = v22;
  v4 = specialized Collection.dropFirst(_:)();
  v38 = v25;
  v39 = v24;
  v27 = v26;
  *&v42 = v12;
  *(&v42 + 1) = v11;
  v43 = 0;
  v44 = v13;
  v45 = v6;
  v46 = 0;

  v28 = v47;
  v29 = _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA16InnerCorrectionsV_s10ArraySliceVyANGTt1B5(v19, v41, v23, v40, &v42);
  v11 = v28;
  if (v28)
  {
    return swift_unknownObjectRelease();
  }

  v8 = v27;
  v14 = v39;
  v7 = v12;
  v12 = v29;
  v6 = v38;
  if (v38)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v32 = swift_dynamicCastClass();
    if (!v32)
    {
      swift_unknownObjectRelease();
      v32 = MEMORY[0x277D84F90];
    }

    v33 = *(v32 + 16);

    if (__OFSUB__(v38 >> 1, v8))
    {
      goto LABEL_34;
    }

    if (v33 != (v38 >> 1) - v8)
    {
      goto LABEL_35;
    }

    v6 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v31 = v37;
    if (v6)
    {
      goto LABEL_22;
    }

    v6 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v4, v14, v8, v6);
    v6 = v30;
    v31 = v37;
LABEL_21:
    swift_unknownObjectRelease();
LABEL_22:
    if ((v31 - 0x2000000000000000) >> 62 == 3)
    {
      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_unknownObjectRelease();
  }

  v34 = _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA22SiblingLeafCorrectionsVyAA7Field32VG_SayANGTt1g5(v6, 1, v7, 4 * v31, 0);
  if (v11)
  {

    return swift_unknownObjectRelease();
  }

  v35 = v34;
  result = swift_unknownObjectRelease();
  *a4 = v12;
  a4[1] = v35;
  return result;
}

unint64_t specialized closure #2 in Preamble.unshard<A>(_:numOfMeasurements:parameter:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X8>)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 32;
    while ((result & 0x8000000000000000) == 0)
    {
      if (*(*v5 + 16) <= result)
      {
        goto LABEL_19;
      }

      v6 = *(*v5 + 4 * result + 32);
      if (v6)
      {
        v7 = v6 <= 0xFFF00001;
        v8 = -1048575 - v6;
        if (!v7)
        {
          goto LABEL_20;
        }

        if (v4 >= v8)
        {
          v4 -= v8;
        }

        else
        {
          v7 = v8 <= 0xFFF00001;
          v9 = -1048575 - v8;
          if (!v7)
          {
            goto LABEL_21;
          }

          v7 = __CFADD__(v4, v9);
          v4 += v9;
          if (v7)
          {
            __break(1u);
LABEL_16:
            *a3 = v4;
            return result;
          }
        }
      }

      v5 += 8;
      if (!--v3)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

unint64_t specialized DPFEvaluator.evaluateAllInternal(seed:nonce:innerCorrections:untilLevel:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, Swift::Int a6, unint64_t a7)
{
  v9 = v8;
  v14 = *v7;
  v15 = *(v7 + 2);
  v16 = *_emptyDequeStorage.unsafeMutableAddressor();
  v157 = v16;
  LOBYTE(v149[0]) = v14;

  v123 = v15;
  v17 = specialized static EvaluatorLevelInput.makeRootInput(for:keptBlockCount:seed:)(v149, v15, a1, a2);
  v134 = v18;
  v135 = v19;
  v136 = v20;
  v21 = v16[3];
  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    goto LABEL_143;
  }

  v23 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v16[2] < v22 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized Deque._Storage._ensureUnique(isUnique:minimumCapacity:linearGrowth:)(isUniquelyReferenced_nonNull_native, v22, 0);
    v16 = v157;
  }

  specialized closure #1 in Deque.append(_:)(v16 + 2, (v16 + 5), v23, v134, v135, v136);
  if (a7)
  {
    a6 = *(v132 + 32);
  }

  if (a6 > -65 && a6 <= 64)
  {
    if (a6 < 0)
    {
      goto LABEL_157;
    }

    if (a6 != 64)
    {
      v25 = 1 << a6;
      goto LABEL_15;
    }
  }

  a6 = v16[3];
  if (a6 < 0)
  {
    v25 = 0;
    if (a6 >= 1)
    {
      goto LABEL_17;
    }

LABEL_117:
    lazy protocol witness table accessor for type EvaluatorError and conformance EvaluatorError();
    swift_allocError();
    *v110 = 0;
    *(v110 + 8) = 0;
    *(v110 + 16) = -64;
    swift_willThrow();
    outlined consume of Data._Representation(v134, v135);
  }

  else
  {
LABEL_129:

    if (a6)
    {
      a7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(a7 + 16) = a6;
    }

    else
    {
      a7 = MEMORY[0x277D84F90];
    }

    v150 = 0;
    v149[0] = a7 + 32;
    v149[1] = a6;
    specialized closure #1 in closure #1 in Deque._copyToContiguousArray()(v16 + 2, (v16 + 5), v149, &v150);
    if (a6 < v150)
    {
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        if (a6 == -64)
        {
LABEL_162:
          a6 = v16[3];
          if ((a6 & 0x8000000000000000) == 0)
          {
            goto LABEL_129;
          }

          v25 = 0;
          if (a6 < 1)
          {
            goto LABEL_117;
          }
        }

        else
        {
          v25 = 0;
LABEL_15:
          a6 = v16[3];
          if (a6 >= v25)
          {
            goto LABEL_128;
          }

          if (a6 < 1)
          {
            goto LABEL_117;
          }
        }

LABEL_17:
        v118 = *(v132 + 40);
        v117 = v25;
        while (1)
        {
          v16 = v157;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized Deque._Storage._makeUniqueCopy()();
            v16 = v157;
          }

          v26 = v16[4];
          v27 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          v28 = &v16[4 * v26];
          v29 = v28[5];
          v30 = v28[6];
          v31 = v28[7];
          a7 = v28[8];
          v32 = v16[3];
          if (v27 >= v16[2])
          {
            v27 = 0;
          }

          v16[4] = v27;
          if (__OFSUB__(v32, 1))
          {
            goto LABEL_147;
          }

          v121 = v16;
          v122 = v29;
          v16[3] = v32 - 1;
          outlined copy of Data._Representation(v30, v31);
          a6 = a3;
          v16 = a4;
          outlined copy of Data._Representation(a3, a4);
          outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(v132, v149, &_s4VDAF12DPFEvaluatorVyAA7Field32VAA19XofHmacSha256Aes128CGMd, &_s4VDAF12DPFEvaluatorVyAA7Field32VAA19XofHmacSha256Aes128CGMR);
          specialized SeedCtrlUnadjusted.init(from:doubling:using:for:)(v30, v31, v123, a3, a4, v118, &v151);
          outlined consume of Data._Representation(a3, a4);
          v119 = v30;
          v120 = v31;
          outlined consume of Data._Representation(v30, v31);
          if ((v122 & 0x8000000000000000) != 0)
          {
            goto LABEL_148;
          }

          if (v122 >= *(a5 + 16))
          {
            goto LABEL_149;
          }

          v148 = v9;
          v34 = v153;
          v33 = v154;
          v35 = v155;
          v9 = v156;
          v36 = *(a7 + 16);
          v143 = v156;
          v144 = v151;
          v145 = v152;
          if (v36)
          {
            v37 = (a5 + 32 + 16 * v122);
            v16 = *v37;
            v38 = v37[1];
            v141 = a7 + 32;
            outlined copy of Data._Representation(v151, v152);
            outlined copy of Data._Representation(v34, v33);
            v130 = v38 & 0xC000000000000001;
            v131 = v16 + 4;
            v129 = v38 & 0xFFFFFFFFFFFFFF8;

            v142 = v16;

            v116 = v38;

            a6 = 0;
            v128 = a7;
            v126 = v36;
            while (1)
            {
              if (a6 >= *(a7 + 16))
              {
                goto LABEL_139;
              }

              if (*(v141 + a6) == 1)
              {
                v138 = v35;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_270C44550;
                *(inited + 32) = v144;
                v16 = (inited + 32);
                *(inited + 40) = v145;
                if (a6 >= v142[2])
                {
                  goto LABEL_140;
                }

                v9 = &v131[2 * a6];
                a7 = *v9;
                v40 = v9[1];
                *(inited + 48) = *v9;
                *(inited + 56) = v40;
                outlined copy of Data._Representation(v144, v145);
                outlined copy of Data._Representation(a7, v40);
                Array<A>.xor.getter(inited);
                if (v148)
                {
                  outlined consume of Data._Representation(v134, v135);

                  outlined destroy of SeedCtrlUnadjusted(&v151);
                  outlined consume of Data._Representation(v119, v120);

                  swift_bridgeObjectRelease_n();
                  outlined consume of Data._Representation(v34, v33);
                  outlined consume of Data._Representation(v144, v145);
                  swift_setDeallocating();
                  swift_arrayDestroy();

                  return a7;
                }

                v43 = v41;
                a7 = v42;
                outlined consume of Data._Representation(v144, v145);
                swift_setDeallocating();
                swift_arrayDestroy();
                v44 = swift_initStackObject();
                *(v44 + 16) = xmmword_270C44550;
                *(v44 + 32) = v34;
                v16 = (v44 + 32);
                *(v44 + 40) = v33;
                v147 = a6;
                if (a6 >= v142[2])
                {
                  goto LABEL_141;
                }

                v45 = v44;
                v144 = v43;
                v145 = a7;
                v46 = *v9;
                v47 = v9[1];
                *(v44 + 48) = *v9;
                *(v44 + 56) = v47;
                outlined copy of Data._Representation(v34, v33);
                outlined copy of Data._Representation(v46, v47);
                Array<A>.xor.getter(v45);
                v9 = 0;
                a6 = v48;
                a7 = v49;
                outlined consume of Data._Representation(v34, v33);
                swift_setDeallocating();
                swift_arrayDestroy();
                v148 = 0;
                v133 = a6;
                if (v130)
                {
                  v51 = MEMORY[0x2743B2D10](v147, v116);
                  v50 = v138;
                }

                else
                {
                  v50 = v138;
                  if (v147 >= *(v129 + 16))
                  {
                    goto LABEL_142;
                  }
                }

                v137 = a7;
                v146 = v51;
                v52 = *(v51 + 16);
                if (*(v52 + 16) >= *(v50 + 16))
                {
                  v53 = *(v50 + 16);
                }

                else
                {
                  v53 = *(v52 + 16);
                }

                v149[0] = MEMORY[0x277D84F90];

                a6 = v50;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53, 0);
                v9 = v149[0];
                if (v53)
                {
                  a7 = 0;
                  v54 = *(v50 + 16);
                  v55 = v50 + 32;
                  v56 = v52 + 32;
                  v16 = v50;
                  v57 = v52;
                  while (v54 != a7)
                  {
                    if (a7 >= v16[2])
                    {
                      goto LABEL_120;
                    }

                    v58 = *(v57 + 16);
                    if (a7 == v58)
                    {
                      goto LABEL_121;
                    }

                    if (a7 >= v58)
                    {
                      goto LABEL_122;
                    }

                    v59 = *(v55 + a7);
                    v60 = *(v56 + a7);
                    v149[0] = v9;
                    a6 = v9[2];
                    v61 = v9[3];
                    if (a6 >= v61 >> 1)
                    {
                      v112 = v54;
                      v114 = v57;
                      v62 = v55;
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), a6 + 1, 1);
                      v55 = v62;
                      v54 = v112;
                      v57 = v114;
                      v16 = v138;
                      v9 = v149[0];
                    }

                    ++a7;
                    v9[2] = a6 + 1;
                    *(v9 + a6 + 32) = v59 ^ v60;
                    if (v53 == a7)
                    {
                      goto LABEL_52;
                    }
                  }

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
LABEL_125:
                  __break(1u);
LABEL_126:
                  __break(1u);
LABEL_127:
                  v9 = v148;
LABEL_128:
                  if (a6 < 0)
                  {
                    goto LABEL_145;
                  }

                  goto LABEL_129;
                }

                v16 = v50;
                v57 = v52;
LABEL_52:
                v63 = v16[2];
                if (v53 != v63)
                {
                  a6 = (v16 + 4);
                  a7 = v57 + 32;
                  while (v53 < v63)
                  {
                    v74 = *(v57 + 16);
                    if (v53 == v74)
                    {
                      goto LABEL_53;
                    }

                    if (v53 >= v74)
                    {
                      goto LABEL_136;
                    }

                    v75 = *(a6 + v53);
                    v76 = *(a7 + v53);
                    v149[0] = v9;
                    v78 = v9[2];
                    v77 = v9[3];
                    if (v78 >= v77 >> 1)
                    {
                      v79 = v57;
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1);
                      v57 = v79;
                      v16 = v138;
                      v9 = v149[0];
                    }

                    ++v53;
                    v9[2] = v78 + 1;
                    *(v9 + v78 + 32) = v75 ^ v76;
                    v63 = v16[2];
                    if (v53 == v63)
                    {
                      goto LABEL_53;
                    }
                  }

                  __break(1u);
LABEL_136:
                  __break(1u);
                  goto LABEL_137;
                }

LABEL_53:

                a7 = *(v146 + 24);
                a6 = v143;
                if (*(a7 + 16) >= *(v143 + 16))
                {
                  v64 = *(v143 + 16);
                }

                else
                {
                  v64 = *(a7 + 16);
                }

                v149[0] = MEMORY[0x277D84F90];

                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64, 0);
                v16 = v149[0];
                if (v64)
                {
                  v65 = 0;
                  v66 = *(v143 + 16);
                  v67 = v143 + 32;
                  v68 = a7 + 32;
                  v69 = v143;
                  v70 = a7;
                  while (v66 != v65)
                  {
                    if (v65 >= *(v69 + 16))
                    {
                      goto LABEL_124;
                    }

                    v71 = *(v70 + 16);
                    if (v65 == v71)
                    {
                      goto LABEL_125;
                    }

                    if (v65 >= v71)
                    {
                      goto LABEL_126;
                    }

                    v72 = *(v67 + v65);
                    a7 = *(v68 + v65);
                    v149[0] = v16;
                    a6 = v16[2];
                    v73 = v16[3];
                    if (a6 >= v73 >> 1)
                    {
                      v139 = v70;
                      v113 = v67;
                      v115 = v66;
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), a6 + 1, 1);
                      v67 = v113;
                      v66 = v115;
                      v70 = v139;
                      v69 = v143;
                      v16 = v149[0];
                    }

                    ++v65;
                    v16[2] = a6 + 1;
                    *(v16 + a6 + 32) = v72 ^ a7;
                    if (v64 == v65)
                    {
                      goto LABEL_75;
                    }
                  }

                  goto LABEL_123;
                }

                v69 = v143;
                v70 = a7;
LABEL_75:
                v80 = *(v69 + 16);
                if (v64 != v80)
                {
                  a6 = v69 + 32;
                  a7 = v70 + 32;
                  while (v64 < v80)
                  {
                    v81 = *(v70 + 16);
                    if (v64 == v81)
                    {
                      goto LABEL_76;
                    }

                    if (v64 >= v81)
                    {
                      goto LABEL_138;
                    }

                    v82 = *(a6 + v64);
                    v83 = *(a7 + v64);
                    v149[0] = v16;
                    v85 = v16[2];
                    v84 = v16[3];
                    if (v85 >= v84 >> 1)
                    {
                      v140 = v70;
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1);
                      v70 = v140;
                      v69 = v143;
                      v16 = v149[0];
                    }

                    ++v64;
                    v16[2] = v85 + 1;
                    *(v16 + v85 + 32) = v82 ^ v83;
                    v80 = *(v69 + 16);
                    if (v64 == v80)
                    {
                      goto LABEL_76;
                    }
                  }

LABEL_137:
                  __break(1u);
LABEL_138:
                  __break(1u);
LABEL_139:
                  __break(1u);
LABEL_140:
                  __break(1u);
LABEL_141:
                  __break(1u);
LABEL_142:
                  __break(1u);
LABEL_143:
                  __break(1u);
                  goto LABEL_144;
                }

LABEL_76:

                v143 = v16;
                v34 = v133;
                v33 = v137;
                v35 = v9;
                a7 = v128;
                v36 = v126;
                a6 = v147;
              }

              else
              {
                v9 = v35;
              }

              if (++a6 == v36)
              {

                v35 = v9;
                goto LABEL_88;
              }
            }
          }

          outlined copy of Data._Representation(v151, v152);
          outlined copy of Data._Representation(v34, v33);

LABEL_88:
          v9 = (v122 + 1);
          if (__OFADD__(v122, 1))
          {
            goto LABEL_150;
          }

          v86 = v121[3];
          a6 = v86 + 1;
          if (__OFADD__(v86, 1))
          {
            goto LABEL_151;
          }

          v16 = v157;
          v87 = swift_isUniquelyReferenced_nonNull_native();
          if (v16[2] < a6 || (v87 & 1) == 0)
          {
            specialized Deque._Storage._ensureUnique(isUnique:minimumCapacity:linearGrowth:)(v87, a6, 0);
            v16 = v157;
          }

          v89 = v16[3];
          v88 = v16[4];
          v92 = __OFADD__(v88, v89);
          v90 = v88 + v89;
          if (v92)
          {
            goto LABEL_152;
          }

          if (v89 < 0)
          {
            if (v90 < 0)
            {
              v94 = v16[2];
              v92 = __OFADD__(v90, v94);
              v90 += v94;
              if (v92)
              {
                goto LABEL_160;
              }
            }
          }

          else
          {
            v91 = v16[2];
            v92 = __OFSUB__(v90, v91);
            v93 = v90 - v91;
            if (v93 < 0 == v92)
            {
              v90 = v93;
              if (v92)
              {
                __break(1u);
LABEL_159:
                __break(1u);
LABEL_160:
                __break(1u);
LABEL_161:
                __break(1u);
                goto LABEL_162;
              }
            }
          }

          v95 = &v16[4 * v90];
          v95[5] = v9;
          v95[6] = v144;
          v95[7] = v145;
          v95[8] = v35;
          v96 = v16[3];
          v92 = __OFADD__(v96, 1);
          v97 = v96 + 1;
          if (v92)
          {
            goto LABEL_153;
          }

          v16[3] = v97;
          a6 = v97 + 1;
          if (__OFADD__(v97, 1))
          {
            goto LABEL_154;
          }

          outlined copy of Data._Representation(v144, v145);

          v98 = swift_isUniquelyReferenced_nonNull_native();
          if (v16[2] < a6 || (v98 & 1) == 0)
          {
            specialized Deque._Storage._ensureUnique(isUnique:minimumCapacity:linearGrowth:)(v98, a6, 0);
            v16 = v157;
          }

          v100 = v16[3];
          v99 = v16[4];
          v92 = __OFADD__(v99, v100);
          v101 = v99 + v100;
          if (v92)
          {
            goto LABEL_155;
          }

          if (v100 < 0)
          {
            v105 = v143;
            if (v101 < 0)
            {
              v106 = v16[2];
              v92 = __OFADD__(v101, v106);
              v101 += v106;
              if (v92)
              {
                goto LABEL_161;
              }
            }
          }

          else
          {
            v102 = v16[2];
            v103 = __OFSUB__(v101, v102);
            v104 = v101 - v102;
            v105 = v143;
            if (v104 < 0 == v103)
            {
              v101 = v104;
              if (v103)
              {
                goto LABEL_159;
              }
            }
          }

          v107 = &v16[4 * v101];
          v107[5] = v9;
          v107[6] = v34;
          v107[7] = v33;
          v107[8] = v105;
          v108 = v16[3];
          v92 = __OFADD__(v108, 1);
          v109 = v108 + 1;
          if (v92)
          {
            goto LABEL_156;
          }

          v16[3] = v109;
          outlined copy of Data._Representation(v34, v33);

          outlined consume of Data._Representation(v144, v145);

          outlined destroy of SeedCtrlUnadjusted(&v151);
          outlined consume of Data._Representation(v119, v120);

          outlined consume of Data._Representation(v34, v33);

          a6 = v16[3];
          if (a6 >= v117)
          {
            goto LABEL_127;
          }

          v9 = v148;
          if (a6 < 1)
          {
            goto LABEL_117;
          }
        }
      }
    }

    *(a7 + 16) = v150;

    outlined consume of Data._Representation(v134, v135);
  }

  return a7;
}

char *specialized DPFEvaluator.evaluateLeaves(inputs:nonce:leafCorrections:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = v5;
  v80 = a3;
  v83 = a2;
  v75 = type metadata accessor for Data.Iterator();
  v10 = *(v75 - 8);
  result = MEMORY[0x28223BE20](v75);
  v74 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 2);
  v77 = a4;
  v14 = *(a4 + 16);
  if (v14 != v13)
  {
    lazy protocol witness table accessor for type EvaluatorError and conformance EvaluatorError();
    swift_allocError();
    *v59 = v13;
    *(v59 + 8) = v14;
    *(v59 + 16) = 2;
    swift_willThrow();
    return v6;
  }

  v15 = *(v4 + 3);
  v16 = *(a1 + 16);
  if ((v16 * v15) >> 64 != (v16 * v15) >> 63)
  {
    goto LABEL_83;
  }

  v17 = *v4;
  v73 = *(v4 + 5);
  v76 = v16;
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v16 * v15) & ~((v16 * v15) >> 63), 0, MEMORY[0x277D84F90]);
  if (!v76)
  {
    return v6;
  }

  v18 = 0;
  v72 = a1 + 32;
  v70 = (v10 + 8);
  v78 = v80 >> 62;
  v19 = __OFSUB__(HIDWORD(v83), v83);
  v66 = v19;
  v65 = HIDWORD(v83) - v83;
  v67 = BYTE6(v80);
  v68 = 4 * v15;
  v20 = v13;
  v71 = v13;
  v79 = v15;
  while (1)
  {
    v21 = (v72 + 32 * v18);
    result = v21[1];
    v22 = v21[2];
    v23 = v21[3];
    if (*(v23 + 16) != v20)
    {
      v60 = v21[1];
      outlined copy of Data._Representation(result, v21[2]);

      v61 = v20;
      v62 = *(v23 + 16);
      lazy protocol witness table accessor for type EvaluatorError and conformance EvaluatorError();
      swift_allocError();
      *v63 = v61;
      *(v63 + 8) = v62;
      *(v63 + 16) = -126;
      swift_willThrow();
      outlined consume of Data._Representation(v60, v22);

      return v6;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_73;
    }

    v82 = v18;
    v24 = *v21;
    v86 = result;
    outlined copy of Data._Representation(result, v22);
    v85 = v23;

    if (v15)
    {
      v25 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v25 + 16) = v15;
      bzero((v25 + 32), v68);
      v26 = v15;
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
      v26 = *(MEMORY[0x277D84F90] + 16);
    }

    v87[0] = (v25 + 32);
    v87[1] = v26;
    result = specialized closure #1 in DPFEvaluator.evaluateLeaves(inputs:nonce:leafCorrections:)(v87, v77, v24, v86, v22, v85);
    if (v15 >> 61)
    {
      break;
    }

    v27 = v22 >> 62;
    v84 = v22;
    v81 = v7;
    if ((v22 >> 62) > 1)
    {
      v28 = v78;
      result = v86;
      if (v27 != 2)
      {
        goto LABEL_28;
      }

      v31 = *(v86 + 2);
      v30 = *(v86 + 3);
      v29 = v30 - v31;
      if (__OFSUB__(v30, v31))
      {
        goto LABEL_80;
      }
    }

    else
    {
      v28 = v78;
      result = v86;
      if (!v27)
      {
        v29 = BYTE6(v22);
        if (!BYTE6(v22))
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      if (__OFSUB__(HIDWORD(v86), v86))
      {
        goto LABEL_79;
      }

      v29 = HIDWORD(v86) - v86;
    }

    outlined copy of Data._Representation(v86, v22);
    result = v86;
    if (!v29)
    {
LABEL_28:
      result = outlined consume of Data._Representation(result, v22);
      v34 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }

LABEL_26:
    if (v29 < 1)
    {
      v32 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v32 = swift_allocObject();
      v33 = _swift_stdlib_malloc_size(v32);
      v32[2] = v29;
      v32[3] = 2 * v33 - 64;
    }

    v35 = v74;
    v36 = v86;
    v22 = v84;
    v37 = Data._copyContents(initializing:)();
    outlined consume of Data._Representation(v36, v22);
    v38 = v35;
    v34 = v32;
    result = (*v70)(v38, v75);
    v28 = v78;
    if (v37 != v29)
    {
      goto LABEL_77;
    }

LABEL_31:
    if (v28 > 1)
    {
      if (v28 != 2)
      {
        goto LABEL_41;
      }

      v41 = *(v83 + 16);
      v40 = *(v83 + 24);
      v39 = v40 - v41;
      if (__OFSUB__(v40, v41))
      {
        goto LABEL_82;
      }
    }

    else
    {
      v39 = v67;
      if (!v28)
      {
        goto LABEL_38;
      }

      v39 = v65;
      if (v66)
      {
        goto LABEL_81;
      }
    }

    outlined copy of Data._Representation(v83, v80);
LABEL_38:
    if (!v39)
    {
LABEL_41:
      outlined consume of Data._Representation(v83, v80);
      v42 = MEMORY[0x277D84F90];
      goto LABEL_45;
    }

    v69 = v34;
    if (v39 < 1)
    {
      v42 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v42 = swift_allocObject();
      v43 = _swift_stdlib_malloc_size(v42);
      v42[2] = v39;
      v42[3] = 2 * v43 - 64;
    }

    v44 = v74;
    v45 = v83;
    v46 = v80;
    v47 = Data._copyContents(initializing:)();
    outlined consume of Data._Representation(v45, v46);
    result = (*v70)(v44, v75);
    v48 = v47 == v39;
    v22 = v84;
    v34 = v69;
    if (!v48)
    {
      goto LABEL_78;
    }

LABEL_45:
    v15 = v79;
    v49 = _s4VDAF31BatchedExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binder10generatingxAA4SeedV_Says5UInt8VGAMSitFZAA19XofHmacSha256Aes128C_Tt3g5(v34, v73, v42, v79);

    result = _s4VDAF12FieldElementPAAE19randomVectorBatched5count5usingSayxGSi_qd__tAA0F24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(v15, v49);
    if (v15)
    {
      if (v15 > *(result + 2))
      {
        goto LABEL_75;
      }

      if (v15 > *(v25 + 16))
      {
        goto LABEL_76;
      }

      v50 = 32;
      v51 = v15;
      while (1)
      {
        v52 = *&result[v50];
        v53 = *(v25 + v50);
        if (v53)
        {
          v54 = v53 <= 0xFFF00001;
          v55 = -1048575 - v53;
          if (!v54)
          {
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          if (v52 >= v55)
          {
            v52 -= v55;
            if ((v17 & 1) == 0)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          }

          v54 = v55 <= 0xFFF00001;
          v56 = -1048575 - v55;
          if (!v54)
          {
            goto LABEL_70;
          }

          v54 = __CFADD__(v52, v56);
          v52 += v56;
          if (v54)
          {
            goto LABEL_72;
          }
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_62;
        }

LABEL_59:
        if (v52)
        {
          v54 = v52 <= 0xFFF00001;
          v52 = -1048575 - v52;
          if (!v54)
          {
            goto LABEL_71;
          }
        }

LABEL_62:
        v58 = *(v6 + 2);
        v57 = *(v6 + 3);
        if (v58 >= v57 >> 1)
        {
          v69 = result;
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v6);
          result = v69;
        }

        *(v6 + 2) = v58 + 1;
        *&v6[4 * v58 + 32] = v52;
        v50 += 4;
        if (!--v51)
        {

          v7 = v81;
          v20 = v71;
          v15 = v79;
          v22 = v84;
          goto LABEL_8;
        }
      }
    }

    v7 = v81;
    v20 = v71;
LABEL_8:
    v18 = v82 + 1;

    outlined consume of Data._Representation(v86, v22);

    if (v18 == v76)
    {
      return v6;
    }
  }

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
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

unsigned int **specialized closure #1 in DPFEvaluator.evaluateLeaves(inputs:nonce:leafCorrections:)(unsigned int **result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 16);
  if (!v6)
  {
    return result;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(a6 + 16);
    if (v7 == v8)
    {
      return result;
    }

    if (v7 >= v8)
    {
      goto LABEL_22;
    }

    if (*(a6 + 32 + v7))
    {
      v9 = *(a2 + 32 + 8 * v7);
      v10 = *(v9 + 16);
      if (v10)
      {
        break;
      }
    }

LABEL_3:
    if (++v7 == v6)
    {
      return result;
    }
  }

  v11 = *result;
  v12 = (v9 + 32);
  while (1)
  {
    v15 = *v12++;
    v14 = v15;
    v13 = *v11;
    if (!v15)
    {
      goto LABEL_10;
    }

    v16 = v14 <= 0xFFF00001;
    v17 = -1048575 - v14;
    if (!v16)
    {
      break;
    }

    if (v13 >= v17)
    {
      v13 -= v17;
    }

    else
    {
      v16 = v17 <= 0xFFF00001;
      v18 = -1048575 - v17;
      if (!v16)
      {
        goto LABEL_21;
      }

      v16 = __CFADD__(v13, v18);
      v13 += v18;
      if (v16)
      {
        __break(1u);
        return result;
      }
    }

LABEL_10:
    *v11++ = v13;
    if (!--v10)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void *specialized PreamblePublicShare.encodedLength.getter(void *result, uint64_t a2)
{
  v3 = result[2];
  if (v3)
  {
    v4 = result[4];
    v5 = result[5];

    v6 = InnerCorrections.encodedLength.getter(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 * v3;
  if ((v6 * v3) >> 64 != (v6 * v3) >> 63)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(*(a2 + 32) + 16);
    if (v9)
    {
      if (v9 >> 61)
      {
LABEL_16:
        __break(1u);
        return result;
      }

      v9 *= 4;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 * v8;
  if ((v9 * v8) >> 64 != (v9 * v8) >> 63)
  {
    goto LABEL_14;
  }

  result = (v7 + v10);
  if (__OFADD__(v7, v10))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t specialized PreamblePublicShare.encode<A>(into:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      specialized InnerCorrections.encode<A>(into:)(v4, v8, v7);

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  if (*(a3 + 16))
  {

    return specialized Collection<>.encode<A>(into:)(v4, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v4 = result;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      specialized InnerCorrections.encode<A>(into:)(v4, v8, v7);

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  if (*(a3 + 16))
  {

    return specialized Collection<>.encode<A>(into:)(v4, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_Say4VDAF4LeafVyAB7Field32VGG5valuetMd, &_sSi3key_Say4VDAF4LeafVyAB7Field32VGG5valuetMR);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
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
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
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

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
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

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
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
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
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
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
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

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

void *_s4VDAF4SeedV4from9parameterACx_ytSgtcSkRzs5UInt8V7ElementRtzlufC10Foundation4DataV_Tt1g5Tf4nd_n(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      outlined consume of Data._Representation(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(v10, 0);
      v14 = Data._copyContents(initializing:)();
      outlined consume of Data._Representation(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t _s4VDAF8PreambleV7unshard_17numOfMeasurements9parameterSayq_Gqd___SiAA11VoidCodableVtKSkRd__AA14AggregateShareVyxG7ElementRtd__lFAA7Field32V_s5Int32VAA19XofHmacSha256Aes128CSayAKyAPGGTt1B5Tf4ndn_n(void *a1, unint64_t a2)
{
  v21 = a1;
  v2 = a1[2];
  if (v2 != 2)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *v16 = v2;
    *(v16 + 24) = 0;
LABEL_24:
    swift_willThrow();
    return v2;
  }

  v3 = 1 << a2;
  if (a2 >= 0x40)
  {
    v3 = 0;
  }

  if (a2 <= 0x40)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (*(a1[4] + 16) != v4 || *(a1[5] + 16) != v4)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *v17 = 2;
    *(v17 + 24) = 12;
    goto LABEL_24;
  }

  MEMORY[0x28223BE20](a1);
  v18[2] = &v21;
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field32Vs5NeverOTg5(partial apply for specialized closure #2 in Preamble.unshard<A>(_:numOfMeasurements:parameter:), v18, 0, v5);
  v7 = *(v6 + 16);
  if (!v7)
  {

    return MEMORY[0x277D84F90];
  }

  v19 = v6;
  v20 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  result = v19;
  v2 = v20;
  v9 = 0;
  while (v9 < *(result + 16))
  {
    v10 = *(result + 4 * v9 + 32);
    v11 = v10 + 4293918721 * (-1048577 * v10);
    if (v11 >= 0xFFF0000100000000)
    {
      v12 = 0;
    }

    else
    {
      v12 = HIDWORD(v11);
    }

    if (v12 <= 0x7FF80000)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 0xFFFFF;
    }

    v20 = v2;
    v15 = *(v2 + 16);
    v14 = *(v2 + 24);
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      result = v19;
      v2 = v20;
    }

    ++v9;
    *(v2 + 16) = v15 + 1;
    *(v2 + 4 * v15 + 32) = v13;
    if (v7 == v9)
    {

      return v2;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type EvaluatorError and conformance EvaluatorError()
{
  result = lazy protocol witness table cache variable for type EvaluatorError and conformance EvaluatorError;
  if (!lazy protocol witness table cache variable for type EvaluatorError and conformance EvaluatorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EvaluatorError and conformance EvaluatorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EvaluatorError and conformance EvaluatorError;
  if (!lazy protocol witness table cache variable for type EvaluatorError and conformance EvaluatorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EvaluatorError and conformance EvaluatorError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreambleError and conformance PreambleError()
{
  result = lazy protocol witness table cache variable for type PreambleError and conformance PreambleError;
  if (!lazy protocol witness table cache variable for type PreambleError and conformance PreambleError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreambleError and conformance PreambleError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreambleError and conformance PreambleError;
  if (!lazy protocol witness table cache variable for type PreambleError and conformance PreambleError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreambleError and conformance PreambleError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeneratorError and conformance GeneratorError()
{
  result = lazy protocol witness table cache variable for type GeneratorError and conformance GeneratorError;
  if (!lazy protocol witness table cache variable for type GeneratorError and conformance GeneratorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeneratorError and conformance GeneratorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeneratorError and conformance GeneratorError;
  if (!lazy protocol witness table cache variable for type GeneratorError and conformance GeneratorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeneratorError and conformance GeneratorError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError()
{
  result = lazy protocol witness table cache variable for type LeafParentError and conformance LeafParentError;
  if (!lazy protocol witness table cache variable for type LeafParentError and conformance LeafParentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LeafParentError and conformance LeafParentError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LeafParentError and conformance LeafParentError;
  if (!lazy protocol witness table cache variable for type LeafParentError and conformance LeafParentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LeafParentError and conformance LeafParentError);
  }

  return result;
}

uint64_t WraparoundJointRandomness.__allocating_init(parts:)(uint64_t a1)
{
  v2 = swift_allocObject();
  WraparoundJointRandomness.init(parts:)(a1);
  return v2;
}

uint64_t *WraparoundJointRandomness.init(parts:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 16) = a1;
  v6 = v5;

  WitnessTable = swift_getWitnessTable();
  v8 = static JointRandomness.jointRandSeed(parts:)(a1, v6, WitnessTable);

  *(v2 + 24) = v8;
  v9 = *(v4 + 96);
  v10 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = 7;
  v12 = *(v9 + 240);

  v13 = v12(&v17, v10, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(v8, v13, MEMORY[0x277D84F90], AssociatedTypeWitness, AssociatedConformanceWitness);

  *(v2 + 32) = v15;
  return v2;
}

Swift::Int __swiftcall WraparoundJointRandomness.next()()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v3 = *(AssociatedConformanceWitness + 32);
    v4 = swift_checkMetadataState();
    result = v3(v4, AssociatedConformanceWitness);
    *(v0 + 48) = result;
    v1 = 8;
    *(v0 + 40) = 8;
  }

  v6 = __OFSUB__(v1, 2);
  v7 = v1 - 2;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v0 + 48);
    *(v0 + 40) = v7;
    *(v0 + 48) = v8 >> 2;
    if ((v8 & 3) != 0)
    {
      return (v8 & 3) == 3;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

void *WraparoundJointRandomness.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t WraparoundJointRandomness.__deallocating_deinit()
{
  WraparoundJointRandomness.deinit();

  return swift_deallocClassInstance();
}

Swift::Int protocol witness for JointRandomness.next() in conformance WraparoundJointRandomness<A, B>@<X0>(Swift::Int *a1@<X8>)
{
  result = WraparoundJointRandomness.next()();
  *a1 = result;
  return result;
}

uint64_t Pair.init(party0:party1:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *(*(a3 - 8) + 32);
  v11(a3 - 8, a4, a1);
  v9 = a4 + *(type metadata accessor for Pair(0, a3, v7, v8) + 28);

  return v11(v9, a2, a3);
}

uint64_t type metadata completion function for Pair(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Pair(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *storeEnumTagSinglePayload for Pair(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
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

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LeafParent.prefix(leadingToLevel:)(Swift::Int leadingToLevel)
{
  v4 = *(v3 + 32);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v4 - leadingToLevel;
    if (v4 < leadingToLevel)
    {
      lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
      swift_allocError();
      *v6 = leadingToLevel;
      *(v6 + 8) = 0;
      *(v6 + 16) = v4;
      *(v6 + 24) = 0;
      return swift_willThrow();
    }

    if (v1 < -64)
    {
      return 0;
    }

    v2 = *(v3 + 16);
    if (v1 >= 65)
    {
      return v2 >> 63;
    }

    if ((v1 & 0x8000000000000000) == 0)
    {
      v8 = v1 == 64;
      v9 = v2 >> v1;
      v10 = v2 >> 63;
      if (v8)
      {
        return v10;
      }

      else
      {
        return v9;
      }
    }
  }

  v11 = v2 << -v1;
  if (v1 == -64)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

Swift::Int_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LeafParent.firstDiverge(fromAnyOf:at:)(Swift::OpaquePointer fromAnyOf, Swift::Int at)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  v3 = Collection.firstIndex(where:)();
  if (!v2)
  {
    v3 = v5;
    v4 = v6;
  }

  result.value = v3;
  result.is_nil = v4;
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LeafParent.bit(atLevel:)(Swift::Int atLevel)
{
  v3 = *(v2 + 32);
  if (v3 < 0)
  {
    __break(1u);
LABEL_15:
    v11 = v1 << -v3;
    if (v3 == -64)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    LOBYTE(v5) = v12 & 1;
    return v5 & 1;
  }

  if (v3 <= atLevel)
  {
    v6 = v3 - 1;
    lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
    swift_allocError();
    *v7 = atLevel;
    *(v7 + 8) = 0;
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    swift_willThrow();
    return v5 & 1;
  }

  v3 += ~atLevel;
  if (v3 < -64)
  {
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  v1 = *(v2 + 16);
  if (v3 >= 65)
  {
    v5 = (v1 >> 63) & 1;
    return v5 & 1;
  }

  if (v3 < 0)
  {
    goto LABEL_15;
  }

  v9 = v3 == 64;
  v5 = v1 >> v3;
  v10 = v1 >> 63;
  if (v9)
  {
    LOBYTE(v5) = v10;
  }

  LOBYTE(v5) = v5 & 1;
  return v5 & 1;
}