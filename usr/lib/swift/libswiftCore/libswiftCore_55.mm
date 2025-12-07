uint64_t protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance Int8(_BYTE *a1, _BYTE *a2, char *a3)
{
  result = specialized BinaryInteger.quotientAndRemainder(dividingBy:)(a2, *a3, *v3);
  *a1 = result;
  return result;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance Int8(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
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
    v40 = 0;
    LOBYTE(v39) = 1;
    goto LABEL_47;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v43[0] = a1;
      v43[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v16 = specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v43, v5, 10);
      v22 = (v16 >> 8) & 1;
LABEL_42:
      v44 = v22;
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
      v41 = _StringObject.sharedUTF8.getter(a1, a2);
      v6 = v42;
      v8 = v41;
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
            LOBYTE(v16) = 0;
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
                v31 = (10 * v16);
                v16 = v31 + v29;
                v32 = v16 != (v31 + v29);
                if (v31 != v30 || v32)
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
            LOBYTE(v16) = 0;
            while (1)
            {
              v34 = *v8 - 48;
              if (v34 >= 0xA)
              {
                goto LABEL_41;
              }

              v35 = 10 * v16;
              v36 = (10 * v16);
              v16 = v36 + v34;
              v37 = v16 != (v36 + v34);
              if (v36 != v35 || v37)
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
            LOBYTE(v16) = 0;
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
                v19 = (10 * v16);
                v16 = v19 - v17;
                v20 = v16 != (v19 - v17);
                if (v19 != v18 || v20)
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
              LOBYTE(v16) = 0;
              LOBYTE(v22) = 1;
              goto LABEL_42;
            }

LABEL_40:
            v44 = 0;
LABEL_43:
            LOBYTE(v39) = v44;
            a2;
            goto LABEL_44;
          }
        }

        LOBYTE(v16) = 0;
        v44 = 1;
        goto LABEL_43;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
  a2;
  v39 = (v16 >> 8) & 1;
LABEL_44:
  if (v39)
  {
    v40 = 0;
  }

  else
  {
    v40 = v16;
  }

LABEL_47:
  *a3 = v40;
  a3[1] = v39 & 1;
}

_BYTE *protocol witness for static SignedNumeric.- prefix(_:) in conformance Int8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 + -*result)
  {
    __break(1u);
  }

  else
  {
    *a2 = -v2;
  }

  return result;
}

void protocol witness for SignedNumeric.negate() in conformance Int8()
{
  v1 = *v0;
  if (v1 + -*v0)
  {
    __break(1u);
  }

  else
  {
    *v0 = -v1;
  }
}

uint64_t protocol witness for Numeric.init<A>(exactly:) in conformance Int8@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
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
  if ((v17 & 1) == 0 || v18(a2, a3) < 9)
  {
    goto LABEL_15;
  }

  v50 = a1;
  v56 = 0x80;
  v19 = v55;
  if (v55(a2, a3))
  {
    a1 = v50;
    v20 = v18(a2, a3);
    if (v20 < 8)
    {
      goto LABEL_14;
    }

LABEL_8:
    v23 = *(a3 + 96);
    v24 = lazy protocol witness table accessor for type Int8 and conformance Int8(v20, v21, v22);
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
    if (v33 <= 8 && (v18(a2, a3) != 8 || (v35(a2, a3) & 1) != 0))
    {
      goto LABEL_26;
    }

    v57 = 127;
    v36 = v35(a2, a3);
    v37 = v18(a2, a3);
    if (v36)
    {
      if (v37 > 8)
      {
        goto LABEL_18;
      }
    }

    else if (v37 > 7)
    {
LABEL_18:
      v40 = *(a3 + 96);
      v41 = lazy protocol witness table accessor for type Int8 and conformance Int8(v37, v38, v39);
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
    if (v20 >= 8)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v20 > 8)
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
  v47[1] = v46;
  return result;
}

void protocol witness for Numeric.magnitude.getter in conformance Int8(_BYTE *a1@<X8>)
{
  v2 = *v1;
  if (v2 < 0)
  {
    v2 = -v2;
  }

  *a1 = v2;
}

_BYTE *protocol witness for static Numeric.* infix(_:_:) in conformance Int8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *result * *a2;
  if ((*result * *a2) == v3)
  {
    *a3 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Int8.* infix(_:_:)(char a1, char a2)
{
  result = (a1 * a2);
  if ((a1 * a2) != result)
  {
    __break(1u);
  }

  return result;
}

_BYTE *protocol witness for static Numeric.*= infix(_:_:) in conformance Int8(_BYTE *result, _BYTE *a2)
{
  v2 = *result * *a2;
  if ((*result * *a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *protocol witness for Strideable.distance(to:) in conformance Int8@<X0>(unsigned __int8 *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if (((v4 ^ v3) & 0x80) == 0)
  {
    v5 = v3 - v4;
    if (v5 == v5)
    {
      *a2 = v5;
      return result;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v4 >= 0)
  {
    v6 = *v2;
  }

  else
  {
    v6 = -v4;
  }

  v3 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = -v3;
  }

  v7 = v6 + v3;
  if ((v7 >> 8))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  *a2 = v8;
  return result;
}

void *protocol witness for Strideable.advanced(by:) in conformance Int8@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  v4 = v3 + *result;
  if (__OFADD__(v3, *result))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -129 || v4 >= 128)
  {
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a2 = v4;
  return result;
}

_BYTE *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Int8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *result + *a2;
  if ((*result + *a2) == v3)
  {
    *a3 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Int8(_BYTE *result, _BYTE *a2)
{
  v2 = *result + *a2;
  if ((*result + *a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Int8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *result - *a2;
  if ((*result - *a2) == v3)
  {
    *a3 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Int8.- infix(_:_:)(char a1, char a2)
{
  result = (a1 - a2);
  if (result != result)
  {
    __break(1u);
  }

  return result;
}

_BYTE *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Int8(_BYTE *result, _BYTE *a2)
{
  v2 = *result - *a2;
  if ((*result - *a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Int8._toCustomAnyHashable()@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys4Int8VGMd, _ss22_IntegerAnyHashableBoxVys4Int8VGMR);
  *(a2 + 24) = result;
  *(a2 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance Int8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys4Int8VGMd, _ss22_IntegerAnyHashableBoxVys4Int8VGMR);
  *(a1 + 24) = result;
  *(a1 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v3;
  return result;
}

uint64_t UInt16.init(_:)(__n128 a1)
{
  if ((a1.n128_u16[0] & 0x7FFFu) >= 0x7C00 || *a1.n128_u16 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a1.n128_u16;
}

uint64_t UInt16.init(exactly:)(__n128 a1)
{
  v1 = truncl(*a1.n128_u16) != *a1.n128_u16;
  v3 = *a1.n128_u16 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)) || (a1.n128_u16[0] & 0x7FFFu) > 0x7BFF || v1;
  v4 = *a1.n128_u16;
  if (v3)
  {
    v4 = 0;
  }

  return v4 | (v3 << 16);
}

Swift::UInt16 __swiftcall UInt16.init(_:)(Swift::Float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000 || a1 <= -1.0 || a1 >= 65536.0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::UInt16_optional __swiftcall UInt16.init(exactly:)(Swift::Float exactly)
{
  v1 = exactly <= -1.0;
  if (exactly >= 65536.0)
  {
    v1 = 1;
  }

  if (truncf(exactly) != exactly)
  {
    v1 = 1;
  }

  v2 = exactly;
  if (v1)
  {
    v2 = 0;
  }

  return (v2 | (v1 << 16));
}

Swift::UInt16 __swiftcall UInt16.init(_:)(Swift::Double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || a1 <= -1.0 || a1 >= 65536.0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::UInt16_optional __swiftcall UInt16.init(exactly:)(Swift::Double exactly)
{
  v1 = exactly <= -1.0;
  if (exactly >= 65536.0)
  {
    v1 = 1;
  }

  if (trunc(exactly) != exactly)
  {
    v1 = 1;
  }

  v2 = exactly;
  if (v1)
  {
    v2 = 0;
  }

  return (v2 | (v1 << 16));
}

_WORD *static UInt16.+= infix(_:_:)(_WORD *result, unsigned __int16 a2)
{
  v2 = *result + a2;
  if ((v2 & 0x10000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

_WORD *static UInt16.-= infix(_:_:)(_WORD *result, unsigned __int16 a2)
{
  v2 = *result - a2;
  if ((v2 & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

_WORD *static UInt16.*= infix(_:_:)(_WORD *result, unsigned __int16 a2)
{
  if (((*result * a2) & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result *= a2;
  }

  return result;
}

_WORD *static UInt16./= infix(_:_:)(_WORD *result, unsigned __int16 a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result /= a2;
  return result;
}

Swift::tuple_partialValue_UInt16_overflow_Bool __swiftcall UInt16.addingReportingOverflow(_:)(Swift::UInt16 a1)
{
  v2 = v1 + a1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_UInt16_overflow_Bool __swiftcall UInt16.subtractingReportingOverflow(_:)(Swift::UInt16 a1)
{
  v2 = v1 - a1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_UInt16_overflow_Bool __swiftcall UInt16.multipliedReportingOverflow(by:)(Swift::UInt16 by)
{
  v2 = v1 * by;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_UInt16_overflow_Bool __swiftcall UInt16.dividedReportingOverflow(by:)(Swift::UInt16 by)
{
  if (by)
  {
    v1 /= by;
  }

  v2 = v1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_UInt16_overflow_Bool __swiftcall UInt16.remainderReportingOverflow(dividingBy:)(Swift::UInt16 dividingBy)
{
  if (dividingBy)
  {
    v1 %= dividingBy;
  }

  v2 = v1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

_WORD *static UInt16.%= infix(_:_:)(_WORD *result, unsigned __int16 a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result %= a2;
  return result;
}

uint64_t UInt16.Words.subscript.getter(uint64_t a1, unsigned __int16 a2)
{
  if (a1 < 0 || a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance UInt16.Words(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x30, 0x4C8FuLL);
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = UInt16.Words.subscript.read(v4, *a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance UInt8.Words;
}

void (*UInt16.Words.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2 < 0 || a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

Swift::tuple_high_UInt16_low_UInt16 __swiftcall UInt16.multipliedFullWidth(by:)(Swift::UInt16 by)
{
  v2 = (v1 * by) >> 16;
  result.low = v1;
  result.high = v2;
  return result;
}

Swift::tuple_quotient_UInt16_remainder_UInt16 __swiftcall UInt16.dividingFullWidth(_:)(Swift::tuple_quotient_UInt16_remainder_UInt16 result)
{
  if (!v1 || result.quotient >= v1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v2 = (result.remainder | (result.quotient << 16)) / v1;
  result.quotient = v2;
  return result;
}

uint64_t protocol witness for FixedWidthInteger.addingReportingOverflow(_:) in conformance UInt16(_WORD *a1, _WORD *a2)
{
  v3 = (*v2 + *a2) >> 16;
  *a1 = *v2 + *a2;
  return v3;
}

BOOL protocol witness for FixedWidthInteger.subtractingReportingOverflow(_:) in conformance UInt16(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *v2 - *a2;
  *a1 = v3;
  return (v3 & 0xFFFF0000) != 0;
}

BOOL protocol witness for FixedWidthInteger.multipliedReportingOverflow(by:) in conformance UInt16(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *v2 * *a2;
  *a1 = v3;
  return (v3 & 0xFFFF0000) != 0;
}

BOOL protocol witness for FixedWidthInteger.dividedReportingOverflow(by:) in conformance UInt16(_WORD *a1, _WORD *a2)
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

BOOL protocol witness for FixedWidthInteger.remainderReportingOverflow(dividingBy:) in conformance UInt16(_WORD *a1, _WORD *a2)
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

_WORD *protocol witness for FixedWidthInteger.multipliedFullWidth(by:) in conformance UInt16(_WORD *result, _WORD *a2, unsigned __int16 *a3)
{
  v4 = *v3 * *a3;
  *result = HIWORD(v4);
  *a2 = v4;
  return result;
}

Swift::UInt16 protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance UInt16(Swift::UInt16 *a1, _WORD *a2, _WORD *a3, _WORD *a4)
{
  result = UInt16.dividingFullWidth(_:)(__PAIR32__(*a4, *a3)).quotient;
  *a1 = result;
  *a2 = v7;
  return result;
}

__int16 *protocol witness for _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:) in conformance UInt16@<X0>(__int16 *result@<X0>, unint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v3 = 0;
  if (a2 >> 9 <= 8 && (a2 & 1) == 0)
  {
    v3 = *result;
  }

  *a3 = v3;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance UInt16@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _WORD *a6@<X8>)
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
  if (v22(a2, a3) < 16)
  {
    goto LABEL_12;
  }

  v39 = -1;
  v23 = v18(a2, a3);
  v24 = v21;
  v25 = v22(a2, a3);
  if ((v23 & 1) == 0)
  {
    if (v25 <= 16)
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

  if (v25 > 16)
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

_WORD *protocol witness for static BinaryInteger./ infix(_:_:) in conformance UInt16@<X0>(_WORD *result@<X0>, _WORD *a2@<X1>, _WORD *a3@<X8>)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result / *a2;
  return result;
}

uint64_t static UInt16./ infix(_:_:)(unsigned __int16 a1, unsigned __int16 a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 / a2;
}

_WORD *protocol witness for static BinaryInteger./= infix(_:_:) in conformance UInt16(_WORD *result, _WORD *a2)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result /= *a2;
  return result;
}

_WORD *protocol witness for static BinaryInteger.% infix(_:_:) in conformance UInt16@<X0>(_WORD *result@<X0>, _WORD *a2@<X1>, _WORD *a3@<X8>)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result % *a2;
  return result;
}

uint64_t static UInt16.% infix(_:_:)(unsigned __int16 a1, unsigned __int16 a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 % a2;
}

_WORD *protocol witness for static BinaryInteger.%= infix(_:_:) in conformance UInt16(_WORD *result, _WORD *a2)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result %= *a2;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance UInt16@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, _WORD *a5@<X8>)
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
      v115 = -16;
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
    if (result < -16)
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
    if (result < -16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v115 = -16;
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

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 16)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v50 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v115 = 16;
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
  if (v22(a3, a4) > 64 || v22(a3, a4) == 64 && (v114(a3, a4) & 1) == 0)
  {
    v95 = v114(a3, a4);
    v96 = v22(a3, a4);
    if (v95)
    {
      if (v96 > 64)
      {
        goto LABEL_37;
      }
    }

    else if (v96 >= 64)
    {
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

      goto LABEL_44;
    }

    (*(a4 + 120))(a3, a4);
  }

LABEL_44:
  v105 = (*(a4 + 120))(a3, a4);
  result = (*(v14 + 8))(v18, a3);
  if ((v105 & 0x8000000000000000) != 0)
  {
    if (v105 > 0xFFFFFFFFFFFFFFF0)
    {
      v78 = v111 << -v105;
      goto LABEL_47;
    }
  }

  else if (v105 < 0x10)
  {
    v78 = v111 >> v105;
    goto LABEL_47;
  }

LABEL_25:
  LOWORD(v78) = 0;
LABEL_47:
  *a5 = v78;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance UInt16(_WORD *a1, uint64_t a2, Class *a3, uint64_t a4)
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
      v113 = -16;
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
    if (result < -16)
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
    if (result < -16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v113 = -16;
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

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 16)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v48 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v113 = 16;
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
    if (v103 >= 0xFFFFFFFFFFFFFFF1)
    {
      v76 = v104 << -v103;
      goto LABEL_47;
    }
  }

  else if (v103 < 0x10)
  {
    v76 = v104 >> v103;
    goto LABEL_47;
  }

LABEL_25:
  LOWORD(v76) = 0;
LABEL_47:
  *a1 = v76;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance UInt16@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, _WORD *a5@<X8>)
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
      v115 = -16;
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
    if (result < -16)
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
    if (result < -16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v115 = -16;
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

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 16)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v50 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v115 = 16;
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
  if (v22(a3, a4) > 64 || v22(a3, a4) == 64 && (v114(a3, a4) & 1) == 0)
  {
    v95 = v114(a3, a4);
    v96 = v22(a3, a4);
    if (v95)
    {
      if (v96 > 64)
      {
        goto LABEL_37;
      }
    }

    else if (v96 >= 64)
    {
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

      goto LABEL_44;
    }

    (*(a4 + 120))(a3, a4);
  }

LABEL_44:
  v105 = (*(a4 + 120))(a3, a4);
  result = (*(v14 + 8))(v18, a3);
  if ((v105 & 0x8000000000000000) != 0)
  {
    if (v105 > 0xFFFFFFFFFFFFFFF0)
    {
      v78 = v111 >> -v105;
      goto LABEL_47;
    }
  }

  else if (v105 <= 0xF)
  {
    v78 = v111 << v105;
    goto LABEL_47;
  }

LABEL_25:
  LOWORD(v78) = 0;
LABEL_47:
  *a5 = v78;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance UInt16(_WORD *a1, uint64_t a2, Class *a3, uint64_t a4)
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
      v113 = -16;
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
    if (result < -16)
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
    if (result < -16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v113 = -16;
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

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 16)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v48 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v113 = 16;
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
    if (v103 > 0xFFFFFFFFFFFFFFF0)
    {
      v76 = v104 >> -v103;
      goto LABEL_47;
    }
  }

  else if (v103 < 0x10)
  {
    v76 = v104 << v103;
    goto LABEL_47;
  }

LABEL_25:
  LOWORD(v76) = 0;
LABEL_47:
  *a1 = v76;
  return result;
}

_WORD *protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance UInt16(_WORD *result, _WORD *a2, _WORD *a3)
{
  if (!*a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *v3 / *a3;
  *a2 = *v3 % *a3;
  *result = v4;
  return result;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance UInt16(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
    v34 = 0;
    LOBYTE(v33) = 1;
    goto LABEL_47;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v37[0] = a1;
      v37[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v16 = specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v37, v5, 10);
      v20 = HIWORD(v16) & 1;
LABEL_42:
      v38 = v20;
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
      v35 = _StringObject.sharedUTF8.getter(a1, a2);
      v6 = v36;
      v8 = v35;
      if (v6 > 0)
      {
LABEL_9:
        v9 = *v8;
        if (v9 == 43)
        {
          v21 = specialized Collection.subscript.getter(1, v8, v6);
          v25 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v21, v22, v23, v24);
          if (v26)
          {
            LOWORD(v16) = 0;
            if (v25)
            {
              while (1)
              {
                v27 = *v25 - 48;
                if (v27 >= 0xA)
                {
                  goto LABEL_41;
                }

                v28 = 10 * v16;
                v16 = (10 * v16) + v27;
                if ((v28 & 0xF0000) != 0 || HIWORD(v16) != 0)
                {
                  goto LABEL_41;
                }

                ++v25;
                if (!--v26)
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
            LOWORD(v16) = 0;
            while (1)
            {
              v30 = *v8 - 48;
              if (v30 >= 0xA)
              {
                goto LABEL_41;
              }

              v31 = 10 * v16;
              v16 = (10 * v16) + v30;
              if ((v31 & 0xF0000) != 0 || HIWORD(v16) != 0)
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
            LOWORD(v16) = 0;
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
                v16 = (10 * v16) - v17;
                if ((v18 & 0xF0000) != 0 || (v16 & 0xFFFF0000) != 0)
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
              LOWORD(v16) = 0;
              LOBYTE(v20) = 1;
              goto LABEL_42;
            }

LABEL_40:
            v38 = 0;
LABEL_43:
            LOBYTE(v33) = v38;
            a2;
            goto LABEL_44;
          }
        }

        LOWORD(v16) = 0;
        v38 = 1;
        goto LABEL_43;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
  a2;
  v33 = HIWORD(v16) & 1;
LABEL_44:
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = v16;
  }

LABEL_47:
  *a3 = v34;
  *(a3 + 2) = v33 & 1;
}

uint64_t protocol witness for Numeric.init<A>(exactly:) in conformance UInt16@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _WORD *a5@<X8>)
{
  v35 = a4;
  v37 = a5;
  v38 = *(a2 - 1);
  v39 = a1;
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v10, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v35 - v14;
  v36 = *(a3 + 64);
  if ((v36(a2, a3) & 1) == 0 || (v16 = swift_getAssociatedConformanceWitness(v10, a2, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral), (*(v16 + 8))(&qword_18071E0A8, 256, v12, v16), (*(v10 + 24))(v15, a2, v10), v17 = (*(*(*(a3 + 32) + 8) + 16))(v39, v8, a2), v18 = *(v38 + 8), v18(v8, a2), (v17 & 1) == 0))
  {
    v19 = *(a3 + 128);
    if (v19(a2, a3) < 16)
    {
      goto LABEL_12;
    }

    v40 = -1;
    v20 = v36(a2, a3);
    v21 = v39;
    v22 = v19(a2, a3);
    if (v20)
    {
      if (v22 <= 16)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, a2, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v12, AssociatedConformanceWitness);
        (*(v10 + 24))(v15, a2, v10);
        v26 = (*(*(*(a3 + 32) + 8) + 40))(v21, v8, a2);
        (*(v38 + 8))(v8, a2);
        if ((v26 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if (v22 < 17)
    {
LABEL_11:
      (*(a3 + 120))(a2, a3);
      goto LABEL_12;
    }

    v27 = *(a3 + 96);
    v28 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v22, v23, v24);
    v27(&v40, v35, v28, a2, a3);
    v29 = (*(*(*(a3 + 32) + 8) + 16))(v8, v21, a2);
    v18 = *(v38 + 8);
    v18(v8, a2);
    if ((v29 & 1) == 0)
    {
LABEL_12:
      v33 = v39;
      v31 = (*(a3 + 120))(a2, a3);
      result = (*(v38 + 8))(v33, a2);
      v32 = 0;
      goto LABEL_13;
    }
  }

  result = (v18)(v39, a2);
  v31 = 0;
  v32 = 1;
LABEL_13:
  v34 = v37;
  *v37 = v31;
  *(v34 + 2) = v32;
  return result;
}

unsigned __int16 *protocol witness for static Numeric.* infix(_:_:) in conformance UInt16@<X0>(unsigned __int16 *result@<X0>, unsigned __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *result * *a2;
  if ((v3 & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

uint64_t static UInt16.* infix(_:_:)(unsigned __int16 a1, unsigned __int16 a2)
{
  result = a1 * a2;
  if ((result & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  return result;
}

_WORD *protocol witness for static Numeric.*= infix(_:_:) in conformance UInt16(_WORD *result, unsigned __int16 *a2)
{
  v2 = *result * *a2;
  if ((v2 & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

unsigned __int16 *protocol witness for Strideable.distance(to:) in conformance UInt16@<X0>(unsigned __int16 *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 - v3;
  v6 = v3 >= v4;
  v7 = v3 - v4;
  if (!v6)
  {
    v7 = -v5;
  }

  *a2 = v7;
  return result;
}

unint64_t *protocol witness for Strideable.advanced(by:) in conformance UInt16@<X0>(unint64_t *result@<X0>, _WORD *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if ((*result & 0x8000000000000000) == 0)
  {
    if (v3 >= 0x10000)
    {
      goto LABEL_8;
    }

    v4 += v3;
    v3 = v4;
    if (v4 == v4)
    {
LABEL_7:
      *a2 = v4;
      return result;
    }

    __break(1u);
  }

  v5 = -v3;
  if (v5 >= 0x10000)
  {
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 -= v5;
  if ((v4 & 0xFFFF0000) == 0)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unsigned __int16 *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance UInt16@<X0>(unsigned __int16 *result@<X0>, unsigned __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *result + *a2;
  if ((v3 & 0x10000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

_WORD *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance UInt16(_WORD *result, unsigned __int16 *a2)
{
  v2 = *result + *a2;
  if ((v2 & 0x10000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

unsigned __int16 *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance UInt16@<X0>(unsigned __int16 *result@<X0>, unsigned __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *result - *a2;
  if ((v3 & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

_WORD *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance UInt16(_WORD *result, unsigned __int16 *a2)
{
  v2 = *result - *a2;
  if ((v2 & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

uint64_t UInt16._toCustomAnyHashable()@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys6UInt16VGMd, _ss22_IntegerAnyHashableBoxVys6UInt16VGMR);
  *(a2 + 24) = result;
  *(a2 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UInt16@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys6UInt16VGMd, _ss22_IntegerAnyHashableBoxVys6UInt16VGMR);
  *(a1 + 24) = result;
  *(a1 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v3;
  return result;
}

uint64_t Int16.init(_:)(__n128 a1)
{
  if ((a1.n128_u16[0] & 0x7FFFu) >= 0x7C00 || *a1.n128_u16 <= COERCE_SHORT_FLOAT(-2047) || *a1.n128_u16 >= COERCE_SHORT_FLOAT(30720))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a1.n128_u16;
}

uint64_t Int16.init(exactly:)(__n128 a1)
{
  v1 = *a1.n128_u16 <= COERCE_SHORT_FLOAT(-2047);
  if (*a1.n128_u16 >= COERCE_SHORT_FLOAT(30720))
  {
    v1 = 1;
  }

  if (truncl(*a1.n128_u16) != *a1.n128_u16)
  {
    v1 = 1;
  }

  v2 = *a1.n128_u16;
  if (v1)
  {
    v2 = 0;
  }

  return v2 | (v1 << 16);
}

Swift::Int16 __swiftcall Int16.init(_:)(Swift::Float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000 || a1 <= -32769.0 || a1 >= 32768.0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::Int16_optional __swiftcall Int16.init(exactly:)(Swift::Float exactly)
{
  v1 = exactly <= -32769.0;
  if (exactly >= 32768.0)
  {
    v1 = 1;
  }

  if (truncf(exactly) != exactly)
  {
    v1 = 1;
  }

  v2 = exactly;
  if (v1)
  {
    v2 = 0;
  }

  return (v2 | (v1 << 16));
}

Swift::Int16 __swiftcall Int16.init(_:)(Swift::Double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || a1 <= -32769.0 || a1 >= 32768.0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::Int16_optional __swiftcall Int16.init(exactly:)(Swift::Double exactly)
{
  v1 = exactly <= -32769.0;
  if (exactly >= 32768.0)
  {
    v1 = 1;
  }

  if (trunc(exactly) != exactly)
  {
    v1 = 1;
  }

  v2 = exactly;
  if (v1)
  {
    v2 = 0;
  }

  return (v2 | (v1 << 16));
}

__int16 *static Int16.+= infix(_:_:)(__int16 *result, __int16 a2)
{
  v2 = *result + a2;
  if ((*result + a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__int16 *static Int16.-= infix(_:_:)(__int16 *result, __int16 a2)
{
  v2 = *result - a2;
  if ((*result - a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__int16 *static Int16.*= infix(_:_:)(__int16 *result, __int16 a2)
{
  v2 = *result * a2;
  if ((*result * a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_WORD *static Int16./= infix(_:_:)(_WORD *result, __int16 a2)
{
  if (!a2 || (v2 = *result, a2 == -1) && v2 == 0x8000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v2 / a2;
  return result;
}

Swift::tuple_partialValue_Int16_overflow_Bool __swiftcall Int16.addingReportingOverflow(_:)(Swift::Int16 a1)
{
  v2 = v1 + a1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_Int16_overflow_Bool __swiftcall Int16.subtractingReportingOverflow(_:)(Swift::Int16 a1)
{
  v2 = v1 - a1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_Int16_overflow_Bool __swiftcall Int16.multipliedReportingOverflow(by:)(Swift::Int16 by)
{
  v2 = v1 * by;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_Int16_overflow_Bool __swiftcall Int16.dividedReportingOverflow(by:)(Swift::Int16 by)
{
  if (by)
  {
    if (by == -1 && v1 == 0x8000)
    {
      v1 = 0x8000;
    }

    else
    {
      v1 /= by;
    }
  }

  v2 = v1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_Int16_overflow_Bool __swiftcall Int16.remainderReportingOverflow(dividingBy:)(Swift::Int16 dividingBy)
{
  if (dividingBy)
  {
    if (dividingBy == -1 && v1 == 0x8000)
    {
      v1 = 0;
    }

    else
    {
      v1 %= dividingBy;
    }
  }

  v2 = v1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

_WORD *static Int16.%= infix(_:_:)(_WORD *result, __int16 a2)
{
  if (!a2 || (v2 = *result, a2 == -1) && v2 == 0x8000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v2 % a2;
  return result;
}

uint64_t Int16.nonzeroBitCount.getter(unsigned __int16 a1, int8x8_t a2)
{
  a2.i32[0] = a1;
  v2 = vcnt_s8(a2);
  v2.i16[0] = vaddlv_u8(v2);
  return v2.u32[0];
}

Swift::Int __swiftcall Int16.Words.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall Int16.Words.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t Int16.Words.subscript.getter(uint64_t a1, __int16 a2)
{
  if (a1 < 0 || a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Int16.Words(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x30, 0xA339uLL);
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = Int16.Words.subscript.read(v4, *a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance UInt8.Words;
}

void (*Int16.Words.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2 < 0 || a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

void *protocol witness for Collection.subscript.getter in conformance UInt16.Words@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if ((*result & 0x8000000000000000) != 0 || (v3 = result[1], v3 >= 2))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *v2;
  *a2 = *result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t Int16.magnitude.getter(__int16 a1)
{
  if (a1 >= 0)
  {
    return a1;
  }

  else
  {
    return -a1;
  }
}

Swift::tuple_high_Int16_low_UInt16 __swiftcall Int16.multipliedFullWidth(by:)(Swift::Int16 by)
{
  v2 = (v1 * by) >> 16;
  result.low = v1;
  result.high = v2;
  return result;
}

Swift::tuple_quotient_Int16_remainder_Int16 __swiftcall Int16.dividingFullWidth(_:)(Swift::tuple_high_Int16_low_UInt16 a1)
{
  if (!v1 || (v2 = a1.low | (a1.high << 16), v1 == -1) && v2 == 0x80000000 || (v3 = v2 / v1, v3 != v3))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result.remainder = v2;
  result.quotient = v3;
  return result;
}

BOOL protocol witness for FixedWidthInteger.addingReportingOverflow(_:) in conformance Int16(_WORD *a1, __int16 *a2)
{
  v3 = *v2 + *a2;
  v4 = v3 != (*v2 + *a2);
  *a1 = v3;
  return v4;
}

BOOL protocol witness for FixedWidthInteger.subtractingReportingOverflow(_:) in conformance Int16(_WORD *a1, __int16 *a2)
{
  v3 = *v2 - *a2;
  v4 = v3 != (*v2 - *a2);
  *a1 = v3;
  return v4;
}

BOOL protocol witness for FixedWidthInteger.multipliedReportingOverflow(by:) in conformance Int16(_WORD *a1, __int16 *a2)
{
  v3 = *v2 * *a2;
  v4 = v3 != (*v2 * *a2);
  *a1 = v3;
  return v4;
}

uint64_t protocol witness for FixedWidthInteger.dividedReportingOverflow(by:) in conformance Int16(_WORD *a1, _WORD *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (!*a2 || v3 == 0xFFFF && v4 == 0x8000)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
    LOWORD(v4) = v4 / v3;
  }

  *a1 = v4;
  return v5;
}

uint64_t protocol witness for FixedWidthInteger.remainderReportingOverflow(dividingBy:) in conformance Int16(_WORD *a1, _WORD *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (!*a2)
  {
    goto LABEL_7;
  }

  if (v3 == 0xFFFF && v4 == 0x8000)
  {
    LOWORD(v4) = 0;
LABEL_7:
    v5 = 1;
    goto LABEL_5;
  }

  v5 = 0;
  LOWORD(v4) = v4 % v3;
LABEL_5:
  *a1 = v4;
  return v5;
}

_WORD *protocol witness for FixedWidthInteger.multipliedFullWidth(by:) in conformance Int16(_WORD *result, _WORD *a2, __int16 *a3)
{
  v4 = *v3 * *a3;
  *result = HIWORD(v4);
  *a2 = v4;
  return result;
}

Swift::Int16 protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance Int16(Swift::Int16 *a1, _WORD *a2, _WORD *a3, _WORD *a4)
{
  result = Int16.dividingFullWidth(_:)(__PAIR32__(*a4, *a3)).quotient;
  *a1 = result;
  *a2 = v7;
  return result;
}

uint64_t _ss6UInt16Vs17FixedWidthIntegerssACP15nonzeroBitCountSivgTW_0()
{
  v1 = vcnt_s8(*v0);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

_WORD *protocol witness for _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:) in conformance Int16@<X0>(_WORD *result@<X0>, unint64_t a2@<X1>, _WORD *a3@<X8>)
{
  if (a2 >> 8 <= 0x10)
  {
    *a3 = *result;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance UInt16@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, Class *a4@<X3>, uint64_t (*a5)(void)@<X5>, _WORD *a6@<X8>)
{
  v12 = a5();
  static FixedWidthInteger._convert<A>(from:)(&v41, a1, a4, a2, v12, a3);
  if ((v41 & 0x10000) != 0)
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

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance Int16@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _WORD *a6@<X8>)
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
  if ((v18 & 1) != 0 && v19(a2, a3) >= 17)
  {
    v38 = v9;
    v45 = 0x8000;
    v20 = v44;
    if (v44(a2, a3))
    {
      if (v19(a2, a3) < 16)
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
        if (v22 >= 16)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v22 <= 16)
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
  if (v29 > 16 || v19(a2, a3) == 16 && (v30(a2, a3) & 1) == 0)
  {
    v46 = 0x7FFF;
    v32 = v30(a2, a3);
    v33 = v19(a2, a3);
    if (v32)
    {
      if (v33 > 16)
      {
        goto LABEL_17;
      }
    }

    else if (v33 > 15)
    {
LABEL_17:
      v34 = v41;
      (*(a3 + 96))(&v46, v39, v40, a2, a3);
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

uint64_t protocol witness for BinaryInteger.init<A>(truncatingIfNeeded:) in conformance UInt16@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _WORD *a4@<X8>)
{
  v7 = (*(a3 + 120))(a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  return result;
}

unsigned __int16 *protocol witness for static BinaryInteger./ infix(_:_:) in conformance Int16@<X0>(unsigned __int16 *result@<X0>, _WORD *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *a2;
  if (!*a2 || ((v4 = *result, v4 == 0x8000) ? (v5 = v3 == 0xFFFF) : (v5 = 0), v5))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = v4 / v3;
  return result;
}

uint64_t static Int16./ infix(_:_:)(__int16 a1, __int16 a2)
{
  if (!a2 || a1 == 0x8000 && a2 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (a1 / a2);
}

_WORD *protocol witness for static BinaryInteger./= infix(_:_:) in conformance Int16(_WORD *result, _WORD *a2)
{
  v2 = *a2;
  if (!*a2 || (v3 = *result, v2 == 0xFFFF) && v3 == 0x8000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v3 / v2;
  return result;
}

unsigned __int16 *protocol witness for static BinaryInteger.% infix(_:_:) in conformance Int16@<X0>(unsigned __int16 *result@<X0>, _WORD *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *a2;
  if (!*a2 || ((v4 = *result, v4 == 0x8000) ? (v5 = v3 == 0xFFFF) : (v5 = 0), v5))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = v4 % v3;
  return result;
}

uint64_t static Int16.% infix(_:_:)(__int16 a1, __int16 a2)
{
  if (!a2 || a1 == 0x8000 && a2 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (a1 % a2);
}

_WORD *protocol witness for static BinaryInteger.%= infix(_:_:) in conformance Int16(_WORD *result, _WORD *a2)
{
  v2 = *a2;
  if (!*a2 || (v3 = *result, v2 == 0xFFFF) && v3 == 0x8000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v3 % v2;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance Int16@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, _WORD *a5@<X8>)
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
        if (result < -16)
        {
          goto LABEL_26;
        }

        goto LABEL_11;
      }

      v107 = -16;
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
      LOWORD(v58) = 0;
      goto LABEL_48;
    }

    if (v37 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result >= -16)
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

  v107 = -16;
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
    if (result > 16)
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
  v107 = 16;
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
    if (v97 > 0xFFFFFFFFFFFFFFF0)
    {
      v58 = v20 << -v97;
      goto LABEL_48;
    }

    goto LABEL_26;
  }

  if (v97 < 0x10)
  {
    v58 = v20 >> v97;
    goto LABEL_48;
  }

LABEL_17:
  v58 = v20 >> 15;
LABEL_48:
  *v106 = v58;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance Int16(unsigned __int16 *a1, uint64_t a2, Class *a3, uint64_t a4)
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
        if (result < -16)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      }

      v113 = -16;
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
      LOWORD(v71) = 0;
      goto LABEL_47;
    }

    if (v35 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result >= -16)
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

  v113 = -16;
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
    if (result <= 16)
    {
      goto LABEL_14;
    }

LABEL_22:
    v71 = *a1 >> 15;
    goto LABEL_47;
  }

  if (v48 < 64)
  {
    goto LABEL_21;
  }

LABEL_13:
  v113 = 16;
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
    if (v103 > 0xFFFFFFFFFFFFFFF0)
    {
      v71 = v104 << -v103;
      goto LABEL_47;
    }

    goto LABEL_25;
  }

  if (v103 >= 0x10)
  {
    v71 = v104 >> 15;
  }

  else
  {
    v71 = v104 >> v103;
  }

LABEL_47:
  *a1 = v71;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance Int16@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, _WORD *a5@<X8>)
{
  v107 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v107, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v106 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v105 = &v104 - v13;
  v14 = *(a3 - 1);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v111 = &v104 - v20;
  v110 = *a1;
  v22 = a4 + 64;
  v21 = *(a4 + 64);
  if (v21(a3, a4))
  {
    v112 = *(a4 + 128);
    v23 = v112(a3, a4);
    if (v23 >= 64)
    {
      v113 = -16;
      v109 = v21;
      v37 = v18;
      v38 = v14;
      v39 = a2;
      v40 = a5;
      v41 = *(a4 + 96);
      v42 = lazy protocol witness table accessor for type Int and conformance Int(v23, v24, v25);
      v108 = a4 + 64;
      v43 = v111;
      v41(&v113, &type metadata for Int, v42, a3, a4);
      a5 = v40;
      a2 = v39;
      v14 = v38;
      v18 = v37;
      v21 = v109;
      v44 = (*(*(*(a4 + 32) + 8) + 16))(a2, v43, a3);
      v45 = v43;
      v22 = v108;
      result = (*(v14 + 8))(v45, a3);
      if (v44)
      {
        goto LABEL_16;
      }
    }

    else
    {
      result = (*(a4 + 120))(a3, a4);
      if (result <= -17)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v27 = v21(a3, a4);
    v112 = *(a4 + 128);
    v28 = v112(a3, a4);
    if (v27)
    {
      v104 = a2;
      v109 = v21;
      if (v28 <= 64)
      {
        v47 = v106;
        v46 = v107;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v49 = v105;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v47, AssociatedConformanceWitness);
        v50 = v111;
        (v46[3])(v49, a3, v46);
        a2 = v104;
        LOBYTE(v46) = (*(*(*(a4 + 32) + 8) + 16))(v104, v50, a3);
        result = (*(v14 + 8))(v50, a3);
        if (v46)
        {
          goto LABEL_16;
        }

        result = (*(a4 + 120))(a3, a4);
        v21 = v109;
        if (result < -16)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v113 = -16;
        v31 = a5;
        v32 = *(a4 + 96);
        v33 = lazy protocol witness table accessor for type Int and conformance Int(v28, v29, v30);
        v108 = a4 + 64;
        v34 = v111;
        v32(&v113, &type metadata for Int, v33, a3, a4);
        a5 = v31;
        a2 = v104;
        v35 = (*(*(*(a4 + 32) + 8) + 16))(v104, v34, a3);
        v36 = v34;
        v22 = v108;
        result = (*(v14 + 8))(v36, a3);
        v21 = v109;
        if (v35)
        {
          goto LABEL_16;
        }
      }
    }

    else if (v28 < 64)
    {
      result = (*(a4 + 120))(a3, a4);
      if (result < -16)
      {
        goto LABEL_16;
      }
    }
  }

  v52 = v21(a3, a4);
  v104 = a4 + 128;
  v53 = v112(a3, a4);
  if (v52)
  {
    if (v53 > 64)
    {
      goto LABEL_19;
    }
  }

  else if (v53 > 64)
  {
LABEL_19:
    v113 = 16;
    v109 = v21;
    v56 = v18;
    v57 = v14;
    v58 = a2;
    v59 = a5;
    v60 = *(a4 + 96);
    v61 = lazy protocol witness table accessor for type Int and conformance Int(v53, v54, v55);
    v108 = v22;
    v62 = v111;
    v60(&v113, &type metadata for Int, v61, a3, a4);
    a5 = v59;
    a2 = v58;
    v14 = v57;
    v18 = v56;
    v21 = v109;
    v63 = (*(*(*(a4 + 32) + 8) + 16))(v62, a2, a3);
    v64 = v62;
    v22 = v108;
    result = (*(v14 + 8))(v64, a3);
    if (v63)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 16)
  {
LABEL_23:
    LOWORD(v51) = 0;
    goto LABEL_51;
  }

LABEL_24:
  (*(v14 + 16))(v18, a2, a3);
  if ((v21(a3, a4) & 1) == 0 || v112(a3, a4) < 65)
  {
    goto LABEL_38;
  }

  if ((v21(a3, a4) & 1) == 0)
  {
    v73 = v21(a3, a4);
    v74 = v112(a3, a4);
    if ((v73 & 1) == 0)
    {
      if (v74 >= 64)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v109 = v21;
    if (v74 <= 64)
    {
      v82 = v106;
      v83 = v107;
      v84 = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v85 = v105;
      (*(v84 + 8))(&qword_18071E0A8, 256, v82, v84);
      v86 = v83;
      v87 = v83[3];
      v88 = v111;
      (v87)(v85, a3, v86);
      LOBYTE(v85) = (*(*(*(a4 + 32) + 8) + 16))(v18, v88, a3);
      (*(v14 + 8))(v88, a3);
      v21 = v109;
      if ((v85 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v113 = 0x8000000000000000;
      v77 = a5;
      v78 = *(a4 + 96);
      v79 = lazy protocol witness table accessor for type Int and conformance Int(v74, v75, v76);
      v108 = v22;
      v80 = v111;
      v78(&v113, &type metadata for Int, v79, a3, a4);
      a5 = v77;
      v81 = (*(*(*(a4 + 32) + 8) + 16))(v18, v80, a3);
      (*(v14 + 8))(v80, a3);
      v21 = v109;
      if ((v81 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_42:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v65 = v112(a3, a4);
  if (v65 < 64)
  {
LABEL_37:
    (*(a4 + 120))(a3, a4);
    goto LABEL_38;
  }

  v113 = 0x8000000000000000;
  v109 = v21;
  v68 = a5;
  v69 = *(a4 + 96);
  v70 = lazy protocol witness table accessor for type Int and conformance Int(v65, v66, v67);
  v108 = v22;
  v71 = v111;
  v69(&v113, &type metadata for Int, v70, a3, a4);
  a5 = v68;
  v21 = v109;
  v72 = (*(*(*(a4 + 32) + 8) + 16))(v18, v71, a3);
  (*(v14 + 8))(v71, a3);
  if (v72)
  {
    goto LABEL_42;
  }

LABEL_38:
  v89 = v112;
  if (v112(a3, a4) <= 64 && (v89(a3, a4) != 64 || (v21(a3, a4) & 1) != 0))
  {
    goto LABEL_48;
  }

  v90 = v21(a3, a4);
  v91 = v89;
  v92 = v90;
  v93 = v91(a3, a4);
  if (v92)
  {
    if (v93 > 64)
    {
      goto LABEL_41;
    }
  }

  else if (v93 > 64)
  {
LABEL_41:
    v113 = 0x7FFFFFFFFFFFFFFFLL;
    v96 = v18;
    v97 = v14;
    v98 = a5;
    v99 = *(a4 + 96);
    v100 = lazy protocol witness table accessor for type Int and conformance Int(v93, v94, v95);
    v101 = v111;
    v99(&v113, &type metadata for Int, v100, a3, a4);
    a5 = v98;
    v14 = v97;
    v18 = v96;
    v102 = (*(*(*(a4 + 32) + 8) + 16))(v101, v96, a3);
    (*(v14 + 8))(v101, a3);
    if (v102)
    {
      goto LABEL_42;
    }

    goto LABEL_48;
  }

  (*(a4 + 120))(a3, a4);
LABEL_48:
  v103 = (*(a4 + 120))(a3, a4);
  result = (*(v14 + 8))(v18, a3);
  if ((v103 & 0x8000000000000000) == 0)
  {
    if (v103 < 0x10)
    {
      v51 = v110 << v103;
      goto LABEL_51;
    }

    goto LABEL_23;
  }

  if (v103 > 0xFFFFFFFFFFFFFFF0)
  {
    v51 = v110 >> -v103;
    goto LABEL_51;
  }

LABEL_16:
  v51 = v110 >> 15;
LABEL_51:
  *a5 = v51;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance Int16(unsigned __int16 *a1, uint64_t a2, Class *a3, uint64_t a4)
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
      v113 = -16;
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
      v52 = *a1 >> 15;
      goto LABEL_48;
    }

LABEL_12:
    result = (*(a4 + 120))(a3, a4);
    if (result >= -16)
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

    v113 = -16;
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
  }

  else if (v54 >= 64)
  {
LABEL_16:
    v113 = 16;
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
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 16)
  {
LABEL_20:
    LOWORD(v52) = 0;
    goto LABEL_48;
  }

LABEL_21:
  (*(v12 + 16))(v16, a2, a3);
  if ((v112(a3, a4) & 1) == 0 || v20(a3, a4) < 65)
  {
    goto LABEL_35;
  }

  if ((v112(a3, a4) & 1) == 0)
  {
    v77 = v112(a3, a4);
    v78 = v20(a3, a4);
    if ((v77 & 1) == 0)
    {
      if (v78 >= 64)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
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
        goto LABEL_34;
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
        goto LABEL_35;
      }
    }

LABEL_39:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v66 = v20(a3, a4);
  if (v66 < 64)
  {
LABEL_34:
    (*(a4 + 120))(a3, a4);
    goto LABEL_35;
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
    goto LABEL_39;
  }

LABEL_35:
  if (v20(a3, a4) <= 64 && (v20(a3, a4) != 64 || (v112(a3, a4) & 1) != 0))
  {
    goto LABEL_45;
  }

  v93 = v112(a3, a4);
  v94 = v20(a3, a4);
  if (v93)
  {
    if (v94 > 64)
    {
      goto LABEL_38;
    }
  }

  else if (v94 >= 64)
  {
LABEL_38:
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
      goto LABEL_39;
    }

    goto LABEL_45;
  }

  (*(a4 + 120))(a3, a4);
LABEL_45:
  v103 = (*(a4 + 120))(a3, a4);
  result = (*(v12 + 8))(v16, a3);
  v104 = *a1;
  if ((v103 & 0x8000000000000000) == 0)
  {
    if (v103 < 0x10)
    {
      v52 = v104 << v103;
      goto LABEL_48;
    }

    goto LABEL_20;
  }

  if (v103 <= 0xFFFFFFFFFFFFFFF0)
  {
    v52 = v104 >> 15;
  }

  else
  {
    v52 = v104 >> -v103;
  }

LABEL_48:
  *a1 = v52;
  return result;
}

uint64_t protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance Int16(_WORD *a1, _WORD *a2, __int16 *a3)
{
  result = specialized BinaryInteger.quotientAndRemainder(dividingBy:)(a2, *a3, *v3);
  *a1 = result;
  return result;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance Int16(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
    v40 = 0;
    LOBYTE(v39) = 1;
    goto LABEL_47;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v43[0] = a1;
      v43[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v16 = specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v43, v5, 10);
      v22 = HIWORD(v16) & 1;
LABEL_42:
      v44 = v22;
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
      v41 = _StringObject.sharedUTF8.getter(a1, a2);
      v6 = v42;
      v8 = v41;
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
            LOWORD(v16) = 0;
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
                v31 = (10 * v16);
                v16 = v31 + v29;
                v32 = v16 != (v31 + v29);
                if (v31 != v30 || v32)
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
            LOWORD(v16) = 0;
            while (1)
            {
              v34 = *v8 - 48;
              if (v34 >= 0xA)
              {
                goto LABEL_41;
              }

              v35 = 10 * v16;
              v36 = (10 * v16);
              v16 = v36 + v34;
              v37 = v16 != (v36 + v34);
              if (v36 != v35 || v37)
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
            LOWORD(v16) = 0;
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
                v19 = (10 * v16);
                v16 = v19 - v17;
                v20 = v16 != (v19 - v17);
                if (v19 != v18 || v20)
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
              LOWORD(v16) = 0;
              LOBYTE(v22) = 1;
              goto LABEL_42;
            }

LABEL_40:
            v44 = 0;
LABEL_43:
            LOBYTE(v39) = v44;
            a2;
            goto LABEL_44;
          }
        }

        LOWORD(v16) = 0;
        v44 = 1;
        goto LABEL_43;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
  a2;
  v39 = HIWORD(v16) & 1;
LABEL_44:
  if (v39)
  {
    v40 = 0;
  }

  else
  {
    v40 = v16;
  }

LABEL_47:
  *a3 = v40;
  *(a3 + 2) = v39 & 1;
}

__int16 *protocol witness for static SignedNumeric.- prefix(_:) in conformance Int16@<X0>(__int16 *result@<X0>, _WORD *a2@<X8>)
{
  v2 = *result;
  if (v2 + -*result)
  {
    __break(1u);
  }

  else
  {
    *a2 = -v2;
  }

  return result;
}

void protocol witness for SignedNumeric.negate() in conformance Int16()
{
  v1 = *v0;
  if (v1 + -*v0)
  {
    __break(1u);
  }

  else
  {
    *v0 = -v1;
  }
}

uint64_t protocol witness for Numeric.init<A>(exactly:) in conformance Int16@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _WORD *a5@<X8>)
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
  if ((v17 & 1) == 0 || v18(a2, a3) < 17)
  {
    goto LABEL_15;
  }

  v50 = a1;
  v56 = 0x8000;
  v19 = v55;
  if (v55(a2, a3))
  {
    a1 = v50;
    v20 = v18(a2, a3);
    if (v20 < 16)
    {
      goto LABEL_14;
    }

LABEL_8:
    v23 = *(a3 + 96);
    v24 = lazy protocol witness table accessor for type Int16 and conformance Int16(v20, v21, v22);
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
    if (v33 <= 16 && (v18(a2, a3) != 16 || (v35(a2, a3) & 1) != 0))
    {
      goto LABEL_26;
    }

    v57 = 0x7FFF;
    v36 = v35(a2, a3);
    v37 = v18(a2, a3);
    if (v36)
    {
      if (v37 > 16)
      {
        goto LABEL_18;
      }
    }

    else if (v37 > 15)
    {
LABEL_18:
      v40 = *(a3 + 96);
      v41 = lazy protocol witness table accessor for type Int16 and conformance Int16(v37, v38, v39);
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
    if (v20 >= 16)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v20 > 16)
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
  *(v47 + 2) = v46;
  return result;
}

void protocol witness for Numeric.magnitude.getter in conformance Int16(_WORD *a1@<X8>)
{
  v2 = *v1;
  if (v2 < 0)
  {
    v2 = -v2;
  }

  *a1 = v2;
}

__int16 *protocol witness for static Numeric.* infix(_:_:) in conformance Int16@<X0>(__int16 *result@<X0>, __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *result * *a2;
  if ((*result * *a2) == v3)
  {
    *a3 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Int16.* infix(_:_:)(__int16 a1, __int16 a2)
{
  result = (a1 * a2);
  if ((a1 * a2) != result)
  {
    __break(1u);
  }

  return result;
}

__int16 *protocol witness for static Numeric.*= infix(_:_:) in conformance Int16(__int16 *result, __int16 *a2)
{
  v2 = *result * *a2;
  if ((*result * *a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int16 *protocol witness for Strideable.distance(to:) in conformance Int16@<X0>(unsigned __int16 *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if (((v4 ^ v3) & 0x8000) == 0)
  {
    v5 = v3 - v4;
    if (v5 == v5)
    {
      *a2 = v5;
      return result;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v4 >= 0)
  {
    v6 = *v2;
  }

  else
  {
    v6 = -v4;
  }

  v3 = v3;
  if ((v3 & 0x8000u) != 0)
  {
    v3 = -v3;
  }

  v7 = v6 + v3;
  if ((v7 & 0x10000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  *a2 = v8;
  return result;
}

void *protocol witness for Strideable.advanced(by:) in conformance Int16@<X0>(void *result@<X0>, _WORD *a2@<X8>)
{
  v3 = *v2;
  v4 = v3 + *result;
  if (__OFADD__(v3, *result))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -32769 || v4 >= 0x8000)
  {
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a2 = v4;
  return result;
}

__int16 *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Int16@<X0>(__int16 *result@<X0>, __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *result + *a2;
  if ((*result + *a2) == v3)
  {
    *a3 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Int16.+ infix(_:_:)(__int16 a1, __int16 a2)
{
  result = (a1 + a2);
  if (result != result)
  {
    __break(1u);
  }

  return result;
}

__int16 *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Int16(__int16 *result, __int16 *a2)
{
  v2 = *result + *a2;
  if ((*result + *a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__int16 *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Int16@<X0>(__int16 *result@<X0>, __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *result - *a2;
  if ((*result - *a2) == v3)
  {
    *a3 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Int16.- infix(_:_:)(__int16 a1, __int16 a2)
{
  result = (a1 - a2);
  if (result != result)
  {
    __break(1u);
  }

  return result;
}

__int16 *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Int16(__int16 *result, __int16 *a2)
{
  v2 = *result - *a2;
  if ((*result - *a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Int16._toCustomAnyHashable()@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys5Int16VGMd, _ss22_IntegerAnyHashableBoxVys5Int16VGMR);
  *(a2 + 24) = result;
  *(a2 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance Int16@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys5Int16VGMd, _ss22_IntegerAnyHashableBoxVys5Int16VGMR);
  *(a1 + 24) = result;
  *(a1 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v3;
  return result;
}

uint64_t UInt32.init(_:)(__n128 a1)
{
  if ((a1.n128_u16[0] & 0x7FFFu) >= 0x7C00 || *a1.n128_u16 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a1.n128_u16;
}

unint64_t UInt32.init(exactly:)(__n128 a1)
{
  v1 = truncl(*a1.n128_u16) != *a1.n128_u16;
  v3 = *a1.n128_u16 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)) || (a1.n128_u16[0] & 0x7FFFu) > 0x7BFF || v1;
  v4 = *a1.n128_u16;
  if (v3)
  {
    v4 = 0;
  }

  return v4 | (v3 << 32);
}

Swift::UInt32 __swiftcall UInt32.init(_:)(Swift::Float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000 || a1 <= -1.0 || a1 >= 4295000000.0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::UInt32_optional __swiftcall UInt32.init(exactly:)(Swift::Float exactly)
{
  v1 = exactly <= -1.0;
  if (exactly >= 4295000000.0)
  {
    v1 = 1;
  }

  if (truncf(exactly) != exactly)
  {
    v1 = 1;
  }

  v2 = exactly;
  if (v1)
  {
    v2 = 0;
  }

  return (v2 | (v1 << 32));
}

Swift::UInt32 __swiftcall UInt32.init(_:)(Swift::Double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || a1 <= -1.0 || a1 >= 4294967300.0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::UInt32_optional __swiftcall UInt32.init(exactly:)(Swift::Double exactly)
{
  v1 = exactly <= -1.0;
  if (exactly >= 4294967300.0)
  {
    v1 = 1;
  }

  if (trunc(exactly) != exactly)
  {
    v1 = 1;
  }

  v2 = exactly;
  if (v1)
  {
    v2 = 0;
  }

  return (v2 | (v1 << 32));
}

unsigned int *static UInt32.-= infix(_:_:)(unsigned int *result, unsigned int a2)
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

_DWORD *static UInt32.*= infix(_:_:)(_DWORD *result, unsigned int a2)
{
  v2 = *result * a2;
  if ((v2 & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

_DWORD *static UInt32./= infix(_:_:)(_DWORD *result, unsigned int a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result /= a2;
  return result;
}

Swift::tuple_partialValue_UInt32_overflow_Bool __swiftcall UInt32.subtractingReportingOverflow(_:)(Swift::UInt32 a1)
{
  v2 = v1 - a1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_UInt32_overflow_Bool __swiftcall UInt32.multipliedReportingOverflow(by:)(Swift::UInt32 by)
{
  v2 = v1 * by;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_UInt32_overflow_Bool __swiftcall UInt32.dividedReportingOverflow(by:)(Swift::UInt32 by)
{
  if (by)
  {
    v1 /= by;
  }

  v2 = v1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_UInt32_overflow_Bool __swiftcall UInt32.remainderReportingOverflow(dividingBy:)(Swift::UInt32 dividingBy)
{
  if (dividingBy)
  {
    v1 %= dividingBy;
  }

  v2 = v1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

_DWORD *static UInt32.%= infix(_:_:)(_DWORD *result, unsigned int a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result %= a2;
  return result;
}

uint64_t UInt32.Words.subscript.getter(uint64_t a1, unsigned int a2)
{
  if (a1 < 0 || a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance UInt32.Words(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x30, 0xBD57uLL);
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = UInt32.Words.subscript.read(v4, *a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance UInt8.Words;
}

void (*UInt32.Words.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2 < 0 || a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

Swift::tuple_high_UInt32_low_UInt32 __swiftcall UInt32.multipliedFullWidth(by:)(Swift::UInt32 by)
{
  v2 = __ROR8__(v1 * by, 32);
  result.low = v1;
  result.high = v2;
  return result;
}

Swift::tuple_quotient_UInt32_remainder_UInt32 __swiftcall UInt32.dividingFullWidth(_:)(Swift::tuple_quotient_UInt32_remainder_UInt32 result)
{
  if (!v1 || result.quotient >= v1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = (result.remainder | (__PAIR64__(v2, result.quotient) << 32)) / v1;
  result.quotient = v3;
  return result;
}

BOOL protocol witness for FixedWidthInteger.addingReportingOverflow(_:) in conformance UInt32(_DWORD *a1, _DWORD *a2)
{
  v3 = __CFADD__(*v2, *a2);
  *a1 = *v2 + *a2;
  return v3;
}

BOOL protocol witness for FixedWidthInteger.subtractingReportingOverflow(_:) in conformance UInt32(_DWORD *a1, _DWORD *a2)
{
  v3 = *v2 < *a2;
  *a1 = *v2 - *a2;
  return v3;
}

BOOL protocol witness for FixedWidthInteger.multipliedReportingOverflow(by:) in conformance UInt32(_DWORD *a1, unsigned int *a2)
{
  v3 = *v2 * *a2;
  *a1 = v3;
  return (v3 & 0xFFFFFFFF00000000) != 0;
}

BOOL protocol witness for FixedWidthInteger.dividedReportingOverflow(by:) in conformance UInt32(_DWORD *a1, unsigned int *a2)
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

BOOL protocol witness for FixedWidthInteger.remainderReportingOverflow(dividingBy:) in conformance UInt32(_DWORD *a1, unsigned int *a2)
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

_DWORD *protocol witness for FixedWidthInteger.multipliedFullWidth(by:) in conformance UInt32(_DWORD *result, _DWORD *a2, unsigned int *a3)
{
  v4 = *v3 * *a3;
  *result = HIDWORD(v4);
  *a2 = v4;
  return result;
}

Swift::UInt32 protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance UInt32(Swift::UInt32 *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  result = UInt32.dividingFullWidth(_:)(__PAIR64__(*a4, *a3)).quotient;
  *a1 = result;
  *a2 = v7;
  return result;
}

int *protocol witness for _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:) in conformance UInt32@<X0>(int *result@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = 0;
  if (a2 >> 9 <= 0x10 && (a2 & 1) == 0)
  {
    v3 = *result;
  }

  *a3 = v3;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance UInt32@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X8>)
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
  if (v22(a2, a3) < 32)
  {
    goto LABEL_12;
  }

  v39 = -1;
  v23 = v18(a2, a3);
  v24 = v21;
  v25 = v22(a2, a3);
  if ((v23 & 1) == 0)
  {
    if (v25 <= 32)
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

  if (v25 > 32)
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

_DWORD *protocol witness for static BinaryInteger./ infix(_:_:) in conformance UInt32@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X1>, int *a3@<X8>)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result / *a2;
  return result;
}

_DWORD *protocol witness for static BinaryInteger./= infix(_:_:) in conformance UInt32(_DWORD *result, _DWORD *a2)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result /= *a2;
  return result;
}

_DWORD *protocol witness for static BinaryInteger.% infix(_:_:) in conformance UInt32@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X1>, int *a3@<X8>)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result % *a2;
  return result;
}

_DWORD *protocol witness for static BinaryInteger.%= infix(_:_:) in conformance UInt32(_DWORD *result, _DWORD *a2)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result %= *a2;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance UInt32@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, unsigned int *a5@<X8>)
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
      v115 = -32;
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
    if (result < -32)
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
    if (result < -32)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v115 = -32;
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

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 32)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v50 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v115 = 32;
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
  if (v22(a3, a4) > 64 || v22(a3, a4) == 64 && (v114(a3, a4) & 1) == 0)
  {
    v95 = v114(a3, a4);
    v96 = v22(a3, a4);
    if (v95)
    {
      if (v96 > 64)
      {
        goto LABEL_37;
      }
    }

    else if (v96 >= 64)
    {
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

      goto LABEL_44;
    }

    (*(a4 + 120))(a3, a4);
  }

LABEL_44:
  v105 = (*(a4 + 120))(a3, a4);
  result = (*(v14 + 8))(v18, a3);
  if ((v105 & 0x8000000000000000) != 0)
  {
    if (v105 > 0xFFFFFFFFFFFFFFE0)
    {
      v78 = v111 << -v105;
      goto LABEL_47;
    }
  }

  else if (v105 < 0x20)
  {
    v78 = v111 >> v105;
    goto LABEL_47;
  }

LABEL_25:
  v78 = 0;
LABEL_47:
  *a5 = v78;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance UInt32(unsigned int *a1, uint64_t a2, Class *a3, uint64_t a4)
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
      v113 = -32;
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
    if (result < -32)
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
    if (result < -32)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v113 = -32;
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

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 32)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v48 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v113 = 32;
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
    if (v103 >= 0xFFFFFFFFFFFFFFE1)
    {
      v76 = v104 << -v103;
      goto LABEL_47;
    }
  }

  else if (v103 < 0x20)
  {
    v76 = v104 >> v103;
    goto LABEL_47;
  }

LABEL_25:
  v76 = 0;
LABEL_47:
  *a1 = v76;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance UInt32@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, unsigned int *a5@<X8>)
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
      v115 = -32;
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
    if (result < -32)
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
    if (result < -32)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v115 = -32;
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

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 32)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v50 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v115 = 32;
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
  if (v22(a3, a4) > 64 || v22(a3, a4) == 64 && (v114(a3, a4) & 1) == 0)
  {
    v95 = v114(a3, a4);
    v96 = v22(a3, a4);
    if (v95)
    {
      if (v96 > 64)
      {
        goto LABEL_37;
      }
    }

    else if (v96 >= 64)
    {
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

      goto LABEL_44;
    }

    (*(a4 + 120))(a3, a4);
  }

LABEL_44:
  v105 = (*(a4 + 120))(a3, a4);
  result = (*(v14 + 8))(v18, a3);
  if ((v105 & 0x8000000000000000) != 0)
  {
    if (v105 > 0xFFFFFFFFFFFFFFE0)
    {
      v78 = v111 >> -v105;
      goto LABEL_47;
    }
  }

  else if (v105 <= 0x1F)
  {
    v78 = v111 << v105;
    goto LABEL_47;
  }

LABEL_25:
  v78 = 0;
LABEL_47:
  *a5 = v78;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance UInt32(unsigned int *a1, uint64_t a2, Class *a3, uint64_t a4)
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
      v113 = -32;
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
    if (result < -32)
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
    if (result < -32)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v113 = -32;
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

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 32)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v48 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v113 = 32;
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
    if (v103 > 0xFFFFFFFFFFFFFFE0)
    {
      v76 = v104 >> -v103;
      goto LABEL_47;
    }
  }

  else if (v103 < 0x20)
  {
    v76 = v104 << v103;
    goto LABEL_47;
  }

LABEL_25:
  v76 = 0;
LABEL_47:
  *a1 = v76;
  return result;
}

unsigned int *protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance UInt32(unsigned int *result, unsigned int *a2, unsigned int *a3)
{
  v4 = *a3;
  if (!*a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *v3;
  *a2 = *v3 % v4;
  *result = v5 / v4;
  return result;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance UInt32(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
    v34 = 0;
    LOBYTE(v33) = 1;
    goto LABEL_43;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v37[0] = a1;
      v37[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v20 = specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v37, v5, 10);
      v38 = BYTE4(v20) & 1;
      LODWORD(v16) = v20;
LABEL_39:
      LOBYTE(v33) = v38;
      a2;
      goto LABEL_40;
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
      v35 = _StringObject.sharedUTF8.getter(a1, a2);
      v6 = v36;
      v8 = v35;
      if (v6 > 0)
      {
LABEL_9:
        v9 = *v8;
        if (v9 == 43)
        {
          v21 = specialized Collection.subscript.getter(1, v8, v6);
          v25 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v21, v22, v23, v24);
          if (v26)
          {
            LODWORD(v16) = 0;
            if (v25)
            {
              do
              {
                v27 = *v25 - 48;
                if (v27 >= 0xA)
                {
                  goto LABEL_38;
                }

                v28 = 10 * v16;
                LODWORD(v16) = v28 + v27;
                v29 = __CFADD__(v28, v27);
                if ((v28 & 0xFFFFFFFF00000000) != 0 || v29)
                {
                  goto LABEL_38;
                }

                ++v25;
              }

              while (--v26);
            }

LABEL_37:
            v38 = 0;
            goto LABEL_39;
          }
        }

        else
        {
          if (v9 != 45)
          {
            LODWORD(v16) = 0;
            while (1)
            {
              v30 = *v8 - 48;
              if (v30 >= 0xA)
              {
                goto LABEL_38;
              }

              v31 = 10 * v16;
              LODWORD(v16) = v31 + v30;
              v32 = __CFADD__(v31, v30);
              if ((v31 & 0xFFFFFFFF00000000) != 0 || v32)
              {
                goto LABEL_38;
              }

              ++v8;
              if (!--v6)
              {
                goto LABEL_37;
              }
            }
          }

          v10 = specialized Collection.subscript.getter(1, v8, v6);
          v14 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v11, v12, v13);
          if (v15)
          {
            LODWORD(v16) = 0;
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
                LODWORD(v16) = v18 - v17;
                v19 = v18 < v17;
                if ((v18 & 0xFFFFFFFF00000000) != 0 || v19)
                {
                  break;
                }

                ++v14;
                if (!--v15)
                {
                  goto LABEL_37;
                }
              }

LABEL_38:
              LODWORD(v16) = 0;
              v38 = 1;
              goto LABEL_39;
            }

            goto LABEL_37;
          }
        }

        LODWORD(v16) = 0;
        v38 = 1;
        goto LABEL_39;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
  a2;
  v33 = HIDWORD(v16) & 1;
LABEL_40:
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = v16;
  }

LABEL_43:
  *a3 = v34;
  *(a3 + 4) = v33 & 1;
}

uint64_t protocol witness for Numeric.init<A>(exactly:) in conformance UInt32@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v35 = a4;
  v37 = a5;
  v38 = *(a2 - 1);
  v39 = a1;
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v10, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v35 - v14;
  v36 = *(a3 + 64);
  if ((v36(a2, a3) & 1) == 0 || (v16 = swift_getAssociatedConformanceWitness(v10, a2, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral), (*(v16 + 8))(&qword_18071E0A8, 256, v12, v16), (*(v10 + 24))(v15, a2, v10), v17 = (*(*(*(a3 + 32) + 8) + 16))(v39, v8, a2), v18 = *(v38 + 8), v18(v8, a2), (v17 & 1) == 0))
  {
    v19 = *(a3 + 128);
    if (v19(a2, a3) < 32)
    {
      goto LABEL_12;
    }

    v40 = -1;
    v20 = v36(a2, a3);
    v21 = v39;
    v22 = v19(a2, a3);
    if (v20)
    {
      if (v22 <= 32)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, a2, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v12, AssociatedConformanceWitness);
        (*(v10 + 24))(v15, a2, v10);
        v26 = (*(*(*(a3 + 32) + 8) + 40))(v21, v8, a2);
        (*(v38 + 8))(v8, a2);
        if ((v26 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if (v22 < 33)
    {
LABEL_11:
      (*(a3 + 120))(a2, a3);
      goto LABEL_12;
    }

    v27 = *(a3 + 96);
    v28 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v22, v23, v24);
    v27(&v40, v35, v28, a2, a3);
    v29 = (*(*(*(a3 + 32) + 8) + 16))(v8, v21, a2);
    v18 = *(v38 + 8);
    v18(v8, a2);
    if ((v29 & 1) == 0)
    {
LABEL_12:
      v33 = v39;
      v31 = (*(a3 + 120))(a2, a3);
      result = (*(v38 + 8))(v33, a2);
      v32 = 0;
      goto LABEL_13;
    }
  }

  result = (v18)(v39, a2);
  v31 = 0;
  v32 = 1;
LABEL_13:
  v34 = v37;
  *v37 = v31;
  *(v34 + 4) = v32;
  return result;
}

unsigned int *protocol witness for static Numeric.* infix(_:_:) in conformance UInt32@<X0>(unsigned int *result@<X0>, unsigned int *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *result * *a2;
  if ((v3 & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

unint64_t static UInt32.* infix(_:_:)(unsigned int a1, unsigned int a2)
{
  result = a1 * a2;
  if ((result & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
  }

  return result;
}

_DWORD *protocol witness for static Numeric.*= infix(_:_:) in conformance UInt32(_DWORD *result, unsigned int *a2)
{
  v2 = *result * *a2;
  if ((v2 & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

_DWORD *protocol witness for Strideable.distance(to:) in conformance UInt32@<X0>(_DWORD *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*result - *v2);
  if (*result < *v2)
  {
    v3 = -(*v2 - *result);
  }

  *a2 = v3;
  return result;
}

unint64_t *protocol witness for Strideable.advanced(by:) in conformance UInt32@<X0>(unint64_t *result@<X0>, unsigned int *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if ((*result & 0x8000000000000000) == 0)
  {
    if (HIDWORD(v3))
    {
      goto LABEL_10;
    }

    v5 = __CFADD__(v4, v3);
    v4 += v3;
    if (!v5)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v6 = -v3;
  if (HIDWORD(v6))
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = v4 >= v6;
  v4 -= v6;
  if (!v5)
  {
    __break(1u);
    return result;
  }

LABEL_9:
  *a2 = v4;
  return result;
}

_DWORD *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance UInt32@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X8>)
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

_DWORD *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance UInt32(_DWORD *result, _DWORD *a2)
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

_DWORD *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance UInt32@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X8>)
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

_DWORD *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance UInt32(_DWORD *result, _DWORD *a2)
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

uint64_t UInt32._toCustomAnyHashable()@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys6UInt32VGMd, _ss22_IntegerAnyHashableBoxVys6UInt32VGMR);
  *(a2 + 24) = result;
  *(a2 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UInt32@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys6UInt32VGMd, _ss22_IntegerAnyHashableBoxVys6UInt32VGMR);
  *(a1 + 24) = result;
  *(a1 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v3;
  return result;
}

uint64_t Int32.init(_:)(__n128 a1)
{
  if ((a1.n128_u16[0] & 0x7FFFu) >= 0x7C00)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a1.n128_u16;
}

unint64_t Int32.init(exactly:)(__n128 a1)
{
  v2 = truncl(*a1.n128_u16) != *a1.n128_u16 || (a1.n128_u16[0] & 0x7FFFu) > 0x7BFF;
  v3 = *a1.n128_u16;
  if (v2)
  {
    v3 = 0;
  }

  return v3 | (v2 << 32);
}

Swift::Int32 __swiftcall Int32.init(_:)(Swift::Float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000 || a1 <= -2147500000.0 || a1 >= 2147500000.0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::Int32_optional __swiftcall Int32.init(exactly:)(Swift::Float exactly)
{
  v1 = exactly <= -2147500000.0;
  if (exactly >= 2147500000.0)
  {
    v1 = 1;
  }

  if (truncf(exactly) != exactly)
  {
    v1 = 1;
  }

  v2 = exactly;
  if (v1)
  {
    v2 = 0;
  }

  return (v2 | (v1 << 32));
}

Swift::Int32 __swiftcall Int32.init(_:)(Swift::Double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || a1 <= -2147483650.0 || a1 >= 2147483650.0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::Int32_optional __swiftcall Int32.init(exactly:)(Swift::Double exactly)
{
  v1 = exactly <= -2147483650.0;
  if (exactly >= 2147483650.0)
  {
    v1 = 1;
  }

  if (trunc(exactly) != exactly)
  {
    v1 = 1;
  }

  v2 = exactly;
  if (v1)
  {
    v2 = 0;
  }

  return (v2 | (v1 << 32));
}

_DWORD *static Int32.-= infix(_:_:)(_DWORD *result, int a2)
{
  if (__OFSUB__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result -= a2;
  }

  return result;
}

int *static Int32.*= infix(_:_:)(int *result, int a2)
{
  v2 = *result * a2;
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

int *static Int32./= infix(_:_:)(int *result, int a2)
{
  if (!a2 || (v2 = *result, a2 == -1) && v2 == 0x80000000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v2 / a2;
  return result;
}

Swift::tuple_partialValue_Int32_overflow_Bool __swiftcall Int32.addingReportingOverflow(_:)(Swift::Int32 a1)
{
  v2 = v1 + a1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_Int32_overflow_Bool __swiftcall Int32.subtractingReportingOverflow(_:)(Swift::Int32 a1)
{
  v2 = v1 - a1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_Int32_overflow_Bool __swiftcall Int32.multipliedReportingOverflow(by:)(Swift::Int32 by)
{
  v2 = v1 * by;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_Int32_overflow_Bool __swiftcall Int32.dividedReportingOverflow(by:)(Swift::Int32 by)
{
  if (by)
  {
    if (by == -1 && v1 == 0x80000000)
    {
      v1 = 0x80000000;
    }

    else
    {
      v1 /= by;
    }
  }

  v2 = v1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_Int32_overflow_Bool __swiftcall Int32.remainderReportingOverflow(dividingBy:)(Swift::Int32 dividingBy)
{
  if (dividingBy)
  {
    if (dividingBy == -1 && v1 == 0x80000000)
    {
      v1 = 0;
    }

    else
    {
      v1 %= dividingBy;
    }
  }

  v2 = v1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

int *static Int32.%= infix(_:_:)(int *result, int a2)
{
  if (!a2 || (v2 = *result, a2 == -1) && v2 == 0x80000000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v2 % a2;
  return result;
}

uint64_t Int32.nonzeroBitCount.getter(__int32 a1, int8x8_t a2)
{
  a2.i32[0] = a1;
  v2 = vcnt_s8(a2);
  v2.i16[0] = vaddlv_u8(v2);
  return v2.u32[0];
}

Swift::Int __swiftcall Int32.Words.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall Int32.Words.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t Int32.Words.subscript.getter(uint64_t a1, int a2)
{
  if (a1 < 0 || a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Int32.Words(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x30, 0xEE43uLL);
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = Int32.Words.subscript.read(v4, *a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance UInt8.Words;
}

void (*Int32.Words.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2 < 0 || a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

void *protocol witness for Collection.subscript.getter in conformance UInt32.Words@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if ((*result & 0x8000000000000000) != 0 || (v3 = result[1], v3 >= 2))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *v2;
  *a2 = *result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t Int32.magnitude.getter(uint64_t result)
{
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return -result;
  }
}

Swift::tuple_high_Int32_low_UInt32 __swiftcall Int32.multipliedFullWidth(by:)(Swift::Int32 by)
{
  v2 = __ROR8__(v1 * by, 32);
  result.low = v1;
  result.high = v2;
  return result;
}

Swift::tuple_quotient_Int32_remainder_Int32 __swiftcall Int32.dividingFullWidth(_:)(Swift::tuple_quotient_Int32_remainder_Int32 result)
{
  if (!v1 || v1 == -1 && (result.remainder | (__PAIR64__(v2, result.quotient) << 32)) == 0x8000000000000000 || (v3 = (result.remainder | (__PAIR64__(v2, result.quotient) << 32)) / v1, v3 != v3))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result.quotient = v3;
  return result;
}

BOOL protocol witness for FixedWidthInteger.addingReportingOverflow(_:) in conformance Int32(_DWORD *a1, _DWORD *a2)
{
  v3 = __OFADD__(*v2, *a2);
  *a1 = *v2 + *a2;
  return v3;
}

BOOL protocol witness for FixedWidthInteger.subtractingReportingOverflow(_:) in conformance Int32(_DWORD *a1, _DWORD *a2)
{
  v3 = __OFSUB__(*v2, *a2);
  *a1 = *v2 - *a2;
  return v3;
}

BOOL protocol witness for FixedWidthInteger.multipliedReportingOverflow(by:) in conformance Int32(_DWORD *a1, int *a2)
{
  v3 = *v2 * *a2;
  *a1 = v3;
  return v3 != v3;
}

uint64_t protocol witness for FixedWidthInteger.dividedReportingOverflow(by:) in conformance Int32(signed int *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (*a2)
  {
    if (v3 == -1 && v4 == 0x80000000)
    {
      v6 = 1;
      v4 = 0x80000000;
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

uint64_t protocol witness for FixedWidthInteger.remainderReportingOverflow(dividingBy:) in conformance Int32(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (!*a2)
  {
    goto LABEL_9;
  }

  if (v3 == -1 && v4 == 0x80000000)
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

_DWORD *protocol witness for FixedWidthInteger.multipliedFullWidth(by:) in conformance Int32(_DWORD *result, _DWORD *a2, int *a3)
{
  v4 = *v3 * *a3;
  *result = HIDWORD(v4);
  *a2 = v4;
  return result;
}

Swift::Int32 protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance Int32(Swift::Int32 *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  result = Int32.dividingFullWidth(_:)(__PAIR64__(*a4, *a3)).quotient;
  *a1 = result;
  *a2 = v7;
  return result;
}

uint64_t _ss6UInt32Vs17FixedWidthIntegerssACP15nonzeroBitCountSivgTW_0()
{
  v1 = vcnt_s8(*v0);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

_DWORD *protocol witness for _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:) in conformance Int32@<X0>(_DWORD *result@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if (a2 >> 8 <= 0x20)
  {
    *a3 = *result;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance UInt32@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, Class *a4@<X3>, uint64_t (*a5)(void)@<X5>, _DWORD *a6@<X8>)
{
  v12 = a5();
  static FixedWidthInteger._convert<A>(from:)(&v41, a1, a4, a2, v12, a3);
  if ((v41 & 0x100000000) != 0)
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

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance Int32@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X8>)
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
  if ((v18 & 1) != 0 && v19(a2, a3) >= 33)
  {
    v38 = v9;
    v45 = 0x80000000;
    v20 = v44;
    if (v44(a2, a3))
    {
      if (v19(a2, a3) < 32)
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
        if (v22 >= 32)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v22 <= 32)
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
  if (v29 > 32 || v19(a2, a3) == 32 && (v30(a2, a3) & 1) == 0)
  {
    v46 = 0x7FFFFFFF;
    v32 = v30(a2, a3);
    v33 = v19(a2, a3);
    if (v32)
    {
      if (v33 > 32)
      {
        goto LABEL_17;
      }
    }

    else if (v33 > 31)
    {
LABEL_17:
      v34 = v41;
      (*(a3 + 96))(&v46, v39, v40, a2, a3);
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

uint64_t protocol witness for BinaryInteger.init<A>(truncatingIfNeeded:) in conformance UInt32@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v7 = (*(a3 + 120))(a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  return result;
}

_DWORD *protocol witness for static BinaryInteger./ infix(_:_:) in conformance Int32@<X0>(_DWORD *result@<X0>, int *a2@<X1>, int *a3@<X8>)
{
  v3 = *a2;
  if (!*a2 || (*result == 0x80000000 ? (v4 = v3 == -1) : (v4 = 0), v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result / v3;
  return result;
}

uint64_t static Int32./ infix(_:_:)(int a1, int a2)
{
  if (!a2 || a1 == 0x80000000 && a2 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (a1 / a2);
}

int *protocol witness for static BinaryInteger./= infix(_:_:) in conformance Int32(int *result, int *a2)
{
  v2 = *a2;
  if (!*a2 || ((v3 = *result, v2 == -1) ? (v4 = v3 == 0x80000000) : (v4 = 0), v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v3 / v2;
  return result;
}

_DWORD *protocol witness for static BinaryInteger.% infix(_:_:) in conformance Int32@<X0>(_DWORD *result@<X0>, int *a2@<X1>, int *a3@<X8>)
{
  v3 = *a2;
  if (!*a2 || (*result == 0x80000000 ? (v4 = v3 == -1) : (v4 = 0), v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result % v3;
  return result;
}

uint64_t static Int32.% infix(_:_:)(int a1, int a2)
{
  if (!a2 || a1 == 0x80000000 && a2 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (a1 % a2);
}

int *protocol witness for static BinaryInteger.%= infix(_:_:) in conformance Int32(int *result, int *a2)
{
  v2 = *a2;
  if (!*a2 || ((v3 = *result, v2 == -1) ? (v4 = v3 == 0x80000000) : (v4 = 0), v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v3 % v2;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance Int32@<X0>(int *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int *a5@<X8>)
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
        if (result < -32)
        {
          goto LABEL_26;
        }

        goto LABEL_11;
      }

      v107 = -32;
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
    if (result >= -32)
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

  v107 = -32;
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
    if (result > 32)
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
  v107 = 32;
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
    if (v97 > 0xFFFFFFFFFFFFFFE0)
    {
      v58 = v20 << -v97;
      goto LABEL_48;
    }

    goto LABEL_26;
  }

  if (v97 < 0x20)
  {
    v58 = v20 >> v97;
    goto LABEL_48;
  }

LABEL_17:
  v58 = v20 >> 31;
LABEL_48:
  *v106 = v58;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance Int32(int *a1, uint64_t a2, Class *a3, uint64_t a4)
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
        if (result < -32)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      }

      v113 = -32;
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
    if (result >= -32)
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

  v113 = -32;
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
    if (result <= 32)
    {
      goto LABEL_14;
    }

LABEL_22:
    v71 = *a1 >> 31;
    goto LABEL_47;
  }

  if (v48 < 64)
  {
    goto LABEL_21;
  }

LABEL_13:
  v113 = 32;
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
    if (v103 > 0xFFFFFFFFFFFFFFE0)
    {
      v71 = v104 << -v103;
      goto LABEL_47;
    }

    goto LABEL_25;
  }

  if (v103 >= 0x20)
  {
    v71 = v104 >> 31;
  }

  else
  {
    v71 = v104 >> v103;
  }

LABEL_47:
  *a1 = v71;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance Int32@<X0>(int *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int *a5@<X8>)
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
    if (v23 >= 64)
    {
      v107 = -32;
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
      result = (*(a4 + 120))(a3, a4);
      if (result <= -33)
      {
        goto LABEL_16;
      }
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
        if (result < -32)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v107 = -32;
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
      if (result < -32)
      {
        goto LABEL_16;
      }
    }
  }

  v51 = v21(a3, a4);
  v98 = a4 + 128;
  v52 = v105(a3, a4);
  if (v51)
  {
    if (v52 > 64)
    {
      goto LABEL_19;
    }
  }

  else if (v52 >= 64)
  {
LABEL_19:
    v107 = 32;
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
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 32)
  {
LABEL_23:
    v50 = 0;
    goto LABEL_51;
  }

LABEL_24:
  (*(v13 + 16))(v17, a2, a3);
  if ((v21(a3, a4) & 1) == 0 || v105(a3, a4) < 65)
  {
    goto LABEL_38;
  }

  if ((v21(a3, a4) & 1) == 0)
  {
    v71 = v21(a3, a4);
    v72 = v105(a3, a4);
    if ((v71 & 1) == 0)
    {
      if (v72 >= 64)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
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
        goto LABEL_37;
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
        goto LABEL_38;
      }
    }

LABEL_42:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v64 = v105(a3, a4);
  if (v64 < 64)
  {
LABEL_37:
    (*(a4 + 120))(a3, a4);
    goto LABEL_38;
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
    goto LABEL_42;
  }

LABEL_38:
  v86 = v105;
  if (v105(a3, a4) <= 64 && (v86(a3, a4) != 64 || (v21(a3, a4) & 1) != 0))
  {
    goto LABEL_48;
  }

  v87 = v21(a3, a4);
  v88 = v86;
  v89 = v87;
  v90 = v88(a3, a4);
  if (v89)
  {
    if (v90 > 64)
    {
      goto LABEL_41;
    }
  }

  else if (v90 >= 64)
  {
LABEL_41:
    v107 = 0x7FFFFFFFFFFFFFFFLL;
    v93 = *(a4 + 96);
    v94 = lazy protocol witness table accessor for type Int and conformance Int(v90, v91, v92);
    v95 = v104;
    v93(&v107, &type metadata for Int, v94, a3, a4);
    v96 = (*(*(*(a4 + 32) + 8) + 16))(v95, v17, a3);
    (*(v13 + 8))(v95, a3);
    if (v96)
    {
      goto LABEL_42;
    }

    goto LABEL_48;
  }

  (*(a4 + 120))(a3, a4);
LABEL_48:
  v97 = (*(a4 + 120))(a3, a4);
  result = (*(v13 + 8))(v17, a3);
  if ((v97 & 0x8000000000000000) == 0)
  {
    if (v97 < 0x20)
    {
      v50 = v20 << v97;
      goto LABEL_51;
    }

    goto LABEL_23;
  }

  if (v97 > 0xFFFFFFFFFFFFFFE0)
  {
    v50 = v20 >> -v97;
    goto LABEL_51;
  }

LABEL_16:
  v50 = v20 >> 31;
LABEL_51:
  *v106 = v50;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance Int32(int *a1, uint64_t a2, Class *a3, uint64_t a4)
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
      v113 = -32;
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
      v52 = *a1 >> 31;
      goto LABEL_48;
    }

LABEL_12:
    result = (*(a4 + 120))(a3, a4);
    if (result >= -32)
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

    v113 = -32;
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
  }

  else if (v54 >= 64)
  {
LABEL_16:
    v113 = 32;
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
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 32)
  {
LABEL_20:
    v52 = 0;
    goto LABEL_48;
  }

LABEL_21:
  (*(v12 + 16))(v16, a2, a3);
  if ((v112(a3, a4) & 1) == 0 || v20(a3, a4) < 65)
  {
    goto LABEL_35;
  }

  if ((v112(a3, a4) & 1) == 0)
  {
    v77 = v112(a3, a4);
    v78 = v20(a3, a4);
    if ((v77 & 1) == 0)
    {
      if (v78 >= 64)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
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
        goto LABEL_34;
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
        goto LABEL_35;
      }
    }

LABEL_39:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v66 = v20(a3, a4);
  if (v66 < 64)
  {
LABEL_34:
    (*(a4 + 120))(a3, a4);
    goto LABEL_35;
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
    goto LABEL_39;
  }

LABEL_35:
  if (v20(a3, a4) <= 64 && (v20(a3, a4) != 64 || (v112(a3, a4) & 1) != 0))
  {
    goto LABEL_45;
  }

  v93 = v112(a3, a4);
  v94 = v20(a3, a4);
  if (v93)
  {
    if (v94 > 64)
    {
      goto LABEL_38;
    }
  }

  else if (v94 >= 64)
  {
LABEL_38:
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
      goto LABEL_39;
    }

    goto LABEL_45;
  }

  (*(a4 + 120))(a3, a4);
LABEL_45:
  v103 = (*(a4 + 120))(a3, a4);
  result = (*(v12 + 8))(v16, a3);
  v104 = *a1;
  if ((v103 & 0x8000000000000000) == 0)
  {
    if (v103 < 0x20)
    {
      v52 = v104 << v103;
      goto LABEL_48;
    }

    goto LABEL_20;
  }

  if (v103 <= 0xFFFFFFFFFFFFFFE0)
  {
    v52 = v104 >> 31;
  }

  else
  {
    v52 = v104 >> -v103;
  }

LABEL_48:
  *a1 = v52;
  return result;
}

uint64_t protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance Int32(_DWORD *a1, int *a2, int *a3)
{
  result = specialized BinaryInteger.quotientAndRemainder(dividingBy:)(a2, *a3, *v3);
  *a1 = result;
  return result;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance Int32(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
    v34 = 0;
    LOBYTE(v33) = 1;
    goto LABEL_46;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v37[0] = a1;
      v37[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v20 = specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v37, v5, 10);
      v38 = BYTE4(v20) & 1;
      LODWORD(v16) = v20;
LABEL_42:
      LOBYTE(v33) = v38;
      a2;
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
      v35 = _StringObject.sharedUTF8.getter(a1, a2);
      v6 = v36;
      v8 = v35;
      if (v6 > 0)
      {
LABEL_9:
        v9 = *v8;
        if (v9 == 43)
        {
          v21 = specialized Collection.subscript.getter(1, v8, v6);
          v25 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v21, v22, v23, v24);
          if (v26)
          {
            LODWORD(v16) = 0;
            if (v25)
            {
              do
              {
                v27 = *v25 - 48;
                if (v27 >= 0xA)
                {
                  goto LABEL_41;
                }

                v28 = 10 * v16;
                LODWORD(v16) = v28 + v27;
                v29 = __OFADD__(v28, v27);
                if (v28 != v28 || v29)
                {
                  goto LABEL_41;
                }

                ++v25;
              }

              while (--v26);
            }

LABEL_40:
            v38 = 0;
            goto LABEL_42;
          }
        }

        else
        {
          if (v9 != 45)
          {
            LODWORD(v16) = 0;
            while (1)
            {
              v30 = *v8 - 48;
              if (v30 >= 0xA)
              {
                goto LABEL_41;
              }

              v31 = 10 * v16;
              LODWORD(v16) = v31 + v30;
              v32 = __OFADD__(v31, v30);
              if (v31 != v31 || v32)
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
            LODWORD(v16) = 0;
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
                LODWORD(v16) = v18 - v17;
                v19 = __OFSUB__(v18, v17);
                if (v18 != v18 || v19)
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
              LODWORD(v16) = 0;
              v38 = 1;
              goto LABEL_42;
            }

            goto LABEL_40;
          }
        }

        LODWORD(v16) = 0;
        v38 = 1;
        goto LABEL_42;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
  a2;
  v33 = HIDWORD(v16) & 1;
LABEL_43:
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = v16;
  }

LABEL_46:
  *a3 = v34;
  *(a3 + 4) = v33 & 1;
}