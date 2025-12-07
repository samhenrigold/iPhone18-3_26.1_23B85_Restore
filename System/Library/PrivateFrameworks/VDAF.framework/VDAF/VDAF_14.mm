unint64_t *protocol witness for static FiniteFieldProtocol.intToInternalValue(_:) in conformance MontgomeryFiniteField128@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *result;
  v3 = result[1];
  if (one-time initialization token for p != -1)
  {
    result = swift_once();
  }

  v5 = static MontgomeryFiniteField128.p < v4;
  if (*(&static MontgomeryFiniteField128.p + 1) != v3)
  {
    v5 = *(&static MontgomeryFiniteField128.p + 1) < v3;
  }

  if (v5)
  {
    _StringGuts.grow(_:)(40);

    lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v33);

    MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v34);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (*(&static MontgomeryFiniteField128.p + 1) == v3)
  {
    v6 = v4 < static MontgomeryFiniteField128.p;
  }

  else
  {
    v6 = v3 < *(&static MontgomeryFiniteField128.p + 1);
  }

  if (!v6)
  {
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  if (one-time initialization token for r2 != -1)
  {
    swift_once();
  }

  v40 = v4;
  v41 = v3;
  v39 = static MontgomeryFiniteField128.r2;
  _UInt128.multipliedFullWidth(by:)(&v36, &v42, &v39);
  v7 = v36;
  v8 = v42;
  v42 = static MontgomeryFiniteField128.p;
  v40 = -v8;
  v41 = 0;
  _UInt128.multipliedFullWidth(by:)(&v36, &v37, &v40);
  v9 = __CFADD__(v37, v8);
  v10 = v38 + *(&v8 + 1);
  if (__CFADD__(v38, *(&v8 + 1)))
  {
    v11 = 1;
LABEL_21:
    v10 += v9 & 1;
    goto LABEL_23;
  }

  if ((v10 == -1) | v9 & 1)
  {
    v11 = (v10 == -1) & v9;
    v9 |= v10 != -1;
    goto LABEL_21;
  }

  v11 = 0;
LABEL_23:
  v12 = v7 + v36;
  v13 = __CFADD__(v7, v36);
  v14 = *(&v7 + 1) + *(&v36 + 1);
  if (__CFADD__(*(&v7 + 1), *(&v36 + 1)))
  {
    if (v13)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (v14 == -1)
    {
      v14 = v13 - 1;
      if ((v11 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    if (v13)
    {
LABEL_33:
      ++v14;
      if ((v11 & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_30:
      v15 = 1;
      goto LABEL_35;
    }
  }

  if (v11)
  {
    goto LABEL_30;
  }

LABEL_34:
  v15 = 0;
LABEL_35:
  v16 = v12 + v15;
  if (__CFADD__(v12, v15))
  {
    v17 = v14 + 1;
  }

  else
  {
    v17 = v14;
  }

  v18 = static MontgomeryFiniteField128.p;
  v39 = static MontgomeryFiniteField128.p;
  v35[0] = -v10;
  v35[1] = 0;
  result = _UInt128.multipliedFullWidth(by:)(&v42, &v40, v35);
  v19 = *(&v42 + 1);
  v20 = __CFADD__(v40, v10);
  v21 = v41 + v16;
  if (!__CFADD__(v41, v16))
  {
    if (v21 != -1 && !v20)
    {
      v22 = v17 + v42;
      v27 = __CFADD__(v17, v42);
      if (*(&v42 + 1) == -1)
      {
        v19 = v27 - 1;
      }

      else
      {
        v19 = *(&v42 + 1) + v27;
      }

      goto LABEL_70;
    }

    v25 = v21 == -1 && v20;
    v21 += (v21 != -1) | v20;
    v22 = v17 + v42;
    v26 = __CFADD__(v17, v42);
    if (*(&v42 + 1) == -1)
    {
      v19 = v26 - 1;
      if (v25)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v26)
      {
        v19 = *(&v42 + 1) + 1;
        if (!v25)
        {
          goto LABEL_70;
        }

LABEL_69:
        v24 = 1;
        goto LABEL_71;
      }

      if (v25)
      {
        goto LABEL_69;
      }
    }

LABEL_70:
    v24 = 0;
    goto LABEL_71;
  }

  v21 += v20;
  v22 = v17 + v42;
  v23 = __CFADD__(v17, v42);
  if (*(&v42 + 1) == -1)
  {
    v19 = v23 - 1;
  }

  else
  {
    v19 = *(&v42 + 1) + v23;
  }

  v24 = 1;
LABEL_71:
  v28 = __CFADD__(v22, v24);
  v29 = v22 + v24;
  v30 = v28;
  if (v19 != v30 << 63 >> 63)
  {
    goto LABEL_78;
  }

  v31 = v21 < v18;
  if (v29 != *(&v18 + 1))
  {
    v31 = v29 < *(&v18 + 1);
  }

  if (!v31)
  {
LABEL_78:
    v28 = v21 >= v18;
    v21 -= v18;
    v32 = !v28;
    v29 = v29 - *(&v18 + 1) - v32;
  }

  *a2 = v21;
  a2[1] = v29;
  return result;
}

_OWORD *protocol witness for static FiniteFieldProtocol.internalValueToInt(_:) in conformance MontgomeryFiniteField128@<X0>(__int128 *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v36 = xmmword_270C44F50;
  v37 = v3;
  _UInt128.multipliedFullWidth(by:)(&v33, &v38, &v36);
  v4 = v33;
  v5 = v38;
  v6 = -v38;
  if (one-time initialization token for p != -1)
  {
    swift_once();
  }

  v38 = static MontgomeryFiniteField128.p;
  v37 = v6;
  _UInt128.multipliedFullWidth(by:)(&v33, &v34, &v37);
  v7 = __CFADD__(v34, v5);
  v8 = v35 + *(&v5 + 1);
  if (__CFADD__(v35, *(&v5 + 1)))
  {
    v9 = 1;
LABEL_11:
    v8 += v7 & 1;
    goto LABEL_13;
  }

  if ((v8 == -1) | v7 & 1)
  {
    v9 = (v8 == -1) & v7;
    v7 |= v8 != -1;
    goto LABEL_11;
  }

  v9 = 0;
LABEL_13:
  v10 = v4 + v33;
  v11 = __CFADD__(v4, v33);
  v12 = *(&v4 + 1) + *(&v33 + 1);
  if (__CFADD__(*(&v4 + 1), *(&v33 + 1)))
  {
    if (v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v12 == -1)
    {
      v12 = v11 - 1;
      if ((v9 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    if (v11)
    {
LABEL_23:
      ++v12;
      if ((v9 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_20:
      v13 = 1;
      goto LABEL_25;
    }
  }

  if (v9)
  {
    goto LABEL_20;
  }

LABEL_24:
  v13 = 0;
LABEL_25:
  v14 = v10 + v13;
  if (__CFADD__(v10, v13))
  {
    v15 = v12 + 1;
  }

  else
  {
    v15 = v12;
  }

  v16 = static MontgomeryFiniteField128.p;
  v36 = static MontgomeryFiniteField128.p;
  v32[0] = -v8;
  v32[1] = 0;
  result = _UInt128.multipliedFullWidth(by:)(&v38, &v37, v32);
  v18 = *(&v38 + 1);
  v19 = __CFADD__(v37, v8);
  v20 = *(&v37 + 1) + v14;
  if (__CFADD__(*(&v37 + 1), v14))
  {
    v20 += v19;
    v21 = v15 + v38;
    v22 = __CFADD__(v15, v38);
    if (*(&v38 + 1) == -1)
    {
      v18 = v22 - 1;
    }

    else
    {
      v18 = *(&v38 + 1) + v22;
    }

    v23 = 1;
    goto LABEL_61;
  }

  if (v20 != -1 && !v19)
  {
    v21 = v15 + v38;
    v26 = __CFADD__(v15, v38);
    if (*(&v38 + 1) == -1)
    {
      v18 = v26 - 1;
    }

    else
    {
      v18 = *(&v38 + 1) + v26;
    }

    goto LABEL_60;
  }

  v24 = v20 == -1 && v19;
  v20 += (v20 != -1) | v19;
  v21 = v15 + v38;
  v25 = __CFADD__(v15, v38);
  if (*(&v38 + 1) == -1)
  {
    v18 = v25 - 1;
    if (v24)
    {
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  if (!v25)
  {
    if (v24)
    {
      goto LABEL_59;
    }

LABEL_60:
    v23 = 0;
    goto LABEL_61;
  }

  v18 = *(&v38 + 1) + 1;
  if (!v24)
  {
    goto LABEL_60;
  }

LABEL_59:
  v23 = 1;
LABEL_61:
  v27 = __CFADD__(v21, v23);
  v28 = v21 + v23;
  v29 = v27;
  if (v18 != v29 << 63 >> 63)
  {
    goto LABEL_68;
  }

  v30 = v20 < v16;
  if (v28 != *(&v16 + 1))
  {
    v30 = v28 < *(&v16 + 1);
  }

  if (!v30)
  {
LABEL_68:
    v27 = v20 >= v16;
    v20 -= v16;
    v31 = !v27;
    v28 = v28 - *(&v16 + 1) - v31;
  }

  *a2 = v20;
  a2[1] = v28;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MontgomeryFiniteField32(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MontgomeryFiniteField32 and conformance MontgomeryFiniteField32();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MontgomeryFiniteField40(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MontgomeryFiniteField40 and conformance MontgomeryFiniteField40();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MontgomeryFiniteField64(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MontgomeryFiniteField64 and conformance MontgomeryFiniteField64();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MontgomeryFiniteField128(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MontgomeryFiniteField128 and conformance MontgomeryFiniteField128();
  *(a1 + 8) = result;
  return result;
}

uint64_t *PolynomialEvaluationGadget.init(polynomial:numOfCalls:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  a3[1] = a2;
  a3[2] = v3;
  *a3 = 1;
  return result;
}

uint64_t PolynomialEvaluationGadget.evaluate<A>(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  v18 = a2;
  v19 = a4;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v17 - v11;
  v21 = *(v4 + 16);

  dispatch thunk of Collection.startIndex.getter();
  v13 = dispatch thunk of Collection.subscript.read();
  (*(v6 + 16))(v8);
  v13(v20, 0);
  (*(v10 + 8))(v12, AssociatedTypeWitness);
  v15 = type metadata accessor for Polynomial(0, v5, *(v18 + 24), v14);
  Polynomial.evaluate(at:)(v8, v15, v19);
  (*(v6 + 8))(v8, v5);
}

uint64_t PolynomialEvaluationGadget.evaluate<A>(at:)@<X0>(uint64_t a1@<X1>, void *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v18[-1] - v9;
  v18[4] = *(v4 + 16);

  dispatch thunk of Collection.startIndex.getter();
  v11 = dispatch thunk of Collection.subscript.read();
  v13 = *v12;

  v11(v18, 0);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  v18[0] = v13;
  v15 = type metadata accessor for Polynomial(0, *(a1 + 16), *(a1 + 24), v14);
  Polynomial.evaluate(at:)(v18, v15, a4);
}

uint64_t type metadata instantiation function for PolynomialEvaluationGadget(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

VDAF::SuperBlockSampler __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SuperBlockSampler.init(blockCount:keptBlockCount:)(Swift::Int blockCount, Swift::Int keptBlockCount)
{
  v4 = blockCount;
  if (blockCount < keptBlockCount || keptBlockCount < 1 || blockCount % keptBlockCount)
  {
    lazy protocol witness table accessor for type SuperBlockSamplerError and conformance SuperBlockSamplerError();
    swift_allocError();
    *v5 = v4;
    v5[1] = keptBlockCount;
    blockCount = swift_willThrow();
  }

  else
  {
    *v2 = blockCount;
    v2[1] = keptBlockCount;
  }

  result.keptBlockCount = keptBlockCount;
  result.blockCount = blockCount;
  return result;
}

unint64_t lazy protocol witness table accessor for type SuperBlockSamplerError and conformance SuperBlockSamplerError()
{
  result = lazy protocol witness table cache variable for type SuperBlockSamplerError and conformance SuperBlockSamplerError;
  if (!lazy protocol witness table cache variable for type SuperBlockSamplerError and conformance SuperBlockSamplerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuperBlockSamplerError and conformance SuperBlockSamplerError);
  }

  return result;
}

void SuperBlockSampler.sample()()
{
  v1 = v0[1];
  if (!v1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v2 = *v0;
  if (*v0 == 0x8000000000000000 && v1 == -1)
  {
    goto LABEL_31;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v21 = MEMORY[0x277D84F90];
    v4 = v2 / v1;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v5 = 0;
    v6 = v21;
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v8 = v5 * v4;
      if ((v5 * v4) >> 64 != (v5 * v4) >> 63)
      {
        goto LABEL_25;
      }

      v9 = v7 * v4;
      if ((v7 * v4) >> 64 != (v7 * v4) >> 63)
      {
        goto LABEL_26;
      }

      v10 = __OFSUB__(v9, 1);
      v11 = v9 - 1;
      if (v10)
      {
        goto LABEL_27;
      }

      v12 = v11 - v8;
      if (v11 < v8)
      {
        goto LABEL_28;
      }

      if (v12 == -1)
      {
        v20 = 0;
        MEMORY[0x2743B35C0](&v20, 8);
        v17 = v20;
      }

      else
      {
        v13 = v12 + 1;
        v20 = 0;
        MEMORY[0x2743B35C0](&v20, 8);
        v14 = (v20 * (v12 + 1)) >> 64;
        v15 = v20 * (v12 + 1);
        if (v12 >= v15)
        {
          v16 = ~v12 % v13;
          if (v16 > v15)
          {
            do
            {
              v20 = 0;
              MEMORY[0x2743B35C0](&v20, 8);
            }

            while (v16 > v20 * v13);
            v14 = (v20 * v13) >> 64;
          }
        }

        v17 = v14 + v8;
      }

      v21 = v6;
      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v6 = v21;
      }

      *(v6 + 16) = v19 + 1;
      *(v6 + 8 * v19 + 32) = v17;
      v5 = v7;
      if (v7 == v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x2743B35C0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x2743B35C0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PINEPrepareShare.init(verifierShare:wraparoundJointRandPart:verificationJointRandPart:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t PINEPrepareShare.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t **a9@<X8>, uint64_t a10)
{
  v94 = a5;
  v95 = a8;
  v86 = a9;
  v91 = *(a7 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v16 = type metadata accessor for Optional();
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v78 - v18;
  v20 = *(a6 - 8);
  MEMORY[0x28223BE20](v17);
  v22 = v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v23 = 0;
    v23[1] = 0;
    swift_willThrow();
    return (*(v20 + 8))(a1, a6);
  }

  v87 = a6;
  v88 = v20;
  v25 = a4;
  v85 = *(a7 + 64);
  v26 = v85(a4, a7);
  v27 = a2 * v26;
  if ((a2 * v26) >> 64 != (a2 * v26) >> 63)
  {
    __break(1u);
    goto LABEL_34;
  }

  v28 = *(v95 + 8);
  v25 = v94;
  v83 = v95 + 8;
  v84 = a2;
  v82 = v28;
  v29 = v28();
  if (v29 + 0x4000000000000000 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v93 = a1;
  v30 = v27 + 2 * v29;
  if (__OFADD__(v27, 2 * v29))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v31 = v87;
  if (dispatch thunk of Collection.count.getter() != v30)
  {
    v96 = 0;
    v97 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    v96 = a4;
    v97 = v94;
    v98 = a7;
    v99 = v95;
    type metadata accessor for PINEPrepareShare(0, &v96);
    v50 = _typeName(_:qualified:)();
    v51 = v31;
    v53 = v52;

    v96 = v50;
    v97 = v53;
    MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
    v100 = v30;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v54);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v55 = v93;
    v100 = dispatch thunk of Collection.count.getter();
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v56);

    v57 = v96;
    v58 = v97;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v59 = v57;
    v59[1] = v58;
    swift_willThrow();
    return (*(v88 + 8))(v55, v51);
  }

  (*(v88 + 16))(v22, v93, v31);
  ArraySlice.init<A>(_:)();
  v81 = v32;
  v27 = v85;
  v33 = v85(a4, a7);
  v25 = v33 * v84;
  if ((v33 * v84) >> 64 != (v33 * v84) >> 63)
  {
    goto LABEL_36;
  }

  v80 = a7;
  v34 = specialized Collection.prefix(_:)();
  v79 = v35;
  v37 = v36;
  v39 = v38;
  v81 = specialized Collection.dropFirst(_:)();
  v78[3] = v40;
  v78[2] = v41;
  v78[1] = v42;
  v96 = v34;
  v97 = v79;
  v98 = v37;
  v99 = v39;
  v43 = TupleTypeMetadata3;
  v44 = *(TupleTypeMetadata3 + 48);
  v45 = *(TupleTypeMetadata3 + 64);
  (*(*(AssociatedTypeWitness - 8) + 56))(v19, 1, 1);
  *&v19[v44] = v84;
  swift_unknownObjectRetain();
  *&v19[v45] = v85(a4, v80);
  (*(*(v43 - 8) + 56))(v19, 0, 1, v43);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, "xq");
  v47 = lazy protocol witness table accessor for type ArraySlice<UInt8> and conformance ArraySlice<A>();
  v48 = v92;
  v49 = Array<A>.init<A>(from:parameter:)(&v96, v19, a4, v46, v91, v47);
  if (v48)
  {
    (*(v88 + 8))(v93, v87);
    return swift_unknownObjectRelease();
  }

  v91 = v49;
  v82();
  v25 = specialized Collection.prefix(_:)();
  AssociatedTypeWitness = v60;
  v92 = v61;
  v27 = v62;
  specialized Collection.dropFirst(_:)();
  if (v27)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v65 = swift_dynamicCastClass();
    if (!v65)
    {
      swift_unknownObjectRelease();
      v65 = MEMORY[0x277D84F90];
    }

    v66 = *(v65 + 16);

    if (!__OFSUB__(v27 >> 1, v92))
    {
      if (v66 != (v27 >> 1) - v92)
      {
        goto LABEL_39;
      }

      v64 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      if (v64)
      {
        goto LABEL_21;
      }

      v64 = MEMORY[0x277D84F90];
      goto LABEL_20;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v25, AssociatedTypeWitness, v92, v27);
    v64 = v63;
LABEL_20:
    swift_unknownObjectRelease();
LABEL_21:
    v92 = v64;
    v82();
    v25 = specialized Collection.prefix(_:)();
    v95 = v67;
    v69 = v68;
    v27 = v70;
    specialized Collection.dropFirst(_:)();
    if ((v27 & 1) == 0)
    {
      swift_unknownObjectRetain();
      v71 = v93;
LABEL_23:
      specialized _copyCollectionToContiguousArray<A>(_:)(v25, v95, v69, v27);
      v73 = v72;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      result = (*(v88 + 8))(v71, v87);
      goto LABEL_31;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v74 = swift_dynamicCastClass();
    v71 = v93;
    if (!v74)
    {
      swift_unknownObjectRelease();
      v74 = MEMORY[0x277D84F90];
    }

    v75 = *(v74 + 16);

    if (!__OFSUB__(v27 >> 1, v69))
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    swift_unknownObjectRelease_n();
  }

  if (v75 != (v27 >> 1) - v69)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_23;
  }

  v73 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v73)
  {
    swift_unknownObjectRelease();
    v73 = MEMORY[0x277D84F90];
  }

  (*(v88 + 8))(v71, v87);
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
LABEL_31:
  v76 = v86;
  v77 = v92;
  *v86 = v91;
  v76[1] = v77;
  v76[2] = v73;
  return result;
}

uint64_t static PINEPrepareShare.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a2[1];
  v8 = a2[2];
  if ((static Array<A>.== infix(_:_:)() & 1) == 0 || (specialized static Seed.== infix(_:_:)(v5, v7) & 1) == 0)
  {
    return 0;
  }

  return specialized static Seed.== infix(_:_:)(v6, v8);
}

uint64_t PINEPrepareShare.encodedLength.getter(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  result = Collection<>.encodedLength.getter(v5, WitnessTable, *(*(a1 + 32) + 40));
  v8 = *(v3 + 16);
  v9 = __OFADD__(result, v8);
  v10 = result + v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_5;
  }

  v11 = *(v4 + 16);
  result = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t PINEPrepareShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  v11 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  Collection<>.encode<A>(into:)(a1, v11, a3, WitnessTable, a4, *(*(a2 + 32) + 40));
  Seed.encode<A>(into:)(a1, v9, a3, a4);
  return Seed.encode<A>(into:)(a1, v10, a3, a4);
}

uint64_t type metadata instantiation function for PINEPrepareShare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Preamble.shard<A>(_:nonce:seedBytes:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v92 = a3;
  v94 = a2;
  v88 = a1;
  v105 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for PartialRangeFrom();
  v97 = *(v13 - 8);
  v98 = v13;
  MEMORY[0x28223BE20](v13);
  v96 = v85 - v14;
  v103 = swift_getAssociatedTypeWitness();
  v109 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = v85 - v15;
  v104 = AssociatedConformanceWitness;
  v16 = type metadata accessor for PartialRangeUpTo();
  v100 = *(v16 - 1);
  v101 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v85 - v18;
  v110 = AssociatedTypeWitness;
  v111 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v106 = v85 - v23;
  v24 = v8[1];
  v90 = *v8;
  v89 = v24;
  v25 = dispatch thunk of Collection.count.getter();
  v26 = a5[4];
  v93 = a5;
  v91 = a5[8];
  v27 = *(v91 + 8);
  v28 = *(v27 + 8);
  v107 = v26;
  v108 = v27;
  result = v28();
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v25 != 2 * result)
  {
    v54 = dispatch thunk of Collection.count.getter();
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v55 + 8) = 0;
    *(v55 + 16) = 0;
    *v55 = v54;
    *(v55 + 24) = 1;
    swift_willThrow();
    return a4;
  }

  dispatch thunk of Collection.startIndex.getter();
  v28();
  v30 = v106;
  v95 = a4;
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v31 = v110;
  v32 = v111;
  v33 = *(v111 + 8);
  v87 = v111 + 8;
  v86 = v33;
  v33(v22, v110);
  v34 = *(v104 + 8);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

  v35 = *(v32 + 16);
  v111 = v32 + 16;
  v85[0] = v35;
  v35(v19, v30, v31);
  v85[1] = v34;
  v36 = v101;
  swift_getWitnessTable();
  v37 = v102;
  Collection.subscript.getter();
  (*(v100 + 8))(v19, v36);
  v38 = v103;
  v39 = *(swift_getAssociatedConformanceWitness() + 8);
  v40 = specialized Data.init<A>(_:)(v37, v38, v39);
  v104 = v41;
  v105 = v40;
  v42 = v109 + 1;
  v101 = v109[1];
  v101(v37, v38);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v109 = v42;
    v43 = v96;
    (v85[0])(v96, v30, v110);
    v44 = v98;
    swift_getWitnessTable();
    Collection.subscript.getter();
    (*(v97 + 8))(v43, v44);
    v45 = specialized Data.init<A>(_:)(v37, v38, v39);
    v47 = v46;
    v101(v37, v38);
    v49 = v104;
    v48 = v105;
    outlined copy of Data._Representation(v105, v104);
    v113 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v48, v49);
    a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    v50 = lazy protocol witness table accessor for type [UInt8] and conformance [A]();
    v52 = v107;
    v51 = v108;
    v53 = v99;
    PreambleInputShare.init<A>(from:)(&v113, v107, a4, v108, v50, v112);
    if (v53)
    {
      v86(v30, v110);
      outlined consume of Data._Representation(v105, v49);
      outlined consume of Data._Representation(v45, v47);
    }

    else
    {
      v56 = *v112;
      outlined copy of Data._Representation(v45, v47);
      v109 = v45;
      v111 = v47;
      v113 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v45, v47);
      PreambleInputShare.init<A>(from:)(&v113, v52, a4, v51, v50, v112);
      v102 = *v112;
      v103 = v56;
      v112[0] = 0;
      v57 = v93;
      WitnessTable = swift_getWitnessTable();
      static VDAFProtocol.domainSeparationTag(usage:)(v112, v57, WitnessTable);
      v59 = v57[2];
      v60 = v57[5];
      v61 = v91;
      DPFGenerator.init(dimensionBitCount:blockSize:domainSeparationTag:)();
      v100 = v63;
      v101 = v62;
      v65 = v64;

      v67 = v52;
      v68 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v66);
      v70 = v69;

      v84 = v61;
      v83 = v60;
      v71 = v67;
      v81 = v59;
      v82 = v67;
      v80 = v65;
      v72 = v104;
      v73 = v105;
      v74 = v109;
      v75 = v111;
      DPFGenerator.generate<A>(for:seedForParty0:seedForParty1:using:)(v94, v105, v104, v109, v111, v68, v70, v101, v112, v100, v80, v81, v82, v57[3], v83, v84, *(v57[6] + 8));

      outlined consume of Data._Representation(v68, v70);
      *v88 = *v112;
      type metadata accessor for PreambleInputShare(255, v71, v108, v76);
      type metadata accessor for _ContiguousArrayStorage();
      swift_allocObject();
      v77 = static Array._adoptStorage(_:count:)();
      v78 = v102;
      *v79 = v103;
      v79[1] = v78;
      *v112 = v77;
      type metadata accessor for Array();
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      a4 = *v112;
      outlined consume of Data._Representation(v74, v75);
      outlined consume of Data._Representation(v73, v72);
      v86(v106, v110);
    }

    return a4;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t Preamble.publicShare<A>(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[1] = a5;
  v22 = a4;
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v5;
  v12 = v5[1];
  v14 = v5[2];
  result = (*(*(*(v15 + 64) + 8) + 8))();
  v17 = 63 - __clz(v12);
  v18 = __OFSUB__(v13, v17);
  v19 = v13 - v17;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v20 = result;
    (*(v9 + 16))(v11, a1, a3);
    v23[0] = v14;
    v23[1] = v20;
    v23[2] = v12;
    v23[3] = v19;
    v24 = 0;
    return PreamblePublicShare.init<A>(from:parameter:)(v11, v23, *(a2 + 16), a3, *(a2 + 40), v22);
  }

  return result;
}

void *Preamble.inputShare<A>(from:aggregatorID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  return PreambleInputShare.init<A>(from:)(v10, *(a2 + 32), a3, *(*(a2 + 64) + 8), a4, a5);
}

void Preamble.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(void *a1, uint64_t a2, uint64_t a3, Swift::Int a4, uint64_t a5, __int128 *a6, uint64_t *a7, uint64_t a8, void *a9)
{
  v41 = a5;
  v37 = *a6;
  v12 = *v9;
  v11 = v9[1];
  v13 = v9[2];
  v40[0] = *v9;
  v40[1] = v11;
  v40[2] = v13;
  WitnessTable = swift_getWitnessTable();
  VDAFProtocol.assertValidAggregatorID(_:)(a4);
  if (!v15)
  {
    if (!a4)
    {
      v18 = 0;
      v16 = v11;
      v17 = v12;
      goto LABEL_6;
    }

    if (a4 == 1)
    {
      v16 = v11;
      v17 = v12;
      v18 = 1;
LABEL_6:
      LOBYTE(v38[0]) = v18;
      LOBYTE(v40[0]) = 0;
      v19 = static VDAFProtocol.domainSeparationTag(usage:)(v40, a9, WitnessTable);
      v20 = a9[2];
      v21 = a9[4];
      v22 = a9[5];
      v23 = a9[8];
      DPFEvaluator.init(evaluatorId:dimensionBitCount:keptBlockCount:blockSize:domainSeparationTag:)(v38, v17, v13, v16, v19, v40);

      v25 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v24);
      v27 = v26;

      v29 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v28);
      v31 = v30;

      v39 = v37;
      v41 = v20;
      v38[0] = v20;
      v38[1] = v21;
      v38[2] = v22;
      v38[3] = v23;
      v32 = type metadata accessor for DPFEvaluator(0, v38);
      v33 = DPFEvaluator.evaluateAll(seed:nonce:publicShare:)(v25, v27, v29, v31, &v39, v32);
      outlined consume of Data._Representation(v29, v31);
      outlined consume of Data._Representation(v25, v27);

      OutputShare.init(_:)(v33, v40);
      PreamblePrepareState.init(outputShare:)(v40, a1);
      PreamblePrepareShare.init()();
      return;
    }

    _StringGuts.grow(_:)(22);

    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v34);

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v35 = 0xD000000000000014;
    *(v35 + 8) = 0x8000000270C536C0;
    *(v35 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t Preamble.prepareState<A>(from:aggregatorID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PreamblePrepareState(0, *(v11 + 16), *(v11 + 40), v12);
  (*(v8 + 16))(v10, a1, a4);
  return VDAFDecodable.init<A>(from:)(v10, v13, a4, &protocol witness table for PreamblePrepareState<A>, a5);
}

uint64_t Preamble.prepareMessage<A>(from:aggregatorID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  return PreamblePrepareMessage.init<A>(from:parameter:)(v6, 1, a4);
}

uint64_t Preamble.prepareNext(state:message:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = 1;
}

uint64_t Preamble.init(dimensionBitCount:blockSize:keptBlockCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 1 || a2 < 1 || ((a2 + 0x7FFFFFFFFFFFFFFFLL) & a2) != 0 || result > 0x3F || 1 << result < a2 || a3 < 1 || (1 << result) / a2 < a3)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *v4 = 0;
    *(v4 + 24) = 12;
    return swift_willThrow();
  }

  else
  {
    *a4 = result;
    a4[1] = a2;
    a4[2] = a3;
  }

  return result;
}

uint64_t Preamble.prepareShare<A>(from:aggregatorID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PreamblePrepareShare(0, *(v11 + 16), *(v11 + 40), v12);
  (*(v8 + 16))(v10, a1, a4);
  return VDAFDecodable.init<A>(from:)(v10, v13, a4, &protocol witness table for PreamblePrepareShare<A>, a5);
}

void *Preamble.aggregate<A>(_:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v21[2] = a1;
  v21[1] = a5;
  v9 = *(a2 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v5;
  v15 = *(v14 + 40);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v16 = 1 << v13;
  if (v13 >= 0x40)
  {
    v16 = 0;
  }

  if (v13 <= 0x40)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = specialized Array.init(repeating:count:)(v12, v17, v9);
  (*(v10 + 8))(v12, v9);
  AggregateShare.init(_:)(v18, &v28);
  v21[6] = v9;
  v22 = *(a2 + 24);
  v23 = a3;
  v24 = v15;
  v25 = *(a2 + 48);
  v26 = *(a2 + 64);
  v27 = a4;
  type metadata accessor for AggregateShare(0, v9, v15, v19);
  return Sequence.reduce<A>(into:_:)();
}

uint64_t closure #2 in Preamble.unshard<A>(_:numOfMeasurements:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v22 = a6;
  v23 = a8;
  v20 = a4;
  v21 = a5;
  v24 = a9;
  v25 = a2;
  v14 = *(a3 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v15;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v26 = a3;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  v30 = a7;
  v31 = v23;
  v32 = a10;
  v33 = a11;
  v34 = a12;
  v35 = v18;
  Sequence.reduce<A>(_:_:)();
  return (*(v14 + 8))(v17, a3);
}

uint64_t closure #1 in closure #2 in Preamble.unshard<A>(_:numOfMeasurements:parameter:)(uint64_t a1, void x1_0, void x2_0, uint64_t a2, void a5, void a6, void a7, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  Array.subscript.getter();
  (*(v7 + 16))(v10, a1, a2);
  FieldElement.init(other:)(v10, a2, a3);
  dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  return (*(v7 + 8))(v12, a2);
}

uint64_t closure #3 in Preamble.unshard<A>(_:numOfMeasurements:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v27 = a4;
  v28 = a6;
  v26 = a7;
  v14 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v25 - v19;
  (*(v14 + 16))(v16, a1, a2);
  SignedInteger<>.init<A>(fieldElement:)(v16, a3, a2, a5, v27, v20);
  v21 = *(a3 - 8);
  if ((*(v21 + 48))(v20, 1, a3) != 1)
  {
    return (*(v21 + 32))(v26, v20, a3);
  }

  (*(v18 + 8))(v20, v17);
  lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
  v22 = swift_allocError();
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *v23 = 1;
  *(v23 + 24) = 12;
  result = swift_willThrow();
  *a10 = v22;
  return result;
}

uint64_t Preamble.outputShare<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, void, uint64_t, void, uint64_t))
{
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  return a5(v10, 1, *(a2 + 16), a3, *(a2 + 40), a4);
}

uint64_t protocol witness for Collector.unshard<A>(_:numOfMeasurements:parameter:) in conformance Preamble<A, B, C>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t *a6@<X8>)
{
  result = specialized Preamble.unshard<A>(_:numOfMeasurements:parameter:)(a1, a2, a5, a3, a4);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t closure #2 in Data.init<A>(_:)@<X0>(_BYTE *__src@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t closure #3 in Data.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(MEMORY[0x277D84B78], partial apply for closure #1 in closure #3 in Data.init<A>(_:), v10, a1, a2, MEMORY[0x277D84B78], MEMORY[0x277D84A98], TupleTypeMetadata2, MEMORY[0x277D84AC0], v9);
}

uint64_t closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v9 + 16))(v11, a3, a4);
  result = dispatch thunk of Sequence._copyContents(initializing:)();
  *(a6 + v12) = result;
  return result;
}

uint64_t _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v22 = v24 - v21;
  if (v17)
  {
    v23 = *(*(v19 - 8) + 72);
    if (v23)
    {
      if (v18 - v17 != 0x8000000000000000 || v23 != -1)
      {
        result = v20(v17, (v18 - v17) / v23, v15);
        if (!v10)
        {
          return result;
        }

        return (*(v12 + 32))(a10, v15, a7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = v20(0, 0, v24 - v21);
  v15 = v22;
  if (v10)
  {
    return (*(v12 + 32))(a10, v15, a7);
  }

  return result;
}

uint64_t specialized Data.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v29 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = &v29 - v13;
  MEMORY[0x28223BE20](v12);
  (*(v16 + 16))(&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(v32, &v34);
    __swift_project_boxed_opaque_existential_1(&v34, v35);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v32[0] = v31;
    __swift_destroy_boxed_opaque_existential_1(&v34);
    goto LABEL_34;
  }

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  outlined destroy of ContiguousBytes?(v32);
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (*(&v34 + 1) >> 60 != 15)
  {
    v32[0] = v34;
    goto LABEL_34;
  }

  v30 = v34;
  v17 = dispatch thunk of Sequence.underestimatedCount.getter();
  *&v32[0] = specialized Data.init(count:)(v17);
  *(&v32[0] + 1) = v18;
  MEMORY[0x28223BE20](*&v32[0]);
  *(&v29 - 4) = a2;
  *(&v29 - 3) = a3;
  *(&v29 - 2) = a1;
  Data._Representation.withUnsafeMutableBytes<A>(_:)();
  v19 = *&v10[*(TupleTypeMetadata2 + 48)];
  (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
  v20 = *(&v32[0] + 1) >> 62;
  if ((*(&v32[0] + 1) >> 62) <= 1)
  {
    if (v20)
    {
      if (__OFSUB__(DWORD1(v32[0]), v32[0]))
      {
        goto LABEL_38;
      }

      if (v19 == DWORD1(v32[0]) - LODWORD(v32[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v19 == BYTE14(v32[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v20 == 2)
  {
    v22 = *(*&v32[0] + 16);
    v21 = *(*&v32[0] + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (v23)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v19 == v24)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v20 == 2)
    {
      v25 = *(*&v32[0] + 24);
    }

    else if (v20 == 1)
    {
      v25 = *&v32[0] >> 32;
    }

    else
    {
      v25 = BYTE14(v32[0]);
    }

LABEL_31:
    if (v25 >= v19)
    {
      Data._Representation.replaceSubrange(_:with:count:)();
LABEL_33:
      (*(v11 + 8))(v14, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v19)
  {
    v25 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v34 = 0;
  *(&v34 + 7) = 0;
  dispatch thunk of IteratorProtocol.next()();
  if (BYTE1(v31) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v26) = 0;
  do
  {
    *(&v34 + v26) = v31;
    v26 = v26 + 1;
    if ((v26 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v26 == 14)
    {
      *&v31 = v34;
      *(&v31 + 6) = *(&v34 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v26) = 0;
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  while ((BYTE1(v31) & 1) == 0);
  if (v26)
  {
    *&v31 = v34;
    *(&v31 + 6) = *(&v34 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data._Representation?(v30, *(&v30 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  outlined consume of Data._Representation?(v30, *(&v30 + 1));
LABEL_34:
  v27 = v32[0];
  outlined copy of Data._Representation(*&v32[0], *(&v32[0] + 1));
  outlined consume of Data._Representation(v27, *(&v27 + 1));
  return v27;
}

uint64_t specialized Preamble.randomSizeForShard.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a7 + 8) + 8))(a3);
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    result *= 2;
  }

  return result;
}

uint64_t specialized Preamble.unshard<A>(_:numOfMeasurements:parameter:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v12 = *v7;
  if (dispatch thunk of Collection.count.getter() != 2)
  {
    a1 = dispatch thunk of Collection.count.getter();
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
    *v33 = a1;
    *(v33 + 24) = 0;
LABEL_12:
    swift_willThrow();
    return a1;
  }

  v13 = 1 << v12;
  if (v12 >= 0x40)
  {
    v13 = 0;
  }

  if (v12 <= 0x40)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x28223BE20](2);
  v16 = a3[2];
  v15 = a3[3];
  v36 = v16;
  v37 = v15;
  v52 = v15;
  v17 = a3[4];
  v48 = a3[5];
  v49 = v17;
  v38 = v17;
  v39 = a4;
  v18 = a3[6];
  v19 = a3[7];
  v40 = v48;
  v41 = v18;
  v51 = v18;
  v20 = a3[8];
  v21 = v19;
  v42 = v19;
  v43 = v20;
  v50 = v20;
  v44 = a5;
  v45 = v14;
  result = Sequence.allSatisfy(_:)();
  if ((result & 1) == 0)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v34 + 8) = 0;
    *(v34 + 16) = 0;
    *v34 = 2;
    *(v34 + 24) = 12;
    goto LABEL_12;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v47 = v46;
    v53 = 0;
    v54 = v14;
    MEMORY[0x28223BE20](result);
    v36 = v16;
    v37 = v52;
    v23 = v48;
    v24 = v49;
    v38 = v49;
    v39 = a4;
    v40 = v48;
    v41 = v51;
    v46[0] = v21;
    v42 = v21;
    v43 = v50;
    v44 = a5;
    v45 = a1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    v26 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in Preamble.unshard<A>(_:numOfMeasurements:parameter:), v35, v25, v16, MEMORY[0x277D84A98], v26, MEMORY[0x277D84AC0], v27);
    v46[1] = v6;
    v47 = v46;
    v53 = v28;
    MEMORY[0x28223BE20](v28);
    v29 = v52;
    v36 = v16;
    v37 = v52;
    v38 = v24;
    v39 = a4;
    v40 = v23;
    v41 = v51;
    v42 = v46[0];
    v43 = v50;
    v44 = a5;
    v30 = type metadata accessor for Array();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    WitnessTable = swift_getWitnessTable();
    a1 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in Preamble.unshard<A>(_:numOfMeasurements:parameter:), v35, v30, v29, v31, WitnessTable, MEMORY[0x277D84950], &v55);

    return a1;
  }

  __break(1u);
  return result;
}

unint64_t instantiation function for generic protocol witness table for PreambleError(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
  result = lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_4VDAF13PreambleErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 0xFu) <= 0xB)
  {
    return *(a1 + 24) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

uint64_t getEnumTagSinglePayload for PreambleError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 25))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 24);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PreambleError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PreambleError(uint64_t result, unsigned int a2)
{
  v2 = a2 - 12;
  if (a2 >= 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 12;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t type metadata instantiation function for Preamble(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t outlined destroy of ContiguousBytes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined consume of Data._Representation?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined init with take of ContiguousBytes(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t _s4VDAF17VDAFErrorProtocolPAAE2eeoiySbx_xtFZAA16VDAFCodableErrorO_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = specialized VDAFErrorProtocol.value.getter(a1, a2);
  v8 = v7;
  v9 = specialized VDAFErrorProtocol.value.getter(a3, a4);
  if (v8)
  {
    if (v10)
    {
      if (v6 == v9 && v8 == v10)
      {

        v11 = 1;
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (!v10)
    {
      v11 = 1;
      return v11 & 1;
    }

    v11 = 0;
  }

  return v11 & 1;
}

uint64_t _s4VDAF17VDAFErrorProtocolPAAE2eeoiySbx_xtFZAA0B0O_Tt1B5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v10 = a6;
  v13 = specialized VDAFErrorProtocol.value.getter(a1, a2, a3, a7, a8);
  v15 = v14;
  v16 = specialized VDAFErrorProtocol.value.getter(a4, a5, v10, a7, a8);
  if (v15)
  {
    if (v17)
    {
      if (v13 == v16 && v15 == v17)
      {

        v18 = 1;
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    if (!v17)
    {
      v18 = 1;
      return v18 & 1;
    }

    v18 = 0;
  }

  return v18 & 1;
}

uint64_t _s4VDAF17VDAFErrorProtocolPAAE2eeoiySbx_xtFZAA20InnerCorrectionErrorO_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = specialized VDAFErrorProtocol.value.getter(a1, a2, a3);
  v11 = v10;
  v12 = specialized VDAFErrorProtocol.value.getter(a4, a5, a6);
  if (v11)
  {
    if (v13)
    {
      if (v9 == v12 && v11 == v13)
      {

        v14 = 1;
      }

      else
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    if (!v13)
    {
      v14 = 1;
      return v14 & 1;
    }

    v14 = 0;
  }

  return v14 & 1;
}

uint64_t _s4VDAF17VDAFErrorProtocolPAAE2eeoiySbx_xtFZAA23CorrectionMissingReasonO_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t))
{
  v11 = a7(a1, a2, a3);
  v13 = v12;
  v14 = a7(a4, a5, a6);
  if (v13)
  {
    if (v15)
    {
      if (v11 == v14 && v13 == v15)
      {

        v16 = 1;
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    if (!v15)
    {
      v16 = 1;
      return v16 & 1;
    }

    v16 = 0;
  }

  return v16 & 1;
}

uint64_t _s4VDAF17VDAFErrorProtocolPAAE2eeoiySbx_xtFZAA23SeedCtrlUnadjustedErrorO_Tt1g5Tm(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v11 = specialized VDAFErrorProtocol.value.getter(a1, a2, a3 & 1, a7);
  v13 = v12;
  v14 = specialized VDAFErrorProtocol.value.getter(a4, a5, a6 & 1, a7);
  if (v13)
  {
    if (v15)
    {
      if (v11 == v14 && v13 == v15)
      {

        v16 = 1;
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    if (!v15)
    {
      v16 = 1;
      return v16 & 1;
    }

    v16 = 0;
  }

  return v16 & 1;
}

uint64_t _s4VDAF17VDAFErrorProtocolPAAE2eeoiySbx_xtFZAA13PreambleErrorO_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void), uint64_t a10)
{
  v10 = a8;
  v14 = specialized VDAFErrorProtocol.value.getter(a1, a2, a3, a4, a9, a10);
  v16 = v15;
  v17 = specialized VDAFErrorProtocol.value.getter(a5, a6, a7, v10, a9, a10);
  if (v16)
  {
    if (v18)
    {
      if (v14 == v17 && v16 == v18)
      {

        v20 = 1;
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    if (!v18)
    {
      v20 = 1;
      return v20 & 1;
    }

    v20 = 0;
  }

  return v20 & 1;
}

uint64_t specialized VDAFErrorProtocol.value.getter(uint64_t a1, uint64_t a2)
{

  String.init<A>(describing:)();
  lazy protocol witness table accessor for type String and conformance String();
  v2 = StringProtocol.components<A>(separatedBy:)();

  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t specialized VDAFErrorProtocol.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  String.init<A>(describing:)();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();

  if (*(v3 + 16))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t specialized VDAFErrorProtocol.value.getter(uint64_t a1, uint64_t a2, char a3)
{
  String.init<A>(describing:)();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();

  if (*(v3 + 16))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

{
  String.init<A>(describing:)();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();

  if (*(v3 + 16))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t specialized VDAFErrorProtocol.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), uint64_t a6)
{
  a5();
  String.init<A>(describing:)();
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.components<A>(separatedBy:)();

  if (*(v6 + 16))
  {
    v7 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t specialized VDAFErrorProtocol.value.getter(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5)
{
  a4();
  String.init<A>(describing:)();
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components<A>(separatedBy:)();

  if (*(v5 + 16))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t specialized VDAFErrorProtocol.value.getter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  String.init<A>(describing:)();
  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.components<A>(separatedBy:)();

  if (*(v4 + 16))
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

VDAF::EvaluatorID_optional __swiftcall EvaluatorID.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

_BYTE *DPFEvaluator.init(evaluatorId:dimensionBitCount:keptBlockCount:blockSize:domainSeparationTag:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = *result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  v6 = 63 - __clz(a4);
  v7 = __OFSUB__(a2, v6);
  v8 = a2 - v6;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(a6 + 32) = v8;
    *(a6 + 40) = a5;
  }

  return result;
}

uint64_t DPFEvaluator.evaluateAll(seed:nonce:publicShare:)(uint64_t a1, unint64_t a2, uint64_t a3, int64_t *a4, uint64_t *a5, uint64_t a6)
{
  v14 = a5[1];
  v10 = *(v6 + 32);
  v11 = DPFEvaluator.evaluateAllInternal(seed:nonce:innerCorrections:untilLevel:)(a1, a2, a3, a4, *a5, 0, 1);
  if (!v7)
  {
    DPFEvaluator.evaluateLeaves(inputs:nonce:leafCorrections:)(v11, a3, a4, v14, a6);
    v10 = v12;
  }

  return v10;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance EvaluatorID@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

int64_t DPFEvaluator.evaluateAllInternal(seed:nonce:innerCorrections:untilLevel:)(uint64_t a1, unint64_t a2, uint64_t a3, int64_t *a4, uint64_t a5, unint64_t a6, int64_t a7)
{
  v9 = v8;
  v14 = *v7;
  v15 = *(v7 + 2);
  v16 = *(v7 + 4);
  v123 = *(v7 + 5);
  v17 = *_emptyDequeStorage.unsafeMutableAddressor();
  v159 = v17;
  LOBYTE(v151[0]) = v14;

  v124 = v15;
  v18 = specialized static EvaluatorLevelInput.makeRootInput(for:keptBlockCount:seed:)(v151, v15, a1, a2);
  v134 = v19;
  v135 = v20;
  v136 = v21;
  v22 = v17[3];
  v23 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    goto LABEL_143;
  }

  v24 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v17[2] < v23 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized Deque._Storage._ensureUnique(isUnique:minimumCapacity:linearGrowth:)(isUniquelyReferenced_nonNull_native, v23, 0);
    v17 = v159;
  }

  specialized closure #1 in Deque.append(_:)(v17 + 2, (v17 + 5), v24, v134, v135, v136);
  if (a7)
  {
    v22 = v16;
  }

  else
  {
    v22 = a6;
  }

  if (v22 > -65 && v22 < 65)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_157;
    }

    if (v22 != 64)
    {
      v27 = 1 << v22;
      goto LABEL_16;
    }
  }

  v26 = v17[3];
  if ((v26 & 0x8000000000000000) == 0)
  {
LABEL_120:

    if (v26)
    {
      a7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(a7 + 16) = v26;
    }

    else
    {
      a7 = MEMORY[0x277D84F90];
    }

    v151[1] = v26;
    v152 = 0;
    v151[0] = a7 + 32;
    specialized closure #1 in closure #1 in Deque._copyToContiguousArray()(v17 + 2, (v17 + 5), v151, &v152);
    v22 = v152;
    if (v26 >= v152)
    {
      *(a7 + 16) = v152;

      outlined consume of Data._Representation(v134, v135);

      return a7;
    }

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
      if (v22 == -64)
      {
LABEL_162:
        v26 = v17[3];
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_120;
        }

        v27 = 0;
        if (v26 < 1)
        {
          goto LABEL_118;
        }
      }

      else
      {
        v27 = 0;
LABEL_16:
        v26 = v17[3];
        if (v26 >= v27)
        {
LABEL_119:
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_120;
          }

          goto LABEL_145;
        }

        if (v26 < 1)
        {
          goto LABEL_118;
        }
      }

LABEL_18:
      v117 = v27;
      while (1)
      {
        v17 = v159;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized Deque._Storage._makeUniqueCopy()();
          v17 = v159;
        }

        v28 = v17[4];
        v22 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        v29 = &v17[4 * v28];
        v31 = v29[5];
        v30 = v29[6];
        v32 = v29[7];
        a7 = v29[8];
        v33 = v17[3];
        if (v22 >= v17[2])
        {
          v22 = 0;
        }

        v17[4] = v22;
        v22 = v33 - 1;
        if (__OFSUB__(v33, 1))
        {
          goto LABEL_147;
        }

        v121 = v17;
        v17[3] = v22;
        outlined copy of Data._Representation(v30, v32);
        v17 = a4;
        outlined copy of Data._Representation(a3, a4);

        specialized SeedCtrlUnadjusted.init(from:doubling:using:for:)(v30, v32, v124, a3, a4, v123, &v153);
        outlined consume of Data._Representation(a3, a4);
        v119 = v30;
        v120 = v32;
        outlined consume of Data._Representation(v30, v32);
        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_148;
        }

        v22 = *(a5 + 16);
        if (v31 >= v22)
        {
          goto LABEL_149;
        }

        v122 = v31;
        v34 = v153;
        v35 = v154;
        v37 = v155;
        v36 = v156;
        v38 = v157;
        v17 = v158;
        v140 = *(a7 + 16);
        v149 = v153;
        v146 = v156;
        v143 = v155;
        if (v140)
        {
          v150 = v9;
          v39 = (a5 + 32 + 16 * v122);
          v9 = *v39;
          v40 = v39[1];
          v41 = a7 + 32;

          v141 = v35;
          outlined copy of Data._Representation(v34, v35);
          outlined copy of Data._Representation(v37, v36);
          v142 = v9;
          v131 = v40 & 0xC000000000000001;
          v132 = v9 + 4;
          v118 = v40;
          v130 = v40 & 0xFFFFFFFFFFFFFF8;

          v42 = 0;
          v129 = a7;
          v127 = a7 + 32;
          while (1)
          {
            v22 = *(a7 + 16);
            if (v42 >= v22)
            {
              break;
            }

            if (*(v41 + v42) == 1)
            {
              v137 = v38;
              v144 = v17;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_270C44550;
              *(inited + 32) = v149;
              v17 = (inited + 32);
              *(inited + 40) = v141;
              v22 = v142[2];
              if (v42 >= v22)
              {
                goto LABEL_140;
              }

              v45 = inited;
              v9 = &v132[2 * v42];
              a7 = *v9;
              v46 = v9[1];
              *(inited + 48) = *v9;
              *(inited + 56) = v46;
              outlined copy of Data._Representation(v149, v141);
              outlined copy of Data._Representation(a7, v46);
              Array<A>.xor.getter(v45);
              if (v150)
              {
                outlined consume of Data._Representation(v134, v135);

                outlined destroy of SeedCtrlUnadjusted(&v153);
                outlined consume of Data._Representation(v119, v120);

                swift_bridgeObjectRelease_n();
                outlined consume of Data._Representation(v143, v146);
                outlined consume of Data._Representation(v149, v141);
                swift_setDeallocating();
                swift_arrayDestroy();

                return a7;
              }

              a7 = v47;
              v49 = v48;
              outlined consume of Data._Representation(v149, v141);
              swift_setDeallocating();
              swift_arrayDestroy();
              v50 = swift_initStackObject();
              *(v50 + 16) = xmmword_270C44550;
              *(v50 + 32) = v143;
              v17 = (v50 + 32);
              *(v50 + 40) = v146;
              v22 = v142[2];
              v148 = v42;
              if (v42 >= v22)
              {
                goto LABEL_141;
              }

              v51 = v50;
              v52 = a7;
              v53 = *v9;
              v54 = v9[1];
              *(v50 + 48) = *v9;
              *(v50 + 56) = v54;
              outlined copy of Data._Representation(v143, v146);
              outlined copy of Data._Representation(v53, v54);
              Array<A>.xor.getter(v51);
              v9 = v55;
              a7 = v56;
              outlined consume of Data._Representation(v143, v146);
              swift_setDeallocating();
              swift_arrayDestroy();
              v149 = v52;
              v150 = 0;
              v141 = v49;
              if (v131)
              {
                v57 = MEMORY[0x2743B2D10](v148, v118);
              }

              else
              {
                v22 = *(v130 + 16);
                if (v148 >= v22)
                {
                  goto LABEL_142;
                }
              }

              v133 = a7;
              v143 = v9;
              v147 = v57;
              v58 = *(v57 + 16);
              if (*(v58 + 16) >= *(v38 + 16))
              {
                v59 = *(v38 + 16);
              }

              else
              {
                v59 = *(v58 + 16);
              }

              v151[0] = MEMORY[0x277D84F90];

              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59, 0);
              v43 = v151[0];
              if (v59)
              {
                a7 = 0;
                v60 = *(v38 + 16);
                v61 = v38 + 32;
                v9 = (v58 + 32);
                v17 = v144;
                v62 = v38;
                v63 = v58;
                while (v60 != a7)
                {
                  v22 = *(v62 + 16);
                  if (a7 >= v22)
                  {
                    goto LABEL_128;
                  }

                  v22 = *(v63 + 16);
                  if (a7 == v22)
                  {
                    goto LABEL_129;
                  }

                  if (a7 >= v22)
                  {
                    goto LABEL_130;
                  }

                  v64 = *(v61 + a7);
                  v65 = *(v9 + a7);
                  v151[0] = v43;
                  v67 = *(v43 + 16);
                  v66 = *(v43 + 24);
                  if (v67 >= v66 >> 1)
                  {
                    v113 = v61;
                    v115 = v63;
                    v68 = v60;
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1);
                    v61 = v113;
                    v63 = v115;
                    v60 = v68;
                    v62 = v137;
                    v17 = v144;
                    v43 = v151[0];
                  }

                  ++a7;
                  v22 = v64 ^ v65;
                  *(v43 + 16) = v67 + 1;
                  *(v43 + v67 + 32) = v64 ^ v65;
                  if (v59 == a7)
                  {
                    goto LABEL_53;
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
LABEL_133:
                __break(1u);
LABEL_134:
                __break(1u);
                goto LABEL_135;
              }

              v17 = v144;
              v62 = v38;
              v63 = v58;
LABEL_53:
              v22 = *(v62 + 16);
              if (v59 != v22)
              {
                v9 = (v62 + 32);
                v80 = v63 + 32;
                while (v59 < v22)
                {
                  v22 = *(v63 + 16);
                  if (v59 == v22)
                  {
                    goto LABEL_54;
                  }

                  if (v59 >= v22)
                  {
                    goto LABEL_136;
                  }

                  a7 = *(v9 + v59);
                  v81 = *(v80 + v59);
                  v151[0] = v43;
                  v83 = *(v43 + 16);
                  v82 = *(v43 + 24);
                  if (v83 >= v82 >> 1)
                  {
                    v84 = v63;
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1);
                    v63 = v84;
                    v62 = v137;
                    v17 = v144;
                    v43 = v151[0];
                  }

                  ++v59;
                  *(v43 + 16) = v83 + 1;
                  *(v43 + v83 + 32) = a7 ^ v81;
                  v22 = *(v62 + 16);
                  if (v59 == v22)
                  {
                    goto LABEL_54;
                  }
                }

LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
                goto LABEL_137;
              }

LABEL_54:

              v69 = *(v147 + 24);
              if (*(v69 + 16) >= v17[2])
              {
                v70 = v17[2];
              }

              else
              {
                v70 = *(v69 + 16);
              }

              v151[0] = MEMORY[0x277D84F90];

              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70, 0);
              v9 = v151[0];
              if (v70)
              {
                a7 = 0;
                v71 = v17[2];
                v72 = v17 + 4;
                v73 = v69 + 32;
                v74 = v69;
                while (v71 != a7)
                {
                  v22 = v17[2];
                  if (a7 >= v22)
                  {
                    goto LABEL_132;
                  }

                  v22 = *(v74 + 16);
                  if (a7 == v22)
                  {
                    goto LABEL_133;
                  }

                  if (a7 >= v22)
                  {
                    goto LABEL_134;
                  }

                  v75 = *(v72 + a7);
                  v76 = *(v73 + a7);
                  v151[0] = v9;
                  v78 = v9[2];
                  v77 = v9[3];
                  if (v78 >= v77 >> 1)
                  {
                    v138 = v74;
                    v114 = v73;
                    v116 = v71;
                    v79 = v72;
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1);
                    v73 = v114;
                    v71 = v116;
                    v72 = v79;
                    v74 = v138;
                    v17 = v144;
                    v9 = v151[0];
                  }

                  ++a7;
                  v22 = v75 ^ v76;
                  v9[2] = v78 + 1;
                  *(v9 + v78 + 32) = v75 ^ v76;
                  if (v70 == a7)
                  {
                    goto LABEL_76;
                  }
                }

                goto LABEL_131;
              }

              v74 = v69;
LABEL_76:
              v22 = v17[2];
              if (v70 != v22)
              {
                v85 = v17 + 4;
                a7 = v74 + 32;
                while (v70 < v22)
                {
                  v22 = *(v74 + 16);
                  if (v70 == v22)
                  {
                    goto LABEL_77;
                  }

                  if (v70 >= v22)
                  {
                    goto LABEL_138;
                  }

                  v86 = *(v85 + v70);
                  v87 = *(a7 + v70);
                  v151[0] = v9;
                  v89 = v9[2];
                  v88 = v9[3];
                  if (v89 >= v88 >> 1)
                  {
                    v139 = v74;
                    v90 = v85;
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1);
                    v85 = v90;
                    v74 = v139;
                    v17 = v144;
                    v9 = v151[0];
                  }

                  ++v70;
                  v9[2] = v89 + 1;
                  *(v9 + v89 + 32) = v86 ^ v87;
                  v22 = v17[2];
                  if (v70 == v22)
                  {
                    goto LABEL_77;
                  }
                }

LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
                break;
              }

LABEL_77:

              v17 = v9;
              v146 = v133;
              v38 = v43;
              a7 = v129;
              v41 = v127;
              v42 = v148;
            }

            else
            {
              v43 = v38;
            }

            if (++v42 == v140)
            {

              v91 = v43;
              v9 = v150;
              v27 = v117;
              v35 = v141;
              goto LABEL_89;
            }
          }

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

        outlined copy of Data._Representation(v153, v154);
        outlined copy of Data._Representation(v37, v36);

        v91 = v38;
LABEL_89:
        v22 = v122;
        v92 = v122 + 1;
        if (__OFADD__(v122, 1))
        {
          goto LABEL_150;
        }

        v22 = v121[3];
        a7 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_151;
        }

        v145 = v17;
        v17 = v159;
        v93 = swift_isUniquelyReferenced_nonNull_native();
        if (v17[2] < a7 || (v93 & 1) == 0)
        {
          specialized Deque._Storage._ensureUnique(isUnique:minimumCapacity:linearGrowth:)(v93, a7, 0);
          v17 = v159;
        }

        v95 = v17[3];
        v94 = v17[4];
        v97 = __OFADD__(v94, v95);
        v22 = v94 + v95;
        if (v97)
        {
          goto LABEL_152;
        }

        if (v95 < 0)
        {
          if ((v22 & 0x8000000000000000) != 0)
          {
            v99 = v17[2];
            v97 = __OFADD__(v22, v99);
            v22 += v99;
            if (v97)
            {
              goto LABEL_160;
            }
          }
        }

        else
        {
          v96 = v17[2];
          v97 = __OFSUB__(v22, v96);
          v98 = v22 - v96;
          if (v98 < 0 == v97)
          {
            v22 = v98;
            if (v97)
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

        v100 = &v17[4 * v22];
        v100[5] = v92;
        v100[6] = v149;
        v100[7] = v35;
        v100[8] = v91;
        v101 = v17[3];
        v97 = __OFADD__(v101, 1);
        v22 = v101 + 1;
        if (v97)
        {
          goto LABEL_153;
        }

        v17[3] = v22;
        a7 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_154;
        }

        outlined copy of Data._Representation(v149, v35);

        v102 = swift_isUniquelyReferenced_nonNull_native();
        if (v17[2] < a7 || (v102 & 1) == 0)
        {
          specialized Deque._Storage._ensureUnique(isUnique:minimumCapacity:linearGrowth:)(v102, a7, 0);
          v17 = v159;
        }

        v104 = v17[3];
        v103 = v17[4];
        v97 = __OFADD__(v103, v104);
        v22 = v103 + v104;
        if (v97)
        {
          goto LABEL_155;
        }

        if (v104 < 0)
        {
          if ((v22 & 0x8000000000000000) != 0)
          {
            v108 = v17[2];
            v97 = __OFADD__(v22, v108);
            v22 += v108;
            if (v97)
            {
              goto LABEL_161;
            }
          }
        }

        else
        {
          v105 = v17[2];
          v106 = __OFSUB__(v22, v105);
          v107 = v22 - v105;
          if (v107 < 0 == v106)
          {
            v22 = v107;
            if (v106)
            {
              goto LABEL_159;
            }
          }
        }

        v109 = &v17[4 * v22];
        a7 = v145;
        v109[5] = v92;
        v109[6] = v143;
        v109[7] = v146;
        v109[8] = v145;
        v110 = v17[3];
        v97 = __OFADD__(v110, 1);
        v22 = v110 + 1;
        if (v97)
        {
          goto LABEL_156;
        }

        v17[3] = v22;
        outlined copy of Data._Representation(v143, v146);

        outlined consume of Data._Representation(v149, v35);

        outlined destroy of SeedCtrlUnadjusted(&v153);
        outlined consume of Data._Representation(v119, v120);

        outlined consume of Data._Representation(v143, v146);

        v26 = v17[3];
        if (v26 >= v27)
        {
          goto LABEL_119;
        }

        if (v26 < 1)
        {
          goto LABEL_118;
        }
      }
    }
  }

  v27 = 0;
  if (v26 >= 1)
  {
    goto LABEL_18;
  }

LABEL_118:
  lazy protocol witness table accessor for type EvaluatorError and conformance EvaluatorError();
  swift_allocError();
  *v111 = 0;
  *(v111 + 8) = 0;
  *(v111 + 16) = -64;
  swift_willThrow();
  outlined consume of Data._Representation(v134, v135);

  return a7;
}

void DPFEvaluator.evaluateLeaves(inputs:nonce:leafCorrections:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v99 = a3;
  v103 = a2;
  v94 = type metadata accessor for Data.Iterator();
  v9 = *(v94 - 8);
  v10 = MEMORY[0x28223BE20](v94);
  v93 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a5 + 16);
  v98 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v118 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v117 = &v82 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v82 - v18;
  MEMORY[0x28223BE20](v17);
  v104 = &v82 - v20;
  v113 = *v5;
  v22 = *(v5 + 16);
  v21 = *(v5 + 24);
  v95 = *(v5 + 40);
  v97 = a5;
  v120 = *(a5 + 32);
  v24 = type metadata accessor for SiblingLeafCorrections(0, v12, v120, v23);
  v96 = a4;
  v25 = MEMORY[0x2743B2830](a4, v24);
  if (v25 != v22)
  {
    v77 = v25;
    lazy protocol witness table accessor for type EvaluatorError and conformance EvaluatorError();
    swift_allocError();
    *v78 = v22;
    *(v78 + 8) = v77;
    *(v78 + 16) = 2;
    swift_willThrow();
    return;
  }

  v124 = static Array._allocateUninitialized(_:)();
  v26 = *(a1 + 16);
  v112 = v21;
  if ((v26 * v21) >> 64 != (v26 * v21) >> 63)
  {
    goto LABEL_60;
  }

  v115 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(v26 * v21);
  if (v26)
  {
    v27 = v9;
    v28 = 0;
    v92 = a1 + 32;
    v111 = v98 + 8;
    v29 = v120;
    v91 = v120 + 64;
    v86 = (v27 + 8);
    v90 = v99 >> 62;
    v30 = __OFSUB__(HIDWORD(v103), v103);
    v84 = v30;
    v83 = HIDWORD(v103) - v103;
    v85 = BYTE6(v99);
    v102 = (v98 + 16);
    v109 = (v98 + 32);
    v31 = v112;
    v88 = v22;
    v87 = v26;
    v89 = v12;
    do
    {
      v32 = (v92 + 32 * v28);
      v34 = v32[1];
      v33 = v32[2];
      v35 = v32[3];
      if (*(v35 + 16) != v22)
      {
        v79 = v32[2];
        outlined copy of Data._Representation(v32[1], v79);

        v80 = *(v35 + 16);
        lazy protocol witness table accessor for type EvaluatorError and conformance EvaluatorError();
        swift_allocError();
        *v81 = v22;
        *(v81 + 8) = v80;
        *(v81 + 16) = -126;
        swift_willThrow();
        outlined consume of Data._Representation(v34, v79);

        return;
      }

      v101 = v28;
      v121 = *v32;
      v108 = v33;
      outlined copy of Data._Representation(v34, v33);

      v36 = v104;
      v119 = *(v29 + 8);
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      v37 = specialized Array.init(repeating:count:)(v36, v31, v12);
      v106 = v35;
      v38 = v98;
      v110 = *(v98 + 8);
      v110(v36, v12);
      v123 = v37;
      Array._makeMutableAndUnique()();
      v39 = v123;
      if (_swift_isClassOrObjCExistentialType())
      {
        v40 = v39 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v40 = v39;
      }

      v5 = *(v40 + 16);
      if (_swift_isClassOrObjCExistentialType())
      {
        v41 = v39 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v41 = v39;
      }

      v42 = v120;
      v22 = (v41 + ((*(v38 + 80) + 32) & ~*(v38 + 80)));
      v122[0] = v22;
      v122[1] = v5;
      v43 = *(v97 + 24);
      v44 = *(v97 + 40);
      v107 = v34;
      v45 = v105;
      closure #1 in DPFEvaluator.evaluateLeaves(inputs:nonce:leafCorrections:)(v122, v96, v121, v34, v108, v106, v12);
      v105 = v45;
      if (v45)
      {
        goto LABEL_61;
      }

      _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lF(v122, v22, v5);
      v5 = v12;
      v46 = (*(v42 + 64))(v12, v42);
      v47 = v102;
      if ((v46 * v31) >> 64 != (v46 * v31) >> 63)
      {
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
        _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lF(v122, v22, v5);
        __break(1u);
        return;
      }

      v48 = v108;
      v49 = v108 >> 62;
      v114 = v44;
      v121 = v46 * v31;
      if ((v108 >> 62) > 1)
      {
        v50 = v107;
        if (v49 != 2)
        {
          goto LABEL_32;
        }

        v52 = *(v107 + 16);
        v51 = *(v107 + 24);
        v5 = v51 - v52;
        if (__OFSUB__(v51, v52))
        {
          goto LABEL_57;
        }
      }

      else
      {
        v50 = v107;
        if (!v49)
        {
          v5 = BYTE6(v108);
          if (!BYTE6(v108))
          {
            goto LABEL_32;
          }

          goto LABEL_30;
        }

        if (__OFSUB__(HIDWORD(v107), v107))
        {
          goto LABEL_56;
        }

        v5 = HIDWORD(v107) - v107;
      }

      outlined copy of Data._Representation(v107, v108);
      v50 = v107;
      v48 = v108;
      if (!v5)
      {
LABEL_32:
        outlined consume of Data._Representation(v50, v48);
        v116 = MEMORY[0x277D84F90];
        goto LABEL_33;
      }

LABEL_30:
      v22 = v50;
      v53 = v48;
      v116 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(v5, 0);
      v54 = v43;
      v55 = v93;
      v56 = Data._copyContents(initializing:)();
      v57 = v53;
      v47 = v102;
      outlined consume of Data._Representation(v22, v57);
      v58 = v55;
      v43 = v54;
      v44 = v114;
      (*v86)(v58, v94);
      if (v56 != v5)
      {
        goto LABEL_54;
      }

LABEL_33:
      if (v90 > 1)
      {
        if (v90 != 2)
        {
          goto LABEL_43;
        }

        v60 = *(v103 + 16);
        v59 = *(v103 + 24);
        v5 = v59 - v60;
        if (__OFSUB__(v59, v60))
        {
          goto LABEL_58;
        }
      }

      else
      {
        v5 = v85;
        if (!v90)
        {
          goto LABEL_40;
        }

        v5 = v83;
        if (v84)
        {
          goto LABEL_59;
        }
      }

      outlined copy of Data._Representation(v103, v99);
LABEL_40:
      if (!v5)
      {
LABEL_43:
        outlined consume of Data._Representation(v103, v99);
        v22 = MEMORY[0x277D84F90];
        v67 = v120;
        goto LABEL_44;
      }

      v22 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(v5, 0);
      v61 = v93;
      v62 = v43;
      v63 = v103;
      v64 = v99;
      v100 = Data._copyContents(initializing:)();
      v65 = v63;
      v43 = v62;
      v44 = v114;
      v66 = v64;
      v47 = v102;
      v67 = v120;
      outlined consume of Data._Representation(v65, v66);
      (*v86)(v61, v94);
      if (v100 != v5)
      {
        goto LABEL_55;
      }

LABEL_44:
      v68 = static BatchedExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:generating:)(v116, v95, v22, v121 >> 2, v43, v44);

      v100 = v68;
      v69 = v68;
      v5 = v89;
      v116 = static FieldElement.randomVectorBatched<A>(count:using:)(v31, v69, v89, v43, v67, v44);
      if (v31 < 0)
      {
        goto LABEL_53;
      }

      v70 = v110;
      v12 = v5;
      v71 = v104;
      if (v31)
      {
        v72 = 0;
        v114 = v123;
        do
        {
          Array.subscript.getter();
          v73 = v117;
          Array.subscript.getter();
          v74 = v118;
          v121 = *v47;
          (v121)(v118, v71, v12);
          FieldElement.init(other:)(v74, v12, v120);
          dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
          v70(v73, v12);
          v70(v71, v12);
          if (v113)
          {
            v75 = v117;
            dispatch thunk of static AdditiveArithmetic.zero.getter();
            v76 = v118;
            (v121)(v118, v75, v12);
            FieldElement.init(other:)(v76, v12, v120);
            dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
            v70 = v110;
            v110(v75, v12);
            v70(v19, v12);
            (*v109)(v19, v71, v12);
          }

          ++v72;
          (v121)(v71, v19, v12);
          Array.append(_:)();
          v70(v19, v12);
          v31 = v112;
        }

        while (v112 != v72);
      }

      v28 = v101 + 1;

      swift_unknownObjectRelease();
      outlined consume of Data._Representation(v107, v108);

      v22 = v88;
      v29 = v120;
    }

    while (v28 != v87);
  }
}

uint64_t closure #1 in DPFEvaluator.evaluateLeaves(inputs:nonce:leafCorrections:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[2] = a1;
  v20 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v19[3] = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v8;
  *&v29 = v9;
  v25 = v10;
  type metadata accessor for SiblingLeafCorrections(255, v12, v10, v11);
  v13 = type metadata accessor for Array();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySbGMd, &_sSaySbGMR);
  WitnessTable = swift_getWitnessTable();
  v16 = lazy protocol witness table accessor for type [Bool] and conformance [A]();
  zip<A, B>(_:_:)();
  v29 = v26;
  v30 = v13;
  v31 = v14;
  v32 = WitnessTable;
  v33 = v16;
  type metadata accessor for Zip2Sequence();
  Zip2Sequence.makeIterator()();
  v23 = v14;
  v24 = v13;
  *&v26 = v13;
  *(&v26 + 1) = v14;
  v21 = v16;
  v22 = WitnessTable;
  v27 = WitnessTable;
  v28 = v16;
  type metadata accessor for Zip2Sequence.Iterator();
  Zip2Sequence.Iterator.next()();
  if (v29)
  {
    v17 = BYTE8(v29);
    v34 = v20 + 8;
    do
    {
      if (v17)
      {
        SiblingLeafCorrections.count.getter();
      }

      *&v26 = v24;
      *(&v26 + 1) = v23;
      v27 = v22;
      v28 = v21;
      type metadata accessor for Zip2Sequence.Iterator();
      Zip2Sequence.Iterator.next()();
      v17 = BYTE8(v29);
    }

    while (v29);
  }
}

void _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lF(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    if (*a1 == a2)
    {
      if (a1[1] == a3)
      {
        type metadata accessor for Array();
        destructiveProjectEnumData for SeedCtrlUnadjustedError();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t specialized Deque._Storage._ensureUnique(isUnique:minimumCapacity:linearGrowth:)(char a1, Swift::Int to, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= to)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal12_DequeBufferCy4VDAF19EvaluatorLevelInputVGMd, &_s19CollectionsInternal12_DequeBufferCy4VDAF19EvaluatorLevelInputVGMR);
    v9 = swift_allocObject();
    v12 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v12;
    if (v12 >= 1)
    {
      specialized closure #2 in Deque._UnsafeHandle.copyElements()(v9 + 16, v9 + 40, v5, v4 + 40);
    }
  }

  else
  {
    Deque._Storage._growCapacity(to:linearly:)(to, a3 & 1);
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal12_DequeBufferCy4VDAF19EvaluatorLevelInputVGMd, &_s19CollectionsInternal12_DequeBufferCy4VDAF19EvaluatorLevelInputVGMR);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 40;
      if (v10 < 40)
      {
        v11 = v10 - 9;
      }

      *(v9 + 16) = v11 >> 5;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        specialized closure #2 in Deque._UnsafeHandle.moveElements(minimumCapacity:)(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal12_DequeBufferCy4VDAF19EvaluatorLevelInputVGMd, &_s19CollectionsInternal12_DequeBufferCy4VDAF19EvaluatorLevelInputVGMR);
      v9 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v9);
      v14 = v13 - 40;
      if (v13 < 40)
      {
        v14 = v13 - 9;
      }

      v15 = *(v4 + 24);
      *(v9 + 16) = v14 >> 5;
      *(v9 + 24) = v15;
      *(v9 + 32) = 0;
      if (v15 >= 1)
      {
        specialized closure #2 in Deque._UnsafeHandle.copyElements(minimumCapacity:)(v9 + 16, v9 + 40, v5, v4 + 40);
      }
    }
  }

  *v3 = v9;
  return result;
}

void *specialized closure #1 in Deque.append(_:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = result[1];
  v6 = result[2];
  v9 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v9)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v8, *result);
      if (v8 < *result || (v8 -= *result, !v9))
      {
LABEL_9:
        v10 = (a2 + 32 * v8);
        *v10 = a3;
        v10[1] = a4;
        v10[2] = a5;
        v10[3] = a6;
        v11 = result[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          result[1] = v12;
          outlined copy of Data._Representation(a4, a5);
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v8 < 0)
    {
      v9 = __OFADD__(v8, *result);
      v8 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t specialized Deque._Storage._makeUniqueCopy()()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal12_DequeBufferCy4VDAF19EvaluatorLevelInputVGMd, &_s19CollectionsInternal12_DequeBufferCy4VDAF19EvaluatorLevelInputVGMR);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    specialized closure #2 in Deque._UnsafeHandle.copyElements()(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

uint64_t specialized closure #2 in Deque._UnsafeHandle.copyElements()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void specialized closure #2 in Deque._UnsafeHandle.moveElements(minimumCapacity:)(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[32 * v4];
  if (v12 != __dst || &v12[32 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 32 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[32 * v8];
  if (v16 != v11 || v16 >= &v11[32 * v7])
  {

    memmove(v16, v11, 32 * v7);
  }
}

uint64_t specialized closure #2 in Deque._UnsafeHandle.copyElements(minimumCapacity:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void *specialized closure #1 in closure #1 in Deque._copyToContiguousArray()(void *result, uint64_t a2, void *a3, void *a4)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = result[1];
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (__OFSUB__(v8, v5))
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v11 = *result - v4;
    v9 = a2;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = result[1];
  }

  v15 = v5 >= v8;
  if (v11 < 0)
  {
    goto LABEL_24;
  }

  if (a2 && v11)
  {
    result = swift_arrayInitWithCopy();
  }

  v12 = *a4 + v11;
  if (__OFADD__(*a4, v11))
  {
    goto LABEL_25;
  }

  *a4 = v12;
  if (v15)
  {
    return result;
  }

  if (__OFADD__(v11, v10))
  {
    goto LABEL_27;
  }

  if (v11 + v10 < v11)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    __break(1u);
    return result;
  }

  if (*a3)
  {
    result = (*a3 + 32 * v11);
  }

  else
  {
    result = 0;
  }

  if (v9)
  {
    if (v10)
    {
      result = swift_arrayInitWithCopy();
      v12 = *a4;
    }
  }

  v13 = __OFADD__(v12, v10);
  v14 = v12 + v10;
  if (v13)
  {
    goto LABEL_29;
  }

  *a4 = v14;
  return result;
}

unint64_t lazy protocol witness table accessor for type CorrectionMissingReason and conformance CorrectionMissingReason()
{
  result = lazy protocol witness table cache variable for type CorrectionMissingReason and conformance CorrectionMissingReason;
  if (!lazy protocol witness table cache variable for type CorrectionMissingReason and conformance CorrectionMissingReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CorrectionMissingReason and conformance CorrectionMissingReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CorrectionMissingReason and conformance CorrectionMissingReason;
  if (!lazy protocol witness table cache variable for type CorrectionMissingReason and conformance CorrectionMissingReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CorrectionMissingReason and conformance CorrectionMissingReason);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CorrectionMissingReason(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EvaluatorID and conformance EvaluatorID()
{
  result = lazy protocol witness table cache variable for type EvaluatorID and conformance EvaluatorID;
  if (!lazy protocol witness table cache variable for type EvaluatorID and conformance EvaluatorID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EvaluatorID and conformance EvaluatorID);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EvaluatorError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 17))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for EvaluatorError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 16) = 0;
    *result = a2 - 61;
    *(result + 8) = 0;
    if (a3 >= 0x3D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t getEnumTag for EvaluatorError(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t destructiveInjectEnumTag for EvaluatorError(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t type metadata instantiation function for DPFEvaluator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for DPFEvaluator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DPFEvaluator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined copy of PreambleError(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 5 <= 6)
  {
  }

  return result;
}

uint64_t outlined copy of Prio3Error(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t outlined copy of FLPTypeError(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t outlined copy of LeafParentError(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 <= 3)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Bool] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Bool] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Bool] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySbGMd, &_sSaySbGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Bool] and conformance [A]);
  }

  return result;
}

uint64_t PreamblePublicShare.init(inner:leaf:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

VDAF::PreamblePublicShareDecodableParameter __swiftcall PreamblePublicShareDecodableParameter.init(dimensionBitCount:keptBlockCount:seedSize:blockSize:)(Swift::Int dimensionBitCount, Swift::Int keptBlockCount, Swift::Int seedSize, Swift::Int blockSize)
{
  v5 = 63 - __clz(blockSize);
  v6 = __OFSUB__(dimensionBitCount, v5);
  v7 = dimensionBitCount - v5;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *v4 = keptBlockCount;
    v4[1] = seedSize;
    v4[2] = blockSize;
    v4[3] = v7;
  }

  result.innerLevelCount = blockSize;
  result.blockSize = seedSize;
  result.innerCorrections.seedSize = keptBlockCount;
  result.innerCorrections.keptBlockCount = dimensionBitCount;
  return result;
}

uint64_t PreamblePublicShare.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v12 + 32) == 1)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v18 = 0;
    v18[1] = 0;
    swift_willThrow();
    return (*(v11 + 8))(v10, a4);
  }

  v63 = v6;
  v54 = v13;
  v55 = v14;
  v51 = v15;
  v21 = *v12;
  v20 = *(v12 + 8);
  v22 = *(v12 + 24);
  v53 = *(v12 + 16);
  v64 = v22;
  (*(v11 + 16))(&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v10, a4);
  ArraySlice.init<A>(_:)();
  v23 = v20 * v21;
  v62 = v20;
  if ((v20 * v21) >> 64 != (v20 * v21) >> 63)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v21 + 0x4000000000000000 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v24 = 2 * v21 + 7;
  if (__OFADD__(2 * v21, 7))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v24 < 0)
  {
    v24 = 2 * v21 + 14;
  }

  v25 = v24 >> 3;
  v26 = v21 * (v24 >> 3);
  if ((v21 * v25) >> 64 != v26 >> 63)
  {
    goto LABEL_29;
  }

  v27 = v23 + v26;
  if (__OFADD__(v23, v26))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v61 = v10;
  v10 = v64 * v27;
  if ((v64 * v27) >> 64 != (v64 * v27) >> 63)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v60 = v11;
  v56 = a4;
  v28 = v64;
  v29 = specialized Collection.prefix(_:)();
  v58 = v31;
  v59 = v30;
  v57 = v32;
  v33 = specialized Collection.dropFirst(_:)();
  v10 = v34;
  v8 = v35;
  v52 = v36;
  *&v67 = v21;
  *(&v67 + 1) = v62;
  v68 = 0;
  v69 = v28;
  v70 = v27;
  v71 = 0;
  swift_unknownObjectRetain();
  v37 = v63;
  v38 = _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA16InnerCorrectionsV_s10ArraySliceVyANGTt1B5(v29, v59, v58, v57, &v67);
  v7 = v37;
  if (v37)
  {
    (*(v60 + 8))(v61, v56);
    return swift_unknownObjectRelease();
  }

  v39 = v33;
  v63 = v21;
  v64 = v38;
  v11 = v60;
  v17 = v52;
  if ((v52 & 1) == 0)
  {
    swift_unknownObjectRetain();
    v40 = v53;
    v21 = v8;
LABEL_15:
    specialized _copyCollectionToContiguousArray<A>(_:)(v39, v10, v21, v17);
    v42 = v41;
    v43 = v61;
    goto LABEL_22;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v44 = swift_dynamicCastClass();
  v21 = v8;
  if (!v44)
  {
    swift_unknownObjectRelease();
    v44 = MEMORY[0x277D84F90];
  }

  v45 = *(v44 + 16);

  v46 = (v17 >> 1) - v8;
  if (__OFSUB__(v17 >> 1, v8))
  {
    goto LABEL_32;
  }

  v8 = v39;
  if (v45 != v46)
  {
LABEL_33:
    swift_unknownObjectRelease();
    v40 = v53;
    v39 = v8;
    goto LABEL_15;
  }

  v42 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v43 = v61;
  v40 = v53;
  if (v42)
  {
    goto LABEL_23;
  }

  v42 = MEMORY[0x277D84F90];
LABEL_22:
  swift_unknownObjectRelease();
LABEL_23:
  v72 = v42;
  v65[0] = v63;
  v65[1] = v40;
  v66 = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277D83980]);
  v48 = LeafCorrections.init<A>(from:parameter:)(&v72, v65, v54, v47, v55);
  if (v7)
  {
    (*(v11 + 8))(v43, v56);

    return swift_unknownObjectRelease();
  }

  else
  {
    v49 = v48;
    (*(v11 + 8))(v43, v56);
    result = swift_unknownObjectRelease();
    v50 = v51;
    *v51 = v64;
    v50[1] = v49;
  }

  return result;
}

uint64_t PreamblePublicShare.keptBlockCount.getter()
{
  if (*(*v0 + 16))
  {
    return *(*(*v0 + 32) + 16);
  }

  else
  {
    return 1;
  }
}

uint64_t static PreamblePublicShare.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF16InnerCorrectionsV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return static LeafCorrections.== infix(_:_:)(v6, v7, a3, a4);
}

uint64_t static LeafCorrections.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SiblingLeafCorrections(0, a3, a4, a4);
  swift_getWitnessTable();

  return static Array<A>.== infix(_:_:)();
}

__n128 PreamblePublicShareDecodableParameter.innerCorrections.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

VDAF::InnerCorrectionsDecodableParameter __swiftcall InnerCorrectionsDecodableParameter.init(keptBlockCount:seedSize:)(Swift::Int keptBlockCount, Swift::Int seedSize)
{
  *v2 = keptBlockCount;
  v2[1] = seedSize;
  result.seedSize = seedSize;
  result.keptBlockCount = keptBlockCount;
  return result;
}

uint64_t InnerCorrectionsDecodableParameter.encodedLength.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 * *v0;
  if ((v2 * *v0) >> 64 != v3 >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v1 + 0x4000000000000000 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = 2 * v1 + 7;
  if (__OFADD__(2 * v1, 7))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 0)
  {
    v4 = 2 * v1 + 14;
  }

  v5 = v4 >> 3;
  v6 = v1 * (v4 >> 3);
  if ((v1 * v5) >> 64 != v6 >> 63)
  {
    goto LABEL_12;
  }

  result = v3 + v6;
  if (__OFADD__(v3, v6))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t LeafCorrections.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v11 + 16) == 1)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v15 = 0;
    v15[1] = 0;
    swift_willThrow();
    (*(v10 + 8))(a1, a4);
    return a5;
  }

  v23 = v12;
  v26 = v5;
  v17 = *v11;
  v16 = v11[1];
  result = (a5[8])(a3, a5);
  v19 = v16 * result;
  if ((v16 * result) >> 64 == (v16 * result) >> 63)
  {
    (*(v10 + 16))(v14, a1, a4);
    v24[0] = 1;
    v24[1] = v17;
    v24[2] = v19;
    v25 = 0;
    v21 = type metadata accessor for SiblingLeafCorrections(0, a3, a5, v20);
    a5 = Array<A>.init<A>(from:parameter:)(v14, v24, v21, a4, &protocol witness table for SiblingLeafCorrections<A>, v23);
    (*(v10 + 8))(a1, a4);
    return a5;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance PreamblePublicShare<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v9 = v5;
  return PreamblePublicShare.init<A>(from:parameter:)(a1, v8, *(a5 + 16), a3, *(a5 + 24), a4);
}

uint64_t PreamblePublicShare.encodedLength.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v7 = *v4;
  v6 = v4[1];
  v8 = *(*v4 + 16);
  if (v8)
  {
    v9 = v7[4];
    v10 = v7[5];

    v11 = InnerCorrections.encodedLength.getter(v9, v10);

    v8 = v7[2];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 * v8;
  if ((v11 * v8) >> 64 != (v11 * v8) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = LeafCorrections.encodedLength.getter(v6, *(v5 + 16), *(v5 + 24), a4);
  v14 = __OFADD__(v12, v13);
  result = v12 + v13;
  if (v14)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t LeafCorrections.encodedLength.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SiblingLeafCorrections(255, a2, a3, a4);
  v4 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return Collection<>.encodedLength.getter(v4, WitnessTable, &protocol witness table for SiblingLeafCorrections<A>);
}

uint64_t PreamblePublicShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay4VDAF16InnerCorrectionsVGMd, &_sSay4VDAF16InnerCorrectionsVGMR);
  v11 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [InnerCorrections] and conformance [A], &_sSay4VDAF16InnerCorrectionsVGMd, &_sSay4VDAF16InnerCorrectionsVGMR, MEMORY[0x277D83988]);
  Collection<>.encode<A>(into:)(a1, v10, a3, v11, a4, &protocol witness table for InnerCorrections);
  return LeafCorrections.encode<A>(into:)(a1, v9, *(a2 + 16), a3, *(a2 + 24), a4);
}

uint64_t LeafCorrections.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for SiblingLeafCorrections(0, a3, a5, a4);
  result = MEMORY[0x2743B2830](a2, v10);
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v12 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    return Collection<>.encode<A>(into:)(a1, v12, a4, WitnessTable, a6, &protocol witness table for SiblingLeafCorrections<A>);
  }

  return result;
}

unint64_t static InnerCorrections.== infix(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF8BitMasksC_Tt1g5(a2, a4);
}

unint64_t protocol witness for static Equatable.== infix(_:_:) in conformance InnerCorrections(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF8BitMasksC_Tt1g5(v2, v3);
}

uint64_t InnerCorrections.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v87 = *MEMORY[0x277D85DE8];
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v7 + 16) == 1)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v10 = 0;
    v10[1] = 0;
LABEL_33:
    swift_willThrow();
    (*(v6 + 8))(a1, v4);
    return v4;
  }

  v11 = *v7;
  if (*v7 < 1)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v47 + 8) = 0;
    *(v47 + 16) = 0;
    *v47 = v11;
    v48 = 2;
LABEL_32:
    *(v47 + 24) = v48;
    goto LABEL_33;
  }

  v12 = *(v7 + 8);
  if (v12 < 1)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v47 + 8) = 0;
    *(v47 + 16) = 0;
    *v47 = v12;
    v48 = 1;
    goto LABEL_32;
  }

  v13 = v12 * v11;
  if ((v12 * v11) >> 64 != (v12 * v11) >> 63)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v11 + 0x4000000000000000 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = 2 * v11 + 7;
  if (__OFADD__(2 * v11, 7))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v15 = v11 * (v14 >> 3);
  if ((v11 * (v14 >> 3)) >> 64 != v15 >> 63)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  v70 = v14 >> 3;
  v77 = v11;
  v71 = v3;
  v69 = v11 * (v14 >> 3);
  v16 = v13 + v15;
  if (__OFADD__(v13, v15))
  {
    goto LABEL_50;
  }

  v17 = a1;
  if (v16 != dispatch thunk of Collection.count.getter())
  {
    v81 = 0;
    v82 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v81 = 0xD000000000000022;
    v82 = 0x8000000270C53020;
    *__dst = v16;
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v50);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    *__dst = dispatch thunk of Collection.count.getter();
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v51);

    v52 = v81;
    v53 = v82;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v54 = v52;
    v54[1] = v53;
    swift_willThrow();
    (*(v6 + 8))(v17, v4);
    return v4;
  }

  v63 = v6;
  v18 = *(v6 + 16);
  v62 = a1;
  v18(v9, a1, v4);
  v64 = v4;
  ArraySlice.init<A>(_:)();
  v19 = specialized Collection.prefix(_:)();
  v74 = v20;
  v76 = v21;
  v23 = v22;
  v68 = specialized Collection.dropFirst(_:)();
  v67 = v24;
  v66 = v25;
  v65 = v26;
  v80 = MEMORY[0x277D84F90];
  swift_unknownObjectRetain();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v77, 0);
  v27 = 0;
  v73 = v23 & 1;
  v4 = v80;
  v75 = v23 >> 1;
  do
  {
    v28 = v27 * v12;
    if ((v27 * v12) >> 64 != (v27 * v12) >> 63)
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v29 = v28 + v12;
    if (__OFADD__(v28, v12))
    {
      goto LABEL_40;
    }

    if (v29 < v28)
    {
      goto LABEL_41;
    }

    if (v28 < v76)
    {
      goto LABEL_42;
    }

    if (v75 < v29)
    {
      goto LABEL_43;
    }

    if (v29 < 0)
    {
      goto LABEL_44;
    }

    v30 = v73 | (2 * v29);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, "xq");
    v83 = v31;
    v84 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance <A> ArraySlice<A>, &_ss10ArraySliceVys5UInt8VGMd, "xq", MEMORY[0x277CC9EE0]);
    v32 = swift_allocObject();
    v81 = v32;
    v33 = v74;
    v32[2] = v19;
    v32[3] = v33;
    v32[4] = v28;
    v32[5] = v30;
    v34 = __swift_project_boxed_opaque_existential_1(&v81, v31);
    v35 = v34[2];
    v36 = v34[3] >> 1;
    v37 = v36 - v35;
    if (__OFSUB__(v36, v35))
    {
      goto LABEL_45;
    }

    if (v37)
    {
      v38 = v34[1];
      if (v37 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v79 = v36 - v35;
        memcpy(__dst, (v38 + v35), v36 - v35);
        v41 = *__dst;
        v42 = v72 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v79 << 16)) << 32);
        swift_unknownObjectRetain();
        v72 = v42;
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        swift_unknownObjectRetain();
        v39 = __DataStorage.init(bytes:length:)();
        v40 = v39;
        if (v37 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v41 = swift_allocObject();
          *(v41 + 16) = 0;
          *(v41 + 24) = v37;
          v42 = v40 | 0x8000000000000000;
        }

        else
        {
          v41 = v37 << 32;
          v42 = v39 | 0x4000000000000000;
        }
      }
    }

    else
    {
      swift_unknownObjectRetain();
      v41 = 0;
      v42 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v81);
    v80 = v4;
    v44 = *(v4 + 16);
    v43 = *(v4 + 24);
    if (v44 >= v43 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
      v4 = v80;
    }

    ++v27;
    *(v4 + 16) = v44 + 1;
    v45 = v4 + 16 * v44;
    *(v45 + 32) = v41;
    *(v45 + 40) = v42;
    v46 = v77;
  }

  while (v77 != v27);
  v55 = specialized Collection.prefix(_:)();
  v75 = v56;
  v76 = v55;
  v74 = v57;
  v59 = v58;
  specialized Collection.dropFirst(_:)();
  v85[0] = v46;
  v85[1] = 0;
  v85[2] = v46;
  v85[3] = v70;
  v86 = 0;
  swift_unknownObjectRetain();
  v60 = v71;
  _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA8BitMasksC_s10ArraySliceVyANGTt1g5(v76, v75, v74, v59, v85);
  if (v60)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v63 + 8))(v62, v64);
  }

  else
  {
    (*(v63 + 8))(v62, v64);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v4;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance InnerCorrections@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = InnerCorrections.init<A>(from:parameter:)(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

uint64_t InnerCorrections.encodedLength.getter(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v22 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    result = v22;
    v6 = (a1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6 >> 62;
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v12 = v7 + 16;
          v10 = *(v7 + 16);
          v11 = *(v12 + 8);
          v9 = v11 - v10;
          if (__OFSUB__(v11, v10))
          {
            goto LABEL_25;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else if (v8)
      {
        v13 = __OFSUB__(HIDWORD(v7), v7);
        v14 = HIDWORD(v7) - v7;
        if (v13)
        {
          goto LABEL_26;
        }

        v9 = v14;
      }

      else
      {
        v9 = BYTE6(*v6);
      }

      v23 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        result = v23;
      }

      v6 += 2;
      *(result + 16) = v17;
      *(result + 8 * v16 + 32) = v9;
      --v3;
    }

    while (v3);
    goto LABEL_18;
  }

  result = MEMORY[0x277D84F90];
  v17 = *(MEMORY[0x277D84F90] + 16);
  if (v17)
  {
LABEL_18:
    v18 = 0;
    v19 = 32;
    while (1)
    {
      v20 = *(result + v19);
      v13 = __OFADD__(v18, v20);
      v18 += v20;
      if (v13)
      {
        break;
      }

      v19 += 8;
      if (!--v17)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = 0;
LABEL_21:

  v21 = specialized Collection<>.encodedLength.getter(a2);
  v13 = __OFADD__(v18, v21);
  result = v18 + v21;
  if (v13)
  {
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t InnerCorrections.encode<A>(into:)(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2[2];
  if (a3 >> 62)
  {
    goto LABEL_50;
  }

  result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    if (v9)
    {
      v11 = v9 == result;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      __break(1u);
      return result;
    }

    v12 = v9 & ~(v9 >> 63);
    if (!v12)
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v13 = a2[4];
    v14 = a2[5];
    v15 = v14 >> 62;
    if ((v14 >> 62) <= 1)
    {
      break;
    }

LABEL_14:
    if (v15 == 3 || !__OFSUB__(*(v13 + 24), *(v13 + 16)))
    {
      goto LABEL_16;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    if ((a3 & 0x8000000000000000) != 0)
    {
      v30 = a3;
    }

    else
    {
      v30 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v31 = a2;
    result = MEMORY[0x2743B2FD0](v30);
    a2 = v31;
  }

  if (v15 && __OFSUB__(HIDWORD(v13), v13))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_16:
  v16 = (a2 + 4);
  v17 = v9 - 1;
  if (v9 != 1)
  {
    v19 = __OFSUB__(HIDWORD(v13), v13);
    v14 = BYTE6(v14);
    --v12;
    v20 = a2 + 7;
    while (1)
    {
      if (!v12)
      {
        goto LABEL_45;
      }

      v25 = *(v20 - 1);
      v26 = *v20 >> 62;
      if (v26 <= 1)
      {
        break;
      }

      if (v26 == 2)
      {
        v29 = v25 + 16;
        v27 = *(v25 + 16);
        v28 = *(v29 + 8);
        v23 = __OFSUB__(v28, v27);
        v25 = v28 - v27;
        if (v23)
        {
          goto LABEL_47;
        }

LABEL_37:
        if (v15 <= 1)
        {
          goto LABEL_38;
        }

        goto LABEL_42;
      }

      v25 = 0;
      if (v15 <= 1)
      {
LABEL_38:
        v24 = v14;
        if (v15)
        {
          v24 = HIDWORD(v13) - v13;
          if (v19)
          {
            goto LABEL_48;
          }
        }

        goto LABEL_24;
      }

LABEL_42:
      if (v15 == 2)
      {
        v21 = *(v13 + 16);
        v22 = *(v13 + 24);
        v23 = __OFSUB__(v22, v21);
        v24 = v22 - v21;
        if (v23)
        {
          goto LABEL_49;
        }

LABEL_24:
        if (v25 != v24)
        {
          goto LABEL_46;
        }

        goto LABEL_25;
      }

      if (v25)
      {
        __break(1u);
        goto LABEL_45;
      }

LABEL_25:
      --v12;
      v20 += 2;
      if (!--v17)
      {
        goto LABEL_17;
      }
    }

    if (!v26)
    {
      v25 = BYTE6(*v20);
      if (v15 <= 1)
      {
        goto LABEL_38;
      }

      goto LABEL_42;
    }

    v23 = __OFSUB__(HIDWORD(v25), v25);
    LODWORD(v25) = HIDWORD(v25) - v25;
    if (v23)
    {
      goto LABEL_13;
    }

    v25 = v25;
    goto LABEL_37;
  }

  do
  {
LABEL_17:
    v18 = *v16++;
    outlined copy of Data._Representation(v18, *(&v18 + 1));
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
    --v9;
  }

  while (v9);
  return BitCorrections.encode<A>(into:)(a1, a3, a4, a5);
}

Swift::Int Side.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x2743B3170](a1 & 1);
  return Hasher._finalize()();
}

uint64_t SiblingLeafCorrections.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v8 = specialized SiblingLeafCorrections.init<A>(from:parameter:)(a1, a3, a4, a5, a6);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v8;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance SiblingLeafCorrections<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v9 = specialized SiblingLeafCorrections.init<A>(from:parameter:)(a1, *(a4 + 16), a2, *(a4 + 24), a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t SiblingLeafCorrections.encodedLength.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return Collection<>.encodedLength.getter(v4, WitnessTable, *(a3 + 40));
}

uint64_t SiblingLeafCorrections.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = MEMORY[0x2743B2830](a2, a3);
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v11 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    return Collection<>.encode<A>(into:)(a1, v11, a4, WitnessTable, a6, *(a5 + 40));
  }

  return result;
}

uint64_t LeafCorrections.valueCorrections.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t LeafCorrections.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SiblingLeafCorrections(0, a3, a4, a4);
  Array.subscript.getter();
  return v5;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance LeafCorrections<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  result = LeafCorrections.init<A>(from:parameter:)(a1, a2, *(a4 + 16), a3, *(a4 + 24));
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t specialized Data.InlineData.init(count:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized SiblingLeafCorrections.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  return Array<A>.init<A>(from:)(v10, a2, a3, a4, a5);
}

unint64_t lazy protocol witness table accessor for type Side and conformance Side()
{
  result = lazy protocol witness table cache variable for type Side and conformance Side;
  if (!lazy protocol witness table cache variable for type Side and conformance Side)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Side and conformance Side);
  }

  return result;
}

uint64_t type metadata instantiation function for PreamblePublicShare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Leaf.init(suffix:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  *a4 = a1;
  v8 = type metadata accessor for Leaf(0, a3, a3, a5);
  v9 = *(*(a3 - 8) + 32);
  v10 = a4 + *(v8 + 28);

  return v9(v10, a2, a3);
}

uint64_t type metadata completion function for Leaf(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Leaf(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
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

void storeEnumTagSinglePayload for Leaf(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
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
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

uint64_t static PreamblePrepareState.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v8 = *a2;
  v9 = v6;

  LOBYTE(a4) = static OutputShare.== infix(_:_:)(&v9, &v8, a3, a4);

  return a4 & 1;
}

uint64_t PreamblePrepareState.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X5>, void *a6@<X8>)
{
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v16);
  OutputShare.init<A>(from:parameter:)(v15, a2, a3, a4, a5, &v19);
  result = (*(v13 + 8))(a1, a3);
  if (!v6)
  {
    *a6 = v19;
  }

  return result;
}

uint64_t PreamblePrepareState.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for OutputShare(0, *(a2 + 16), *(a2 + 24), a4);

  OutputShare.encode<A>(into:)(a1, v7, a3, a4);
}

uint64_t type metadata instantiation function for PreamblePrepareState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t PreambleInputShare.init<A>(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v10 = dispatch thunk of Collection.count.getter();
  v11 = *(a4 + 8);
  if (v10 == (v11)(a2, a4))
  {
    v12 = specialized Seed.init<A>(from:parameter:)(a1, a3, a5);
    result = (*(*(a3 - 8) + 8))(a1, a3);
    *a6 = v12;
  }

  else
  {
    _StringGuts.grow(_:)(24);
    type metadata accessor for PreambleInputShare(0, a2, a4, v14);
    v15 = _typeName(_:qualified:)();
    v17 = v16;

    MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
    v11(a2, a4);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    dispatch thunk of Collection.count.getter();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v19);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v20 = v15;
    v20[1] = v17;
    swift_willThrow();
    return (*(*(a3 - 8) + 8))(a1, a3);
  }

  return result;
}

uint64_t static PreambleInputShare.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t PreambleInputShare.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v16);
  PreambleInputShare.init<A>(from:)(v15, a2, a3, a4, a5, &v19);
  result = (*(v13 + 8))(a1, a3);
  if (!v6)
  {
    *a6 = v19;
  }

  return result;
}

uint64_t type metadata instantiation function for PreambleInputShare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Array.subscript.getter()
{
  return MEMORY[0x2821FC3A8]();
}

{
  return MEMORY[0x2821FC3C0]();
}

uint64_t dispatch thunk of BinaryInteger.init<A>(_:)()
{
  return MEMORY[0x2821FCD18]();
}

{
  return MEMORY[0x2821FCD20]();
}

uint64_t static FixedWidthInteger.random(in:)()
{
  return MEMORY[0x2821FD5B0]();
}

{
  return MEMORY[0x2821FD5B8]();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return MEMORY[0x2821FDE60]();
}

{
  return MEMORY[0x2821FDE68]();
}