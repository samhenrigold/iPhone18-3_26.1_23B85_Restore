_DWORD *protocol witness for static SignedNumeric.- prefix(_:) in conformance Int32@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  if (__OFSUB__(0, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = -*result;
  }

  return result;
}

void protocol witness for SignedNumeric.negate() in conformance Int32()
{
  if (__OFSUB__(0, *v0))
  {
    __break(1u);
  }

  else
  {
    *v0 = -*v0;
  }
}

uint64_t protocol witness for Numeric.init<A>(exactly:) in conformance Int32@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v51 = a4;
  v53 = a5;
  v8 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v48[-v13];
  v54 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v12, v15);
  v52 = &v48[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = *(a3 + 64);
  v17 = v55(a2, a3);
  v18 = *(a3 + 128);
  if ((v17 & 1) == 0 || v18(a2, a3) < 33)
  {
    goto LABEL_15;
  }

  v50 = a1;
  v56 = 0x80000000;
  v19 = v55;
  if (v55(a2, a3))
  {
    a1 = v50;
    v20 = v18(a2, a3);
    if (v20 < 32)
    {
      goto LABEL_14;
    }

LABEL_8:
    v23 = *(a3 + 96);
    v24 = lazy protocol witness table accessor for type Int32 and conformance Int32(v20, v21, v22);
    v25 = v52;
    v23(&v56, v51, v24, a2, a3);
    v26 = (*(*(*(a3 + 32) + 8) + 16))(a1, v25, a2);
    v27 = *(v54 + 8);
    v27(v25, a2);
    if (v26)
    {
      result = v27(a1, a2);
      goto LABEL_20;
    }

LABEL_15:
    v33 = v18(a2, a3);
    v34 = v54;
    v35 = v55;
    if (v33 <= 32 && (v18(a2, a3) != 32 || (v35(a2, a3) & 1) != 0))
    {
      goto LABEL_26;
    }

    v57 = 0x7FFFFFFF;
    v36 = v35(a2, a3);
    v37 = v18(a2, a3);
    if (v36)
    {
      if (v37 > 32)
      {
        goto LABEL_18;
      }
    }

    else if (v37 > 31)
    {
LABEL_18:
      v40 = *(a3 + 96);
      v41 = lazy protocol witness table accessor for type Int32 and conformance Int32(v37, v38, v39);
      v42 = v52;
      v40(&v57, v51, v41, a2, a3);
      v43 = (*(*(*(a3 + 32) + 8) + 16))(v42, a1, a2);
      v44 = *(v34 + 8);
      v44(v42, a2);
      if (v43)
      {
        result = v44(a1, a2);
        goto LABEL_20;
      }

LABEL_26:
      v45 = (*(a3 + 120))(a2, a3);
      result = (*(v34 + 8))(a1, a2);
      v46 = 0;
      goto LABEL_27;
    }

    (*(a3 + 120))(a2, a3);
    goto LABEL_26;
  }

  v49 = v19(a2, a3);
  a1 = v50;
  v20 = v18(a2, a3);
  if ((v49 & 1) == 0)
  {
    if (v20 >= 32)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v20 > 32)
  {
    goto LABEL_8;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a2, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v10, AssociatedConformanceWitness);
  v30 = v52;
  (*(v8 + 24))(v14, a2, v8);
  v31 = (*(*(*(a3 + 32) + 8) + 16))(a1, v30, a2);
  v32 = *(v54 + 8);
  v32(v30, a2);
  if ((v31 & 1) == 0)
  {
LABEL_14:
    (*(a3 + 120))(a2, a3);
    goto LABEL_15;
  }

  result = v32(a1, a2);
LABEL_20:
  v45 = 0;
  v46 = 1;
LABEL_27:
  v47 = v53;
  *v53 = v45;
  *(v47 + 4) = v46;
  return result;
}

void protocol witness for Numeric.magnitude.getter in conformance Int32(int *a1@<X8>)
{
  v2 = *v1;
  if (*v1 < 0)
  {
    v2 = -v2;
  }

  *a1 = v2;
}

int *protocol witness for static Numeric.* infix(_:_:) in conformance Int32@<X0>(int *result@<X0>, int *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *result * *a2;
  if (v3 == v3)
  {
    *a3 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Int32.* infix(_:_:)(int a1, int a2)
{
  result = a1 * a2;
  if (result != result)
  {
    __break(1u);
  }

  return result;
}

int *protocol witness for static Numeric.*= infix(_:_:) in conformance Int32(int *result, int *a2)
{
  v2 = *result * *a2;
  if (v2 == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

int *protocol witness for Strideable.distance(to:) in conformance Int32@<X0>(int *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if (((*v2 ^ *result) & 0x80000000) == 0)
  {
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      *a2 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v4 >= 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = -v4;
  }

  if (v3 < 0)
  {
    v3 = -v3;
  }

  v8 = __CFADD__(v7, v3);
  v9 = (v7 + v3);
  if (v8)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = -v9;
  }

  *a2 = v10;
  return result;
}

void *protocol witness for Strideable.advanced(by:) in conformance Int32@<X0>(void *result@<X0>, _DWORD *a2@<X8>)
{
  v3 = *v2;
  v4 = v3 + *result;
  if (__OFADD__(v3, *result))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= 0xFFFFFFFF7FFFFFFFLL || v4 >= 0x80000000)
  {
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a2 = v4;
  return result;
}

_DWORD *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Int32@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

uint64_t static Int32.+ infix(_:_:)(int a1, int a2)
{
  v2 = __OFADD__(a1, a2);
  result = (a1 + a2);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

_DWORD *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Int32(_DWORD *result, _DWORD *a2)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *result += *a2;
  }

  return result;
}

_DWORD *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Int32@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X8>)
{
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result - *a2;
  }

  return result;
}

_DWORD *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Int32(_DWORD *result, _DWORD *a2)
{
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *result -= *a2;
  }

  return result;
}

uint64_t Int32._toCustomAnyHashable()@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys5Int32VGMd, _ss22_IntegerAnyHashableBoxVys5Int32VGMR);
  *(a2 + 24) = result;
  *(a2 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance Int32@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys5Int32VGMd, _ss22_IntegerAnyHashableBoxVys5Int32VGMR);
  *(a1 + 24) = result;
  *(a1 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v3;
  return result;
}

unint64_t UInt64.init(_:)(__n128 a1)
{
  if ((a1.n128_u16[0] & 0x7FFFu) >= 0x7C00 || *a1.n128_u16 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a1.n128_u16;
}

Swift::UInt64 __swiftcall UInt64.init(_:)(Swift::Float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000 || a1 <= -1.0 || a1 >= 1.8447e19)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::UInt64 __swiftcall UInt64.init(_:)(Swift::Double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || a1 <= -1.0 || a1 >= 1.84467441e19)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

void *static UInt64./= infix(_:_:)(void *result, unint64_t a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result /= a2;
  return result;
}

void *static UInt64.%= infix(_:_:)(void *result, unint64_t a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result %= a2;
  return result;
}

uint64_t UInt64.Words.subscript.getter(uint64_t a1, uint64_t a2)
{
  return UInt64.Words.subscript.getter(a1, a2);
}

{
  if (a1 < 0 || a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance UInt64.Words(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x30, 0x9A62uLL);
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = UInt64.Words.subscript.read(v4, *a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance UInt8.Words;
}

void (*UInt64.Words.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2 < 0 || a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

Swift::tuple_quotient_UInt64_remainder_UInt64 __swiftcall UInt64.dividingFullWidth(_:)(Swift::tuple_high_UInt64_low_UInt64 a1)
{
  v2 = UInt64.dividingFullWidth(_:)(a1.high, a1.low, v1);
  result.remainder = v3;
  result.quotient = v2;
  return result;
}

Swift::UInt64 protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance UInt64(Swift::UInt64 *a1, Swift::UInt64 *a2, Swift::tuple_high_UInt64_low_UInt64 *a3)
{
  v6 = UInt64.dividingFullWidth(_:)(*a3);
  result = v6.quotient;
  *a1 = v6.quotient;
  *a2 = v6.remainder;
  return result;
}

void *protocol witness for static BinaryInteger./ infix(_:_:) in conformance UInt64@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result / *a2;
  return result;
}

unint64_t static UInt64./ infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 / a2;
}

void *protocol witness for static BinaryInteger./= infix(_:_:) in conformance UInt64(void *result, void *a2)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result /= *a2;
  return result;
}

void *protocol witness for static BinaryInteger.% infix(_:_:) in conformance UInt64@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result % *a2;
  return result;
}

unint64_t static UInt64.% infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 % a2;
}

void *protocol witness for static BinaryInteger.%= infix(_:_:) in conformance UInt64(void *result, void *a2)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result %= *a2;
  return result;
}

uint64_t UInt64._toCustomAnyHashable()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys6UInt64VGMd, _ss22_IntegerAnyHashableBoxVys6UInt64VGMR);
  a2[3] = result;
  a2[4] = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UInt64@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys6UInt64VGMd, _ss22_IntegerAnyHashableBoxVys6UInt64VGMR);
  a1[3] = result;
  a1[4] = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v3;
  return result;
}

uint64_t Int64.init(_:)(__n128 a1)
{
  if ((a1.n128_u16[0] & 0x7FFFu) >= 0x7C00)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a1.n128_u16;
}

Swift::Int64 __swiftcall Int64.init(_:)(Swift::Float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000 || a1 <= -9.2234e18 || a1 >= 9.2234e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::Int64 __swiftcall Int64.init(_:)(Swift::Double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || a1 <= -9.22337204e18 || a1 >= 9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Int64.Words(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x30, 0xA486uLL);
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = Int64.Words.subscript.read(v4, *a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance UInt8.Words;
}

void (*Int64.Words.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2 < 0 || a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

Swift::tuple_quotient_Int64_remainder_Int64 __swiftcall Int64.dividingFullWidth(_:)(Swift::tuple_high_Int64_low_UInt64 a1)
{
  v2 = Int64.dividingFullWidth(_:)(a1.high, a1.low, v1);
  result.remainder = v3;
  result.quotient = v2;
  return result;
}

Swift::Int64 protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance Int64(Swift::Int64 *a1, Swift::Int64 *a2, Swift::tuple_high_Int64_low_UInt64 *a3)
{
  v6 = Int64.dividingFullWidth(_:)(*a3);
  result = v6.quotient;
  *a1 = v6.quotient;
  *a2 = v6.remainder;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance UInt64@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, Class *a4@<X3>, uint64_t (*a5)(void)@<X5>, uint64_t *a6@<X8>)
{
  v12 = a5();
  static FixedWidthInteger._convert<A>(from:)(&v41, a1, a4, a2, v12, a3);
  if (v42)
  {
    v40 = v6;
    v41 = static String._createEmpty(withInitialCapacity:)(80);
    v42 = v15;
    TypeName = swift_getTypeName(a2, 0);
    if ((v17 & 0x8000000000000000) == 0)
    {
      v18 = TypeName;
      v19 = v17;
      v20 = validateUTF8(_:)(TypeName, v17);
      v24 = (v20 & 0x8000000000000000) != 0 ? repairUTF8(_:firstKnownBrokenRange:)(v18, v19, v21, v22) : specialized static String._uncheckedFromUTF8(_:isASCII:)(v18, v19, v20 & 1, v23);
      v26 = v25;
      String.write(_:)(*&v24);
      v26;
      v27._object = 0x800000018066D440;
      v27._countAndFlagsBits = 0xD00000000000001ELL;
      String.write(_:)(v27);
      v28 = swift_getTypeName(v40, 0);
      if ((v29 & 0x8000000000000000) == 0)
      {
        v30 = v28;
        v31 = v29;
        v32 = validateUTF8(_:)(v28, v29);
        if ((v32 & 0x8000000000000000) != 0)
        {
          v36 = repairUTF8(_:firstKnownBrokenRange:)(v30, v31, v33, v34);
        }

        else
        {
          v36 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v30, v31, v32 & 1, v35);
        }

        v38 = v37;
        String.write(_:)(*&v36);
        v38;
        v39._countAndFlagsBits = 0xD00000000000002ELL;
        v39._object = 0x800000018066D460;
        String.write(_:)(v39);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v41, v42, "Swift/Integers.swift", 0x14uLL, 2, 0xAB4uLL, 0);
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v13 = v41;
  result = (*(*(a2 - 1) + 1))(a1, a2);
  *a6 = v13;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance Int64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v106 = a5;
  v101 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v101, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v100 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v99 = &v98 - v12;
  v13 = *(a3 - 1);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v104 = &v98 - v19;
  v20 = *a1;
  v22 = a4 + 64;
  v21 = *(a4 + 64);
  if ((v21(a3, a4) & 1) == 0)
  {
    v36 = v21(a3, a4);
    v105 = *(a4 + 128);
    v37 = v105(a3, a4);
    if (v36)
    {
      v98 = a2;
      v103 = v21;
      if (v37 <= 64)
      {
        v67 = v100;
        v66 = v101;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v101, a3, v100, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v69 = v99;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v67, AssociatedConformanceWitness);
        v70 = v104;
        (v66[3])(v69, a3, v66);
        a2 = v98;
        LOBYTE(v66) = (*(*(*(a4 + 32) + 8) + 16))(v98, v70, a3);
        result = (*(v13 + 8))(v70, a3);
        if (v66)
        {
          goto LABEL_26;
        }

        result = (*(a4 + 120))(a3, a4);
        v21 = v103;
        if (result < -64)
        {
          goto LABEL_26;
        }

        goto LABEL_11;
      }

      v107 = -64;
      v40 = *(a4 + 96);
      v41 = lazy protocol witness table accessor for type Int and conformance Int(v37, v38, v39);
      v102 = a4 + 64;
      v42 = v104;
      v40(&v107, &type metadata for Int, v41, a3, a4);
      a2 = v98;
      v43 = (*(*(*(a4 + 32) + 8) + 16))(v98, v42, a3);
      v44 = v42;
      v22 = v102;
      result = (*(v13 + 8))(v44, a3);
      v21 = v103;
      if ((v43 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_26:
      v58 = 0;
      goto LABEL_48;
    }

    if (v37 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result >= -64)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

  v105 = *(a4 + 128);
  v23 = v105(a3, a4);
  if (v23 < 64)
  {
    goto LABEL_10;
  }

  v107 = -64;
  v103 = v21;
  v26 = v17;
  v27 = v20;
  v28 = v13;
  v29 = a2;
  v30 = *(a4 + 96);
  v31 = lazy protocol witness table accessor for type Int and conformance Int(v23, v24, v25);
  v102 = a4 + 64;
  v32 = v104;
  v30(&v107, &type metadata for Int, v31, a3, a4);
  a2 = v29;
  v13 = v28;
  v20 = v27;
  v17 = v26;
  v21 = v103;
  v33 = (*(*(*(a4 + 32) + 8) + 16))(a2, v32, a3);
  v34 = v32;
  v22 = v102;
  result = (*(v13 + 8))(v34, a3);
  if (v33)
  {
    goto LABEL_26;
  }

LABEL_11:
  v45 = v21(a3, a4);
  v98 = a4 + 128;
  v46 = v105(a3, a4);
  if (v45)
  {
    if (v46 > 64)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 64)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v46 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v107 = 64;
  v103 = v21;
  v49 = v17;
  v50 = v20;
  v51 = v13;
  v52 = a2;
  v53 = *(a4 + 96);
  v54 = lazy protocol witness table accessor for type Int and conformance Int(v46, v47, v48);
  v102 = v22;
  v55 = v104;
  v53(&v107, &type metadata for Int, v54, a3, a4);
  a2 = v52;
  v13 = v51;
  v20 = v50;
  v17 = v49;
  v21 = v103;
  v56 = (*(*(*(a4 + 32) + 8) + 16))(v55, a2, a3);
  v57 = v55;
  v22 = v102;
  result = (*(v13 + 8))(v57, a3);
  if (v56)
  {
    goto LABEL_17;
  }

LABEL_18:
  (*(v13 + 16))(v17, a2, a3);
  if ((v21(a3, a4) & 1) == 0 || v105(a3, a4) < 65)
  {
    goto LABEL_35;
  }

  if ((v21(a3, a4) & 1) == 0)
  {
    v71 = v21(a3, a4);
    v72 = v105(a3, a4);
    if ((v71 & 1) == 0)
    {
      if (v72 >= 64)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v103 = v21;
    if (v72 <= 64)
    {
      v79 = v100;
      v80 = v101;
      v81 = swift_getAssociatedConformanceWitness(v101, a3, v100, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v82 = v99;
      (*(v81 + 8))(&qword_18071E0A8, 256, v79, v81);
      v83 = v80;
      v84 = v80[3];
      v85 = v104;
      (v84)(v82, a3, v83);
      LOBYTE(v82) = (*(*(*(a4 + 32) + 8) + 16))(v17, v85, a3);
      (*(v13 + 8))(v85, a3);
      v21 = v103;
      if ((v82 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v107 = 0x8000000000000000;
      v75 = *(a4 + 96);
      v76 = lazy protocol witness table accessor for type Int and conformance Int(v72, v73, v74);
      v102 = v22;
      v77 = v104;
      v75(&v107, &type metadata for Int, v76, a3, a4);
      v78 = (*(*(*(a4 + 32) + 8) + 16))(v17, v77, a3);
      (*(v13 + 8))(v77, a3);
      v21 = v103;
      if ((v78 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

LABEL_39:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v59 = v105(a3, a4);
  if (v59 < 64)
  {
LABEL_34:
    (*(a4 + 120))(a3, a4);
    goto LABEL_35;
  }

  v107 = 0x8000000000000000;
  v103 = v21;
  v62 = *(a4 + 96);
  v63 = lazy protocol witness table accessor for type Int and conformance Int(v59, v60, v61);
  v102 = v22;
  v64 = v104;
  v62(&v107, &type metadata for Int, v63, a3, a4);
  v21 = v103;
  v65 = (*(*(*(a4 + 32) + 8) + 16))(v17, v64, a3);
  (*(v13 + 8))(v64, a3);
  if (v65)
  {
    goto LABEL_39;
  }

LABEL_35:
  v86 = v105;
  if (v105(a3, a4) <= 64 && (v86(a3, a4) != 64 || (v21(a3, a4) & 1) != 0))
  {
    goto LABEL_45;
  }

  v87 = v21(a3, a4);
  v88 = v86;
  v89 = v87;
  v90 = v88(a3, a4);
  if (v89)
  {
    if (v90 > 64)
    {
      goto LABEL_38;
    }
  }

  else if (v90 >= 64)
  {
LABEL_38:
    v107 = 0x7FFFFFFFFFFFFFFFLL;
    v93 = *(a4 + 96);
    v94 = lazy protocol witness table accessor for type Int and conformance Int(v90, v91, v92);
    v95 = v104;
    v93(&v107, &type metadata for Int, v94, a3, a4);
    v96 = (*(*(*(a4 + 32) + 8) + 16))(v95, v17, a3);
    (*(v13 + 8))(v95, a3);
    if (v96)
    {
      goto LABEL_39;
    }

    goto LABEL_45;
  }

  (*(a4 + 120))(a3, a4);
LABEL_45:
  v97 = (*(a4 + 120))(a3, a4);
  result = (*(v13 + 8))(v17, a3);
  if ((v97 & 0x8000000000000000) != 0)
  {
    if (v97 > 0xFFFFFFFFFFFFFFC0)
    {
      v58 = v20 << -v97;
      goto LABEL_48;
    }

    goto LABEL_26;
  }

  if (v97 < 0x40)
  {
    v58 = v20 >> v97;
    goto LABEL_48;
  }

LABEL_17:
  v58 = v20 >> 63;
LABEL_48:
  *v106 = v58;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance Int64(uint64_t *a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v109 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v109, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v108 = v8;
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v107 = v105 - v11;
  v12 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v111 = v105 - v18;
  v19 = (a4 + 64);
  v112 = *(a4 + 64);
  if ((v112(a3, a4) & 1) == 0)
  {
    v34 = v112(a3, a4);
    v20 = *(a4 + 128);
    v35 = v20(a3, a4);
    if (v34)
    {
      v110 = a2;
      v106 = v20;
      if (v35 <= 64)
      {
        v73 = v108;
        v72 = v109;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v109, a3, v108, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v75 = v107;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v73, AssociatedConformanceWitness);
        v76 = v111;
        (v72[3])(v75, a3, v72);
        a2 = v110;
        LOBYTE(v72) = (*(*(*(a4 + 32) + 8) + 16))(v110, v76, a3);
        result = (*(v12 + 8))(v76, a3);
        if (v72)
        {
          goto LABEL_25;
        }

        result = (*(a4 + 120))(a3, a4);
        v20 = v106;
        if (result < -64)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      }

      v113 = -64;
      v38 = v16;
      v39 = v12;
      v40 = a1;
      v41 = *(a4 + 96);
      v42 = lazy protocol witness table accessor for type Int and conformance Int(v35, v36, v37);
      v43 = v111;
      v41(&v113, &type metadata for Int, v42, a3, a4);
      a1 = v40;
      v12 = v39;
      v16 = v38;
      v44 = v110;
      v45 = (*(*(*(a4 + 32) + 8) + 16))(v110, v43, a3);
      v46 = v43;
      v19 = (a4 + 64);
      a2 = v44;
      result = (*(v12 + 8))(v46, a3);
      v20 = v106;
      if ((v45 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_25:
      v71 = 0;
      goto LABEL_47;
    }

    if (v35 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result >= -64)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  v20 = *(a4 + 128);
  v21 = v20(a3, a4);
  if (v21 < 64)
  {
    goto LABEL_10;
  }

  v113 = -64;
  v110 = a2;
  v24 = v20;
  v25 = v16;
  v26 = v12;
  v27 = a1;
  v28 = *(a4 + 96);
  v29 = lazy protocol witness table accessor for type Int and conformance Int(v21, v22, v23);
  v106 = (a4 + 64);
  v30 = v111;
  v28(&v113, &type metadata for Int, v29, a3, a4);
  a1 = v27;
  v12 = v26;
  v16 = v25;
  v20 = v24;
  a2 = v110;
  v31 = (*(*(*(a4 + 32) + 8) + 16))(v110, v30, a3);
  v32 = v30;
  v19 = v106;
  result = (*(v12 + 8))(v32, a3);
  if (v31)
  {
    goto LABEL_25;
  }

LABEL_11:
  v47 = v112(a3, a4);
  v105[1] = a4 + 128;
  v48 = v20(a3, a4);
  if (v47)
  {
    if (v48 > 64)
    {
      goto LABEL_13;
    }

LABEL_21:
    result = (*(a4 + 120))(a3, a4);
    if (result <= 64)
    {
      goto LABEL_14;
    }

LABEL_22:
    v71 = *a1 >> 63;
    goto LABEL_47;
  }

  if (v48 < 64)
  {
    goto LABEL_21;
  }

LABEL_13:
  v113 = 64;
  v110 = a2;
  v51 = v20;
  v52 = v16;
  v53 = v12;
  v54 = a1;
  v55 = *(a4 + 96);
  v56 = lazy protocol witness table accessor for type Int and conformance Int(v48, v49, v50);
  v106 = v19;
  v57 = v111;
  v55(&v113, &type metadata for Int, v56, a3, a4);
  a1 = v54;
  v12 = v53;
  v16 = v52;
  v20 = v51;
  a2 = v110;
  v58 = (*(*(*(a4 + 32) + 8) + 16))(v57, v110, a3);
  v59 = v57;
  v19 = v106;
  result = (*(v12 + 8))(v59, a3);
  if (v58)
  {
    goto LABEL_22;
  }

LABEL_14:
  (*(v12 + 16))(v16, a2, a3);
  if ((v112(a3, a4) & 1) == 0 || v20(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v112(a3, a4) & 1) == 0)
  {
    v77 = v112(a3, a4);
    v78 = v20(a3, a4);
    if ((v77 & 1) == 0)
    {
      if (v78 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v106 = v20;
    if (v78 <= 64)
    {
      v89 = v108;
      v88 = v109;
      v90 = swift_getAssociatedConformanceWitness(v109, a3, v108, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v91 = v107;
      (*(v90 + 8))(&qword_18071E0A8, 256, v89, v90);
      v92 = v111;
      (v88[3])(v91, a3, v88);
      LOBYTE(v88) = (*(*(*(a4 + 32) + 8) + 16))(v16, v92, a3);
      (*(v12 + 8))(v92, a3);
      v20 = v106;
      if ((v88 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v113 = 0x8000000000000000;
      v81 = v16;
      v82 = v12;
      v83 = a1;
      v84 = *(a4 + 96);
      v85 = lazy protocol witness table accessor for type Int and conformance Int(v78, v79, v80);
      v86 = v111;
      v84(&v113, &type metadata for Int, v85, a3, a4);
      a1 = v83;
      v12 = v82;
      v16 = v81;
      v87 = (*(*(*(a4 + 32) + 8) + 16))(v81, v86, a3);
      (*(v12 + 8))(v86, a3);
      v20 = v106;
      if ((v87 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v60 = v20(a3, a4);
  if (v60 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v113 = 0x8000000000000000;
  v63 = v20;
  v64 = v16;
  v65 = v12;
  v66 = a1;
  v67 = *(a4 + 96);
  v68 = lazy protocol witness table accessor for type Int and conformance Int(v60, v61, v62);
  v106 = v19;
  v69 = v111;
  v67(&v113, &type metadata for Int, v68, a3, a4);
  a1 = v66;
  v12 = v65;
  v16 = v64;
  v20 = v63;
  v70 = (*(*(*(a4 + 32) + 8) + 16))(v16, v69, a3);
  (*(v12 + 8))(v69, a3);
  if (v70)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v20(a3, a4) <= 64 && (v20(a3, a4) != 64 || (v112(a3, a4) & 1) != 0))
  {
    goto LABEL_44;
  }

  v93 = v112(a3, a4);
  v94 = v20(a3, a4);
  if (v93)
  {
    if (v94 > 64)
    {
      goto LABEL_37;
    }
  }

  else if (v94 >= 64)
  {
LABEL_37:
    v113 = 0x7FFFFFFFFFFFFFFFLL;
    v97 = v16;
    v98 = a1;
    v99 = *(a4 + 96);
    v100 = lazy protocol witness table accessor for type Int and conformance Int(v94, v95, v96);
    v101 = v111;
    v99(&v113, &type metadata for Int, v100, a3, a4);
    a1 = v98;
    v16 = v97;
    v102 = (*(*(*(a4 + 32) + 8) + 16))(v101, v97, a3);
    (*(v12 + 8))(v101, a3);
    if (v102)
    {
      goto LABEL_38;
    }

    goto LABEL_44;
  }

  (*(a4 + 120))(a3, a4);
LABEL_44:
  v103 = (*(a4 + 120))(a3, a4);
  result = (*(v12 + 8))(v16, a3);
  v104 = *a1;
  if ((v103 & 0x8000000000000000) != 0)
  {
    if (v103 > 0xFFFFFFFFFFFFFFC0)
    {
      v71 = v104 << -v103;
      goto LABEL_47;
    }

    goto LABEL_25;
  }

  if (v103 >= 0x40)
  {
    v71 = v104 >> 63;
  }

  else
  {
    v71 = v104 >> v103;
  }

LABEL_47:
  *a1 = v71;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance Int64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v106 = a5;
  v101 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v101, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v100 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v99 = &v98 - v12;
  v13 = *(a3 - 1);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v104 = &v98 - v19;
  v20 = *a1;
  v22 = a4 + 64;
  v21 = *(a4 + 64);
  if (v21(a3, a4))
  {
    v105 = *(a4 + 128);
    v23 = v105(a3, a4);
    if (v23 < 64)
    {
      result = (*(a4 + 120))(a3, a4);
      if (result > -65)
      {
        goto LABEL_17;
      }

LABEL_16:
      v50 = v20 >> 63;
      goto LABEL_50;
    }

    v107 = -64;
    v103 = v21;
    v36 = v17;
    v37 = v20;
    v38 = v13;
    v39 = a2;
    v40 = *(a4 + 96);
    v41 = lazy protocol witness table accessor for type Int and conformance Int(v23, v24, v25);
    v102 = a4 + 64;
    v42 = v104;
    v40(&v107, &type metadata for Int, v41, a3, a4);
    a2 = v39;
    v13 = v38;
    v20 = v37;
    v17 = v36;
    v21 = v103;
    v43 = (*(*(*(a4 + 32) + 8) + 16))(a2, v42, a3);
    v44 = v42;
    v22 = v102;
    result = (*(v13 + 8))(v44, a3);
    if (v43)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v27 = v21(a3, a4);
    v105 = *(a4 + 128);
    v28 = v105(a3, a4);
    if (v27)
    {
      v98 = a2;
      v103 = v21;
      if (v28 <= 64)
      {
        v46 = v100;
        v45 = v101;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v101, a3, v100, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v48 = v99;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v46, AssociatedConformanceWitness);
        v49 = v104;
        (v45[3])(v48, a3, v45);
        a2 = v98;
        LOBYTE(v45) = (*(*(*(a4 + 32) + 8) + 16))(v98, v49, a3);
        result = (*(v13 + 8))(v49, a3);
        if (v45)
        {
          goto LABEL_16;
        }

        result = (*(a4 + 120))(a3, a4);
        v21 = v103;
        if (result < -64)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v107 = -64;
        v31 = *(a4 + 96);
        v32 = lazy protocol witness table accessor for type Int and conformance Int(v28, v29, v30);
        v102 = a4 + 64;
        v33 = v104;
        v31(&v107, &type metadata for Int, v32, a3, a4);
        a2 = v98;
        v34 = (*(*(*(a4 + 32) + 8) + 16))(v98, v33, a3);
        v35 = v33;
        v22 = v102;
        result = (*(v13 + 8))(v35, a3);
        v21 = v103;
        if (v34)
        {
          goto LABEL_16;
        }
      }
    }

    else if (v28 < 64)
    {
      result = (*(a4 + 120))(a3, a4);
      if (result < -64)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_17:
  v51 = v21(a3, a4);
  v98 = a4 + 128;
  v52 = v105(a3, a4);
  if (v51)
  {
    if (v52 > 64)
    {
      goto LABEL_19;
    }

LABEL_27:
    result = (*(a4 + 120))(a3, a4);
    if (result <= 64)
    {
      goto LABEL_20;
    }

LABEL_28:
    v50 = 0;
    goto LABEL_50;
  }

  if (v52 < 64)
  {
    goto LABEL_27;
  }

LABEL_19:
  v107 = 64;
  v103 = v21;
  v55 = v17;
  v56 = v20;
  v57 = v13;
  v58 = a2;
  v59 = *(a4 + 96);
  v60 = lazy protocol witness table accessor for type Int and conformance Int(v52, v53, v54);
  v102 = v22;
  v61 = v104;
  v59(&v107, &type metadata for Int, v60, a3, a4);
  a2 = v58;
  v13 = v57;
  v20 = v56;
  v17 = v55;
  v21 = v103;
  v62 = (*(*(*(a4 + 32) + 8) + 16))(v61, a2, a3);
  v63 = v61;
  v22 = v102;
  result = (*(v13 + 8))(v63, a3);
  if (v62)
  {
    goto LABEL_28;
  }

LABEL_20:
  (*(v13 + 16))(v17, a2, a3);
  if ((v21(a3, a4) & 1) == 0 || v105(a3, a4) < 65)
  {
    goto LABEL_37;
  }

  if ((v21(a3, a4) & 1) == 0)
  {
    v71 = v21(a3, a4);
    v72 = v105(a3, a4);
    if ((v71 & 1) == 0)
    {
      if (v72 >= 64)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    v103 = v21;
    if (v72 <= 64)
    {
      v79 = v100;
      v80 = v101;
      v81 = swift_getAssociatedConformanceWitness(v101, a3, v100, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v82 = v99;
      (*(v81 + 8))(&qword_18071E0A8, 256, v79, v81);
      v83 = v80;
      v84 = v80[3];
      v85 = v104;
      (v84)(v82, a3, v83);
      LOBYTE(v82) = (*(*(*(a4 + 32) + 8) + 16))(v17, v85, a3);
      (*(v13 + 8))(v85, a3);
      v21 = v103;
      if ((v82 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v107 = 0x8000000000000000;
      v75 = *(a4 + 96);
      v76 = lazy protocol witness table accessor for type Int and conformance Int(v72, v73, v74);
      v102 = v22;
      v77 = v104;
      v75(&v107, &type metadata for Int, v76, a3, a4);
      v78 = (*(*(*(a4 + 32) + 8) + 16))(v17, v77, a3);
      (*(v13 + 8))(v77, a3);
      v21 = v103;
      if ((v78 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

LABEL_41:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v64 = v105(a3, a4);
  if (v64 < 64)
  {
LABEL_36:
    (*(a4 + 120))(a3, a4);
    goto LABEL_37;
  }

  v107 = 0x8000000000000000;
  v103 = v21;
  v67 = *(a4 + 96);
  v68 = lazy protocol witness table accessor for type Int and conformance Int(v64, v65, v66);
  v102 = v22;
  v69 = v104;
  v67(&v107, &type metadata for Int, v68, a3, a4);
  v21 = v103;
  v70 = (*(*(*(a4 + 32) + 8) + 16))(v17, v69, a3);
  (*(v13 + 8))(v69, a3);
  if (v70)
  {
    goto LABEL_41;
  }

LABEL_37:
  v86 = v105;
  if (v105(a3, a4) <= 64 && (v86(a3, a4) != 64 || (v21(a3, a4) & 1) != 0))
  {
    goto LABEL_47;
  }

  v87 = v21(a3, a4);
  v88 = v86;
  v89 = v87;
  v90 = v88(a3, a4);
  if (v89)
  {
    if (v90 > 64)
    {
      goto LABEL_40;
    }

LABEL_46:
    (*(a4 + 120))(a3, a4);
    goto LABEL_47;
  }

  if (v90 < 64)
  {
    goto LABEL_46;
  }

LABEL_40:
  v107 = 0x7FFFFFFFFFFFFFFFLL;
  v93 = *(a4 + 96);
  v94 = lazy protocol witness table accessor for type Int and conformance Int(v90, v91, v92);
  v95 = v104;
  v93(&v107, &type metadata for Int, v94, a3, a4);
  v96 = (*(*(*(a4 + 32) + 8) + 16))(v95, v17, a3);
  (*(v13 + 8))(v95, a3);
  if (v96)
  {
    goto LABEL_41;
  }

LABEL_47:
  v97 = (*(a4 + 120))(a3, a4);
  result = (*(v13 + 8))(v17, a3);
  if ((v97 & 0x8000000000000000) != 0)
  {
    if (v97 > 0xFFFFFFFFFFFFFFC0)
    {
      v50 = v20 >> -v97;
      goto LABEL_50;
    }

    goto LABEL_16;
  }

  v50 = v20 << v97;
  if (v97 >= 0x40)
  {
    v50 = 0;
  }

LABEL_50:
  *v106 = v50;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance Int64(uint64_t *a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v109 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v109, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v108 = v8;
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v107 = v105 - v11;
  v12 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v111 = v105 - v18;
  v19 = (a4 + 64);
  v112 = *(a4 + 64);
  if (v112(a3, a4))
  {
    v20 = *(a4 + 128);
    v21 = v20(a3, a4);
    if (v21 >= 64)
    {
      v113 = -64;
      v110 = a2;
      v24 = v20;
      v25 = v16;
      v26 = v12;
      v27 = a1;
      v28 = *(a4 + 96);
      v29 = lazy protocol witness table accessor for type Int and conformance Int(v21, v22, v23);
      v106 = (a4 + 64);
      v30 = v111;
      v28(&v113, &type metadata for Int, v29, a3, a4);
      a1 = v27;
      v12 = v26;
      v16 = v25;
      v20 = v24;
      a2 = v110;
      v31 = (*(*(*(a4 + 32) + 8) + 16))(v110, v30, a3);
      v32 = v30;
      v19 = v106;
      result = (*(v12 + 8))(v32, a3);
      if ((v31 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_13:
      v52 = *a1 >> 63;
      goto LABEL_47;
    }

LABEL_12:
    result = (*(a4 + 120))(a3, a4);
    if (result >= -64)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v34 = v112(a3, a4);
  v20 = *(a4 + 128);
  v35 = v20(a3, a4);
  if (v34)
  {
    v110 = a2;
    v106 = v20;
    if (v35 <= 64)
    {
      v48 = v108;
      v47 = v109;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v109, a3, v108, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v50 = v107;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v48, AssociatedConformanceWitness);
      v51 = v111;
      (v47[3])(v50, a3, v47);
      a2 = v110;
      LOBYTE(v47) = (*(*(*(a4 + 32) + 8) + 16))(v110, v51, a3);
      result = (*(v12 + 8))(v51, a3);
      v20 = v106;
      if (v47)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v113 = -64;
    v38 = v16;
    v39 = v12;
    v40 = a1;
    v41 = *(a4 + 96);
    v42 = lazy protocol witness table accessor for type Int and conformance Int(v35, v36, v37);
    v43 = v111;
    v41(&v113, &type metadata for Int, v42, a3, a4);
    a1 = v40;
    v12 = v39;
    v16 = v38;
    v44 = v110;
    v45 = (*(*(*(a4 + 32) + 8) + 16))(v110, v43, a3);
    v46 = v43;
    v19 = (a4 + 64);
    a2 = v44;
    result = (*(v12 + 8))(v46, a3);
    v20 = v106;
    if (v45)
    {
      goto LABEL_13;
    }
  }

  else if (v35 < 64)
  {
    goto LABEL_12;
  }

LABEL_14:
  v53 = v112(a3, a4);
  v105[1] = a4 + 128;
  v54 = v20(a3, a4);
  if (v53)
  {
    if (v54 > 64)
    {
      goto LABEL_16;
    }

LABEL_19:
    result = (*(a4 + 120))(a3, a4);
    if (result > 64)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  if (v54 < 64)
  {
    goto LABEL_19;
  }

LABEL_16:
  v113 = 64;
  v110 = a2;
  v57 = v20;
  v58 = v16;
  v59 = v12;
  v60 = a1;
  v61 = *(a4 + 96);
  v62 = lazy protocol witness table accessor for type Int and conformance Int(v54, v55, v56);
  v106 = v19;
  v63 = v111;
  v61(&v113, &type metadata for Int, v62, a3, a4);
  a1 = v60;
  v12 = v59;
  v16 = v58;
  v20 = v57;
  a2 = v110;
  v64 = (*(*(*(a4 + 32) + 8) + 16))(v63, v110, a3);
  v65 = v63;
  v19 = v106;
  result = (*(v12 + 8))(v65, a3);
  if (v64)
  {
LABEL_17:
    v52 = 0;
    goto LABEL_47;
  }

LABEL_20:
  (*(v12 + 16))(v16, a2, a3);
  if ((v112(a3, a4) & 1) == 0 || v20(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v112(a3, a4) & 1) == 0)
  {
    v77 = v112(a3, a4);
    v78 = v20(a3, a4);
    if ((v77 & 1) == 0)
    {
      if (v78 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v106 = v20;
    if (v78 <= 64)
    {
      v89 = v108;
      v88 = v109;
      v90 = swift_getAssociatedConformanceWitness(v109, a3, v108, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v91 = v107;
      (*(v90 + 8))(&qword_18071E0A8, 256, v89, v90);
      v92 = v111;
      (v88[3])(v91, a3, v88);
      LOBYTE(v88) = (*(*(*(a4 + 32) + 8) + 16))(v16, v92, a3);
      (*(v12 + 8))(v92, a3);
      v20 = v106;
      if ((v88 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v113 = 0x8000000000000000;
      v81 = v16;
      v82 = v12;
      v83 = a1;
      v84 = *(a4 + 96);
      v85 = lazy protocol witness table accessor for type Int and conformance Int(v78, v79, v80);
      v86 = v111;
      v84(&v113, &type metadata for Int, v85, a3, a4);
      a1 = v83;
      v12 = v82;
      v16 = v81;
      v87 = (*(*(*(a4 + 32) + 8) + 16))(v81, v86, a3);
      (*(v12 + 8))(v86, a3);
      v20 = v106;
      if ((v87 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v66 = v20(a3, a4);
  if (v66 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v113 = 0x8000000000000000;
  v69 = v20;
  v70 = v16;
  v71 = v12;
  v72 = a1;
  v73 = *(a4 + 96);
  v74 = lazy protocol witness table accessor for type Int and conformance Int(v66, v67, v68);
  v106 = v19;
  v75 = v111;
  v73(&v113, &type metadata for Int, v74, a3, a4);
  a1 = v72;
  v12 = v71;
  v16 = v70;
  v20 = v69;
  v76 = (*(*(*(a4 + 32) + 8) + 16))(v16, v75, a3);
  (*(v12 + 8))(v75, a3);
  if (v76)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v20(a3, a4) > 64 || v20(a3, a4) == 64 && (v112(a3, a4) & 1) == 0)
  {
    v93 = v112(a3, a4);
    v94 = v20(a3, a4);
    if (v93)
    {
      if (v94 > 64)
      {
        goto LABEL_37;
      }
    }

    else if (v94 >= 64)
    {
LABEL_37:
      v113 = 0x7FFFFFFFFFFFFFFFLL;
      v97 = v16;
      v98 = a1;
      v99 = *(a4 + 96);
      v100 = lazy protocol witness table accessor for type Int and conformance Int(v94, v95, v96);
      v101 = v111;
      v99(&v113, &type metadata for Int, v100, a3, a4);
      a1 = v98;
      v16 = v97;
      v102 = (*(*(*(a4 + 32) + 8) + 16))(v101, v97, a3);
      (*(v12 + 8))(v101, a3);
      if (v102)
      {
        goto LABEL_38;
      }

      goto LABEL_44;
    }

    (*(a4 + 120))(a3, a4);
  }

LABEL_44:
  v103 = (*(a4 + 120))(a3, a4);
  result = (*(v12 + 8))(v16, a3);
  v104 = *a1;
  if ((v103 & 0x8000000000000000) != 0)
  {
    if (v103 <= 0xFFFFFFFFFFFFFFC0)
    {
      v52 = v104 >> 63;
    }

    else
    {
      v52 = v104 >> -v103;
    }
  }

  else
  {
    v52 = v104 << v103;
    if (v103 >= 0x40)
    {
      v52 = 0;
    }
  }

LABEL_47:
  *a1 = v52;
  return result;
}

uint64_t protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance Int64(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = specialized BinaryInteger.quotientAndRemainder(dividingBy:)(a2, *a3, *v3);
  *a1 = result;
  return result;
}

uint64_t *protocol witness for Strideable.distance(to:) in conformance Int64@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if (((*v2 ^ *result) & 0x8000000000000000) == 0)
  {
    v5 = __OFSUB__(v3, v4);
    v4 = v3 - v4;
    if (!v5)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  if (v4 >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = -v4;
  }

  if (v3 < 0)
  {
    v3 = -v3;
  }

  v7 = __CFADD__(v6, v3);
  v8 = v6 + v3;
  if (v7)
  {
    __break(1u);
LABEL_17:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v8 < 0)
  {
    goto LABEL_17;
  }

  if (v4 < 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = -v8;
  }

LABEL_15:
  *a2 = v4;
  return result;
}

uint64_t Int64._toCustomAnyHashable()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys5Int64VGMd, _ss22_IntegerAnyHashableBoxVys5Int64VGMR);
  a2[3] = result;
  a2[4] = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance Int64@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys5Int64VGMd, _ss22_IntegerAnyHashableBoxVys5Int64VGMR);
  a1[3] = result;
  a1[4] = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v3;
  return result;
}

unint64_t UInt.init(exactly:)(__n128 a1)
{
  v1 = truncl(*a1.n128_u16) != *a1.n128_u16;
  if (*a1.n128_u16 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)) || (a1.n128_u16[0] & 0x7FFFu) > 0x7BFF || v1)
  {
    return 0;
  }

  else
  {
    return *a1.n128_u16;
  }
}

Swift::UInt_optional __swiftcall UInt.init(exactly:)(Swift::Float exactly)
{
  v1 = exactly <= -1.0;
  if (exactly >= 1.8447e19)
  {
    v1 = 1;
  }

  v2 = truncf(exactly) != exactly || v1;
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = exactly;
  }

  result.value = v3;
  result.is_nil = v2;
  return result;
}

Swift::UInt_optional __swiftcall UInt.init(exactly:)(Swift::Double exactly)
{
  v1 = exactly <= -1.0;
  if (exactly >= 1.84467441e19)
  {
    v1 = 1;
  }

  v2 = trunc(exactly) != exactly || v1;
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = exactly;
  }

  result.value = v3;
  result.is_nil = v2;
  return result;
}

void *static UInt.+= infix(_:_:)(void *result, uint64_t a2)
{
  if (__CFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result += a2;
  }

  return result;
}

unint64_t *static UInt.-= infix(_:_:)(unint64_t *result, unint64_t a2)
{
  if (*result < a2)
  {
    __break(1u);
  }

  else
  {
    *result -= a2;
  }

  return result;
}

unint64_t *static UInt.*= infix(_:_:)(unint64_t *result, unint64_t a2)
{
  if (is_mul_ok(*result, a2))
  {
    *result *= a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static UInt./= infix(_:_:)(void *result, unint64_t a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result /= a2;
  return result;
}

Swift::tuple_partialValue_UInt_overflow_Bool __swiftcall UInt.subtractingReportingOverflow(_:)(Swift::UInt a1)
{
  v2 = v1 >= a1;
  v3 = v1 - a1;
  v4 = !v2;
  result.partialValue = v3;
  result.overflow = v4;
  return result;
}

Swift::tuple_partialValue_UInt_overflow_Bool __swiftcall UInt.multipliedReportingOverflow(by:)(Swift::UInt by)
{
  v2 = v1 * by;
  v3 = !is_mul_ok(v1, by);
  v4 = v2;
  result.partialValue = v4;
  result.overflow = v3;
  return result;
}

Swift::tuple_partialValue_UInt_overflow_Bool __swiftcall UInt.dividedReportingOverflow(by:)(Swift::UInt by)
{
  v2 = v1;
  if (by)
  {
    v2 = v1 / by;
  }

  v3 = by == 0;
  v4 = v2;
  result.partialValue = v4;
  result.overflow = v3;
  return result;
}

Swift::tuple_partialValue_UInt_overflow_Bool __swiftcall UInt.remainderReportingOverflow(dividingBy:)(Swift::UInt dividingBy)
{
  v2 = v1;
  if (dividingBy)
  {
    v2 = v1 % dividingBy;
  }

  v3 = dividingBy == 0;
  v4 = v2;
  result.partialValue = v4;
  result.overflow = v3;
  return result;
}

void *static UInt.%= infix(_:_:)(void *result, unint64_t a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result %= a2;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance UInt.Words(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x30, 0xE6D7uLL);
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = UInt.Words.subscript.read(v4, *a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance UInt8.Words;
}

void (*UInt.Words.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2 < 0 || a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

Swift::tuple_high_UInt_low_UInt __swiftcall UInt.multipliedFullWidth(by:)(Swift::UInt by)
{
  v2 = v1 * by;
  v3 = (v1 * by) >> 64;
  v4 = v2;
  result.low = v4;
  result.high = v3;
  return result;
}

Swift::tuple_quotient_UInt_remainder_UInt __swiftcall UInt.dividingFullWidth(_:)(Swift::tuple_high_UInt_low_UInt a1)
{
  v2 = UInt64.dividingFullWidth(_:)(a1.high, a1.low, v1);
  result.remainder = v3;
  result.quotient = v2;
  return result;
}

uint64_t UInt64.dividingFullWidth(_:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a3 || a1 >= a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __udivti3();
}

BOOL _ss6UInt64Vs17FixedWidthIntegerssACP23addingReportingOverflowyx12partialValue_Sb8overflowtxFTW_0(void *a1, void *a2)
{
  v3 = __CFADD__(*v2, *a2);
  *a1 = *v2 + *a2;
  return v3;
}

BOOL _ss6UInt64Vs17FixedWidthIntegerssACP28subtractingReportingOverflowyx12partialValue_Sb8overflowtxFTW_0(void *a1, void *a2)
{
  v3 = *v2 < *a2;
  *a1 = *v2 - *a2;
  return v3;
}

BOOL _ss6UInt64Vs17FixedWidthIntegerssACP27multipliedReportingOverflow2byx12partialValue_Sb8overflowtx_tFTW_0(void *a1, unint64_t *a2)
{
  v3 = !is_mul_ok(*v2, *a2);
  *a1 = *v2 * *a2;
  return v3;
}

BOOL _ss6UInt64Vs17FixedWidthIntegerssACP24dividedReportingOverflow2byx12partialValue_Sb8overflowtx_tFTW_0(void *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (*a2)
  {
    v4 /= v3;
  }

  *a1 = v4;
  return v3 == 0;
}

BOOL _ss6UInt64Vs17FixedWidthIntegerssACP26remainderReportingOverflow10dividingByx12partialValue_Sb8overflowtx_tFTW_0(void *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (*a2)
  {
    v4 %= v3;
  }

  *a1 = v4;
  return v3 == 0;
}

void *_ss6UInt64Vs17FixedWidthIntegerssACP014multipliedFullC02byx4high_9MagnitudeQz3lowtx_tFTW_0(void *result, void *a2, void *a3)
{
  v4 = *v3 * *a3;
  *result = (*v3 * *a3) >> 64;
  *a2 = v4;
  return result;
}

Swift::UInt protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance UInt(Swift::UInt *a1, Swift::UInt *a2, Swift::tuple_high_UInt_low_UInt *a3)
{
  v6 = UInt.dividingFullWidth(_:)(*a3);
  result = v6.quotient;
  *a1 = v6.quotient;
  *a2 = v6.remainder;
  return result;
}

uint64_t *_ss6UInt64Vs35_ExpressibleByBuiltinIntegerLiteralssACP08_builtineF0xBI_tcfCTW_0@<X0>(uint64_t *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = 0;
  if (a2 >> 9 <= 0x20 && (a2 & 1) == 0)
  {
    v3 = *result;
  }

  *a3 = v3;
  return result;
}

uint64_t _ss6UInt64VSzsSzyxqd__cSzRd__lufCTW_0@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v34 = a4;
  v35 = a5;
  v38 = a1;
  v36 = a6;
  v8 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v12, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v32 - v16;
  v18 = *(a3 + 64);
  if (v18(a2, a3))
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, a2, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v14, AssociatedConformanceWitness);
    (*(v12 + 24))(v17, a2, v12);
    v20 = (*(*(*(a3 + 32) + 8) + 32))(v38, v10, a2);
    (*(v8 + 8))(v10, a2);
    if ((v20 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v32 = v17;
  v33 = v12;
  v37 = v8;
  v21 = v38;
  v22 = *(a3 + 128);
  if (v22(a2, a3) <= 63)
  {
    goto LABEL_12;
  }

  v39 = -1;
  v23 = v18(a2, a3);
  v24 = v21;
  v25 = v22(a2, a3);
  if ((v23 & 1) == 0)
  {
    if (v25 < 65)
    {
LABEL_11:
      (*(a3 + 120))(a2, a3);
      goto LABEL_12;
    }

LABEL_9:
    (*(a3 + 96))(&v39, v34, v35, a2, a3);
    v29 = (*(*(*(a3 + 32) + 8) + 16))(v10, v21, a2);
    (*(v37 + 8))(v10, a2);
    if ((v29 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v25 > 64)
  {
    goto LABEL_9;
  }

  v26 = v33;
  v27 = swift_getAssociatedConformanceWitness(v33, a2, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v28 = v32;
  (*(v27 + 8))(&qword_18071E0A8, 256, v14, v27);
  v26[3](v28, a2, v26);
  v21 = v24;
  LOBYTE(v26) = (*(*(*(a3 + 32) + 8) + 40))(v24, v10, a2);
  (*(v37 + 8))(v10, a2);
  if (v26)
  {
    goto LABEL_11;
  }

LABEL_12:
  v30 = (*(a3 + 120))(a2, a3);
  result = (*(v37 + 8))(v21, a2);
  *v36 = v30;
  return result;
}

unint64_t _ss6UInt64VSzsSz16_binaryLogarithmSiyFTW_0()
{
  if (!*v0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __clz(*v0) ^ 0x3F;
}

void *protocol witness for static BinaryInteger./ infix(_:_:) in conformance UInt@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result / *a2;
  return result;
}

void *protocol witness for static BinaryInteger./= infix(_:_:) in conformance UInt(void *result, void *a2)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result /= *a2;
  return result;
}

void *protocol witness for static BinaryInteger.% infix(_:_:) in conformance UInt@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result % *a2;
  return result;
}

void *protocol witness for static BinaryInteger.%= infix(_:_:) in conformance UInt(void *result, void *a2)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result %= *a2;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance UInt64@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v110 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v110, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v109 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v108 = &v106 - v13;
  v14 = *(a3 - 1);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v113 = &v106 - v20;
  v111 = *a1;
  v21 = (a4 + 64);
  v114 = *(a4 + 64);
  if (v114(a3, a4))
  {
    v22 = *(a4 + 128);
    v23 = v22(a3, a4);
    if (v23 >= 64)
    {
      v115 = -64;
      v112 = a2;
      v26 = v22;
      v27 = v18;
      v28 = v14;
      v29 = a5;
      v30 = *(a4 + 96);
      v31 = lazy protocol witness table accessor for type Int and conformance Int(v23, v24, v25);
      v107 = (a4 + 64);
      v32 = v113;
      v30(&v115, &type metadata for Int, v31, a3, a4);
      a5 = v29;
      v14 = v28;
      v18 = v27;
      v22 = v26;
      a2 = v112;
      v33 = (*(*(*(a4 + 32) + 8) + 16))(v112, v32, a3);
      v34 = v32;
      v21 = v107;
      result = (*(v14 + 8))(v34, a3);
      if (v33)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v36 = v114(a3, a4);
    v22 = *(a4 + 128);
    v37 = v22(a3, a4);
    if (v36)
    {
      v112 = a2;
      v107 = v22;
      if (v37 <= 64)
      {
        v74 = v109;
        v73 = v110;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v110, a3, v109, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v76 = v108;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v74, AssociatedConformanceWitness);
        v77 = v113;
        (v73[3])(v76, a3, v73);
        a2 = v112;
        LOBYTE(v73) = (*(*(*(a4 + 32) + 8) + 16))(v112, v77, a3);
        result = (*(v14 + 8))(v77, a3);
        if (v73)
        {
          goto LABEL_25;
        }

        result = (*(a4 + 120))(a3, a4);
        v22 = v107;
        if (result < -64)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v115 = -64;
        v40 = v18;
        v41 = v14;
        v42 = a5;
        v43 = *(a4 + 96);
        v44 = lazy protocol witness table accessor for type Int and conformance Int(v37, v38, v39);
        v45 = v113;
        v43(&v115, &type metadata for Int, v44, a3, a4);
        a5 = v42;
        v14 = v41;
        v18 = v40;
        v46 = v112;
        v47 = (*(*(*(a4 + 32) + 8) + 16))(v112, v45, a3);
        v48 = v45;
        v21 = (a4 + 64);
        a2 = v46;
        result = (*(v14 + 8))(v48, a3);
        v22 = v107;
        if (v47)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_11;
    }

    if (v37 >= 64)
    {
      goto LABEL_11;
    }
  }

  result = (*(a4 + 120))(a3, a4);
  if (result < -64)
  {
    goto LABEL_25;
  }

LABEL_11:
  v49 = v114(a3, a4);
  v106 = a4 + 128;
  v50 = v22(a3, a4);
  if (v49)
  {
    if (v50 > 64)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (v50 < 64)
  {
LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result <= 64)
    {
      goto LABEL_17;
    }

LABEL_25:
    v78 = 0;
    goto LABEL_47;
  }

LABEL_13:
  v115 = 64;
  v112 = a2;
  v53 = v22;
  v54 = v18;
  v55 = v14;
  v56 = a5;
  v57 = *(a4 + 96);
  v58 = lazy protocol witness table accessor for type Int and conformance Int(v50, v51, v52);
  v107 = v21;
  v59 = v113;
  v57(&v115, &type metadata for Int, v58, a3, a4);
  a5 = v56;
  v14 = v55;
  v18 = v54;
  v22 = v53;
  a2 = v112;
  v60 = (*(*(*(a4 + 32) + 8) + 16))(v59, v112, a3);
  v61 = v59;
  v21 = v107;
  result = (*(v14 + 8))(v61, a3);
  if (v60)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v14 + 16))(v18, a2, a3);
  if ((v114(a3, a4) & 1) == 0 || v22(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v114(a3, a4) & 1) == 0)
  {
    v79 = v114(a3, a4);
    v80 = v22(a3, a4);
    if ((v79 & 1) == 0)
    {
      if (v80 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v107 = v22;
    if (v80 <= 64)
    {
      v91 = v109;
      v90 = v110;
      v92 = swift_getAssociatedConformanceWitness(v110, a3, v109, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v93 = v108;
      (*(v92 + 8))(&qword_18071E0A8, 256, v91, v92);
      v94 = v113;
      (v90[3])(v93, a3, v90);
      LOBYTE(v90) = (*(*(*(a4 + 32) + 8) + 16))(v18, v94, a3);
      (*(v14 + 8))(v94, a3);
      v22 = v107;
      if ((v90 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v115 = 0x8000000000000000;
      v83 = v18;
      v84 = v14;
      v85 = a5;
      v86 = *(a4 + 96);
      v87 = lazy protocol witness table accessor for type Int and conformance Int(v80, v81, v82);
      v88 = v113;
      v86(&v115, &type metadata for Int, v87, a3, a4);
      a5 = v85;
      v14 = v84;
      v18 = v83;
      v89 = (*(*(*(a4 + 32) + 8) + 16))(v83, v88, a3);
      (*(v14 + 8))(v88, a3);
      v22 = v107;
      if ((v89 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v62 = v22(a3, a4);
  if (v62 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v115 = 0x8000000000000000;
  v65 = v22;
  v66 = v18;
  v67 = v14;
  v68 = a5;
  v69 = *(a4 + 96);
  v70 = lazy protocol witness table accessor for type Int and conformance Int(v62, v63, v64);
  v107 = v21;
  v71 = v113;
  v69(&v115, &type metadata for Int, v70, a3, a4);
  a5 = v68;
  v14 = v67;
  v18 = v66;
  v22 = v65;
  v72 = (*(*(*(a4 + 32) + 8) + 16))(v18, v71, a3);
  (*(v14 + 8))(v71, a3);
  if (v72)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v22(a3, a4) <= 64 && (v22(a3, a4) != 64 || (v114(a3, a4) & 1) != 0))
  {
    goto LABEL_44;
  }

  v95 = v114(a3, a4);
  v96 = v22(a3, a4);
  if (v95)
  {
    if (v96 > 64)
    {
      goto LABEL_37;
    }

LABEL_43:
    (*(a4 + 120))(a3, a4);
    goto LABEL_44;
  }

  if (v96 < 64)
  {
    goto LABEL_43;
  }

LABEL_37:
  v115 = 0x7FFFFFFFFFFFFFFFLL;
  v99 = v18;
  v100 = a5;
  v101 = *(a4 + 96);
  v102 = lazy protocol witness table accessor for type Int and conformance Int(v96, v97, v98);
  v103 = v113;
  v101(&v115, &type metadata for Int, v102, a3, a4);
  a5 = v100;
  v18 = v99;
  v104 = (*(*(*(a4 + 32) + 8) + 16))(v103, v99, a3);
  (*(v14 + 8))(v103, a3);
  if (v104)
  {
    goto LABEL_38;
  }

LABEL_44:
  v105 = (*(a4 + 120))(a3, a4);
  result = (*(v14 + 8))(v18, a3);
  if ((v105 & 0x8000000000000000) != 0)
  {
    if (v105 > 0xFFFFFFFFFFFFFFC0)
    {
      v78 = v111 << -v105;
      goto LABEL_47;
    }

    goto LABEL_25;
  }

  v78 = v111 >> v105;
  if (v105 >= 0x40)
  {
    v78 = 0;
  }

LABEL_47:
  *a5 = v78;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance UInt64(unint64_t *a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v109 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v109, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v108 = v8;
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v107 = v105 - v11;
  v12 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v111 = v105 - v18;
  v19 = (a4 + 64);
  v112 = *(a4 + 64);
  if (v112(a3, a4))
  {
    v20 = *(a4 + 128);
    v21 = v20(a3, a4);
    if (v21 >= 64)
    {
      v113 = -64;
      v110 = a2;
      v24 = v20;
      v25 = v16;
      v26 = v12;
      v27 = a1;
      v28 = *(a4 + 96);
      v29 = lazy protocol witness table accessor for type Int and conformance Int(v21, v22, v23);
      v106 = (a4 + 64);
      v30 = v111;
      v28(&v113, &type metadata for Int, v29, a3, a4);
      a1 = v27;
      v12 = v26;
      v16 = v25;
      v20 = v24;
      a2 = v110;
      v31 = (*(*(*(a4 + 32) + 8) + 16))(v110, v30, a3);
      v32 = v30;
      v19 = v106;
      result = (*(v12 + 8))(v32, a3);
      if (v31)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v34 = v112(a3, a4);
  v20 = *(a4 + 128);
  v35 = v20(a3, a4);
  if ((v34 & 1) == 0)
  {
    if (v35 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result < -64)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  v110 = a2;
  v106 = v20;
  if (v35 <= 64)
  {
    v72 = v108;
    v71 = v109;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v109, a3, v108, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v74 = v107;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v72, AssociatedConformanceWitness);
    v75 = v111;
    (v71[3])(v74, a3, v71);
    a2 = v110;
    LOBYTE(v71) = (*(*(*(a4 + 32) + 8) + 16))(v110, v75, a3);
    result = (*(v12 + 8))(v75, a3);
    if (v71)
    {
      goto LABEL_25;
    }

    result = (*(a4 + 120))(a3, a4);
    v20 = v106;
    if (result < -64)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v113 = -64;
    v38 = v16;
    v39 = v12;
    v40 = a1;
    v41 = *(a4 + 96);
    v42 = lazy protocol witness table accessor for type Int and conformance Int(v35, v36, v37);
    v43 = v111;
    v41(&v113, &type metadata for Int, v42, a3, a4);
    a1 = v40;
    v12 = v39;
    v16 = v38;
    v44 = v110;
    v45 = (*(*(*(a4 + 32) + 8) + 16))(v110, v43, a3);
    v46 = v43;
    v19 = (a4 + 64);
    a2 = v44;
    result = (*(v12 + 8))(v46, a3);
    v20 = v106;
    if (v45)
    {
      goto LABEL_25;
    }
  }

LABEL_11:
  v47 = v112(a3, a4);
  v105[1] = a4 + 128;
  v48 = v20(a3, a4);
  if (v47)
  {
    if (v48 > 64)
    {
      goto LABEL_13;
    }
  }

  else if (v48 >= 64)
  {
LABEL_13:
    v113 = 64;
    v110 = a2;
    v51 = v20;
    v52 = v16;
    v53 = v12;
    v54 = a1;
    v55 = *(a4 + 96);
    v56 = lazy protocol witness table accessor for type Int and conformance Int(v48, v49, v50);
    v106 = v19;
    v57 = v111;
    v55(&v113, &type metadata for Int, v56, a3, a4);
    a1 = v54;
    v12 = v53;
    v16 = v52;
    v20 = v51;
    a2 = v110;
    v58 = (*(*(*(a4 + 32) + 8) + 16))(v57, v110, a3);
    v59 = v57;
    v19 = v106;
    result = (*(v12 + 8))(v59, a3);
    if ((v58 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_25:
    v76 = 0;
    goto LABEL_47;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 64)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v12 + 16))(v16, a2, a3);
  if ((v112(a3, a4) & 1) == 0 || v20(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v112(a3, a4) & 1) == 0)
  {
    v77 = v112(a3, a4);
    v78 = v20(a3, a4);
    if ((v77 & 1) == 0)
    {
      if (v78 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v106 = v20;
    if (v78 <= 64)
    {
      v89 = v108;
      v88 = v109;
      v90 = swift_getAssociatedConformanceWitness(v109, a3, v108, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v91 = v107;
      (*(v90 + 8))(&qword_18071E0A8, 256, v89, v90);
      v92 = v111;
      (v88[3])(v91, a3, v88);
      LOBYTE(v88) = (*(*(*(a4 + 32) + 8) + 16))(v16, v92, a3);
      (*(v12 + 8))(v92, a3);
      v20 = v106;
      if ((v88 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v113 = 0x8000000000000000;
      v81 = v16;
      v82 = v12;
      v83 = a1;
      v84 = *(a4 + 96);
      v85 = lazy protocol witness table accessor for type Int and conformance Int(v78, v79, v80);
      v86 = v111;
      v84(&v113, &type metadata for Int, v85, a3, a4);
      a1 = v83;
      v12 = v82;
      v16 = v81;
      v87 = (*(*(*(a4 + 32) + 8) + 16))(v81, v86, a3);
      (*(v12 + 8))(v86, a3);
      v20 = v106;
      if ((v87 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v60 = v20(a3, a4);
  if (v60 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v113 = 0x8000000000000000;
  v63 = v20;
  v64 = v16;
  v65 = v12;
  v66 = a1;
  v67 = *(a4 + 96);
  v68 = lazy protocol witness table accessor for type Int and conformance Int(v60, v61, v62);
  v106 = v19;
  v69 = v111;
  v67(&v113, &type metadata for Int, v68, a3, a4);
  a1 = v66;
  v12 = v65;
  v16 = v64;
  v20 = v63;
  v70 = (*(*(*(a4 + 32) + 8) + 16))(v16, v69, a3);
  (*(v12 + 8))(v69, a3);
  if (v70)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v20(a3, a4) <= 64 && (v20(a3, a4) != 64 || (v112(a3, a4) & 1) != 0))
  {
    goto LABEL_44;
  }

  v93 = v112(a3, a4);
  v94 = v20(a3, a4);
  if (v93)
  {
    if (v94 > 64)
    {
      goto LABEL_37;
    }

LABEL_43:
    (*(a4 + 120))(a3, a4);
    goto LABEL_44;
  }

  if (v94 < 64)
  {
    goto LABEL_43;
  }

LABEL_37:
  v113 = 0x7FFFFFFFFFFFFFFFLL;
  v97 = v16;
  v98 = a1;
  v99 = *(a4 + 96);
  v100 = lazy protocol witness table accessor for type Int and conformance Int(v94, v95, v96);
  v101 = v111;
  v99(&v113, &type metadata for Int, v100, a3, a4);
  a1 = v98;
  v16 = v97;
  v102 = (*(*(*(a4 + 32) + 8) + 16))(v101, v97, a3);
  (*(v12 + 8))(v101, a3);
  if (v102)
  {
    goto LABEL_38;
  }

LABEL_44:
  v103 = (*(a4 + 120))(a3, a4);
  result = (*(v12 + 8))(v16, a3);
  v104 = *a1;
  if ((v103 & 0x8000000000000000) != 0)
  {
    if (v103 >= 0xFFFFFFFFFFFFFFC1)
    {
      v76 = v104 << -v103;
      goto LABEL_47;
    }

    goto LABEL_25;
  }

  v76 = v104 >> v103;
  if (v103 >= 0x40)
  {
    v76 = 0;
  }

LABEL_47:
  *a1 = v76;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance UInt64@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v110 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v110, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v109 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v108 = &v106 - v13;
  v14 = *(a3 - 1);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v113 = &v106 - v20;
  v111 = *a1;
  v21 = (a4 + 64);
  v114 = *(a4 + 64);
  if (v114(a3, a4))
  {
    v22 = *(a4 + 128);
    v23 = v22(a3, a4);
    if (v23 >= 64)
    {
      v115 = -64;
      v112 = a2;
      v26 = v22;
      v27 = v18;
      v28 = v14;
      v29 = a5;
      v30 = *(a4 + 96);
      v31 = lazy protocol witness table accessor for type Int and conformance Int(v23, v24, v25);
      v107 = (a4 + 64);
      v32 = v113;
      v30(&v115, &type metadata for Int, v31, a3, a4);
      a5 = v29;
      v14 = v28;
      v18 = v27;
      v22 = v26;
      a2 = v112;
      v33 = (*(*(*(a4 + 32) + 8) + 16))(v112, v32, a3);
      v34 = v32;
      v21 = v107;
      result = (*(v14 + 8))(v34, a3);
      if (v33)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v36 = v114(a3, a4);
  v22 = *(a4 + 128);
  v37 = v22(a3, a4);
  if ((v36 & 1) == 0)
  {
    if (v37 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result < -64)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  v112 = a2;
  v107 = v22;
  if (v37 <= 64)
  {
    v74 = v109;
    v73 = v110;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v110, a3, v109, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v76 = v108;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v74, AssociatedConformanceWitness);
    v77 = v113;
    (v73[3])(v76, a3, v73);
    a2 = v112;
    LOBYTE(v73) = (*(*(*(a4 + 32) + 8) + 16))(v112, v77, a3);
    result = (*(v14 + 8))(v77, a3);
    if (v73)
    {
      goto LABEL_25;
    }

    result = (*(a4 + 120))(a3, a4);
    v22 = v107;
    if (result < -64)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v115 = -64;
    v40 = v18;
    v41 = v14;
    v42 = a5;
    v43 = *(a4 + 96);
    v44 = lazy protocol witness table accessor for type Int and conformance Int(v37, v38, v39);
    v45 = v113;
    v43(&v115, &type metadata for Int, v44, a3, a4);
    a5 = v42;
    v14 = v41;
    v18 = v40;
    v46 = v112;
    v47 = (*(*(*(a4 + 32) + 8) + 16))(v112, v45, a3);
    v48 = v45;
    v21 = (a4 + 64);
    a2 = v46;
    result = (*(v14 + 8))(v48, a3);
    v22 = v107;
    if (v47)
    {
      goto LABEL_25;
    }
  }

LABEL_11:
  v49 = v114(a3, a4);
  v106 = a4 + 128;
  v50 = v22(a3, a4);
  if (v49)
  {
    if (v50 > 64)
    {
      goto LABEL_13;
    }
  }

  else if (v50 >= 64)
  {
LABEL_13:
    v115 = 64;
    v112 = a2;
    v53 = v22;
    v54 = v18;
    v55 = v14;
    v56 = a5;
    v57 = *(a4 + 96);
    v58 = lazy protocol witness table accessor for type Int and conformance Int(v50, v51, v52);
    v107 = v21;
    v59 = v113;
    v57(&v115, &type metadata for Int, v58, a3, a4);
    a5 = v56;
    v14 = v55;
    v18 = v54;
    v22 = v53;
    a2 = v112;
    v60 = (*(*(*(a4 + 32) + 8) + 16))(v59, v112, a3);
    v61 = v59;
    v21 = v107;
    result = (*(v14 + 8))(v61, a3);
    if ((v60 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_25:
    v78 = 0;
    goto LABEL_47;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 64)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v14 + 16))(v18, a2, a3);
  if ((v114(a3, a4) & 1) == 0 || v22(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v114(a3, a4) & 1) == 0)
  {
    v79 = v114(a3, a4);
    v80 = v22(a3, a4);
    if ((v79 & 1) == 0)
    {
      if (v80 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v107 = v22;
    if (v80 <= 64)
    {
      v91 = v109;
      v90 = v110;
      v92 = swift_getAssociatedConformanceWitness(v110, a3, v109, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v93 = v108;
      (*(v92 + 8))(&qword_18071E0A8, 256, v91, v92);
      v94 = v113;
      (v90[3])(v93, a3, v90);
      LOBYTE(v90) = (*(*(*(a4 + 32) + 8) + 16))(v18, v94, a3);
      (*(v14 + 8))(v94, a3);
      v22 = v107;
      if ((v90 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v115 = 0x8000000000000000;
      v83 = v18;
      v84 = v14;
      v85 = a5;
      v86 = *(a4 + 96);
      v87 = lazy protocol witness table accessor for type Int and conformance Int(v80, v81, v82);
      v88 = v113;
      v86(&v115, &type metadata for Int, v87, a3, a4);
      a5 = v85;
      v14 = v84;
      v18 = v83;
      v89 = (*(*(*(a4 + 32) + 8) + 16))(v83, v88, a3);
      (*(v14 + 8))(v88, a3);
      v22 = v107;
      if ((v89 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v62 = v22(a3, a4);
  if (v62 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v115 = 0x8000000000000000;
  v65 = v22;
  v66 = v18;
  v67 = v14;
  v68 = a5;
  v69 = *(a4 + 96);
  v70 = lazy protocol witness table accessor for type Int and conformance Int(v62, v63, v64);
  v107 = v21;
  v71 = v113;
  v69(&v115, &type metadata for Int, v70, a3, a4);
  a5 = v68;
  v14 = v67;
  v18 = v66;
  v22 = v65;
  v72 = (*(*(*(a4 + 32) + 8) + 16))(v18, v71, a3);
  (*(v14 + 8))(v71, a3);
  if (v72)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v22(a3, a4) <= 64 && (v22(a3, a4) != 64 || (v114(a3, a4) & 1) != 0))
  {
    goto LABEL_44;
  }

  v95 = v114(a3, a4);
  v96 = v22(a3, a4);
  if (v95)
  {
    if (v96 > 64)
    {
      goto LABEL_37;
    }

LABEL_43:
    (*(a4 + 120))(a3, a4);
    goto LABEL_44;
  }

  if (v96 < 64)
  {
    goto LABEL_43;
  }

LABEL_37:
  v115 = 0x7FFFFFFFFFFFFFFFLL;
  v99 = v18;
  v100 = a5;
  v101 = *(a4 + 96);
  v102 = lazy protocol witness table accessor for type Int and conformance Int(v96, v97, v98);
  v103 = v113;
  v101(&v115, &type metadata for Int, v102, a3, a4);
  a5 = v100;
  v18 = v99;
  v104 = (*(*(*(a4 + 32) + 8) + 16))(v103, v99, a3);
  (*(v14 + 8))(v103, a3);
  if (v104)
  {
    goto LABEL_38;
  }

LABEL_44:
  v105 = (*(a4 + 120))(a3, a4);
  result = (*(v14 + 8))(v18, a3);
  if ((v105 & 0x8000000000000000) != 0)
  {
    if (v105 > 0xFFFFFFFFFFFFFFC0)
    {
      v78 = v111 >> -v105;
      goto LABEL_47;
    }

    goto LABEL_25;
  }

  v78 = v111 << v105;
  if (v105 >= 0x40)
  {
    v78 = 0;
  }

LABEL_47:
  *a5 = v78;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance UInt64(unint64_t *a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v109 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v109, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v108 = v8;
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v107 = v105 - v11;
  v12 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v111 = v105 - v18;
  v19 = (a4 + 64);
  v112 = *(a4 + 64);
  if (v112(a3, a4))
  {
    v20 = *(a4 + 128);
    v21 = v20(a3, a4);
    if (v21 >= 64)
    {
      v113 = -64;
      v110 = a2;
      v24 = v20;
      v25 = v16;
      v26 = v12;
      v27 = a1;
      v28 = *(a4 + 96);
      v29 = lazy protocol witness table accessor for type Int and conformance Int(v21, v22, v23);
      v106 = (a4 + 64);
      v30 = v111;
      v28(&v113, &type metadata for Int, v29, a3, a4);
      a1 = v27;
      v12 = v26;
      v16 = v25;
      v20 = v24;
      a2 = v110;
      v31 = (*(*(*(a4 + 32) + 8) + 16))(v110, v30, a3);
      v32 = v30;
      v19 = v106;
      result = (*(v12 + 8))(v32, a3);
      if (v31)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v34 = v112(a3, a4);
  v20 = *(a4 + 128);
  v35 = v20(a3, a4);
  if ((v34 & 1) == 0)
  {
    if (v35 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result < -64)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  v110 = a2;
  v106 = v20;
  if (v35 <= 64)
  {
    v72 = v108;
    v71 = v109;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v109, a3, v108, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v74 = v107;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v72, AssociatedConformanceWitness);
    v75 = v111;
    (v71[3])(v74, a3, v71);
    a2 = v110;
    LOBYTE(v71) = (*(*(*(a4 + 32) + 8) + 16))(v110, v75, a3);
    result = (*(v12 + 8))(v75, a3);
    if (v71)
    {
      goto LABEL_25;
    }

    result = (*(a4 + 120))(a3, a4);
    v20 = v106;
    if (result < -64)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v113 = -64;
    v38 = v16;
    v39 = v12;
    v40 = a1;
    v41 = *(a4 + 96);
    v42 = lazy protocol witness table accessor for type Int and conformance Int(v35, v36, v37);
    v43 = v111;
    v41(&v113, &type metadata for Int, v42, a3, a4);
    a1 = v40;
    v12 = v39;
    v16 = v38;
    v44 = v110;
    v45 = (*(*(*(a4 + 32) + 8) + 16))(v110, v43, a3);
    v46 = v43;
    v19 = (a4 + 64);
    a2 = v44;
    result = (*(v12 + 8))(v46, a3);
    v20 = v106;
    if (v45)
    {
      goto LABEL_25;
    }
  }

LABEL_11:
  v47 = v112(a3, a4);
  v105[1] = a4 + 128;
  v48 = v20(a3, a4);
  if (v47)
  {
    if (v48 > 64)
    {
      goto LABEL_13;
    }
  }

  else if (v48 >= 64)
  {
LABEL_13:
    v113 = 64;
    v110 = a2;
    v51 = v20;
    v52 = v16;
    v53 = v12;
    v54 = a1;
    v55 = *(a4 + 96);
    v56 = lazy protocol witness table accessor for type Int and conformance Int(v48, v49, v50);
    v106 = v19;
    v57 = v111;
    v55(&v113, &type metadata for Int, v56, a3, a4);
    a1 = v54;
    v12 = v53;
    v16 = v52;
    v20 = v51;
    a2 = v110;
    v58 = (*(*(*(a4 + 32) + 8) + 16))(v57, v110, a3);
    v59 = v57;
    v19 = v106;
    result = (*(v12 + 8))(v59, a3);
    if ((v58 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_25:
    v76 = 0;
    goto LABEL_47;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 64)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v12 + 16))(v16, a2, a3);
  if ((v112(a3, a4) & 1) == 0 || v20(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v112(a3, a4) & 1) == 0)
  {
    v77 = v112(a3, a4);
    v78 = v20(a3, a4);
    if ((v77 & 1) == 0)
    {
      if (v78 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v106 = v20;
    if (v78 <= 64)
    {
      v89 = v108;
      v88 = v109;
      v90 = swift_getAssociatedConformanceWitness(v109, a3, v108, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v91 = v107;
      (*(v90 + 8))(&qword_18071E0A8, 256, v89, v90);
      v92 = v111;
      (v88[3])(v91, a3, v88);
      LOBYTE(v88) = (*(*(*(a4 + 32) + 8) + 16))(v16, v92, a3);
      (*(v12 + 8))(v92, a3);
      v20 = v106;
      if ((v88 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v113 = 0x8000000000000000;
      v81 = v16;
      v82 = v12;
      v83 = a1;
      v84 = *(a4 + 96);
      v85 = lazy protocol witness table accessor for type Int and conformance Int(v78, v79, v80);
      v86 = v111;
      v84(&v113, &type metadata for Int, v85, a3, a4);
      a1 = v83;
      v12 = v82;
      v16 = v81;
      v87 = (*(*(*(a4 + 32) + 8) + 16))(v81, v86, a3);
      (*(v12 + 8))(v86, a3);
      v20 = v106;
      if ((v87 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v60 = v20(a3, a4);
  if (v60 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v113 = 0x8000000000000000;
  v63 = v20;
  v64 = v16;
  v65 = v12;
  v66 = a1;
  v67 = *(a4 + 96);
  v68 = lazy protocol witness table accessor for type Int and conformance Int(v60, v61, v62);
  v106 = v19;
  v69 = v111;
  v67(&v113, &type metadata for Int, v68, a3, a4);
  a1 = v66;
  v12 = v65;
  v16 = v64;
  v20 = v63;
  v70 = (*(*(*(a4 + 32) + 8) + 16))(v16, v69, a3);
  (*(v12 + 8))(v69, a3);
  if (v70)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v20(a3, a4) <= 64 && (v20(a3, a4) != 64 || (v112(a3, a4) & 1) != 0))
  {
    goto LABEL_44;
  }

  v93 = v112(a3, a4);
  v94 = v20(a3, a4);
  if (v93)
  {
    if (v94 > 64)
    {
      goto LABEL_37;
    }

LABEL_43:
    (*(a4 + 120))(a3, a4);
    goto LABEL_44;
  }

  if (v94 < 64)
  {
    goto LABEL_43;
  }

LABEL_37:
  v113 = 0x7FFFFFFFFFFFFFFFLL;
  v97 = v16;
  v98 = a1;
  v99 = *(a4 + 96);
  v100 = lazy protocol witness table accessor for type Int and conformance Int(v94, v95, v96);
  v101 = v111;
  v99(&v113, &type metadata for Int, v100, a3, a4);
  a1 = v98;
  v16 = v97;
  v102 = (*(*(*(a4 + 32) + 8) + 16))(v101, v97, a3);
  (*(v12 + 8))(v101, a3);
  if (v102)
  {
    goto LABEL_38;
  }

LABEL_44:
  v103 = (*(a4 + 120))(a3, a4);
  result = (*(v12 + 8))(v16, a3);
  v104 = *a1;
  if ((v103 & 0x8000000000000000) != 0)
  {
    if (v103 > 0xFFFFFFFFFFFFFFC0)
    {
      v76 = v104 >> -v103;
      goto LABEL_47;
    }

    goto LABEL_25;
  }

  v76 = v104 << v103;
  if (v103 >= 0x40)
  {
    v76 = 0;
  }

LABEL_47:
  *a1 = v76;
  return result;
}

unint64_t *protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance UInt64(unint64_t *result, unint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  if (!*a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *v3 / v4;
  *a2 = *v3 % v4;
  *result = v5;
  return result;
}

BOOL _ss6UInt64VSzsSz10isMultiple2ofSbx_tFTW_0(void *a1)
{
  v2 = *v1;
  if (*a1)
  {
    v2 %= *a1;
  }

  return v2 == 0;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance UInt64(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    a2;
    v36 = 0;
    v35 = 1;
    goto LABEL_47;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v40[0] = a1;
      v40[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v16 = specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v40, v5, 10);
      v22 = v21 & 1;
LABEL_42:
      v41 = v22;
      goto LABEL_43;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v38 = _StringObject.sharedUTF8.getter(a1, a2);
      v6 = v39;
      v8 = v38;
      if (v6 > 0)
      {
LABEL_9:
        v9 = *v8;
        if (v9 == 43)
        {
          v23 = specialized Collection.subscript.getter(1, v8, v6);
          v27 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v23, v24, v25, v26);
          if (v28)
          {
            v16 = 0;
            if (v27)
            {
              while (1)
              {
                v29 = *v27 - 48;
                if (v29 >= 0xA)
                {
                  goto LABEL_41;
                }

                v30 = !is_mul_ok(v16, 0xAuLL);
                v19 = __CFADD__(10 * v16, v29);
                v16 = 10 * v16 + v29;
                v31 = v19;
                if (v30 || v31)
                {
                  goto LABEL_41;
                }

                ++v27;
                if (!--v28)
                {
                  goto LABEL_40;
                }
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          if (v9 != 45)
          {
            v16 = 0;
            while (1)
            {
              v32 = *v8 - 48;
              if (v32 >= 0xA)
              {
                goto LABEL_41;
              }

              v33 = !is_mul_ok(v16, 0xAuLL);
              v19 = __CFADD__(10 * v16, v32);
              v16 = 10 * v16 + v32;
              v34 = v19;
              if (v33 || v34)
              {
                goto LABEL_41;
              }

              ++v8;
              if (!--v6)
              {
                goto LABEL_40;
              }
            }
          }

          v10 = specialized Collection.subscript.getter(1, v8, v6);
          v14 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v11, v12, v13);
          if (v15)
          {
            v16 = 0;
            if (v14)
            {
              while (1)
              {
                v17 = *v14 - 48;
                if (v17 >= 0xA)
                {
                  break;
                }

                v18 = !is_mul_ok(v16, 0xAuLL);
                v19 = 10 * v16 >= v17;
                v16 = 10 * v16 - v17;
                v20 = !v19;
                if (v18 || v20)
                {
                  break;
                }

                ++v14;
                if (!--v15)
                {
                  goto LABEL_40;
                }
              }

LABEL_41:
              v16 = 0;
              v22 = 1;
              goto LABEL_42;
            }

LABEL_40:
            v41 = 0;
LABEL_43:
            v35 = v41;
            goto LABEL_44;
          }
        }

        v16 = 0;
        v41 = 1;
        goto LABEL_43;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
  v35 = v37;
LABEL_44:
  a2;
  if (v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = v16;
  }

LABEL_47:
  *a3 = v36;
  *(a3 + 8) = v35 & 1;
}

uint64_t protocol witness for Numeric.init<A>(exactly:) in conformance UInt64@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X5>, uint64_t *a6@<X8>)
{
  v35 = a5;
  v36 = a4;
  v38 = a6;
  v39 = *(a2 - 1);
  v40 = a1;
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v10 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v11, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v34 - v15;
  v37 = *(a3 + 64);
  if ((v37(a2, a3) & 1) == 0 || (v17 = swift_getAssociatedConformanceWitness(v11, a2, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral), (*(v17 + 8))(&qword_18071E0A8, 256, v13, v17), (*(v11 + 24))(v16, a2, v11), v18 = (*(*(*(a3 + 32) + 8) + 16))(v40, v9, a2), v19 = *(v39 + 8), v19(v9, a2), (v18 & 1) == 0))
  {
    v20 = *(a3 + 128);
    if (v20(a2, a3) < 64)
    {
      goto LABEL_12;
    }

    v41 = -1;
    v21 = v37(a2, a3);
    v22 = v40;
    v23 = v20(a2, a3);
    if (v21)
    {
      if (v23 <= 64)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, a2, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v13, AssociatedConformanceWitness);
        (*(v11 + 24))(v16, a2, v11);
        v25 = (*(*(*(a3 + 32) + 8) + 40))(v22, v9, a2);
        (*(v39 + 8))(v9, a2);
        if ((v25 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if (v23 < 65)
    {
LABEL_11:
      (*(a3 + 120))(a2, a3);
      goto LABEL_12;
    }

    v26 = *(a3 + 96);
    v27 = v35();
    v26(&v41, v36, v27, a2, a3);
    v28 = (*(*(*(a3 + 32) + 8) + 16))(v9, v22, a2);
    v19 = *(v39 + 8);
    v19(v9, a2);
    if ((v28 & 1) == 0)
    {
LABEL_12:
      v32 = v40;
      v30 = (*(a3 + 120))(a2, a3);
      result = (*(v39 + 8))(v32, a2);
      v31 = 0;
      goto LABEL_13;
    }
  }

  result = (v19)(v40, a2);
  v30 = 0;
  v31 = 1;
LABEL_13:
  v33 = v38;
  *v38 = v30;
  *(v33 + 8) = v31;
  return result;
}

unint64_t *protocol witness for static Numeric.* infix(_:_:) in conformance UInt64@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  if (is_mul_ok(*result, *a2))
  {
    *a3 = *result * *a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t *protocol witness for static Numeric.*= infix(_:_:) in conformance UInt64(unint64_t *result, unint64_t *a2)
{
  if (is_mul_ok(*result, *a2))
  {
    *result *= *a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t *protocol witness for Strideable.distance(to:) in conformance UInt64@<X0>(unint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = *result - *v2;
  if (*result >= *v2)
  {
    if ((*result - *v2) >= 0)
    {
      goto LABEL_5;
    }

LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v4 - v3) < 0)
  {
    goto LABEL_6;
  }

  v5 = v3 - v4;
LABEL_5:
  *a2 = v5;
  return result;
}

unint64_t *protocol witness for Strideable.advanced(by:) in conformance UInt64@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if ((*result & 0x8000000000000000) == 0)
  {
    v5 = __CFADD__(v4, v3);
    v3 += v4;
    if (!v5)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v6 = -v3;
  v5 = v4 >= v6;
  v3 = v4 - v6;
  if (!v5)
  {
    __break(1u);
    return result;
  }

LABEL_7:
  *a2 = v3;
  return result;
}

void *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance UInt64@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__CFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

void *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance UInt64(void *result, void *a2)
{
  if (__CFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *result += *a2;
  }

  return result;
}

void *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance UInt64@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*result < *a2)
  {
    __break(1u);
  }

  else
  {
    *a3 = *result - *a2;
  }

  return result;
}

void *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance UInt64(void *result, void *a2)
{
  if (*result < *a2)
  {
    __break(1u);
  }

  else
  {
    *result -= *a2;
  }

  return result;
}

uint64_t UInt._toCustomAnyHashable()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVySuGMd, _ss22_IntegerAnyHashableBoxVySuGMR);
  a2[3] = result;
  a2[4] = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UInt@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVySuGMd, _ss22_IntegerAnyHashableBoxVySuGMR);
  a1[3] = result;
  a1[4] = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v3;
  return result;
}

uint64_t Int.init(exactly:)(__n128 a1)
{
  if (truncl(*a1.n128_u16) != *a1.n128_u16 || (a1.n128_u16[0] & 0x7FFFu) > 0x7BFF)
  {
    return 0;
  }

  else
  {
    return *a1.n128_u16;
  }
}

Swift::Int_optional __swiftcall Int.init(exactly:)(Swift::Float exactly)
{
  v1 = exactly <= -9.2234e18;
  if (exactly >= 9.2234e18)
  {
    v1 = 1;
  }

  v2 = truncf(exactly) != exactly || v1;
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = exactly;
  }

  result.value = v3;
  result.is_nil = v2;
  return result;
}

uint64_t *static Int.*= infix(_:_:)(uint64_t *result, uint64_t a2)
{
  v2 = *result * a2;
  if ((*result * a2) >> 64 == v2 >> 63)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *static Int64./= infix(_:_:)(uint64_t *result, uint64_t a2)
{
  if (!a2 || (v2 = *result, a2 == -1) && v2 == 0x8000000000000000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v2 / a2;
  return result;
}

Swift::tuple_partialValue_Int_overflow_Bool __swiftcall Int.addingReportingOverflow(_:)(Swift::Int a1)
{
  v2 = __OFADD__(v1, a1);
  v3 = v1 + a1;
  v4 = v2;
  result.partialValue = v3;
  result.overflow = v4;
  return result;
}

Swift::tuple_partialValue_Int_overflow_Bool __swiftcall Int.subtractingReportingOverflow(_:)(Swift::Int a1)
{
  v2 = __OFSUB__(v1, a1);
  v3 = v1 - a1;
  v4 = v2;
  result.partialValue = v3;
  result.overflow = v4;
  return result;
}

Swift::tuple_partialValue_Int_overflow_Bool __swiftcall Int.dividedReportingOverflow(by:)(Swift::Int by)
{
  v2 = v1;
  if (by)
  {
    if (by == -1 && v1 == 0x8000000000000000)
    {
      v3 = 1;
      v4 = 0x8000000000000000;
    }

    else
    {
      v3 = 0;
      v4 = v2 / by;
    }
  }

  else
  {
    v3 = 1;
    v4 = v2;
  }

  result.partialValue = v4;
  result.overflow = v3;
  return result;
}

Swift::tuple_partialValue_Int_overflow_Bool __swiftcall Int.remainderReportingOverflow(dividingBy:)(Swift::Int dividingBy)
{
  v2 = v1;
  if (dividingBy)
  {
    if (dividingBy == -1 && v1 == 0x8000000000000000)
    {
      v3 = 1;
      v4 = 0;
    }

    else
    {
      v3 = 0;
      v4 = v2 % dividingBy;
    }
  }

  else
  {
    v3 = 1;
    v4 = v2;
  }

  result.partialValue = v4;
  result.overflow = v3;
  return result;
}

uint64_t *static Int64.%= infix(_:_:)(uint64_t *result, uint64_t a2)
{
  if (!a2 || (v2 = *result, a2 == -1) && v2 == 0x8000000000000000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v2 % a2;
  return result;
}

Swift::Int __swiftcall Int.Words.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall Int.Words.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Int.Words(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x30, 0x96FEuLL);
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = Int.Words.subscript.read(v4, *a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance Int.Words;
}

void protocol witness for Collection.subscript.read in conformance UInt8.Words(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

void (*Int.Words.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2 < 0 || a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

void *protocol witness for Collection.subscript.getter in conformance UInt64.Words@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if ((*result & 0x8000000000000000) != 0 || (v3 = result[1], v3 >= 2))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *v2;
  *a2 = *result;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

Swift::tuple_high_Int_low_UInt __swiftcall Int.multipliedFullWidth(by:)(Swift::Int by)
{
  v2 = v1 * by;
  v3 = (v1 * by) >> 64;
  v4 = v2;
  result.low = v4;
  result.high = v3;
  return result;
}

Swift::tuple_quotient_Int_remainder_Int __swiftcall Int.dividingFullWidth(_:)(Swift::tuple_high_Int_low_UInt a1)
{
  v2 = Int64.dividingFullWidth(_:)(a1.high, a1.low, v1);
  result.remainder = v3;
  result.quotient = v2;
  return result;
}

uint64_t Int64.dividingFullWidth(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 || (result = __divti3(), v4 ^ (result >> 63)))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

BOOL _ss5Int64Vs17FixedWidthIntegerssACP23addingReportingOverflowyx12partialValue_Sb8overflowtxFTW_0(void *a1, void *a2)
{
  v3 = __OFADD__(*v2, *a2);
  *a1 = *v2 + *a2;
  return v3;
}

BOOL _ss5Int64Vs17FixedWidthIntegerssACP28subtractingReportingOverflowyx12partialValue_Sb8overflowtxFTW_0(void *a1, void *a2)
{
  v3 = __OFSUB__(*v2, *a2);
  *a1 = *v2 - *a2;
  return v3;
}

BOOL _ss5Int64Vs17FixedWidthIntegerssACP27multipliedReportingOverflow2byx12partialValue_Sb8overflowtx_tFTW_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2 * *a2;
  v4 = (*v2 * *a2) >> 64 != v3 >> 63;
  *a1 = v3;
  return v4;
}

uint64_t _ss5Int64Vs17FixedWidthIntegerssACP24dividedReportingOverflow2byx12partialValue_Sb8overflowtx_tFTW_0(int64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (*a2)
  {
    if (v3 == -1 && v4 == 0x8000000000000000)
    {
      v6 = 1;
      v4 = 0x8000000000000000;
    }

    else
    {
      v6 = 0;
      v4 /= v3;
    }
  }

  else
  {
    v6 = 1;
  }

  *a1 = v4;
  return v6;
}

uint64_t _ss5Int64Vs17FixedWidthIntegerssACP26remainderReportingOverflow10dividingByx12partialValue_Sb8overflowtx_tFTW_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (!*a2)
  {
    goto LABEL_9;
  }

  if (v3 == -1 && v4 == 0x8000000000000000)
  {
    v4 = 0;
LABEL_9:
    v6 = 1;
    goto LABEL_7;
  }

  v6 = 0;
  v4 %= v3;
LABEL_7:
  *a1 = v4;
  return v6;
}

void *_ss5Int64Vs17FixedWidthIntegerssACP014multipliedFullC02byx4high_9MagnitudeQz3lowtx_tFTW_0(void *result, uint64_t *a2, uint64_t *a3)
{
  v4 = *v3 * *a3;
  *result = (*v3 * *a3) >> 64;
  *a2 = v4;
  return result;
}

Swift::Int protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance Int(Swift::Int *a1, Swift::Int *a2, Swift::tuple_high_Int_low_UInt *a3)
{
  v6 = Int.dividingFullWidth(_:)(*a3);
  result = v6.quotient;
  *a1 = v6.quotient;
  *a2 = v6.remainder;
  return result;
}

void *_ss5Int64Vs35_ExpressibleByBuiltinIntegerLiteralssACP08_builtineF0xBI_tcfCTW_0@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 >> 8 <= 0x40)
  {
    *a3 = *result;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance Int64@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v39 = a4;
  v40 = a5;
  v42 = a6;
  v9 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v9, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v38 - v14;
  v43 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v13, v16);
  v41 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(a3 + 64);
  v18 = v44(a2, a3);
  v19 = *(a3 + 128);
  if ((v18 & 1) != 0 && v19(a2, a3) >= 65)
  {
    v38 = v9;
    v45 = 0x8000000000000000;
    v20 = v44;
    if (v44(a2, a3))
    {
      if (v19(a2, a3) < 64)
      {
LABEL_13:
        (*(a3 + 120))(a2, a3);
        goto LABEL_14;
      }
    }

    else
    {
      v21 = v20(a2, a3);
      v22 = v19(a2, a3);
      if ((v21 & 1) == 0)
      {
        if (v22 >= 64)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v22 <= 64)
      {
        v25 = v38;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v38, a2, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v11, AssociatedConformanceWitness);
        v27 = v41;
        (*(v25 + 3))(v15, a2, v25);
        v28 = (*(*(*(a3 + 32) + 8) + 16))(a1, v27, a2);
        (*(v43 + 8))(v27, a2);
        if (v28)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    v23 = v41;
    (*(a3 + 96))(&v45, v39, v40, a2, a3);
    v24 = (*(*(*(a3 + 32) + 8) + 16))(a1, v23, a2);
    (*(v43 + 8))(v23, a2);
    if (v24)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  v29 = v19(a2, a3);
  v31 = v43;
  v30 = v44;
  if (v29 > 64 || v19(a2, a3) == 64 && (v30(a2, a3) & 1) == 0)
  {
    v45 = 0x7FFFFFFFFFFFFFFFLL;
    v32 = v30(a2, a3);
    v33 = v19(a2, a3);
    if (v32)
    {
      if (v33 > 64)
      {
        goto LABEL_17;
      }
    }

    else if (v33 > 63)
    {
LABEL_17:
      v34 = v41;
      (*(a3 + 96))(&v45, v39, v40, a2, a3);
      v35 = (*(*(*(a3 + 32) + 8) + 16))(v34, a1, a2);
      (*(v31 + 8))(v34, a2);
      if ((v35 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(a3 + 120))(a2, a3);
  }

LABEL_24:
  v36 = (*(a3 + 120))(a2, a3);
  result = (*(v31 + 8))(a1, a2);
  *v42 = v36;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(truncatingIfNeeded:) in conformance UInt64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = (*(a3 + 120))(a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  return result;
}

unint64_t _ss5Int64VSzsSz16_binaryLogarithmSiyFTW_0()
{
  if (*v0 <= 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __clz(*v0) ^ 0x3F;
}

void *protocol witness for static BinaryInteger./ infix(_:_:) in conformance Int64@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a2;
  if (!*a2 || (*result == 0x8000000000000000 ? (v4 = v3 == -1) : (v4 = 0), v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result / v3;
  return result;
}

uint64_t *protocol witness for static BinaryInteger./= infix(_:_:) in conformance Int64(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2 || ((v3 = *result, v2 == -1) ? (v4 = v3 == 0x8000000000000000) : (v4 = 0), v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v3 / v2;
  return result;
}

uint64_t *protocol witness for static BinaryInteger.% infix(_:_:) in conformance Int64@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a2;
  if (!*a2 || (*result == 0x8000000000000000 ? (v4 = v3 == -1) : (v4 = 0), v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result % v3;
  return result;
}

uint64_t *protocol witness for static BinaryInteger.%= infix(_:_:) in conformance Int64(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2 || ((v3 = *result, v2 == -1) ? (v4 = v3 == 0x8000000000000000) : (v4 = 0), v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v3 % v2;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance Int@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v61 = a5;
  v62 = a6;
  v63 = a7;
  v58 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v58, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v57 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v56 = &v55 - v14;
  v15 = *(a3 - 1);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v55 - v21;
  v60 = *a1;
  v23 = *(a4 + 64);
  v24 = v23(a3, a4);
  v59 = v19;
  if (v24)
  {
    v25 = *(a4 + 128);
    if (v25(a3, a4) < 64)
    {
      result = (*(a4 + 120))(a3, a4);
      if (result >= -64)
      {
        goto LABEL_18;
      }

LABEL_17:
      v36 = 0;
      v37 = v63;
      goto LABEL_51;
    }

    v64 = -64;
    (*(a4 + 96))(&v64, v61, v62, a3, a4);
    v30 = (*(*(*(a4 + 32) + 8) + 16))(a2, v22, a3);
    v31 = v15;
LABEL_9:
    result = (*(v31 + 8))(v22, a3);
    if (v30)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v27 = v15;
  v28 = v23(a3, a4);
  v25 = *(a4 + 128);
  v29 = v25(a3, a4);
  if (v28)
  {
    if (v29 <= 64)
    {
      v55 = v25;
      v32 = v57;
      v33 = v58;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v58, a3, v57, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v35 = v56;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v32, AssociatedConformanceWitness);
      (v33[3])(v35, a3, v33);
      LOBYTE(v32) = (*(*(*(a4 + 32) + 8) + 16))(a2, v22, a3);
      v15 = v27;
      result = (*(v27 + 8))(v22, a3);
      if (v32)
      {
        goto LABEL_17;
      }

      result = (*(a4 + 120))(a3, a4);
      v25 = v55;
      if (result < -64)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    v64 = -64;
    (*(a4 + 96))(&v64, v61, v62, a3, a4);
    v30 = (*(*(*(a4 + 32) + 8) + 16))(a2, v22, a3);
    v15 = v27;
    v31 = v27;
    goto LABEL_9;
  }

  if (v29 >= 64)
  {
    v15 = v27;
    goto LABEL_18;
  }

  result = (*(a4 + 120))(a3, a4);
  v15 = v27;
  if (result < -64)
  {
    goto LABEL_17;
  }

LABEL_18:
  v38 = v15;
  v39 = v23(a3, a4);
  v55 = (a4 + 128);
  v40 = v25(a3, a4);
  if (v39)
  {
    if (v40 > 64)
    {
      goto LABEL_20;
    }

LABEL_28:
    result = (*(a4 + 120))(a3, a4);
    v42 = v38;
    if (result <= 64)
    {
      goto LABEL_21;
    }

LABEL_29:
    v36 = v60 >> 63;
    v37 = v63;
    goto LABEL_51;
  }

  if (v40 < 64)
  {
    goto LABEL_28;
  }

LABEL_20:
  v64 = 64;
  (*(a4 + 96))(&v64, v61, v62, a3, a4);
  v41 = (*(*(*(a4 + 32) + 8) + 16))(v22, a2, a3);
  v42 = v38;
  result = (*(v38 + 8))(v22, a3);
  if (v41)
  {
    goto LABEL_29;
  }

LABEL_21:
  v43 = v59;
  (*(v42 + 16))(v59, a2, a3);
  if ((v23(a3, a4) & 1) == 0 || v25(a3, a4) < 65)
  {
    goto LABEL_38;
  }

  if ((v23(a3, a4) & 1) == 0)
  {
    v45 = v23(a3, a4);
    v46 = v25(a3, a4);
    if ((v45 & 1) == 0)
    {
      if (v46 >= 64)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (v46 <= 64)
    {
      v48 = v57;
      v49 = swift_getAssociatedConformanceWitness(v58, a3, v57, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v50 = v56;
      (*(v49 + 8))(&qword_18071E0A8, 256, v48, v49);
      (v58[3])(v50, a3);
      LOBYTE(v48) = (*(*(*(a4 + 32) + 8) + 16))(v43, v22, a3);
      (*(v42 + 8))(v22, a3);
      if ((v48 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v64 = 0x8000000000000000;
      (*(a4 + 96))(&v64, v61, v62, a3, a4);
      v47 = (*(*(*(a4 + 32) + 8) + 16))(v43, v22, a3);
      (*(v42 + 8))(v22, a3);
      if ((v47 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_42:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v25(a3, a4) < 64)
  {
LABEL_37:
    (*(a4 + 120))(a3, a4);
    goto LABEL_38;
  }

  v64 = 0x8000000000000000;
  (*(a4 + 96))(&v64, v61, v62, a3, a4);
  v44 = (*(*(*(a4 + 32) + 8) + 16))(v43, v22, a3);
  (*(v42 + 8))(v22, a3);
  if (v44)
  {
    goto LABEL_42;
  }

LABEL_38:
  if (v25(a3, a4) <= 64 && (v25(a3, a4) != 64 || (v23(a3, a4) & 1) != 0))
  {
    goto LABEL_48;
  }

  v51 = v23(a3, a4);
  v52 = v25(a3, a4);
  if (v51)
  {
    if (v52 > 64)
    {
      goto LABEL_41;
    }
  }

  else if (v52 >= 64)
  {
LABEL_41:
    v64 = 0x7FFFFFFFFFFFFFFFLL;
    (*(a4 + 96))(&v64, v61, v62, a3, a4);
    v53 = (*(*(*(a4 + 32) + 8) + 16))(v22, v43, a3);
    (*(v42 + 8))(v22, a3);
    if (v53)
    {
      goto LABEL_42;
    }

    goto LABEL_48;
  }

  (*(a4 + 120))(a3, a4);
LABEL_48:
  v54 = (*(a4 + 120))(a3, a4);
  result = (*(v42 + 8))(v43, a3);
  if ((v54 & 0x8000000000000000) != 0)
  {
    v37 = v63;
    if (v54 <= 0xFFFFFFFFFFFFFFC0)
    {
      v36 = 0;
    }

    else
    {
      v36 = v60 << -v54;
    }
  }

  else
  {
    v37 = v63;
    if (v54 >= 0x40)
    {
      v36 = v60 >> 63;
    }

    else
    {
      v36 = v60 >> v54;
    }
  }

LABEL_51:
  *v37 = v36;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance Int(uint64_t *a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a5;
  v53 = a6;
  v54 = a1;
  v51 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v51, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v50 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v49 = &v47 - v12;
  v55 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v47 - v18;
  v20 = *(a4 + 64);
  if ((v20(a3, a4) & 1) == 0)
  {
    v22 = v20(a3, a4);
    v21 = *(a4 + 128);
    v23 = v21(a3, a4);
    if ((v22 & 1) == 0)
    {
      if (v23 >= 64)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (v23 <= 64)
    {
      v48 = v16;
      v33 = v50;
      v32 = v51;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v51, a3, v50, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v35 = v49;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v33, AssociatedConformanceWitness);
      (v32[3])(v35, a3, v32);
      LOBYTE(v32) = (*(*(*(a4 + 32) + 8) + 16))(a2, v19, a3);
      result = (*(v55 + 8))(v19, a3);
      if (v32)
      {
        goto LABEL_24;
      }

      result = (*(a4 + 120))(a3, a4);
      v16 = v48;
      if (result < -64)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

LABEL_6:
    v56 = -64;
    (*(a4 + 96))(&v56, v52, v53, a3, a4);
    v24 = (*(*(*(a4 + 32) + 8) + 16))(a2, v19, a3);
    result = (*(v55 + 8))(v19, a3);
    if (v24)
    {
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  v21 = *(a4 + 128);
  if (v21(a3, a4) >= 64)
  {
    goto LABEL_6;
  }

LABEL_9:
  result = (*(a4 + 120))(a3, a4);
  if (result < -64)
  {
    goto LABEL_24;
  }

LABEL_10:
  v26 = v20(a3, a4);
  v48 = (a4 + 128);
  v27 = v21(a3, a4);
  if (v26)
  {
    if (v27 > 64)
    {
      goto LABEL_12;
    }

LABEL_19:
    result = (*(a4 + 120))(a3, a4);
    if (result <= 64)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  if (v27 < 64)
  {
    goto LABEL_19;
  }

LABEL_12:
  v56 = 64;
  (*(a4 + 96))(&v56, v52, v53, a3, a4);
  v28 = (*(*(*(a4 + 32) + 8) + 16))(v19, a2, a3);
  result = (*(v55 + 8))(v19, a3);
  if ((v28 & 1) == 0)
  {
LABEL_13:
    (*(v55 + 16))(v16, a2, a3);
    if ((v20(a3, a4) & 1) != 0 && v21(a3, a4) >= 65)
    {
      if (v20(a3, a4))
      {
        if (v21(a3, a4) < 64)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v36 = v20(a3, a4);
        v37 = v21(a3, a4);
        if ((v36 & 1) == 0)
        {
          if (v37 >= 64)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

        if (v37 <= 64)
        {
          v40 = v50;
          v39 = v51;
          v41 = swift_getAssociatedConformanceWitness(v51, a3, v50, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v42 = v49;
          (*(v41 + 8))(&qword_18071E0A8, 256, v40, v41);
          (v39[3])(v42, a3, v39);
          LOBYTE(v39) = (*(*(*(a4 + 32) + 8) + 16))(v16, v19, a3);
          (*(v55 + 8))(v19, a3);
          if ((v39 & 1) == 0)
          {
LABEL_32:
            (*(a4 + 120))(a3, a4);
            goto LABEL_33;
          }

LABEL_37:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      v56 = 0x8000000000000000;
      (*(a4 + 96))(&v56, v52, v53, a3, a4);
      v38 = (*(*(*(a4 + 32) + 8) + 16))(v16, v19, a3);
      (*(v55 + 8))(v19, a3);
      if (v38)
      {
        goto LABEL_37;
      }
    }

LABEL_33:
    if (v21(a3, a4) <= 64 && (v21(a3, a4) != 64 || (v20(a3, a4) & 1) != 0))
    {
      goto LABEL_43;
    }

    v43 = v20(a3, a4);
    v44 = v21(a3, a4);
    if (v43)
    {
      if (v44 > 64)
      {
        goto LABEL_36;
      }
    }

    else if (v44 >= 64)
    {
LABEL_36:
      v56 = 0x7FFFFFFFFFFFFFFFLL;
      (*(a4 + 96))(&v56, v52, v53, a3, a4);
      v45 = (*(*(*(a4 + 32) + 8) + 16))(v19, v16, a3);
      (*(v55 + 8))(v19, a3);
      if (v45)
      {
        goto LABEL_37;
      }

LABEL_43:
      v46 = (*(a4 + 120))(a3, a4);
      result = (*(v55 + 8))(v16, a3);
      v29 = v54;
      v30 = *v54;
      if ((v46 & 0x8000000000000000) == 0)
      {
        if (v46 < 0x40)
        {
          v31 = v30 >> v46;
          goto LABEL_46;
        }

        goto LABEL_21;
      }

      if (v46 > 0xFFFFFFFFFFFFFFC0)
      {
        v31 = v30 << -v46;
        v29 = v54;
        goto LABEL_46;
      }

LABEL_24:
      v31 = 0;
      v29 = v54;
      goto LABEL_46;
    }

    (*(a4 + 120))(a3, a4);
    goto LABEL_43;
  }

LABEL_20:
  v29 = v54;
  v30 = *v54;
LABEL_21:
  v31 = v30 >> 63;
LABEL_46:
  *v29 = v31;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance Int@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v61 = a5;
  v62 = a6;
  v63 = a7;
  v58 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v58, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v57 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v56 = &v55 - v14;
  v15 = *(a3 - 1);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v55 - v21;
  v60 = *a1;
  v23 = *(a4 + 64);
  v24 = v23(a3, a4);
  v59 = v19;
  if (v24)
  {
    v25 = *(a4 + 128);
    if (v25(a3, a4) < 64)
    {
      result = (*(a4 + 120))(a3, a4);
      if (result > -65)
      {
        goto LABEL_18;
      }

LABEL_17:
      v36 = v60 >> 63;
LABEL_51:
      v54 = v63;
      goto LABEL_52;
    }

    v64 = -64;
    (*(a4 + 96))(&v64, v61, v62, a3, a4);
    v30 = (*(*(*(a4 + 32) + 8) + 16))(a2, v22, a3);
    v31 = v15;
LABEL_9:
    result = (*(v31 + 8))(v22, a3);
    if (v30)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v27 = v15;
  v28 = v23(a3, a4);
  v25 = *(a4 + 128);
  v29 = v25(a3, a4);
  if (v28)
  {
    if (v29 <= 64)
    {
      v55 = v25;
      v32 = v57;
      v33 = v58;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v58, a3, v57, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v35 = v56;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v32, AssociatedConformanceWitness);
      (v33[3])(v35, a3, v33);
      LOBYTE(v32) = (*(*(*(a4 + 32) + 8) + 16))(a2, v22, a3);
      v15 = v27;
      result = (*(v27 + 8))(v22, a3);
      if (v32)
      {
        goto LABEL_17;
      }

      result = (*(a4 + 120))(a3, a4);
      v25 = v55;
      if (result < -64)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    v64 = -64;
    (*(a4 + 96))(&v64, v61, v62, a3, a4);
    v30 = (*(*(*(a4 + 32) + 8) + 16))(a2, v22, a3);
    v15 = v27;
    v31 = v27;
    goto LABEL_9;
  }

  if (v29 >= 64)
  {
    v15 = v27;
    goto LABEL_18;
  }

  result = (*(a4 + 120))(a3, a4);
  v15 = v27;
  if (result < -64)
  {
    goto LABEL_17;
  }

LABEL_18:
  v37 = v15;
  v38 = v23(a3, a4);
  v55 = (a4 + 128);
  v39 = v25(a3, a4);
  if (v38)
  {
    if (v39 > 64)
    {
      goto LABEL_20;
    }

LABEL_28:
    result = (*(a4 + 120))(a3, a4);
    v41 = v37;
    if (result <= 64)
    {
      goto LABEL_21;
    }

    goto LABEL_29;
  }

  if (v39 < 64)
  {
    goto LABEL_28;
  }

LABEL_20:
  v64 = 64;
  (*(a4 + 96))(&v64, v61, v62, a3, a4);
  v40 = (*(*(*(a4 + 32) + 8) + 16))(v22, a2, a3);
  v41 = v37;
  result = (*(v37 + 8))(v22, a3);
  if (v40)
  {
LABEL_29:
    v36 = 0;
    goto LABEL_51;
  }

LABEL_21:
  v42 = v59;
  (*(v41 + 16))(v59, a2, a3);
  if ((v23(a3, a4) & 1) == 0 || v25(a3, a4) < 65)
  {
    goto LABEL_38;
  }

  if ((v23(a3, a4) & 1) == 0)
  {
    v44 = v23(a3, a4);
    v45 = v25(a3, a4);
    if ((v44 & 1) == 0)
    {
      if (v45 >= 64)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (v45 <= 64)
    {
      v47 = v57;
      v48 = swift_getAssociatedConformanceWitness(v58, a3, v57, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v49 = v56;
      (*(v48 + 8))(&qword_18071E0A8, 256, v47, v48);
      (v58[3])(v49, a3);
      LOBYTE(v47) = (*(*(*(a4 + 32) + 8) + 16))(v42, v22, a3);
      (*(v41 + 8))(v22, a3);
      if ((v47 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v64 = 0x8000000000000000;
      (*(a4 + 96))(&v64, v61, v62, a3, a4);
      v46 = (*(*(*(a4 + 32) + 8) + 16))(v42, v22, a3);
      (*(v41 + 8))(v22, a3);
      if ((v46 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_42:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v25(a3, a4) < 64)
  {
LABEL_37:
    (*(a4 + 120))(a3, a4);
    goto LABEL_38;
  }

  v64 = 0x8000000000000000;
  (*(a4 + 96))(&v64, v61, v62, a3, a4);
  v43 = (*(*(*(a4 + 32) + 8) + 16))(v42, v22, a3);
  (*(v41 + 8))(v22, a3);
  if (v43)
  {
    goto LABEL_42;
  }

LABEL_38:
  if (v25(a3, a4) <= 64 && (v25(a3, a4) != 64 || (v23(a3, a4) & 1) != 0))
  {
    goto LABEL_48;
  }

  v50 = v23(a3, a4);
  v51 = v25(a3, a4);
  if (v50)
  {
    if (v51 > 64)
    {
      goto LABEL_41;
    }

LABEL_47:
    (*(a4 + 120))(a3, a4);
    goto LABEL_48;
  }

  if (v51 < 64)
  {
    goto LABEL_47;
  }

LABEL_41:
  v64 = 0x7FFFFFFFFFFFFFFFLL;
  (*(a4 + 96))(&v64, v61, v62, a3, a4);
  v52 = (*(*(*(a4 + 32) + 8) + 16))(v22, v42, a3);
  (*(v41 + 8))(v22, a3);
  if (v52)
  {
    goto LABEL_42;
  }

LABEL_48:
  v53 = (*(a4 + 120))(a3, a4);
  result = (*(v41 + 8))(v42, a3);
  if ((v53 & 0x8000000000000000) == 0)
  {
    v36 = v60 << v53;
    if (v53 >= 0x40)
    {
      v36 = 0;
    }

    goto LABEL_51;
  }

  v54 = v63;
  if (v53 <= 0xFFFFFFFFFFFFFFC0)
  {
    v36 = v60 >> 63;
  }

  else
  {
    v36 = v60 >> -v53;
  }

LABEL_52:
  *v54 = v36;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance Int(uint64_t *a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a5;
  v57 = a6;
  v58 = a1;
  v55 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v55, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v54 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v53 = &v51 - v12;
  v59 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v51 - v18;
  v20 = *(a4 + 64);
  if ((v20(a3, a4) & 1) == 0)
  {
    v22 = v20(a3, a4);
    v21 = *(a4 + 128);
    v23 = v21(a3, a4);
    if ((v22 & 1) == 0)
    {
      if (v23 >= 64)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    if (v23 <= 64)
    {
      v27 = v54;
      v26 = v55;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v55, a3, v54, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v29 = *(AssociatedConformanceWitness + 8);
      v52 = v20;
      v30 = v21;
      v31 = v16;
      v32 = v53;
      v29(&qword_18071E0A8, 256, v27, AssociatedConformanceWitness);
      v33 = v32;
      v16 = v31;
      v21 = v30;
      v20 = v52;
      (v26[3])(v33, a3, v26);
      LOBYTE(v26) = (*(*(*(a4 + 32) + 8) + 16))(a2, v19, a3);
      result = (*(v59 + 8))(v19, a3);
      if ((v26 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_12:
      v34 = v58;
      v35 = *v58 >> 63;
      goto LABEL_46;
    }

LABEL_6:
    v60 = -64;
    (*(a4 + 96))(&v60, v56, v57, a3, a4);
    v24 = (*(*(*(a4 + 32) + 8) + 16))(a2, v19, a3);
    result = (*(v59 + 8))(v19, a3);
    if ((v24 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v21 = *(a4 + 128);
  if (v21(a3, a4) >= 64)
  {
    goto LABEL_6;
  }

LABEL_11:
  result = (*(a4 + 120))(a3, a4);
  if (result < -64)
  {
    goto LABEL_12;
  }

LABEL_13:
  v36 = v20(a3, a4);
  v52 = (a4 + 128);
  v37 = v21(a3, a4);
  if (v36)
  {
    if (v37 > 64)
    {
      goto LABEL_15;
    }

LABEL_22:
    result = (*(a4 + 120))(a3, a4);
    if (result <= 64)
    {
      goto LABEL_16;
    }

LABEL_23:
    v35 = 0;
LABEL_24:
    v34 = v58;
    goto LABEL_46;
  }

  if (v37 < 64)
  {
    goto LABEL_22;
  }

LABEL_15:
  v60 = 64;
  (*(a4 + 96))(&v60, v56, v57, a3, a4);
  v38 = (*(*(*(a4 + 32) + 8) + 16))(v19, a2, a3);
  result = (*(v59 + 8))(v19, a3);
  if (v38)
  {
    goto LABEL_23;
  }

LABEL_16:
  (*(v59 + 16))(v16, a2, a3);
  if ((v20(a3, a4) & 1) != 0 && v21(a3, a4) >= 65)
  {
    if (v20(a3, a4))
    {
      if (v21(a3, a4) < 64)
      {
LABEL_32:
        (*(a4 + 120))(a3, a4);
        goto LABEL_33;
      }
    }

    else
    {
      v39 = v20(a3, a4);
      v40 = v21(a3, a4);
      if ((v39 & 1) == 0)
      {
        if (v40 >= 64)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      if (v40 <= 64)
      {
        v43 = v54;
        v42 = v55;
        v44 = swift_getAssociatedConformanceWitness(v55, a3, v54, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v45 = v53;
        (*(v44 + 8))(&qword_18071E0A8, 256, v43, v44);
        (v42[3])(v45, a3, v42);
        LOBYTE(v42) = (*(*(*(a4 + 32) + 8) + 16))(v16, v19, a3);
        (*(v59 + 8))(v19, a3);
        if (v42)
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }
    }

    v60 = 0x8000000000000000;
    (*(a4 + 96))(&v60, v56, v57, a3, a4);
    v41 = (*(*(*(a4 + 32) + 8) + 16))(v16, v19, a3);
    (*(v59 + 8))(v19, a3);
    if (v41)
    {
      goto LABEL_37;
    }
  }

LABEL_33:
  if (v21(a3, a4) > 64 || v21(a3, a4) == 64 && (v20(a3, a4) & 1) == 0)
  {
    v46 = v20(a3, a4);
    v47 = v21(a3, a4);
    if (v46)
    {
      if (v47 > 64)
      {
        goto LABEL_36;
      }
    }

    else if (v47 >= 64)
    {
LABEL_36:
      v60 = 0x7FFFFFFFFFFFFFFFLL;
      (*(a4 + 96))(&v60, v56, v57, a3, a4);
      v48 = (*(*(*(a4 + 32) + 8) + 16))(v19, v16, a3);
      (*(v59 + 8))(v19, a3);
      if ((v48 & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_37:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(a4 + 120))(a3, a4);
  }

LABEL_43:
  v49 = (*(a4 + 120))(a3, a4);
  result = (*(v59 + 8))(v16, a3);
  v34 = v58;
  v50 = *v58;
  if ((v49 & 0x8000000000000000) != 0)
  {
    if (v49 <= 0xFFFFFFFFFFFFFFC0)
    {
      v34 = v58;
      v35 = v50 >> 63;
      goto LABEL_46;
    }

    v35 = v50 >> -v49;
    goto LABEL_24;
  }

  v35 = v50 << v49;
  if (v49 >= 0x40)
  {
    v35 = 0;
  }

LABEL_46:
  *v34 = v35;
  return result;
}

uint64_t protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance Int(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = specialized BinaryInteger.quotientAndRemainder(dividingBy:)(a2, *a3, *v3);
  *a1 = result;
  return result;
}

BOOL _ss5Int64VSzsSz10isMultiple2ofSbx_tFTW_0(uint64_t *a1)
{
  v2 = *a1;
  if (*a1 == -1)
  {
    return 1;
  }

  v3 = *v1;
  if (v2)
  {
    return v3 % v2 == 0;
  }

  else
  {
    return v3 == 0;
  }
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance Int64(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    a2;
    v38 = 0;
    v37 = 1;
    goto LABEL_47;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v42[0] = a1;
      v42[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v16 = specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v42, v5, 10);
      v22 = v21 & 1;
LABEL_42:
      v43 = v22;
      goto LABEL_43;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v40 = _StringObject.sharedUTF8.getter(a1, a2);
      v6 = v41;
      v8 = v40;
      if (v6 > 0)
      {
LABEL_9:
        v9 = *v8;
        if (v9 == 43)
        {
          v23 = specialized Collection.subscript.getter(1, v8, v6);
          v27 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v23, v24, v25, v26);
          if (v28)
          {
            v16 = 0;
            if (v27)
            {
              while (1)
              {
                v29 = *v27 - 48;
                if (v29 >= 0xA)
                {
                  goto LABEL_41;
                }

                v30 = 10 * v16;
                v31 = (v16 * 10) >> 64 != (10 * v16) >> 63;
                v16 = 10 * v16 + v29;
                v32 = __OFADD__(v30, v29);
                if (v31 || v32)
                {
                  goto LABEL_41;
                }

                ++v27;
                if (!--v28)
                {
                  goto LABEL_40;
                }
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          if (v9 != 45)
          {
            v16 = 0;
            while (1)
            {
              v33 = *v8 - 48;
              if (v33 >= 0xA)
              {
                goto LABEL_41;
              }

              v34 = 10 * v16;
              v35 = (v16 * 10) >> 64 != (10 * v16) >> 63;
              v16 = 10 * v16 + v33;
              v36 = __OFADD__(v34, v33);
              if (v35 || v36)
              {
                goto LABEL_41;
              }

              ++v8;
              if (!--v6)
              {
                goto LABEL_40;
              }
            }
          }

          v10 = specialized Collection.subscript.getter(1, v8, v6);
          v14 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v11, v12, v13);
          if (v15)
          {
            v16 = 0;
            if (v14)
            {
              while (1)
              {
                v17 = *v14 - 48;
                if (v17 >= 0xA)
                {
                  break;
                }

                v18 = 10 * v16;
                v19 = (v16 * 10) >> 64 != (10 * v16) >> 63;
                v16 = 10 * v16 - v17;
                v20 = __OFSUB__(v18, v17);
                if (v19 || v20)
                {
                  break;
                }

                ++v14;
                if (!--v15)
                {
                  goto LABEL_40;
                }
              }

LABEL_41:
              v16 = 0;
              v22 = 1;
              goto LABEL_42;
            }

LABEL_40:
            v43 = 0;
LABEL_43:
            v37 = v43;
            goto LABEL_44;
          }
        }

        v16 = 0;
        v43 = 1;
        goto LABEL_43;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
  v37 = v39;
LABEL_44:
  a2;
  if (v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = v16;
  }

LABEL_47:
  *a3 = v38;
  *(a3 + 8) = v37 & 1;
}

void *_ss5Int64Vs13SignedNumericssACP1sopyxxFZTW_0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(0, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = -*result;
  }

  return result;
}

void _ss5Int64Vs13SignedNumericssACP6negateyyFTW_0()
{
  if (__OFSUB__(0, *v0))
  {
    __break(1u);
  }

  else
  {
    *v0 = -*v0;
  }
}

uint64_t protocol witness for Numeric.init<A>(exactly:) in conformance Int64@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X5>, uint64_t *a6@<X8>)
{
  v47 = a5;
  v48 = a4;
  v50 = a6;
  v9 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v9, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v44[-v14];
  v51 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v13, v16);
  v49 = &v44[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = *(a3 + 64);
  v18 = v52(a2, a3);
  v19 = *(a3 + 128);
  if ((v18 & 1) == 0 || v19(a2, a3) < 65)
  {
    goto LABEL_14;
  }

  v46 = a1;
  v53 = 0x8000000000000000;
  v20 = v52;
  if (v52(a2, a3))
  {
    a1 = v46;
    if (v19(a2, a3) < 64)
    {
      goto LABEL_13;
    }

LABEL_8:
    v22 = *(a3 + 96);
    v23 = v47();
    v24 = v49;
    v22(&v53, v48, v23, a2, a3);
    v25 = (*(*(*(a3 + 32) + 8) + 16))(a1, v24, a2);
    v26 = *(v51 + 8);
    v26(v24, a2);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_14:
    v31 = v19(a2, a3);
    v33 = v51;
    v32 = v52;
    if (v31 <= 64 && (v19(a2, a3) != 64 || (v32(a2, a3) & 1) != 0))
    {
      goto LABEL_25;
    }

    v53 = 0x7FFFFFFFFFFFFFFFLL;
    v34 = v32(a2, a3);
    v35 = v19(a2, a3);
    if (v34)
    {
      if (v35 > 64)
      {
        goto LABEL_17;
      }
    }

    else if (v35 > 63)
    {
LABEL_17:
      v36 = *(a3 + 96);
      v37 = v47();
      v38 = v49;
      v36(&v53, v48, v37, a2, a3);
      v39 = (*(*(*(a3 + 32) + 8) + 16))(v38, a1, a2);
      v40 = *(v33 + 8);
      v40(v38, a2);
      if (v39)
      {
        result = v40(a1, a2);
        goto LABEL_19;
      }

LABEL_25:
      v41 = (*(a3 + 120))(a2, a3);
      result = (*(v33 + 8))(a1, a2);
      v42 = 0;
      goto LABEL_26;
    }

    (*(a3 + 120))(a2, a3);
    goto LABEL_25;
  }

  v45 = v20(a2, a3);
  a1 = v46;
  v21 = v19(a2, a3);
  if ((v45 & 1) == 0)
  {
    if (v21 >= 64)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v21 > 64)
  {
    goto LABEL_8;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, a2, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v11, AssociatedConformanceWitness);
  v29 = v49;
  (*(v9 + 24))(v15, a2, v9);
  v30 = (*(*(*(a3 + 32) + 8) + 16))(a1, v29, a2);
  v26 = *(v51 + 8);
  v26(v29, a2);
  if ((v30 & 1) == 0)
  {
LABEL_13:
    (*(a3 + 120))(a2, a3);
    goto LABEL_14;
  }

LABEL_9:
  result = v26(a1, a2);
LABEL_19:
  v41 = 0;
  v42 = 1;
LABEL_26:
  v43 = v50;
  *v50 = v41;
  *(v43 + 8) = v42;
  return result;
}

void _ss5Int64VSjsSj9magnitude9MagnitudeQzvgTW_0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (*v1 < 0)
  {
    v2 = -v2;
  }

  *a1 = v2;
}

uint64_t *protocol witness for static Numeric.* infix(_:_:) in conformance Int64@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *result * *a2;
  if ((*result * *a2) >> 64 == v3 >> 63)
  {
    *a3 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *protocol witness for static Numeric.*= infix(_:_:) in conformance Int64(uint64_t *result, uint64_t *a2)
{
  v2 = *result * *a2;
  if ((*result * *a2) >> 64 == v2 >> 63)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Strideable.distance(to:) in conformance Int@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, *v2))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - *v2;
  }

  return result;
}

void *protocol witness for Strideable.advanced(by:) in conformance Int64@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2 + *result;
  }

  return result;
}

unint64_t _ss5Int64VSxsSx5_step5after4from2bySiSg5index_x5valuetAgH_xAIt_x6StrideQztFZTW_0(int64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v6 = *a4 + *a6;
  v7 = 0x8000000000000000;
  if (__OFADD__(*a4, *a6))
  {
    v6 = (v6 >> 63) ^ 0x8000000000000000;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v6;
  return v7;
}

void *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Int64@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

void *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Int64(void *result, void *a2)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *result += *a2;
  }

  return result;
}

void *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Int64@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result - *a2;
  }

  return result;
}

void *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Int64(void *result, void *a2)
{
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *result -= *a2;
  }

  return result;
}

uint64_t Int._toCustomAnyHashable()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVySiGMd, _ss22_IntegerAnyHashableBoxVySiGMR);
  a2[3] = result;
  a2[4] = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance Int@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVySiGMd, _ss22_IntegerAnyHashableBoxVySiGMR);
  a1[3] = result;
  a1[4] = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v3;
  return result;
}

uint64_t _IntegerAnyHashableBox._canonicalBox.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v3 = *(a1 + 16);
  v4 = *(*(a1 + 24) + 8);
  v40 = *(*(v4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v40, v3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v40 - v9;
  v11 = *(v3 - 1);
  v13 = MEMORY[0x1EEE9AC00](v8, v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v40 - v17;
  v19 = *(v11 + 16);
  v41 = v2;
  v19(&v40 - v17, v2, v3);
  v20 = *(v4 + 64);
  if ((v20(v3, v4) & 1) == 0)
  {
    v24 = v20(v3, v4);
    v21 = (*(v4 + 128))(v3, v4);
    if ((v24 & 1) == 0)
    {
      if (v21 >= 64)
      {
        (*(v11 + 8))(v18, v3);
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if (v21 <= 64)
    {
      v30 = v40;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v40, v3, v6, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v6, AssociatedConformanceWitness);
      (v30[3])(v10, v3, v30);
      v32 = (*(*(*(v4 + 32) + 8) + 16))(v18, v15, v3);
      v33 = *(v11 + 8);
      v33(v15, v3);
      if (v32)
      {
        v33(v18, v3);
      }

      else
      {
        v34 = (*(v4 + 120))(v3, v4);
        v33(v18, v3);
        if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_16;
    }

LABEL_6:
    v43 = 0;
    v25 = *(v4 + 96);
    v26 = lazy protocol witness table accessor for type Int and conformance Int(v21, v22, v23);
    v25(&v43, &type metadata for Int, v26, v3, v4);
    v27 = (*(*(*(v4 + 32) + 8) + 16))(v18, v15, v3);
    v28 = *(v11 + 8);
    v28(v15, v3);
    v28(v18, v3);
    if ((v27 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_16:
    v35 = (*(v4 + 120))(v3, v4);
    v36 = &_ss22_IntegerAnyHashableBoxVys5Int64VGMd;
    v37 = _ss22_IntegerAnyHashableBoxVys5Int64VGMR;
    goto LABEL_17;
  }

  v21 = (*(v4 + 128))(v3, v4);
  if (v21 >= 64)
  {
    goto LABEL_6;
  }

LABEL_10:
  v29 = (*(v4 + 120))(v3, v4);
  (*(v11 + 8))(v18, v3);
  if (v29 < 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v35 = (*(v4 + 120))(v3, v4);
  v36 = &_ss22_IntegerAnyHashableBoxVys6UInt64VGMd;
  v37 = _ss22_IntegerAnyHashableBoxVys6UInt64VGMR;
LABEL_17:
  result = __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
  v39 = v42;
  v42[3] = result;
  v39[4] = &protocol witness table for _IntegerAnyHashableBox<A>;
  *v39 = v35;
  return result;
}

uint64_t _IntegerAnyHashableBox._isEqual(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(*(a2 + 24) + 8);
  v6 = *(*(v5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v6, v4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v68 - v11;
  v69 = *(v4 - 1);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v68 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v68 - v22;
  if (v4 == &type metadata for UInt64)
  {
    outlined init with copy of MirrorPath(a1, v71);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15_AnyHashableBox_pMd, _ss15_AnyHashableBox_pMR);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys6UInt64VGMd, _ss22_IntegerAnyHashableBoxVys6UInt64VGMR);
    if (!swift_dynamicCast(&v70, v71, v33, v34, 6uLL, v35, v36, v37, v68))
    {
      return 2;
    }

    v68 = v70;
    (*(v69 + 16))(v23, v2, &type metadata for UInt64);
    v38 = *(v5 + 64);
    if (v38(&type metadata for UInt64, v5))
    {
      v39 = v38(&type metadata for UInt64, v5);
      v40 = (*(v5 + 128))(&type metadata for UInt64, v5);
      if (v39)
      {
        if (v40 <= 64)
        {
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, &type metadata for UInt64, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v8, AssociatedConformanceWitness);
          (*(v6 + 24))(v12, &type metadata for UInt64, v6);
          v44 = (*(*(*(v5 + 32) + 8) + 32))(v23, v20, &type metadata for UInt64);
          v45 = *(v69 + 8);
          v45(v20, &type metadata for UInt64);
          if (v44)
          {
            v46 = &type metadata for UInt64;
            v47 = (*(v5 + 120))(&type metadata for UInt64, v5);
            v48 = v23;
LABEL_26:
            v45(v48, v46);
            return v47 == v68;
          }

          v66 = &type metadata for UInt64;
          v67 = v23;
          goto LABEL_32;
        }

LABEL_23:
        v71[0] = v68;
        v55 = *(v5 + 96);
        v56 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v40, v41, v42);
        v55(v71, &type metadata for UInt64, v56, &type metadata for UInt64, v5);
        v57 = (*(*(*(v5 + 16) + 8) + 8))(v23, v20, &type metadata for UInt64);
        v58 = *(v69 + 8);
        v58(v20, &type metadata for UInt64);
        v58(v23, &type metadata for UInt64);
        return v57 & 1;
      }

      if (v40 >= 64)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v40 = (*(v5 + 128))(&type metadata for UInt64, v5);
      if (v40 >= 64)
      {
        goto LABEL_23;
      }
    }

    v47 = (*(v5 + 120))(&type metadata for UInt64, v5);
    (*(v69 + 8))(v23, &type metadata for UInt64);
    return v47 == v68;
  }

  if (v4 != &type metadata for Int64)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  outlined init with copy of MirrorPath(a1, v71);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15_AnyHashableBox_pMd, _ss15_AnyHashableBox_pMR);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys5Int64VGMd, _ss22_IntegerAnyHashableBoxVys5Int64VGMR);
  if (!swift_dynamicCast(&v70, v71, v24, v25, 6uLL, v26, v27, v28, v68))
  {
    return 2;
  }

  v68 = v70;
  (*(v69 + 16))(v16, v2, &type metadata for Int64);
  v29 = *(v5 + 64);
  if (v29(&type metadata for Int64, v5))
  {
    v30 = (*(v5 + 128))(&type metadata for Int64, v5);
    if (v30 < 64)
    {
      goto LABEL_20;
    }

LABEL_16:
    v71[0] = v68;
    v51 = *(v5 + 96);
    v52 = lazy protocol witness table accessor for type Int64 and conformance Int64(v30, v31, v32);
    v51(v71, &type metadata for Int64, v52, &type metadata for Int64, v5);
    v53 = (*(*(*(v5 + 16) + 8) + 8))(v16, v20, &type metadata for Int64);
    v54 = *(v69 + 8);
    v54(v20, &type metadata for Int64);
    v54(v16, &type metadata for Int64);
    return v53 & 1;
  }

  v50 = v29(&type metadata for Int64, v5);
  v30 = (*(v5 + 128))(&type metadata for Int64, v5);
  if (v50)
  {
    if (v30 > 64)
    {
      goto LABEL_16;
    }

    v59 = swift_getAssociatedConformanceWitness(v6, &type metadata for Int64, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(v59 + 8))(&qword_18071E0A8, 256, v8, v59);
    (*(v6 + 24))(v12, &type metadata for Int64, v6);
    v60 = (*(*(*(v5 + 32) + 8) + 32))(v16, v20, &type metadata for Int64);
    v45 = *(v69 + 8);
    v45(v20, &type metadata for Int64);
    if (v60)
    {
      v46 = &type metadata for Int64;
      v47 = (*(v5 + 120))(&type metadata for Int64, v5);
      v48 = v16;
      goto LABEL_26;
    }

    v66 = &type metadata for Int64;
    v67 = v16;
LABEL_32:
    v45(v67, v66);
    return 0;
  }

  if (v30 < 64)
  {
LABEL_20:
    v47 = (*(v5 + 120))(&type metadata for Int64, v5);
    (*(v69 + 8))(v16, &type metadata for Int64);
    return v47 == v68;
  }

  v61 = v69;
  if ((v68 & 0x8000000000000000) == 0)
  {
    v71[0] = v68;
    v62 = *(v5 + 96);
    v63 = lazy protocol witness table accessor for type Int64 and conformance Int64(v30, v31, v32);
    v62(v71, &type metadata for Int64, v63, &type metadata for Int64, v5);
    v64 = (*(*(*(v5 + 16) + 8) + 8))(v16, v20, &type metadata for Int64);
    v65 = *(v61 + 8);
    v65(v20, &type metadata for Int64);
    v65(v16, &type metadata for Int64);
    return v64 & 1;
  }

  (*(v69 + 8))(v16, &type metadata for Int64);
  return 0;
}

uint64_t _IntegerAnyHashableBox._unbox<A>()@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, swift *a3@<X8>)
{
  v6 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v3, v6);
  v13 = swift_dynamicCast(a3, v8, v6, a2, 6uLL, v10, v11, v12, v15);
  return (*(*(a2 - 1) + 7))(a3, v13 ^ 1u, 1, a2);
}

uint64_t _ConcreteHashableBox._downCastConditional<A>(into:)(char *a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v5 = v4;
  v9 = type metadata accessor for Optional(0, a3, a3, a4);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = (&v32 - v13);
  v15 = *(a2 + 16);
  v17 = MEMORY[0x1EEE9AC00](v12, v16);
  v19 = (&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v17, v21);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v19, v5, v15);
  v28 = swift_dynamicCast(v14, v19, v15, a3, 6uLL, v25, v26, v27, v32);
  v29 = *(v20 + 56);
  if (v28)
  {
    v29(v14, 0, 1, a3);
    v30 = *(v20 + 32);
    v30(v23, v14, a3);
    v30(a1, v23, a3);
  }

  else
  {
    v29(v14, 1, 1, a3);
    (*(v10 + 8))(v14, v9);
  }

  return v28;
}

uint64_t < infix<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v30 = a2;
  v32 = a7;
  v33 = a4;
  v31 = a3;
  swift_getTupleTypeMetadata2(0, a5, a6, 0, 0);
  v12 = v11;
  v34 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v29 - v18;
  v20 = *(*(a5 - 1) + 16);
  v20(&v29 - v18, a1, a5);
  v21 = *(v12 + 48);
  v22 = *(*(a6 - 1) + 16);
  v22(&v19[v21], v30, a6);
  v20(v16, v31, a5);
  v23 = v32;
  v24 = *(v12 + 48);
  v22(&v16[v24], v33, a6);
  if ((*(*(v23 + 8) + 8))(v19, v16, a5))
  {
    v25 = (*(v29 + 16))(&v19[v21], &v16[v24], a6);
  }

  else
  {
    v25 = (*(v23 + 16))(v19, v16, a5);
  }

  v26 = v25;
  v27 = *(v34 + 8);
  v27(v16, v12);
  v27(v19, v12);
  return v26 & 1;
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance _UInt128(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    return *a1 < *a2;
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance _UInt128(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 >= v2;
  if (v4)
  {
    return *a2 >= *a1;
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance _UInt128(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 >= v3;
  if (v4)
  {
    return *a1 >= *a2;
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance _UInt128(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    return *a2 < *a1;
  }

  else
  {
    return v5;
  }
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance _UInt128@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void, void, void)@<X4>, uint64_t *a4@<X8>)
{
  result = a3(*a1, a1[1], *a2, a2[1]);
  *a4 = result;
  a4[1] = v6;
  return result;
}

char *_UInt128.init<A>(exactly:)(uint64_t (*a1)(void, void), Class *a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v8 = v7;
  v157 = *(swift_getAssociatedConformanceWitness(v6, a2, v7, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric) + 16);
  swift_getAssociatedTypeWitness(0, v157, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v156 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v155 = v148 - v11;
  v12 = swift_checkMetadataState(0, v8);
  v166 = *(v12 - 1);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v163 = v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v167 = v148 - v17;
  v160 = *(v6 + 16);
  swift_getAssociatedTypeWitness(0, v160, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v159 = v18;
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v158 = v148 - v21;
  v22 = *(a2 - 1);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v153 = v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v151 = v148 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v162 = v148 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v161 = v148 - v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = v148 - v36;
  v39 = a3 + 64;
  v38 = *(a3 + 64);
  v40 = v38(a2, a3);
  v154 = v38;
  v168 = a1;
  if ((v40 & 1) == 0)
  {
    v47 = v38(a2, a3);
    v164 = *(a3 + 128);
    v48 = v164(a2, a3);
    if (v47)
    {
      v165 = v22;
      v46 = v167;
      if (v48 > 64)
      {
        v169[0] = 0;
        v51 = *(a3 + 96);
        v52 = lazy protocol witness table accessor for type Int and conformance Int(v48, v49, v50);
        v51(v169, &type metadata for Int, v52, a2, a3);
        v44 = v168;
        v53 = (*(*(*(a3 + 32) + 8) + 16))(v168, v37, a2);
        v22 = v165;
        goto LABEL_9;
      }

      v58 = v159;
      v59 = v160;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v160, a2, v159, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v61 = v158;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v58, AssociatedConformanceWitness);
      (v59[3])(v61, a2, v59);
      v44 = v168;
      LOBYTE(v58) = (*(*(*(a3 + 32) + 8) + 16))(v168, v37, a2);
      v22 = v165;
      (*(v165 + 8))(v37, a2);
      if (v58)
      {
        goto LABEL_16;
      }

      v57 = (*(a3 + 120))(a2, a3);
    }

    else
    {
      v46 = v167;
      if (v48 >= 64)
      {
        goto LABEL_18;
      }

      v44 = v168;
      v57 = (*(a3 + 120))(a2, a3);
    }

    if ((v57 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    (*(v22 + 8))(v44, a2);
    return 0;
  }

  v164 = *(a3 + 128);
  v41 = v164(a2, a3);
  if (v41 >= 64)
  {
    v169[0] = 0;
    v54 = v22;
    v55 = *(a3 + 96);
    v56 = lazy protocol witness table accessor for type Int and conformance Int(v41, v42, v43);
    v55(v169, &type metadata for Int, v56, a2, a3);
    v22 = v54;
    v39 = a3 + 64;
    v46 = v167;
    v44 = v168;
    v53 = (*(*(*(a3 + 32) + 8) + 16))(v168, v37, a2);
LABEL_9:
    (*(v22 + 8))(v37, a2);
    if ((v53 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v44 = a1;
  v45 = (*(a3 + 120))(a2, a3);
  v46 = v167;
  if (v45 < 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  v148[1] = v39;
  v165 = v22;
  v152 = v37;
  (*(v6 + 56))(a2, v6);
  v150 = a3;
  v63 = swift_getAssociatedConformanceWitness(a3, a2, v12, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v64 = v46;
  v65 = *(v63 + 64);
  if ((v65)(v12, v63))
  {
    v66 = v156;
    v67 = v157;
    v68 = swift_getAssociatedConformanceWitness(v157, v12, v156, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v69 = v155;
    (*(v68 + 8))(&qword_18071E0A8, 256, v66, v68);
    v70 = v67[3];
    v149 = v65;
    v71 = v163;
    (v70)(v69, v12, v67);
    v72 = swift_getAssociatedConformanceWitness(v6, a2, v12, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
    LOBYTE(v66) = (*(v72 + 16))(v46, v71, v12, v72);
    v73 = *(v166 + 8);
    v74 = v71;
    v65 = v149;
    v73(v74, v12);
    if (v66)
    {
      goto LABEL_27;
    }
  }

  v149 = v6;
  v75 = *(v63 + 128);
  if (v75(v12, v63) >= 64)
  {
    v76 = (v65)(v12, v63);
    v77 = v75(v12, v63);
    if (v76)
    {
      if (v77 > 64)
      {
        v169[0] = -1;
        v80 = *(v63 + 96);
        v81 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v77, v78, v79);
        v82 = v163;
        v80(v169, &type metadata for UInt64, v81, v12, v63);
        v83 = swift_getAssociatedConformanceWitness(v149, a2, v12, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v64 = v167;
        v84 = (*(v83 + 16))(v82, v167, v12, v83);
        goto LABEL_26;
      }

      v120 = v156;
      v121 = v157;
      v122 = swift_getAssociatedConformanceWitness(v157, v12, v156, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v123 = v155;
      (*(v122 + 8))(&qword_18071E0A8, 256, v120, v122);
      v124 = v163;
      (v121[3])(v123, v12, v121);
      v125 = swift_getAssociatedConformanceWitness(v149, a2, v12, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
      v64 = v167;
      LOBYTE(v120) = (*(v125 + 40))(v167, v124, v12, v125);
      (*(v166 + 8))(v124, v12);
      if ((v120 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v64 = v167;
      if (v77 >= 65)
      {
        v169[0] = -1;
        v85 = *(v63 + 96);
        v86 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v77, v78, v79);
        v82 = v163;
        v85(v169, &type metadata for UInt64, v86, v12, v63);
        v87 = swift_getAssociatedConformanceWitness(v149, a2, v12, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v84 = (*(v87 + 16))(v82, v64, v12, v87);
LABEL_26:
        v88 = v84;
        v73 = *(v166 + 8);
        v73(v82, v12);
        if (v88)
        {
LABEL_27:
          v89 = (v73)(v167, v12);
          v169[0] = -1;
          v90 = v150;
          v91 = *(v150 + 88);
          v94 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v89, v92, v93);
          v95 = v152;
          v157 = v94;
          v91(v169, &type metadata for UInt64);
          v96 = v161;
          v97 = v168;
          (*(v90 + 192))(v168, v95, a2, v90);
          v98 = v165;
          v167 = *(v165 + 8);
          v99 = (v167)(v95, a2);
          v169[0] = 64;
          v100 = *(v90 + 240);
          v103 = lazy protocol witness table accessor for type Int and conformance Int(v99, v101, v102);
          v100(v97, v169, &type metadata for Int, v103, a2, v90);
          v104 = v98;
          v105 = *(v98 + 16);
          v106 = v151;
          v105(v151, v96, a2);
          v107 = v154;
          if (v154(a2, v90))
          {
            v108 = v159;
            v109 = v160;
            v110 = swift_getAssociatedConformanceWitness(v160, a2, v159, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v111 = v158;
            (*(v110 + 8))(&qword_18071E0A8, 256, v108, v110);
            v112 = v111;
            v104 = v165;
            (v109[3])(v112, a2, v109);
            LOBYTE(v108) = (*(*(*(v90 + 32) + 8) + 32))(v106, v95, a2);
            (v167)(v95, a2);
            if ((v108 & 1) == 0)
            {
              goto LABEL_56;
            }
          }

          v166 = v90 + 128;
          if (v164(a2, v90) >= 64)
          {
            v113 = v107(a2, v90);
            v114 = v164(a2, v90);
            if (v113)
            {
              if (v114 <= 64)
              {
                v115 = v159;
                v116 = v160;
                v117 = swift_getAssociatedConformanceWitness(v160, a2, v159, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                v118 = v158;
                (*(v117 + 8))(&qword_18071E0A8, 256, v115, v117);
                v119 = v118;
                v104 = v165;
                (v116[3])(v119, a2, v116);
                LOBYTE(v115) = (*(*(*(v90 + 32) + 8) + 40))(v106, v95, a2);
                (v167)(v95, a2);
                if ((v115 & 1) == 0)
                {
                  goto LABEL_43;
                }

                goto LABEL_42;
              }
            }

            else if (v114 < 65)
            {
LABEL_42:
              (*(v90 + 120))(a2, v90);
              goto LABEL_43;
            }

            v169[0] = -1;
            (*(v90 + 96))(v169, &type metadata for UInt64, v157, a2, v90);
            v131 = (*(*(*(v90 + 32) + 8) + 16))(v95, v106, a2);
            (v167)(v95, a2);
            if (v131)
            {
LABEL_56:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }
          }

LABEL_43:
          v132 = v167;
          (v167)(v168, a2);
          (v132)(v161, a2);
          v168 = *(v90 + 120);
          v163 = v168(a2, v90);
          (v132)(v106, a2);
          v133 = v153;
          (*(v104 + 32))(v153, v162, a2);
          if (v107(a2, v90))
          {
            v134 = v159;
            v135 = v160;
            v136 = swift_getAssociatedConformanceWitness(v160, a2, v159, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v137 = v158;
            (*(v136 + 8))(&qword_18071E0A8, 256, v134, v136);
            (v135[3])(v137, a2, v135);
            LOBYTE(v134) = (*(*(*(v90 + 32) + 8) + 16))(v133, v95, a2);
            (v167)(v95, a2);
            if (v134)
            {
              goto LABEL_52;
            }
          }

          if (v164(a2, v90) < 64)
          {
            goto LABEL_55;
          }

          v138 = v154(a2, v90);
          v139 = v164(a2, v90);
          if (v138)
          {
            if (v139 > 64)
            {
              v169[0] = -1;
              v140 = v152;
              (*(v90 + 96))(v169, &type metadata for UInt64, v157, a2, v90);
              v133 = v153;
              v141 = (*(*(*(v90 + 32) + 8) + 16))(v140, v153, a2);
              goto LABEL_51;
            }

            v143 = v159;
            v144 = v160;
            v145 = swift_getAssociatedConformanceWitness(v160, a2, v159, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v146 = v158;
            (*(v145 + 8))(&qword_18071E0A8, 256, v143, v145);
            v147 = v152;
            (v144[3])(v146, a2, v144);
            v133 = v153;
            LOBYTE(v143) = (*(*(*(v90 + 32) + 8) + 40))(v153, v147, a2);
            (v167)(v147, a2);
            if ((v143 & 1) == 0)
            {
LABEL_55:
              v168(a2, v90);
              (v167)(v133, a2);
              return v163;
            }
          }

          else
          {
            v140 = v152;
            v133 = v153;
            if (v139 >= 65)
            {
              v169[0] = -1;
              (*(v90 + 96))(v169, &type metadata for UInt64, v157, a2, v90);
              v141 = (*(*(*(v90 + 32) + 8) + 16))(v140, v133, a2);
LABEL_51:
              v142 = v141;
              (v167)(v140, a2);
              if (v142)
              {
LABEL_52:
                (v167)(v133, a2);
                return 0;
              }

              goto LABEL_55;
            }
          }

          v168(a2, v90);
          goto LABEL_55;
        }

        goto LABEL_36;
      }
    }

    (*(v63 + 120))(v12, v63);
  }

LABEL_36:
  v126 = (*(v63 + 120))(v12, v63);
  (*(v166 + 8))(v64, v12);
  v127 = v152;
  (*(*(v149 + 1) + 16))(a2);
  v128 = v168;
  v129 = (*(*(*(v150 + 32) + 8) + 16))(v168, v127, a2);
  v130 = *(v165 + 8);
  v130(v128, a2);
  v130(v127, a2);
  if (v129)
  {
    return -v126;
  }

  else
  {
    return v126;
  }
}

void *protocol witness for ExpressibleByIntegerLiteral.init(integerLiteral:) in conformance _UInt128@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000028, 0x800000018066E8B0, "Swift/LegacyInt128.swift", 0x18uLL, 2, 0x83uLL, 0);
  }

  *a2 = *result;
  a2[1] = 0;
  return result;
}

uint64_t _UInt128.Words.subscript.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1)
  {
    return a3;
  }

  else
  {
    return a2;
  }
}

unint64_t specialized _wideMaskedShiftRight<A>(_:_:)(unint64_t *a1, unint64_t a2, unint64_t a3, char a4)
{
  if ((a4 & 0x7Fu) > 0x3FuLL)
  {
    *a1 = a2 >> a4;
    return 0;
  }

  else if ((a4 & 0x7F) != 0)
  {
    *a1 = (a3 >> a4) | (a2 << -a4);
    return a2 >> a4;
  }

  else
  {
    *a1 = a3;
    return a2;
  }
}

uint64_t specialized _wideMaskedShiftRight<A>(_:_:)(uint64_t *a1, uint64_t a2, unint64_t a3, char a4)
{
  if ((a4 & 0x7Fu) >= 0x40uLL)
  {
    *a1 = a2 >> a4;
    return a2 >> 63;
  }

  else if ((a4 & 0x7F) != 0)
  {
    *a1 = (a3 >> a4) | (a2 << -a4);
    return a2 >> a4;
  }

  else
  {
    *a1 = a3;
    return a2;
  }
}

Swift::UInt64 specialized _wideDivide22<A>(_:by:)(Swift::UInt64 *a1, Swift::UInt64 *a2, Swift::UInt64 *a3, Swift::UInt64 a4, Swift::tuple_high_UInt64_low_UInt64 a5, Swift::UInt64 a6)
{
  if (!(a5.low | a6))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000010, 0x800000018066AEF0 | 0x8000000000000000, "Swift/LegacyInt128.swift", 0x18uLL, 2, 0x4CBuLL, 0);
  }

  v6 = a6 < a5.high;
  if (a5.low != a4)
  {
    v6 = a5.low < a4;
  }

  if (!v6)
  {
    v12 = a4 < a5.low;
    v13 = 0;
    if (a5.low == a4)
    {
      v12 = a5.high < a6;
    }

    if (v12)
    {
      *a1 = 0;
      *a2 = a4;
      *a3 = a5.high;
    }

    else
    {
      *a1 = 1;
      *a2 = 0;
      *a3 = 0;
    }

    return v13;
  }

  if (!a4)
  {
    if (a6)
    {
      v13 = 0;
      *a3 = a5.high % a6;
      *a1 = a5.high / a6;
LABEL_56:
      *a2 = 0;
      return v13;
    }

LABEL_60:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a5.low)
  {
    if (a6)
    {
      v13 = a4 / a6;
      if (a4 % a6)
      {
        v14 = a1;
        v15.high = a4 % a6;
        v16 = a2;
        v15.low = a5.high;
        v17 = a3;
        v18 = UInt64.dividingFullWidth(_:)(v15);
        a3 = v17;
        quotient = v18.quotient;
        a1 = v14;
        remainder = v18.remainder;
        a2 = v16;
      }

      else
      {
        quotient = a5.high / a6;
        remainder = a5.high % a6;
      }

      *a1 = quotient;
      *a3 = remainder;
      goto LABEL_56;
    }

    goto LABEL_60;
  }

  v7 = __clz(a5.low);
  if (v7)
  {
    v8 = 0x80 - v7;
    a5.low = (a6 >> -v7) | (a5.low << v7);
    a6 <<= v7;
    v9 = (128 - v7) & 0x7F;
    v10 = a4 << v7;
    if (v9 > 0x3F)
    {
      high = a4 >> v8;
    }

    else
    {
      high = a5.high;
      if (v9)
      {
        high = (a5.high >> v8) | v10;
      }
    }

    a4 = (a5.high >> (-v7 & 0x3F)) | v10;
    v21 = a5.high << v7;
    a5.high = high;
    if (high == a5.low)
    {
      goto LABEL_24;
    }

LABEL_21:
    v22 = a1;
    v23.high = a5.high;
    v24 = a2;
    v23.low = a4;
    v25 = a3;
    v26 = a5.high;
    v27 = a6;
    v28 = a4;
    low = a5.low;
    v30 = UInt64.dividingFullWidth(_:)(v23).quotient;
    a5.low = low;
    a4 = v28;
    a6 = v27;
    a5.high = v26;
    a3 = v25;
    a2 = v24;
    v31 = v30;
    a1 = v22;
    goto LABEL_25;
  }

  v21 = a5.high;
  if (a5.high != a5.low)
  {
    goto LABEL_21;
  }

LABEL_24:
  v31 = -1;
LABEL_25:
  v32 = v31 * a6;
  v33 = (__PAIR128__(a5.low, a6) * v31) >> 64;
  if (__CFADD__((v31 * a6) >> 64, v31 * a5.low))
  {
    v34 = ((v31 * a5.low) >> 64) + 1;
  }

  else
  {
    v34 = (v31 * a5.low) >> 64;
  }

  v35 = a5.high >= v34;
  if (a5.high != v34)
  {
    goto LABEL_35;
  }

LABEL_32:
  v35 = a4 >= v33;
  if (a4 != v33)
  {
    while (1)
    {
      while (1)
      {
LABEL_35:
        if (v35)
        {
          goto LABEL_47;
        }

LABEL_36:
        v36 = __CFADD__(v21, a6);
        v35 = __CFADD__(a4, a5.low);
        a4 += a5.low;
        if (!v35)
        {
          break;
        }

        if (v36)
        {
          goto LABEL_44;
        }

LABEL_45:
        ++a5.high;
        --v31;
        v21 += a6;
        v35 = a5.high >= v34;
        if (a5.high == v34)
        {
          goto LABEL_32;
        }
      }

      if (a4 == -1)
      {
        if (!v36)
        {
          a4 = -1;
          goto LABEL_31;
        }

LABEL_44:
        ++a4;
        goto LABEL_45;
      }

      a4 += v36;
LABEL_31:
      v21 += a6;
      --v31;
      v35 = a5.high >= v34;
      if (a5.high == v34)
      {
        goto LABEL_32;
      }
    }
  }

  if (v21 < v32)
  {
    goto LABEL_36;
  }

  a4 = v33;
LABEL_47:
  v13 = 0;
  v35 = v21 >= v32;
  v37 = v21 - v32;
  v38 = a4 - v33;
  v39 = !v35;
  v40 = v38 - v39;
  *a1 = v31;
  v41 = (v40 << -v7) | (v37 >> v7);
  if (v7)
  {
    v42 = v40 >> v7;
  }

  else
  {
    v41 = v37;
    v42 = v40;
  }

  *a3 = v41;
  *a2 = v42;
  return v13;
}

Swift::tuple_high__UInt128_low__UInt128 __swiftcall _UInt128.multipliedFullWidth(by:)(Swift::_UInt128 by)
{
  v3 = v1 * by.low;
  v4 = (__PAIR128__(v2, v1) * by.low) >> 64;
  v5 = __CFADD__((v1 * by.low) >> 64, v2 * by.low);
  v6 = (v2 * by.high) >> 64;
  v7 = (v1 * by.high) >> 64;
  v8 = (v2 * by.low) >> 64;
  v11 = __PAIR128__(v2 * by.high, v4) + v1 * by.high;
  v9 = __CFADD__(__CFADD__(v4, v1 * by.high), v2 * by.high) | __CFADD__(v5, *(&v11 + 1));
  v10 = v5 + *(&v11 + 1);
  v12 = v9;
  v9 = __CFADD__(v8, v7);
  v13 = v8 + v7;
  if (v9)
  {
    ++v6;
  }

  v15 = (__PAIR128__(v6, v13) + __PAIR128__(v12, v10)) >> 64;
  v14 = v13 + v10;
  v16 = v3;
  v17 = v11;
  result.low.high = v17;
  result.low.low = v16;
  result.high.high = v15;
  result.high.low = v14;
  return result;
}

unint64_t specialized _wideDivide42<A>(_:by:)(Swift::UInt64 *a1, Swift::UInt64 *a2, Swift::UInt64 *a3, Swift::UInt64 a4, Swift::UInt64 a5, Swift::UInt64 a6, Swift::tuple_high_UInt64_low_UInt64 a7, Swift::UInt64 a8)
{
  v8 = a8;
  if (!(a7.low | a8))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000010, 0x800000018066AEF0 | 0x8000000000000000, "Swift/LegacyInt128.swift", 0x18uLL, 2, 0x4F3uLL, 0);
  }

  v9 = a8 >= a5;
  if (a7.low != a4)
  {
    v9 = a7.low >= a4;
  }

  if (!v9)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001FLL, 0x800000018066AEB0 | 0x8000000000000000, "Swift/LegacyInt128.swift", 0x18uLL, 2, 0x4F6uLL, 0);
  }

  high = a7.high;
  if (!(a4 | a5))
  {
    v11 = a6;
    v12 = a7;

    return specialized _wideDivide22<A>(_:by:)(a1, a2, a3, v11, v12, a8);
  }

  if (!a7.low)
  {
    if (!a8)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v20 = a1;
    v21 = a3;
    v22 = a2;
    if (a4 % a8)
    {
      v23.low = a5;
      v24 = a6;
      v23.high = a4 % a8;
      remainder = UInt64.dividingFullWidth(_:)(v23).remainder;
      a6 = v24;
      v26 = remainder;
      if (remainder)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v26 = a5 % a8;
      if (a5 % a8)
      {
LABEL_17:
        v27 = a6;
        v29 = UInt64.dividingFullWidth(_:)(*&v26);
        v28 = v29.remainder;
        result = v29.quotient;
        if (v29.remainder)
        {
LABEL_18:
          v30 = result;
          v31.high = v28;
          v31.low = high;
          v33 = UInt64.dividingFullWidth(_:)(v31);
          v32 = v33.remainder;
          quotient = v33.quotient;
          result = v30;
LABEL_25:
          *v20 = quotient;
          *v21 = v32;
          *v22 = 0;
          return result;
        }

LABEL_24:
        quotient = high / a8;
        v32 = high % a8;
        goto LABEL_25;
      }
    }

    result = a6 / a8;
    v28 = a6 % a8;
    if (a6 % a8)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  v14 = __clz(a7.low);
  if (!v14)
  {
    v35 = a7.high | a5;
    v16 = a6 | a4;
    if (!(a6 | a4))
    {
      goto LABEL_28;
    }

LABEL_33:
    v38 = a1;
    v39 = a3;
    v40 = a2;
    if (v16 == a7.low)
    {
      result = -1;
    }

    else
    {
      v41.high = v16;
      v41.low = v35;
      low = a7.low;
      v43 = a6;
      result = UInt64.dividingFullWidth(_:)(v41).quotient;
      a6 = v43;
      a7.low = low;
    }

    v44 = result * v8;
    v45 = (__PAIR128__(a7.low, v8) * result) >> 64;
    if (__CFADD__((result * v8) >> 64, result * a7.low))
    {
      v46 = ((result * a7.low) >> 64) + 1;
    }

    else
    {
      v46 = (result * a7.low) >> 64;
    }

    v47 = v16 >= v46;
    if (v16 == v46)
    {
      goto LABEL_54;
    }

LABEL_57:
    while (2)
    {
      if (!v47)
      {
        while (1)
        {
          v48 = __CFADD__(a6, v8);
          v47 = __CFADD__(v35, a7.low);
          v35 += a7.low;
          if (v47)
          {
            break;
          }

          if (v35 == -1)
          {
            if (v48)
            {
              goto LABEL_52;
            }

            v35 = -1;
          }

          else
          {
            v35 += v48;
          }

          a6 += v8;
          --result;
          v47 = v16 >= v46;
          if (v16 != v46)
          {
            goto LABEL_57;
          }

LABEL_54:
          v47 = v35 >= v45;
          if (v35 != v45)
          {
            goto LABEL_57;
          }

          if (a6 >= v44)
          {
            v35 = v45;
            goto LABEL_59;
          }
        }

        if (v48)
        {
LABEL_52:
          ++v35;
        }

        ++v16;
        --result;
        a6 += v8;
        v47 = v16 >= v46;
        if (v16 != v46)
        {
          continue;
        }

        goto LABEL_54;
      }

      break;
    }

LABEL_59:
    v51 = __PAIR128__(v35, a6) - __PAIR128__(v45, v44);
    v49 = (__PAIR128__(v35, a6) - __PAIR128__(v45, v44)) >> 64;
    v50 = v51;
    if (v49 == a7.low)
    {
      v52 = -1;
    }

    else
    {
      v53 = result;
      v54.high = v49;
      v54.low = v51;
      v55 = a7.low;
      v56 = UInt64.dividingFullWidth(_:)(v54).quotient;
      a7.low = v55;
      v52 = v56;
      result = v53;
    }

    v57 = v52 * v8;
    v58 = (__PAIR128__(a7.low, v8) * v52) >> 64;
    if (__CFADD__((v52 * v8) >> 64, v52 * a7.low))
    {
      v59 = ((v52 * a7.low) >> 64) + 1;
    }

    else
    {
      v59 = (v52 * a7.low) >> 64;
    }

    v60 = v49 >= v59;
    if (v49 == v59)
    {
      goto LABEL_80;
    }

LABEL_83:
    while (2)
    {
      if (v60)
      {
LABEL_85:
        v47 = high >= v57;
        v62 = high - v57;
        v63 = !v47;
        v64 = v50 - v58 - v63;
        *v38 = v52;
        v65 = (v64 << -v14) | (v62 >> v14);
        if (v14)
        {
          v66 = v64 >> v14;
        }

        else
        {
          v65 = v62;
          v66 = v64;
        }

        *v39 = v65;
        *v40 = v66;
        return result;
      }

      while (1)
      {
        v61 = __CFADD__(high, v8);
        v47 = __CFADD__(v50, a7.low);
        v50 += a7.low;
        if (v47)
        {
          break;
        }

        if (v50 == -1)
        {
          if (v61)
          {
            goto LABEL_78;
          }

          v50 = -1;
        }

        else
        {
          v50 += v61;
        }

        high += v8;
        --v52;
        v60 = v49 >= v59;
        if (v49 != v59)
        {
          goto LABEL_83;
        }

LABEL_80:
        v60 = v50 >= v58;
        if (v50 != v58)
        {
          goto LABEL_83;
        }

        if (high >= v57)
        {
          v50 = v58;
          goto LABEL_85;
        }
      }

      if (v61)
      {
LABEL_78:
        ++v50;
      }

      ++v49;
      --v52;
      high += v8;
      v60 = v49 >= v59;
      if (v49 != v59)
      {
        continue;
      }

      goto LABEL_80;
    }
  }

  v15 = 0x80 - v14;
  v16 = (a5 >> -v14) | (a4 << v14);
  v17 = (128 - v14) & 0x7F;
  v18 = a6 << v14;
  if (v17 > 0x3F)
  {
    v19 = a6 >> v15;
  }

  else if (v17)
  {
    v19 = (a7.high >> v15) | v18;
    v16 |= a6 >> v15;
  }

  else
  {
    v16 |= a6;
    v19 = a7.high;
  }

  a7.low = (a8 >> -v14) | (a7.low << v14);
  v8 = a8 << v14;
  v35 = v19 | (a5 << v14);
  a6 = (a7.high >> (-v14 & 0x3F)) | v18;
  high = a7.high << v14;
  if (v16)
  {
    goto LABEL_33;
  }

LABEL_28:
  v36 = a6 < v8;
  if (v35 != a7.low)
  {
    v36 = v35 < a7.low;
  }

  if (!v36)
  {
    goto LABEL_33;
  }

  if (v35 == a7.low)
  {
    v37 = -1;
  }

  else
  {
    v67 = a1;
    v68.high = v35;
    v69 = a2;
    v68.low = a6;
    v70 = a3;
    v71 = a7.low;
    v72 = a6;
    v73 = UInt64.dividingFullWidth(_:)(v68).quotient;
    a6 = v72;
    a7.low = v71;
    a3 = v70;
    a2 = v69;
    v37 = v73;
    a1 = v67;
  }

  v74 = v37 * v8;
  v75 = (__PAIR128__(a7.low, v8) * v37) >> 64;
  if (__CFADD__((v37 * v8) >> 64, v37 * a7.low))
  {
    v76 = ((v37 * a7.low) >> 64) + 1;
  }

  else
  {
    v76 = (v37 * a7.low) >> 64;
  }

  v77 = v35 >= v76;
  if (v35 == v76)
  {
    goto LABEL_111;
  }

LABEL_114:
  while (2)
  {
    if (!v77)
    {
      while (1)
      {
        v78 = __CFADD__(high, v8);
        v47 = __CFADD__(a6, a7.low);
        a6 += a7.low;
        if (v47)
        {
          break;
        }

        if (a6 == -1)
        {
          if (v78)
          {
            goto LABEL_109;
          }

          a6 = -1;
        }

        else
        {
          a6 += v78;
        }

        high += v8;
        --v37;
        v77 = v35 >= v76;
        if (v35 != v76)
        {
          goto LABEL_114;
        }

LABEL_111:
        v77 = a6 >= v75;
        if (a6 != v75)
        {
          goto LABEL_114;
        }

        if (high >= v74)
        {
          v79 = a1;
          a6 = v75;
          goto LABEL_117;
        }
      }

      if (v78)
      {
LABEL_109:
        ++a6;
      }

      ++v35;
      --v37;
      high += v8;
      v77 = v35 >= v76;
      if (v35 != v76)
      {
        continue;
      }

      goto LABEL_111;
    }

    break;
  }

  v79 = a1;
LABEL_117:
  result = 0;
  v47 = high >= v74;
  v80 = high - v74;
  v81 = a6 - v75;
  v82 = !v47;
  v83 = v81 - v82;
  *v79 = v37;
  v84 = (v83 << -v14) | (v80 >> v14);
  if (v14)
  {
    v85 = v83 >> v14;
  }

  else
  {
    v84 = v80;
    v85 = v83;
  }

  *a3 = v84;
  *a2 = v85;
  return result;
}

unint64_t specialized _wideMaskedShiftLeft<A>(_:_:)(unint64_t *a1, unint64_t a2, unint64_t a3, char a4)
{
  v4 = (a2 << a4) | (a3 >> -a4);
  if ((a4 & 0x7F) != 0)
  {
    v5 = a3 << a4;
  }

  else
  {
    v5 = a3;
  }

  if ((a4 & 0x7F) == 0)
  {
    v4 = a2;
  }

  if ((a4 & 0x7Fu) <= 0x3FuLL)
  {
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = a3 << a4;
  }

  *a1 = v5;
  return v6;
}

uint64_t protocol witness for FixedWidthInteger.addingReportingOverflow(_:) in conformance _UInt128(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = v2[1];
  v5 = __CFADD__(*v2, *a2);
  v6 = __CFADD__(v4, v3);
  v7 = v4 + v3;
  if (v6)
  {
    v8 = 1;
    if (v5)
    {
LABEL_9:
      v9 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v8 = (v7 == -1) & v5;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_10:
  *a1 = *v2 + *a2;
  a1[1] = v9 + v7;
  return v8;
}

unint64_t protocol witness for FixedWidthInteger.subtractingReportingOverflow(_:) in conformance _UInt128(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *v2;
  v6 = v2[1];
  v7 = v6 >= v4;
  v8 = v6 - v4;
  v9 = !v7;
  v7 = v5 >= v3;
  v10 = v5 - v3;
  LODWORD(v3) = v5 < v3;
  if (v7)
  {
    if (v9)
    {
      v3 = 1;
      v11 = v8;
      goto LABEL_13;
    }

    v11 = v8;
  }

  else
  {
    v11 = v8 - 1;
    if (v9)
    {
      v3 = 1;
      goto LABEL_13;
    }
  }

  if (v8)
  {
    v3 = 0;
  }

  else
  {
    v3 = v3;
  }

LABEL_13:
  *a1 = v10;
  a1[1] = v11;
  return v3;
}

uint64_t protocol witness for FixedWidthInteger.multipliedReportingOverflow(by:) in conformance _UInt128(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *v2;
  v6 = v2[1];
  v7 = !is_mul_ok(v6, *a2);
  v8 = v6 * *a2;
  v9 = !is_mul_ok(*v2, v4);
  v10 = v8 + *v2 * v4;
  v11 = __CFADD__(v8, *v2 * v4);
  v12 = v5 * v3;
  v13 = (v5 * v3) >> 64;
  v14 = __CFADD__(v10, v13);
  v15 = v10 + v13;
  v16 = v14;
  if (v4)
  {
    v17 = v6 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = 1;
  if (v17)
  {
    v19 = (v9 || v11) | v16;
    if (v7)
    {
      v18 = 1;
    }

    else
    {
      v18 = v19;
    }
  }

  *a1 = v12;
  a1[1] = v15;
  return v18 & 1;
}

BOOL protocol witness for FixedWidthInteger.dividedReportingOverflow(by:) in conformance _UInt128(Swift::UInt64 *a1, Swift::UInt64 *a2)
{
  v5.low = a2[1];
  v5.high = *v2;
  v4 = v2[1];
  v6 = v5.low | *a2;
  v7 = v6 == 0;
  if (v6)
  {
    v4 = specialized _wideDivide22<A>(_:by:)(&v11, &v10, &v9, v4, v5, *a2);
    v5.high = v11;
  }

  *a1 = v5.high;
  a1[1] = v4;
  return v7;
}

BOOL protocol witness for FixedWidthInteger.remainderReportingOverflow(dividingBy:) in conformance _UInt128(Swift::UInt64 *a1, Swift::UInt64 *a2)
{
  v5.low = a2[1];
  v5.high = *v2;
  v4 = v2[1];
  v6 = v5.low | *a2;
  v7 = v6 == 0;
  if (v6)
  {
    specialized _wideDivide22<A>(_:by:)(&v11, &v10, &v9, v4, v5, *a2);
    v5.high = v9;
    v4 = v10;
  }

  *a1 = v5.high;
  a1[1] = v4;
  return v7;
}

unint64_t protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance _UInt128(void *a1, Swift::UInt64 *a2, Swift::UInt64 *a3, Swift::UInt64 *a4)
{
  v13.high = *a4;
  v13.low = v4[1];
  result = specialized _wideDivide42<A>(_:by:)(&v12, &v11, &v10, a3[1], *a3, a4[1], v13, *v4);
  v8 = v11;
  v9 = v10;
  *a1 = v12;
  a1[1] = result;
  *a2 = v9;
  a2[1] = v8;
  return result;
}

unint64_t *protocol witness for static FixedWidthInteger.&>> infix(_:_:) in conformance _UInt128@<X0>(unint64_t *result@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = *a2 & 0x7FLL;
  v6 = v4 >> *a2;
  v7 = (*result >> *a2) | (v4 << -*a2);
  if (v5)
  {
    v4 >>= *a2;
    v3 = v7;
  }

  if (v5 > 0x3F)
  {
    v4 = 0;
    v3 = v6;
  }

  *a3 = v3;
  a3[1] = v4;
  return result;
}

uint64_t *protocol witness for static FixedWidthInteger.&<< infix(_:_:) in conformance _UInt128@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = *a2 & 0x7FLL;
  if (v5)
  {
    v4 = (v4 << *a2) | (*result >> -*a2);
    v3 = *result << *a2;
  }

  if (v5 > 0x3F)
  {
    v4 = *result << *a2;
    v3 = 0;
  }

  *a3 = v3;
  a3[1] = v4;
  return result;
}

_OWORD *protocol witness for static FixedWidthInteger.&* infix(_:_:) in conformance _UInt128@<X0>(_OWORD *result@<X0>, _OWORD *a2@<X1>, void *a3@<X8>)
{
  v3 = (*a2 * *result) >> 64;
  *a3 = *a2 * *result;
  a3[1] = v3;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(truncatingIfNeeded:) in conformance _Int128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X5>, uint64_t *a4@<X8>)
{
  v7 = a3();
  v9 = v8;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  a4[1] = v9;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance _UInt128@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v113 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v113, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v112 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v111 = v109 - v13;
  v14 = *(a3 - 1);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v117 = v109 - v20;
  v21 = *a1;
  v114 = a1[1];
  v115 = v21;
  v22 = (a4 + 64);
  v118 = *(a4 + 64);
  if (v118(a3, a4))
  {
    v23 = *(a4 + 128);
    v24 = v23(a3, a4);
    if (v24 >= 64)
    {
      v119 = -128;
      v116 = a2;
      v27 = v23;
      v28 = v18;
      v29 = v14;
      v30 = a5;
      v31 = *(a4 + 96);
      v32 = lazy protocol witness table accessor for type Int and conformance Int(v24, v25, v26);
      v110 = (a4 + 64);
      v33 = v117;
      v31(&v119, &type metadata for Int, v32, a3, a4);
      a5 = v30;
      v14 = v29;
      v18 = v28;
      v23 = v27;
      a2 = v116;
      v34 = (*(*(*(a4 + 32) + 8) + 16))(v116, v33, a3);
      v35 = v33;
      v22 = v110;
      result = (*(v14 + 8))(v35, a3);
      if (v34)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v37 = v118(a3, a4);
    v23 = *(a4 + 128);
    v38 = v23(a3, a4);
    if (v37)
    {
      v116 = a2;
      v110 = v23;
      if (v38 <= 64)
      {
        v75 = v112;
        v74 = v113;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v113, a3, v112, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v77 = v111;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v75, AssociatedConformanceWitness);
        v78 = v117;
        (v74[3])(v77, a3, v74);
        a2 = v116;
        LOBYTE(v74) = (*(*(*(a4 + 32) + 8) + 16))(v116, v78, a3);
        result = (*(v14 + 8))(v78, a3);
        if (v74)
        {
          goto LABEL_25;
        }

        result = (*(a4 + 120))(a3, a4);
        v23 = v110;
        if (result < -128)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v119 = -128;
        v41 = v18;
        v42 = v14;
        v43 = a5;
        v44 = *(a4 + 96);
        v45 = lazy protocol witness table accessor for type Int and conformance Int(v38, v39, v40);
        v46 = v117;
        v44(&v119, &type metadata for Int, v45, a3, a4);
        a5 = v43;
        v14 = v42;
        v18 = v41;
        v47 = v116;
        v48 = (*(*(*(a4 + 32) + 8) + 16))(v116, v46, a3);
        v49 = v46;
        v22 = (a4 + 64);
        a2 = v47;
        result = (*(v14 + 8))(v49, a3);
        v23 = v110;
        if (v48)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_11;
    }

    if (v38 >= 64)
    {
      goto LABEL_11;
    }
  }

  result = (*(a4 + 120))(a3, a4);
  if (result < -128)
  {
    goto LABEL_25;
  }

LABEL_11:
  v50 = v118(a3, a4);
  v109[1] = a4 + 128;
  v51 = v23(a3, a4);
  if (v50)
  {
    if (v51 > 64)
    {
      goto LABEL_13;
    }
  }

  else if (v51 >= 64)
  {
LABEL_13:
    v119 = 128;
    v116 = a2;
    v54 = v23;
    v55 = v18;
    v56 = v14;
    v57 = a5;
    v58 = *(a4 + 96);
    v59 = lazy protocol witness table accessor for type Int and conformance Int(v51, v52, v53);
    v110 = v22;
    v60 = v117;
    v58(&v119, &type metadata for Int, v59, a3, a4);
    a5 = v57;
    v14 = v56;
    v18 = v55;
    v23 = v54;
    a2 = v116;
    v61 = (*(*(*(a4 + 32) + 8) + 16))(v60, v116, a3);
    v62 = v60;
    v22 = v110;
    result = (*(v14 + 8))(v62, a3);
    if (v61)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 128)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v14 + 16))(v18, a2, a3);
  if ((v118(a3, a4) & 1) == 0 || v23(a3, a4) < 65)
  {
    goto LABEL_36;
  }

  if ((v118(a3, a4) & 1) == 0)
  {
    v81 = v118(a3, a4);
    v82 = v23(a3, a4);
    if ((v81 & 1) == 0)
    {
      if (v82 >= 64)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    v110 = v23;
    if (v82 <= 64)
    {
      v93 = v112;
      v92 = v113;
      v94 = swift_getAssociatedConformanceWitness(v113, a3, v112, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v95 = v111;
      (*(v94 + 8))(&qword_18071E0A8, 256, v93, v94);
      v96 = v117;
      (v92[3])(v95, a3, v92);
      LOBYTE(v92) = (*(*(*(a4 + 32) + 8) + 16))(v18, v96, a3);
      (*(v14 + 8))(v96, a3);
      v23 = v110;
      if ((v92 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v119 = 0x8000000000000000;
      v85 = v18;
      v86 = v14;
      v87 = a5;
      v88 = *(a4 + 96);
      v89 = lazy protocol witness table accessor for type Int and conformance Int(v82, v83, v84);
      v90 = v117;
      v88(&v119, &type metadata for Int, v89, a3, a4);
      a5 = v87;
      v14 = v86;
      v18 = v85;
      v91 = (*(*(*(a4 + 32) + 8) + 16))(v85, v90, a3);
      (*(v14 + 8))(v90, a3);
      v23 = v110;
      if ((v91 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

LABEL_40:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v63 = v23(a3, a4);
  if (v63 < 64)
  {
LABEL_35:
    (*(a4 + 120))(a3, a4);
    goto LABEL_36;
  }

  v119 = 0x8000000000000000;
  v66 = v23;
  v67 = v18;
  v68 = v14;
  v69 = a5;
  v70 = *(a4 + 96);
  v71 = lazy protocol witness table accessor for type Int and conformance Int(v63, v64, v65);
  v110 = v22;
  v72 = v117;
  v70(&v119, &type metadata for Int, v71, a3, a4);
  a5 = v69;
  v14 = v68;
  v18 = v67;
  v23 = v66;
  v73 = (*(*(*(a4 + 32) + 8) + 16))(v18, v72, a3);
  (*(v14 + 8))(v72, a3);
  if (v73)
  {
    goto LABEL_40;
  }

LABEL_36:
  if (v23(a3, a4) <= 64 && (v23(a3, a4) != 64 || (v118(a3, a4) & 1) != 0))
  {
    goto LABEL_46;
  }

  v97 = v118(a3, a4);
  v98 = v23(a3, a4);
  if (v97)
  {
    if (v98 > 64)
    {
      goto LABEL_39;
    }

LABEL_45:
    (*(a4 + 120))(a3, a4);
    goto LABEL_46;
  }

  if (v98 < 64)
  {
    goto LABEL_45;
  }

LABEL_39:
  v119 = 0x7FFFFFFFFFFFFFFFLL;
  v101 = v18;
  v102 = a5;
  v103 = *(a4 + 96);
  v104 = lazy protocol witness table accessor for type Int and conformance Int(v98, v99, v100);
  v105 = v117;
  v103(&v119, &type metadata for Int, v104, a3, a4);
  a5 = v102;
  v18 = v101;
  v106 = (*(*(*(a4 + 32) + 8) + 16))(v105, v101, a3);
  (*(v14 + 8))(v105, a3);
  if (v106)
  {
    goto LABEL_40;
  }

LABEL_46:
  v107 = (*(a4 + 120))(a3, a4);
  result = (*(v14 + 8))(v18, a3);
  if ((v107 & 0x8000000000000000) != 0)
  {
    if (v107 > 0xFFFFFFFFFFFFFF80)
    {
      v108 = -v107;
      if (-v107 < 0x40)
      {
        v79 = (v115 >> v107) | (v114 << v108);
        v80 = v115 << v108;
        goto LABEL_27;
      }

      v79 = v115 << v108;
      goto LABEL_26;
    }

LABEL_25:
    v79 = 0;
LABEL_26:
    v80 = 0;
    goto LABEL_27;
  }

  v79 = v114;
  v80 = v115;
  if (v107 >= 0x80)
  {
    goto LABEL_25;
  }

  if (v107 > 0x3F)
  {
    v80 = v114 >> v107;
    v79 = 0;
  }

  else if (v107)
  {
    v80 = (v114 << -v107) | (v115 >> v107);
    v79 = v114 >> v107;
  }

LABEL_27:
  *a5 = v80;
  a5[1] = v79;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance _UInt128(unint64_t *a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v110 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v110, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v109 = v8;
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v108 = v106 - v11;
  v12 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v112 = v106 - v18;
  v19 = (a4 + 64);
  v113 = *(a4 + 64);
  if (v113(a3, a4))
  {
    v20 = *(a4 + 128);
    v21 = v20(a3, a4);
    if (v21 >= 64)
    {
      v114 = -128;
      v111 = a2;
      v38 = v20;
      v39 = v16;
      v40 = v12;
      v41 = a1;
      v42 = *(a4 + 96);
      v43 = lazy protocol witness table accessor for type Int and conformance Int(v21, v22, v23);
      v107 = (a4 + 64);
      v44 = v112;
      v42(&v114, &type metadata for Int, v43, a3, a4);
      a1 = v41;
      v12 = v40;
      v16 = v39;
      v20 = v38;
      a2 = v111;
      v45 = (*(*(*(a4 + 32) + 8) + 16))(v111, v44, a3);
      v46 = v44;
      v19 = v107;
      result = (*(v12 + 8))(v46, a3);
      if (v45)
      {
        goto LABEL_21;
      }
    }

    else
    {
      result = (*(a4 + 120))(a3, a4);
      if (result <= -129)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v25 = v113(a3, a4);
    v20 = *(a4 + 128);
    v26 = v20(a3, a4);
    if (v25)
    {
      v111 = a2;
      v107 = v20;
      if (v26 > 64)
      {
        v114 = -128;
        v29 = v16;
        v30 = v12;
        v31 = a1;
        v32 = *(a4 + 96);
        v33 = lazy protocol witness table accessor for type Int and conformance Int(v26, v27, v28);
        v34 = v112;
        v32(&v114, &type metadata for Int, v33, a3, a4);
        a1 = v31;
        v12 = v30;
        v16 = v29;
        v35 = v111;
        v36 = (*(*(*(a4 + 32) + 8) + 16))(v111, v34, a3);
        v37 = v34;
        v19 = (a4 + 64);
        a2 = v35;
        result = (*(v12 + 8))(v37, a3);
        v20 = v107;
        if (v36)
        {
          goto LABEL_21;
        }

        goto LABEL_15;
      }

      v48 = v109;
      v47 = v110;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v110, a3, v109, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v50 = v108;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v48, AssociatedConformanceWitness);
      v51 = v112;
      (v47[3])(v50, a3, v47);
      a2 = v111;
      LOBYTE(v47) = (*(*(*(a4 + 32) + 8) + 16))(v111, v51, a3);
      result = (*(v12 + 8))(v51, a3);
      v20 = v107;
      if (v47)
      {
        goto LABEL_21;
      }
    }

    else if (v26 >= 64)
    {
      goto LABEL_15;
    }

    result = (*(a4 + 120))(a3, a4);
    if (result < -128)
    {
      goto LABEL_21;
    }
  }

LABEL_15:
  v52 = v113(a3, a4);
  v106[1] = a4 + 128;
  v53 = v20(a3, a4);
  if (v52)
  {
    if (v53 > 64)
    {
      goto LABEL_17;
    }

LABEL_20:
    result = (*(a4 + 120))(a3, a4);
    if (result > 128)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (v53 < 64)
  {
    goto LABEL_20;
  }

LABEL_17:
  v114 = 128;
  v111 = a2;
  v56 = v20;
  v57 = v16;
  v58 = v12;
  v59 = a1;
  v60 = *(a4 + 96);
  v61 = lazy protocol witness table accessor for type Int and conformance Int(v53, v54, v55);
  v107 = v19;
  v62 = v112;
  v60(&v114, &type metadata for Int, v61, a3, a4);
  a1 = v59;
  v12 = v58;
  v16 = v57;
  v20 = v56;
  a2 = v111;
  v63 = (*(*(*(a4 + 32) + 8) + 16))(v62, v111, a3);
  v64 = v62;
  v19 = v107;
  result = (*(v12 + 8))(v64, a3);
  if (v63)
  {
    goto LABEL_21;
  }

LABEL_24:
  (*(v12 + 16))(v16, a2, a3);
  if ((v113(a3, a4) & 1) == 0 || v20(a3, a4) < 65)
  {
    goto LABEL_38;
  }

  if ((v113(a3, a4) & 1) == 0)
  {
    v78 = v113(a3, a4);
    v79 = v20(a3, a4);
    if ((v78 & 1) == 0)
    {
      if (v79 >= 64)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v107 = v20;
    if (v79 <= 64)
    {
      v90 = v109;
      v89 = v110;
      v91 = swift_getAssociatedConformanceWitness(v110, a3, v109, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v92 = v108;
      (*(v91 + 8))(&qword_18071E0A8, 256, v90, v91);
      v93 = v112;
      (v89[3])(v92, a3, v89);
      LOBYTE(v89) = (*(*(*(a4 + 32) + 8) + 16))(v16, v93, a3);
      (*(v12 + 8))(v93, a3);
      v20 = v107;
      if ((v89 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v114 = 0x8000000000000000;
      v82 = v16;
      v83 = v12;
      v84 = a1;
      v85 = *(a4 + 96);
      v86 = lazy protocol witness table accessor for type Int and conformance Int(v79, v80, v81);
      v87 = v112;
      v85(&v114, &type metadata for Int, v86, a3, a4);
      a1 = v84;
      v12 = v83;
      v16 = v82;
      v88 = (*(*(*(a4 + 32) + 8) + 16))(v82, v87, a3);
      (*(v12 + 8))(v87, a3);
      v20 = v107;
      if ((v88 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_42:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v67 = v20(a3, a4);
  if (v67 < 64)
  {
LABEL_37:
    (*(a4 + 120))(a3, a4);
    goto LABEL_38;
  }

  v114 = 0x8000000000000000;
  v70 = v20;
  v71 = v16;
  v72 = v12;
  v73 = a1;
  v74 = *(a4 + 96);
  v75 = lazy protocol witness table accessor for type Int and conformance Int(v67, v68, v69);
  v107 = v19;
  v76 = v112;
  v74(&v114, &type metadata for Int, v75, a3, a4);
  a1 = v73;
  v12 = v72;
  v16 = v71;
  v20 = v70;
  v77 = (*(*(*(a4 + 32) + 8) + 16))(v16, v76, a3);
  (*(v12 + 8))(v76, a3);
  if (v77)
  {
    goto LABEL_42;
  }

LABEL_38:
  if (v20(a3, a4) <= 64 && (v20(a3, a4) != 64 || (v113(a3, a4) & 1) != 0))
  {
    goto LABEL_48;
  }

  v94 = v113(a3, a4);
  v95 = v20(a3, a4);
  if (v94)
  {
    if (v95 > 64)
    {
      goto LABEL_41;
    }

LABEL_47:
    (*(a4 + 120))(a3, a4);
    goto LABEL_48;
  }

  if (v95 < 64)
  {
    goto LABEL_47;
  }

LABEL_41:
  v114 = 0x7FFFFFFFFFFFFFFFLL;
  v98 = v16;
  v99 = a1;
  v100 = *(a4 + 96);
  v101 = lazy protocol witness table accessor for type Int and conformance Int(v95, v96, v97);
  v102 = v112;
  v100(&v114, &type metadata for Int, v101, a3, a4);
  a1 = v99;
  v16 = v98;
  v103 = (*(*(*(a4 + 32) + 8) + 16))(v102, v98, a3);
  (*(v12 + 8))(v102, a3);
  if (v103)
  {
    goto LABEL_42;
  }

LABEL_48:
  v104 = (*(a4 + 120))(a3, a4);
  result = (*(v12 + 8))(v16, a3);
  v66 = *a1;
  v65 = a1[1];
  if ((v104 & 0x8000000000000000) != 0)
  {
    if (v104 > 0xFFFFFFFFFFFFFF80)
    {
      v105 = -v104;
      if (-v104 < 0x40)
      {
        v65 = (v65 << v105) | (v66 >> v104);
        v66 <<= v105;
        goto LABEL_23;
      }

      v65 = v66 << v105;
      goto LABEL_22;
    }

LABEL_21:
    v65 = 0;
LABEL_22:
    v66 = 0;
    goto LABEL_23;
  }

  if (v104 >= 0x80)
  {
    goto LABEL_21;
  }

  if (v104 > 0x3F)
  {
    v66 = v65 >> v104;
    v65 = 0;
  }

  else if (v104)
  {
    v66 = (v65 << -v104) | (v66 >> v104);
    v65 >>= v104;
  }

LABEL_23:
  *a1 = v66;
  a1[1] = v65;
  return result;
}

unint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance _UInt128@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v105 = a5;
  v99 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v99, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v98 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v97 = &v95 - v12;
  v13 = *(a3 - 1);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v104 = &v95 - v19;
  v20 = *a1;
  v100 = a1[1];
  v101 = v20;
  v21 = *(a4 + 64);
  if (v21(a3, a4))
  {
    v22 = *(a4 + 128);
    v23 = v22(a3, a4);
    if (v23 >= 64)
    {
      v106 = -128;
      v102 = v21;
      v26 = v17;
      v27 = v13;
      v28 = a2;
      v29 = *(a4 + 96);
      v30 = lazy protocol witness table accessor for type Int and conformance Int(v23, v24, v25);
      v103 = v22;
      v31 = v104;
      v29(&v106, &type metadata for Int, v30, a3, a4);
      a2 = v28;
      v13 = v27;
      v17 = v26;
      v21 = v102;
      v32 = (*(*(*(a4 + 32) + 8) + 16))(a2, v31, a3);
      v33 = v31;
      v22 = v103;
      (*(v13 + 8))(v33, a3);
      if (v32)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v34 = v21(a3, a4);
    v22 = *(a4 + 128);
    v35 = v22(a3, a4);
    if (v34)
    {
      v96 = a2;
      v103 = v22;
      if (v35 <= 64)
      {
        v63 = v98;
        v62 = v99;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v99, a3, v98, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v65 = v97;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v63, AssociatedConformanceWitness);
        v66 = v104;
        (v62[3])(v65, a3, v62);
        a2 = v96;
        LOBYTE(v62) = (*(*(*(a4 + 32) + 8) + 16))(v96, v66, a3);
        (*(v13 + 8))(v66, a3);
        if (v62)
        {
          goto LABEL_25;
        }

        v67 = (*(a4 + 120))(a3, a4);
        v22 = v103;
        if (v67 < -128)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v106 = -128;
        v102 = v21;
        v38 = *(a4 + 96);
        v39 = lazy protocol witness table accessor for type Int and conformance Int(v35, v36, v37);
        v40 = v104;
        v38(&v106, &type metadata for Int, v39, a3, a4);
        v21 = v102;
        a2 = v96;
        v41 = (*(*(*(a4 + 32) + 8) + 16))(v96, v40, a3);
        (*(v13 + 8))(v40, a3);
        v22 = v103;
        if (v41)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_11;
    }

    if (v35 >= 64)
    {
      goto LABEL_11;
    }
  }

  if ((*(a4 + 120))(a3, a4) < -128)
  {
    goto LABEL_25;
  }

LABEL_11:
  v42 = v21(a3, a4);
  v96 = a4 + 128;
  v43 = v22(a3, a4);
  if (v42)
  {
    if (v43 > 64)
    {
      goto LABEL_13;
    }
  }

  else if (v43 >= 64)
  {
LABEL_13:
    v106 = 128;
    v102 = v21;
    v46 = v17;
    v47 = v13;
    v48 = a2;
    v49 = *(a4 + 96);
    v50 = lazy protocol witness table accessor for type Int and conformance Int(v43, v44, v45);
    v103 = v22;
    v51 = v104;
    v49(&v106, &type metadata for Int, v50, a3, a4);
    a2 = v48;
    v13 = v47;
    v17 = v46;
    v21 = v102;
    v52 = (*(*(*(a4 + 32) + 8) + 16))(v51, a2, a3);
    v53 = v51;
    v22 = v103;
    (*(v13 + 8))(v53, a3);
    if (v52)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if ((*(a4 + 120))(a3, a4) > 128)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v13 + 16))(v17, a2, a3);
  if ((v21(a3, a4) & 1) == 0 || v22(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v21(a3, a4) & 1) == 0)
  {
    v70 = v21(a3, a4);
    v71 = v22(a3, a4);
    if ((v70 & 1) == 0)
    {
      if (v71 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v103 = v22;
    if (v71 <= 64)
    {
      v78 = v98;
      v79 = v99;
      v80 = swift_getAssociatedConformanceWitness(v99, a3, v98, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v81 = v97;
      (*(v80 + 8))(&qword_18071E0A8, 256, v78, v80);
      v82 = v79;
      v83 = v79[3];
      v84 = v104;
      (v83)(v81, a3, v82);
      LOBYTE(v81) = (*(*(*(a4 + 32) + 8) + 16))(v17, v84, a3);
      (*(v13 + 8))(v84, a3);
      v22 = v103;
      if ((v81 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v106 = 0x8000000000000000;
      v102 = v21;
      v74 = *(a4 + 96);
      v75 = lazy protocol witness table accessor for type Int and conformance Int(v71, v72, v73);
      v76 = v104;
      v74(&v106, &type metadata for Int, v75, a3, a4);
      v21 = v102;
      v77 = (*(*(*(a4 + 32) + 8) + 16))(v17, v76, a3);
      (*(v13 + 8))(v76, a3);
      v22 = v103;
      if ((v77 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v54 = v22(a3, a4);
  if (v54 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v106 = 0x8000000000000000;
  v102 = v21;
  v57 = *(a4 + 96);
  v58 = lazy protocol witness table accessor for type Int and conformance Int(v54, v55, v56);
  v103 = v22;
  v59 = v104;
  v57(&v106, &type metadata for Int, v58, a3, a4);
  v21 = v102;
  v60 = (*(*(*(a4 + 32) + 8) + 16))(v17, v59, a3);
  v61 = v59;
  v22 = v103;
  (*(v13 + 8))(v61, a3);
  if (v60)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v22(a3, a4) <= 64 && (v22(a3, a4) != 64 || (v21(a3, a4) & 1) != 0))
  {
    goto LABEL_44;
  }

  v85 = v21(a3, a4);
  v86 = v22(a3, a4);
  if (v85)
  {
    if (v86 > 64)
    {
      goto LABEL_37;
    }

LABEL_43:
    (*(a4 + 120))(a3, a4);
    goto LABEL_44;
  }

  if (v86 < 64)
  {
    goto LABEL_43;
  }

LABEL_37:
  v106 = 0x7FFFFFFFFFFFFFFFLL;
  v89 = *(a4 + 96);
  v90 = lazy protocol witness table accessor for type Int and conformance Int(v86, v87, v88);
  v91 = v104;
  v89(&v106, &type metadata for Int, v90, a3, a4);
  v92 = (*(*(*(a4 + 32) + 8) + 16))(v91, v17, a3);
  (*(v13 + 8))(v91, a3);
  if (v92)
  {
    goto LABEL_38;
  }

LABEL_44:
  v93 = (*(a4 + 120))(a3, a4);
  (*(v13 + 8))(v17, a3);
  if ((v93 & 0x8000000000000000) != 0)
  {
    if (v93 > 0xFFFFFFFFFFFFFF80)
    {
      result = specialized _wideMaskedShiftRight<A>(_:_:)(&v106, v100, v101, -v93);
      goto LABEL_47;
    }
  }

  else if (v93 < 0x80)
  {
    result = specialized _wideMaskedShiftLeft<A>(_:_:)(&v106, v100, v101, v93);
LABEL_47:
    v68 = v106;
    goto LABEL_48;
  }

LABEL_25:
  v68 = 0;
  result = 0;
LABEL_48:
  v94 = v105;
  *v105 = v68;
  v94[1] = result;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance _UInt128(unint64_t *a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v110 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v110, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v109 = v8;
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v108 = v106 - v11;
  v12 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v112 = v106 - v18;
  v19 = (a4 + 64);
  v113 = *(a4 + 64);
  if (v113(a3, a4))
  {
    v20 = *(a4 + 128);
    v21 = v20(a3, a4);
    if (v21 >= 64)
    {
      v114 = -128;
      v111 = a2;
      v38 = v20;
      v39 = v16;
      v40 = v12;
      v41 = a1;
      v42 = *(a4 + 96);
      v43 = lazy protocol witness table accessor for type Int and conformance Int(v21, v22, v23);
      v107 = (a4 + 64);
      v44 = v112;
      v42(&v114, &type metadata for Int, v43, a3, a4);
      a1 = v41;
      v12 = v40;
      v16 = v39;
      v20 = v38;
      a2 = v111;
      v45 = (*(*(*(a4 + 32) + 8) + 16))(v111, v44, a3);
      v46 = v44;
      v19 = v107;
      result = (*(v12 + 8))(v46, a3);
      if (v45)
      {
        goto LABEL_21;
      }
    }

    else
    {
      result = (*(a4 + 120))(a3, a4);
      if (result <= -129)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v25 = v113(a3, a4);
    v20 = *(a4 + 128);
    v26 = v20(a3, a4);
    if (v25)
    {
      v111 = a2;
      v107 = v20;
      if (v26 > 64)
      {
        v114 = -128;
        v29 = v16;
        v30 = v12;
        v31 = a1;
        v32 = *(a4 + 96);
        v33 = lazy protocol witness table accessor for type Int and conformance Int(v26, v27, v28);
        v34 = v112;
        v32(&v114, &type metadata for Int, v33, a3, a4);
        a1 = v31;
        v12 = v30;
        v16 = v29;
        v35 = v111;
        v36 = (*(*(*(a4 + 32) + 8) + 16))(v111, v34, a3);
        v37 = v34;
        v19 = (a4 + 64);
        a2 = v35;
        result = (*(v12 + 8))(v37, a3);
        v20 = v107;
        if (v36)
        {
          goto LABEL_21;
        }

        goto LABEL_15;
      }

      v48 = v109;
      v47 = v110;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v110, a3, v109, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v50 = v108;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v48, AssociatedConformanceWitness);
      v51 = v112;
      (v47[3])(v50, a3, v47);
      a2 = v111;
      LOBYTE(v47) = (*(*(*(a4 + 32) + 8) + 16))(v111, v51, a3);
      result = (*(v12 + 8))(v51, a3);
      v20 = v107;
      if (v47)
      {
        goto LABEL_21;
      }
    }

    else if (v26 >= 64)
    {
      goto LABEL_15;
    }

    result = (*(a4 + 120))(a3, a4);
    if (result < -128)
    {
      goto LABEL_21;
    }
  }

LABEL_15:
  v52 = v113(a3, a4);
  v106[1] = a4 + 128;
  v53 = v20(a3, a4);
  if (v52)
  {
    if (v53 > 64)
    {
      goto LABEL_17;
    }

LABEL_20:
    result = (*(a4 + 120))(a3, a4);
    if (result > 128)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (v53 < 64)
  {
    goto LABEL_20;
  }

LABEL_17:
  v114 = 128;
  v111 = a2;
  v56 = v20;
  v57 = v16;
  v58 = v12;
  v59 = a1;
  v60 = *(a4 + 96);
  v61 = lazy protocol witness table accessor for type Int and conformance Int(v53, v54, v55);
  v107 = v19;
  v62 = v112;
  v60(&v114, &type metadata for Int, v61, a3, a4);
  a1 = v59;
  v12 = v58;
  v16 = v57;
  v20 = v56;
  a2 = v111;
  v63 = (*(*(*(a4 + 32) + 8) + 16))(v62, v111, a3);
  v64 = v62;
  v19 = v107;
  result = (*(v12 + 8))(v64, a3);
  if (v63)
  {
    goto LABEL_21;
  }

LABEL_24:
  (*(v12 + 16))(v16, a2, a3);
  if ((v113(a3, a4) & 1) == 0 || v20(a3, a4) < 65)
  {
    goto LABEL_38;
  }

  if ((v113(a3, a4) & 1) == 0)
  {
    v78 = v113(a3, a4);
    v79 = v20(a3, a4);
    if ((v78 & 1) == 0)
    {
      if (v79 >= 64)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v107 = v20;
    if (v79 <= 64)
    {
      v90 = v109;
      v89 = v110;
      v91 = swift_getAssociatedConformanceWitness(v110, a3, v109, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v92 = v108;
      (*(v91 + 8))(&qword_18071E0A8, 256, v90, v91);
      v93 = v112;
      (v89[3])(v92, a3, v89);
      LOBYTE(v89) = (*(*(*(a4 + 32) + 8) + 16))(v16, v93, a3);
      (*(v12 + 8))(v93, a3);
      v20 = v107;
      if ((v89 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v114 = 0x8000000000000000;
      v82 = v16;
      v83 = v12;
      v84 = a1;
      v85 = *(a4 + 96);
      v86 = lazy protocol witness table accessor for type Int and conformance Int(v79, v80, v81);
      v87 = v112;
      v85(&v114, &type metadata for Int, v86, a3, a4);
      a1 = v84;
      v12 = v83;
      v16 = v82;
      v88 = (*(*(*(a4 + 32) + 8) + 16))(v82, v87, a3);
      (*(v12 + 8))(v87, a3);
      v20 = v107;
      if ((v88 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_42:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v67 = v20(a3, a4);
  if (v67 < 64)
  {
LABEL_37:
    (*(a4 + 120))(a3, a4);
    goto LABEL_38;
  }

  v114 = 0x8000000000000000;
  v70 = v20;
  v71 = v16;
  v72 = v12;
  v73 = a1;
  v74 = *(a4 + 96);
  v75 = lazy protocol witness table accessor for type Int and conformance Int(v67, v68, v69);
  v107 = v19;
  v76 = v112;
  v74(&v114, &type metadata for Int, v75, a3, a4);
  a1 = v73;
  v12 = v72;
  v16 = v71;
  v20 = v70;
  v77 = (*(*(*(a4 + 32) + 8) + 16))(v16, v76, a3);
  (*(v12 + 8))(v76, a3);
  if (v77)
  {
    goto LABEL_42;
  }

LABEL_38:
  if (v20(a3, a4) <= 64 && (v20(a3, a4) != 64 || (v113(a3, a4) & 1) != 0))
  {
    goto LABEL_48;
  }

  v94 = v113(a3, a4);
  v95 = v20(a3, a4);
  if (v94)
  {
    if (v95 > 64)
    {
      goto LABEL_41;
    }

LABEL_47:
    (*(a4 + 120))(a3, a4);
    goto LABEL_48;
  }

  if (v95 < 64)
  {
    goto LABEL_47;
  }

LABEL_41:
  v114 = 0x7FFFFFFFFFFFFFFFLL;
  v98 = v16;
  v99 = a1;
  v100 = *(a4 + 96);
  v101 = lazy protocol witness table accessor for type Int and conformance Int(v95, v96, v97);
  v102 = v112;
  v100(&v114, &type metadata for Int, v101, a3, a4);
  a1 = v99;
  v16 = v98;
  v103 = (*(*(*(a4 + 32) + 8) + 16))(v102, v98, a3);
  (*(v12 + 8))(v102, a3);
  if (v103)
  {
    goto LABEL_42;
  }

LABEL_48:
  v104 = (*(a4 + 120))(a3, a4);
  result = (*(v12 + 8))(v16, a3);
  v66 = *a1;
  v65 = a1[1];
  if ((v104 & 0x8000000000000000) != 0)
  {
    if (v104 > 0xFFFFFFFFFFFFFF80)
    {
      v105 = -v104;
      if (-v104 >= 0x40)
      {
        v66 = v65 >> v105;
        v65 = 0;
      }

      else
      {
        v66 = (v65 << v104) | (v66 >> v105);
        v65 >>= v105;
      }

      goto LABEL_23;
    }

LABEL_21:
    v65 = 0;
LABEL_22:
    v66 = 0;
    goto LABEL_23;
  }

  if (v104 >= 0x80)
  {
    goto LABEL_21;
  }

  if (v104 > 0x3F)
  {
    v65 = v66 << v104;
    goto LABEL_22;
  }

  if (v104)
  {
    v65 = (v65 << v104) | (v66 >> -v104);
    v66 <<= v104;
  }

LABEL_23:
  *a1 = v66;
  a1[1] = v65;
  return result;
}