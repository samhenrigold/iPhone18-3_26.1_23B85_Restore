uint64_t Polynomial.degree.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  v9 = *v1;
  v17[1] = *v1;
  type metadata accessor for Array();
  swift_getWitnessTable();
  result = Collection.isEmpty.getter();
  if (result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v11 = MEMORY[0x2743B2830](v9, v2);
  v12 = (v3 + 8);
  do
  {
    v13 = v11;
    if (v11-- < 1)
    {
      break;
    }

    Array.subscript.getter();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *v12;
    (*v12)(v6, v2);
    v16(v8, v2);
  }

  while ((v15 & 1) != 0);
  result = v13 - 1;
  if (__OFSUB__(v13, 1))
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t Polynomial.coefficients.getter(uint64_t a1)
{
  result = MEMORY[0x2743B2830](*v1, *(a1 + 16));
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    return Array.subscript.getter();
  }

  return result;
}

uint64_t Polynomial.init(coefficients:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  result = Collection.isEmpty.getter();
  if (result)
  {
    __break(1u);
  }

  else
  {
    *a2 = a1;
  }

  return result;
}

uint64_t Polynomial.init(coefficient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  getContiguousArrayStorageType<A>(for:)(a2, a2);
  v6 = *(a2 - 8);
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  (*(v6 + 16))(v7, a1, a2);
  _finalizeUninitializedArray<A>(_:)();
  Polynomial.init(coefficients:)(v8, &v10);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v10;
  return result;
}

uint64_t Polynomial.init(coefficient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  getContiguousArrayStorageType<A>(for:)(AssociatedTypeWitness, AssociatedTypeWitness);
  v9 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  (*(v9 + 16))(v10, a1, AssociatedTypeWitness);
  _finalizeUninitializedArray<A>(_:)();
  Polynomial.init(coefficients:)(v11, a2, a3, &v13);
  result = (*(v9 + 8))(a1, AssociatedTypeWitness);
  *a4 = v13;
  return result;
}

uint64_t Polynomial.init(coefficients:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v14 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  result = Collection.isEmpty.getter();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v14 = a1;
    MEMORY[0x28223BE20](result);
    v13[2] = a2;
    v13[3] = a3;
    v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in Polynomial.init(coefficients:), v13, v8, a2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);

    *a4 = v12;
  }

  return result;
}

uint64_t closure #1 in Polynomial.init(coefficients:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v11 - v7;
  (*(v9 + 16))(v11 - v7, a1);
  return FieldElement.init(_:)(v8, a2, a3);
}

uint64_t static Polynomial.interpolateUsingRootsOfUnity(values:length:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2743B2830](v11, v14);
  if (result > a2)
  {
    __break(1u);
  }

  else
  {
    v21 = a1;
    v16 = type metadata accessor for Array();
    swift_getWitnessTable();
    result = Collection.isEmpty.getter();
    if ((result & 1) == 0)
    {
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      v17 = specialized Array.init(repeating:count:)(v13, a2, a3);
      (*(v10 + 8))(v13, a3);
      v20 = a1;
      v21 = v17;
      WitnessTable = swift_getWitnessTable();
      v19 = swift_getWitnessTable();
      inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(&v20, a2, &v21, v16, v16, a3, WitnessTable, v19, WitnessTable, a4);
      return Polynomial.init(coefficients:)(v21, a5);
    }
  }

  __break(1u);
  return result;
}

uint64_t Polynomial.asConstant()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v9 = *v2;
  v13 = *v2;
  if ((Polynomial.degree.getter(a1) & 0x8000000000000000) == 0 && (v13 = v9, (result = Polynomial.degree.getter(a1)) != 0))
  {
    __break(1u);
  }

  else
  {
    v13 = v9;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
    v11 = *(v5 - 8);
    result = (*(v11 + 48))(v8, 1, v5);
    if (result != 1)
    {
      return (*(v11 + 32))(a2, v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t Polynomial.evaluate(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *v3;
  v12 = *v3;
  if (Polynomial.degree.getter(a2) < 0)
  {
    return dispatch thunk of static AdditiveArithmetic.zero.getter();
  }

  v12 = v7;
  v8 = *(a2 + 16);
  v9 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return evaluateUsingHorner<A, B>(_:atInput:)(&v12, a1, v9, v8, WitnessTable, *(a2 + 24), a3);
}

void *Polynomial.evaluate(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v7;
  v11 = *v3;
  v20 = *v3;
  if (Polynomial.degree.getter(v12) < 0)
  {

    return Polynomial.init()(v6, a3);
  }

  else
  {
    v20 = v10;
    if (Polynomial.degree.getter(a2) < 0)
    {
      Array.subscript.getter();
      return Polynomial.init(coefficient:)(v9, v6, a3);
    }

    else
    {
      v20 = v10;
      if (Polynomial.degree.getter(a2) >= 60)
      {
        v19 = v10;
        v20 = v11;
        v17 = type metadata accessor for Array();
        WitnessTable = swift_getWitnessTable();
        evaluateUsingDFT<A, B, C>(_:atInput:)(&v20, &v19, v17, v17, v6, WitnessTable, WitnessTable, *(a2 + 24));
      }

      else
      {
        v19 = v10;
        v20 = v11;
        v13 = type metadata accessor for Array();
        v14 = swift_getWitnessTable();
        evaluateUsingHorner<A, B, C>(_:atInput:)(&v20, &v19, v13, v13, v6, v14, v14, *(a2 + 24));
      }

      return Polynomial.init(coefficients:)(v15, a3);
    }
  }
}

uint64_t Polynomial.evaluateUsingRootsOfUnity(count:)(unint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  v10 = *(v9 + 24);

  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v11 = specialized Array.init(repeating:count:)(v7, a1, v4);
  (*(v5 + 8))(v7, v4);
  v16 = v8;
  v17 = v11;
  v12 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  discreteFourierTransform<A, B, C>(input:size:output:)(&v16, a1, &v17, v12, v12, v4, WitnessTable, v14, WitnessTable, v10);

  return v17;
}

void static Polynomial.+ infix(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v64 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v63 = &v52 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v62 = &v52 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v61 = &v52 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  v17 = *v14;
  v19 = *v18;
  v21 = v20;
  v23 = type metadata accessor for Polynomial(0, v22, v20, v20);
  v67 = v17;
  v69 = v17;
  if ((Polynomial.degree.getter(v23) & 0x8000000000000000) == 0)
  {
    v69 = v19;
    if ((Polynomial.degree.getter(v23) & 0x8000000000000000) == 0)
    {
      v66 = v19;
      v24 = v67;
      v69 = v67;
      v25 = Polynomial.degree.getter(v23);
      v68 = v66;
      v26 = Polynomial.degree.getter(v23);
      if (v26 >= v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = v26;
      }

      v69 = v24;
      v28 = Polynomial.degree.getter(v23);
      v68 = v66;
      v29 = Polynomial.degree.getter(v23);
      if (v29 <= v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = v29;
      }

      v58 = *(v21 + 8);
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      v65 = v30;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
      }

      else
      {
        v31 = specialized Array.init(repeating:count:)(v16, v30 + 1, a2);
        v56 = *(v5 + 8);
        v57 = v5 + 8;
        v56(v16, a2);
        v69 = v31;
        if ((v27 & 0x8000000000000000) == 0)
        {
          v53 = a3;
          v54 = v21;
          v32 = 0;
          v55 = v5 + 16;
          v59 = v5 + 40;
          v60 = v27;
          while (1)
          {
            Array.subscript.getter();
            v33 = v62;
            Array.subscript.getter();
            v34 = v63;
            (*(v5 + 16))(v63, v16, a2);
            v35 = v61;
            FieldElement.init(other:)(v34, a2, v54);
            dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
            v36 = v33;
            v37 = v56;
            v56(v36, a2);
            v38 = v16;
            v37(v16, a2);
            type metadata accessor for Array();
            Array._makeMutableAndUnique()();
            v39 = v69;
            Array._checkSubscript_mutating(_:)(v32);
            isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
            v41 = v39 & 0xFFFFFFFFFFFFFF8;
            if ((isClassOrObjCExistentialType & 1) == 0)
            {
              v41 = v39;
            }

            v42 = (*(v5 + 80) + 32) & ~*(v5 + 80);
            v43 = *(v5 + 72);
            v16 = *(v5 + 40);
            (v16)(v41 + v42 + v43 * v32, v35, a2);
            destructiveProjectEnumData for SeedCtrlUnadjustedError();
            if (v60 == v32)
            {
              break;
            }

            v44 = __OFADD__(v32++, 1);
            v16 = v38;
            if (v44)
            {
              __break(1u);
              break;
            }
          }

          v63 = v42;
          v45 = v60 + 1;
          if (!__OFADD__(v60, 1))
          {
            LODWORD(v62) = 0;
            while (1)
            {
              if (v45 < v65)
              {
                v46 = v45 + 1;
              }

              else
              {
                if ((v45 != v65) | v62 & 1)
                {
                  Polynomial.init(coefficients:)(v69, v53);
                  return;
                }

                LODWORD(v62) = 1;
                v46 = v65;
              }

              MEMORY[0x2743B2830](v67, a2);
              MEMORY[0x2743B2830](v66, a2);
              v47 = v64;
              Array.subscript.getter();
              Array._makeMutableAndUnique()();
              v48 = v69;
              Array._checkSubscript_mutating(_:)(v45);
              v49 = _swift_isClassOrObjCExistentialType();
              v50 = v48 & 0xFFFFFFFFFFFFFF8;
              if ((v49 & 1) == 0)
              {
                v50 = v48;
              }

              (v16)(&v63[v50 + v45 * v43], v47, a2);
              destructiveProjectEnumData for SeedCtrlUnadjustedError();
              v45 = v46;
            }
          }

          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }
  }

  Polynomial.init(coefficients:)(v51, a3);
}

uint64_t static Polynomial.+= infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *, uint64_t *, uint64_t, uint64_t))
{
  v6 = *a1;
  v8 = *a2;
  v9 = v6;
  a5(&v10, &v9, &v8, a3, a4);

  *a1 = v10;
  return result;
}

void *static Polynomial.* infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v8;
  v13 = *v12;
  v16 = type metadata accessor for Polynomial(0, v14, v15, v15);
  *&v50 = v11;
  if ((Polynomial.degree.getter(v16) & 0x8000000000000000) == 0)
  {
    *&v50 = v13;
    if ((Polynomial.degree.getter(v16) & 0x8000000000000000) == 0)
    {
      *&v50 = v11;
      v17 = Polynomial.degree.getter(v16);
      *&v48 = v13;
      result = Polynomial.degree.getter(v16);
      v19 = result + v17;
      if (__OFADD__(v17, result))
      {
        __break(1u);
      }

      else
      {
        v20 = (v19 + 1);
        if (!__OFADD__(v19, 1))
        {
          v42 = a4;
          *&v50 = v11;
          v21 = Polynomial.degree.getter(v16);
          *&v48 = v13;
          v22 = Polynomial.degree.getter(v16);
          if (v22 > v21)
          {
            v21 = v22;
          }

          dispatch thunk of static AdditiveArithmetic.zero.getter();
          if (v21 < 61)
          {
            v32 = specialized Array.init(repeating:count:)(v10, v20, a2);
            (*(v7 + 8))(v10, a2);
            v53[0] = v32;
            *&v50 = v11;
            v33 = Polynomial.degree.getter(v16);
            v52 = v11;
            *&v48 = v33;
            v34 = type metadata accessor for Array();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVySiGMd, "4\"");
            WitnessTable = swift_getWitnessTable();
            lazy protocol witness table accessor for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>();
            MutableCollection.subscript.getter();
            v41 = v50;
            v48 = v50;
            v49 = v51;
            *&v45 = v13;
            v36 = Polynomial.degree.getter(v16);
            v47 = v13;
            *&v43 = v36;
            MutableCollection.subscript.getter();
            v40 = v45;
            v43 = v45;
            v44 = v46;
            v37 = type metadata accessor for ArraySlice();
            v38 = swift_getWitnessTable();
            v39 = swift_getWitnessTable();
            convolveDirectly<A, B, C, D>(_:withKernel:result:)(&v48, &v43, v53, v37, v37, v34, a2, v38, v38, WitnessTable, v39, a3);
          }

          else
          {
            v23 = specialized FixedWidthInteger.nextPowerOfTwo.getter(v20);
            v24 = specialized Array.init(repeating:count:)(v10, v23, a2);
            (*(v7 + 8))(v10, a2);
            v53[0] = v24;
            *&v50 = v11;
            v25 = Polynomial.degree.getter(v16);
            v52 = v11;
            *&v48 = v25;
            v26 = type metadata accessor for Array();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVySiGMd, "4\"");
            v27 = swift_getWitnessTable();
            lazy protocol witness table accessor for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>();
            MutableCollection.subscript.getter();
            v41 = v50;
            v48 = v50;
            v49 = v51;
            *&v45 = v13;
            v28 = Polynomial.degree.getter(v16);
            v47 = v13;
            *&v43 = v28;
            MutableCollection.subscript.getter();
            v40 = v45;
            v43 = v45;
            v44 = v46;
            v29 = type metadata accessor for ArraySlice();
            v30 = swift_getWitnessTable();
            v31 = swift_getWitnessTable();
            convolveUsingDFT<A, B, C, D>(_:withKernel:result:)(&v48, &v43, v53, v29, v29, v26, a2, v30, v30, v27, v31, a3);
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return Polynomial.init(coefficients:)(v53[0], v42);
        }
      }

      __break(1u);
      return result;
    }
  }

  return Polynomial.init()(a2, a4);
}

uint64_t static Polynomial.* infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v71 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v70 = &v53 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v69 = &v53 - v15;
  v16 = *(a3 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v68 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v67 = &v53 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v53 - v21;
  v23 = *a2;
  v24 = a4;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v73 = a1;
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v77 = v16;
  v75 = *(v16 + 8);
  v76 = v16 + 8;
  v75(v22, a3);
  if (a2)
  {
    return Polynomial.init()(a3, a5);
  }

  v26 = type metadata accessor for Polynomial(0, a3, a4, v25);
  v79 = v23;
  if (Polynomial.degree.getter(v26) < 0)
  {
    return Polynomial.init()(a3, a5);
  }

  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v79 = v23;
  result = Polynomial.degree.getter(v26);
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v28 = specialized Array.init(repeating:count:)(v22, result + 1, a3);
  v75(v22, a3);
  v78 = v23;
  v79 = v28;
  result = Polynomial.degree.getter(v26);
  v66 = result;
  if (result < 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v54 = a5;
  v29 = swift_checkMetadataState();
  v30 = 0;
  v31 = a4[12];
  v64 = a4 + 12;
  v65 = v29;
  v32 = a4[11];
  v62 = a4 + 11;
  v63 = v31;
  v59 = *(AssociatedConformanceWitness + 56);
  v60 = AssociatedConformanceWitness + 56;
  v61 = v32;
  v58 = v77 + 16;
  ++v57;
  v56 = v77 + 40;
  v55 = v23;
  v33 = v67;
  v34 = v70;
  while (1)
  {
    Array.subscript.getter();
    v35 = v68;
    (*(v77 + 16))(v68, v73, a3);
    v36 = a3;
    v37 = a3;
    v38 = v24;
    FieldElement.init(other:)(v35, v36, v24);
    v39 = v24;
    v40 = v61;
    v61(v37, v39);
    v41 = v71;
    v40(v37, v38);
    v42 = v22;
    v43 = v69;
    v59(v34, v41);
    v44 = *v57;
    v45 = v41;
    v46 = AssociatedTypeWitness;
    (*v57)(v45, AssociatedTypeWitness);
    v44(v34, v46);
    v47 = v43;
    v22 = v42;
    a5 = v38;
    v48 = v38;
    a3 = v37;
    v63(v47, v37, v48);
    v75(v42, v37);
    type metadata accessor for Array();
    Array._makeMutableAndUnique()();
    v49 = v79;
    Array._checkSubscript_mutating(_:)(v30);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v51 = v49 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v51 = v49;
    }

    (*(v77 + 40))(v51 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v30, v33, v37);
    destructiveProjectEnumData for SeedCtrlUnadjustedError();
    if (v66 == v30)
    {
      break;
    }

    v52 = __OFADD__(v30++, 1);
    v24 = a5;
    if (v52)
    {
      __break(1u);
      return Polynomial.init()(a3, a5);
    }
  }

  return Polynomial.init(coefficients:)(v79, v54);
}

uint64_t static Polynomial.*= infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *a1;
  static Polynomial.* infix(_:_:)(a2, &v7, a3, a4, &v6);

  *a1 = v6;
  return result;
}

uint64_t static Polynomial.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v26 - v9;
  v11 = *v8;
  v13 = *v12;
  v27 = *v8;
  v26[1] = v14;
  v16 = type metadata accessor for Polynomial(0, v15, v14, v14);
  v17 = Polynomial.degree.getter(v16);
  v26[0] = v13;
  v26[2] = v13;
  if (v17 == Polynomial.degree.getter(v16))
  {
    v27 = v11;
    v18 = Polynomial.degree.getter(v16);
    LOBYTE(v16) = 0;
    v19 = 0;
    v20 = (v4 + 8);
    do
    {
      if (v19 < v18)
      {
        v21 = v19 + 1;
      }

      else
      {
        v24 = (v19 != v18) | v16;
        v16 = 1;
        v21 = v18;
        if (v24)
        {
          return v16;
        }
      }

      Array.subscript.getter();
      Array.subscript.getter();
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *v20;
      (*v20)(v7, a3);
      v23(v10, a3);
      v19 = v21;
    }

    while ((v22 & 1) != 0);
  }

  return 0;
}

uint64_t static Polynomial.rangeCheck(start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v91 = a5;
  swift_getAssociatedTypeWitness();
  v122 = a4;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v121 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v9 = *(v121 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v127 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v110 = &v89 - v11;
  v109 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 24) + 16);
  v108 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v108);
  v107 = &v89 - v12;
  v13 = swift_checkMetadataState();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v132 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v131 = &v89 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v120 = &v89 - v20;
  MEMORY[0x28223BE20](v19);
  v134 = &v89 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v125 = *(TupleTypeMetadata2 - 8);
  v22 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v118 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v117 = &v89 - v24;
  v25 = *(v9 + 8);
  v26 = type metadata accessor for Range();
  v124 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v116 = &v89 - v27;
  v111 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v136 = v9;
  v141[1] = v9;
  v141[2] = AssociatedConformanceWitness;
  v115 = AssociatedConformanceWitness;
  WitnessTable = swift_getWitnessTable();
  v92 = type metadata accessor for IndexingIterator();
  v29 = *(v92 - 8);
  v30 = MEMORY[0x28223BE20](v92);
  v139 = &v89 - v31;
  v114 = *(a3 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v105 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v104 = &v89 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v89 - v36;
  v137 = v13;
  result = dispatch thunk of static Comparable.< infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v39 = v122[9];
  v103 = v122 + 9;
  v102 = v39;
  v39(a3);
  Polynomial.init(coefficient:)(v37, a3, v141);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v100 = v37;
    v90 = v29;
    v101 = a3;
    v113 = v25;
    v40 = v14[2];
    v41 = v117;
    v42 = v137;
    v40(v117, a1, v137);
    v43 = TupleTypeMetadata2;
    v44 = &v41[*(TupleTypeMetadata2 + 48)];
    v129 = v40;
    v130 = v14 + 2;
    v40(v44, a2, v42);
    v45 = v125;
    v46 = *(v125 + 16);
    v47 = v118;
    v99 = v125 + 16;
    v98 = v46;
    v46(v118, v41, v43);
    v133 = v26;
    v48 = *(v43 + 48);
    v123 = v14[4];
    v49 = v116;
    v123(v116, v47, v42);
    v50 = v14[1];
    v51 = &v47[v48];
    v52 = v133;
    v50(v51, v42);
    v53 = *(v45 + 32);
    v125 = v45 + 32;
    v97 = v53;
    v53(v47, v41, v43);
    v54 = &v49[*(v52 + 36)];
    v55 = &v47[*(v43 + 48)];
    v112 = v14 + 4;
    v123(v54, v55, v42);
    v138 = v14 + 1;
    v50(v47, v42);
    v56 = v50;
    v57 = v124;
    v58 = v139;
    (*(v124 + 16))(v139, v49, v52);
    v135 = *(v92 + 36);
    Range<>.startIndex.getter();
    v59 = *(v57 + 8);
    v124 = v57 + 8;
    v96 = v59;
    v59(v49, v52);
    v95 = (v127 + 8);
    v94 = v114 + 16;
    v93 = v114 + 8;
    v60 = v120;
    v61 = v134;
    v128 = v50;
    while (1)
    {
      Range<>.endIndex.getter();
      v62 = v137;
      v63 = dispatch thunk of static Equatable.== infix(_:_:)();
      v56(v60, v62);
      if (v63)
      {
        result = (*(v90 + 8))(v58, v92);
        *v91 = v141[0];
        return result;
      }

      v64 = v135;
      v65 = v61;
      v66 = v137;
      v129(v65, &v58[v135], v137);
      v67 = v60;
      v68 = v123;
      v123(v67, &v58[v64], v66);
      Range<>.startIndex.getter();
      Range<>.endIndex.getter();
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((result & 1) == 0)
      {
        break;
      }

      v69 = v117;
      v70 = v137;
      v68(v117, v131, v137);
      v71 = TupleTypeMetadata2;
      v68(&v69[*(TupleTypeMetadata2 + 48)], v132, v70);
      v72 = v118;
      v98(v118, v69, v71);
      v73 = *(v71 + 48);
      v74 = v116;
      v68(v116, v72, v70);
      v75 = &v72[v73];
      v76 = v128;
      v128(v75, v70);
      v77 = v76;
      v97(v72, v69, v71);
      v78 = v133;
      v68((v74 + *(v133 + 36)), &v72[*(v71 + 48)], v70);
      v77(v72, v70);
      v60 = v120;
      specialized Collection._failEarlyRangeCheck(_:bounds:)(v120, v74, v78, WitnessTable);
      v96(v74, v78);
      v79 = v111;
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v80 = v110;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      dispatch thunk of Strideable.advanced(by:)();
      (*v95)(v80, v79);
      v77(v60, v70);
      v81 = v101;
      getContiguousArrayStorageType<A>(for:)(v101, v101);
      v82 = v114;
      v127 = *(v114 + 72);
      swift_allocObject();
      v126 = static Array._adoptStorage(_:count:)();
      v83 = v122;
      v84 = v100;
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      v129(v60, v134, v70);
      v85 = v104;
      FieldElement.init(_:)(v60, v81, v83);
      v86 = v105;
      (*(v82 + 16))(v105, v84, v81);
      FieldElement.init(other:)(v86, v81, v83);
      dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
      v87 = *(v82 + 8);
      v87(v85, v81);
      v87(v84, v81);
      v56 = v128;
      v58 = v139;
      v102(v81, v83);
      _finalizeUninitializedArray<A>(_:)();
      Polynomial.init(coefficients:)(v88, &v140);
      v141[3] = v140;
      v142 = v141[0];
      static Polynomial.* infix(_:_:)(&v142, v81, v83, v141);
      v61 = v134;

      v56(v61, v70);
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, "Vq");
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

unint64_t lazy protocol witness table accessor for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>()
{
  result = lazy protocol witness table cache variable for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>;
  if (!lazy protocol witness table cache variable for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss19PartialRangeThroughVySiGMd, "4\"");
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>);
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for Range();
  result = dispatch thunk of static Comparable.< infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t type metadata instantiation function for Polynomial(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void PINE.shard<A>(_:nonce:seedBytes:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v9 = *(a3 + 16);
  if (v9 != 16)
  {
    _StringGuts.grow(_:)(44);

    *&v133 = 0xD00000000000002FLL;
    *(&v133 + 1) = 0x8000000270C51F20;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v33);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v136 = v9;
LABEL_11:
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v35);

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v36 = v133;
    *(v36 + 16) = 1;
    swift_willThrow();
    return;
  }

  v10 = v7;
  v125 = a3;
  v126 = a2;
  v127 = v8;
  v119 = a1;
  v13 = *(a5 + 16);
  v14 = *(a5 + 32);
  v130 = *(a5 + 40);
  v131 = v13;
  v15 = *(a5 + 56);
  v16 = a5;
  v17 = *(*(a7 + 8) + 8);
  v128 = *(a5 + 64);
  v129 = v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (v19 != PINE.randomSizeForShard.getter(v16))
  {
    _StringGuts.grow(_:)(39);

    *&v133 = 0xD00000000000002ALL;
    *(&v133 + 1) = 0x8000000270C51F50;
    PINE.randomSizeForShard.getter(v16);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v34);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v136 = dispatch thunk of Collection.count.getter();
    goto LABEL_11;
  }

  v115 = v15;
  v116 = v14;
  v114 = a6;
  v113 = a7;
  v20 = PINE.splitSeedBytes<A>(_:)(a4, v16, a6, a7);
  v118 = v21;
  v22 = *(v20 + 16);
  v23 = MEMORY[0x277D84F90];
  v129 = v20;
  v123 = v24;
  v120 = v25;
  v121 = v7;
  if (v22)
  {
    v26 = v20;
    *&v117 = v16;
    *&v133 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v27 = v23;
    v28 = (v26 + 32);
    v29 = v22;
    do
    {
      v30 = *v28;
      *&v133 = v27;
      v32 = v27[2];
      v31 = v27[3];

      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
        v27 = v133;
      }

      v27[2] = v32 + 1;
      v27[v32 + 4] = v30;
      v28 += 4;
      --v29;
    }

    while (v29);
    v124 = v27;
    *&v133 = v23;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v37 = v23;
    v38 = v129;
    v39 = (v129 + 40);
    v40 = v22;
    do
    {
      v41 = *v39;
      *&v133 = v37;
      v43 = *(v37 + 16);
      v42 = *(v37 + 24);

      if (v43 >= v42 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
        v37 = v133;
      }

      *(v37 + 16) = v43 + 1;
      *(v37 + 8 * v43 + 32) = v41;
      v39 += 4;
      --v40;
    }

    while (v40);
    v122 = v37;
    *&v133 = v23;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v44 = v23;
    v45 = (v38 + 48);
    v46 = v22;
    do
    {
      v47 = *v45;
      *&v133 = v44;
      v49 = *(v44 + 16);
      v48 = *(v44 + 24);

      if (v49 >= v48 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
        v44 = v133;
      }

      *(v44 + 16) = v49 + 1;
      *(v44 + 8 * v49 + 32) = v47;
      v45 += 4;
      --v46;
    }

    while (v46);
    *&v133 = v23;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v50 = (v129 + 56);
    do
    {
      v51 = *v50;
      *&v133 = v23;
      v53 = *(v23 + 16);
      v52 = *(v23 + 24);

      if (v53 >= v52 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
        v23 = v133;
      }

      *(v23 + 16) = v53 + 1;
      *(v23 + 8 * v53 + 32) = v51;
      v50 += 4;
      --v22;
    }

    while (v22);
    v10 = v121;
    v16 = v117;
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
    v122 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
  }

  v136 = Array.init()();
  v54 = *(v16 + 76);
  v133 = v131;
  v134 = v130;
  v135 = v128;
  v55 = type metadata accessor for PINEMainCircuit(0, &v133);
  v56 = PINEMainCircuit.encodedMeasurementLength.getter(v55);
  *(&v117 + 1) = v131;
  v57 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(v56);
  WitnessTable = swift_getWitnessTable();
  PINECircuit.encodeMeasurementAndNormRangeCheck(raw:into:)(v126, &v136, v55, WitnessTable);
  if (v127)
  {

    return;
  }

  v109 = WitnessTable;
  v112 = v57;
  v110 = v55;
  v111 = v54;
  v59 = swift_getWitnessTable();
  *&v133 = v16;
  *(&v133 + 1) = *(&v117 + 1);
  v108 = v59;
  *&v134 = v59;
  v126 = v130;
  *(&v134 + 1) = v130;
  v60 = type metadata accessor for WraparoundJointRandomness(0, &v133);
  v61 = v10;
  v62 = v136;
  v107 = *v61;
  *&v117 = v16;
  v63 = swift_getWitnessTable();
  v64 = static JointRandomness.jointRandPartsAndLeaderShare(commitment:leaderJointRandBlind:helperJointRandBlinds:helperMeasurementSeeds:numOfAggregators:nonce:)(v62, v123, v44, v124, v107, v125, v60, v63);

  v103 = v64;
  v104 = WraparoundJointRandomness.__allocating_init(parts:)(v65);
  v105 = PINECircuit.appendWraparoundCheck<A>(into:random:)(&v136, v104, v55, WitnessTable);
  v66 = v16;
  v133 = v117;
  *&v134 = v108;
  *(&v134 + 1) = v130;
  v67 = type metadata accessor for VerificationJointRandomness(0, &v133);
  v68 = v136;
  v127 = 0;
  v69 = swift_getWitnessTable();
  v70 = static JointRandomness.jointRandPartsAndLeaderShare(commitment:leaderJointRandBlind:helperJointRandBlinds:helperMeasurementSeeds:numOfAggregators:nonce:)(v68, v120, v23, v124, v107, v125, v67, v69);
  v101 = v71;
  v72 = v70;

  v73 = v121;
  v109 = *(v121 + *(v117 + 84));
  v106 = VerificationJointRandomness.__allocating_init(count:numOfProofs:parts:)(3, v109, v72);
  v102 = v72;

  static Array.+= infix(_:_:)();

  LOBYTE(v133) = 3;
  v74 = specialized VDAFProtocol.domainSeparationTag(usage:)(&v133, v117, v108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_270C44550;
  v76 = *(v73 + *(v66 + 88));
  if ((v76 & 0x8000000000000000) != 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v77 = v127;
  v78 = v128;
  if (v76 > 0xFF)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  *(v75 + 32) = v76;
  if ((v109 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v109 > 0xFF)
  {
LABEL_49:
    __break(1u);
    return;
  }

  *(v75 + 33) = v109;
  v125 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(v118, v74, v75, v116, v115);

  v132 = Array.init()();
  v79 = v117;
  v80 = PINE.proofLength.getter(v117);
  Array.reserveCapacity(_:)(v80);
  if (!v76)
  {
LABEL_35:
    if (!v109)
    {
      v98 = v122;
LABEL_43:
      MEMORY[0x28223BE20](v81);
      v100[3] = *(&v131 + 1);
      v100[2] = *(&v117 + 1);
      v100[4] = v116;
      v100[7] = *(&v130 + 1);
      v100[5] = v114;
      v100[6] = v126;
      v100[8] = v115;
      v100[9] = v113;
      v100[10] = v128;
      v100[11] = v98;
      v100[12] = v121;
      v99 = v117;
      static VDAFProtocol.splitShare<A, B>(_:into:_:)(&v132, v107, partial apply for closure #5 in PINE.shard<A>(_:nonce:seedBytes:), v100, v117, *(&v117 + 1), v116, v108, v126, v115);

      PINE.inputSharesFrom(leaderMeasurementShare:leaderProofShare:leaderWraparoundJointRandBlind:leaderVerificationJointRandBlind:helperSeeds:)(v101, v132, v123, v120, v129, v99);

      swift_unknownObjectRelease();
      PINEPublicShare.init(wraparoundJointRandParts:verificationJointRandParts:)(v103, v102, &v133);

      *v119 = v133;

      return;
    }

    v92 = 0;
    while (1)
    {
      v127 = v77;
      v118 = v92 + 1;
      if (__OFADD__(v92, 1))
      {
        break;
      }

      v93 = VerificationJointRandomness.next()();
      v124 = swift_getWitnessTable();
      v94 = FullyLinearProof.proveRandLength.getter(v110, v124);
      v95 = static FieldElement.randomVector<A>(count:using:)(v94, v125, *(&v117 + 1));
      v96 = v136;
      v97 = swift_getWitnessTable();
      FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(&v132, v96, v95, v93, v110, v112, v124, v97);
      v77 = v127;
      if (v127)
      {
        goto LABEL_44;
      }

      ++v92;
      v98 = v122;
      if (v118 == v109)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

  v82 = v76;
  v83 = v130;
  v84 = v131;
  while (1)
  {
    v127 = *(v79 + 80);
    v133 = v84;
    v134 = v83;
    v135 = v78;
    v85 = type metadata accessor for PINENormEqualityCheckCircuit(0, &v133);
    v86 = swift_getWitnessTable();
    v87 = FullyLinearProof.proveRandLength.getter(v85, v86);
    v88 = static FieldElement.randomVector<A>(count:using:)(v87, v125, *(&v117 + 1));
    v89 = v136;
    v90 = Array.init()();
    v91 = swift_getWitnessTable();
    FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(&v132, v89, v88, v90, v85, v112, v86, v91);
    if (v77)
    {
      break;
    }

    --v82;
    v83 = v130;
    v84 = v131;
    v79 = v117;
    v78 = v128;
    if (!v82)
    {
      goto LABEL_35;
    }
  }

LABEL_44:

  swift_unknownObjectRelease();
}

uint64_t PINE.publicShare<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  return PINEPublicShare.init<A>(from:parameter:)(v8, *v4, 0, *(a2 + 32), a3, *(a2 + 56));
}

uint64_t PINE.inputShare<A>(from:aggregatorID:)@<X0>(uint64_t a1@<X0>, Swift::Int a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a5;
  v30 = a1;
  v31 = a6;
  v32 = a4;
  v29 = *(a4 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  v16 = a3[2];
  v17 = a3[4];
  v18 = a3[5];
  v19 = a3[7];
  result = PINEInputShare.DecodableParameter.init<A>(vdaf:aggregatorID:)(v13, a2, v16, v17, a3[3], v18, v19, a3[6], &v33, a3[8]);
  if (!v6)
  {
    v21 = v32;
    v28 = v33;
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v25 = v30;
    v26 = *(v29 + 16);
    v30 = 0;
    v26(v11, v25, v32);
    v33 = v28;
    v34 = v22;
    v35 = v23;
    v36 = v24;
    return PINEInputShare.init<A>(from:parameter:)(v11, &v33, v16, v17, v21, v18, v19);
  }

  return result;
}

void PINE.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(uint64_t a1, void *a2, uint64_t a3, Swift::Int a4, uint64_t a5, unint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v169 = a4;
  v153 = a2;
  v154 = a1;
  v13 = *(a9 + 16);
  v14 = *(a9 + 64);
  v166 = *(a9 + 40);
  v167 = v13;
  v177 = v13;
  v178 = v166;
  v165 = v14;
  v179 = v14;
  v164 = type metadata accessor for PINEMainCircuit(0, &v177);
  v161 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v160 = v140 - v15;
  v16 = a6[1];
  v157 = *a6;
  v159 = v16;
  v17 = *a7;
  v18 = *(a7 + 8);
  *&v163 = *(a7 + 16);
  LODWORD(v162) = *(a7 + 24);
  v19 = *(a7 + 40);
  v156 = *(a7 + 32);
  v158 = v19;
  v155 = a3;
  v20 = *(a3 + 16);
  v21 = *(a9 + 32);
  *&v170 = a9;
  v22 = *(a9 + 56);
  v23 = *(v22 + 8);
  if (v20 != v23(v21, v22))
  {
    *&v177 = 0;
    *(&v177 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    *&v177 = 0xD000000000000034;
    *(&v177 + 1) = 0x8000000270C51C00;
    v173 = v23(v21, v22);
LABEL_9:
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v39);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v173 = v20;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v40);

    v41 = v177;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v42 = v41;
    *(v42 + 16) = 1;
    swift_willThrow();
    return;
  }

  v152 = v21;
  v151 = v22;
  v20 = *(a5 + 16);
  if (v20 != 16)
  {
    *&v177 = 0;
    *(&v177 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    *&v177 = 0xD000000000000030;
    *(&v177 + 1) = 0x8000000270C51C40;
    v173 = 16;
    goto LABEL_9;
  }

  v24 = v170;
  WitnessTable = swift_getWitnessTable();
  v26 = v169;
  v27 = v171;
  VDAFProtocol.assertValidAggregatorID(_:)(v169);
  if (v28)
  {
    return;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v168 = a5;
  if (v26 > 0xFF)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v29 = PINE.measurementShareLength.getter(v24);
  v30 = v167;
  v31 = v18;
  v32 = WitnessTable;
  v33 = WitnessTable;
  v34 = v166;
  v148 = static VDAFProtocol.decodeMeasurementShare<A>(_:aggregatorID:count:)(v17, v31, v26, v29, v24, v167, v33, v166);
  v180 = v148;
  v35 = PINE.proofLength.getter(v24);
  MEMORY[0x28223BE20](v35);
  v36 = v166;
  *&v140[-10] = v167;
  v140[-8] = v152;
  *&v140[-7] = v36;
  v37 = v165;
  v140[-5] = v151;
  v138 = v37;
  v139 = v27;
  v144 = specialized static VDAFProtocol.decodeProofShare<A>(_:aggregatorID:count:makeXOF:)(v163, v162, v38, partial apply for closure #1 in PINE.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:), &v140[-12], v24, v30, v32, v34);
  v173 = v144;
  v174 = v43;
  v175 = v44;
  v176 = v45;
  *&v177 = v24;
  *(&v177 + 1) = v30;
  *&v178 = v32;
  *(&v178 + 1) = v34;
  v46 = type metadata accessor for WraparoundJointRandomness(0, &v177);
  v150 = v30;
  v146 = v46;
  v149 = *(v24 + 76);
  v47 = *(v161 + 16);
  v48 = v27 + v149;
  v49 = v160;
  v50 = v164;
  v161 += 16;
  v143 = v47;
  v47(v160, v48, v164);
  v51 = &v49[*(v50 + 64)];
  *&v163 = v32;
  v52 = *(v51 + 3);
  v177 = v167;
  v178 = v166;
  v179 = v37;
  v53 = type metadata accessor for PINECircuitParameter(0, &v177);
  v54 = *(v53 - 8);
  v55 = *(v54 + 8);
  v142 = v53;
  v141 = v55;
  v140[3] = v54 + 8;
  (v55)(v51);
  v172 = v52;
  v56 = type metadata accessor for Array();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16PartialRangeUpToVySiGMd, &_ss16PartialRangeUpToVySiGMR);
  v162 = v56;
  v58 = swift_getWitnessTable();
  v59 = lazy protocol witness table accessor for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>();
  v140[2] = v57;
  v140[1] = v58;
  v140[0] = v59;
  MutableCollection.subscript.getter();
  v60 = v177;
  v61 = v34;
  v62 = v178;
  v63 = v146;
  v64 = swift_getWitnessTable();
  v65 = v168;
  v66 = static JointRandomness.updateJointRandParts(_:commitment:blind:aggregatorID:nonce:)(v157, v60, *(&v60 + 1), v62, *(&v62 + 1), v156, v26, v168, v63, v64);
  swift_unknownObjectRelease();
  v145 = WraparoundJointRandomness.__allocating_init(parts:)(v66);
  *&v177 = v24;
  *(&v177 + 1) = v150;
  *&v178 = v163;
  *(&v178 + 1) = v61;
  v147 = v61;
  v67 = type metadata accessor for VerificationJointRandomness(0, &v177);
  *&v177 = v148;

  swift_getWitnessTable();
  v68 = ArraySlice.init<A>(_:)();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = swift_getWitnessTable();
  v76 = v72;
  v77 = v26;
  v78 = v149;
  v79 = v164;
  v80 = static JointRandomness.updateJointRandParts(_:commitment:blind:aggregatorID:nonce:)(v159, v68, v70, v76, v74, v158, v77, v65, v67, v75);
  swift_unknownObjectRelease();
  v81 = *(v171 + *(v24 + 84));
  v82 = VerificationJointRandomness.__allocating_init(count:numOfProofs:parts:)(3, v81, v80);
  v159 = swift_getWitnessTable();
  v83 = PINECircuit.truncate(measurement:)(v148, v79, v159);
  v84 = v24;
  v148 = v81;
  v146 = v82;
  OutputShare.init(_:)(v83, &v177);
  v144 = v177;
  v85 = v171;
  v86 = v160;
  v143(v160, v171 + v78, v79);
  v87 = *&v86[*(v79 + 64) + 40];
  v141();
  v172 = v87;
  MutableCollection.subscript.getter();
  PINECircuit.wraparoundDotProducts<A>(_:random:)(v177, *(&v177 + 1), v178, *(&v178 + 1), v145, v79, v159);
  swift_unknownObjectRelease();
  static Array.+= infix(_:_:)();

  LOBYTE(v177) = 4;
  v88 = specialized VDAFProtocol.domainSeparationTag(usage:)(&v177, v84, v163);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_270C44550;
  v90 = *(v85 + *(v84 + 88));
  v91 = v147;
  if ((v90 & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

  v92 = v151;
  v93 = v148;
  if (v90 > 0xFF)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v89 + 32) = v90;
  if ((v93 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v93 > 0xFF)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v89 + 33) = v93;
  *&v177 = v89;

  specialized Array.append<A>(contentsOf:)(v94);
  v156 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(v155, v88, v177, v152, v92);

  v172 = Array.init()();
  v95 = PINE.verifierLength.getter(v84);
  Array.reserveCapacity(_:)(v95);
  if (!v90)
  {
LABEL_18:
    if (!v148)
    {
      v128 = v146;
LABEL_26:
      *&v177 = v144;
      v129 = v145;
      v130 = v145[3];

      v131 = VerificationJointRandomness.seed.getter();
      v132 = v169;
      PINEPrepareState.init(outputShare:wraparoundJointRandSeed:verificationJointRandSeed:aggregatorID:)(&v177, v130, v131, v169, v154);
      v133 = v129[2];
      if (*(v133 + 16) > v132)
      {
        v134 = v128[2];
        if (*(v134 + 16) > v132)
        {
          v135 = v172;
          v136 = *(v133 + 8 * v132 + 32);
          v137 = *(v134 + 8 * v132 + 32);

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          PINEPrepareShare.init(verifierShare:wraparoundJointRandPart:verificationJointRandPart:)(v135, v136, v137, v153);

          return;
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    v113 = 0;
    v114 = v150;
    while (1)
    {
      v168 = 0;
      v161 = v113;
      v160 = (v113 + 1);
      if (__OFADD__(v113, 1))
      {
        goto LABEL_32;
      }

      *&v167 = VerificationJointRandomness.next()();
      v115 = v164;
      v116 = swift_getWitnessTable();
      v117 = v171;
      *&v166 = v116;
      v118 = FullyLinearProof.proofLength.getter(v115, v116);
      v119 = type metadata accessor for ArraySlice();
      v165 = swift_getWitnessTable();
      RandomAccessCollection<>.popFirst(_:)(v118, v119, v165);
      *&v163 = *(&v178 + 1);
      v120 = v178;
      v170 = v177;
      v121 = FullyLinearProof.queryRandLength.getter(v115, v116);
      v122 = static FieldElement.randomVector<A>(count:using:)(v121, v156, v114);
      v123 = v180;
      v177 = v170;
      *&v178 = v120;
      *(&v178 + 1) = v163;
      v124 = *v117;
      v125 = v162;
      v126 = swift_getWitnessTable();
      v127 = v168;
      FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(&v172, v123, &v177, v122, v167, v124, v115, v125, v119, v166, v126, v165);
      if (v127)
      {
        goto LABEL_29;
      }

      swift_unknownObjectRelease();

      v113 = v161 + 1;
      v114 = v150;
      v128 = v146;
      if (v160 == v148)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    v168 = 0;
    v157 = v90;
    v96 = *(v84 + 80);
    v177 = v167;
    v178 = v166;
    v179 = v165;
    v97 = type metadata accessor for PINENormEqualityCheckCircuit(0, &v177);
    v98 = swift_getWitnessTable();
    v99 = v171;
    v160 = v96;
    v159 = v98;
    v100 = FullyLinearProof.proofLength.getter(v97, v98);
    v101 = v150;
    v102 = type metadata accessor for ArraySlice();
    v161 = v102;
    v158 = swift_getWitnessTable();
    RandomAccessCollection<>.popFirst(_:)(v100, v102, v158);
    v103 = v178;
    v163 = v177;
    v104 = FullyLinearProof.queryRandLength.getter(v97, v98);
    v105 = v91;
    v106 = static FieldElement.randomVector<A>(count:using:)(v104, v156, v101);
    v107 = v180;
    v177 = v163;
    v178 = v103;
    v108 = Array.init()();
    v109 = *v99;
    v110 = v162;
    v111 = swift_getWitnessTable();
    v112 = v168;
    FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(&v172, v107, &v177, v106, v108, v109, v97, v110, v161, v159, v111, v158);
    if (v112)
    {
      break;
    }

    swift_unknownObjectRelease();

    v90 = v157 - 1;
    v91 = v105;
    v84 = v170;
    if (v157 == 1)
    {
      goto LABEL_18;
    }
  }

LABEL_29:

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void *PINE.prepareMessageFrom(_:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = a2;
  v73 = a3;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v10[4];
  v11 = v10[5];
  v13 = v10[7];
  *&v84 = v6;
  *(&v84 + 1) = v12;
  v75 = v12;
  v83 = v11;
  v85 = v11;
  v86 = v13;
  v14 = type metadata accessor for PINEPrepareShare(0, &v84);
  *&v79 = a1;
  v15 = MEMORY[0x2743B2830](a1, v14);
  v82 = v3;
  v16 = *v3;
  if (v15 != *v3)
  {
    v27 = v15;
    *&v84 = 0;
    *(&v84 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
    MEMORY[0x2743B25F0](0xD00000000000002CLL, 0x8000000270C51BB0);
    v89 = v27;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v28);

    MEMORY[0x2743B25F0](15649, 0xE200000000000000);
    v89 = v16;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v29);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    v30 = v84;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v31 = v30;
    *(v31 + 16) = 1;
    return swift_willThrow();
  }

  v17 = v83;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v18 = PINE.verifierLength.getter(v4);
  v19 = specialized Array.init(repeating:count:)(v9, v18, v6);
  v20 = (*(v7 + 8))(v9, v6);
  WitnessTable = &v69;
  v93 = v79;
  v88 = v19;
  MEMORY[0x28223BE20](v20);
  v21 = *(v4 + 24);
  *(&v69 - 8) = v6;
  *(&v69 - 7) = v21;
  v81 = v21;
  v22 = v75;
  *(&v69 - 6) = v75;
  *(&v69 - 5) = v17;
  v23 = *(v4 + 48);
  *(&v69 - 4) = v23;
  *(&v69 - 3) = v13;
  v72 = v13;
  v80 = *(v4 + 64);
  *(&v69 - 2) = v80;
  v24 = type metadata accessor for Array();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v25 = v77;
  result = Sequence.reduce<A>(into:_:)();
  if (!v25)
  {
    v32 = v22;
    v93 = v84;
    swift_getWitnessTable();
    v33 = ArraySlice.init<A>(_:)();
    v77 = &v69;
    v89 = v33;
    v90 = v34;
    v91 = v35;
    v92 = v36;
    *&v84 = v79;
    MEMORY[0x28223BE20](v33);
    v74 = (&v69 - 10);
    v37 = v23;
    v78 = v23;
    v38 = v80;
    v39 = v81;
    *(&v69 - 8) = v6;
    *(&v69 - 7) = v39;
    v40 = v83;
    *(&v69 - 6) = v22;
    *(&v69 - 5) = v40;
    *(&v69 - 4) = v37;
    v41 = v72;
    *(&v69 - 3) = v72;
    *(&v69 - 2) = v38;
    WitnessTable = swift_getWitnessTable();
    v71 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in PINE.prepareMessageFrom(_:parameter:), v74, v24, &type metadata for Seed, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v42);
    v77 = &v69;
    *&v84 = v79;
    MEMORY[0x28223BE20](v71);
    *(&v69 - 8) = v6;
    *(&v69 - 7) = v39;
    v43 = v83;
    *(&v69 - 6) = v32;
    *(&v69 - 5) = v43;
    *(&v69 - 4) = v78;
    *(&v69 - 3) = v41;
    *(&v69 - 2) = v38;
    result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in PINE.prepareMessageFrom(_:parameter:), (&v69 - 10), v24, &type metadata for Seed, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v44);
    v45 = v82;
    v46 = *(v82 + *(v4 + 88));
    if (v46 < 0)
    {
      __break(1u);
    }

    else
    {
      v70 = result;
      WitnessTable = v4;
      v77 = v6;
      if (v46)
      {
        while (1)
        {
          *&v84 = v77;
          *(&v84 + 1) = v81;
          v85 = v83;
          v86 = v78;
          v87 = v80;
          v47 = type metadata accessor for PINENormEqualityCheckCircuit(0, &v84);
          v48 = swift_getWitnessTable();
          v49 = FullyLinearProof.verifierLength.getter(v47, v48);
          v50 = type metadata accessor for ArraySlice();
          v51 = swift_getWitnessTable();
          v52 = v49;
          v45 = v82;
          RandomAccessCollection<>.popFirst(_:)(v52, v50, v51);
          v79 = v84;
          if ((FullyLinearProof.decide<A>(verifier:)(&v84, v47, v50, v48, v51) & 1) == 0)
          {
            break;
          }

          result = swift_unknownObjectRelease();
          --v46;
          v4 = WitnessTable;
          if (!v46)
          {
            goto LABEL_9;
          }
        }

LABEL_14:

        lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
        swift_allocError();
        *v68 = 0;
        *(v68 + 8) = 0;
        *(v68 + 16) = 4;
        swift_willThrow();
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

LABEL_9:
      v53 = *(v45 + *(v4 + 84));
      if ((v53 & 0x8000000000000000) == 0)
      {
        v54 = v83;
        v56 = v80;
        v55 = v81;
        v57 = v78;
        v69 = *(v45 + *(v4 + 84));
        if (!v53)
        {
LABEL_13:
          v63 = swift_getWitnessTable();
          v64 = v77;
          *&v84 = v4;
          *(&v84 + 1) = v77;
          v85 = v63;
          v86 = v54;
          type metadata accessor for WraparoundJointRandomness(0, &v84);
          v65 = WraparoundJointRandomness.__allocating_init(parts:)(v71);
          *&v84 = v4;
          *(&v84 + 1) = v64;
          v85 = v63;
          v86 = v54;
          type metadata accessor for VerificationJointRandomness(0, &v84);
          VerificationJointRandomness.__allocating_init(count:numOfProofs:parts:)(3, v69, v70);
          v66 = *(v65 + 24);

          v67 = VerificationJointRandomness.seed.getter();

          swift_unknownObjectRelease();
          return PINEPrepareMessage.init(wraparoundJointRandSeed:verificationJointRandSeed:)(v66, v67, v73);
        }

        while (1)
        {
          v74 = *(v4 + 76);
          *&v84 = v77;
          *(&v84 + 1) = v55;
          v85 = v54;
          v86 = v57;
          v87 = v56;
          v58 = type metadata accessor for PINEMainCircuit(0, &v84);
          v59 = swift_getWitnessTable();
          v60 = FullyLinearProof.verifierLength.getter(v58, v59);
          v61 = type metadata accessor for ArraySlice();
          v62 = swift_getWitnessTable();
          RandomAccessCollection<>.popFirst(_:)(v60, v61, v62);
          v79 = v84;
          if ((FullyLinearProof.decide<A>(verifier:)(&v84, v58, v61, v59, v62) & 1) == 0)
          {
            goto LABEL_14;
          }

          swift_unknownObjectRelease();
          --v53;
          v4 = WitnessTable;
          v54 = v83;
          v56 = v80;
          v55 = v81;
          v57 = v78;
          if (!v53)
          {
            goto LABEL_13;
          }
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t PINE.prepareState<A>(from:aggregatorID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a5;
  v25[0] = a1;
  v25[1] = a6;
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 64);
  v15 = *(v13 + 16);
  v26 = *(v13 + 40);
  v27 = v15;
  v28 = v15;
  v29 = v26;
  v30 = v14;
  v16 = type metadata accessor for PINEMainCircuit(0, &v28);
  WitnessTable = swift_getWitnessTable();
  v18 = PINECircuit.outputLength.getter(v16, WitnessTable);
  v19 = *(a3 + 32);
  v20 = *(a3 + 56);
  v21 = v27;
  v22 = v26;
  result = PINEPrepareState.DecodableParameter.init(aggregatorID:outputShareCount:)(a2, v18, v19, v20, &v31);
  if (!v6)
  {
    v27 = v31;
    v24 = v32;
    (*(v10 + 16))(v12, v25[0], a4);
    v28 = v27;
    *&v29 = v24;
    BYTE8(v29) = 0;
    return PINEPrepareState.init<A>(from:parameter:)(v12, &v28, v21, v19, a4, v22);
  }

  return result;
}

uint64_t PINE.prepareMessage<A>(from:aggregatorID:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  return PINEPrepareMessage.init<A>(from:parameter:)(v10, *(a3 + 32), a4, x8_0);
}

uint64_t PINE.prepareNext(state:message:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v9 = *a2;
  v8 = a2[1];
  if ((specialized static Seed.== infix(_:_:)(a1[2], v8) & 1) == 0)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
    v17 = "ize mismatched: ";
    v18 = 43;
LABEL_7:
    MEMORY[0x2743B25F0](v18 | 0xD000000000000010, v17 | 0x8000000000000000);

    v19 = String.init<A>(describing:)();
    MEMORY[0x2743B25F0](v19);

    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51A80);
    v29 = v8;

    v20 = String.init<A>(describing:)();
    goto LABEL_8;
  }

  if ((specialized static Seed.== infix(_:_:)(v7, v9) & 1) == 0)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(79);
    MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
    v17 = "),\nin message: (";
    v18 = 41;
    goto LABEL_7;
  }

  v10 = *(a3 + 16);
  v11 = MEMORY[0x2743B2830](v6, v10);
  v12 = *(a3 + 24);
  v13 = *(a3 + 64);
  v25 = v10;
  v26 = v12;
  v27 = *(a3 + 40);
  v28 = v13;
  v14 = type metadata accessor for PINEMainCircuit(0, &v25);
  WitnessTable = swift_getWitnessTable();
  if (v11 == PINECircuit.outputLength.getter(v14, WitnessTable))
  {
    LOBYTE(v25) = 1;
    *a4 = v6;
    *(a4 + 56) = 1;
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);

  v25 = 0xD000000000000033;
  v26 = 0x8000000270C51AE0;
  v29 = MEMORY[0x2743B2830](v6, v10);
  v24 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v24);

  MEMORY[0x2743B25F0](0x203A746F670A2CLL, 0xE700000000000000);
  v29 = PINECircuit.outputLength.getter(v14, WitnessTable);
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_8:
  MEMORY[0x2743B25F0](v20);

  v21 = v25;
  v22 = v26;
  lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
  swift_allocError();
  *v23 = v21;
  *(v23 + 8) = v22;
  *(v23 + 16) = 1;
  return swift_willThrow();
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSb_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF29OneBlockSparseInnerCorrectionV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    v5 = *(a1 + 32);
    v6 = *(a2 + 32);
    v7 = *(v5 + 16);
    if (v7 == *(v6 + 16))
    {
      v8 = (a2 + 41);
      v9 = (a2 + 40);
      v10 = (a1 + 40);
      v11 = (a1 + 41);
      v12 = 1;
      while (1)
      {
        v13 = *v11;
        if (v7)
        {
          if (v5 != v6)
          {
            break;
          }
        }

LABEL_11:
        result = 0;
        if (*v10 == *v9 && ((v13 ^ *v8) & 1) == 0)
        {
          if (v12 == v2)
          {
            return 1;
          }

          result = 0;
          v17 = 16 * v12++;
          v11 = (v3 + v17 + 9);
          v10 = (v3 + v17 + 8);
          v5 = *(v3 + v17);
          v9 = (v4 + v17 + 8);
          v8 = (v4 + v17 + 9);
          v6 = *(v4 + v17);
          v7 = *(v5 + 16);
          if (v7 == *(v6 + 16))
          {
            continue;
          }
        }

        return result;
      }

      v14 = (v5 + 32);
      v15 = (v6 + 32);
      while (*v14 == *v15)
      {
        ++v14;
        ++v15;
        if (!--v7)
        {
          goto LABEL_11;
        }
      }
    }

    return 0;
  }

  return 1;
}

BOOL _sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF4SeedV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(a2 + 32);
    v6 = *(v4 + 16);
    if (v6 == *(v5 + 16))
    {
      v7 = 1;
      while (!v6 || v4 == v5)
      {
LABEL_11:
        result = v7 == v2;
        if (v7 != v2)
        {
          v4 = *(v3 + 8 * v7);
          v5 = *(a2 + 32 + 8 * v7++);
          v6 = *(v4 + 16);
          if (v6 == *(v5 + 16))
          {
            continue;
          }
        }

        return result;
      }

      v8 = (v4 + 32);
      v9 = (v5 + 32);
      while (*v8 == *v9)
      {
        ++v8;
        ++v9;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF16InnerCorrectionsV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 40);
    v4 = (a1 + 40);
    while (1)
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = *(v3 - 1);
      v8 = *v3;

      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(v5, v7) & 1) == 0)
      {
        break;
      }

      v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF8BitMasksC_Tt1g5(v6, v8);

      if (v9)
      {
        v3 += 2;
        v4 += 2;
        if (--v2)
        {
          continue;
        }
      }

      return v9 & 1;
    }

    goto LABEL_11;
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 40);
  for (i = (a2 + 40); ; i += 2)
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v8 = *(i - 1);
    v7 = *i;
    v9 = *v3 >> 62;
    v10 = *i >> 62;
    if (v9 == 3)
    {
      if (v5)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == 0xC000000000000000;
      }

      v12 = 0;
      v13 = v11 && *i >> 62 == 3;
      if (v13 && !v8 && v7 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v10 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v19 = *(v5 + 16);
        v18 = *(v5 + 24);
        v16 = __OFSUB__(v18, v19);
        v12 = v18 - v19;
        if (v16)
        {
          goto LABEL_138;
        }

        goto LABEL_28;
      }

      v12 = 0;
      if (v10 <= 1)
      {
        goto LABEL_29;
      }
    }

    else if (v9)
    {
      LODWORD(v12) = HIDWORD(v5) - v5;
      if (__OFSUB__(HIDWORD(v5), v5))
      {
        goto LABEL_137;
      }

      v12 = v12;
      if (v10 <= 1)
      {
LABEL_29:
        if (v10)
        {
          LODWORD(v17) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            __break(1u);
LABEL_136:
            __break(1u);
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
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
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
            __break(1u);
          }

          v17 = v17;
        }

        else
        {
          v17 = BYTE6(v7);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v12 = BYTE6(v6);
      if (v10 <= 1)
      {
        goto LABEL_29;
      }
    }

LABEL_22:
    if (v10 != 2)
    {
      if (v12)
      {
        return 0;
      }

      goto LABEL_6;
    }

    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (v16)
    {
      goto LABEL_136;
    }

LABEL_33:
    if (v12 != v17)
    {
      return 0;
    }

    if (v12 < 1)
    {
      goto LABEL_6;
    }

    if (v9 > 1)
    {
      break;
    }

    if (v9)
    {
      v33 = v5;
      if (v5 > v5 >> 32)
      {
        goto LABEL_139;
      }

      v64 = *(v3 - 1);
      outlined copy of Data._Representation(v5, v6);
      outlined copy of Data._Representation(v8, v7);
      v27 = __DataStorage._bytes.getter();
      if (v27)
      {
        v34 = __DataStorage._offset.getter();
        if (__OFSUB__(v33, v34))
        {
          goto LABEL_141;
        }

        v27 += v33 - v34;
      }

      MEMORY[0x2743B2250]();
      if (v10 == 2)
      {
        v62 = v27;
        v54 = *(v8 + 16);
        v53 = *(v8 + 24);
        v29 = __DataStorage._bytes.getter();
        if (v29)
        {
          v55 = __DataStorage._offset.getter();
          if (__OFSUB__(v54, v55))
          {
            goto LABEL_155;
          }

          v29 += v54 - v55;
        }

        v16 = __OFSUB__(v53, v54);
        v56 = v53 - v54;
        if (v16)
        {
          goto LABEL_151;
        }

        v57 = MEMORY[0x2743B2250]();
        if (v57 >= v56)
        {
          v32 = v56;
        }

        else
        {
          v32 = v57;
        }

        result = v62;
        if (!v62)
        {
          goto LABEL_166;
        }

        if (!v29)
        {
          goto LABEL_165;
        }

        goto LABEL_127;
      }

      if (v10 == 1)
      {
        if (v8 >> 32 < v8)
        {
          goto LABEL_150;
        }

        v29 = __DataStorage._bytes.getter();
        if (v29)
        {
          v35 = __DataStorage._offset.getter();
          if (__OFSUB__(v8, v35))
          {
            goto LABEL_157;
          }

          v29 += v8 - v35;
        }

        v36 = MEMORY[0x2743B2250]();
        if (v36 >= (v8 >> 32) - v8)
        {
          v32 = (v8 >> 32) - v8;
        }

        else
        {
          v32 = v36;
        }

        result = v27;
        if (!v27)
        {
          goto LABEL_172;
        }

        if (!v29)
        {
          goto LABEL_171;
        }

LABEL_127:
        if (result == v29)
        {
          outlined consume of Data._Representation(v8, v7);
          outlined consume of Data._Representation(v64, v6);
          goto LABEL_6;
        }

        v58 = v32;
        v59 = v29;
        goto LABEL_132;
      }

      __s1[0] = v8;
      LOWORD(__s1[1]) = v7;
      BYTE2(__s1[1]) = BYTE2(v7);
      BYTE3(__s1[1]) = BYTE3(v7);
      BYTE4(__s1[1]) = BYTE4(v7);
      BYTE5(__s1[1]) = BYTE5(v7);
      if (!v27)
      {
        goto LABEL_162;
      }

      goto LABEL_131;
    }

    __s1[0] = *(v3 - 1);
    LOWORD(__s1[1]) = v6;
    BYTE2(__s1[1]) = BYTE2(v6);
    BYTE3(__s1[1]) = BYTE3(v6);
    BYTE4(__s1[1]) = BYTE4(v6);
    BYTE5(__s1[1]) = BYTE5(v6);
    if (!v10)
    {
      goto LABEL_89;
    }

    v63 = v5;
    if (v10 == 1)
    {
      v20 = (v8 >> 32) - v8;
      if (v8 >> 32 < v8)
      {
        goto LABEL_143;
      }

      outlined copy of Data._Representation(v5, v6);
      outlined copy of Data._Representation(v8, v7);
      v21 = __DataStorage._bytes.getter();
      if (!v21)
      {
        goto LABEL_159;
      }

      v22 = v21;
      v23 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v23))
      {
        goto LABEL_147;
      }

      v24 = (v8 - v23 + v22);
      result = MEMORY[0x2743B2250]();
      if (!v24)
      {
        goto LABEL_160;
      }
    }

    else
    {
      v41 = *(v8 + 16);
      v40 = *(v8 + 24);
      outlined copy of Data._Representation(v5, v6);
      outlined copy of Data._Representation(v8, v7);
      v24 = __DataStorage._bytes.getter();
      if (v24)
      {
        v42 = __DataStorage._offset.getter();
        if (__OFSUB__(v41, v42))
        {
          goto LABEL_152;
        }

        v24 += v41 - v42;
      }

      v16 = __OFSUB__(v40, v41);
      v20 = v40 - v41;
      if (v16)
      {
        goto LABEL_145;
      }

      result = MEMORY[0x2743B2250]();
      if (!v24)
      {
        goto LABEL_158;
      }
    }

LABEL_101:
    if (result >= v20)
    {
      v46 = v20;
    }

    else
    {
      v46 = result;
    }

    v47 = memcmp(__s1, v24, v46);
    outlined consume of Data._Representation(v8, v7);
    outlined consume of Data._Representation(v63, v6);
    if (v47)
    {
      return 0;
    }

LABEL_6:
    v3 += 2;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v9 != 2)
  {
    memset(__s1, 0, 14);
    if (!v10)
    {
LABEL_89:
      __s2 = v8;
      v66 = v7;
      v67 = BYTE2(v7);
      v68 = BYTE3(v7);
      v69 = BYTE4(v7);
      v70 = BYTE5(v7);
      if (memcmp(__s1, &__s2, BYTE6(v7)))
      {
        return 0;
      }

      goto LABEL_6;
    }

    v63 = v5;
    if (v10 == 2)
    {
      v38 = *(v8 + 16);
      v37 = *(v8 + 24);
      outlined copy of Data._Representation(v5, v6);
      outlined copy of Data._Representation(v8, v7);
      v24 = __DataStorage._bytes.getter();
      if (v24)
      {
        v39 = __DataStorage._offset.getter();
        if (__OFSUB__(v38, v39))
        {
          goto LABEL_153;
        }

        v24 += v38 - v39;
      }

      v16 = __OFSUB__(v37, v38);
      v20 = v37 - v38;
      if (v16)
      {
        goto LABEL_146;
      }

      result = MEMORY[0x2743B2250]();
      if (!v24)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v20 = (v8 >> 32) - v8;
      if (v8 >> 32 < v8)
      {
        goto LABEL_142;
      }

      outlined copy of Data._Representation(v5, v6);
      outlined copy of Data._Representation(v8, v7);
      v43 = __DataStorage._bytes.getter();
      if (!v43)
      {
        goto LABEL_163;
      }

      v44 = v43;
      v45 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v45))
      {
        goto LABEL_148;
      }

      v24 = (v8 - v45 + v44);
      result = MEMORY[0x2743B2250]();
      if (!v24)
      {
        goto LABEL_164;
      }
    }

    goto LABEL_101;
  }

  v26 = *(v5 + 16);
  v64 = *(v3 - 1);
  outlined copy of Data._Representation(v5, v6);
  outlined copy of Data._Representation(v8, v7);
  v27 = __DataStorage._bytes.getter();
  if (v27)
  {
    v28 = __DataStorage._offset.getter();
    if (__OFSUB__(v26, v28))
    {
      goto LABEL_140;
    }

    v27 += v26 - v28;
  }

  MEMORY[0x2743B2250]();
  if (v10 == 2)
  {
    v61 = v27;
    v49 = *(v8 + 16);
    v48 = *(v8 + 24);
    v29 = __DataStorage._bytes.getter();
    if (v29)
    {
      v50 = __DataStorage._offset.getter();
      if (__OFSUB__(v49, v50))
      {
        goto LABEL_154;
      }

      v29 += v49 - v50;
    }

    v16 = __OFSUB__(v48, v49);
    v51 = v48 - v49;
    if (v16)
    {
      goto LABEL_149;
    }

    v52 = MEMORY[0x2743B2250]();
    if (v52 >= v51)
    {
      v32 = v51;
    }

    else
    {
      v32 = v52;
    }

    result = v61;
    if (!v61)
    {
      goto LABEL_170;
    }

    if (!v29)
    {
      goto LABEL_169;
    }

    goto LABEL_127;
  }

  if (v10 == 1)
  {
    if (v8 >> 32 < v8)
    {
      goto LABEL_144;
    }

    v29 = __DataStorage._bytes.getter();
    if (v29)
    {
      v30 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v30))
      {
        goto LABEL_156;
      }

      v29 += v8 - v30;
    }

    v31 = MEMORY[0x2743B2250]();
    if (v31 >= (v8 >> 32) - v8)
    {
      v32 = (v8 >> 32) - v8;
    }

    else
    {
      v32 = v31;
    }

    result = v27;
    if (!v27)
    {
      goto LABEL_168;
    }

    if (!v29)
    {
      goto LABEL_167;
    }

    goto LABEL_127;
  }

  __s1[0] = v8;
  LOWORD(__s1[1]) = v7;
  BYTE2(__s1[1]) = BYTE2(v7);
  BYTE3(__s1[1]) = BYTE3(v7);
  BYTE4(__s1[1]) = BYTE4(v7);
  BYTE5(__s1[1]) = BYTE5(v7);
  if (v27)
  {
LABEL_131:
    v58 = BYTE6(v7);
    v59 = __s1;
    result = v27;
LABEL_132:
    v60 = memcmp(result, v59, v58);
    outlined consume of Data._Representation(v8, v7);
    outlined consume of Data._Representation(v64, v6);
    if (v60)
    {
      return 0;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  MEMORY[0x2743B2250]();
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  result = MEMORY[0x2743B2250]();
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
  return result;
}

unint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF8BitMasksC_Tt1g5(unint64_t a1, unint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_52:
    if ((a1 & 0x8000000000000000) != 0)
    {
      v26 = a1;
    }

    else
    {
      v26 = v4;
    }

    v6 = MEMORY[0x2743B2FD0](v26);
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    v27 = a2;
  }

  else
  {
    v27 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x2743B2FD0](v27);
  if (v6 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v6)
  {
    return 1;
  }

  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (v5)
  {
    v8 = v9;
  }

  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (a2 >> 62)
  {
    v10 = v11;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if (v6 < 0)
  {
    goto LABEL_62;
  }

  v12 = 0;
  v13 = a2 & 0xC000000000000001;
  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2743B2D10](v12, a1);
      v5 = result;
      if (v13)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v5 = *(a1 + 32 + 8 * v12);

      if (v13)
      {
LABEL_22:
        v15 = MEMORY[0x2743B2D10](v12, a2);
        goto LABEL_27;
      }
    }

    if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_64;
    }

    v15 = *(a2 + 32 + 8 * v12);

LABEL_27:
    v16 = *(v5 + 16);
    v17 = *(v15 + 16);
    v4 = *(v16 + 16);
    if (v4 != *(v17 + 16))
    {
      goto LABEL_48;
    }

    if (v4)
    {
      v18 = v16 == v17;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = (v16 + 32);
      v20 = (v17 + 32);
      while (v4)
      {
        if (*v19 != *v20)
        {
          goto LABEL_48;
        }

        ++v19;
        ++v20;
        if (!--v4)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

LABEL_36:
    v21 = *(v5 + 24);
    v22 = *(v15 + 24);
    v4 = *(v21 + 16);
    if (v4 != *(v22 + 16))
    {
LABEL_48:

      return 0;
    }

    if (v4)
    {
      v23 = v21 == v22;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v24 = (v21 + 32);
      v25 = (v22 + 32);
      while (v4)
      {
        if (*v24 != *v25)
        {
          goto LABEL_48;
        }

        ++v24;
        ++v25;
        if (!--v4)
        {
          goto LABEL_45;
        }
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_45:

    result = 1;
    v12 = v14;
    if (v14 == v6)
    {
      return result;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t PINE.measurementShareLength.getter(uint64_t a1)
{
  v2 = v1;
  v21 = *(a1 + 64);
  v4 = v21;
  v5 = *(a1 + 40);
  v17 = *(a1 + 16);
  v18 = v5;
  v19 = v17;
  v20 = v5;
  v6 = type metadata accessor for PINEMainCircuit(0, &v19);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = *(a1 + 76);
  v12 = PINEMainCircuit.encodedMeasurementLength.getter(v8);
  (*(v7 + 16))(v10, v2 + v11, v6);
  v13 = &v10[*(v6 + 64)];
  v19 = v17;
  v20 = v18;
  v21 = v4;
  v14 = type metadata accessor for PINECircuitParameter(0, &v19);
  v15 = *&v13[*(v14 + 92)];
  (*(*(v14 - 8) + 8))(v13, v14);
  result = v12 - v15;
  if (__OFSUB__(v12, v15))
  {
    __break(1u);
  }

  return result;
}

uint64_t PINE.randomSizeForShard.getter(uint64_t result)
{
  v2 = *v1;
  if (__OFSUB__(*v1, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*v1 + 0x3FFFFFFFFFFFFFFFLL < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 + 0x4000000000000000 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = 2 * (*v1 - 1);
  v4 = __OFADD__(v3, 2 * v2);
  v5 = v3 + 2 * v2;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5 | 1;
  v7 = (*(*(result + 56) + 8))(*(result + 32));
  result = v6 * v7;
  if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t PINE.flp.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 76);
  v5 = *(a1 + 64);
  v6 = *(a1 + 40);
  v9[0] = *(a1 + 16);
  v9[1] = v6;
  v10 = v5;
  v7 = type metadata accessor for PINEMainCircuit(0, v9);
  return (*(*(v7 - 8) + 16))(a2, v2 + v4, v7);
}

uint64_t PINE.flpNormEqualityCheck.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 64);
  v6 = *(a1 + 40);
  v9[0] = *(a1 + 16);
  v9[1] = v6;
  v10 = v5;
  v7 = type metadata accessor for PINENormEqualityCheckCircuit(0, v9);
  return (*(*(v7 - 8) + 16))(a2, v2 + v4, v7);
}

uint64_t PINE.proofLength.getter(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = *(v2 + *(a1 + 88));
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v17 = *(a1 + 16);
  v18 = v17;
  v16 = v6;
  v19 = v6;
  v20 = v7;
  v8 = type metadata accessor for PINENormEqualityCheckCircuit(0, &v18);
  WitnessTable = swift_getWitnessTable();
  result = a2(v8, WitnessTable);
  v11 = v5 * result;
  if ((v5 * result) >> 64 != (v5 * result) >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  v12 = *(v2 + *(a1 + 84));
  v18 = v17;
  v19 = v16;
  v20 = v7;
  v13 = type metadata accessor for PINEMainCircuit(0, &v18);
  v14 = swift_getWitnessTable();
  result = a2(v13, v14);
  v15 = v12 * result;
  if ((v12 * result) >> 64 != (v12 * result) >> 63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v11 + v15;
  if (__OFADD__(v11, v15))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t PINE.init(l2NormBoundInt:fractionalBitCount:measurementLength:numOfAggregators:numOfProofs:numOfProofsNormEquality:chunkLength:chunkLengthNormEquality:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, unint64_t *a8@<X8>, double a9@<D0>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  LODWORD(v77) = a7;
  v78 = a6;
  v86 = a1;
  v87 = a5;
  v83 = a2;
  v84 = a3;
  v76 = a8;
  v88 = a14;
  v89 = a15;
  v90 = a17;
  v91 = a18;
  v92 = a20;
  v72 = type metadata accessor for PINENormEqualityCheckCircuit(0, &v88);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v74 = (&v62 - v22);
  v88 = a14;
  v89 = a15;
  v85 = a15;
  v90 = a17;
  v91 = a18;
  v81 = a18;
  v82 = a20;
  v92 = a20;
  v75 = type metadata accessor for PINEMainCircuit(0, &v88);
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v80 = &v62 - v23;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v62 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v62 - v32;
  MEMORY[0x28223BE20](v31);
  if ((v35 - 2) > 0xFD)
  {
    v88 = 0;
    v89 = 0xE000000000000000;
    v44 = v35;
    _StringGuts.grow(_:)(46);

    v88 = 0xD000000000000031;
    v89 = 0x8000000270C52D00;
    v98 = 2;
    v96 = 0xE000000000000000;
    v97 = 256;
    v95 = 0;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x2743B25F0](3943982, 0xE300000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x2743B25F0](v95, v96);

    MEMORY[0x2743B25F0](0x20746F67202CLL, 0xE600000000000000);
    v95 = v44;
LABEL_10:
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v45);

    v46 = v88;
    v47 = v89;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v48 = v46;
    *(v48 + 8) = v47;
    *(v48 + 16) = 1;
    return swift_willThrow();
  }

  if (a4 - 1 > 0xFE)
  {
    v88 = 0;
    v89 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v88 = 0xD00000000000003BLL;
    v89 = 0x8000000270C52D40;
LABEL_9:
    v95 = a4;
    goto LABEL_10;
  }

  v69 = a4;
  a4 = v87;
  if (v87 - 1 > 0xFE)
  {
    v88 = 0;
    v89 = 0xE000000000000000;
    _StringGuts.grow(_:)(80);
    MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
    MEMORY[0x2743B25F0](0xD00000000000004CLL, 0x8000000270C52D80);
    goto LABEL_9;
  }

  v68 = v26;
  v67 = v37;
  v70 = &v62 - v34;
  v66 = v35;
  v88 = v86;
  v38 = v36;
  swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  dispatch thunk of Numeric.init<A>(exactly:)();
  if ((*(v38 + 48))(v29, 1, AssociatedTypeWitness) == 1)
  {
    (*(v68 + 8))(v29, v25);
    v88 = 0;
    v89 = 0xE000000000000000;
    _StringGuts.grow(_:)(76);
    MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
    MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C52DD0);
    v95 = v86;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v39);

    MEMORY[0x2743B25F0](0xD000000000000035, 0x8000000270C52DF0);
    v40 = _typeName(_:qualified:)();
    MEMORY[0x2743B25F0](v40);

    v41 = v88;
    v42 = v89;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v43 = v41;
    *(v43 + 8) = v42;
    *(v43 + 16) = 1;
    return swift_willThrow();
  }

  v50 = v70;
  (*(v38 + 32))(v70, v29, AssociatedTypeWitness);
  v68 = *(v38 + 16);
  (v68)(v33, v50, AssociatedTypeWitness);
  *(&v60 + 1) = v81;
  *&v60 = a17;
  v51 = v79;
  v52 = v78;
  v78 = a12;
  v86 = a13;
  PINEMainCircuit.init(l2NormBoundInt:fractionalBitCount:measurementLength:chunkLength:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)(v33, v83, v84, v52, v77 & 1, a12, a13, *&a14, v80, a9, v85, v60, v82);
  if (v51)
  {
    return (*(v38 + 8))(v70, AssociatedTypeWitness);
  }

  v79 = v38;
  v65 = a11;
  v77 = a10;
  v88 = a14;
  v89 = v85;
  v90 = a16;
  v91 = a17;
  v54 = v81;
  v53 = v82;
  v92 = v81;
  v93 = a19;
  v94 = v82;
  v63 = type metadata accessor for PINE(0, &v88);
  v55 = *(v73 + 32);
  v64 = *(v63 + 76);
  v55(v76 + v64, v80, v75);
  v56 = v67;
  (v68)(v67, v70, AssociatedTypeWitness);
  *(&v61 + 1) = v54;
  *&v61 = a17;
  v57 = v74;
  PINENormEqualityCheckCircuit.init(l2NormBoundInt:fractionalBitCount:measurementLength:chunkLength:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)(v56, v83, v84, v77, v65 & 1, v78, v86, a14, v74, a9, v85, v61, v53);
  (*(v79 + 8))(v70, AssociatedTypeWitness);
  v58 = v63;
  v59 = v76;
  result = (*(v71 + 32))(v76 + *(v63 + 80), v57, v72);
  *v59 = v66;
  *(v59 + *(v58 + 84)) = v69;
  *(v59 + *(v58 + 88)) = v87;
  return result;
}

uint64_t PINE.init(l2NormBound:fractionalBitCount:measurementLength:numOfAggregators:numOfProofs:numOfProofsNormEquality:chunkLength:chunkLengthNormEquality:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, unint64_t *a8@<X8>, double a9@<D0>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20)
{
  v21 = a7;
  v26 = static PINE.l2NormBoundIntFrom(l2NormBound:fractionalBitCount:)(a1, a2, a14, a15, a4, a17, a18, a7, a20);
  if (!v20)
  {
    PINE.init(l2NormBoundInt:fractionalBitCount:measurementLength:numOfAggregators:numOfProofs:numOfProofsNormEquality:chunkLength:chunkLengthNormEquality:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)(v26, a2, a3, a4, a5, a6, v21 & 1, a8, a9, a10, a11 & 1, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
}

uint64_t static PINE.l2NormBoundIntFrom(l2NormBound:fractionalBitCount:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v50 = a7;
  v46 = a6;
  v47 = a2;
  v51 = a4;
  v48 = a9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v54 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v11 = *(*(v54 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v44 - v13;
  v15 = swift_checkMetadataState();
  v45 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v44 = &v44 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v44 - v21;
  v23 = v49;
  static PINECircuitParameter.l2NormBoundIntFrom(l2NormBound:fractionalBitCount:)(a1, v47, a3, v46, v48, &v44 - v21);
  if (!v23)
  {
    v47 = v14;
    v48 = v11;
    v46 = a1;
    v49 = 0;
    v24 = v44;
    (*(v45 + 16))(v44, v22, v15);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v25 = dispatch thunk of static Comparable.< infix(_:_:)();
      v26 = *(v45 + 8);
      v26(v18, v15);
      if (v25)
      {
        v27 = v24;
LABEL_13:
        v26(v27, v15);
        v52 = 0;
        v53 = 0xE000000000000000;
        _StringGuts.grow(_:)(45);
        MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
        MEMORY[0x2743B25F0](0x6D726F4E326C203ALL, 0xEE003D646E756F42);
        swift_getAssociatedTypeWitness();
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C52E30);
        v38 = v52;
        v39 = v53;
        lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
        a1 = swift_allocError();
        *v40 = v38;
        *(v40 + 8) = v39;
        *(v40 + 16) = 1;
        swift_willThrow();
        v26(v22, v15);
        return a1;
      }
    }

    v28 = v45;
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
LABEL_16:
      a1 = dispatch thunk of BinaryInteger._lowWord.getter();
      v42 = *(v28 + 8);
      v42(v24, v15);
      v42(v22, v15);
      return a1;
    }

    v52 = -1;
    v29 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v30 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v29)
    {
      if (v30 > 64)
      {
        lazy protocol witness table accessor for type UInt64 and conformance UInt64();
        v48 = v22;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v31 = dispatch thunk of static Comparable.< infix(_:_:)();
        v32 = *(v28 + 8);
        v33 = v18;
        v22 = v48;
        goto LABEL_11;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v41 = dispatch thunk of static Comparable.> infix(_:_:)();
      (*(v45 + 8))(v18, v15);
      if ((v41 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (v30 >= 65)
    {
      v34 = v18;
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
      v35 = v22;
      v36 = v34;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v31 = dispatch thunk of static Comparable.< infix(_:_:)();
      v32 = *(v28 + 8);
      v33 = v36;
      v22 = v35;
LABEL_11:
      v37 = v32;
      v32(v33, v15);
      if (v31)
      {
        v27 = v24;
        v26 = v37;
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_16;
  }

  return a1;
}

ValueMetadata *static PINE.identifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, char *x8_0@<X8>)
{
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a7;
  type metadata accessor for PINEMainCircuit(0, v10);
  swift_getWitnessTable();
  return static PINECircuit.identifier.getter(x8_0);
}

char *static PINE.domainSeparationTag(usage:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *MEMORY[0x277D85DE8];
  v13 = *a1;
  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 7, 0, MEMORY[0x277D84F90]);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v14[v16 + 32] = 1;
  v23 = v14;
  static PINE.identifier.getter(a2, a3, a5, a6, a8, &v22);
  v20 = bswap32(dword_270C4797C[v22]);
  v17 = specialized _copyCollectionToContiguousArray<A>(_:)(&v20, v21);
  specialized Array.append<A>(contentsOf:)(v17);
  LOWORD(v20) = __rev16(v13 + 1);
  v18 = specialized _copyCollectionToContiguousArray<A>(_:)(&v20, &v20 + 2);
  specialized Array.append<A>(contentsOf:)(v18);
  return v23;
}

uint64_t closure #1 in PINE.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  LOBYTE(v24[0]) = 1;
  v22 = static PINE.domainSeparationTag(usage:)(v24, a4, a5, a4, a7, a8, a7, a10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_270C44590;
  v24[0] = a4;
  v24[1] = a5;
  v24[2] = a6;
  v24[3] = a7;
  v24[4] = a8;
  v24[5] = a9;
  v24[6] = a10;
  result = type metadata accessor for PINE(0, v24);
  v19 = *(a2 + *(result + 88));
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v19 > 0xFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v17 + 32) = v19;
  v20 = *(a2 + *(result + 84));
  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v20 > 0xFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v17 + 33) = v20;
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a3 <= 0xFF)
  {
    *(v17 + 34) = a3;
    v21 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(a1, v22, v17, a6, a9);

    return v21;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *PINE.aggregate<A>(_:parameter:)@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a1;
  v6 = a2[2];
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 40);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v12 = a2[3];
  v21 = a2[6];
  v22 = a2[8];
  *&v13 = v6;
  *(&v13 + 1) = v12;
  *&v14 = v11;
  *(&v14 + 1) = v21;
  v36[0] = v13;
  v36[1] = v14;
  v37 = v22;
  v15 = type metadata accessor for PINEMainCircuit(0, v36);
  WitnessTable = swift_getWitnessTable();
  v17 = PINECircuit.outputLength.getter(v15, WitnessTable);
  v18 = specialized Array.init(repeating:count:)(v9, v17, v6);
  (*(v7 + 8))(v9, v6);
  AggregateShare.init(_:)(v18, v36);
  v27 = v6;
  v28 = v12;
  v29 = a2[4];
  v30 = v23;
  v31 = v11;
  v32 = v21;
  v33 = a2[7];
  v34 = v24;
  v35 = v22;
  type metadata accessor for AggregateShare(0, v6, v11, v19);
  return Sequence.reduce<A>(into:_:)();
}

uint64_t PINE.prepareShare<A>(from:aggregatorID:)@<X0>(uint64_t a1@<X0>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t **x8_0@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = PINE.verifierLength.getter(a3);
  return PINEPrepareShare.init<A>(from:parameter:)(v11, v13, 0, a3[2], a3[4], a4, a3[5], a3[7], x8_0, a5);
}

uint64_t PINE.outputShare<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, void, uint64_t, void, uint64_t))
{
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  return a5(v10, 1, *(a2 + 16), a3, *(a2 + 40), a4);
}

uint64_t protocol witness for Collector.unshard<A>(_:numOfMeasurements:parameter:) in conformance PINE<A, B, C>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t *a6@<X8>)
{
  result = specialized PINE.unshard<A>(_:numOfMeasurements:parameter:)(a1, a2, a5, a3, a4);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t PINE.splitSeedBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  MEMORY[0x28223BE20](a1);
  (*(v11 + 16))(&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = ArraySlice.init<A>(_:)();
  v58 = v12;
  v59 = v13;
  v60 = v14;
  v61 = v15;
  if (__OFSUB__(*v4, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  if (*v4 - 1 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  MEMORY[0x28223BE20](v12);
  *(&v51 - 5) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(&v51 - 8) = v4;
  *(&v51 - 7) = a3;
  *(&v51 - 3) = *(a2 + 40);
  v17 = *(a2 + 56);
  v16 = *(a2 + 64);
  *(&v51 - 4) = v17;
  *(&v51 - 3) = a4;
  *(&v51 - 2) = v16;
  *(&v51 - 1) = &v58;
  v54 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedV16measurementShare_AI05proofG0AI24wraparoundJointRandBlindAI012verificationjkL0ts5NeverOTg5(partial apply for closure #1 in PINE.splitSeedBytes<A>(_:), (&v51 - 12), 0, v18);
  v19 = *(v17 + 8);
  v56 = v17 + 8;
  v57 = v17;
  v55 = v19;
  v19(v4, v17);
  v5 = specialized Collection.prefix(_:)();
  v53 = v20;
  v6 = v21;
  a4 = v22;
  v58 = specialized Collection.dropFirst(_:)();
  v59 = v23;
  v60 = v24;
  v61 = v25;
  if (a4)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v28 = swift_dynamicCastClass();
    if (!v28)
    {
      swift_unknownObjectRelease();
      v28 = MEMORY[0x277D84F90];
    }

    v29 = *(v28 + 16);

    if (!__OFSUB__(a4 >> 1, v6))
    {
      if (v29 != (a4 >> 1) - v6)
      {
        goto LABEL_38;
      }

      v27 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      if (v27)
      {
        goto LABEL_13;
      }

      v27 = MEMORY[0x277D84F90];
      goto LABEL_12;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v5, v53, v6, a4);
    v27 = v26;
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    v53 = v27;
    v55(v4, v57);
    v6 = specialized Collection.prefix(_:)();
    v52 = v30;
    v32 = v31;
    a4 = v33;
    v34 = specialized Collection.dropFirst(_:)();
    v5 = v35;
    v58 = v34;
    v59 = v36;
    v60 = v37;
    v61 = v35;
    if (a4)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain();
      v38 = swift_dynamicCastClass();
      if (!v38)
      {
        swift_unknownObjectRelease();
        v38 = MEMORY[0x277D84F90];
      }

      v39 = *(v38 + 16);

      if (__OFSUB__(a4 >> 1, v32))
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (v39 == (a4 >> 1) - v32)
      {
        v40 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v40)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      swift_unknownObjectRelease_n();
    }

    else
    {
      swift_unknownObjectRetain();
    }

    specialized _copyCollectionToContiguousArray<A>(_:)(v6, v52, v32, a4);
LABEL_21:
    swift_unknownObjectRelease();
LABEL_22:
    v55(v4, v57);
    v41 = specialized Collection.prefix(_:)();
    a4 = v42;
    v44 = v43;
    v6 = v45;
    v4 = specialized Collection.dropFirst(_:)();
    if ((v6 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_24:
      specialized _copyCollectionToContiguousArray<A>(_:)(v41, a4, v44, v6);
      goto LABEL_31;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v46 = swift_dynamicCastClass();
    if (!v46)
    {
      swift_unknownObjectRelease();
      v46 = MEMORY[0x277D84F90];
    }

    v47 = *(v46 + 16);

    if (!__OFSUB__(v6 >> 1, v44))
    {
      break;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    swift_unknownObjectRelease_n();
  }

  if (v47 != (v6 >> 1) - v44)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_24;
  }

  v48 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v48)
  {
    v49 = v54;
    goto LABEL_32;
  }

LABEL_31:
  v49 = v54;
  swift_unknownObjectRelease();
LABEL_32:
  swift_unknownObjectRelease();
  return v49;
}

unint64_t closure #5 in PINE.shard<A>(_:nonce:seedBytes:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v12 > 0xFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = *(a2 + 8 * result + 32);
  LOBYTE(v26[0]) = 1;

  v19 = static PINE.domainSeparationTag(usage:)(v26, a4, a5, v17, a8, a9, v18, a12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_270C44590;
  v26[0] = a4;
  v26[1] = a5;
  v26[2] = a6;
  v26[3] = a8;
  v26[4] = a9;
  v26[5] = a10;
  v26[6] = a12;
  result = type metadata accessor for PINE(0, v26);
  v21 = *(a3 + *(result + 88));
  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v21 > 0xFF)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v20 + 32) = v21;
  v22 = *(a3 + *(result + 84));
  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v22 <= 0xFF)
  {
    *(v20 + 33) = v22;
    *(v20 + 34) = v12;
    v23 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(v16, v19, v20, a6, a10);

    return v23;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t PINE.inputSharesFrom(leaderMeasurementShare:leaderProofShare:leaderWraparoundJointRandBlind:leaderVerificationJointRandBlind:helperSeeds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6[4];
  v10 = a6[5];
  v12 = a6[7];
  v21[0] = a6[2];
  v21[1] = v11;
  v21[2] = v10;
  v21[3] = v12;
  type metadata accessor for PINEInputShare(0, v21);
  v22 = Array.init()();
  v13 = *v6;
  type metadata accessor for Array();
  Array.reserveCapacity(_:)(v13);
  PINEInputShare.init(measurementShare:proofShare:wraparoundJointRandBlind:verificationJointRandBlind:)(a1, 0, a2, 0, a3, a4, v21);
  v20 = v21[0];

  result = Array.append(_:)();
  if (__OFSUB__(v13, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v13 - 1 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (v13 != 1)
  {
    v15 = 0;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF4SeedV16measurementShare_AC05proofD0AC24wraparoundJointRandBlindAC012verificationghI0tMd, &_s4VDAF4SeedV16measurementShare_AC05proofD0AC24wraparoundJointRandBlindAC012verificationghI0tMR);
      Array.subscript.getter();

      Array.subscript.getter();

      Array.subscript.getter();

      Array.subscript.getter();

      PINEInputShare.init(measurementShare:proofShare:wraparoundJointRandBlind:verificationJointRandBlind:)(v20, 1, v19, 1, v18, v17, v21);
      v20 = v21[0];
      Array.append(_:)();
      ++v15;
    }

    while (v13 - 1 != v15);
  }

  return v22;
}

uint64_t closure #1 in PINE.splitSeedBytes<A>(_:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X4>, uint64_t *a3@<X8>, uint64_t a4)
{
  v59 = *(a4 + 8);
  (v59)(a2);
  v5 = specialized Collection.prefix(_:)();
  v56 = v6;
  v8 = v7;
  v10 = v9;
  *a1 = specialized Collection.dropFirst(_:)();
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = v13;
  if (v10)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      swift_unknownObjectRelease();
      v16 = MEMORY[0x277D84F90];
    }

    v17 = *(v16 + 16);

    if (__OFSUB__(v10 >> 1, v8))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v17 != (v10 >> 1) - v8)
    {
      goto LABEL_45;
    }

    v15 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v15)
    {
      goto LABEL_11;
    }

    v15 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v5, v56, v8, v10);
    v15 = v14;
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    v56 = v15;
    (v59)(a2);
    v5 = a1[2];
    v10 = a1[3];
    v18 = specialized Collection.prefix(_:)();
    v55 = v19;
    v8 = v20;
    v22 = v21;
    *a1 = specialized Collection.dropFirst(_:)();
    a1[1] = v23;
    a1[2] = v24;
    a1[3] = v25;
    if ((v22 & 1) == 0)
    {
      swift_unknownObjectRetain();
      goto LABEL_13;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v28 = swift_dynamicCastClass();
    if (!v28)
    {
      swift_unknownObjectRelease();
      v28 = MEMORY[0x277D84F90];
    }

    v29 = *(v28 + 16);

    if (!__OFSUB__(v22 >> 1, v8))
    {
      break;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    swift_unknownObjectRelease_n();
  }

  if (v29 == (v22 >> 1) - v8)
  {
    v27 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v27)
    {
      v27 = MEMORY[0x277D84F90];
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  while (1)
  {
    swift_unknownObjectRelease_n();
LABEL_13:
    specialized _copyCollectionToContiguousArray<A>(_:)(v18, v55, v8, v22);
    v27 = v26;
LABEL_20:
    swift_unknownObjectRelease();
LABEL_21:
    v55 = v27;
    v59();
    v5 = *a1;
    v10 = specialized Collection.prefix(_:)();
    v53 = v30;
    v8 = v31;
    v33 = v32;
    *a1 = specialized Collection.dropFirst(_:)();
    a1[1] = v34;
    a1[2] = v35;
    a1[3] = v36;
    if ((v33 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_23:
      specialized _copyCollectionToContiguousArray<A>(_:)(v10, v53, v8, v33);
      v38 = v37;
      goto LABEL_30;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v39 = swift_dynamicCastClass();
    if (!v39)
    {
      swift_unknownObjectRelease();
      v39 = MEMORY[0x277D84F90];
    }

    v40 = *(v39 + 16);

    if (__OFSUB__(v33 >> 1, v8))
    {
      goto LABEL_44;
    }

    if (v40 != (v33 >> 1) - v8)
    {
      swift_unknownObjectRelease_n();
      goto LABEL_23;
    }

    v38 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v38)
    {
      goto LABEL_31;
    }

    v38 = MEMORY[0x277D84F90];
LABEL_30:
    swift_unknownObjectRelease();
LABEL_31:
    v54 = v38;
    v59();
    v18 = a1[3];
    v8 = specialized Collection.prefix(_:)();
    v60 = v41;
    v43 = v42;
    v45 = v44;
    *a1 = specialized Collection.dropFirst(_:)();
    a1[1] = v46;
    a1[2] = v47;
    a1[3] = v48;
    if ((v45 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_33:
      specialized _copyCollectionToContiguousArray<A>(_:)(v8, v60, v43, v45);
      v50 = v49;
      goto LABEL_40;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v51 = swift_dynamicCastClass();
    if (!v51)
    {
      swift_unknownObjectRelease();
      v51 = MEMORY[0x277D84F90];
    }

    v22 = *(v51 + 16);

    if (!__OFSUB__(v45 >> 1, v43))
    {
      break;
    }

    __break(1u);
  }

  if (v22 != (v45 >> 1) - v43)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_33;
  }

  v50 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease_n();
  if (v50)
  {
    goto LABEL_41;
  }

  v50 = MEMORY[0x277D84F90];
LABEL_40:
  result = swift_unknownObjectRelease();
LABEL_41:
  *a3 = v56;
  a3[1] = v55;
  a3[2] = v54;
  a3[3] = v50;
  return result;
}

uint64_t specialized Array.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static Array._allocateUninitialized(_:)();
  v14 = result;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = v7;
      v9 = *(a3 - 8);
      v10 = *(v9 + 16);
      v10(v7, a1, a3);
      v11 = a2 - 1;
      if (v11)
      {
        v12 = *(v9 + 72);
        v13 = v8 + v12;
        do
        {
          v10(v13, a1, a3);
          v13 += v12;
          --v11;
        }

        while (v11);
      }
    }

    type metadata accessor for Array();
    destructiveProjectEnumData for SeedCtrlUnadjustedError();
    return v14;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>()
{
  result = lazy protocol witness table cache variable for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>;
  if (!lazy protocol witness table cache variable for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss16PartialRangeUpToVySiGMd, &_ss16PartialRangeUpToVySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in PINE.prepareMessageFrom(_:parameter:)(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 40);
  v4 = *a2;
  v5 = type metadata accessor for Array();
  return Array<A>.elementwiseAdd(_:)(v4, v5, v3);
}

uint64_t specialized PINE.unshard<A, B>(_:numOfMeasurements:into:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a6;
  v13 = *(a4 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v18;
  v43 = v17;
  v41 = *(*(v18 + 8) + 8);
  result = dispatch thunk of Collection.isEmpty.getter();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v37 = a2;
    v20 = *(a4 + 40);
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v21 = *(a4 + 76);
    v40 = a8;
    v22 = *(a4 + 24);
    v39 = a1;
    v23 = *(a4 + 48);
    v38 = *(a4 + 64);
    v45[0] = v13;
    v45[1] = v22;
    v45[2] = v20;
    v45[3] = v23;
    v45[4] = v38;
    v24 = type metadata accessor for PINEMainCircuit(0, v45);
    WitnessTable = swift_getWitnessTable();
    v35 = v24;
    v36 = v21;
    v34 = WitnessTable;
    v26 = PINECircuit.outputLength.getter(v24, WitnessTable);
    v27 = specialized Array.init(repeating:count:)(v16, v26, v13);
    (*(v14 + 8))(v16, v13);
    v28 = AggregateShare.init(_:)(v27, &v46);
    MEMORY[0x28223BE20](v28);
    *(&v34 - 12) = v13;
    *(&v34 - 11) = v22;
    v29 = v40;
    v30 = v43;
    v31 = v44;
    *(&v34 - 10) = *(a4 + 32);
    *(&v34 - 9) = v30;
    *(&v34 - 8) = v31;
    *(&v34 - 7) = v20;
    v32 = *(a4 + 56);
    *(&v34 - 6) = v23;
    *(&v34 - 5) = v32;
    *(&v34 - 4) = v42;
    *(&v34 - 3) = v29;
    *(&v34 - 2) = v38;
    type metadata accessor for AggregateShare(0, v13, v20, v33);
    result = Sequence.reduce<A>(into:_:)();
    if (!v8)
    {
      specialized PINECircuit.decode<A>(data:numOfMeasurements:into:)(v45[0], v37, v35, v31, v34, v29);
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in PINE.aggregate<A>(_:parameter:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 48);
  v9 = *a2;
  v7 = type metadata accessor for AggregateShare(0, v5, v6, a4);
  return AggregateShare.accumulate(_:)(&v9, v7);
}

uint64_t specialized PINE.isValid(parameter:previousParameters:)(uint64_t a1, uint64_t a2)
{
  v3 = lazy protocol witness table accessor for type VoidCodable and conformance VoidCodable();

  return MEMORY[0x2821FC600](a2, &type metadata for VoidCodable, v3);
}

uint64_t specialized PINE.unshard<A>(_:numOfMeasurements:parameter:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v34 = a1;
  v32 = a5;
  v33 = a4;
  v30 = a3[6];
  v6 = v30;
  v29 = a3[3];
  v7 = v29;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v28 - v10;
  v12 = a3[8];
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v13 = a3[2];
  v31 = a3[5];
  *&v14 = v13;
  *(&v14 + 1) = v7;
  *&v15 = v31;
  *(&v15 + 1) = v6;
  v36[1] = v15;
  v36[0] = v14;
  v37 = v12;
  v16 = type metadata accessor for PINEMainCircuit(0, v36);
  WitnessTable = swift_getWitnessTable();
  v18 = PINECircuit.outputLength.getter(v16, WitnessTable);
  v19 = specialized Array.init(repeating:count:)(v11, v18, AssociatedTypeWitness);
  (*(v9 + 8))(v11, AssociatedTypeWitness);
  v38 = v19;
  v20 = type metadata accessor for Array();
  v27 = swift_getWitnessTable();
  v21 = v32;
  v22 = v33;
  default argument 3 of PINE.unshard<A, B>(_:numOfMeasurements:into:parameter:)();
  v23 = v35;
  specialized PINE.unshard<A, B>(_:numOfMeasurements:into:parameter:)(v34, &v38, v24, a3, v22, v20, v21, v27);
  v25 = v38;
  if (v23)
  {
  }

  return v25;
}

uint64_t type metadata completion function for PINE(uint64_t a1)
{
  v12 = 0;
  v1 = MEMORY[0x277D83B88];
  v16 = MEMORY[0x277D83B88];
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  v8 = *(a1 + 16);
  v9 = v8;
  v7 = v2;
  v10 = v2;
  v11 = v3;
  result = type metadata accessor for PINEMainCircuit(319, &v9);
  if (v5 <= 0x3F)
  {
    v13 = 0;
    v17 = result;
    v9 = v8;
    v10 = v7;
    v11 = v3;
    result = type metadata accessor for PINENormEqualityCheckCircuit(319, &v9);
    if (v6 <= 0x3F)
    {
      v14 = 0;
      v18 = result;
      v19 = v1;
      v15 = 0;
      v20 = v1;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PINE(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v6 | 7;
  v10 = v6 + 8;
  v7 = *(*(*(a3 + 16) - 8) + 64);
  v11 = v7 - ((-57 - v6) | v6 | 7) - ((-9 - v6 - ((((((v7 + ((v6 + 56) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v6) - 2;
  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v12 = ((((v11 + (((v10 | v9) + v11) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = a2 - v8;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v12)) == 0)
  {
LABEL_28:
    v21 = ~v9;
    v22 = (a1 + v9 + 8) & ~v9;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))((v10 + ((((((((((((((v6 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 48) & v21) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v6);
    }

    v23 = *(((((v22 + v9 + v11) & v21) + 15) & 0xFFFFFFFFFFFFFFF8) + 0x20);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v8 + (v14 | v20) + 1;
}

void storeEnumTagSinglePayload for PINE(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = v8 | 7;
  v10 = *(*(*(a4 + 16) - 8) + 64) - ((-57 - v8) | v8 | 7) - ((-9 - v8 - ((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 56) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v8) - 2;
  v11 = ((((v10 + ((((v8 + 8) | v8 | 7) + v10) & ~(v8 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v15 = 0;
    v16 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = a3 - v7;
    if (((((v10 + ((((v8 + 8) | v8 | 7) + v10) & ~(v8 | 7)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v11] = 0;
      }

      else if (v15)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        v20 = ~v9;
        v21 = &a1[v9 + 8] & ~v9;
        if (v6 < 0x7FFFFFFF)
        {
          v25 = (((v21 + v9 + v10) & v20) + 15) & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            *(v25 + 40) = 0;
            *(v25 + 24) = 0u;
            *(v25 + 8) = 0u;
            *v25 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(v25 + 32) = a2 - 1;
          }
        }

        else if (v6 >= a2)
        {
          v26 = *(v5 + 56);

          v26((v8 + 8 + ((((((((((((((v8 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8) + 48) & v20) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v8);
        }

        else
        {
          if (v10 <= 3)
          {
            v22 = ~(-1 << (8 * v10));
          }

          else
          {
            v22 = -1;
          }

          if (v10)
          {
            v23 = v22 & (~v6 + a2);
            if (v10 <= 3)
            {
              v24 = v10;
            }

            else
            {
              v24 = 4;
            }

            bzero((&a1[v9 + 8] & ~v9), v10);
            if (v24 > 2)
            {
              if (v24 == 3)
              {
                *v21 = v23;
                *(v21 + 2) = BYTE2(v23);
              }

              else
              {
                *v21 = v23;
              }
            }

            else if (v24 == 1)
            {
              *v21 = v23;
            }

            else
            {
              *v21 = v23;
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

  if (((((v10 + ((((v8 + 8) | v8 | 7) + v10) & ~(v8 | 7)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if (((((v10 + ((((v8 + 8) | v8 | 7) + v10) & ~(v8 | 7)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v18 = ~v7 + a2;
    v19 = a1;
    bzero(a1, v11);
    a1 = v19;
    *v19 = v18;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      *&a1[v11] = v17;
    }

    else
    {
      *&a1[v11] = v17;
    }
  }

  else if (v15)
  {
    a1[v11] = v17;
  }
}

uint64_t partial apply for closure #1 in PINE.unshard<A, B>(_:numOfMeasurements:into:parameter:)(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 56);
  v6 = *a2;
  return static AggregateShare.+= infix(_:_:)(a1, &v6, v3, v4);
}

uint64_t PINEPrepareMessage.init(wraparoundJointRandSeed:verificationJointRandSeed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PINEPrepareMessage.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a5@<X8>)
{
  v61 = a5;
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v12;
  v62 = *(v11 + 8);
  v63 = v11;
  v14 = v62(v12);
  if (v14 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v16 = 2 * v14;
  if (dispatch thunk of Collection.count.getter() != 2 * v14)
  {
    v64 = 0;
    v65 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    v26 = v8;
    type metadata accessor for PINEPrepareMessage(0, a2, v63, v27);
    v28 = _typeName(_:qualified:)();
    v30 = v29;

    v64 = v28;
    v65 = v30;
    MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
    v66 = v16;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v31);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v66 = dispatch thunk of Collection.count.getter();
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v32);

    v33 = v64;
    v34 = v65;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v35 = v33;
    v35[1] = v34;
    swift_willThrow();
    return (*(v26 + 8))(a1, a3);
  }

  v55 = v8;
  v17 = *(v8 + 16);
  v58 = a1;
  v17(v10, a1, a3);
  v59 = a3;
  ArraySlice.init<A>(_:)();
  (v62)(a2, v63);
  v13 = specialized Collection.prefix(_:)();
  v54 = v18;
  v60 = v19;
  v10 = v20;
  specialized Collection.dropFirst(_:)();
  v56 = v22;
  v57 = v21;
  if (v10)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v37 = swift_dynamicCastClass();
    if (!v37)
    {
      swift_unknownObjectRelease();
      v37 = MEMORY[0x277D84F90];
    }

    v38 = *(v37 + 16);

    v15 = v60;
    if (!__OFSUB__(v10 >> 1, v60))
    {
      if (v38 != (v10 >> 1) - v60)
      {
        goto LABEL_29;
      }

      v25 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      if (v25)
      {
        goto LABEL_14;
      }

      v25 = MEMORY[0x277D84F90];
      goto LABEL_13;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  swift_unknownObjectRetain();
  for (i = v60; ; i = v52)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v13, v54, i, v10);
    v25 = v24;
LABEL_13:
    swift_unknownObjectRelease();
LABEL_14:
    (v62)(a2, v63);
    v10 = v56;
    v13 = specialized Collection.prefix(_:)();
    v63 = v39;
    v41 = v40;
    a2 = v42;
    specialized Collection.dropFirst(_:)();
    if ((a2 & 1) == 0)
    {
      swift_unknownObjectRetain();
      v44 = v58;
      v43 = v59;
      v45 = v55;
LABEL_16:
      specialized _copyCollectionToContiguousArray<A>(_:)(v13, v63, v41, a2);
      v47 = v46;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      result = (*(v45 + 8))(v44, v43);
      goto LABEL_24;
    }

    v62 = v25;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v48 = swift_dynamicCastClass();
    v43 = v59;
    if (!v48)
    {
      swift_unknownObjectRelease();
      v48 = MEMORY[0x277D84F90];
    }

    v49 = *(v48 + 16);

    v44 = v58;
    if (!__OFSUB__(a2 >> 1, v41))
    {
      break;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    v52 = v15;
    swift_unknownObjectRelease_n();
  }

  if (v49 != (a2 >> 1) - v41)
  {
    swift_unknownObjectRelease_n();
    v45 = v55;
    v25 = v62;
    goto LABEL_16;
  }

  v47 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v50 = v55;
  if (!v47)
  {
    swift_unknownObjectRelease();
    v47 = MEMORY[0x277D84F90];
  }

  (*(v50 + 8))(v44, v43);
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v25 = v62;
LABEL_24:
  v51 = v61;
  *v61 = v25;
  v51[1] = v47;
  return result;
}

uint64_t static PINEPrepareMessage.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  result = a1[1];
  v6 = a2[1];
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return specialized static Seed.== infix(_:_:)(result, v6);
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      return specialized static Seed.== infix(_:_:)(result, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t PINEPrepareMessage.encodedLength.getter()
{
  v1 = *(*v0 + 16);
  v2 = *(v0[1] + 16);
  result = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

uint64_t PINEPrepareMessage.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = v4[1];
  Seed.encode<A>(into:)(a1, v8, a3, a4);

  return Seed.encode<A>(into:)(a1, v9, a3, a4);
}

uint64_t type metadata instantiation function for PINEPrepareMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySays5UInt8VGAJG_AIs5NeverOTg5018_sxxxIgnnr_x_xtxs5g40OIegnrzr_s17FixedWidthIntegerRzSURzlTRs5f25V_TG5012_sSa4VDAFs17bcd34pQ44E3xorySayxGADKFxx_xtXEfU_s5E5V_TG5Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v34 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v7 = v6;
  result = v34;
  v32 = a1;
  v33 = a2;
  if (v6)
  {
    v9 = (a1 + 32);
    v10 = (a2 + 32);
    v11 = v7;
    v12 = v4;
    v13 = v5;
    v14 = v4;
    v15 = v5;
    while (v12)
    {
      if (!v13)
      {
        goto LABEL_23;
      }

      v16 = *v9;
      v17 = *v10;
      v35 = result;
      v19 = *(result + 16);
      v18 = *(result + 24);
      if (v19 >= v18 >> 1)
      {
        v28 = v7;
        v30 = v14;
        v27 = v15;
        v26 = *v9;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v16 = v26;
        v15 = v27;
        v7 = v28;
        v14 = v30;
        result = v35;
      }

      *(result + 16) = v19 + 1;
      --v13;
      *(result + v19 + 32) = v17 ^ v16;
      --v12;
      ++v10;
      ++v9;
      if (!--v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = v4;
  v15 = v5;
LABEL_13:
  if (v14 > v15)
  {
    while (v7 < v14)
    {
      v20 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_25;
      }

      if (v15 != v7)
      {
        if (v7 >= v15)
        {
          goto LABEL_26;
        }

        v21 = *(v32 + 32 + v7);
        v22 = *(v33 + 32 + v7);
        v36 = result;
        v24 = *(result + 16);
        v23 = *(result + 24);
        if (v24 >= v23 >> 1)
        {
          v29 = v7;
          v31 = v14;
          v25 = v15;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
          v7 = v29;
          v14 = v31;
          v15 = v25;
          result = v36;
        }

        *(result + 16) = v24 + 1;
        *(result + v24 + 32) = v22 ^ v21;
        ++v7;
        if (v20 != v14)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

void *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_s10ArraySliceVyANGTt1g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if ((a8 & 1) == 0)
  {
    v31 = a5 & 1;
    if ((a7 | a6) < 0)
    {
      __break(1u);
    }

    else
    {
      v15 = a6 * a7;
      if ((a6 * a7) >> 64 == (a6 * a7) >> 63)
      {
        v16 = (a4 >> 1) - a3;
        if (!__OFSUB__(a4 >> 1, a3))
        {
          if (v15 != v16)
          {
            _StringGuts.grow(_:)(36);

            v19 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v19);

            MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
            v20 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v20);

            MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
            swift_unknownObjectRelease();
            v30[4] = v16;
            v21 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v21);

            v8 = 0xD000000000000020;
            lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
            swift_allocError();
            *v22 = 0xD000000000000020;
            v22[1] = 0x8000000270C531B0;
            goto LABEL_10;
          }

          if ((a4 & 1) == 0)
          {
            goto LABEL_8;
          }

          v29 = a2;
          v9 = a3;
          v10 = a4;
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v24 = swift_dynamicCastClass();
          if (!v24)
          {
            swift_unknownObjectRelease();
            v24 = MEMORY[0x277D84F90];
          }

          v25 = *(v24 + 16);

          if (v25 == v15)
          {
            v18 = swift_dynamicCastClass();
            v26 = swift_unknownObjectRelease();
            if (v18)
            {
LABEL_18:
              v27 = (2 * *(v18 + 16)) | 1;
              v30[0] = v18;
              v30[1] = v18 + 32;
              v30[2] = 0;
              v30[3] = v27;
              MEMORY[0x28223BE20](v26);
              v28[2] = v30;
              v28[3] = a7;
              v28[4] = &v31;
              v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field40VsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v28, 0, a6);
              swift_unknownObjectRelease();
              return v8;
            }

            v18 = MEMORY[0x277D84F90];
LABEL_17:
            v26 = swift_unknownObjectRelease();
            goto LABEL_18;
          }

LABEL_22:
          swift_unknownObjectRelease();
          a4 = v10;
          a3 = v9;
          a2 = v29;
LABEL_8:
          specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
          v18 = v17;
          goto LABEL_17;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  swift_unknownObjectRelease();
  lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
  swift_allocError();
  *v12 = 0;
  v12[1] = 0;
LABEL_10:
  swift_willThrow();
  return v8;
}

_BYTE *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_SWTt1g5(_BYTE *result, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v7 = 0;
    v7[1] = 0;
LABEL_11:
    swift_willThrow();
    return v6;
  }

  v20 = a3 & 1;
  if ((a5 | a4) < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = a4 * a5;
    if ((a4 * a5) >> 64 == (a4 * a5) >> 63)
    {
      if (result)
      {
        v11 = a2 - result;
        if (v10 == a2 - result)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (!v10)
        {
LABEL_13:
          v16 = specialized _copyCollectionToContiguousArray<A>(_:)(result, a2);
          v17 = v16[2];
          v19[0] = v16;
          v19[1] = v16 + 4;
          v19[2] = 0;
          v19[3] = (2 * v17) | 1;
          MEMORY[0x28223BE20](v16);
          v18[2] = v19;
          v18[3] = a5;
          v18[4] = &v20;
          v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field40VsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v18, 0, a4);
          swift_unknownObjectRelease();
          return v6;
        }

        v11 = 0;
      }

      _StringGuts.grow(_:)(36);

      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v12);

      MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v13);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v19[4] = v11;
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v14);

      v6 = 0xD000000000000020;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v15 = 0xD000000000000020;
      v15[1] = 0x8000000270C531B0;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA8BitMasksC_s10ArraySliceVyANGTt1g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  if (a5[4])
  {
    swift_unknownObjectRelease();
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v10 = 0;
    v10[1] = 0;
LABEL_10:
    swift_willThrow();
    return v5;
  }

  v11 = a5[2];
  v12 = a5[3];
  v13 = *(a5 + 8);
  v31 = *a5;
  v32 = v13 & 1;
  if ((v12 | v11) < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v14 = v11 * v12;
  if ((v11 * v12) >> 64 != (v11 * v12) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v14 != v15)
  {
    _StringGuts.grow(_:)(36);

    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v19);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    swift_unknownObjectRelease();
    v33 = v15;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v20);

    v5 = 0xD000000000000021;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v21 = 0xD000000000000021;
    v21[1] = 0x8000000270C52FC0;
    goto LABEL_10;
  }

  v5 = v6;
  if ((a4 & 1) == 0)
  {
    goto LABEL_8;
  }

  v29 = a2;
  v7 = a3;
  v8 = a4;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    swift_unknownObjectRelease();
    v23 = MEMORY[0x277D84F90];
  }

  v24 = *(v23 + 16);

  if (v24 != v14)
  {
LABEL_24:
    swift_unknownObjectRelease();
    a4 = v8;
    a3 = v7;
    a2 = v29;
LABEL_8:
    specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
    v17 = v16;
LABEL_17:
    v25 = swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v17 = swift_dynamicCastClass();
  v25 = swift_unknownObjectRelease();
  if (!v17)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

LABEL_18:
  v26 = (2 * *(v17 + 16)) | 1;
  v30[0] = v17;
  v30[1] = v17 + 32;
  v30[2] = 0;
  v30[3] = v26;
  MEMORY[0x28223BE20](v25);
  v28[2] = v30;
  v28[3] = v12;
  v28[4] = &v31;
  v27 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF8BitMasksCsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v28, 0, v11);
  if (!v5)
  {
    v5 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC4VDAF8BitMasksC_SayAFGTt0g5(v27);
  }

  swift_unknownObjectRelease();
  return v5;
}

char *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA16InnerCorrectionsV_s10ArraySliceVyANGTt1B5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, __int128 *a5)
{
  if ((*(a5 + 40) & 1) == 0)
  {
    v10 = *(a5 + 3);
    v11 = *(a5 + 4);
    v12 = *(a5 + 16);
    v29 = *a5;
    v30 = v12 & 1;
    if ((v11 | v10) < 0)
    {
      __break(1u);
    }

    else
    {
      v13 = v10 * v11;
      if ((v10 * v11) >> 64 == (v10 * v11) >> 63)
      {
        v14 = (a4 >> 1) - a3;
        if (!__OFSUB__(a4 >> 1, a3))
        {
          if (v13 != v14)
          {
            _StringGuts.grow(_:)(36);

            v17 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v17);

            MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
            v18 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v18);

            MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
            swift_unknownObjectRelease();
            v31 = v14;
            v19 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v19);

            v5 = 0xD000000000000029;
            lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
            swift_allocError();
            *v20 = 0xD000000000000029;
            v20[1] = 0x8000000270C52FF0;
            goto LABEL_10;
          }

          if ((a4 & 1) == 0)
          {
            goto LABEL_8;
          }

          v27 = a2;
          v6 = a3;
          v7 = a4;
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v22 = swift_dynamicCastClass();
          if (!v22)
          {
            swift_unknownObjectRelease();
            v22 = MEMORY[0x277D84F90];
          }

          v23 = *(v22 + 16);

          if (v23 == v13)
          {
            v16 = swift_dynamicCastClass();
            v24 = swift_unknownObjectRelease();
            if (v16)
            {
LABEL_18:
              v25 = (2 * *(v16 + 16)) | 1;
              v28[0] = v16;
              v28[1] = v16 + 32;
              v28[2] = 0;
              v28[3] = v25;
              MEMORY[0x28223BE20](v24);
              v26[2] = v28;
              v26[3] = v11;
              v26[4] = &v29;
              v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF16InnerCorrectionsVsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v26, 0, v10);
              swift_unknownObjectRelease();
              return v5;
            }

            v16 = MEMORY[0x277D84F90];
LABEL_17:
            v24 = swift_unknownObjectRelease();
            goto LABEL_18;
          }

LABEL_22:
          swift_unknownObjectRelease();
          a4 = v7;
          a3 = v6;
          a2 = v27;
LABEL_8:
          specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
          v16 = v15;
          goto LABEL_17;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  swift_unknownObjectRelease();
  lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
  swift_allocError();
  *v9 = 0;
  v9[1] = 0;
LABEL_10:
  swift_willThrow();
  return v5;
}

char *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA29OneBlockSparseInnerCorrectionV_s10ArraySliceVyANGTt1g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  if ((a5[4] & 1) == 0)
  {
    v10 = a5[2];
    v11 = a5[3];
    v12 = *(a5 + 8);
    v29 = *a5;
    v30 = v12 & 1;
    if ((v11 | v10) < 0)
    {
      __break(1u);
    }

    else
    {
      v13 = v10 * v11;
      if ((v10 * v11) >> 64 == (v10 * v11) >> 63)
      {
        v14 = (a4 >> 1) - a3;
        if (!__OFSUB__(a4 >> 1, a3))
        {
          if (v13 != v14)
          {
            _StringGuts.grow(_:)(36);

            v17 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v17);

            MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
            v18 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v18);

            MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
            swift_unknownObjectRelease();
            v31 = v14;
            v19 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v19);

            v5 = 0xD000000000000036;
            lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
            swift_allocError();
            *v20 = 0xD000000000000036;
            v20[1] = 0x8000000270C53130;
            goto LABEL_10;
          }

          if ((a4 & 1) == 0)
          {
            goto LABEL_8;
          }

          v27 = a2;
          v6 = a3;
          v7 = a4;
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v22 = swift_dynamicCastClass();
          if (!v22)
          {
            swift_unknownObjectRelease();
            v22 = MEMORY[0x277D84F90];
          }

          v23 = *(v22 + 16);

          if (v23 == v13)
          {
            v16 = swift_dynamicCastClass();
            v24 = swift_unknownObjectRelease();
            if (v16)
            {
LABEL_18:
              v25 = (2 * *(v16 + 16)) | 1;
              v28[0] = v16;
              v28[1] = v16 + 32;
              v28[2] = 0;
              v28[3] = v25;
              MEMORY[0x28223BE20](v24);
              v26[2] = v28;
              v26[3] = v11;
              v26[4] = &v29;
              v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF29OneBlockSparseInnerCorrectionVsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v26, 0, v10);
              swift_unknownObjectRelease();
              return v5;
            }

            v16 = MEMORY[0x277D84F90];
LABEL_17:
            v24 = swift_unknownObjectRelease();
            goto LABEL_18;
          }

LABEL_22:
          swift_unknownObjectRelease();
          a4 = v7;
          a3 = v6;
          a2 = v27;
LABEL_8:
          specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
          v16 = v15;
          goto LABEL_17;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  swift_unknownObjectRelease();
  lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
  swift_allocError();
  *v9 = 0;
  v9[1] = 0;
LABEL_10:
  swift_willThrow();
  return v5;
}

void *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA22SiblingLeafCorrectionsVyAA7Field32VG_SayANGTt1g5(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v6 = 0;
    v6[1] = 0;
    goto LABEL_8;
  }

  v17 = a2 & 1;
  if ((a4 | a3) < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a3 * a4;
    if ((a3 * a4) >> 64 == (a3 * a4) >> 63)
    {
      v9 = result[2];
      if (v8 == v9)
      {
        v16[0] = result;
        v16[1] = result + 4;
        v16[2] = 0;
        v16[3] = (2 * v8) | 1;
        MEMORY[0x28223BE20](result);
        v15[2] = v16;
        v15[3] = v10;
        v15[4] = &v17;
        v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF22SiblingLeafCorrectionsVyAG7Field32VGsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v15, 0, a3);
        swift_unknownObjectRelease();
        return v5;
      }

      _StringGuts.grow(_:)(36);

      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v11);

      MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v12);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v16[4] = v9;
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v13);

      v5 = 0xD000000000000038;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v14 = 0xD000000000000038;
      v14[1] = 0x8000000270C53170;
LABEL_8:
      swift_willThrow();
      return v5;
    }
  }

  __break(1u);
  return result;
}

char *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_s10ArraySliceVyANGTt1g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if ((a8 & 1) == 0)
  {
    v31 = a5 & 1;
    if ((a7 | a6) < 0)
    {
      __break(1u);
    }

    else
    {
      v15 = a6 * a7;
      if ((a6 * a7) >> 64 == (a6 * a7) >> 63)
      {
        v16 = (a4 >> 1) - a3;
        if (!__OFSUB__(a4 >> 1, a3))
        {
          if (v15 != v16)
          {
            _StringGuts.grow(_:)(36);

            v19 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v19);

            MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
            v20 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v20);

            MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
            swift_unknownObjectRelease();
            v30[4] = v16;
            v21 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v21);

            v8 = 0xD000000000000020;
            lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
            swift_allocError();
            *v22 = 0xD000000000000020;
            v22[1] = 0x8000000270C530E0;
            goto LABEL_10;
          }

          if ((a4 & 1) == 0)
          {
            goto LABEL_8;
          }

          v29 = a2;
          v9 = a3;
          v10 = a4;
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v24 = swift_dynamicCastClass();
          if (!v24)
          {
            swift_unknownObjectRelease();
            v24 = MEMORY[0x277D84F90];
          }

          v25 = *(v24 + 16);

          if (v25 == v15)
          {
            v18 = swift_dynamicCastClass();
            v26 = swift_unknownObjectRelease();
            if (v18)
            {
LABEL_18:
              v27 = (2 * *(v18 + 16)) | 1;
              v30[0] = v18;
              v30[1] = v18 + 32;
              v30[2] = 0;
              v30[3] = v27;
              MEMORY[0x28223BE20](v26);
              v28[2] = v30;
              v28[3] = a7;
              v28[4] = &v31;
              v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field32VsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v28, 0, a6);
              swift_unknownObjectRelease();
              return v8;
            }

            v18 = MEMORY[0x277D84F90];
LABEL_17:
            v26 = swift_unknownObjectRelease();
            goto LABEL_18;
          }

LABEL_22:
          swift_unknownObjectRelease();
          a4 = v10;
          a3 = v9;
          a2 = v29;
LABEL_8:
          specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
          v18 = v17;
          goto LABEL_17;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  swift_unknownObjectRelease();
  lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
  swift_allocError();
  *v12 = 0;
  v12[1] = 0;
LABEL_10:
  swift_willThrow();
  return v8;
}

char *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_SWTt1g5(char *result, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v7 = 0;
    v7[1] = 0;
LABEL_11:
    swift_willThrow();
    return v6;
  }

  v20 = a3 & 1;
  if ((a5 | a4) < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = a4 * a5;
    if ((a4 * a5) >> 64 == (a4 * a5) >> 63)
    {
      if (result)
      {
        v11 = a2 - result;
        if (v10 == a2 - result)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (!v10)
        {
LABEL_13:
          v16 = specialized _copyCollectionToContiguousArray<A>(_:)(result, a2);
          v17 = v16[2];
          v19[0] = v16;
          v19[1] = v16 + 4;
          v19[2] = 0;
          v19[3] = (2 * v17) | 1;
          MEMORY[0x28223BE20](v16);
          v18[2] = v19;
          v18[3] = a5;
          v18[4] = &v20;
          v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field32VsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v18, 0, a4);
          swift_unknownObjectRelease();
          return v6;
        }

        v11 = 0;
      }

      _StringGuts.grow(_:)(36);

      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v12);

      MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v13);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v19[4] = v11;
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v14);

      v6 = 0xD000000000000020;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v15 = 0xD000000000000020;
      v15[1] = 0x8000000270C530E0;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_s10ArraySliceVyANGTt1g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if ((a8 & 1) == 0)
  {
    v31 = a5 & 1;
    if ((a7 | a6) < 0)
    {
      __break(1u);
    }

    else
    {
      v15 = a6 * a7;
      if ((a6 * a7) >> 64 == (a6 * a7) >> 63)
      {
        v16 = (a4 >> 1) - a3;
        if (!__OFSUB__(a4 >> 1, a3))
        {
          if (v15 != v16)
          {
            _StringGuts.grow(_:)(36);

            v19 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v19);

            MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
            v20 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v20);

            MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
            swift_unknownObjectRelease();
            v30[4] = v16;
            v21 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v21);

            v8 = 0xD000000000000020;
            lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
            swift_allocError();
            *v22 = 0xD000000000000020;
            v22[1] = 0x8000000270C53050;
            goto LABEL_10;
          }

          if ((a4 & 1) == 0)
          {
            goto LABEL_8;
          }

          v29 = a2;
          v9 = a3;
          v10 = a4;
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v24 = swift_dynamicCastClass();
          if (!v24)
          {
            swift_unknownObjectRelease();
            v24 = MEMORY[0x277D84F90];
          }

          v25 = *(v24 + 16);

          if (v25 == v15)
          {
            v18 = swift_dynamicCastClass();
            v26 = swift_unknownObjectRelease();
            if (v18)
            {
LABEL_18:
              v27 = (2 * *(v18 + 16)) | 1;
              v30[0] = v18;
              v30[1] = v18 + 32;
              v30[2] = 0;
              v30[3] = v27;
              MEMORY[0x28223BE20](v26);
              v28[2] = v30;
              v28[3] = a7;
              v28[4] = &v31;
              v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field64VsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v28, 0, a6);
              swift_unknownObjectRelease();
              return v8;
            }

            v18 = MEMORY[0x277D84F90];
LABEL_17:
            v26 = swift_unknownObjectRelease();
            goto LABEL_18;
          }

LABEL_22:
          swift_unknownObjectRelease();
          a4 = v10;
          a3 = v9;
          a2 = v29;
LABEL_8:
          specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
          v18 = v17;
          goto LABEL_17;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  swift_unknownObjectRelease();
  lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
  swift_allocError();
  *v12 = 0;
  v12[1] = 0;
LABEL_10:
  swift_willThrow();
  return v8;
}

_BYTE *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_SWTt1g5(_BYTE *result, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v7 = 0;
    v7[1] = 0;
LABEL_11:
    swift_willThrow();
    return v6;
  }

  v20 = a3 & 1;
  if ((a5 | a4) < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = a4 * a5;
    if ((a4 * a5) >> 64 == (a4 * a5) >> 63)
    {
      if (result)
      {
        v11 = a2 - result;
        if (v10 == a2 - result)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (!v10)
        {
LABEL_13:
          v16 = specialized _copyCollectionToContiguousArray<A>(_:)(result, a2);
          v17 = v16[2];
          v19[0] = v16;
          v19[1] = v16 + 4;
          v19[2] = 0;
          v19[3] = (2 * v17) | 1;
          MEMORY[0x28223BE20](v16);
          v18[2] = v19;
          v18[3] = a5;
          v18[4] = &v20;
          v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field64VsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v18, 0, a4);
          swift_unknownObjectRelease();
          return v6;
        }

        v11 = 0;
      }

      _StringGuts.grow(_:)(36);

      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v12);

      MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v13);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v19[4] = v11;
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v14);

      v6 = 0xD000000000000020;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v15 = 0xD000000000000020;
      v15[1] = 0x8000000270C53050;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

_BYTE *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA25OneBlockSparsePublicShareVyAA7Field32VG_SWTt1B5(_BYTE *result, _BYTE *a2, __int128 *a3)
{
  if (a3[3])
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v4 = 0;
    v4[1] = 0;
LABEL_11:
    swift_willThrow();
    return v3;
  }

  v5 = *(a3 + 4);
  v6 = *(a3 + 5);
  v7 = *(a3 + 24);
  v8 = *(a3 + 2);
  v19 = *a3;
  v20 = v8;
  v21 = v7 & 1;
  if ((v6 | v5) < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = v5 * v6;
    if ((v5 * v6) >> 64 == (v5 * v6) >> 63)
    {
      if (result)
      {
        v10 = a2 - result;
        if (v9 == a2 - result)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (!v9)
        {
LABEL_13:
          v15 = specialized _copyCollectionToContiguousArray<A>(_:)(result, a2);
          v16 = v15[2];
          v18[0] = v15;
          v18[1] = v15 + 4;
          v18[2] = 0;
          v18[3] = (2 * v16) | 1;
          MEMORY[0x28223BE20](v15);
          v17[2] = v18;
          v17[3] = v6;
          v17[4] = &v19;
          v3 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF25OneBlockSparsePublicShareVyAG7Field32VGsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v17, 0, v5);
          swift_unknownObjectRelease();
          return v3;
        }

        v10 = 0;
      }

      _StringGuts.grow(_:)(36);

      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v11);

      MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v12);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v18[4] = v10;
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v13);

      v3 = 0xD00000000000003BLL;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v14 = 0xD00000000000003BLL;
      v14[1] = 0x8000000270C530A0;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

char *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_SayANGTt1g5(char *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v6 = 0;
    v6[1] = 0;
    goto LABEL_8;
  }

  v17 = a2 & 1;
  if ((a4 | a3) < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a3 * a4;
    if ((a3 * a4) >> 64 == (a3 * a4) >> 63)
    {
      v9 = *(result + 2);
      if (v8 == v9)
      {
        v16[0] = result;
        v16[1] = result + 32;
        v16[2] = 0;
        v16[3] = (2 * v8) | 1;
        MEMORY[0x28223BE20](result);
        v15[2] = v16;
        v15[3] = v10;
        v15[4] = &v17;
        v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field32VsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v15, 0, a3);
        swift_unknownObjectRelease();
        return v5;
      }

      _StringGuts.grow(_:)(36);

      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v11);

      MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v12);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v16[4] = v9;
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v13);

      v5 = 0xD000000000000020;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v14 = 0xD000000000000020;
      v14[1] = 0x8000000270C530E0;
LABEL_8:
      swift_willThrow();
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field32V_Tt1g5@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 0;
  if (result >= 0xFFF00002)
  {
LABEL_12:
    _StringGuts.grow(_:)(40);

    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v7);

    MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (result == -1048575)
  {
    *a2 = 0;
    return result;
  }

  v2 = 266338049 * result;
  v3 = 4293918721 * (1048831 * result);
  v4 = __CFADD__(v3, v2);
  v5 = v3 + v2;
  v6 = HIDWORD(v5);
  if (v4)
  {
    if (HIDWORD(v5) < 0xFFF00001)
    {
      *a2 = HIDWORD(v5) + 0xFFFFF;
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v5 >= 0xFFF0000100000000)
  {
    LODWORD(v6) = HIDWORD(v5) + 0xFFFFF;
  }

  *a2 = v6;
  return result;
}

unint64_t _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field40V_Tt1g5@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  *a2 = 0;
  if (result > 0xFFFEB00001)
  {
    _StringGuts.grow(_:)(40);

    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v6);

    MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v7);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (result == 0xFFFEB00001)
  {
    *a2 = 0;
  }

  else
  {
    v2 = (result * 0x160DCD7524uLL) >> 64;
    v3 = (0x1B8024032F28ADCLL * result * 0xFFFEB00001uLL) >> 64;
    v4 = v2 + __CFADD__(0xFFFFFFE9F2328ADCLL * result, 0x160DCD7524 * result) + v3;
    if (v4 >= 0xFFFEB00001)
    {
      v5 = v4 - 0xFFFEB00001;
    }

    else
    {
      v5 = v2 + __CFADD__(0xFFFFFFE9F2328ADCLL * result, 0x160DCD7524 * result) + v3;
    }

    *a2 = v5;
  }

  return result;
}

unint64_t _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field64V_Tt1g5@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  *a2 = 0;
  if (result >= 0xFFFFFFFF00000002)
  {
LABEL_20:
    _StringGuts.grow(_:)(40);

    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v11);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (result == 0xFFFFFFFF00000001)
  {
    *a2 = 0;
    return result;
  }

  v2 = (result * 0xFFFFFFFE00000001) >> 64;
  v3 = (0xFFFFFFFF * result * 0xFFFFFFFF00000001) >> 64;
  v4 = __CFADD__(0x1FFFFFFFFLL * result, 0xFFFFFFFE00000001 * result);
  v5 = v3 + v2;
  if (__CFADD__(v3, v2))
  {
    v6 = v5 + v4;
LABEL_10:
    v7 = __CFADD__(v6, 0xFFFFFFFFLL);
    v8 = v6 + 0xFFFFFFFFLL;
    if (!v7)
    {
      *a2 = v8;
      return result;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v5 == -1)
  {
    if (!v4)
    {
      *a2 = 4294967294;
      return result;
    }

    v6 = 0;
    goto LABEL_10;
  }

  v9 = v5 + v4;
  if (v9 >= 0xFFFFFFFF00000001)
  {
    v9 += 0xFFFFFFFFLL;
  }

  *a2 = v9;
  return result;
}

_OWORD *_s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA8Field128V_Tt1B5@<X0>(_OWORD *result@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (one-time initialization token for p != -1)
  {
    v32 = result;
    v33 = a2;
    swift_once();
    result = v32;
    a2 = v33;
  }

  v4 = static MontgomeryFiniteField128.p < result;
  if (*(&static MontgomeryFiniteField128.p + 1) != a2)
  {
    v4 = *(&static MontgomeryFiniteField128.p + 1) < a2;
  }

  if (!v4)
  {
    v5 = *(&static MontgomeryFiniteField128.p + 1) > a2;
    if (*(&static MontgomeryFiniteField128.p + 1) == a2)
    {
      v5 = static MontgomeryFiniteField128.p > result;
    }

    if (!v5)
    {
      v11 = 0;
      v12 = 0;
LABEL_81:
      *a3 = v11;
      a3[1] = v12;
      return result;
    }

    if (one-time initialization token for r2 != -1)
    {
      v34 = result;
      v35 = a2;
      swift_once();
      result = v34;
      a2 = v35;
    }

    v43 = result;
    v44 = a2;
    v42 = static MontgomeryFiniteField128.r2;
    _UInt128.multipliedFullWidth(by:)(&v39, &v45, &v42);
    v6 = v39;
    v7 = v45;
    v45 = static MontgomeryFiniteField128.p;
    v43 = -v7;
    v44 = 0;
    _UInt128.multipliedFullWidth(by:)(&v39, &v40, &v43);
    v8 = __CFADD__(v40, v7);
    v9 = v41 + *(&v7 + 1);
    if (__CFADD__(v41, *(&v7 + 1)))
    {
      v10 = 1;
    }

    else
    {
      if (!((v9 == -1) | v8 & 1))
      {
        v10 = 0;
LABEL_22:
        v13 = v6 + v39;
        v14 = __CFADD__(v6, v39);
        v15 = *(&v6 + 1) + *(&v39 + 1);
        if (__CFADD__(*(&v6 + 1), *(&v39 + 1)))
        {
          if (v14)
          {
LABEL_32:
            ++v15;
            if ((v10 & 1) == 0)
            {
              goto LABEL_33;
            }

            goto LABEL_29;
          }
        }

        else
        {
          if (v15 == -1)
          {
            v15 = v14 - 1;
            if ((v10 & 1) == 0)
            {
              goto LABEL_33;
            }

            goto LABEL_29;
          }

          if (v14)
          {
            goto LABEL_32;
          }
        }

        if ((v10 & 1) == 0)
        {
LABEL_33:
          v16 = 0;
LABEL_34:
          v17 = v13 + v16;
          if (__CFADD__(v13, v16))
          {
            v18 = v15 + 1;
          }

          else
          {
            v18 = v15;
          }

          v19 = static MontgomeryFiniteField128.p;
          v42 = static MontgomeryFiniteField128.p;
          v38[0] = -v9;
          v38[1] = 0;
          result = _UInt128.multipliedFullWidth(by:)(&v45, &v43, v38);
          v20 = *(&v45 + 1);
          v21 = __CFADD__(v43, v9);
          v11 = v44 + v17;
          if (__CFADD__(v44, v17))
          {
            v11 += v21;
            v22 = v18 + v45;
            v23 = __CFADD__(v18, v45);
            if (*(&v45 + 1) == -1)
            {
              v20 = v23 - 1;
            }

            else
            {
              v20 = *(&v45 + 1) + v23;
            }

            v24 = 1;
            goto LABEL_70;
          }

          if (v11 != -1 && !v21)
          {
            v22 = v18 + v45;
            v27 = __CFADD__(v18, v45);
            if (*(&v45 + 1) == -1)
            {
              v20 = v27 - 1;
            }

            else
            {
              v20 = *(&v45 + 1) + v27;
            }

            goto LABEL_69;
          }

          v25 = v11 == -1 && v21;
          v11 += (v11 != -1) | v21;
          v22 = v18 + v45;
          v26 = __CFADD__(v18, v45);
          if (*(&v45 + 1) == -1)
          {
            v20 = v26 - 1;
            if (v25)
            {
              goto LABEL_68;
            }
          }

          else
          {
            if (v26)
            {
              v20 = *(&v45 + 1) + 1;
              if (!v25)
              {
                goto LABEL_69;
              }

LABEL_68:
              v24 = 1;
LABEL_70:
              v28 = __CFADD__(v22, v24);
              v12 = v22 + v24;
              v29 = v28;
              if (v20 != v29 << 63 >> 63)
              {
                goto LABEL_77;
              }

              v30 = v11 < v19;
              if (v12 != *(&v19 + 1))
              {
                v30 = v12 < *(&v19 + 1);
              }

              if (!v30)
              {
LABEL_77:
                v28 = v11 >= v19;
                v11 -= v19;
                v31 = !v28;
                v12 = v12 - *(&v19 + 1) - v31;
              }

              goto LABEL_81;
            }

            if (v25)
            {
              goto LABEL_68;
            }
          }

LABEL_69:
          v24 = 0;
          goto LABEL_70;
        }

LABEL_29:
        v16 = 1;
        goto LABEL_34;
      }

      v10 = (v9 == -1) & v8;
      v8 |= v9 != -1;
    }

    v9 += v8 & 1;
    goto LABEL_22;
  }

  _StringGuts.grow(_:)(40);

  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v36 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v36);

  MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
  v37 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v37);

  MEMORY[0x2743B25F0](41, 0xE100000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void _s4VDAF12FieldElementPAAE5bytes4maskxqd___06FiniteB0_11IntegerTypeQZtKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field40V_s10ArraySliceVyAJGTt2g5(uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    return;
  }

  if ((a4 >> 1) - a3 == 5)
  {
    v9 = specialized decodeInteger<A, B>(from:encodedLength:)(a2, a3, a4, 5uLL);
    swift_unknownObjectRelease();
    if (v6)
    {
      return;
    }

    if ((v9 & a5) < 0xFFFEB00001)
    {
      _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field40V_Tt1g5(v9 & a5, a6);
      return;
    }

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 5;
  }

  else
  {
    _StringGuts.grow(_:)(31);

    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    swift_unknownObjectRelease();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v11);

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v12 = 0xD000000000000019;
    *(v12 + 8) = 0x8000000270C531E0;
    *(v12 + 16) = 0;
  }

  swift_willThrow();
}

void _s4VDAF12FieldElementPAAE5bytes4maskxqd___06FiniteB0_11IntegerTypeQZtKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_s10ArraySliceVyAJGTt2g5(uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unsigned int a5@<W4>, _DWORD *a6@<X8>)
{
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    return;
  }

  if ((a4 >> 1) - a3 == 4)
  {
    v9 = specialized decodeInteger<A, B>(from:encodedLength:)(a2, a3, a4, 4);
    swift_unknownObjectRelease();
    if (v6)
    {
      return;
    }

    v10 = v9 & a5;
    if (v10 < 0xFFF00001)
    {
      _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field32V_Tt1g5(v10, a6);
      return;
    }

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 5;
  }

  else
  {
    _StringGuts.grow(_:)(31);

    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v11);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    swift_unknownObjectRelease();
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v12);

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v13 = 0xD000000000000019;
    *(v13 + 8) = 0x8000000270C53110;
    *(v13 + 16) = 0;
  }

  swift_willThrow();
}

void _s4VDAF12FieldElementPAAE5bytes4maskxqd___06FiniteB0_11IntegerTypeQZtKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field64V_s10ArraySliceVyAJGTt2g5(uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    return;
  }

  if ((a4 >> 1) - a3 == 8)
  {
    v9 = specialized decodeInteger<A, B>(from:encodedLength:)(a2, a3, a4, 8uLL);
    swift_unknownObjectRelease();
    if (v6)
    {
      return;
    }

    if ((v9 & a5) < 0xFFFFFFFF00000001)
    {
      _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field64V_Tt1g5(v9 & a5, a6);
      return;
    }

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 5;
  }

  else
  {
    _StringGuts.grow(_:)(31);

    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    swift_unknownObjectRelease();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v11);

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v12 = 0xD000000000000019;
    *(v12 + 8) = 0x8000000270C53080;
    *(v12 + 16) = 0;
  }

  swift_willThrow();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance OneBlockSparseInnerCorrection(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return specialized static OneBlockSparseInnerCorrection.== infix(_:_:)(*a1, v2 | *(a1 + 8), *a2, v3 | *(a2 + 8));
}

uint64_t OneBlockSparseInnerCorrectionDecodableParameter.encodedLength.getter(uint64_t a1)
{
  v1 = __OFADD__(a1, 2);
  result = a1 + 2;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t _s4VDAF29OneBlockSparseInnerCorrectionV4from9parameterACx_AA0bcdeF18DecodableParameterVSgtKcSkRzs5UInt8V7ElementRtzlufCs10ArraySliceVyAJG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    if (a5 <= 0)
    {
      swift_unknownObjectRelease();
      lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
      swift_allocError();
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *v16 = a5;
      v17 = 1;
      goto LABEL_21;
    }

    if (__OFADD__(a5, 2))
    {
      __break(1u);
    }

    else
    {
      v12 = a4 >> 1;
      if (!__OFSUB__(a4 >> 1, a3))
      {
        if (a5 + 2 != (a4 >> 1) - a3)
        {
          _StringGuts.grow(_:)(31);

          v18 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x2743B25F0](v18);

          MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
          swift_unknownObjectRelease();
          v19 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x2743B25F0](v19);

          v7 = 0x8000000270C52E60;
          lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
          swift_allocError();
          *v20 = 0xD00000000000002FLL;
          v20[1] = 0x8000000270C52E60;
          goto LABEL_22;
        }

        v8 = a3 + a5;
        if (!__OFADD__(a3, a5))
        {
          v13 = v8 + 1;
          if (!__OFADD__(v8, 1))
          {
            if (v8 >= a3 && v8 < v12)
            {
              if (v13 >= a3 && v13 < v12)
              {
                if (*(a2 + v8) <= 1u && *(a2 + v13) < 2u)
                {
                  if ((v8 & 0x8000000000000000) == 0)
                  {
                    if ((a4 & 1) == 0)
                    {
LABEL_17:
                      specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4 & 1 | (2 * v8));
                      v7 = v14;
                      goto LABEL_30;
                    }

                    v27 = a2;
                    v9 = a3;
                    v10 = a4;
                    v24 = a1;
                    type metadata accessor for __ContiguousArrayStorageBase();
                    swift_unknownObjectRetain_n();
                    v6 = v24;
                    v25 = swift_dynamicCastClass();
                    if (!v25)
                    {
                      swift_unknownObjectRelease();
                      v25 = MEMORY[0x277D84F90];
                    }

                    v26 = *(v25 + 16);

                    if (!__OFSUB__(v8, v9))
                    {
                      if (v26 == v8 - v9)
                      {
                        v7 = swift_dynamicCastClass();
                        swift_unknownObjectRelease();
                        if (v7)
                        {
                          return v7;
                        }

                        v7 = MEMORY[0x277D84F90];
LABEL_30:
                        swift_unknownObjectRelease();
                        return v7;
                      }

                      goto LABEL_40;
                    }

LABEL_39:
                    __break(1u);
LABEL_40:
                    swift_unknownObjectRelease();
                    a3 = v9;
                    a1 = v6;
                    LOBYTE(a4) = v10;
                    a2 = v27;
                    goto LABEL_17;
                  }

LABEL_38:
                  __break(1u);
                  goto LABEL_39;
                }

                swift_unknownObjectRelease();
                _StringGuts.grow(_:)(43);

                v21 = dispatch thunk of CustomStringConvertible.description.getter();
                MEMORY[0x2743B25F0](v21);

                MEMORY[0x2743B25F0](0x20646E6120, 0xE500000000000000);
                v22 = dispatch thunk of CustomStringConvertible.description.getter();
                MEMORY[0x2743B25F0](v22);

                v7 = 0x8000000270C52E90;
                lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
                swift_allocError();
                *v16 = 0xD00000000000003DLL;
                *(v16 + 8) = 0x8000000270C52E90;
                *(v16 + 16) = 0;
                v17 = 5;
LABEL_21:
                *(v16 + 24) = v17;
                goto LABEL_22;
              }

LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  swift_unknownObjectRelease();
  lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
  swift_allocError();
  *v11 = 0;
  v11[1] = 0;
LABEL_22:
  swift_willThrow();
  return v7;
}

uint64_t OneBlockSparseInnerCorrection.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v76 = &v60 - v9;
  v10 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v73 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v74 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v78 = &v60 - v13;
  swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for Range();
  v15 = MEMORY[0x28223BE20](v14);
  v16 = *(v10 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v60 - v19;
  result = MEMORY[0x28223BE20](v18);
  if (a3)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v26 = 0;
    v26[1] = 0;
LABEL_13:
    swift_willThrow();
    (*(*(a4 - 8) + 8))(a1, a4);
    return a3;
  }

  if (a2 < 1)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v39 + 8) = 0;
    *(v39 + 16) = 0;
    *v39 = a2;
    *(v39 + 24) = 1;
    goto LABEL_13;
  }

  if (__OFADD__(a2, 2))
  {
    __break(1u);
  }

  else
  {
    v68 = v25;
    v69 = v16;
    v66 = v24;
    v67 = result;
    v70 = v23;
    v71 = &v60 - v22;
    v72 = a1;
    if (a2 + 2 != dispatch thunk of Collection.count.getter())
    {
      v79 = 0;
      v80 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v79 = 0xD00000000000002FLL;
      v80 = 0x8000000270C52E60;
      v81 = a2 + 2;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v40);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v41 = v72;
      v81 = dispatch thunk of Collection.count.getter();
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v42);

      a3 = v79;
      v43 = v80;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v44 = a3;
      v44[1] = v43;
      swift_willThrow();
      (*(*(a4 - 8) + 8))(v41, a4);
      return a3;
    }

    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
    v64 = *(v69 + 8);
    v65 = v69 + 8;
    v64(v20, v10);
    dispatch thunk of Collection.index(after:)();
    v27 = dispatch thunk of Collection.subscript.read();
    v29 = *v28;
    v27(&v79, 0);
    v30 = dispatch thunk of Collection.subscript.read();
    v32 = *v31;
    v30(&v79, 0);
    if (v29 > 1 || v32 > 1)
    {
      v79 = 0;
      v80 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v79 = 0xD00000000000003DLL;
      v80 = 0x8000000270C52E90;
      LOBYTE(v81) = v29;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v34);

      MEMORY[0x2743B25F0](0x20646E6120, 0xE500000000000000);
      LOBYTE(v81) = v32;
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v35);

      v36 = v79;
      v37 = v80;
      lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
      swift_allocError();
      *v38 = v36;
      *(v38 + 8) = v37;
      *(v38 + 16) = 0;
      *(v38 + 24) = 5;
      swift_willThrow();
      (*(*(a4 - 8) + 8))(v72, a4);
      a3 = v64;
      v64(v70, v10);
      (a3)(v71, v10);
      return a3;
    }

    v62 = v29;
    v63 = v32;
    dispatch thunk of Collection.startIndex.getter();
    v45 = v71;
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v46 = v69;
      v47 = *(v69 + 32);
      v48 = v78;
      v47(v78, v20, v10);
      v49 = v47;
      v61 = v47;
      v50 = TupleTypeMetadata2;
      (*(v46 + 16))(&v48[*(TupleTypeMetadata2 + 48)], v45, v10);
      v51 = v73;
      v52 = v74;
      (*(v73 + 16))(v74, v48, v50);
      v53 = *(v50 + 48);
      v49(v68, v52, v10);
      v54 = &v52[v53];
      v55 = v64;
      v64(v54, v10);
      (*(v51 + 32))(v52, v78, v50);
      v56 = *(v50 + 48);
      v57 = v67;
      v58 = v68;
      v61(v68 + *(v67 + 36), &v52[v56], v10);
      v55(v52, v10);
      v59 = v72;
      dispatch thunk of Collection.subscript.getter();
      (*(v66 + 8))(v58, v57);
      swift_getAssociatedConformanceWitness();
      a3 = Array.init<A>(_:)();
      (*(*(a4 - 8) + 8))(v59, a4);
      v55(v70, v10);
      v55(v71, v10);
      return a3;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance OneBlockSparseInnerCorrection@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = OneBlockSparseInnerCorrection.init<A>(from:parameter:)(a1, *a2, *(a2 + 8), a3, a4);
  if (!v5)
  {
    *a5 = result;
    *(a5 + 8) = v8 & 1;
    *(a5 + 9) = HIBYTE(v8) & 1;
  }

  return result;
}

uint64_t OneBlockSparseInnerCorrection.encodedLength.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = v1 + 2;
  if (__OFADD__(v1, 2))
  {
    __break(1u);
  }

  return result;
}

void OneBlockSparseInnerCorrection.encode<A>(into:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277D83970]);
    dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
    dispatch thunk of RangeReplaceableCollection.append(_:)();
    dispatch thunk of RangeReplaceableCollection.append(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t protocol witness for VDAFEncodable.encodedLength.getter in conformance OneBlockSparseInnerCorrection()
{
  v1 = *(*v0 + 16);
  result = v1 + 2;
  if (__OFADD__(v1, 2))
  {
    __break(1u);
  }

  return result;
}

void protocol witness for VDAFEncodable.encode<A>(into:) in conformance OneBlockSparseInnerCorrection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 9))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  OneBlockSparseInnerCorrection.encode<A>(into:)(a1, *v3, v4 | *(v3 + 8), a2, a3);
}

uint64_t static OneBlockSparsePublicShare.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF29OneBlockSparseInnerCorrectionV_Tt1g5(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return static Array<A>.== infix(_:_:)();
}

uint64_t OneBlockSparsePublicShareDecodableParameter.init(innerLevelCount:seedSize:blockSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a2;
  a4[1] = a3;
  a4[2] = result;
  return result;
}

uint64_t OneBlockSparsePublicShareDecodableParameter.encodedLength.getter(uint64_t result)
{
  v2 = *v1 + 2;
  if (__OFADD__(*v1, 2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v1[2];
  v4 = v2 * v3;
  if ((v2 * v3) >> 64 != (v2 * v3) >> 63)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v1[1];
  result = (*(*(result + 24) + 64))(*(result + 16));
  v6 = result * v5;
  if ((result * v5) >> 64 != (result * v5) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = v4 + v6;
  if (__OFADD__(v4, v6))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t _s4VDAF25OneBlockSparsePublicShareV4from9parameterACyxGqd___AA0bcdeF18DecodableParameterVyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_s10ArraySliceVyALGTt1B5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if ((a8 & 1) == 0)
  {
    v11 = a7;
    v43 = v10;
    if (a4)
    {
      v8 = a2;
      v15 = a3;
      v9 = a4;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v16 = swift_dynamicCastClass();
      if (!v16)
      {
        swift_unknownObjectRelease();
        v16 = MEMORY[0x277D84F90];
      }

      v17 = *(v16 + 16);

      if (__OFSUB__(v9 >> 1, v15))
      {
        goto LABEL_29;
      }

      if (v17 != (v9 >> 1) - v15)
      {
        goto LABEL_30;
      }

      v18 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v18)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    while (1)
    {
      specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
LABEL_10:
      swift_unknownObjectRelease();
LABEL_11:
      v15 = a5 + 2;
      if (__OFADD__(a5, 2))
      {
        __break(1u);
      }

      else
      {
        a1 = v11 * v15;
        if ((v11 * v15) >> 64 == (v11 * v15) >> 63)
        {
          v19 = specialized Collection.prefix(_:)();
          v21 = v20;
          v23 = v22;
          v40 = v24;
          v25 = specialized Collection.dropFirst(_:)();
          v37 = v27;
          v38 = v26;
          v29 = v28;
          v41[0] = a5;
          v41[1] = 0;
          v41[2] = v11;
          v41[3] = a5 + 2;
          v42 = 0;

          v30 = v43;
          v31 = _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA29OneBlockSparseInnerCorrectionV_s10ArraySliceVyANGTt1g5(v19, v21, v23, v40, v41);
          if (v30)
          {
            swift_unknownObjectRelease();
            return v11;
          }

          v11 = v31;
          if ((v37 & 1) == 0)
          {
            swift_unknownObjectRetain();
            goto LABEL_17;
          }

          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            swift_unknownObjectRelease();
            v34 = MEMORY[0x277D84F90];
          }

          v35 = *(v34 + 16);

          if (__OFSUB__(v37 >> 1, v29))
          {
            __break(1u);
          }

          else if (v35 == (v37 >> 1) - v29)
          {
            v33 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (!v33)
            {
              v33 = MEMORY[0x277D84F90];
              goto LABEL_24;
            }

            goto LABEL_25;
          }

          swift_unknownObjectRelease();
LABEL_17:
          specialized _copyCollectionToContiguousArray<A>(_:)(v25, v38, v29, v37);
          v33 = v32;
LABEL_24:
          swift_unknownObjectRelease();
LABEL_25:
          _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_SayANGTt1g5(v33, 1, a6, 4, 0);
          swift_unknownObjectRelease();
          return v11;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      swift_unknownObjectRelease();
      a3 = v15;
      a4 = v9;
      a2 = v8;
    }
  }

  swift_unknownObjectRelease();
  lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
  swift_allocError();
  *v13 = 0;
  v13[1] = 0;
  swift_willThrow();
  return v11;
}

uint64_t OneBlockSparsePublicShare.init<A>(from:parameter:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v12 = *(a5 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v14 = type metadata accessor for Optional();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 24) == 1)
  {
    v23 = v17;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v24 = 0;
    v24[1] = 0;
    swift_willThrow();
    return (*(v23 + 8))(a1, a4);
  }

  v65 = v7;
  v66 = TupleTypeMetadata3;
  v61 = v20;
  v62 = v18;
  v67 = v19;
  v68 = a3;
  v27 = *a2;
  v26 = *(a2 + 8);
  v63 = v12;
  v64 = v26;
  v28 = *(a2 + 16);
  v73 = v17;
  (*(v17 + 16))(v22, a1, a4);
  ArraySlice.init<A>(_:)();
  v74 = v27;
  v29 = __OFADD__(v27, 2);
  v30 = v27 + 2;
  if (v29)
  {
    __break(1u);
    goto LABEL_22;
  }

  v22 = v28 * v30;
  if ((v28 * v30) >> 64 != (v28 * v30) >> 63)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v69 = a1;
  v70 = a4;
  v31 = specialized Collection.prefix(_:)();
  v71 = v32;
  v72 = v31;
  v34 = v33;
  v36 = v35;
  v37 = specialized Collection.dropFirst(_:)();
  v39 = v38;
  a6 = v40;
  v60 = v41;
  v77[0] = v74;
  v77[1] = 0;
  v77[2] = v28;
  v77[3] = v30;
  v78 = 0;
  swift_unknownObjectRetain();
  v42 = v76;
  v43 = _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA29OneBlockSparseInnerCorrectionV_s10ArraySliceVyANGTt1g5(v72, v34, v71, v36, v77);
  v7 = v42;
  if (v42)
  {
    (*(v73 + 8))(v69, v70);
    return swift_unknownObjectRelease();
  }

  v76 = v37;
  v72 = v39;
  v74 = v43;
  v12 = v66;
  v44 = v67;
  v45 = *(v66 + 48);
  v46 = *(v66 + 64);
  (*(*(AssociatedTypeWitness - 8) + 56))(v67, 1, 1);
  v47 = v65;
  *(v44 + v45) = v64;
  *(v44 + v46) = (*(v47 + 64))();
  a1 = v60;
  if ((v60 & 1) == 0)
  {
    v48 = v76;
    swift_unknownObjectRetain();
    v22 = a6;
LABEL_9:
    specialized _copyCollectionToContiguousArray<A>(_:)(v48, v72, v22, a1);
    v50 = v49;
    goto LABEL_16;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v51 = swift_dynamicCastClass();
  v22 = a6;
  if (!v51)
  {
    swift_unknownObjectRelease();
    v51 = MEMORY[0x277D84F90];
  }

  v52 = *(v51 + 16);

  v53 = (a1 >> 1) - a6;
  if (__OFSUB__(a1 >> 1, a6))
  {
    goto LABEL_23;
  }

  a6 = v76;
  if (v52 != v53)
  {
LABEL_24:
    swift_unknownObjectRelease();
    v48 = a6;
    goto LABEL_9;
  }

  v50 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v50)
  {
    goto LABEL_17;
  }

  v50 = MEMORY[0x277D84F90];
LABEL_16:
  swift_unknownObjectRelease();
LABEL_17:
  v79 = v50;
  v54 = v61;
  v55 = v62;
  v56 = v67;
  (*(v62 + 16))(v61, v67, v12);
  (*(v55 + 56))(v54, 0, 1, v12);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v58 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277D83980]);
  Array<A>.init<A>(from:parameter:)(&v79, v54, v68, v57, v63, v58);
  if (v7)
  {
    swift_unknownObjectRelease();
    (*(v73 + 8))(v69, v70);
    (*(v55 + 8))(v56, v12);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v73 + 8))(v69, v70);
    (*(v55 + 8))(v56, v12);
    return v74;
  }
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance OneBlockSparsePublicShare<A>@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = OneBlockSparsePublicShare.init<A>(from:parameter:)(a1, a2, *(a5 + 16), a3, *(a5 + 24), a4);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
  }

  return result;
}

uint64_t OneBlockSparsePublicShare.encodedLength.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(result + 16);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = *(*(result + 32) + 16);
  v7 = __OFADD__(v6, 2);
  v8 = v6 + 2;
  if (v7)
  {
    __break(1u);
LABEL_5:
    v8 = 0;
  }

  v9 = v8 * v5;
  if ((v8 * v5) >> 64 != (v8 * v5) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v12 = Collection<>.encodedLength.getter(v10, WitnessTable, *(a4 + 40));
  v7 = __OFADD__(v9, v12);
  result = v9 + v12;
  if (v7)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t OneBlockSparsePublicShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay4VDAF29OneBlockSparseInnerCorrectionVGMd, &_sSay4VDAF29OneBlockSparseInnerCorrectionVGMR);
  v12 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [OneBlockSparseInnerCorrection] and conformance [A], &_sSay4VDAF29OneBlockSparseInnerCorrectionVGMd, &_sSay4VDAF29OneBlockSparseInnerCorrectionVGMR, MEMORY[0x277D83988]);
  Collection<>.encode<A>(into:)(a1, v11, a5, v12, a7, &protocol witness table for OneBlockSparseInnerCorrection);
  v13 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return Collection<>.encode<A>(into:)(a1, v13, a5, WitnessTable, a7, *(a6 + 40));
}

uint64_t Seed.extend<A>(xof:nonce:domainSeparationTag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v9 = *(a4 + 16);
  if (v9 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = a6;
  v6 = a5;
  v8 = 2 * v9;
  static BatchedExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:generating:)(a4, a3, a2, 2 * v9, a5, a6);
  v10 = (*(*(v7 + 1) + 40))(2 * v9, v6);
  v11 = *(v10 + 16);
  if (v11 < v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v10;
  if (v11 == v9)
  {

    v7 = v6;
  }

  else
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v10, v10 + 32, 0, v8 | 1);
    v7 = v12;
  }

  if (v8 < v9)
  {
    goto LABEL_17;
  }

  v13 = *(v6 + 16);
  if (v13 < v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v13 == v9)
  {
    if (*(v7 + 2))
    {
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_19:
  specialized _copyCollectionToContiguousArray<A>(_:)(v6, v6 + 32, v9, (4 * v9) | 1);
  v9 = v18;

  v6 = v9;
  if (!*(v7 + 2))
  {
    goto LABEL_20;
  }

LABEL_10:
  if (*(v6 + 16))
  {
    LOBYTE(v9) = v7[32];
    LOBYTE(v8) = *(v6 + 32);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
LABEL_12:
  v7[32] &= ~1u;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (*(v6 + 16))
    {
LABEL_14:
      v15 = v9 & 1;
      *(v6 + 32) &= ~1u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF4SeedVGMd, &_ss23_ContiguousArrayStorageCy4VDAF4SeedVGMR);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_270C44550;
      *(v16 + 32) = v7;
      *(v16 + 40) = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_270C44550;
      *(v17 + 32) = v15;
      *(v17 + 33) = v8 & 1;
      swift_unknownObjectRelease();
      return v16;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
    if (*(result + 16))
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t DPFOneBlockSparse.__allocating_init(superBlockSize:blockSize:innerLevelCount:domainSeparationTagExtend:domainSeparationTagConvert:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  DPFOneBlockSparse.init(superBlockSize:blockSize:innerLevelCount:domainSeparationTagExtend:domainSeparationTagConvert:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t DPFOneBlockSparse.init(superBlockSize:blockSize:innerLevelCount:domainSeparationTagExtend:domainSeparationTagConvert:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = *v5;
    v7 = 0xD00000000000001DLL;
    if (((result - 1) & result) != 0)
    {
      v8 = "ntrol bits value not 0 or 1: ";
      v9 = 7;
      goto LABEL_7;
    }

    if (!__OFSUB__(a2, 1))
    {
      if (((a2 - 1) & a2) != 0)
      {
        v8 = "Dimension must be power of 2.";
        v7 = 0xD00000000000001ELL;
        v9 = 8;
      }

      else
      {
        v8 = "Block size must be power of 2.";
        v7 = 0xD00000000000002CLL;
        v9 = 8;
        if (a2 >= 1 && result >= a2)
        {
          v5[4] = result;
          v5[5] = a2;
          v5[6] = result / a2;
          v5[7] = a3;
          v5[2] = a4;
          v5[3] = a5;
          return v5;
        }
      }

LABEL_7:

      lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
      swift_allocError();
      *v10 = v7;
      *(v10 + 8) = v8 | 0x8000000000000000;
      *(v10 + 16) = 0;
      *(v10 + 24) = v9;
      swift_willThrow();
      v11 = *(v6 + 96);
      v12[0] = *(v6 + 80);
      v12[1] = v11;
      type metadata accessor for DPFOneBlockSparse(0, v12);
      swift_deallocPartialClassInstance();
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t DPFOneBlockSparse.gen(leafParent:nonce:seedParty0:seedParty1:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v131 = a2;
  v128 = result;
  v6 = *v4;
  v127 = *v4;
  v7 = v4[7];
  if (v7 < 0)
  {
    goto LABEL_159;
  }

  v8 = v4;

  LODWORD(v11) = MEMORY[0x277D84F90];
  if (!v7)
  {
    v139 = v5;
    v112 = 1;
    v145 = MEMORY[0x277D84F90];
LABEL_110:
    v108 = v6[24];
    v109 = v108(a3, v131);
    v21 = v139;
    if (v139)
    {
      goto LABEL_111;
    }

    LODWORD(v11) = v112;
    v110 = v109;

    v34 = v108(a4, v131);

    v35 = v127[10];
    v27 = v127[12];
    v37 = static Array<A>.elementwiseSubtracting(_:_:)(*(v128 + 24), v110, v35, v27);
LABEL_122:
    v115 = v37;

    v147 = v115;
    v31 = type metadata accessor for Array();
    Array<A>.elementwiseAdd(_:)(v34, v31, v27);
    if (v21)
    {
LABEL_111:
    }

    else
    {
LABEL_134:

      if (v11)
      {
        v146 = v147;
        MEMORY[0x28223BE20](v116);
        v118 = *(v117 + 88);
        v122[2] = v35;
        v122[3] = v118;
        v119 = *(v117 + 104);
        v122[4] = v27;
        v122[5] = v119;
        WitnessTable = swift_getWitnessTable();
        _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DPFOneBlockSparse.gen(leafParent:nonce:seedParty0:seedParty1:), v122, v31, v35, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v121);
      }

      return v145;
    }
  }

  v12 = 0;
  LODWORD(v138) = 0;
  v126 = xmmword_270C44550;
  v145 = MEMORY[0x277D84F90];
  LODWORD(v137) = 1;
  v125 = v4;
  v124 = v7;
  while (1)
  {
    v13 = LeafParent.bit(atLevel:)(v12);
    if (v14)
    {
    }

    v15 = v13;
    v136 = v12;
    v139 = 0;
    v16 = v127[11];
    v17 = v8[2];
    v18 = v127[13];
    v19 = Seed.extend<A>(xof:nonce:domainSeparationTag:)(v13, v131, v17, a3, v16, v18);
    v143 = v20;
    v21 = v19;

    v23 = Seed.extend<A>(xof:nonce:domainSeparationTag:)(v22, v131, v17, a4, v16, v18);
    v25 = v24;

    v26 = !v15;
    if (*(v21 + 16) <= v26)
    {
      break;
    }

    if (*(v23 + 16) <= v26)
    {
      goto LABEL_142;
    }

    v141 = v25;
    v142 = v21;
    v27 = *(v21 + 32 + 8 * v26);
    v140 = v23;
    v28 = *(v23 + 32 + 8 * v26);
    v29 = *(v27 + 16);
    v30 = *(v28 + 16);
    if (v29 != v30)
    {

      lazy protocol witness table accessor for type XORError and conformance XORError();
      swift_allocError();
      *v111 = v29;
      *(v111 + 8) = v30;
      *(v111 + 16) = 0;
      swift_willThrow();
    }

    v130 = v21 + 32;
    v144 = v15;
    v129 = v23 + 32;
    v147 = MEMORY[0x277D84F90];

    v31 = v28;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
    v32 = v147;
    if (v29)
    {
      v11 = 0;
      v33 = *(v27 + 16);
      v34 = v27 + 32;
      v35 = v28 + 32;
      v36 = v27;
      v37 = v28;
      while (v33 != v11)
      {
        if (v11 >= *(v36 + 16))
        {
          goto LABEL_119;
        }

        v38 = *(v37 + 16);
        if (v11 == v38)
        {
          goto LABEL_120;
        }

        if (v11 >= v38)
        {
          goto LABEL_121;
        }

        v27 = *(v34 + v11);
        v21 = *(v35 + v11);
        v147 = v32;
        v40 = *(v32 + 16);
        v39 = *(v32 + 24);
        v31 = v40 + 1;
        if (v40 >= v39 >> 1)
        {
          v134 = v37;
          v135 = v36;
          v133 = v33;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
          v33 = v133;
          v37 = v134;
          v36 = v135;
          v32 = v147;
        }

        ++v11;
        *(v32 + 16) = v31;
        *(v32 + v40 + 32) = v21 ^ v27;
        if (v29 == v11)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    v36 = v27;
    v37 = v28;
LABEL_19:
    v41 = *(v36 + 16);
    v42 = v144;
    if (v29 != v41)
    {
      v59 = v36 + 32;
      v35 = v37 + 32;
      v43 = v145;
      while (v29 < v41)
      {
        v60 = *(v37 + 16);
        if (v29 == v60)
        {
          goto LABEL_21;
        }

        if (v29 >= v60)
        {
          goto LABEL_133;
        }

        v27 = *(v59 + v29);
        v61 = *(v35 + v29);
        v147 = v32;
        v63 = *(v32 + 16);
        v62 = *(v32 + 24);
        v31 = v63 + 1;
        if (v63 >= v62 >> 1)
        {
          v135 = v36;
          v11 = v37;
          v145 = v43;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1);
          v37 = v11;
          v36 = v135;
          v42 = v144;
          v43 = v145;
          v32 = v147;
        }

        ++v29;
        *(v32 + 16) = v31;
        *(v32 + v63 + 32) = v61 ^ v27;
        v41 = *(v36 + 16);
        if (v29 == v41)
        {
          goto LABEL_21;
        }
      }

LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    v43 = v145;
LABEL_21:
    v144 = v32;
    v145 = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
    result = swift_initStackObject();
    *(result + 16) = v126;
    v44 = v143;
    v45 = *(v143 + 16);
    if (!v45)
    {
      goto LABEL_143;
    }

    v31 = v141;
    v46 = *(v141 + 16);
    if (!v46)
    {
      goto LABEL_144;
    }

    *(result + 32) = ((v42 ^ *(v141 + 32) ^ *(v143 + 32)) & 1) == 0;
    if (v45 == 1)
    {
      goto LABEL_145;
    }

    if (v46 == 1)
    {
      goto LABEL_146;
    }

    v11 = v42 & 1;
    v132 = result + 32;
    v133 = v11;
    v47 = (v42 ^ (*(v44 + 33) ^ *(v31 + 33))) & 1;
    v135 = result;
    *(result + 33) = v47;
    LODWORD(v134) = v47;
    if (v138)
    {
      v27 = v140;
      if (*(v142 + 16) <= v11)
      {
        goto LABEL_151;
      }

      v48 = *(v130 + 8 * v11);
      v49 = *(v48 + 16);
      v50 = *(v144 + 16);
      if (v49 != v50)
      {
        swift_setDeallocating();
        lazy protocol witness table accessor for type XORError and conformance XORError();
        swift_allocError();
        *v113 = v49;
        *(v113 + 8) = v50;
        *(v113 + 16) = 0;
        swift_willThrow();
      }

      v138 = v44 + 32;
      v147 = MEMORY[0x277D84F90];

      v35 = v48;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49, 0);
      v51 = v147;
      if (v49)
      {
        v52 = 0;
        v53 = *(v48 + 16);
        v54 = v144;
        v11 = v144 + 32;
        v55 = v48;
        while (v53 != v52)
        {
          if (v52 >= *(v55 + 16))
          {
            goto LABEL_125;
          }

          v56 = *(v54 + 16);
          if (v52 == v56)
          {
            goto LABEL_126;
          }

          if (v52 >= v56)
          {
            goto LABEL_127;
          }

          v27 = *(v48 + 32 + v52);
          v57 = *(v11 + v52);
          v147 = v51;
          v35 = *(v51 + 16);
          v58 = *(v51 + 24);
          v31 = v35 + 1;
          if (v35 >= v58 >> 1)
          {
            v130 = v55;
            v123 = v53;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v35 + 1, 1);
            v53 = v123;
            v55 = v130;
            v54 = v144;
            v51 = v147;
          }

          ++v52;
          *(v51 + 16) = v31;
          *(v51 + v35 + 32) = v57 ^ v27;
          if (v49 == v52)
          {
            goto LABEL_60;
          }
        }

        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

      v54 = v144;
      v55 = v48;
LABEL_60:
      v77 = *(v55 + 16);
      if (v49 != v77)
      {
        v80 = v55 + 32;
        v81 = v54 + 32;
        v82 = v145;
        v11 = v133;
        while (v49 < v77)
        {
          v83 = *(v54 + 16);
          if (v49 == v83)
          {
            goto LABEL_62;
          }

          if (v49 >= v83)
          {
            goto LABEL_137;
          }

          v84 = *(v80 + v49);
          v85 = *(v81 + v49);
          v147 = v51;
          v87 = *(v51 + 16);
          v86 = *(v51 + 24);
          if (v87 >= v86 >> 1)
          {
            v130 = v55;
            v88 = v82;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1);
            v55 = v130;
            v54 = v144;
            v82 = v88;
            v11 = v133;
            v51 = v147;
          }

          ++v49;
          *(v51 + 16) = v87 + 1;
          *(v51 + v87 + 32) = v85 ^ v84;
          v77 = *(v55 + 16);
          if (v49 == v77)
          {
            goto LABEL_62;
          }
        }

        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      v11 = v133;
LABEL_62:

      v64 = v142;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v142);
        v64 = result;
      }

      v35 = v140;
      v31 = v141;
      v44 = v143;
      if (*(v64 + 16) <= v11)
      {
        goto LABEL_153;
      }

      *(v64 + 8 * v11 + 32) = v51;

      if (*(v44 + 16) <= v11)
      {
        goto LABEL_154;
      }

      v78 = *(v138 + v11);

      v79 = *(v132 + v11);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v44);
        v44 = result;
      }

      if (*(v44 + 16) <= v11)
      {
        goto LABEL_155;
      }

      *(v44 + v11 + 32) = v78 ^ v79;
      if ((v137 & 1) == 0)
      {
LABEL_70:

        goto LABEL_90;
      }
    }

    else
    {
      v35 = v140;

      v64 = v142;
      if ((v137 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    if (*(v35 + 16) <= v11)
    {
      goto LABEL_152;
    }

    v65 = *(v129 + 8 * v11);

    v138 = v65;
    v27 = *(v65 + 16);
    v66 = *(v144 + 16);
    if (v27 != v66)
    {

      swift_setDeallocating();
      lazy protocol witness table accessor for type XORError and conformance XORError();
      swift_allocError();
      *v114 = v27;
      *(v114 + 8) = v66;
      *(v114 + 16) = 0;
      swift_willThrow();
    }

    v142 = v64;
    v143 = v44;
    v147 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
    v67 = v147;
    if (v27)
    {
      v68 = 0;
      v69 = v138;
      v70 = *(v138 + 16);
      v71 = v138 + 32;
      v72 = v144;
      v11 = v144 + 32;
      while (v70 != v68)
      {
        if (v68 >= *(v69 + 16))
        {
          goto LABEL_129;
        }

        v73 = *(v72 + 16);
        if (v68 == v73)
        {
          goto LABEL_130;
        }

        if (v68 >= v73)
        {
          goto LABEL_131;
        }

        v74 = *(v71 + v68);
        v75 = *(v11 + v68);
        v147 = v67;
        v35 = *(v67 + 16);
        v76 = *(v67 + 24);
        v31 = v35 + 1;
        if (v35 >= v76 >> 1)
        {
          v137 = v70;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v35 + 1, 1);
          v70 = v137;
          v69 = v138;
          v72 = v144;
          v67 = v147;
        }

        ++v68;
        *(v67 + 16) = v31;
        *(v67 + v35 + 32) = v75 ^ v74;
        if (v27 == v68)
        {
          goto LABEL_80;
        }
      }

      goto LABEL_128;
    }

    v72 = v144;
    v69 = v138;
LABEL_80:
    v89 = *(v69 + 16);
    if (v27 != v89)
    {
      v99 = v69 + 32;
      v100 = v72 + 32;
      v101 = v145;
      v11 = v133;
      while (v27 < v89)
      {
        v102 = *(v72 + 16);
        if (v27 == v102)
        {
          goto LABEL_82;
        }

        if (v27 >= v102)
        {
          goto LABEL_139;
        }

        v103 = *(v99 + v27);
        v104 = *(v100 + v27);
        v147 = v67;
        v106 = *(v67 + 16);
        v105 = *(v67 + 24);
        if (v106 >= v105 >> 1)
        {
          v107 = v101;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1);
          v69 = v138;
          v72 = v144;
          v101 = v107;
          v11 = v133;
          v67 = v147;
        }

        ++v27;
        *(v67 + 16) = v106 + 1;
        *(v67 + v106 + 32) = v104 ^ v103;
        v89 = *(v69 + 16);
        if (v27 == v89)
        {
          goto LABEL_82;
        }
      }

LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      return v145;
    }

    v11 = v133;
LABEL_82:

    v35 = v140;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v140);
      v35 = result;
    }

    v31 = v141;
    v64 = v142;
    v44 = v143;
    if (*(v35 + 16) <= v11)
    {
      goto LABEL_156;
    }

    *(v35 + 8 * v11 + 32) = v67;

    if (*(v31 + 16) <= v11)
    {
      goto LABEL_157;
    }

    v90 = *(v31 + 32 + v11);

    v91 = *(v132 + v11);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
      v31 = result;
    }

    if (*(v31 + 16) <= v11)
    {
      goto LABEL_158;
    }

    *(v31 + v11 + 32) = v90 ^ v91;
LABEL_90:
    if (*(v64 + 16) <= v11)
    {
      goto LABEL_147;
    }

    if (*(v35 + 16) <= v11)
    {
      goto LABEL_148;
    }

    if (*(v44 + 16) <= v11)
    {
      goto LABEL_149;
    }

    if (*(v31 + 16) <= v11)
    {
      goto LABEL_150;
    }

    v92 = v11;
    LODWORD(v11) = v64;
    a3 = *(v64 + 8 * v92 + 32);
    a4 = *(v35 + 8 * v92 + 32);
    v93 = *(v44 + v92 + 32);
    LODWORD(v137) = *(v31 + v92 + 32);
    v94 = *(v135 + 32);

    LODWORD(v138) = v93;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v95 = v145;
    }

    else
    {
      v95 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v145 + 2) + 1, 1, v145);
    }

    v97 = *(v95 + 2);
    v96 = *(v95 + 3);
    if (v97 >= v96 >> 1)
    {
      v95 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1, v95);
    }

    *(v95 + 2) = v97 + 1;
    v145 = v95;
    v98 = &v95[16 * v97];
    *(v98 + 4) = v144;
    v12 = v136 + 1;
    v98[40] = v94;
    v98[41] = v134;

    v8 = v125;
    if (v12 == v124)
    {
      v6 = *v125;
      v112 = v137;
      goto LABEL_110;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
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
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
  return result;
}

uint64_t DPFOneBlockSparse.evalAll(nonce:aggId:initialSeed:initialCtrlBit:obsPublicShare:output:startIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t *a7, Swift::Int a8)
{
  v94 = a7;
  v79 = a6;
  v91 = a5;
  v80 = a2;
  v86 = a1;
  v81 = *v8;
  v12 = *(v81 + 80);
  v97 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v93 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v14;
  MEMORY[0x28223BE20](v13);
  v96 = &v77 - v15;
  v88 = v8;
  v16 = v8[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF8EvalNodeVGMd, &_ss23_ContiguousArrayStorageCy4VDAF8EvalNodeVGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_270C44540;
  *(v17 + 32) = 0;
  *(v17 + 40) = a3;
  *(v17 + 48) = a4;
  if (v16)
  {
    v18 = 1;
    v19 = v17;
    v87 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v18 = *(MEMORY[0x277D84F90] + 16);
  v87 = v17;
  if (v18)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_5:
    v20 = *(v81 + 184);
    v84 = v81 + 184;
    v90 = v20;
    v82 = v16 - 1;
    v21 = __OFSUB__(v16, 1);
    LODWORD(v83) = v21;

    v85 = -24;
    while (1)
    {
      v58 = *(v19 + 4);
      v57 = *(v19 + 5);
      v59 = v19[48];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v19;
      if (!isUniquelyReferenced_nonNull_native || (v18 - 1) > *(v19 + 3) >> 1)
      {
        v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18, 1, v19);
      }

      v62 = v61;
      outlined destroy of EvalNode((v61 + 32));
      v63 = *(v62 + 2);
      memmove(v62 + 32, v62 + 56, v85 + 24 * v63);
      v64 = v62;
      *(v62 + 2) = v63 - 1;
      v65 = v89;
      v90(v98, v86, v58, v57, v59, v91);
      v89 = v65;
      if (v65)
      {
LABEL_57:

        goto LABEL_58;
      }

      v66 = v98[0];
      v67 = v98[1];
      v68 = v99;
      v44 = v100;
      v95 = v101;
      LODWORD(v92) = v102;

      if (v83)
      {
        break;
      }

      if (v58 >= v82)
      {
        v72 = v87;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v54 = v72;
        }

        else
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v72 + 16) + 1, 1, v72);
        }

        v74 = *(v54 + 2);
        v73 = *(v54 + 3);
        v75 = v73 >> 1;
        v42 = v74 + 1;
        v19 = v64;
        if (v73 >> 1 <= v74)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v54);
          v73 = *(v54 + 3);
          v75 = v73 >> 1;
        }

        *(v54 + 2) = v42;
        v76 = &v54[24 * v74];
        *(v76 + 4) = v66;
        *(v76 + 5) = v67;
        v76[48] = v68;
        v52 = v74 + 2;
        if (v75 < (v74 + 2))
        {
          v19 = v64;
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 2, 1, v54);
        }

        v87 = v54;
        v45 = v95;
      }

      else
      {
        v19 = v64;
        v69 = *(v64 + 2);
        v51 = *(v64 + 3);
        v70 = v51 >> 1;
        v42 = v69 + 1;
        if (v51 >> 1 <= v69)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v69 + 1, 1, v64);
          v51 = *(v19 + 3);
          v70 = v51 >> 1;
        }

        v45 = v95;
        *(v19 + 2) = v42;
        v71 = &v19[24 * v69];
        *(v71 + 4) = v66;
        *(v71 + 5) = v67;
        v71[48] = v68;
        v52 = v69 + 2;
        if (v70 < (v69 + 2))
        {
LABEL_37:
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52, 1, v19);
          v19 = v54;
        }

        else
        {
          v54 = v19;
        }
      }

      v55 = v92;
      *(v54 + 2) = v52;
      v56 = &v54[24 * v42];
      *(v56 + 4) = v44;
      *(v56 + 5) = v45;
      v56[48] = v55;
      v18 = *(v19 + 2);
      if (!v18)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_60;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_10:
  result = v87;
  v23 = *(v87 + 16);
  if (v23 != v88[6])
  {
    goto LABEL_61;
  }

  if (!v23)
  {
LABEL_58:
  }

  v24 = 0;
  v83 = v19;
  v84 = v87 + 32;
  v91 = v97 + 32;
  v92 = (v97 + 16);
  v90 = (v97 + 40);
  v82 = v23;
  while (v24 < *(result + 16))
  {
    v85 = v24;
    v25 = v84 + 24 * v24;
    v26 = *(v25 + 8);
    v27 = *(v25 + 16);
    v28 = *(*v88 + 192);
    swift_bridgeObjectRetain_n();
    v19 = v89;
    v29 = v28(v26, v86);
    v89 = v19;
    if (v19)
    {

      return swift_bridgeObjectRelease_n();
    }

    v30 = v29;
    v31 = swift_bridgeObjectRelease_n();
    v98[0] = v30;
    if (v27)
    {
      v32 = type metadata accessor for Array();
      v19 = v89;
      v31 = Array<A>.elementwiseAdd(_:)(v79, v32, *(v81 + 96));
      v30 = v98[0];
      v89 = v19;
      if (v19)
      {
        goto LABEL_57;
      }
    }

    if (v80 == 1)
    {
      v103 = v30;
      MEMORY[0x28223BE20](v31);
      *(&v77 - 4) = v12;
      v33 = v81;
      *(&v77 - 3) = *(v81 + 88);
      *(&v77 - 1) = *(v33 + 104);
      v34 = type metadata accessor for Array();
      WitnessTable = swift_getWitnessTable();
      v19 = v89;
      v37 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DPFOneBlockSparse.evalAll(nonce:aggId:initialSeed:initialCtrlBit:obsPublicShare:output:startIndex:), (&v77 - 6), v34, v12, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v36);
      v89 = v19;

      v98[0] = v37;
      v30 = v37;
    }

    if (MEMORY[0x2743B2860](v30, v12))
    {
      v38 = 0;
      while (1)
      {
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          (*(v97 + 16))(v96, v30 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v38, v12);
          v40 = (v38 + 1);
          if (__OFADD__(v38, 1))
          {
            goto LABEL_32;
          }
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v78 != 8)
          {
            goto LABEL_62;
          }

          v103 = result;
          (*v92)(v96, &v103, v12);
          swift_unknownObjectRelease();
          v40 = (v38 + 1);
          if (__OFADD__(v38, 1))
          {
LABEL_32:
            __break(1u);
            goto LABEL_58;
          }
        }

        v95 = v40;
        v41 = v30;
        v42 = a8;
        v43 = v97;
        v44 = v93;
        (*(v97 + 32))(v93, v96, v12);
        type metadata accessor for Array();
        v45 = v94;
        Array._makeMutableAndUnique()();
        v46 = *v45;
        Array._checkSubscript_mutating(_:)(v42);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v48 = v46 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v48 = v46;
        }

        v49 = v48 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v42;
        v50 = *(v43 + 40);
        a8 = v42;
        v50(v49, v44, v12);
        destructiveProjectEnumData for SeedCtrlUnadjustedError();
        v52 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        v30 = v41;
        v53 = MEMORY[0x2743B2860](v41, v12);
        a8 = v42 + 1;
        ++v38;
        if (v95 == v53)
        {
          a8 = v42 + 1;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_37;
    }

LABEL_13:
    v24 = v85 + 1;

    result = v87;
    if (v24 == v82)
    {
      goto LABEL_58;
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t closure #1 in DPFOneBlockSparse.gen(leafParent:nonce:seedParty0:seedParty1:)(uint64_t a1, uint64_t a2, void x2_0, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - v10;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  (*(v6 + 16))(v9, v11, a2);
  FieldElement.init(other:)(v9, a2, a3);
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  return (*(v6 + 8))(v11, a2);
}

uint64_t DPFOneBlockSparse.evalNextChildren(nonce:node:internalCwList:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *v7;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v10 = a2;
  v8 = a6;
  if (*(a5 + 16) <= a2)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = a4;
  v15 = a5 + 16 * a2;
  v9 = *(v15 + 32);
  v37 = *(v15 + 41);
  v38 = *(v15 + 40);
  v16 = *(v12 + 88);
  v17 = *(v7 + 2);
  v18 = *(v12 + 104);

  v20 = Seed.extend<A>(xof:nonce:domainSeparationTag:)(v19, a1, v17, a3, v16, v18);
  v7 = v20;
  v6 = v21;
  if ((v11 & 1) == 0)
  {

    goto LABEL_16;
  }

  if (!*(v20 + 16))
  {
    goto LABEL_30;
  }

  v22 = *(*(v20 + 32) + 16);
  v23 = *(v9 + 16);
  if (v22 != v23)
  {
    lazy protocol witness table accessor for type XORError and conformance XORError();
    swift_allocError();
    *v36 = v22;
LABEL_23:
    *(v36 + 8) = v23;
    *(v36 + 16) = 0;
    swift_willThrow();
  }

  v11 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySays5UInt8VGAJG_AIs5NeverOTg5018_sxxxIgnnr_x_xtxs5g40OIegnrzr_s17FixedWidthIntegerRzSURzlTRs5f25V_TG5012_sSa4VDAFs17bcd34pQ44E3xorySayxGADKFxx_xtXEfU_s5E5V_TG5Tf3nnnpf_nTf1cn_n(v24, v9);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_31;
  }

  if (!*(v7 + 2))
  {
    goto LABEL_32;
  }

LABEL_8:
  *(v7 + 4) = v11;

  if (*(v6 + 16))
  {
    LOBYTE(v11) = *(v6 + 32);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_10;
  }

  while (1)
  {
    __break(1u);
LABEL_34:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
LABEL_10:
    *(v6 + 32) = v38 ^ v11;
    if (*(v7 + 2) < 2uLL)
    {
      break;
    }

    v11 = *(v7 + 5);
    v26 = *(v11 + 16);
    v23 = *(v9 + 16);
    if (v26 != v23)
    {
      lazy protocol witness table accessor for type XORError and conformance XORError();
      swift_allocError();
      *v36 = v26;
      goto LABEL_23;
    }

    v28 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySays5UInt8VGAJG_AIs5NeverOTg5018_sxxxIgnnr_x_xtxs5g40OIegnrzr_s17FixedWidthIntegerRzSURzlTRs5f25V_TG5012_sSa4VDAFs17bcd34pQ44E3xorySayxGADKFxx_xtXEfU_s5E5V_TG5Tf3nnnpf_nTf1cn_n(v27, v9);

    if (*(v7 + 2) < 2uLL)
    {
      goto LABEL_36;
    }

    *(v7 + 5) = v28;

    if (*(v6 + 16) < 2uLL)
    {
      goto LABEL_37;
    }

    *(v6 + 33) = (v37 ^ *(v6 + 33)) & 1;
LABEL_16:
    v29 = *(v7 + 2);
    if (!v29)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v30 = *(v6 + 16);
    if (!v30)
    {
      goto LABEL_27;
    }

    if (v29 == 1)
    {
      goto LABEL_28;
    }

    if (v30 != 1)
    {
      v31 = v10 + 1;
      v32 = *(v6 + 32);
      v33 = *(v7 + 4);
      v34 = *(v7 + 5);
      v35 = *(v6 + 33);

      *v8 = v31;
      *(v8 + 8) = v33;
      *(v8 + 16) = v32;
      *(v8 + 24) = v31;
      *(v8 + 32) = v34;
      *(v8 + 40) = v35;
      return result;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    if (*(v7 + 2))
    {
      goto LABEL_8;
    }

LABEL_32:
    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}