uint64_t valueWithDifferential<A, B>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8, v10);
  v12 = &v15 - v11;
  v13 = v8(&v15 - v11, a2);
  (*(*(a5 - 8) + 32))(a1, v12, a5);
  return v13;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t valueWithDifferential<A, B, C>(at:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8, v13);
  v15 = &v18 - v14;
  v16 = v11(&v18 - v14, a2, a3);
  (*(*(a7 - 8) + 32))(a1, v15, a7);
  return v16;
}

uint64_t valueWithDifferential<A, B, C, D>(at:_:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(a5 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8, v15);
  v17 = &v20 - v16;
  v18 = v13(&v20 - v16, a2, a3, a4);
  (*(*(a9 - 8) + 32))(a1, v17, a9);
  return v18;
}

uint64_t valueWithPullback<A, B>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8, v10);
  v12 = &v15 - v11;
  v13 = v8(&v15 - v11, a2);
  (*(*(a5 - 8) + 32))(a1, v12, a5);
  return v13;
}

uint64_t valueWithPullback<A, B, C>(at:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a4 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8, v13);
  v15 = &v18 - v14;
  v16 = v11(&v18 - v14, a2, a3);
  (*(*(a7 - 8) + 32))(a1, v15, a7);
  return v16;
}

uint64_t valueWithPullback<A, B, C, D>(at:_:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(a5 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8, v15);
  v17 = &v20 - v16;
  v18 = v13(&v20 - v16, a2, a3, a4);
  (*(*(a9 - 8) + 32))(a1, v17, a9);
  return v18;
}

uint64_t differential<A, B>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x2A1C7C4A8](a1, a2);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v8[1];
  v14[0] = *v8;
  v14[1] = v9;
  v14[2] = v8[2];
  v12 = valueWithDifferential<A, B>(at:of:)(v7, v11, v14, v10, v10);
  (*(v5 + 8))(v7, a4);
  return v12;
}

uint64_t differential<A, B, C>(at:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  MEMORY[0x2A1C7C4A8](a1, a1);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10[1];
  v18[0] = *v10;
  v18[1] = v11;
  v18[2] = v10[2];
  v16 = valueWithDifferential<A, B, C>(at:_:of:)(v9, v12, v15, v18, v13, v14, v14);
  (*(v7 + 8))(v9, a6);
  return v16;
}

uint64_t differential<A, B, C, D>(at:_:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a8 - 8);
  MEMORY[0x2A1C7C4A8](a1, a1);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v12[1];
  v22[0] = *v12;
  v22[1] = v13;
  v22[2] = v12[2];
  v20 = valueWithDifferential<A, B, C, D>(at:_:_:of:)(v11, v14, v15, v19, v22, v16, v17, v18, v18);
  (*(v9 + 8))(v11, a8);
  return v20;
}

uint64_t pullback<A, B>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8, v8);
  v10 = &v13 - v9;
  v11 = v6(&v13 - v9, a1);
  (*(*(a4 - 8) + 8))(v10, a4);
  return v11;
}

uint64_t pullback<A, B, C>(at:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a3 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8, v11);
  v13 = &v16 - v12;
  v14 = v9(&v16 - v12, a1, a2);
  (*(*(a6 - 8) + 8))(v13, a6);
  return v14;
}

uint64_t pullback<A, B, C, D>(at:_:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a4 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8, v14);
  v16 = &v19 - v15;
  v17 = v12(&v19 - v15, a1, a2, a3);
  (*(*(a8 - 8) + 8))(v16, a8);
  return v17;
}

uint64_t derivative<A, B>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x2A1C7C4A8](a1, a2);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10[1];
  v16[0] = *v10;
  v16[1] = v11;
  v16[2] = v10[2];
  v14 = differential<A, B>(at:of:)(v7, v16, v12, v13);
  dispatch thunk of FloatingPoint.init(_:)();
  v14(v9);

  return (*(v6 + 8))(v9, a3);
}

uint64_t derivative<A, B, C>(at:_:of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7)
{
  v27[0] = a5;
  v27[1] = a6;
  v9 = *(a4 - 8);
  v10 = MEMORY[0x2A1C7C4A8](a1, a2);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v10, v15);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v19[1];
  v28[0] = *v19;
  v28[1] = v20;
  v28[2] = v19[2];
  v25 = differential<A, B, C>(at:_:of:)(v16, v21, v28, v22, v23, v24);
  dispatch thunk of FloatingPoint.init(_:)();
  dispatch thunk of FloatingPoint.init(_:)();
  v25(v18, v12);

  (*(v9 + 8))(v12, a4);
  return (*(v14 + 8))(v18, a3);
}

uint64_t derivative<A, B, C, D>(at:_:_:of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v39[4] = a6;
  v39[2] = a9;
  v39[3] = a11;
  v40 = *(a5 - 8);
  v39[1] = a7;
  v14 = MEMORY[0x2A1C7C4A8](a1, a2);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v14, v19);
  v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 - 8);
  v26 = MEMORY[0x2A1C7C4A8](v20, v25);
  v28 = v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v29[1];
  v41[0] = *v29;
  v41[1] = v30;
  v41[2] = v29[2];
  v37 = differential<A, B, C, D>(at:_:_:of:)(v26, v31, v32, v41, v33, v34, v35, v36);
  v39[0] = a3;
  dispatch thunk of FloatingPoint.init(_:)();
  dispatch thunk of FloatingPoint.init(_:)();
  dispatch thunk of FloatingPoint.init(_:)();
  v37(v28, v22, v16);

  (*(v40 + 8))(v16, a5);
  (*(v18 + 8))(v22, a4);
  return (*(v24 + 8))(v28, v39[0]);
}

uint64_t gradient<A, B>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a4 - 8);
  v8 = MEMORY[0x2A1C7C4A8](a1, a2);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v11[1];
  v17[0] = *v11;
  v17[1] = v12;
  v17[2] = v11[2];
  v15 = pullback<A, B>(at:of:)(v8, v17, v13, v14);
  dispatch thunk of FloatingPoint.init(_:)();
  v15(v10);

  return (*(v7 + 8))(v10, a4);
}

uint64_t gradient<A, B, C>(at:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = *(a8 - 8);
  MEMORY[0x2A1C7C4A8](a1, a2);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v17[1];
  v24[0] = *v17;
  v24[1] = v18;
  v24[2] = v17[2];
  v22 = pullback<A, B, C>(at:_:of:)(v21, v19, v24, v19, v17, v20);
  dispatch thunk of FloatingPoint.init(_:)();
  v22(a1, a2, v16);

  return (*(v14 + 8))(v16, a8);
}

uint64_t gradient<A, B, C, D>(at:_:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = *(a11 - 8);
  MEMORY[0x2A1C7C4A8](a1, a2);
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v21[1];
  v28[0] = *v21;
  v28[1] = v22;
  v28[2] = v21[2];
  v26 = pullback<A, B, C, D>(at:_:_:of:)(v25, v23, v24, v28, v23, v24, v21, a11);
  dispatch thunk of FloatingPoint.init(_:)();
  v26(a1, a2, a3, v20);

  return (*(v18 + 8))(v20, a11);
}

uint64_t valueWithDerivative<A, B>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a5 - 8);
  v9 = MEMORY[0x2A1C7C4A8](a1, a2);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v12[1];
  v18[0] = *v12;
  v18[1] = v13;
  v18[2] = v12[2];
  v16 = valueWithDifferential<A, B>(at:of:)(v9, v15, v18, v12, v14);
  dispatch thunk of FloatingPoint.init(_:)();
  v16(v11);

  return (*(v8 + 8))(v11, a5);
}

uint64_t valueWithDerivative<A, B, C>(at:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31[0] = a11;
  v31[1] = a2;
  v13 = *(a7 - 8);
  v14 = MEMORY[0x2A1C7C4A8](a1, a2);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v14, v19);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v23[1];
  v32[0] = *v23;
  v32[1] = v24;
  v32[2] = v23[2];
  v29 = valueWithDifferential<A, B, C>(at:_:of:)(v20, v25, v28, v32, v23, v26, v27);
  dispatch thunk of FloatingPoint.init(_:)();
  dispatch thunk of FloatingPoint.init(_:)();
  v29(v22, v16);

  (*(v13 + 8))(v16, a7);
  return (*(v18 + 8))(v22, a6);
}

uint64_t valueWithDerivative<A, B, C, D>(at:_:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v42[2] = a13;
  v42[3] = a15;
  v43 = *(a9 - 8);
  v44 = a2;
  v42[1] = a11;
  v17 = MEMORY[0x2A1C7C4A8](a1, a2);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 - 8);
  v23 = MEMORY[0x2A1C7C4A8](v17, v22);
  v25 = v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v26 - 8);
  v29 = MEMORY[0x2A1C7C4A8](v23, v28);
  v31 = v42 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v32[1];
  v45[0] = *v32;
  v45[1] = v33;
  v45[2] = v32[2];
  v40 = valueWithDifferential<A, B, C, D>(at:_:_:of:)(v29, v34, v35, v38, v45, v32, v36, v37, v39);
  v42[0] = a7;
  dispatch thunk of FloatingPoint.init(_:)();
  dispatch thunk of FloatingPoint.init(_:)();
  dispatch thunk of FloatingPoint.init(_:)();
  v40(v31, v25, v19);

  (*(v43 + 8))(v19, a9);
  (*(v21 + 8))(v25, a8);
  return (*(v27 + 8))(v31, v42[0]);
}

uint64_t valueWithGradient<A, B>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a6 - 8);
  v10 = MEMORY[0x2A1C7C4A8](a1, a2);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v13[1];
  v19[0] = *v13;
  v19[1] = v14;
  v19[2] = v13[2];
  v17 = valueWithPullback<A, B>(at:of:)(v10, v16, v19, v13, v15);
  dispatch thunk of FloatingPoint.init(_:)();
  v17(v12);

  return (*(v9 + 8))(v12, a6);
}

uint64_t valueWithGradient<A, B, C>(at:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(a9 - 8);
  v15 = MEMORY[0x2A1C7C4A8](a1, a2);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v18[1];
  v24[0] = *v18;
  v24[1] = v19;
  v24[2] = v18[2];
  v22 = valueWithPullback<A, B, C>(at:_:of:)(v15, v21, v20, v24, v20, v18, a9);
  dispatch thunk of FloatingPoint.init(_:)();
  v22(a2, a3, v17);

  return (*(v14 + 8))(v17, a9);
}

uint64_t valueWithGradient<A, B, C, D>(at:_:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = *(a12 - 8);
  v20 = MEMORY[0x2A1C7C4A8](a1, a2);
  v22 = v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v23[1];
  v30[0] = *v23;
  v30[1] = v24;
  v30[2] = v23[2];
  v28 = valueWithPullback<A, B, C, D>(at:_:_:of:)(v20, v27, v25, v26, v30, v25, v26, v23, a12);
  dispatch thunk of FloatingPoint.init(_:)();
  v28(a2, a3, a4, v22);

  return (*(v19 + 8))(v22, a12);
}

uint64_t (*derivative<A, B>(of:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  v12 = *a1;
  v13 = a1[5];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  *(v14 + 48) = a6;
  *(v14 + 56) = v12;
  v15 = *(a1 + 3);
  *(v14 + 64) = *(a1 + 1);
  *(v14 + 80) = v15;
  *(v14 + 96) = v13;

  return partial apply for closure #1 in derivative<A, B>(of:);
}

uint64_t partial apply for closure #1 in derivative<A, B>(of:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 72);
  v7[0] = *(v1 + 56);
  v7[1] = v5;
  v7[2] = *(v1 + 88);
  return derivative<A, B>(at:of:)(a1, v7, v2, v3, v4);
}

uint64_t (*derivative<A, B, C>(of:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *a1;
  v16 = a1[5];
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7;
  *(v17 + 64) = a8;
  *(v17 + 72) = a9;
  *(v17 + 80) = v15;
  *(v17 + 88) = *(a1 + 1);
  *(v17 + 104) = *(a1 + 3);
  *(v17 + 120) = v16;

  return partial apply for closure #1 in derivative<A, B, C>(of:);
}

uint64_t sub_299BF39F4()
{

  return MEMORY[0x2A1C733A0](v0, 128, 7);
}

uint64_t (*derivative<A, B, C, D>(of:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *a1;
  v17 = a1[5];
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  *(v18 + 64) = a8;
  *(v18 + 72) = a9;
  *(v18 + 88) = a10;
  *(v18 + 96) = a11;
  *(v18 + 104) = v16;
  v19 = *(a1 + 3);
  *(v18 + 112) = *(a1 + 1);
  *(v18 + 128) = v19;
  *(v18 + 144) = v17;

  return partial apply for closure #1 in derivative<A, B, C, D>(of:);
}

uint64_t sub_299BF3B80()
{

  return MEMORY[0x2A1C733A0](v0, 152, 7);
}

uint64_t (*gradient<A, B>(of:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *a1;
  v13 = a1[5];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  *(v14 + 48) = a6;
  *(v14 + 56) = v12;
  v15 = *(a1 + 3);
  *(v14 + 64) = *(a1 + 1);
  *(v14 + 80) = v15;
  *(v14 + 96) = v13;

  return partial apply for closure #1 in gradient<A, B>(of:);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2A1C733A0](v0, 104, 7);
}

uint64_t partial apply for closure #1 in gradient<A, B>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 24);
  v7 = *(v5 + 40);
  v8 = *(v5 + 72);
  v10[0] = *(v5 + 56);
  v10[1] = v8;
  v10[2] = *(v5 + 88);
  return gradient<A, B>(at:of:)(a1, v10, a3, v6, a5, v7);
}

uint64_t (*gradient<A, B, C>(of:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *a1;
  v16 = a1[5];
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7;
  *(v17 + 64) = a8;
  *(v17 + 72) = v15;
  v18 = *(a1 + 3);
  *(v17 + 80) = *(a1 + 1);
  *(v17 + 96) = v18;
  *(v17 + 112) = v16;

  return partial apply for closure #1 in gradient<A, B, C>(of:);
}

uint64_t sub_299BF3E60()
{

  return MEMORY[0x2A1C733A0](v0, 120, 7);
}

uint64_t partial apply for closure #1 in gradient<A, B, C>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 32);
  v9 = *(v7 + 56);
  v10 = *(v7 + 88);
  v14[0] = *(v7 + 72);
  v14[1] = v10;
  v14[2] = *(v7 + 104);
  return gradient<A, B, C>(at:_:of:)(a1, a2, a3, a4, v14, a6, a7, v8, v12, v13, v9);
}

uint64_t (*gradient<A, B, C, D>(of:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a1;
  v16 = a1[5];
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7;
  *(v17 + 64) = a8;
  *(v17 + 72) = a9;
  *(v17 + 80) = a10;
  *(v17 + 88) = v15;
  v18 = *(a1 + 3);
  *(v17 + 96) = *(a1 + 1);
  *(v17 + 112) = v18;
  *(v17 + 128) = v16;

  return partial apply for closure #1 in gradient<A, B, C, D>(of:);
}

uint64_t sub_299BF3FD8()
{

  return MEMORY[0x2A1C733A0](v0, 136, 7);
}

uint64_t partial apply for closure #1 in gradient<A, B, C, D>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 40);
  v10 = *(v8 + 72);
  v11 = *(v8 + 104);
  v18[0] = *(v8 + 88);
  v18[1] = v11;
  v18[2] = *(v8 + 120);
  return gradient<A, B, C, D>(at:_:_:of:)(a1, a2, a3, a4, a5, a6, v18, a8, v13, v14, v9, v15, v16, v17, v10);
}

uint64_t _ConcreteDifferentiableBox._move(by:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v24 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v23 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5, v6);
  v9 = &v22 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x2A1C7C4A8](v7, v11);
  v13 = &v22 - v12;
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v15);
  (*(v14 + 56))(v25, v15, v14);
  v16 = swift_dynamicCast();
  v17 = *(v10 + 56);
  if (!v16)
  {
    v17(v9, 1, 1, AssociatedTypeWitness);
    (*(v23 + 8))(v9, v5);
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v19);
    (*(v20 + 56))(v25, v19, v20);
    __swift_project_boxed_opaque_existential_1Tm(v25, v25[3]);
    DynamicType = swift_getDynamicType();
    _derivativeTypeMismatch(_:_:file:line:)(v24, DynamicType, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift/stdlib/public/Differentiation/AnyDifferentiable.swift", 131, 2, 55);
  }

  v17(v9, 0, 1, AssociatedTypeWitness);
  (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
  (*(v3 + 32))(v13, v24, v3);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t AnyDerivative.base.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

void _derivativeTypeMismatch(_:_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  _StringGuts.grow(_:)(35);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
  v6 = String.init<A>(reflecting:)();
  MEMORY[0x29C2AE2B0](v6);

  MEMORY[0x29C2AE2B0](0x20646E6120, 0xE500000000000000);
  v7 = String.init<A>(reflecting:)();
  MEMORY[0x29C2AE2B0](v7);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t AnyDifferentiable.base.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t (*static AnyDifferentiable._vjpInit<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  AnyDifferentiable.init<A>(_:)(v8, a3, a1);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  return partial apply for closure #1 in static AnyDifferentiable._vjpInit<A>(_:);
}

uint64_t closure #1 in static AnyDifferentiable._vjpInit<A>(_:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  (*(v4 + 56))(v6, v3, v4);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t (*reverse-mode derivative of AnyDifferentiable.init<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static AnyDifferentiable._vjpInit<A>(_:)(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a2, a3);
  return partial apply for closure #1 in static AnyDifferentiable._vjpInit<A>(_:);
}

uint64_t (*static AnyDifferentiable._jvpInit<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X0>(uint64_t a1@<X0>, uint64_t *x8_0@<X8>)
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  AnyDifferentiable.init<A>(_:)(v8, a3, a1);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  return partial apply for closure #1 in static AnyDifferentiable._jvpInit<A>(_:);
}

uint64_t closure #1 in static AnyDifferentiable._jvpInit<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *x8_0@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v7);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  return AnyDerivative.init<A>(_:)(v9, AssociatedTypeWitness, x8_0);
}

uint64_t AnyDifferentiable.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  a5[3] = a3(0);
  a5[4] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a5);
  v10 = *(*(a2 - 8) + 32);

  return v10(boxed_opaque_existential_1Tm, a1, a2);
}

uint64_t (*forward-mode derivative of AnyDifferentiable.init<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  static AnyDifferentiable._jvpInit<A>(_:)(a1, a2, a3, a4);
  v8 = v7;
  (*(*(a3 - 8) + 8))(a2, a3);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = partial apply for closure #1 in static AnyDifferentiable._jvpInit<A>(_:);
  v9[5] = v8;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Differentiable.TangentVector) -> (@out AnyDerivative);
}

uint64_t AnyDifferentiable.move(by:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t protocol witness for Differentiable.move(by:) in conformance AnyDifferentiable(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t AnyDifferentiable.customMirror.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  (*(v2 + 16))(v4, v1, v2);
  return Mirror.init(reflecting:)();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance AnyDifferentiable()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  (*(v2 + 16))(v4, v1, v2);
  return Mirror.init(reflecting:)();
}

Swift::Bool __swiftcall _AnyDerivativeBox._isOpaqueZero()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v1 + 64);
  v5 = lazy protocol witness table accessor for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero();
  v4(&v7, &type metadata for AnyDerivative.OpaqueZero, &type metadata for AnyDerivative.OpaqueZero, v5, v3, v2);
  return (v7 & 1) == 0;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Differentiable.TangentVector) -> (@out AnyDerivative)(uint64_t a1)
{
  (*(v1 + 32))();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero()
{
  result = lazy protocol witness table cache variable for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero;
  if (!lazy protocol witness table cache variable for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero;
  if (!lazy protocol witness table cache variable for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero;
  if (!lazy protocol witness table cache variable for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero);
  }

  return result;
}

uint64_t _ConcreteDifferentiableBox._typeErasedBase.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  a2[3] = v3;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_1Tm, v2, v3);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t _ConcreteDerivativeBox._unboxed<A>(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a2 - 8);
  MEMORY[0x2A1C7C4A8](a1, a2);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _ConcreteDerivativeBox(255, v12, v13, v13);
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v26 - v18;
  (*(v9 + 16))(v11, v5, a2);
  v20 = swift_dynamicCast();
  v21 = *(*(v14 - 8) + 56);
  if (v20)
  {
    v22 = *(v14 - 8);
    v21(v19, 0, 1, v14);
    v23 = *(a3 - 8);
    (*(v23 + 16))(a4, v19, a3);
    (*(v22 + 8))(v19, v14);
    v24 = 0;
  }

  else
  {
    v24 = 1;
    v21(v19, 1, 1, v14);
    (*(v16 + 8))(v19, v15);
    v23 = *(a3 - 8);
  }

  return (*(v23 + 56))(a4, v24, 1, a3);
}

uint64_t _ConcreteDerivativeBox._isEqual(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](a1, a2);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x2A1C7C4A8](TupleTypeMetadata2, v11);
  v14 = &v41 - v13;
  v46 = *(v9 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v48 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v21 = &v41 - v20;
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v41 - v23;
  v45 = v7;
  (*(v7 + 16))(&v41 - v23, v3, v6);
  (*(v7 + 56))(v24, 0, 1, v6);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v26 = *(v25 + 64);
  v43 = *(a2 + 24);
  v26(v6, v6);
  v27 = TupleTypeMetadata2;
  v28 = *(TupleTypeMetadata2 + 48);
  v29 = v46;
  v30 = *(v46 + 32);
  v30(v14, v24, v9);
  v30(&v14[v28], v21, v9);
  v31 = v45;
  v32 = *(v45 + 48);
  if (v32(v14, 1, v6) == 1)
  {
    if (v32(&v14[v28], 1, v6) == 1)
    {
      v33 = 1;
    }

    else
    {
      v29 = v47;
      v9 = v27;
      v33 = 0;
    }
  }

  else
  {
    v34 = v47;
    v42 = v27;
    (*(v29 + 16))(v48, v14, v9);
    if (v32(&v14[v28], 1, v6) == 1)
    {
      (*(v31 + 8))(v48, v6);
      v33 = 0;
      v29 = v34;
      v9 = v42;
    }

    else
    {
      v35 = v44;
      (*(v31 + 32))(v44, &v14[v28], v6);
      swift_getAssociatedConformanceWitness();
      v36 = v29;
      v37 = v48;
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v31 + 8);
      v38(v35, v6);
      v39 = v37;
      v29 = v36;
      v38(v39, v6);
    }
  }

  (*(v29 + 8))(v14, v9);
  return v33 & 1;
}

uint64_t _ConcreteDerivativeBox._isNotEqual(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](a1, a2);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x2A1C7C4A8](TupleTypeMetadata2, v10);
  v13 = &v36 - v12;
  v40 = *(v8 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v38 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v20 = &v36 - v19;
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &v36 - v22;
  (*(v6 + 16))(&v36 - v22, v3, v5);
  (*(v6 + 56))(v23, 0, 1, v5);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v25 = *(v24 + 64);
  v36 = *(v41 + 24);
  v25(v5, v5);
  v41 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v27 = v40;
  v28 = *(v40 + 32);
  v28(v13, v23, v8);
  v28(&v13[v26], v20, v8);
  v29 = *(v6 + 48);
  if (v29(v13, 1, v5) != 1)
  {
    v31 = v38;
    (*(v27 + 16))(v38, v13, v8);
    if (v29(&v13[v26], 1, v5) != 1)
    {
      v32 = v37;
      (*(v6 + 32))(v37, &v13[v26], v5);
      swift_getAssociatedConformanceWitness();
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v6 + 8);
      v34(v32, v5);
      v34(v31, v5);
      (*(v27 + 8))(v13, v8);
      v30 = v33 ^ 1;
      return v30 & 1;
    }

    (*(v6 + 8))(v31, v5);
    goto LABEL_6;
  }

  if (v29(&v13[v26], 1, v5) != 1)
  {
LABEL_6:
    (*(v39 + 8))(v13, v41);
    v30 = 1;
    return v30 & 1;
  }

  (*(v27 + 8))(v13, v8);
  v30 = 0;
  return v30 & 1;
}

uint64_t static _ConcreteDerivativeBox._zero.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 - 8);
  MEMORY[0x2A1C7C4A8](a1, a2);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  a3[3] = type metadata accessor for _ConcreteDerivativeBox(0, a1, a2, v9);
  a3[4] = &protocol witness table for _ConcreteDerivativeBox<A>;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3);
  return (*(v6 + 32))(boxed_opaque_existential_1Tm, v8, a1);
}

uint64_t _ConcreteDerivativeBox._adding(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = type metadata accessor for Optional();
  v40 = *(v8 - 8);
  v41 = v8;
  v10 = MEMORY[0x2A1C7C4A8](v8, v9);
  v12 = &v36 - v11;
  v13 = *(v7 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v10, v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v36 - v19;
  v21 = lazy protocol witness table accessor for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero();
  _ConcreteDerivativeBox._unboxed<A>(to:)(v21, a2, &type metadata for AnyDerivative.OpaqueZero, v42);
  if ((v42[0] & 1) == 0)
  {
    return outlined init with copy of _AnyDerivativeBox(a1, a3);
  }

  v37 = v13;
  v38 = a3;
  v39 = v3;
  v23 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v23);
  (*(v22 + 64))(v42, &type metadata for AnyDerivative.OpaqueZero, &type metadata for AnyDerivative.OpaqueZero, v21, v23, v22);
  if (v42[0])
  {
    v24 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    v25 = *(v24 + 64);
    v36 = *(a2 + 24);
    v25(v7, v7);
    v26 = v37;
    if ((*(v37 + 48))(v12, 1, v7) == 1)
    {
      (*(v40 + 8))(v12, v41);
      v33 = a1[3];
      v34 = a1[4];
      __swift_project_boxed_opaque_existential_1Tm(a1, v33);
      (*(v34 + 56))(v42, v33, v34);
      __swift_project_boxed_opaque_existential_1Tm(v42, v42[3]);
      DynamicType = swift_getDynamicType();
      _derivativeTypeMismatch(_:_:file:line:)(v7, DynamicType, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift/stdlib/public/Differentiation/AnyDifferentiable.swift", 131, 2, 198);
    }

    v27 = *(v26 + 32);
    v27(v20, v12, v7);
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    (*(v26 + 8))(v20, v7);
    v28 = v38;
    v38[3] = a2;
    v28[4] = &protocol witness table for _ConcreteDerivativeBox<A>;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v28);
    return (v27)(boxed_opaque_existential_1Tm, v17, v7);
  }

  else
  {
    v31 = v38;
    v38[3] = a2;
    v31[4] = &protocol witness table for _ConcreteDerivativeBox<A>;
    v32 = __swift_allocate_boxed_opaque_existential_1Tm(v31);
    return (*(*(a2 - 8) + 16))(v32, v39, a2);
  }
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined init with copy of _AnyDerivativeBox(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t _ConcreteDerivativeBox._subtracting(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = type metadata accessor for Optional();
  v37 = *(v7 - 8);
  v38 = v7;
  v9 = MEMORY[0x2A1C7C4A8](v7, v8);
  v41 = v36 - v10;
  v42 = *(v6 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v40 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v39 = v36 - v15;
  v17 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v17);
  v18 = *(v16 + 64);
  v19 = lazy protocol witness table accessor for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero();
  v20 = v18(v44, &type metadata for AnyDerivative.OpaqueZero, &type metadata for AnyDerivative.OpaqueZero, v19, v17, v16);
  if (v44[0])
  {
    _ConcreteDerivativeBox._unboxed<A>(to:)(v20, a2, &type metadata for AnyDerivative.OpaqueZero, v44);
    if (v44[0])
    {
      v21 = a1[4];
      __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
      v22 = *(v21 + 64);
      v23 = v41;
      v36[1] = *(a2 + 24);
      v22(v6, v6);
      v24 = v42;
      if ((*(v42 + 48))(v23, 1, v6) == 1)
      {
        (*(v37 + 8))(v23, v38);
        v33 = a1[3];
        v34 = a1[4];
        __swift_project_boxed_opaque_existential_1Tm(a1, v33);
        (*(v34 + 56))(v44, v33, v34);
        __swift_project_boxed_opaque_existential_1Tm(v44, v45);
        DynamicType = swift_getDynamicType();
        _derivativeTypeMismatch(_:_:file:line:)(v6, DynamicType, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift/stdlib/public/Differentiation/AnyDifferentiable.swift", 131, 2, 214);
      }

      v25 = *(v24 + 32);
      v26 = v39;
      v25(v39, v23, v6);
      swift_getAssociatedConformanceWitness();
      v27 = v40;
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      (*(v24 + 8))(v26, v6);
      a3[3] = a2;
      a3[4] = &protocol witness table for _ConcreteDerivativeBox<A>;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3);
      return (v25)(boxed_opaque_existential_1Tm, v27, v6);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
      swift_getDynamicType();
      (*(a1[4] + 24))(v44);
      v31 = v45;
      v32 = v46;
      __swift_project_boxed_opaque_existential_1Tm(v44, v45);
      (*(v32 + 40))(a1, v31, v32);
      return __swift_destroy_boxed_opaque_existential_1(v44);
    }
  }

  else
  {
    a3[3] = a2;
    a3[4] = &protocol witness table for _ConcreteDerivativeBox<A>;
    v30 = __swift_allocate_boxed_opaque_existential_1Tm(a3);
    return (*(*(a2 - 8) + 16))(v30, v43, a2);
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *_ConcreteDerivativeBox._move(by:)(void *a1, uint64_t a2)
{
  v26 = a2;
  v3 = *(a2 + 16);
  v4 = type metadata accessor for Optional();
  v24 = *(v4 - 8);
  v25 = v4;
  v6 = MEMORY[0x2A1C7C4A8](v4, v5);
  v8 = &v24 - v7;
  v9 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v6, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v14);
  v15 = *(v13 + 64);
  v16 = lazy protocol witness table accessor for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero();
  result = v15(v27, &type metadata for AnyDerivative.OpaqueZero, &type metadata for AnyDerivative.OpaqueZero, v16, v14, v13);
  if (LOBYTE(v27[0]) == 1)
  {
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v18);
    v20 = *(v26 + 24);
    (*(v19 + 64))(v3, v3, v20, v18, v19);
    if ((*(v9 + 48))(v8, 1, v3) == 1)
    {
      (*(v24 + 8))(v8, v25);
      v21 = a1[3];
      v22 = a1[4];
      __swift_project_boxed_opaque_existential_1Tm(a1, v21);
      (*(v22 + 56))(v27, v21, v22);
      __swift_project_boxed_opaque_existential_1Tm(v27, v27[3]);
      DynamicType = swift_getDynamicType();
      _derivativeTypeMismatch(_:_:file:line:)(v3, DynamicType, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift/stdlib/public/Differentiation/AnyDifferentiable.swift", 131, 2, 228);
    }

    (*(v9 + 32))(v12, v8, v3);
    (*(v20 + 32))(v12, v3, v20);
    return (*(v9 + 8))(v12, v3);
  }

  return result;
}

uint64_t AnyDerivative._box.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return outlined init with take of _AnyDerivativeBox(a1, v1);
}

uint64_t outlined init with take of _AnyDerivativeBox(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t (*static AnyDerivative._vjpInit<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  AnyDerivative.init<A>(_:)(v8, a3, a1);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  return partial apply for closure #1 in static AnyDerivative._vjpInit<A>(_:);
}

uint64_t closure #1 in static AnyDerivative._vjpInit<A>(_:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  (*(v4 + 56))(v6, v3, v4);
  return swift_dynamicCast();
}

uint64_t (*reverse-mode derivative of AnyDerivative.init<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  static AnyDerivative._vjpInit<A>(_:)(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a2, a3);
  return partial apply for closure #1 in static AnyDerivative._vjpInit<A>(_:);
}

uint64_t (*static AnyDerivative._jvpInit<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  AnyDerivative.init<A>(_:)(v8, a3, a1);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  return partial apply for closure #1 in static AnyDerivative._jvpInit<A>(_:);
}

uint64_t closure #1 in static AnyDerivative._jvpInit<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *x8_0@<X8>)
{
  MEMORY[0x2A1C7C4A8](a1, a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  return AnyDerivative.init<A>(_:)(v7, a2, x8_0);
}

uint64_t (*forward-mode derivative of AnyDerivative.init<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  static AnyDerivative._jvpInit<A>(_:)(a1, a2, a3, a4);
  v8 = v7;
  (*(*(a3 - 8) + 8))(a2, a3);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = partial apply for closure #1 in static AnyDerivative._jvpInit<A>(_:);
  v9[5] = v8;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out AnyDerivative);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out AnyDerivative)(uint64_t a1)
{
  v3 = *(v1 + 16);
  (*(v1 + 32))();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

uint64_t static AnyDerivative.== infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  return (*(v4 + 8))(a2, v3, v4) & 1;
}

uint64_t static AnyDerivative.!= infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  return (*(v4 + 16))(a2, v3, v4) & 1;
}

uint64_t static AdditiveArithmetic.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a3 - 8);
  MEMORY[0x2A1C7C4A8](a1, a2);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 32))(v12, a1);
  a5(v12, a2, a3, a4);
  return (*(v10 + 8))(v12, a3);
}

uint64_t static AnyDerivative.zero.getter@<X0>(uint64_t a1@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16_Differentiation22_ConcreteDerivativeBoxVyAA03AnyC0V10OpaqueZeroVGMd, &_s16_Differentiation22_ConcreteDerivativeBoxVyAA03AnyC0V10OpaqueZeroVGMR);
  *(a1 + 24) = result;
  *(a1 + 32) = &protocol witness table for _ConcreteDerivativeBox<A>;
  return result;
}

uint64_t (*static AnyDerivative._vjpAdd(lhs:rhs:)(uint64_t a1, void *a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v4);
  (*(v5 + 32))(a3, v4, v5);
  return closure #1 in static AnyDerivative._vjpAdd(lhs:rhs:);
}

uint64_t closure #1 in static AnyDerivative._vjpAdd(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of AnyDerivative(a3, a1);

  return outlined init with copy of AnyDerivative(a3, a2);
}

uint64_t (*reverse-mode derivative of static AnyDerivative.+ infix(_:_:)(uint64_t a1, void *a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v4);
  (*(v5 + 32))(a3, v4, v5);
  return closure #1 in static AnyDerivative._vjpAdd(lhs:rhs:);
}

uint64_t (*static AnyDerivative._jvpAdd(lhs:rhs:)(uint64_t a1, void *a2, uint64_t a3))()
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v4);
  (*(v5 + 32))(a3, v4, v5);
  return closure #1 in static AnyDerivative._jvpAdd(lhs:rhs:);
}

uint64_t static AnyDerivative.+ infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  return (*(v4 + 32))(a2, v3, v4);
}

uint64_t (*forward-mode derivative of static AnyDerivative.+ infix(_:_:)(uint64_t a1, void *a2, uint64_t a3))()
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v4);
  (*(v5 + 32))(a3, v4, v5);
  return closure #1 in static AnyDerivative._jvpAdd(lhs:rhs:);
}

uint64_t (*static AnyDerivative._vjpSubtract(lhs:rhs:)(uint64_t a1, void *a2, uint64_t a3))()
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v4);
  (*(v5 + 40))(a3, v4, v5);
  return closure #1 in static AnyDerivative._vjpSubtract(lhs:rhs:);
}

void *closure #1 in static AnyDerivative._vjpSubtract(lhs:rhs:)(uint64_t a1, uint64_t *a2, void *a3)
{
  outlined init with copy of AnyDerivative(a3, a1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16_Differentiation22_ConcreteDerivativeBoxVyAA03AnyC0V10OpaqueZeroVGMd, &_s16_Differentiation22_ConcreteDerivativeBoxVyAA03AnyC0V10OpaqueZeroVGMR);
  v7[3] = v5;
  v7[4] = &protocol witness table for _ConcreteDerivativeBox<A>;
  __swift_project_boxed_opaque_existential_1Tm(v7, v5);
  _ConcreteDerivativeBox._subtracting(_:)(a3, v5, a2);
  return outlined destroy of AnyDerivative(v7);
}

void *(*reverse-mode derivative of static AnyDerivative.- infix(_:_:)(uint64_t a1, void *a2, uint64_t a3))(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v4);
  (*(v5 + 40))(a3, v4, v5);
  return closure #1 in static AnyDerivative._vjpSubtract(lhs:rhs:);
}

uint64_t (*static AnyDerivative._jvpSubtract(lhs:rhs:)(uint64_t a1, void *a2, uint64_t a3))()
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v4);
  (*(v5 + 40))(a3, v4, v5);
  return closure #1 in static AnyDerivative._jvpSubtract(lhs:rhs:);
}

uint64_t static AnyDerivative.- infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  return (*(v4 + 40))(a2, v3, v4);
}

uint64_t (*forward-mode derivative of static AnyDerivative.- infix(_:_:)(uint64_t a1, void *a2, uint64_t a3))()
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v4);
  (*(v5 + 40))(a3, v4, v5);
  return closure #1 in static AnyDerivative._jvpSubtract(lhs:rhs:);
}

uint64_t *AnyDerivative.move(by:)(uint64_t *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  v5 = *(v4 + 64);
  v6 = lazy protocol witness table accessor for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero();
  v5(&v10, &type metadata for AnyDerivative.OpaqueZero, &type metadata for AnyDerivative.OpaqueZero, v6, v3, v4);
  if ((v10 & 1) == 0)
  {
    return __swift_assign_boxed_opaque_existential_1(v1, a1);
  }

  v7 = v1[3];
  v8 = v1[4];
  __swift_mutable_project_boxed_opaque_existential_1(v1, v7);
  return (*(v8 + 48))(a1, v7, v8);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t *protocol witness for Differentiable.move(by:) in conformance AnyDerivative(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  if (_AnyDerivativeBox._isOpaqueZero()())
  {

    return __swift_assign_boxed_opaque_existential_1(v1, a1);
  }

  else
  {
    v4 = v1[3];
    v5 = v1[4];
    __swift_mutable_project_boxed_opaque_existential_1(v1, v4);
    return (*(v5 + 48))(a1, v4, v5);
  }
}

uint64_t protocol witness for static AdditiveArithmetic.zero.getter in conformance AnyDerivative@<X0>(uint64_t a1@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16_Differentiation22_ConcreteDerivativeBoxVyAA03AnyC0V10OpaqueZeroVGMd, &_s16_Differentiation22_ConcreteDerivativeBoxVyAA03AnyC0V10OpaqueZeroVGMR);
  *(a1 + 24) = result;
  *(a1 + 32) = &protocol witness table for _ConcreteDerivativeBox<A>;
  return result;
}

void *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance AnyDerivative(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = *(a1 + 32);
  v4 = v8;
  v5 = *(&v3 + 1);
  __swift_project_boxed_opaque_existential_1Tm(v7, *(&v3 + 1));
  (*(v4 + 32))(a2, v5, v4);
  return outlined destroy of AnyDerivative(v7);
}

void *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance AnyDerivative(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = *(a1 + 32);
  v4 = v8;
  v5 = *(&v3 + 1);
  __swift_project_boxed_opaque_existential_1Tm(v7, *(&v3 + 1));
  (*(v4 + 40))(a2, v5, v4);
  return outlined destroy of AnyDerivative(v7);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnyDerivative(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  return (*(v4 + 8))(a2, v3, v4) & 1;
}

uint64_t AnyDerivative.customMirror.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  (*(v2 + 56))(v4, v1, v2);
  return Mirror.init(reflecting:)();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance AnyDerivative()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  (*(v2 + 56))(v4, v1, v2);
  return Mirror.init(reflecting:)();
}

uint64_t Array<A>.DifferentiableView.base.getter()
{
  _ConcreteDerivativeBox._base.modify();
}

uint64_t key path getter for Array<A>.DifferentiableView.base : <A>[A]<A>.DifferentiableView@<X0>(void *a1@<X8>)
{
  _ConcreteDerivativeBox._base.modify();
  *a1 = v2;
}

uint64_t key path setter for Array<A>.DifferentiableView.base : <A>[A]<A>.DifferentiableView(uint64_t *a1)
{
  v1 = *a1;

  v2 = Array<A>.DifferentiableView.base.modify();
  *v3 = v1;

  return (v2)(&v5, 0);
}

uint64_t Array<A>.DifferentiableView.base.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Array<A>.DifferentiableView._vjpBase()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
}

uint64_t reverse-mode derivative of Array<A>.DifferentiableView.base.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = Array<A>.DifferentiableView._vjpBase()(a1, a2, a3);
  v7 = v6;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = partial apply for closure #1 in Array<A>.DifferentiableView._vjpBase();
  v8[5] = v7;
  return v5;
}

uint64_t Array<A>.DifferentiableView._jvpBase()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
}

uint64_t forward-mode derivative of Array<A>.DifferentiableView.base.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = Array<A>.DifferentiableView._jvpBase()(a1, a2, a3);
  v7 = v6;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = partial apply for closure #1 in Array<A>.DifferentiableView._vjpBase();
  v8[5] = v7;
  return v5;
}

uint64_t static Array<A>.DifferentiableView._vjpInit(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
}

uint64_t reverse-mode derivative of Array<A>.DifferentiableView.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = static Array<A>.DifferentiableView._vjpInit(_:)(a1, a2, a3);
  v7 = v6;

  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = partial apply for closure #1 in Array<A>.DifferentiableView._vjpBase();
  v8[5] = v7;
  return v5;
}

uint64_t static Array<A>.DifferentiableView._jvpInit(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
}

uint64_t forward-mode derivative of Array<A>.DifferentiableView.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = static Array<A>.DifferentiableView._jvpInit(_:)(a1, a2, a3);
  v7 = v6;

  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = partial apply for closure #1 in Array<A>.DifferentiableView._vjpBase();
  v8[5] = v7;
  return v5;
}

uint64_t Array<A>.DifferentiableView.move(by:)(int64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v24 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v6);
  v8 = v23 - v7;
  v26 = a1;
  type metadata accessor for Array();
  v25 = a1;

  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
  }

  v10 = MEMORY[0x29C2AE390](v9, v3);

  v11 = v25;
  v12 = MEMORY[0x29C2AE390](v25, AssociatedTypeWitness);
  if (v10 == v12)
  {
    v28 = v11;
    swift_getWitnessTable();
    RandomAccessCollection<>.indices.getter();
    v13 = v26;
    v14 = v27;
    if (v26 != v27)
    {
      v23[1] = v24 + 32;
      v15 = (v5 + 8);
      if (v27 <= v26)
      {
        v16 = v26;
      }

      else
      {
        v16 = v27;
      }

      while (v16 != v13)
      {
        Array.subscript.getter();
        type metadata accessor for Array();
        Array._makeMutableAndUnique()();
        Array._checkSubscript_mutating(_:)(v13);
        _swift_isClassOrObjCExistentialType();
        (*(v24 + 32))(v8, v3);
        (*v15)(v8, AssociatedTypeWitness);
        if (v14 == ++v13)
        {
        }
      }

      v12 = _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_11;
    }
  }

LABEL_11:
  v18 = v12;

  v26 = 0;
  v27 = 0xE000000000000000;
  _StringGuts.grow(_:)(48);

  v26 = 0xD000000000000010;
  v27 = 0x8000000299C28B40;

  v20 = MEMORY[0x29C2AE390](v19, v3);

  v28 = v20;
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x29C2AE2B0](v21);

  MEMORY[0x29C2AE2B0](0x27666C6573272820, 0xEE0020646E612029);
  v28 = v18;
  v22 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x29C2AE2B0](v22);

  MEMORY[0x29C2AE2B0](0x6365726964272820, 0xEE0029276E6F6974);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static Array<A>.DifferentiableView<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = static Array<A>.== infix(_:_:)();

  return v4 & 1;
}

uint64_t Array<A>.DifferentiableView.description.getter(uint64_t a1, uint64_t a2)
{

  v4 = MEMORY[0x29C2AE300](v3, a2);

  return v4;
}

uint64_t Array<A>.DifferentiableView.customMirror.getter(uint64_t a1, uint64_t a2)
{

  Array.customMirror.getter();
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a8;
  v9 = v8;
  v69 = a2;
  v70 = a4;
  v68 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v14);
  v52 = &v51 - v16;
  v55 = a5;
  v53 = *(a5 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v65 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v66 = &v51 - v21;
  v22 = type metadata accessor for Optional();
  v56 = *(v22 - 8);
  v57 = v22;
  v24 = MEMORY[0x2A1C7C4A8](v22, v23);
  v59 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x2A1C7C4A8](v24, v26);
  v29 = &v51 - v28;
  v31 = MEMORY[0x2A1C7C4A8](v27, v30);
  v58 = &v51 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x2A1C7C4A8](v31, v33);
  v64 = *(a3 - 1);
  MEMORY[0x2A1C7C4A8](v34, v35);
  v37 = &v51 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a6;
  v71 = swift_getAssociatedTypeWitness();
  v62 = *(v71 - 8);
  MEMORY[0x2A1C7C4A8](v71, v38);
  v40 = &v51 - v39;
  v41 = dispatch thunk of Sequence.underestimatedCount.getter();
  v72 = ContiguousArray.init()();
  v67 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  (*(v64 + 2))(v37, v60, a3);
  v70 = v40;
  v64 = a3;
  dispatch thunk of Sequence.makeIterator()();
  if (v41 < 0)
  {
    goto LABEL_18;
  }

  if (v41)
  {
    v42 = (v63 + 48);
    v43 = (v63 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      if ((*v42)(v29, 1, AssociatedTypeWitness) == 1)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/Sequence.swift", 20, 2, 699, 0);
        while (1)
        {
          __break(1u);
LABEL_18:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
        }
      }

      v68(v29, v66);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v43)(v29, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      if (!--v41)
      {
        goto LABEL_9;
      }
    }

    (*(v62 + 8))(v70, v71);

    (*(v53 + 32))(v54, v66, v55);
    return (*v43)(v29, AssociatedTypeWitness);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
LABEL_9:
    v44 = v59;
    dispatch thunk of IteratorProtocol.next()();
    v45 = v44;
    v46 = v63;
    v47 = *(v63 + 48);
    v66 = (v63 + 48);
    v64 = v47;
    if (v47(v44, 1, AssociatedTypeWitness) == 1)
    {
LABEL_13:
      (*(v62 + 8))(v70, v71);
      (*(v56 + 8))(v45, v57);
      return v72;
    }

    else
    {
      v63 = *(v46 + 32);
      v48 = (v46 + 8);
      v49 = v52;
      while (1)
      {
        (v63)(v49, v45, AssociatedTypeWitness);
        v68(v49, v65);
        if (v9)
        {
          break;
        }

        v9 = 0;
        (*v48)(v49, AssociatedTypeWitness);
        ContiguousArray.append(_:)();
        dispatch thunk of IteratorProtocol.next()();
        if (v64(v45, 1, AssociatedTypeWitness) == 1)
        {
          goto LABEL_13;
        }
      }

      (*v48)(v49, AssociatedTypeWitness);
      (*(v62 + 8))(v70, v71);

      return (*(v53 + 32))(v54, v65, v55);
    }
  }
}

uint64_t static Array<A>.DifferentiableView<>.+ infix(_:_:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *, char *))
{

  v16 = MEMORY[0x29C2AE390](v15, a3);
  if (!v16)
  {

    return a2;
  }

  v17 = v16;

  v19 = MEMORY[0x29C2AE390](v18, a3);
  if (!v19)
  {

    return a1;
  }

  if (v17 == v19)
  {
    v32 = a9;
    v33 = a1;
    v20 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    zip<A, B>(_:_:)();

    v37 = v39;
    v38 = v40;
    v22 = swift_allocObject();
    v31[1] = v31;
    v22[2] = a3;
    v22[3] = a4;
    v22[4] = a5;
    v22[5] = a3;
    v30[2] = a3;
    v30[3] = a4;
    v30[4] = a5;
    v30[5] = a8;
    v30[6] = MEMORY[0x2A1C7C4A8](v22, v23);
    v33 = v20;
    v34 = v20;
    v35 = WitnessTable;
    v36 = WitnessTable;
    v24 = type metadata accessor for Zip2Sequence();
    v25 = swift_getWitnessTable();
    a2 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v32, v30, v24, a3, MEMORY[0x29EDC9F80], v25, MEMORY[0x29EDC9F90], v26);

    return a2;
  }

  _StringGuts.grow(_:)(25);

  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x29C2AE2B0](v28);

  MEMORY[0x29C2AE2B0](0x20646E6120, 0xE500000000000000);
  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x29C2AE2B0](v29);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Array<A>.DifferentiableView<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  if (MEMORY[0x29C2AE390](a2, a3) <= a1)
  {

    return dispatch thunk of static AdditiveArithmetic.zero.getter();
  }

  else
  {
    Array.subscript.getter();
  }
}

uint64_t protocol witness for static AdditiveArithmetic.zero.getter in conformance <> [A]<A>.DifferentiableView@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Array<A>.DifferentiableView<>.zero.getter(*(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance <> [A]<A>.DifferentiableView@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, void, void, void, void)@<X4>, uint64_t *a6@<X8>)
{
  result = a5(*a1, *a2, *(a3 + 16), *(a4 - 8), *(a3 + 24));
  *a6 = result;
  return result;
}

uint64_t Array<A>.move(by:)(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v6 = type metadata accessor for Array<A>.DifferentiableView(0, *(a2 + 16), a3, a4);
  result = Array<A>.DifferentiableView.move(by:)(a1, v6);
  *v4 = v8;
  return result;
}

uint64_t (*Array<A>._vjpSubscript(index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  Array.subscript.getter();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a3;
  v9[5] = a2;

  return partial apply for pullback #1 <A>(_:) in Array<A>._vjpSubscript(index:);
}

uint64_t pullback #1 <A>(_:) in Array<A>._vjpSubscript(index:)(uint64_t a1, uint64_t a2, Swift::Int a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v11);
  v13 = &v20 - v12;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v14 = MEMORY[0x29C2AE390](a2, a4);
  v15 = specialized Array.init(repeating:count:)(v13, v14, AssociatedTypeWitness);
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  v21 = v15;
  type metadata accessor for Array();
  Array._makeMutableAndUnique()();
  v16 = v21;
  Array._checkSubscript_mutating(_:)(a3);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v18 = v16 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v18 = v16;
  }

  (*(v10 + 24))(v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a3, a1, AssociatedTypeWitness);
  return v21;
}

uint64_t (*reverse-mode derivative of Array.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  Array<A>._vjpSubscript(index:)(a1, a2, a3, a4, a5);
  v8 = v7;
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = partial apply for pullback #1 <A>(_:) in Array<A>._vjpSubscript(index:);
  v9[5] = v8;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Differentiable.TangentVector) -> (@owned [A.Differentiable.TangentVector]<A>.DifferentiableView);
}

uint64_t (*Array<A>._jvpSubscript(index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  Array.subscript.getter();
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a2;
  return partial apply for differential #1 <A>(_:) in Array<A>._jvpSubscript(index:);
}

uint64_t differential #1 <A>(_:) in Array<A>._jvpSubscript(index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return Array<A>.DifferentiableView<>.subscript.getter(a2, a1, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t (*forward-mode derivative of Array.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  Array<A>._jvpSubscript(index:)(a1, a2, a3, a4, a5);
  v8 = v7;
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = partial apply for differential #1 <A>(_:) in Array<A>._jvpSubscript(index:);
  v9[5] = v8;
  return partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [A.Differentiable.TangentVector]<A>.DifferentiableView) -> (@out A.Differentiable.TangentVector);
}

uint64_t static Array<A>._vjpConcatenate(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = static Array.+ infix(_:_:)();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;

  return v8;
}

uint64_t pullback #1 <A>(_:) in static Array<A>._vjpConcatenate(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Array();

  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {

    v10 = static Array._allocateUninitialized(_:)();
    static Array._allocateUninitialized(_:)();
    return v10;
  }

  v11 = MEMORY[0x29C2AE390](a1, AssociatedTypeWitness);
  v12 = MEMORY[0x29C2AE390](a2, a4);
  v13 = MEMORY[0x29C2AE390](a3, a4);
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v11 != v12 + v13)
  {
LABEL_9:

    _StringGuts.grow(_:)(91);
    MEMORY[0x29C2AE2B0](0xD000000000000022, 0x8000000299C28D80);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x29C2AE2B0](v15);

    MEMORY[0x29C2AE2B0](0xD00000000000002ELL, 0x8000000299C28DB0);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x29C2AE2B0](v16);

    MEMORY[0x29C2AE2B0](0x20646E6120, 0xE500000000000000);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x29C2AE2B0](v17);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_10;
  }

  if ((MEMORY[0x29C2AE390](a2, a4) & 0x8000000000000000) == 0)
  {
    Array.subscript.getter();
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    v10 = Array.init<A>(_:)();
    swift_getCanonicalSpecializedMetadata();
    swift_getWitnessTable();
    lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>();
    MutableCollection.subscript.getter();

    Array.init<A>(_:)();
    return v10;
  }

LABEL_10:
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
  __break(1u);
  return result;
}

uint64_t reverse-mode derivative of static Array.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = static Array<A>._vjpConcatenate(_:_:)(a1, a2, a3, a4);
  v8 = v7;
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = partial apply for pullback #1 <A>(_:) in static Array<A>._vjpConcatenate(_:_:);
  v9[5] = v8;
  return v6;
}

uint64_t static Array<A>._jvpConcatenate(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = static Array.+ infix(_:_:)();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;

  return v8;
}

uint64_t differential #1 <A>(_:_:) in static Array<A>._jvpConcatenate(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  v11 = MEMORY[0x29C2AE390](v10, AssociatedTypeWitness);

  if (v11 == MEMORY[0x29C2AE390](a3, a5) && (v12 = , v13 = MEMORY[0x29C2AE390](v12, AssociatedTypeWitness), , v13 == MEMORY[0x29C2AE390](a4, a5)))
  {

    v14 = static Array.+ infix(_:_:)();

    return v14;
  }

  else
  {
    _StringGuts.grow(_:)(82);
    MEMORY[0x29C2AE2B0](0xD000000000000049, 0x8000000299C28D30);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x29C2AE2B0](v16);

    MEMORY[0x29C2AE2B0](0x20646E6120, 0xE500000000000000);
    MEMORY[0x29C2AE390](a4, a5);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x29C2AE2B0](v17);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t forward-mode derivative of static Array.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = static Array<A>._jvpConcatenate(_:_:)(a1, a2, a3, a4);
  v8 = v7;
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = partial apply for differential #1 <A>(_:_:) in static Array<A>._jvpConcatenate(_:_:);
  v9[5] = v8;
  return v6;
}

uint64_t (*Array<A>._vjpAppend(_:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](a1, a2);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x29C2AE390](*v3, v6);
  (*(v7 + 16))(v9, a1, v6);
  Array.append(_:)();
  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = a3;
  v11[4] = v10;
  return partial apply for closure #1 in Array<A>._vjpAppend(_:);
}

uint64_t closure #1 in Array<A>._vjpAppend(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();

  Array.subscript.getter();

  return $defer #1 <A>() in closure #1 in Array<A>._vjpAppend(_:)(a1, a3, a4);
}

uint64_t $defer #1 <A>() in closure #1 in Array<A>._vjpAppend(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v5);
  v7 = &v9 - v6;
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  RangeReplaceableCollection<>.removeLast()();
  return (*(v4 + 8))(v7, AssociatedTypeWitness);
}

uint64_t (*reverse-mode derivative of Array.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  Array<A>._vjpAppend(_:)(a1, a2, a3);
  v7 = v6;
  v8 = *(a2 + 16);
  (*(*(v8 - 8) + 8))(a1, v8);
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a3;
  v9[4] = partial apply for closure #1 in Array<A>._vjpAppend(_:);
  v9[5] = v7;
  return partial apply for autodiff self-reordering reabstraction thunk for @escaping @callee_guaranteed (@inout [A.Differentiable.TangentVector]<A>.DifferentiableView) -> (@out A.Differentiable.TangentVector);
}

uint64_t (*Array<A>._jvpAppend(_:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  MEMORY[0x2A1C7C4A8](a1, a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  Array.append(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = a3;
  return partial apply for closure #1 in Array<A>._jvpAppend(_:);
}

uint64_t closure #1 in Array<A>._jvpAppend(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v6);
  (*(v8 + 16))(&v10 - v7, a2, AssociatedTypeWitness);
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t (*forward-mode derivative of Array.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  Array<A>._jvpAppend(_:)(a1, a2, a3);
  v7 = v6;
  v8 = *(a2 + 16);
  (*(*(v8 - 8) + 8))(a1, v8);
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a3;
  v9[4] = partial apply for closure #1 in Array<A>._jvpAppend(_:);
  v9[5] = v7;
  return partial apply for autodiff self-reordering reabstraction thunk for @escaping @callee_guaranteed (@in A.Differentiable.TangentVector, @inout [A.Differentiable.TangentVector]<A>.DifferentiableView) -> ();
}

uint64_t (*static Array<A>._vjpAppend(_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1)
{
  v6 = MEMORY[0x29C2AE390](*a1, a3);
  static Array.+= infix(_:_:)();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = v6;
  return partial apply for closure #1 in static Array<A>._vjpAppend(_:_:);
}

uint64_t closure #1 in static Array<A>._vjpAppend(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.dropFirst(_:)();
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  v5 = Array.init<A>(_:)();

  MEMORY[0x29C2AE390](v6, AssociatedTypeWitness);

  swift_getWitnessTable();
  swift_getWitnessTable();
  RangeReplaceableCollection<>.removeLast(_:)();
  return v5;
}

uint64_t (*reverse-mode derivative of static Array.+= infix(_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  static Array<A>._vjpAppend(_:_:)(a1, a2, a3, a4);
  v7 = v6;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = partial apply for closure #1 in static Array<A>._vjpAppend(_:_:);
  v8[5] = v7;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Differentiable.TangentVector) -> (@owned [A.Differentiable.TangentVector]<A>.DifferentiableView);
}

uint64_t (*static Array<A>._jvpAppend(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2)
{
  static Array.+= infix(_:_:)();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  return partial apply for closure #1 in static Array<A>._jvpAppend(_:_:);
}

uint64_t closure #1 in static Array<A>._jvpAppend(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();

  static Array.+= infix(_:_:)();
}

uint64_t (*forward-mode derivative of static Array.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  static Array<A>._jvpAppend(_:_:)(a1, a2, a3, a4);
  v7 = v6;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = partial apply for closure #1 in static Array<A>._jvpAppend(_:_:);
  v8[5] = v7;
  return partial apply for thunk for @escaping @callee_guaranteed (@inout [A.Differentiable.TangentVector]<A>.DifferentiableView, @guaranteed [A.Differentiable.TangentVector]<A>.DifferentiableView) -> ();
}

uint64_t static Array<A>._vjpInit(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = specialized Array.init(repeating:count:)(a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  return v6;
}

uint64_t closure #1 in static Array<A>._vjpInit(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v8);
  v10 = &v12[-v9];
  v16 = a1;
  swift_getAssociatedConformanceWitness();

  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v13 = a2;
  v14 = a3;
  v15 = AssociatedTypeWitness;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.reduce<A>(_:_:)();
  (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t implicit closure #1 in closure #1 in static Array<A>._vjpInit(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
}

uint64_t reverse-mode derivative of Array.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = static Array<A>._vjpInit(repeating:count:)(a1, a2, a3, a4);
  v9 = v8;
  (*(*(a3 - 8) + 8))(a1, a3);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = partial apply for closure #1 in static Array<A>._vjpInit(repeating:count:);
  v10[5] = v9;
  return v7;
}

uint64_t static Array<A>._jvpInit(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = specialized Array.init(repeating:count:)(a1, a2, a3);
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a2;
  return v7;
}

uint64_t forward-mode derivative of Array.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = static Array<A>._jvpInit(repeating:count:)(a1, a2, a3, a4);
  v9 = v8;
  (*(*(a3 - 8) + 8))(a1, a3);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = partial apply for closure #1 in static Array<A>._jvpInit(repeating:count:);
  v10[5] = v9;
  return v7;
}

uint64_t Array<A>.differentiableMap<A>(_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a2;
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v12 = *a1;
  v7 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed A) -> (@out A1), v11, v7, a4, MEMORY[0x29EDC9F80], WitnessTable, MEMORY[0x29EDC9F90], v9);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a1;
  v48 = a2;
  v39 = *(a5 - 8);
  v40 = a8;
  MEMORY[0x2A1C7C4A8](a1, a2);
  v49 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v10);
  v41 = &v35 - v12;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v42 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v44 = *(v15 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v15, v16);
  v38 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v35 - v20;
  v22 = dispatch thunk of Collection.count.getter();
  if (!v22)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v23 = v22;
  v36 = a5;
  v37 = v15;
  v53 = ContiguousArray.init()();
  v45 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v23);
  v50 = v21;
  dispatch thunk of Collection.startIndex.getter();
  if (v23 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
LABEL_12:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v24 = (v46 + 2);
    ++v46;
    v25 = AssociatedTypeWitness;
    v26 = v41;
    do
    {
      v27 = dispatch thunk of Collection.subscript.read();
      (*v24)(v26);
      v27(v52, 0);
      v28 = v51;
      v47(v26, v49);
      if (v28)
      {
        (*v46)(v26, v25);
        (*(v44 + 8))(v50, v37);

        return (*(v39 + 32))(v40, v49, v36);
      }

      v51 = 0;
      (*v46)(v26, v25);
      ContiguousArray.append(_:)();
      dispatch thunk of Collection.formIndex(after:)();
      --v23;
    }

    while (v23);
    v29 = v38;
    dispatch thunk of Collection.endIndex.getter();
    v30 = v37;
    swift_getAssociatedConformanceWitness();
    v31 = v50;
    v32 = dispatch thunk of static Equatable.== infix(_:_:)();
    v33 = *(v44 + 8);
    v33(v29, v30);
    if ((v32 & 1) == 0)
    {
      goto LABEL_12;
    }

    v33(v31, v30);
    return v53;
  }

  return result;
}

uint64_t Array<A>._vjpDifferentiableMap<A>(_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v41 = a1[1];
  v42 = v11;
  v40 = a1[2];
  v12 = MEMORY[0x2A1C7C4A8](a1, a2);
  v39 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v12, v16);
  v33 = v17;
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = static Array._allocateUninitialized(_:)();
  v47 = v19;
  v35 = a5;
  swift_getAssociatedTypeWitness();
  v43 = a4;
  swift_getAssociatedTypeWitness();
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  v20 = static Array._allocateUninitialized(_:)();
  v46 = v20;
  if (!MEMORY[0x29C2AE3B0](a2, a3))
  {
LABEL_12:
    v29 = swift_allocObject();
    v30 = v43;
    v29[2] = a3;
    v29[3] = v30;
    v29[4] = v35;
    v29[5] = a6;
    v29[6] = v20;
    return v19;
  }

  v34 = a6;
  v21 = 0;
  v37 = (v15 + 16);
  v36 = (v15 + 8);
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v15 + 16))(v18, a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v21, a3);
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    v28 = _ArrayBuffer._getElementSlowPath(_:)();
    if (v33 != 8)
    {
      break;
    }

    v44[0] = v28;
    (*v37)(v18, v44, a3);
    swift_unknownObjectRelease();
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
LABEL_10:
      __break(1u);
LABEL_11:
      v20 = v46;
      v19 = v47;
      a6 = v34;
      goto LABEL_12;
    }

LABEL_5:
    v45[0] = v42;
    v45[1] = v41;
    v45[2] = v40;
    v25 = valueWithPullback<A, B>(at:of:)(v39, v18, v45, v23, v43);
    v27 = v26;
    (*v36)(v18, a3);
    type metadata accessor for Array();
    Array.append(_:)();
    v44[0] = v25;
    v44[1] = v27;
    type metadata accessor for Array();
    Array.append(_:)();
    ++v21;
    if (v24 == MEMORY[0x29C2AE3B0](a2, a3))
    {
      goto LABEL_11;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Can't unsafeBitCast between types of different sizes", 52, 2, "Swift/Builtin.swift", 19, 2, 96, 0);
  __break(1u);
  return result;
}

uint64_t specialized pullback #1 <A><A1>(_:) in Array<A>._vjpDifferentiableMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  v11 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  zip<A, B>(_:_:)();
  v36 = v38;
  v37 = v39;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = partial apply for closure #1 in pullback #1 <A><A1>(_:) in Array<A>._vjpDifferentiableMap<A>(_:);
  v26 = &v27;
  v32 = v10;
  v33 = v11;
  v34 = WitnessTable;
  v35 = v13;
  v14 = type metadata accessor for Zip2Sequence();
  v15 = swift_checkMetadataState();
  v16 = swift_getWitnessTable();
  v18 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(_s13TangentVector16_Differentiation14DifferentiablePQyd__xq_Ri_zRi0_zRi__Ri0__r0_lyAeaDQzIsegnr_AFIgngr_AE_xq_Ri_zRi0_zRi__Ri0__r0_lyAeFIsegnr_tAFs5NeverOIegnrzr_AbCRzAbCRd__r__lTRTA, v20, v14, v15, MEMORY[0x29EDC9F80], v16, MEMORY[0x29EDC9F90], v17);

  return v18;
}

uint64_t _s13TangentVector16_Differentiation14DifferentiablePQyd__xq_Ri_zRi0_zRi__Ri0__r0_lyAeaDQzIsegnr_AFIgngr_AE_xq_Ri_zRi0_zRi__Ri0__r0_lyAeFIsegnr_tAFs5NeverOIegnrzr_AbCRzAbCRd__r__lTR(uint64_t a1, uint64_t (*a2)(uint64_t, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)), *(a1 + *(TupleTypeMetadata2 + 48) + 8));
}

uint64_t reverse-mode derivative of Array<A>.differentiableMap<A>(_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1[1];
  v16[0] = *a1;
  v16[1] = v10;
  v16[2] = a1[2];
  v11 = Array<A>._vjpDifferentiableMap<A>(_:)(v16, a2, a3, a4, a5, a6);
  v13 = v12;
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = partial apply for specialized pullback #1 <A><A1>(_:) in Array<A>._vjpDifferentiableMap<A>(_:);
  v14[7] = v13;
  return v11;
}

uint64_t Array<A>._jvpDifferentiableMap<A>(_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v41 = a1[1];
  v42 = v11;
  v40 = a1[2];
  v12 = MEMORY[0x2A1C7C4A8](a1, a2);
  v39 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v12, v16);
  v33 = v17;
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = static Array._allocateUninitialized(_:)();
  v47 = v19;
  v43 = a4;
  swift_getAssociatedTypeWitness();
  v35 = a5;
  swift_getAssociatedTypeWitness();
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  v20 = static Array._allocateUninitialized(_:)();
  v46 = v20;
  if (!MEMORY[0x29C2AE3B0](a2, a3))
  {
LABEL_12:
    v29 = swift_allocObject();
    v30 = v43;
    v29[2] = a3;
    v29[3] = v30;
    v29[4] = v35;
    v29[5] = a6;
    v29[6] = v20;
    return v19;
  }

  v34 = a6;
  v21 = 0;
  v37 = (v15 + 16);
  v36 = (v15 + 8);
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v15 + 16))(v18, a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v21, a3);
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    v28 = _ArrayBuffer._getElementSlowPath(_:)();
    if (v33 != 8)
    {
      break;
    }

    v44[0] = v28;
    (*v37)(v18, v44, a3);
    swift_unknownObjectRelease();
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
LABEL_10:
      __break(1u);
LABEL_11:
      v20 = v46;
      v19 = v47;
      a6 = v34;
      goto LABEL_12;
    }

LABEL_5:
    v45[0] = v42;
    v45[1] = v41;
    v45[2] = v40;
    v25 = valueWithDifferential<A, B>(at:of:)(v39, v18, v45, v23, v43);
    v27 = v26;
    (*v36)(v18, a3);
    type metadata accessor for Array();
    Array.append(_:)();
    v44[0] = v25;
    v44[1] = v27;
    type metadata accessor for Array();
    Array.append(_:)();
    ++v21;
    if (v24 == MEMORY[0x29C2AE3B0](a2, a3))
    {
      goto LABEL_11;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Can't unsafeBitCast between types of different sizes", 52, 2, "Swift/Builtin.swift", 19, 2, 96, 0);
  __break(1u);
  return result;
}

uint64_t specialized differential #1 <A><A1>(_:) in Array<A>._jvpDifferentiableMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  v11 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  zip<A, B>(_:_:)();
  v36 = v38;
  v37 = v39;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = partial apply for closure #1 in differential #1 <A><A1>(_:) in Array<A>._jvpDifferentiableMap<A>(_:);
  v26 = &v27;
  v32 = v10;
  v33 = v11;
  v34 = WitnessTable;
  v35 = v13;
  v14 = type metadata accessor for Zip2Sequence();
  v15 = swift_checkMetadataState();
  v16 = swift_getWitnessTable();
  v18 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(_s13TangentVector16_Differentiation14DifferentiablePQzxq_Ri_zRi0_zRi__Ri0__r0_lyAeaDQyd__Isegnr_AFIgngr_AE_xq_Ri_zRi0_zRi__Ri0__r0_lyAeFIsegnr_tAFs5NeverOIegnrzr_AbCRzAbCRd__r__lTRTA, v20, v14, v15, MEMORY[0x29EDC9F80], v16, MEMORY[0x29EDC9F90], v17);

  return v18;
}

uint64_t _s13TangentVector16_Differentiation14DifferentiablePQzxq_Ri_zRi0_zRi__Ri0__r0_lyAeaDQyd__Isegnr_AFIgngr_AE_xq_Ri_zRi0_zRi__Ri0__r0_lyAeFIsegnr_tAFs5NeverOIegnrzr_AbCRzAbCRd__r__lTR(uint64_t a1, uint64_t (*a2)(uint64_t, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)), *(a1 + *(TupleTypeMetadata2 + 48) + 8));
}

uint64_t forward-mode derivative of Array<A>.differentiableMap<A>(_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1[1];
  v16[0] = *a1;
  v16[1] = v10;
  v16[2] = a1[2];
  v11 = Array<A>._jvpDifferentiableMap<A>(_:)(v16, a2, a3, a4, a5, a6);
  v13 = v12;
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = partial apply for specialized differential #1 <A><A1>(_:) in Array<A>._jvpDifferentiableMap<A>(_:);
  v14[7] = v13;
  return v11;
}

uint64_t Array<A>.differentiableReduce<A>(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Sequence.reduce<A>(_:_:)();
}

uint64_t (*Array<A>._vjpDifferentiableReduce<A>(_:_:)(uint64_t a1, void (**a2)(uint64_t, uint64_t, uint64_t), __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v11 = a1;
  v12 = *a3;
  v57 = a3[1];
  v58 = v12;
  v56 = a3[2];
  v13 = *(a5 - 8);
  v14 = MEMORY[0x2A1C7C4A8](a1, a2);
  v47 = v15;
  v63 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v14, v18);
  v55 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = &v46 - v22;
  v62 = v24;
  swift_getAssociatedTypeWitness();
  v61 = a7;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  swift_getFunctionTypeMetadata1();
  v66 = static Array._allocateUninitialized(_:)();
  v25 = MEMORY[0x29C2AE390](a4, a5);
  v26 = type metadata accessor for Array();
  v49 = v25;
  v54 = v26;
  Array.reserveCapacity(_:)(v25);
  v27 = *(v17 + 16);
  v60 = v23;
  v27(v23, v59, a6);
  if (MEMORY[0x29C2AE3B0](a4, a5))
  {
    v48 = v11;
    v28 = 0;
    v53 = (v13 + 16);
    v52 = v13;
    v51 = (v13 + 8);
    v50 = (v17 + 8);
    v59 = (v17 + 32);
    v29 = v55;
    v30 = v60;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v52 + 2))(v63, a4 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 9) * v28, a5);
        v34 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v41 = _ArrayBuffer._getElementSlowPath(_:)();
        if (v47 != 8)
        {
          result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Can't unsafeBitCast between types of different sizes", 52, 2, "Swift/Builtin.swift", 19, 2, 96, 0);
          __break(1u);
          return result;
        }

        v64[0] = v41;
        (*v53)(v63, v64, a5);
        swift_unknownObjectRelease();
        v34 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_10:
          __break(1u);
LABEL_11:
          v11 = v48;
          goto LABEL_13;
        }
      }

      v65[0] = v58;
      v65[1] = v57;
      v65[2] = v56;
      v35 = v63;
      v36 = valueWithPullback<A, B, C>(at:_:of:)(v29, v30, v63, v65, v32, v33, a6);
      v38 = v37;
      (*v51)(v35, a5);
      (*v50)(v30, a6);
      v13 = *v59;
      (*v59)(v30, v29, a6);
      v39 = swift_allocObject();
      v39[2] = a5;
      v39[3] = a6;
      v40 = v62;
      v39[4] = v61;
      v39[5] = v40;
      v39[6] = v36;
      v39[7] = v38;
      v64[0] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A1.Differentiable.TangentVector) -> (@out A1.Differentiable.TangentVector, @out A.Differentiable.TangentVector);
      v64[1] = v39;
      Array.append(_:)();
      ++v28;
      if (v34 == MEMORY[0x29C2AE3B0](a4, a5))
      {
        goto LABEL_11;
      }
    }
  }

  v13 = *(v17 + 32);
LABEL_13:
  v13(v11, v60, a6);
  v42 = v66;
  v43 = swift_allocObject();
  v43[2] = a5;
  v43[3] = a6;
  v44 = v62;
  v43[4] = v61;
  v43[5] = v44;
  v43[6] = v49;
  v43[7] = v42;
  return partial apply for specialized closure #1 in Array<A>._vjpDifferentiableReduce<A>(_:_:);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed A1.Differentiable.TangentVector) -> (@out A1.Differentiable.TangentVector, @out A.Differentiable.TangentVector)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a5, a5 + *(TupleTypeMetadata2 + 48), a1);
}

uint64_t specialized closure #1 in Array<A>._vjpDifferentiableReduce<A>(_:_:)(uint64_t a1, uint64_t a2, Swift::Int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = MEMORY[0x2A1C7C4A8](TupleTypeMetadata2, v14);
  v17 = &v43 - v16;
  v18 = *(v12 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v15, v19);
  v22 = &v43 - v21;
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = &v43 - v24;
  v44 = v26;
  (*(v26 + 16))(&v43 - v24, a2, AssociatedTypeWitness);
  v52 = static Array._allocateUninitialized(_:)();
  v47 = v12;
  v49 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(a3);
  v51[4] = a4;
  v50 = AssociatedTypeWitness;
  v46 = TupleTypeMetadata2;
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  v28 = type metadata accessor for Array();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x29C2AE250](v51, v28, WitnessTable);
  v48 = v51[0];
  v45 = FunctionTypeMetadata1;
  result = MEMORY[0x29C2AE3B0]();
  if (result)
  {
    v31 = result;
    v32 = v18;
    v33 = (v44 + 8);
    v34 = (v44 + 32);
    v35 = (v32 + 32);
    while (!__OFSUB__(v31--, 1))
    {
      v37 = Array.subscript.read(v51, v31, v48, v45);
      v39 = *v38;

      (v37)(v51, 0);
      v40 = *(v46 + 48);
      v39(v25);

      v41 = v50;
      (*v33)(v25, v50);
      (*v34)(v25, v17, v41);
      (*v35)(v22, &v17[v40], v47);
      result = Array.append(_:)();
      if (!v31)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v51[0] = v52;

    swift_getWitnessTable();
    v42 = Sequence.reversed()();
    (*(v44 + 32))(v43, v25, v50);

    return v42;
  }

  return result;
}

uint64_t (*reverse-mode derivative of Array<A>.differentiableReduce<A>(_:_:)(uint64_t a1, void (**a2)(uint64_t, uint64_t, uint64_t), __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v12 = a3[1];
  v17[0] = *a3;
  v17[1] = v12;
  v17[2] = a3[2];
  Array<A>._vjpDifferentiableReduce<A>(_:_:)(a1, a2, v17, a4, a5, a6, a7);
  v14 = v13;
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a8;
  v15[6] = partial apply for specialized closure #1 in Array<A>._vjpDifferentiableReduce<A>(_:_:);
  v15[7] = v14;
  return partial apply for autodiff self-reordering reabstraction thunk for @escaping @callee_guaranteed (@in_guaranteed A1.Differentiable.TangentVector) -> (@out A1.Differentiable.TangentVector, @owned [A.Differentiable.TangentVector]<A>.DifferentiableView);
}

uint64_t (*Array<A>._jvpDifferentiableReduce<A>(_:_:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v47 = a1;
  v13 = *a3;
  v55 = a3[1];
  v56 = v13;
  v54 = a3[2];
  v58 = *(a5 - 8);
  v14 = MEMORY[0x2A1C7C4A8](a1, a2);
  v45 = v15;
  v61 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v14, v18);
  v53 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = (&v44 - v22);
  swift_getAssociatedTypeWitness();
  v48 = a7;
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata2();
  v64 = static Array._allocateUninitialized(_:)();
  v24 = MEMORY[0x29C2AE390](a4, a5);
  v52 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(v24);
  v25 = *(v17 + 16);
  v26 = v60;
  v59 = v23;
  v60 = a6;
  v25(v23, v26, a6);
  if (MEMORY[0x29C2AE3B0](a4, a5))
  {
    v46 = a8;
    v27 = 0;
    v51 = (v58 + 16);
    v50 = (v58 + 8);
    v49 = (v17 + 8);
    v57 = (v17 + 32);
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v58 + 16))(v61, a4 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v27, a5);
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v39 = _ArrayBuffer._getElementSlowPath(_:)();
        if (v45 != 8)
        {
          result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Can't unsafeBitCast between types of different sizes", 52, 2, "Swift/Builtin.swift", 19, 2, 96, 0);
          __break(1u);
          return result;
        }

        v62[0] = v39;
        (*v51)(v61, v62, a5);
        swift_unknownObjectRelease();
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_10:
          __break(1u);
LABEL_11:
          a8 = v46;
          goto LABEL_13;
        }
      }

      v63[0] = v56;
      v63[1] = v55;
      v63[2] = v54;
      v32 = v53;
      v33 = v59;
      v34 = v60;
      v35 = v61;
      v36 = valueWithDifferential<A, B, C>(at:_:of:)(v53, v59, v61, v63, v29, v30, v60);
      v38 = v37;
      (*v50)(v35, a5);
      (*v49)(v33, v34);
      v23 = *v57;
      (*v57)(v33, v32, v34);
      v62[0] = v36;
      v62[1] = v38;
      Array.append(_:)();
      ++v27;
      if (v31 == MEMORY[0x29C2AE3B0](a4, a5))
      {
        goto LABEL_11;
      }
    }
  }

  v23 = *(v17 + 32);
LABEL_13:
  v40 = v60;
  v23(v47, v59, v60);
  v41 = v64;
  v42 = swift_allocObject();
  v42[2] = a5;
  v42[3] = v40;
  v42[4] = v48;
  v42[5] = a8;
  v42[6] = v41;
  return partial apply for specialized closure #1 in Array<A>._jvpDifferentiableReduce<A>(_:_:);
}

uint64_t specialized closure #1 in Array<A>._jvpDifferentiableReduce<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v50 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v11);
  v44 = &v39 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v41 = &v39 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = type metadata accessor for Optional();
  MEMORY[0x2A1C7C4A8](v18 - 8, v19);
  v21 = &v39 - v20;
  v22 = *(v10 + 16);
  v43 = a6;
  v22(a6, a2, AssociatedTypeWitness);
  v23 = v10 + 16;
  v55 = a1;
  *&v54 = v50;
  v24 = type metadata accessor for Array();
  v42 = v13;
  v45 = AssociatedTypeWitness;
  swift_getFunctionTypeMetadata2();
  v25 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  zip<A, B>(_:_:)();
  v54 = v51;
  v49 = v25;
  v50 = v24;
  v55 = v24;
  v56 = v25;
  v47 = v27;
  v48 = WitnessTable;
  v57 = WitnessTable;
  v58 = v27;
  type metadata accessor for Zip2Sequence();
  Zip2Sequence.makeIterator()();
  v46 = TupleTypeMetadata2 - 8;
  v40 = (v14 + 32);
  v39 = (v14 + 8);
  v28 = (v23 - 8);
  for (i = (v23 + 16); ; (*i)(v37, v33, v36))
  {
    *&v51 = v50;
    *(&v51 + 1) = v49;
    v52 = v48;
    v53 = v47;
    type metadata accessor for Zip2Sequence.Iterator();
    Zip2Sequence.Iterator.next()();
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v21, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v30 = *&v21[*(TupleTypeMetadata2 + 48)];
    v31 = v41;
    v32 = v42;
    (*v40)(v41, v21, v42);
    v33 = v44;
    v34 = TupleTypeMetadata2;
    v35 = v43;
    v30(v43, v31);

    (*v39)(v31, v32);
    v36 = v45;
    (*v28)(v35, v45);
    v37 = v35;
    TupleTypeMetadata2 = v34;
  }
}

uint64_t (*forward-mode derivative of Array<A>.differentiableReduce<A>(_:_:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2)
{
  v12 = a3[1];
  v17[0] = *a3;
  v17[1] = v12;
  v17[2] = a3[2];
  Array<A>._jvpDifferentiableReduce<A>(_:_:)(a1, a2, v17, a4, a5, a6, a7, a8);
  v14 = v13;
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a8;
  v15[6] = partial apply for specialized closure #1 in Array<A>._jvpDifferentiableReduce<A>(_:_:);
  v15[7] = v14;
  return partial apply for autodiff self-reordering reabstraction thunk for @escaping @callee_guaranteed (@in_guaranteed A1.Differentiable.TangentVector, @guaranteed [A.Differentiable.TangentVector]<A>.DifferentiableView) -> (@out A1.Differentiable.TangentVector);
}

uint64_t Optional<A>.TangentVector.value.getter@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t Optional<A>.TangentVector.value.setter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t Optional<A>.TangentVector.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a3, 1, 1, AssociatedTypeWitness);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 40);

  return v7(a3, a1, v6);
}

uint64_t static Optional<A>.TangentVector.zero.getter@<X0>(uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v10 - v7;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  (*(*(AssociatedTypeWitness - 8) + 56))(v8, 0, 1, AssociatedTypeWitness);
  return Optional<A>.TangentVector.init(_:)(v8, a3);
}

uint64_t static Optional<A>.TangentVector.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a1;
  v34 = a2;
  v35 = a5;
  v36 = a3;
  v37 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v32 - v12;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v32 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8, v20);
  v23 = &v32 - v22;
  v24 = *(v21 + 56);
  v25 = *(v15 + 16);
  v25(&v32 - v22, v33, v14);
  v25(&v23[v24], v34, v14);
  v26 = *(v6 + 48);
  LODWORD(v14) = v26(v23, 1, AssociatedTypeWitness);
  v27 = v26(&v23[v24], 1, AssociatedTypeWitness);
  if (v14 != 1)
  {
    v29 = *(v6 + 32);
    if (v27 != 1)
    {
      v29(v13, v23, AssociatedTypeWitness);
      v29(v10, &v23[v24], AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
      v30 = *(v6 + 8);
      v30(v10, AssociatedTypeWitness);
      v30(v13, AssociatedTypeWitness);
      v28 = 0;
      goto LABEL_10;
    }

    v29(v18, v23, AssociatedTypeWitness);
LABEL_7:
    v28 = 0;
    goto LABEL_10;
  }

  if (v27 != 1)
  {
    (*(v6 + 32))(v18, &v23[v24], AssociatedTypeWitness);
    goto LABEL_7;
  }

  v28 = 1;
LABEL_10:
  (*(v6 + 56))(v18, v28, 1, AssociatedTypeWitness);
  return Optional<A>.TangentVector.init(_:)(v18, v35);
}

uint64_t static Optional<A>.TangentVector.- infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a1;
  v34 = a2;
  v35 = a5;
  v36 = a3;
  v37 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v32 - v12;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v32 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8, v20);
  v23 = &v32 - v22;
  v24 = *(v21 + 56);
  v25 = *(v15 + 16);
  v25(&v32 - v22, v33, v14);
  v25(&v23[v24], v34, v14);
  v26 = *(v6 + 48);
  LODWORD(v14) = v26(v23, 1, AssociatedTypeWitness);
  v27 = v26(&v23[v24], 1, AssociatedTypeWitness);
  if (v14 != 1)
  {
    v29 = *(v6 + 32);
    if (v27 == 1)
    {
      v29(v18, v23, AssociatedTypeWitness);
      v28 = 0;
      goto LABEL_10;
    }

    v29(v13, v23, AssociatedTypeWitness);
    v29(v10, &v23[v24], AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    goto LABEL_9;
  }

  if (v27 != 1)
  {
    (*(v6 + 32))(v13, &v23[v24], AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
LABEL_9:
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v30 = *(v6 + 8);
    v30(v10, AssociatedTypeWitness);
    v30(v13, AssociatedTypeWitness);
    v28 = 0;
    goto LABEL_10;
  }

  v28 = 1;
LABEL_10:
  (*(v6 + 56))(v18, v28, 1, AssociatedTypeWitness);
  return Optional<A>.TangentVector.init(_:)(v18, v35);
}

uint64_t Optional<A>.TangentVector.move(by:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = v17 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x2A1C7C4A8](v7, v11);
  v13 = v17 - v12;
  (*(v5 + 16))(v9, a1, v4);
  v14 = *(v10 + 48);
  if (v14(v9, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v5 + 8))(v9, v4);
  }

  (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
  if (!v14(v17[1], 1, AssociatedTypeWitness))
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

BOOL static Optional<A>.TangentVector.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[1] = a4;
  v28[2] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v8);
  v28[0] = v28 - v9;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v31 = v28 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v29 = *(TupleTypeMetadata2 - 8);
  v16 = MEMORY[0x2A1C7C4A8](TupleTypeMetadata2, v15);
  v18 = v28 - v17;
  v19 = *(v16 + 48);
  v30 = v11;
  v20 = *(v11 + 16);
  v20(v28 - v17, a1, v10);
  v20(&v18[v19], a2, v10);
  v21 = *(v7 + 48);
  if (v21(v18, 1, AssociatedTypeWitness) != 1)
  {
    v20(v31, v18, v10);
    if (v21(&v18[v19], 1, AssociatedTypeWitness) != 1)
    {
      v23 = &v18[v19];
      v24 = v28[0];
      (*(v7 + 32))(v28[0], v23, AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v25 = v31;
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v7 + 8);
      v27(v24, AssociatedTypeWitness);
      v27(v25, AssociatedTypeWitness);
      (*(v30 + 8))(v18, v10);
      return (v26 & 1) != 0;
    }

    (*(v7 + 8))(v31, AssociatedTypeWitness);
LABEL_6:
    (*(v29 + 8))(v18, TupleTypeMetadata2);
    return 0;
  }

  if (v21(&v18[v19], 1, AssociatedTypeWitness) != 1)
  {
    goto LABEL_6;
  }

  (*(v30 + 8))(v18, v10);
  return 1;
}

uint64_t Optional<A>.move(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v13 = &v19 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x2A1C7C4A8](v11, v15);
  v17 = &v19 - v16;
  (*(v9 + 16))(v13, a1, v8);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v9 + 8))(v13, v8);
  }

  (*(v14 + 32))(v17, v13, AssociatedTypeWitness);
  if (!(*(*(v6 - 8) + 48))(v3, 1, v6))
  {
    (*(a3 + 32))(v17, v6, a3);
  }

  return (*(v14 + 8))(v17, AssociatedTypeWitness);
}

uint64_t Optional<A>.TangentVector.customMirror.getter(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for Optional();

  return MEMORY[0x2A1C729D0](v1);
}

__int16 Float16.move(by:)@<H0>(__n128 a1@<Q0>)
{
  *&result = *v1 + *a1.n128_u16;
  *v1 = *&result;
  return result;
}

__int16 protocol witness for Differentiable.move(by:) in conformance Float16@<H0>(short float *a1@<X0>)
{
  *&result = *a1 + *v1;
  *v1 = *&result;
  return result;
}

float (*static Float16._vjpInit(x:)(float _S0))(__n128 _Q0)
{
  __asm { FCVT            H0, S0 }

  return closure #1 in static Float16._vjpInit(x:);
}

double (*static Float16._jvpInit(x:)(float _S0))(float _S0)
{
  __asm { FCVT            H0, S0 }

  return closure #1 in static Float16._jvpInit(x:);
}

double (*static Float16._vjpInit(x:)(double _D0))(__n128 _Q0)
{
  __asm { FCVT            H0, D0 }

  return closure #1 in static Float16._vjpInit(x:);
}

double (*static Float16._jvpInit(x:)(double _D0))(double _D0)
{
  __asm { FCVT            H0, D0 }

  return closure #1 in static Float16._jvpInit(x:);
}

__int16 closure #1 in static Float16._jvpAddAssign(_:_:)@<H0>(short float *a1@<X0>, __n128 a2@<Q0>)
{
  *&result = *a1 + *a2.n128_u16;
  *a1 = *&result;
  return result;
}

__int16 closure #1 in static Float16._jvpSubtractAssign(_:_:)@<H0>(short float *a1@<X0>, __n128 a2@<Q0>)
{
  *&result = *a1 - *a2.n128_u16;
  *a1 = *&result;
  return result;
}

float static Float16._vjpMultiply(lhs:rhs:)(__n128 a1, __n128 a2)
{
  v3 = a2.n128_u16[0];
  v4 = a1.n128_u16[0];
  *&v2 = *a1.n128_u16 * *a2.n128_u16;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 18) = v4;
  return v2;
}

float reverse-mode derivative of static Float16.* infix(_:_:)(__n128 a1, __n128 a2)
{
  v3 = a2.n128_u16[0];
  v4 = a1.n128_u16[0];
  *&v2 = *a1.n128_u16 * *a2.n128_u16;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 18) = v4;
  return v2;
}

float static Float16._jvpMultiply(lhs:rhs:)(__n128 a1, __n128 a2)
{
  v3 = a2.n128_u16[0];
  v4 = a1.n128_u16[0];
  *&v2 = *a1.n128_u16 * *a2.n128_u16;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 18) = v3;
  return v2;
}

float forward-mode derivative of static Float16.* infix(_:_:)(__n128 a1, __n128 a2)
{
  v3 = a2.n128_u16[0];
  v4 = a1.n128_u16[0];
  *&v2 = *a1.n128_u16 * *a2.n128_u16;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 18) = v3;
  return v2;
}

__int16 (*static Float16._vjpMultiplyAssign(_:_:)(short float *a1, __n128 a2))@<H0>(short float *a1@<X0>)
{
  v2 = *a2.n128_u16;
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 18) = v2;
  *a1 = v4 * v2;
  return partial apply for closure #1 in static Float16._vjpMultiplyAssign(_:_:);
}

double (*reverse-mode derivative of static Float16.*= infix(_:_:)(short float *a1, __n128 a2))(short float *a1)
{
  v2 = *a2.n128_u16;
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 18) = v2;
  *a1 = v4 * v2;
  return closure #1 in static Float16._vjpMultiplyAssign(_:_:)partial apply;
}

__int16 (*static Float16._jvpMultiplyAssign(_:_:)(short float *a1, __n128 a2))@<H0>(short float *a1@<X0>, __n128 a2@<Q0>)
{
  v2 = a2.n128_u16[0];
  v3 = *a1;
  *a1 = *a1 * *a2.n128_u16;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 18) = v3;
  return partial apply for closure #1 in static Float16._jvpMultiplyAssign(_:_:);
}

double (*forward-mode derivative of static Float16.*= infix(_:_:)(short float *a1, __n128 a2))(short float *a1, __n128 a2)
{
  v2 = a2.n128_u16[0];
  v3 = *a1;
  *a1 = *a1 * *a2.n128_u16;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 18) = v3;
  return closure #1 in static Float16._jvpMultiplyAssign(_:_:)partial apply;
}

float static Float16._vjpDivide(lhs:rhs:)(__n128 a1, __n128 a2)
{
  v3 = a2.n128_u16[0];
  v4 = a1.n128_u16[0];
  *&v2 = *a1.n128_u16 / *a2.n128_u16;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 18) = v4;
  return v2;
}

float reverse-mode derivative of static Float16./ infix(_:_:)(__n128 a1, __n128 a2)
{
  v3 = a2.n128_u16[0];
  v4 = a1.n128_u16[0];
  *&v2 = *a1.n128_u16 / *a2.n128_u16;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 18) = v4;
  return v2;
}

float static Float16._jvpDivide(lhs:rhs:)(__n128 a1, __n128 a2)
{
  v3 = a2.n128_u16[0];
  v4 = a1.n128_u16[0];
  *&v2 = *a1.n128_u16 / *a2.n128_u16;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 18) = v4;
  return v2;
}

float forward-mode derivative of static Float16./ infix(_:_:)(__n128 a1, __n128 a2)
{
  v3 = a2.n128_u16[0];
  v4 = a1.n128_u16[0];
  *&v2 = *a1.n128_u16 / *a2.n128_u16;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 18) = v4;
  return v2;
}

__int16 (*static Float16._vjpDivideAssign(_:_:)(short float *a1, __n128 a2))@<H0>(short float *a1@<X0>)
{
  v2 = *a2.n128_u16;
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 18) = v2;
  *a1 = v4 / v2;
  return partial apply for closure #1 in static Float16._vjpDivideAssign(_:_:);
}

double (*reverse-mode derivative of static Float16./= infix(_:_:)(short float *a1, __n128 a2))(short float *a1)
{
  v2 = *a2.n128_u16;
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 18) = v2;
  *a1 = v4 / v2;
  return closure #1 in static Float16._vjpDivideAssign(_:_:)partial apply;
}

__int16 (*static Float16._jvpDivideAssign(_:_:)(short float *a1, __n128 a2))@<H0>(short float *a1@<X0>, __n128 a2@<Q0>)
{
  v2 = a2.n128_u16[0];
  v3 = *a1;
  *a1 = *a1 / *a2.n128_u16;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 18) = v3;
  return partial apply for closure #1 in static Float16._jvpDivideAssign(_:_:);
}

double (*forward-mode derivative of static Float16./= infix(_:_:)(short float *a1, __n128 a2))(short float *a1, __n128 a2)
{
  v2 = a2.n128_u16[0];
  v3 = *a1;
  *a1 = *a1 / *a2.n128_u16;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 18) = v3;
  return closure #1 in static Float16._jvpDivideAssign(_:_:)partial apply;
}

float protocol witness for Differentiable.move(by:) in conformance Float(float *a1)
{
  result = *a1 + *v1;
  *v1 = result;
  return result;
}

double (*static Float._vjpInit(x:)(__n128 _Q0))(float _S0)
{
  __asm { FCVT            S0, H0 }

  return closure #1 in static Float16._jvpInit(x:);
}

__int16 _ss7Float16V16_DifferentiationE8_jvpInit1xAB5value_ABSfc12differentialtSf_tFZABSfcfU__0@<H0>(float _S0@<S0>)
{
  __asm { FCVT            H0, S0 }

  return result;
}

float (*static Float._jvpInit(x:)(__n128 _Q0))(__n128 _Q0)
{
  __asm { FCVT            S0, H0 }

  return closure #1 in static Float16._vjpInit(x:);
}

float _ss7Float16V16_DifferentiationE8_vjpInit1xAB5value_SfABc8pullbacktSf_tFZSfABcfU__0(__n128 _Q0)
{
  __asm { FCVT            S0, H0 }

  return result;
}

float closure #1 in static Float._jvpAddAssign(_:_:)(float *a1, float a2)
{
  result = *a1 + a2;
  *a1 = result;
  return result;
}

float closure #1 in static Float._jvpSubtractAssign(_:_:)(float *a1, float a2)
{
  result = *a1 - a2;
  *a1 = result;
  return result;
}

float static Float._vjpMultiply(lhs:rhs:)(float a1, float a2)
{
  v4 = a1 * a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 20) = a1;
  return v4;
}

float reverse-mode derivative of static Float.* infix(_:_:)(float a1, float a2)
{
  v4 = a1 * a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 20) = a1;
  return v4;
}

float static Float._jvpMultiply(lhs:rhs:)(float a1, float a2)
{
  v4 = a1 * a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 20) = a2;
  return v4;
}

float forward-mode derivative of static Float.* infix(_:_:)(float a1, float a2)
{
  v4 = a1 * a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 20) = a2;
  return v4;
}

float (*static Float._vjpMultiplyAssign(_:_:)(float *a1, float a2))(float *a1)
{
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 20) = a2;
  *a1 = v4 * a2;
  return partial apply for closure #1 in static Float._vjpMultiplyAssign(_:_:);
}

float (*reverse-mode derivative of static Float.*= infix(_:_:)(float *a1, float a2))(float *a1)
{
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 20) = a2;
  *a1 = v4 * a2;
  return closure #1 in static Float._vjpMultiplyAssign(_:_:)partial apply;
}

float (*static Float._jvpMultiplyAssign(_:_:)(float *a1, float a2))(float *a1, float a2)
{
  v3 = *a1;
  *a1 = *a1 * a2;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 20) = v3;
  return partial apply for closure #1 in static Float._jvpMultiplyAssign(_:_:);
}

float (*forward-mode derivative of static Float.*= infix(_:_:)(float *a1, float a2))(float *a1, float a2)
{
  v3 = *a1;
  *a1 = *a1 * a2;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 20) = v3;
  return closure #1 in static Float._jvpMultiplyAssign(_:_:)partial apply;
}

float static Float._vjpDivide(lhs:rhs:)(float a1, float a2)
{
  v4 = a1 / a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 20) = a1;
  return v4;
}

float reverse-mode derivative of static Float./ infix(_:_:)(float a1, float a2)
{
  v4 = a1 / a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 20) = a1;
  return v4;
}

float static Float._jvpDivide(lhs:rhs:)(float a1, float a2)
{
  v4 = a1 / a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 20) = a1;
  return v4;
}

float forward-mode derivative of static Float./ infix(_:_:)(float a1, float a2)
{
  v4 = a1 / a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 20) = a1;
  return v4;
}

float (*static Float._vjpDivideAssign(_:_:)(float *a1, float a2))(float *a1)
{
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 20) = a2;
  *a1 = v4 / a2;
  return partial apply for closure #1 in static Float._vjpDivideAssign(_:_:);
}

float (*reverse-mode derivative of static Float./= infix(_:_:)(float *a1, float a2))(float *a1)
{
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 20) = a2;
  *a1 = v4 / a2;
  return closure #1 in static Float._vjpDivideAssign(_:_:)partial apply;
}

float (*static Float._jvpDivideAssign(_:_:)(float *a1, float a2))(float *a1, float a2)
{
  v3 = *a1;
  *a1 = *a1 / a2;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 20) = v3;
  return partial apply for closure #1 in static Float._jvpDivideAssign(_:_:);
}

float (*forward-mode derivative of static Float./= infix(_:_:)(float *a1, float a2))(float *a1, float a2)
{
  v3 = *a1;
  *a1 = *a1 / a2;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 20) = v3;
  return closure #1 in static Float._jvpDivideAssign(_:_:)partial apply;
}

double protocol witness for Differentiable.move(by:) in conformance Double(double *a1)
{
  result = *a1 + *v1;
  *v1 = result;
  return result;
}

double (*static Double._vjpInit(x:)(__n128 _Q0))(double _D0)
{
  __asm { FCVT            D0, H0 }

  return closure #1 in static Float16._jvpInit(x:);
}

__int16 _ss7Float16V16_DifferentiationE8_jvpInit1xAB5value_ABSdc12differentialtSd_tFZABSdcfU__0@<H0>(double _D0@<D0>)
{
  __asm { FCVT            H0, D0 }

  return result;
}

double (*static Double._jvpInit(x:)(__n128 _Q0))(__n128 _Q0)
{
  __asm { FCVT            D0, H0 }

  return closure #1 in static Float16._vjpInit(x:);
}

double _ss7Float16V16_DifferentiationE8_vjpInit1xAB5value_SdABc8pullbacktSd_tFZSdABcfU__0(__n128 _Q0)
{
  __asm { FCVT            D0, H0 }

  return result;
}

double closure #1 in static Double._jvpAddAssign(_:_:)(double *a1, double a2)
{
  result = *a1 + a2;
  *a1 = result;
  return result;
}

double closure #1 in static Double._jvpSubtractAssign(_:_:)(double *a1, double a2)
{
  result = *a1 - a2;
  *a1 = result;
  return result;
}

double static Double._vjpMultiply(lhs:rhs:)(double a1, double a2)
{
  v4 = a1 * a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  return v4;
}

double reverse-mode derivative of static Double.* infix(_:_:)(double a1, double a2)
{
  v4 = a1 * a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  return v4;
}

double static Double._jvpMultiply(lhs:rhs:)(double a1, double a2)
{
  v4 = a1 * a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return v4;
}

double forward-mode derivative of static Double.* infix(_:_:)(double a1, double a2)
{
  v4 = a1 * a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return v4;
}

double (*static Double._vjpMultiplyAssign(_:_:)(double *a1, double a2))(double *a1)
{
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a2;
  *a1 = v4 * a2;
  return partial apply for closure #1 in static Double._vjpMultiplyAssign(_:_:);
}

double (*reverse-mode derivative of static Double.*= infix(_:_:)(double *a1, double a2))(double *a1)
{
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a2;
  *a1 = v4 * a2;
  return closure #1 in static Double._vjpMultiplyAssign(_:_:)partial apply;
}

double (*static Double._jvpMultiplyAssign(_:_:)(double *a1, double a2))(double *a1, double a2)
{
  v3 = *a1;
  *a1 = *a1 * a2;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  return partial apply for closure #1 in static Double._jvpMultiplyAssign(_:_:);
}

double (*forward-mode derivative of static Double.*= infix(_:_:)(double *a1, double a2))(double *a1, double a2)
{
  v3 = *a1;
  *a1 = *a1 * a2;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  return closure #1 in static Double._jvpMultiplyAssign(_:_:)partial apply;
}

double static Double._vjpDivide(lhs:rhs:)(double a1, double a2)
{
  v4 = a1 / a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  return v4;
}

double reverse-mode derivative of static Double./ infix(_:_:)(double a1, double a2)
{
  v4 = a1 / a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  return v4;
}

double static Double._jvpDivide(lhs:rhs:)(double a1, double a2)
{
  v4 = a1 / a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  return v4;
}

double forward-mode derivative of static Double./ infix(_:_:)(double a1, double a2)
{
  v4 = a1 / a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  return v4;
}

double (*static Double._vjpDivideAssign(_:_:)(double *a1, double a2))(double *a1)
{
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a2;
  *a1 = v4 / a2;
  return partial apply for closure #1 in static Double._vjpDivideAssign(_:_:);
}

double (*reverse-mode derivative of static Double./= infix(_:_:)(double *a1, double a2))(double *a1)
{
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a2;
  *a1 = v4 / a2;
  return closure #1 in static Double._vjpDivideAssign(_:_:)partial apply;
}

double (*static Double._jvpDivideAssign(_:_:)(double *a1, double a2))(double *a1, double a2)
{
  v3 = *a1;
  *a1 = *a1 / a2;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  return partial apply for closure #1 in static Double._jvpDivideAssign(_:_:);
}

double (*forward-mode derivative of static Double./= infix(_:_:)(double *a1, double a2))(double *a1, double a2)
{
  v3 = *a1;
  *a1 = *a1 / a2;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  return closure #1 in static Double._jvpDivideAssign(_:_:)partial apply;
}

uint64_t (*FloatingPoint<>._vjpAddingProduct(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a6;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x2A1C7C4A8](a1, a2);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v24 - v15;
  dispatch thunk of FloatingPoint.addingProduct(_:_:)();
  v17 = *(v10 + 16);
  v17(v16, a3, a4);
  v17(v13, a2, a4);
  v18 = *(v10 + 80);
  v19 = (v18 + 40) & ~v18;
  v20 = (v11 + v18 + v19) & ~v18;
  v21 = swift_allocObject();
  *(v21 + 2) = a4;
  *(v21 + 3) = a5;
  *(v21 + 4) = v25;
  v22 = *(v10 + 32);
  v22(&v21[v19], v16, a4);
  v22(&v21[v20], v13, a4);
  return partial apply for closure #1 in FloatingPoint<>._vjpAddingProduct(_:_:);
}

uint64_t closure #1 in FloatingPoint<>._vjpAddingProduct(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(*(a7 - 8) + 16))(a1, a4, a7);
  dispatch thunk of static Numeric.* infix(_:_:)();
  return dispatch thunk of static Numeric.* infix(_:_:)();
}

uint64_t (*reverse-mode derivative of FloatingPoint.addingProduct(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FloatingPoint<>._vjpAddingProduct(_:_:)(a1, a2, a3, a4, a5, a6);
  v10 = v9;
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = partial apply for closure #1 in FloatingPoint<>._vjpAddingProduct(_:_:);
  v11[6] = v10;
  return partial apply for autodiff self-reordering reabstraction thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out A, @out A, @out A);
}

uint64_t (*FloatingPoint<>._vjpSquareRoot()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x2A1C7C4A8](a1, a2);
  v11 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v19 - v13;
  dispatch thunk of FloatingPoint.squareRoot()();
  (*(v8 + 16))(a1, v14, a2);
  v15 = *(v8 + 32);
  v15(v11, v14, a2);
  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  v15(&v17[v16], v11, a2);
  return partial apply for closure #1 in FloatingPoint<>._vjpSquareRoot();
}

uint64_t (*static FloatingPoint<>._vjpMinimum(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dispatch thunk of static Comparable.<= infix(_:_:)() & 1) != 0 || (dispatch thunk of FloatingPoint.isNaN.getter())
  {
    v12 = partial apply for closure #1 in static FloatingPoint<>._vjpMinimum(_:_:);
  }

  else
  {
    v12 = partial apply for closure #2 in static FloatingPoint<>._vjpMinimum(_:_:);
    a2 = a3;
  }

  (*(*(a4 - 8) + 16))(a1, a2, a4);
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  return v12;
}

uint64_t (*static FloatingPoint<>._vjpMaximum(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dispatch thunk of static Comparable.> infix(_:_:)() & 1) != 0 || (dispatch thunk of FloatingPoint.isNaN.getter())
  {
    v12 = partial apply for closure #1 in static FloatingPoint<>._vjpMaximum(_:_:);
  }

  else
  {
    v12 = partial apply for closure #2 in static FloatingPoint<>._vjpMaximum(_:_:);
    a2 = a3;
  }

  (*(*(a4 - 8) + 16))(a1, a2, a4);
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  return v12;
}

uint64_t closure #1 in static FloatingPoint<>._vjpMinimum(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(*(a4 - 8) + 16))(a1, a3, a4);
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static AdditiveArithmetic.zero.getter();
}

uint64_t closure #2 in static FloatingPoint<>._vjpMinimum(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v9 = *(*(a4 - 8) + 16);

  return v9(a2, a3, a4);
}

uint64_t (*_jvpFma<A>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a7;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](a1, a2);
  v14 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v25 - v16;
  dispatch thunk of FloatingPoint.addingProduct(_:_:)();
  v18 = *(v11 + 16);
  v18(v17, a3, a5);
  v18(v14, a2, a5);
  v19 = *(v11 + 80);
  v20 = (v19 + 40) & ~v19;
  v21 = (v12 + v19 + v20) & ~v19;
  v22 = swift_allocObject();
  *(v22 + 2) = a5;
  *(v22 + 3) = a6;
  *(v22 + 4) = v26;
  v23 = *(v11 + 32);
  v23(&v22[v20], v17, a5);
  v23(&v22[v21], v14, a5);
  return partial apply for closure #1 in _jvpFma<A>(_:_:_:);
}

uint64_t closure #1 in _jvpFma<A>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[1] = a3;
  v9 = *(a6 - 8);
  v10 = MEMORY[0x2A1C7C4A8](a1, a2);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v16 = v22 - v15;
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = v22 - v18;
  dispatch thunk of static Numeric.* infix(_:_:)();
  dispatch thunk of static Numeric.* infix(_:_:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v20 = *(v9 + 8);
  v20(v12, a6);
  v20(v16, a6);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  return (v20)(v19, a6);
}

uint64_t (*_vjpFma<A>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a7;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](a1, a2);
  v14 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v25 - v16;
  dispatch thunk of FloatingPoint.addingProduct(_:_:)();
  v18 = *(v11 + 16);
  v18(v17, a3, a5);
  v18(v14, a2, a5);
  v19 = *(v11 + 80);
  v20 = (v19 + 40) & ~v19;
  v21 = (v12 + v19 + v20) & ~v19;
  v22 = swift_allocObject();
  *(v22 + 2) = a5;
  *(v22 + 3) = a6;
  *(v22 + 4) = v26;
  v23 = *(v11 + 32);
  v23(&v22[v20], v17, a5);
  v23(&v22[v21], v14, a5);
  return partial apply for closure #1 in _vjpFma<A>(_:_:_:);
}

uint64_t closure #1 in _vjpFma<A>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  dispatch thunk of static Numeric.* infix(_:_:)();
  dispatch thunk of static Numeric.* infix(_:_:)();
  v11 = *(*(a7 - 8) + 16);

  return v11(a3, a4, a7);
}

uint64_t (*_vjpRemainder<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a6;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x2A1C7C4A8](a1, a2);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v24 - v15;
  dispatch thunk of FloatingPoint.remainder(dividingBy:)();
  v17 = *(v10 + 16);
  v17(v16, a2, a4);
  v17(v13, a3, a4);
  v18 = *(v10 + 80);
  v19 = (v18 + 40) & ~v18;
  v20 = (v11 + v18 + v19) & ~v18;
  v21 = swift_allocObject();
  *(v21 + 2) = a4;
  *(v21 + 3) = a5;
  *(v21 + 4) = v25;
  v22 = *(v10 + 32);
  v22(&v21[v19], v16, a4);
  v22(&v21[v20], v13, a4);
  return partial apply for closure #1 in _vjpRemainder<A>(_:_:);
}

uint64_t (*_vjpFmod<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a6;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x2A1C7C4A8](a1, a2);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v24 - v15;
  dispatch thunk of FloatingPoint.truncatingRemainder(dividingBy:)();
  v17 = *(v10 + 16);
  v17(v16, a2, a4);
  v17(v13, a3, a4);
  v18 = *(v10 + 80);
  v19 = (v18 + 40) & ~v18;
  v20 = (v11 + v18 + v19) & ~v18;
  v21 = swift_allocObject();
  *(v21 + 2) = a4;
  *(v21 + 3) = a5;
  *(v21 + 4) = v25;
  v22 = *(v10 + 32);
  v22(&v21[v19], v16, a4);
  v22(&v21[v20], v13, a4);
  return partial apply for closure #1 in _vjpFmod<A>(_:_:);
}

uint64_t closure #1 in _vjpRemainder<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9)
{
  v33[1] = a4;
  v37 = a2;
  v35 = a5;
  v36 = a9;
  v34 = type metadata accessor for FloatingPointRoundingRule();
  v13 = *(v34 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v34, v14);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a6 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v15, v19);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v20, v23);
  v26 = v33 - v25;
  MEMORY[0x2A1C7C4A8](v24, v27);
  v29 = v33 - v28;
  (*(v18 + 16))(a1, a3, a6);
  v33[0] = *(a7 + 16);
  dispatch thunk of static SignedNumeric.- prefix(_:)();
  dispatch thunk of static FloatingPoint./ infix(_:_:)();
  v30 = v34;
  (*(v13 + 104))(v17, *v36, v34);
  dispatch thunk of FloatingPoint.rounded(_:)();
  (*(v13 + 8))(v17, v30);
  v31 = *(v18 + 8);
  v31(v22, a6);
  dispatch thunk of static Numeric.* infix(_:_:)();
  v31(v26, a6);
  return (v31)(v29, a6);
}

uint64_t (*_jvpSqrt<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](a1, a2);
  v12 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v20 - v14;
  dispatch thunk of FloatingPoint.squareRoot()();
  (*(v9 + 16))(a1, v15, a3);
  v16 = *(v9 + 32);
  v16(v12, v15, a3);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a3;
  *(v18 + 3) = a4;
  *(v18 + 4) = a5;
  v16(&v18[v17], v12, a3);
  return partial apply for closure #1 in _jvpSqrt<A>(_:);
}

uint64_t (*_jvpCeil<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC9EC0], v8);
  dispatch thunk of FloatingPoint.rounded(_:)();
  (*(v9 + 8))(v12, v8);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  return partial apply for closure #1 in _jvpCeil<A>(_:);
}

uint64_t (*_jvpFloor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC9EC8], v8);
  dispatch thunk of FloatingPoint.rounded(_:)();
  (*(v9 + 8))(v12, v8);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  return partial apply for closure #1 in _jvpFloor<A>(_:);
}

uint64_t (*_jvpRound<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC9EB8], v8);
  dispatch thunk of FloatingPoint.rounded(_:)();
  (*(v9 + 8))(v12, v8);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  return partial apply for closure #1 in _jvpFloor<A>(_:);
}

uint64_t (*_jvpTrunc<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC9EA0], v8);
  dispatch thunk of FloatingPoint.rounded(_:)();
  (*(v9 + 8))(v12, v8);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  return partial apply for closure #1 in _jvpFloor<A>(_:);
}

uint64_t (*_vjpSqrt<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](a1, a2);
  v12 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v20 - v14;
  dispatch thunk of FloatingPoint.squareRoot()();
  (*(v9 + 16))(a1, v15, a3);
  v16 = *(v9 + 32);
  v16(v12, v15, a3);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a3;
  *(v18 + 3) = a4;
  *(v18 + 4) = a5;
  v16(&v18[v17], v12, a3);
  return partial apply for closure #1 in FloatingPoint<>._vjpSquareRoot();
}

uint64_t closure #1 in FloatingPoint<>._vjpSquareRoot()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v19[1] = a2;
  v19[2] = a5;
  v19[3] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v7);
  v9 = *(a3 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v19 - v15;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of static Numeric.* infix(_:_:)();
  v17 = *(v9 + 8);
  v17(v13, a3);
  dispatch thunk of static FloatingPoint./ infix(_:_:)();
  return (v17)(v16, a3);
}

uint64_t (*_vjpCeil<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC9EC0], v8);
  dispatch thunk of FloatingPoint.rounded(_:)();
  (*(v9 + 8))(v12, v8);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  return partial apply for closure #1 in _jvpFloor<A>(_:);
}

uint64_t (*_vjpFloor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC9EC8], v8);
  dispatch thunk of FloatingPoint.rounded(_:)();
  (*(v9 + 8))(v12, v8);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  return partial apply for closure #1 in _jvpFloor<A>(_:);
}

uint64_t (*_vjpRound<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC9EB8], v8);
  dispatch thunk of FloatingPoint.rounded(_:)();
  (*(v9 + 8))(v12, v8);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  return partial apply for closure #1 in _jvpFloor<A>(_:);
}

uint64_t (*_vjpTrunc<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC9EA0], v8);
  dispatch thunk of FloatingPoint.rounded(_:)();
  (*(v9 + 8))(v12, v8);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  return partial apply for closure #1 in _jvpFloor<A>(_:);
}

uint64_t closure #1 in _jvpCeil<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v4);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
}

double _jvpFma(_:_:_:)(long double a1, long double a2, long double a3)
{
  v5 = fma(a1, a2, a3);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  return v5;
}

double fmaTJfSSSpSr(long double a1, long double a2, long double a3)
{
  v5 = fma(a1, a2, a3);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  return v5;
}

double _vjpFma(_:_:_:)(long double a1, long double a2, long double a3)
{
  v5 = fma(a1, a2, a3);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  return v5;
}

double fmaTJrSSSpSr(long double a1, long double a2, long double a3)
{
  v5 = fma(a1, a2, a3);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  return v5;
}

double _vjpRemainder(_:_:)(long double a1, long double a2)
{
  v4 = remainder(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return v4;
}

double remainderTJrSSpSr(long double a1, long double a2)
{
  v4 = remainder(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return v4;
}

double _vjpFmod(_:_:)(long double a1, long double a2)
{
  v4 = fmod(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return v4;
}

double fmodTJrSSpSr(long double a1, long double a2)
{
  v4 = fmod(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return v4;
}

double _jvpSqrt(_:)(long double a1)
{
  v1 = sqrt(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double sqrtTJfSpSr(long double a1)
{
  v1 = sqrt(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double _vjpSqrt(_:)(long double a1)
{
  v1 = sqrt(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double sqrtTJrSpSr(long double a1)
{
  v1 = sqrt(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float _jvpExp(_:)(float a1)
{
  v1 = expf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float forward-mode derivative of exp(_:)(float a1)
{
  v1 = expf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float _jvpExp2(_:)(float a1)
{
  v1 = exp2f(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float forward-mode derivative of exp2(_:)(float a1)
{
  v1 = exp2f(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float _jvpLog(_:)(float a1)
{
  v2 = logf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of log(_:)(float a1)
{
  v2 = logf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpLog10(_:)(float a1)
{
  v2 = log10f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of log10(_:)(float a1)
{
  v2 = log10f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpLog2(_:)(float a1)
{
  v2 = log2f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of log2(_:)(float a1)
{
  v2 = log2f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpSin(_:)(float a1)
{
  v2 = sinf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of sin(_:)(float a1)
{
  v2 = sinf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpCos(_:)(float a1)
{
  v2 = cosf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of cos(_:)(float a1)
{
  v2 = cosf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpTan(_:)(float a1)
{
  v1 = tanf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float forward-mode derivative of tan(_:)(float a1)
{
  v1 = tanf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float _jvpAsin(_:)(float a1)
{
  v2 = asinf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of asin(_:)(float a1)
{
  v2 = asinf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpAcos(_:)(float a1)
{
  v2 = acosf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of acos(_:)(float a1)
{
  v2 = acosf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpAtan(_:)(float a1)
{
  v2 = atanf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of atan(_:)(float a1)
{
  v2 = atanf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpSinh(_:)(float a1)
{
  v2 = sinhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of sinh(_:)(float a1)
{
  v2 = sinhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpCosh(_:)(float a1)
{
  v2 = coshf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of cosh(_:)(float a1)
{
  v2 = coshf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpTanh(_:)(float a1)
{
  v1 = tanhf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float forward-mode derivative of tanh(_:)(float a1)
{
  v1 = tanhf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float _jvpAsinh(_:)(float a1)
{
  v2 = asinhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of asinh(_:)(float a1)
{
  v2 = asinhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpAcosh(_:)(float a1)
{
  v2 = acoshf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of acosh(_:)(float a1)
{
  v2 = acoshf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpAtanh(_:)(float a1)
{
  v2 = atanhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of atanh(_:)(float a1)
{
  v2 = atanhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpExpm1(_:)(float a1)
{
  v2 = expm1f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of expm1(_:)(float a1)
{
  v2 = expm1f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpLog1p(_:)(float a1)
{
  v2 = log1pf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of log1p(_:)(float a1)
{
  v2 = log1pf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpErf(_:)(float a1)
{
  v2 = erff(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of erf(_:)(float a1)
{
  v2 = erff(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpErfc(_:)(float a1)
{
  v2 = erfcf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of erfc(_:)(float a1)
{
  v2 = erfcf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpExp(_:)(long double a1)
{
  v1 = exp(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double forward-mode derivative of exp(_:)(long double a1)
{
  v1 = exp(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double _jvpExp2(_:)(long double a1)
{
  v1 = exp2(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double forward-mode derivative of exp2(_:)(long double a1)
{
  v1 = exp2(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double _jvpLog(_:)(long double a1)
{
  v2 = log(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double forward-mode derivative of log(_:)(long double a1)
{
  v2 = log(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpLog10(_:)(long double a1)
{
  v2 = log10(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double forward-mode derivative of log10(_:)(long double a1)
{
  v2 = log10(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpLog2(_:)(long double a1)
{
  v2 = log2(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double forward-mode derivative of log2(_:)(long double a1)
{
  v2 = log2(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpSin(_:)(long double a1)
{
  v2 = sin(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double forward-mode derivative of sin(_:)(long double a1)
{
  v2 = sin(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpCos(_:)(long double a1)
{
  v2 = cos(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double forward-mode derivative of cos(_:)(long double a1)
{
  v2 = cos(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpTan(_:)(long double a1)
{
  v1 = tan(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double tanTJfSpSr(long double a1)
{
  v1 = tan(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double _jvpAsin(_:)(long double a1)
{
  v2 = asin(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double asinTJfSpSr(long double a1)
{
  v2 = asin(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpAcos(_:)(long double a1)
{
  v2 = acos(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double acosTJfSpSr(long double a1)
{
  v2 = acos(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpAtan(_:)(long double a1)
{
  v2 = atan(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double atanTJfSpSr(long double a1)
{
  v2 = atan(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpSinh(_:)(long double a1)
{
  v2 = sinh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double sinhTJfSpSr(long double a1)
{
  v2 = sinh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpCosh(_:)(long double a1)
{
  v2 = cosh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double coshTJfSpSr(long double a1)
{
  v2 = cosh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpTanh(_:)(long double a1)
{
  v1 = tanh(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double tanhTJfSpSr(long double a1)
{
  v1 = tanh(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double _jvpAsinh(_:)(long double a1)
{
  v2 = asinh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double asinhTJfSpSr(long double a1)
{
  v2 = asinh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpAcosh(_:)(long double a1)
{
  v2 = acosh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double acoshTJfSpSr(long double a1)
{
  v2 = acosh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpAtanh(_:)(long double a1)
{
  v2 = atanh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double atanhTJfSpSr(long double a1)
{
  v2 = atanh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpExpm1(_:)(long double a1)
{
  v2 = expm1(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double expm1TJfSpSr(long double a1)
{
  v2 = expm1(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpLog1p(_:)(long double a1)
{
  v2 = log1p(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double log1pTJfSpSr(long double a1)
{
  v2 = log1p(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpErf(_:)(long double a1)
{
  v2 = erf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double erfTJfSpSr(long double a1)
{
  v2 = erf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpErfc(_:)(long double a1)
{
  v2 = erfc(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double erfcTJfSpSr(long double a1)
{
  v2 = erfc(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpExp(_:)(float a1)
{
  v1 = expf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float reverse-mode derivative of exp(_:)(float a1)
{
  v1 = expf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float _vjpExp2(_:)(float a1)
{
  v1 = exp2f(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float reverse-mode derivative of exp2(_:)(float a1)
{
  v1 = exp2f(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float _vjpLog(_:)(float a1)
{
  v2 = logf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of log(_:)(float a1)
{
  v2 = logf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpLog10(_:)(float a1)
{
  v2 = log10f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of log10(_:)(float a1)
{
  v2 = log10f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpLog2(_:)(float a1)
{
  v2 = log2f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of log2(_:)(float a1)
{
  v2 = log2f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpSin(_:)(float a1)
{
  v2 = sinf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of sin(_:)(float a1)
{
  v2 = sinf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpCos(_:)(float a1)
{
  v2 = cosf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of cos(_:)(float a1)
{
  v2 = cosf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpTan(_:)(float a1)
{
  v1 = tanf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float reverse-mode derivative of tan(_:)(float a1)
{
  v1 = tanf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float _vjpAsin(_:)(float a1)
{
  v2 = asinf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of asin(_:)(float a1)
{
  v2 = asinf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpAcos(_:)(float a1)
{
  v2 = acosf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of acos(_:)(float a1)
{
  v2 = acosf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpAtan(_:)(float a1)
{
  v2 = atanf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of atan(_:)(float a1)
{
  v2 = atanf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpSinh(_:)(float a1)
{
  v2 = sinhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of sinh(_:)(float a1)
{
  v2 = sinhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpCosh(_:)(float a1)
{
  v2 = coshf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of cosh(_:)(float a1)
{
  v2 = coshf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpTanh(_:)(float a1)
{
  v1 = tanhf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float reverse-mode derivative of tanh(_:)(float a1)
{
  v1 = tanhf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float _vjpAsinh(_:)(float a1)
{
  v2 = asinhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of asinh(_:)(float a1)
{
  v2 = asinhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpAcosh(_:)(float a1)
{
  v2 = acoshf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of acosh(_:)(float a1)
{
  v2 = acoshf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpAtanh(_:)(float a1)
{
  v2 = atanhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of atanh(_:)(float a1)
{
  v2 = atanhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpExpm1(_:)(float a1)
{
  v2 = expm1f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of expm1(_:)(float a1)
{
  v2 = expm1f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpLog1p(_:)(float a1)
{
  v2 = log1pf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of log1p(_:)(float a1)
{
  v2 = log1pf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpErf(_:)(float a1)
{
  v2 = erff(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of erf(_:)(float a1)
{
  v2 = erff(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpErfc(_:)(float a1)
{
  v2 = erfcf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of erfc(_:)(float a1)
{
  v2 = erfcf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpExp(_:)(long double a1)
{
  v1 = exp(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double reverse-mode derivative of exp(_:)(long double a1)
{
  v1 = exp(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double _vjpExp2(_:)(long double a1)
{
  v1 = exp2(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double reverse-mode derivative of exp2(_:)(long double a1)
{
  v1 = exp2(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double _vjpLog(_:)(long double a1)
{
  v2 = log(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double reverse-mode derivative of log(_:)(long double a1)
{
  v2 = log(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpLog10(_:)(long double a1)
{
  v2 = log10(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double reverse-mode derivative of log10(_:)(long double a1)
{
  v2 = log10(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpLog2(_:)(long double a1)
{
  v2 = log2(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double reverse-mode derivative of log2(_:)(long double a1)
{
  v2 = log2(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpSin(_:)(long double a1)
{
  v2 = sin(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double reverse-mode derivative of sin(_:)(long double a1)
{
  v2 = sin(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpCos(_:)(long double a1)
{
  v2 = cos(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double reverse-mode derivative of cos(_:)(long double a1)
{
  v2 = cos(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpTan(_:)(long double a1)
{
  v1 = tan(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double tanTJrSpSr(long double a1)
{
  v1 = tan(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double _vjpAsin(_:)(long double a1)
{
  v2 = asin(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double asinTJrSpSr(long double a1)
{
  v2 = asin(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpAcos(_:)(long double a1)
{
  v2 = acos(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double acosTJrSpSr(long double a1)
{
  v2 = acos(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpAtan(_:)(long double a1)
{
  v2 = atan(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double atanTJrSpSr(long double a1)
{
  v2 = atan(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpSinh(_:)(long double a1)
{
  v2 = sinh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double sinhTJrSpSr(long double a1)
{
  v2 = sinh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpCosh(_:)(long double a1)
{
  v2 = cosh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double coshTJrSpSr(long double a1)
{
  v2 = cosh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpTanh(_:)(long double a1)
{
  v1 = tanh(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double tanhTJrSpSr(long double a1)
{
  v1 = tanh(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double _vjpAsinh(_:)(long double a1)
{
  v2 = asinh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double asinhTJrSpSr(long double a1)
{
  v2 = asinh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpAcosh(_:)(long double a1)
{
  v2 = acosh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double acoshTJrSpSr(long double a1)
{
  v2 = acosh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpAtanh(_:)(long double a1)
{
  v2 = atanh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double atanhTJrSpSr(long double a1)
{
  v2 = atanh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpExpm1(_:)(long double a1)
{
  v2 = expm1(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double expm1TJrSpSr(long double a1)
{
  v2 = expm1(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpLog1p(_:)(long double a1)
{
  v2 = log1p(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double log1pTJrSpSr(long double a1)
{
  v2 = log1p(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpErf(_:)(long double a1)
{
  v2 = erf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double erfTJrSpSr(long double a1)
{
  v2 = erf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpErfc(_:)(long double a1)
{
  v2 = erfc(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double erfcTJrSpSr(long double a1)
{
  v2 = erfc(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpPow(_:_:)(float a1, float a2)
{
  v4 = powf(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 20) = a1;
  *(v5 + 24) = v4;
  return v4;
}

float reverse-mode derivative of pow(_:_:)(float a1, float a2)
{
  v4 = powf(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 20) = a1;
  *(v5 + 24) = v4;
  return v4;
}

float _jvpPow(_:_:)(float a1, float a2)
{
  v4 = powf(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 20) = a1;
  *(v5 + 24) = v4;
  return v4;
}

float forward-mode derivative of pow(_:_:)(float a1, float a2)
{
  v4 = powf(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 20) = a1;
  *(v5 + 24) = v4;
  return v4;
}

double _vjpPow(_:_:)(long double a1, long double a2)
{
  v4 = pow(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = v4;
  return v4;
}

double powTJrSSpSr(long double a1, long double a2)
{
  v4 = pow(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = v4;
  return v4;
}

double _jvpPow(_:_:)(long double a1, long double a2)
{
  v4 = pow(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = v4;
  return v4;
}

double powTJfSSpSr(long double a1, long double a2)
{
  v4 = pow(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = v4;
  return v4;
}

uint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance <> SIMD2<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E50]);
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance <> SIMD2<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t, uint64_t))
{
  v16[1] = a2;
  v17 = *(a4 - 8);
  v18 = a5;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x2A1C7C4A8](a1, a2);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = v16 - v11;
  MEMORY[0x2A1C7C4A8](v10, v13);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  v14 = v18;
  v17 = *(*(*(v17 + 16) + 8) + 8);
  (v18)(v12, v8, v5);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  v14(v12, v8, v5, v17);
  return dispatch thunk of SIMDStorage.subscript.setter();
}

uint64_t protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance <> SIMD2<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E58]);
}

uint64_t static SIMD<>.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t, uint64_t))
{
  v12 = *(a3 - 8);
  MEMORY[0x2A1C7C4A8](a1, a2);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 32))(v14, a1);
  a7(v14, a2, a3, a4);
  return (*(v12 + 8))(v14, a3);
}

uint64_t (*SIMD2<>._vjpSubscript(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 2)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 40, 0);
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD2<>._vjpSubscript(_:);
  }

  return result;
}

uint64_t closure #1 in SIMD2<>._vjpSubscript(_:)(const void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1, a2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  if (a2 < 2)
  {
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 44, 0);
  __break(1u);
  return result;
}

uint64_t (*reverse-mode derivative of SIMD2.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD2<>._vjpSubscript(_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD2<>._vjpSubscript(_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD2<>._jvpSubscript(index:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 2)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 40, 0);
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD2<>._jvpSubscript(index:);
  }

  return result;
}

uint64_t closure #1 in SIMD2<>._jvpSubscript(index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  if (v5 >= 2)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 40, 0);
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    return dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  }

  return result;
}

uint64_t (*forward-mode derivative of SIMD2.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD2<>._jvpSubscript(index:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD2<>._jvpSubscript(index:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed SIMD2<A>) -> (@out A);
}

uint64_t (*SIMD2<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v9 = *(a3 + 16);
  MEMORY[0x2A1C7C4A8](a1, a1);
  memcpy(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v10);
  if (a2 >= 2)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 44, 0);
    __break(1u);
  }

  else
  {
    v12 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.setter();
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = a4;
    v13[4] = v12;
    v13[5] = a5;
    v13[6] = a2;
    return partial apply for closure #1 in SIMD2<>._vjpSubscriptSetter(_:_:);
  }

  return result;
}

uint64_t closure #1 in SIMD2<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v7);
  if (a2 >= 2)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 40, 0);
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t (*reverse-mode derivative of SIMD2.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD2<>._vjpSubscriptSetter(_:_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD2<>._vjpSubscriptSetter(_:_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed SIMD2<A>) -> (@out A);
}

uint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance <> SIMD4<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E50]);
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance <> SIMD4<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, char *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v22 = a2;
  v23 = a5;
  v21 = a6;
  v20 = *(a4 - 8);
  v7 = *(a3 + 16);
  v8 = MEMORY[0x2A1C7C4A8](a1, a2);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v8, v11);
  v14 = v19 - v13;
  MEMORY[0x2A1C7C4A8](v12, v15);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  v19[1] = a1;
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  v20 = *(*(*(v20 + 16) + 8) + 8);
  v16 = v20;
  v17 = v23;
  v23(v14, v10, v7, v20);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  v17(v14, v10, v7, v16);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  v23(v14, v10, v7, v20);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  v23(v14, v10, v7, v20);
  return dispatch thunk of SIMDStorage.subscript.setter();
}

uint64_t protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance <> SIMD4<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E58]);
}

uint64_t (*SIMD4<>._vjpSubscript(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 197, 0);
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD4<>._vjpSubscript(_:);
  }

  return result;
}

uint64_t closure #1 in SIMD4<>._vjpSubscript(_:)(const void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1, a2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  if (a2 < 4)
  {
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 201, 0);
  __break(1u);
  return result;
}

uint64_t (*reverse-mode derivative of SIMD4.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD4<>._vjpSubscript(_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD4<>._vjpSubscript(_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD4<>._jvpSubscript(index:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 197, 0);
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD4<>._jvpSubscript(index:);
  }

  return result;
}

uint64_t closure #1 in SIMD4<>._jvpSubscript(index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  if (v5 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 197, 0);
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    return dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  }

  return result;
}

uint64_t (*forward-mode derivative of SIMD4.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD4<>._jvpSubscript(index:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD4<>._jvpSubscript(index:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD4<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v9 = *(a3 + 16);
  MEMORY[0x2A1C7C4A8](a1, a1);
  memcpy(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v10);
  if (a2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 201, 0);
    __break(1u);
  }

  else
  {
    v12 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.setter();
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = a4;
    v13[4] = v12;
    v13[5] = a5;
    v13[6] = a2;
    return partial apply for closure #1 in SIMD4<>._vjpSubscriptSetter(_:_:);
  }

  return result;
}

uint64_t closure #1 in SIMD4<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v7);
  if (a2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 197, 0);
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t (*reverse-mode derivative of SIMD4.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD4<>._vjpSubscriptSetter(_:_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD4<>._vjpSubscriptSetter(_:_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance <> SIMD8<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E50]);
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance <> SIMD8<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t, void))
{
  v16[2] = a2;
  v17 = a5;
  v16[0] = *(a4 - 8);
  v16[1] = a1;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x2A1C7C4A8](a1, a2);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = v16 - v11;
  MEMORY[0x2A1C7C4A8](v10, v13);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  for (i = 0; i != 8; ++i)
  {
    dispatch thunk of SIMDStorage.subscript.getter();
    dispatch thunk of SIMDStorage.subscript.getter();
    v17(v12, v8, v5, *(*(*(v16[0] + 16) + 8) + 8));
    result = dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance <> SIMD8<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E58]);
}

uint64_t (*SIMD8<>._vjpSubscript(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 8)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 439, 0);
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD8<>._vjpSubscript(_:);
  }

  return result;
}

uint64_t closure #1 in SIMD8<>._vjpSubscript(_:)(const void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1, a2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  if (a2 < 8)
  {
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 443, 0);
  __break(1u);
  return result;
}

uint64_t (*reverse-mode derivative of SIMD8.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD8<>._vjpSubscript(_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD8<>._vjpSubscript(_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD8<>._jvpSubscript(index:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 8)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 439, 0);
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD8<>._jvpSubscript(index:);
  }

  return result;
}

uint64_t closure #1 in SIMD8<>._jvpSubscript(index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  if (v5 >= 8)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 439, 0);
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    return dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  }

  return result;
}

uint64_t (*forward-mode derivative of SIMD8.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD8<>._jvpSubscript(index:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD8<>._jvpSubscript(index:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD8<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v9 = *(a3 + 16);
  MEMORY[0x2A1C7C4A8](a1, a1);
  memcpy(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v10);
  if (a2 >= 8)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 443, 0);
    __break(1u);
  }

  else
  {
    v12 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.setter();
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = a4;
    v13[4] = v12;
    v13[5] = a5;
    v13[6] = a2;
    return partial apply for closure #1 in SIMD8<>._vjpSubscriptSetter(_:_:);
  }

  return result;
}

uint64_t closure #1 in SIMD8<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v7);
  if (a2 >= 8)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 439, 0);
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t (*reverse-mode derivative of SIMD8.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD8<>._vjpSubscriptSetter(_:_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD8<>._vjpSubscriptSetter(_:_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance <> SIMD16<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E50]);
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance <> SIMD16<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t, void))
{
  v16[2] = a2;
  v17 = a5;
  v16[0] = *(a4 - 8);
  v16[1] = a1;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x2A1C7C4A8](a1, a2);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = v16 - v11;
  MEMORY[0x2A1C7C4A8](v10, v13);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  for (i = 0; i != 16; ++i)
  {
    dispatch thunk of SIMDStorage.subscript.getter();
    dispatch thunk of SIMDStorage.subscript.getter();
    v17(v12, v8, v5, *(*(*(v16[0] + 16) + 8) + 8));
    result = dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance <> SIMD16<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E58]);
}

uint64_t (*SIMD16<>._vjpSubscript(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 0x10)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 639, 0);
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD16<>._vjpSubscript(_:);
  }

  return result;
}

uint64_t closure #1 in SIMD16<>._vjpSubscript(_:)(const void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1, a2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  if (a2 < 0x10)
  {
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 643, 0);
  __break(1u);
  return result;
}

uint64_t (*reverse-mode derivative of SIMD16.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD16<>._vjpSubscript(_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD16<>._vjpSubscript(_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD16<>._jvpSubscript(index:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 0x10)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 639, 0);
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD16<>._jvpSubscript(index:);
  }

  return result;
}

uint64_t closure #1 in SIMD16<>._jvpSubscript(index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  if (v5 >= 0x10)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 639, 0);
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    return dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  }

  return result;
}

uint64_t (*forward-mode derivative of SIMD16.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD16<>._jvpSubscript(index:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD16<>._jvpSubscript(index:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD16<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v9 = *(a3 + 16);
  MEMORY[0x2A1C7C4A8](a1, a1);
  memcpy(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v10);
  if (a2 >= 0x10)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 643, 0);
    __break(1u);
  }

  else
  {
    v12 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.setter();
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = a4;
    v13[4] = v12;
    v13[5] = a5;
    v13[6] = a2;
    return partial apply for closure #1 in SIMD16<>._vjpSubscriptSetter(_:_:);
  }

  return result;
}

uint64_t closure #1 in SIMD16<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v7);
  if (a2 >= 0x10)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 639, 0);
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t (*reverse-mode derivative of SIMD16.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD16<>._vjpSubscriptSetter(_:_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD16<>._vjpSubscriptSetter(_:_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance <> SIMD32<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E50]);
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance <> SIMD32<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t, void))
{
  v16[2] = a2;
  v17 = a5;
  v16[0] = *(a4 - 8);
  v16[1] = a1;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x2A1C7C4A8](a1, a2);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = v16 - v11;
  MEMORY[0x2A1C7C4A8](v10, v13);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  for (i = 0; i != 32; ++i)
  {
    dispatch thunk of SIMDStorage.subscript.getter();
    dispatch thunk of SIMDStorage.subscript.getter();
    v17(v12, v8, v5, *(*(*(v16[0] + 16) + 8) + 8));
    result = dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance <> SIMD32<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E58]);
}

uint64_t (*SIMD32<>._vjpSubscript(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 0x20)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 855, 0);
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD32<>._vjpSubscript(_:);
  }

  return result;
}

uint64_t closure #1 in SIMD32<>._vjpSubscript(_:)(const void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1, a2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  if (a2 < 0x20)
  {
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 859, 0);
  __break(1u);
  return result;
}

uint64_t (*reverse-mode derivative of SIMD32.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD32<>._vjpSubscript(_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD32<>._vjpSubscript(_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD32<>._jvpSubscript(index:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 0x20)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 855, 0);
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD32<>._jvpSubscript(index:);
  }

  return result;
}

uint64_t closure #1 in SIMD32<>._jvpSubscript(index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  if (v5 >= 0x20)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 855, 0);
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    return dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  }

  return result;
}

uint64_t (*forward-mode derivative of SIMD32.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD32<>._jvpSubscript(index:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD32<>._jvpSubscript(index:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD32<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v9 = *(a3 + 16);
  MEMORY[0x2A1C7C4A8](a1, a1);
  memcpy(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v10);
  if (a2 >= 0x20)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 859, 0);
    __break(1u);
  }

  else
  {
    v12 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.setter();
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = a4;
    v13[4] = v12;
    v13[5] = a5;
    v13[6] = a2;
    return partial apply for closure #1 in SIMD32<>._vjpSubscriptSetter(_:_:);
  }

  return result;
}

uint64_t closure #1 in SIMD32<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v7);
  if (a2 >= 0x20)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 855, 0);
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t (*reverse-mode derivative of SIMD32.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD32<>._vjpSubscriptSetter(_:_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD32<>._vjpSubscriptSetter(_:_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance <> SIMD64<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E50]);
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance <> SIMD64<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t, void))
{
  v16[2] = a2;
  v17 = a5;
  v16[0] = *(a4 - 8);
  v16[1] = a1;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x2A1C7C4A8](a1, a2);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = v16 - v11;
  MEMORY[0x2A1C7C4A8](v10, v13);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  for (i = 0; i != 64; ++i)
  {
    dispatch thunk of SIMDStorage.subscript.getter();
    dispatch thunk of SIMDStorage.subscript.getter();
    v17(v12, v8, v5, *(*(*(v16[0] + 16) + 8) + 8));
    result = dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance <> SIMD64<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E58]);
}

uint64_t (*SIMD64<>._vjpSubscript(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 0x40)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 1103, 0);
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD64<>._vjpSubscript(_:);
  }

  return result;
}

uint64_t closure #1 in SIMD64<>._vjpSubscript(_:)(const void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1, a2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  if (a2 < 0x40)
  {
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 1107, 0);
  __break(1u);
  return result;
}

uint64_t (*reverse-mode derivative of SIMD64.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD64<>._vjpSubscript(_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD64<>._vjpSubscript(_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD64<>._jvpSubscript(index:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 0x40)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 1103, 0);
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD64<>._jvpSubscript(index:);
  }

  return result;
}

uint64_t closure #1 in SIMD64<>._jvpSubscript(index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  if (v5 >= 0x40)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 1103, 0);
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    return dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  }

  return result;
}

uint64_t (*forward-mode derivative of SIMD64.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD64<>._jvpSubscript(index:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD64<>._jvpSubscript(index:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD64<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v9 = *(a3 + 16);
  MEMORY[0x2A1C7C4A8](a1, a1);
  memcpy(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v10);
  if (a2 >= 0x40)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 1107, 0);
    __break(1u);
  }

  else
  {
    v12 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.setter();
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = a4;
    v13[4] = v12;
    v13[5] = a5;
    v13[6] = a2;
    return partial apply for closure #1 in SIMD64<>._vjpSubscriptSetter(_:_:);
  }

  return result;
}

uint64_t closure #1 in SIMD64<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v7);
  if (a2 >= 0x40)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 1103, 0);
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t (*reverse-mode derivative of SIMD64.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD64<>._vjpSubscriptSetter(_:_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD64<>._vjpSubscriptSetter(_:_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t protocol witness for static AdditiveArithmetic.zero.getter in conformance <> SIMD2<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of SIMDStorage.init()();
}

uint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance <> SIMD3<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E50]);
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance <> SIMD3<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t, uint64_t))
{
  v21 = a2;
  v6 = *(a4 - 8);
  v19 = a5;
  v20 = v6;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x2A1C7C4A8](a1, a2);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v8, v11);
  v14 = &v18 - v13;
  MEMORY[0x2A1C7C4A8](v12, v15);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  v18 = a1;
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  v16 = v19;
  v20 = *(*(*(v20 + 16) + 8) + 8);
  (v19)(v14, v10, v7);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  v16(v14, v10, v7, v20);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  v16(v14, v10, v7, v20);
  return dispatch thunk of SIMDStorage.subscript.setter();
}

uint64_t protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance <> SIMD3<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E58]);
}

uint64_t (*SIMD3<>._vjpSubscript(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 1415, 0);
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD3<>._vjpSubscript(_:);
  }

  return result;
}

uint64_t closure #1 in SIMD3<>._vjpSubscript(_:)(const void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1, a2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  if (a2 < 3)
  {
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 1419, 0);
  __break(1u);
  return result;
}

uint64_t (*reverse-mode derivative of SIMD3.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD3<>._vjpSubscript(_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD3<>._vjpSubscript(_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD3<>._jvpSubscript(index:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 1415, 0);
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD3<>._jvpSubscript(index:);
  }

  return result;
}

uint64_t closure #1 in SIMD3<>._jvpSubscript(index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  if (v5 >= 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 1415, 0);
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    return dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  }

  return result;
}

uint64_t (*forward-mode derivative of SIMD3.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD3<>._jvpSubscript(index:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD3<>._jvpSubscript(index:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD3<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v9 = *(a3 + 16);
  MEMORY[0x2A1C7C4A8](a1, a1);
  memcpy(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v10);
  if (a2 >= 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 1419, 0);
    __break(1u);
  }

  else
  {
    v12 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.setter();
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = a4;
    v13[4] = v12;
    v13[5] = a5;
    v13[6] = a2;
    return partial apply for closure #1 in SIMD3<>._vjpSubscriptSetter(_:_:);
  }

  return result;
}

uint64_t closure #1 in SIMD3<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v7);
  if (a2 >= 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "", 0, 2, "Swift/SIMDVectorTypes.swift", 27, 2, 1415, 0);
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t (*reverse-mode derivative of SIMD3.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD3<>._vjpSubscriptSetter(_:_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD3<>._vjpSubscriptSetter(_:_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*static SIMD<>._vjpAdd(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a6;
  v45 = a8;
  v51 = a7;
  v49 = a3;
  v39 = a2;
  v42 = a1;
  v43 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v10);
  v13 = &AssociatedTypeWitness - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v38 = &AssociatedTypeWitness - v16;
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v20 = &AssociatedTypeWitness - v19;
  v41 = *(a4 - 8);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &AssociatedTypeWitness - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of SIMDStorage.init()();
  v24 = v23;
  v25 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v25 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v40 = a9;
    v26 = v38;
    v50 = v24;
    v48 = v20;
    v27 = AssociatedTypeWitness;
    if (v25)
    {
      v28 = 0;
      v46 = v52 + 8;
      v47 = v25;
      v29 = (v52 + 8);
      do
      {
        v52 = v28 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v30 = *v29;
        (*v29)(v13, v27);
        v30(v26, v27);
        dispatch thunk of SIMDStorage.subscript.setter();
        v28 = v52;
      }

      while (v47 != v52);
    }

    (*(v41 + 32))(v42, v50, a4);
    v31 = swift_allocObject();
    v32 = v43;
    v33 = v44;
    v31[2] = a4;
    v31[3] = v32;
    v34 = v51;
    v31[4] = v33;
    v31[5] = v34;
    v35 = v40;
    v31[6] = v45;
    v31[7] = v35;
    return partial apply for closure #1 in static SIMD<>._vjpAdd(lhs:rhs:);
  }

  return result;
}

uint64_t (*static SIMD<>._jvpAdd(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t a1, uint64_t a2)
{
  v44 = a6;
  v45 = a8;
  v51 = a7;
  v49 = a3;
  v39 = a2;
  v42 = a1;
  v43 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v10);
  v13 = &AssociatedTypeWitness - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v38 = &AssociatedTypeWitness - v16;
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v20 = &AssociatedTypeWitness - v19;
  v41 = *(a4 - 8);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &AssociatedTypeWitness - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of SIMDStorage.init()();
  v24 = v23;
  v25 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v25 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v40 = a9;
    v26 = v38;
    v50 = v24;
    v48 = v20;
    v27 = AssociatedTypeWitness;
    if (v25)
    {
      v28 = 0;
      v46 = v52 + 8;
      v47 = v25;
      v29 = (v52 + 8);
      do
      {
        v52 = v28 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v30 = *v29;
        (*v29)(v13, v27);
        v30(v26, v27);
        dispatch thunk of SIMDStorage.subscript.setter();
        v28 = v52;
      }

      while (v47 != v52);
    }

    (*(v41 + 32))(v42, v50, a4);
    v31 = swift_allocObject();
    v32 = v43;
    v33 = v44;
    v31[2] = a4;
    v31[3] = v32;
    v34 = v51;
    v31[4] = v33;
    v31[5] = v34;
    v35 = v40;
    v31[6] = v45;
    v31[7] = v35;
    return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:);
  }

  return result;
}

uint64_t (*static SIMD<>._vjpSubtract(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a6;
  v45 = a8;
  v51 = a7;
  v49 = a3;
  v39 = a2;
  v42 = a1;
  v43 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v10);
  v13 = &AssociatedTypeWitness - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v38 = &AssociatedTypeWitness - v16;
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v20 = &AssociatedTypeWitness - v19;
  v41 = *(a4 - 8);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &AssociatedTypeWitness - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of SIMDStorage.init()();
  v24 = v23;
  v25 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v25 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v40 = a9;
    v26 = v38;
    v50 = v24;
    v48 = v20;
    v27 = AssociatedTypeWitness;
    if (v25)
    {
      v28 = 0;
      v46 = v52 + 8;
      v47 = v25;
      v29 = (v52 + 8);
      do
      {
        v52 = v28 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v30 = *v29;
        (*v29)(v13, v27);
        v30(v26, v27);
        dispatch thunk of SIMDStorage.subscript.setter();
        v28 = v52;
      }

      while (v47 != v52);
    }

    (*(v41 + 32))(v42, v50, a4);
    v31 = swift_allocObject();
    v32 = v43;
    v33 = v44;
    v31[2] = a4;
    v31[3] = v32;
    v34 = v51;
    v31[4] = v33;
    v31[5] = v34;
    v35 = v40;
    v31[6] = v45;
    v31[7] = v35;
    return partial apply for closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v70 = a3;
  v71 = a2;
  v73 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v74 = &v61 - v17;
  v72 = *(a8 + 48);
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v63 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v62 = &v61 - v25;
  v27 = MEMORY[0x2A1C7C4A8](v24, v26);
  v69 = &v61 - v28;
  v30 = MEMORY[0x2A1C7C4A8](v27, v29);
  v32 = &v61 - v31;
  MEMORY[0x2A1C7C4A8](v30, v33);
  v35 = &v61 - v34;
  v68 = *(*(*(a9 + 16) + 16) + 8);
  v36 = swift_getAssociatedTypeWitness();
  MEMORY[0x2A1C7C4A8](v36, v37);
  v65 = v11;
  (*(v11 + 16))(v73, v70, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v73 = v19;
  v38 = *(v19 + 16);
  v39 = v32;
  v67 = v35;
  v61 = v18;
  v40 = v18;
  v41 = v38;
  v38(v32, v35, v40);
  dispatch thunk of SIMDStorage.init()();
  v64 = AssociatedTypeWitness;
  v42 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v42 < 0)
  {
    goto LABEL_10;
  }

  v43 = v42;
  v44 = v64;
  v45 = v15;
  v46 = v41;
  v47 = v61;
  v48 = v69;
  if (v42)
  {
    v49 = 0;
    do
    {
      v46(v48, v39, v47);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v49;
    }

    while (v43 != v49);
  }

  v50 = v73 + 8;
  v51 = *(v73 + 8);
  v51(v39, v47);
  (*(v65 + 32))(v74, v45, v44);
  dispatch thunk of SIMDStorage.init()();
  v52 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v52 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v53 = v52;
    v51(v67, v47);
    v54 = v74;
    v73 = v50;
    v55 = v62;
    v56 = v63;
    v57 = v64;
    v67 = v51;
    if (v53)
    {
      v58 = 0;
      v66 = v53;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v59 = v67;
        (v67)(v56, v47);
        v59(v55, v47);
        dispatch thunk of SIMDStorage.subscript.setter();
        v54 = v74;
        ++v58;
      }

      while (v66 != v58);
    }

    return (*(v65 + 8))(v54, v57);
  }

  return result;
}

uint64_t (*static SIMD<>._jvpSubtract(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t a1, uint64_t a2)
{
  v44 = a6;
  v45 = a8;
  v51 = a7;
  v49 = a3;
  v39 = a2;
  v42 = a1;
  v43 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v10);
  v13 = &AssociatedTypeWitness - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v38 = &AssociatedTypeWitness - v16;
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v20 = &AssociatedTypeWitness - v19;
  v41 = *(a4 - 8);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &AssociatedTypeWitness - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of SIMDStorage.init()();
  v24 = v23;
  v25 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v25 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v40 = a9;
    v26 = v38;
    v50 = v24;
    v48 = v20;
    v27 = AssociatedTypeWitness;
    if (v25)
    {
      v28 = 0;
      v46 = v52 + 8;
      v47 = v25;
      v29 = (v52 + 8);
      do
      {
        v52 = v28 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v30 = *v29;
        (*v29)(v13, v27);
        v30(v26, v27);
        dispatch thunk of SIMDStorage.subscript.setter();
        v28 = v52;
      }

      while (v47 != v52);
    }

    (*(v41 + 32))(v42, v50, a4);
    v31 = swift_allocObject();
    v32 = v43;
    v33 = v44;
    v31[2] = a4;
    v31[3] = v32;
    v34 = v51;
    v31[4] = v33;
    v31[5] = v34;
    v35 = v40;
    v31[6] = v45;
    v31[7] = v35;
    return partial apply for closure #1 in static SIMD<>._jvpSubtract(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._jvpAdd(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return a9(a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t (*static SIMD<>._vjpNegate(rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v83 = a7;
  v84 = a8;
  v81 = a5;
  v89 = a2;
  v79 = a1;
  v86 = *(a3 - 8);
  v10 = MEMORY[0x2A1C7C4A8](a1, a2);
  v94 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v15 = &v73 - v14;
  MEMORY[0x2A1C7C4A8](v13, v16);
  v93 = &v73 - v17;
  v80 = v18;
  v19 = *(v18 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v23 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v22);
  v78 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v77 = &v73 - v27;
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v90 = &v73 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v34 = &v73 - v33;
  MEMORY[0x2A1C7C4A8](v32, v35);
  v37 = &v73 - v36;
  v82 = a6;
  v76 = *(*(*(a6 + 16) + 16) + 8);
  v38 = swift_getAssociatedTypeWitness();
  MEMORY[0x2A1C7C4A8](v38, v39);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v91 = v21;
  v40 = *(v21 + 16);
  v41 = v34;
  v95 = v37;
  v73 = AssociatedTypeWitness;
  v87 = (v21 + 16);
  v88 = v40;
  (v40)(v34, v37, AssociatedTypeWitness);
  dispatch thunk of SIMDStorage.init()();
  v42 = v15;
  v85 = a3;
  v92 = v19;
  v43 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v43 < 0)
  {
    goto LABEL_10;
  }

  v44 = v43;
  v45 = v85;
  v46 = v90;
  v47 = v88;
  v48 = v73;
  if (v43)
  {
    v49 = 0;
    do
    {
      v47(v46, v41, v48);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v49;
    }

    while (v44 != v49);
  }

  v51 = v91 + 8;
  v50 = *(v91 + 8);
  v50(v41, v48);
  v52 = *(v86 + 32);
  v75 = v86 + 32;
  v74 = v52;
  v52(v93, v42, v45);
  dispatch thunk of SIMDStorage.init()();
  v53 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v53 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v54 = v53;
    v50(v95, v48);
    v91 = v51;
    v55 = v93;
    v56 = v77;
    v57 = v78;
    v58 = v85;
    v59 = v48;
    v88 = v50;
    v60 = v76;
    if (v54)
    {
      v61 = 0;
      v87 = v54;
      do
      {
        v95 = v61 + 1;
        v62 = v56;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v63 = v60;
        v64 = v58;
        v65 = v88;
        v88(v57, v59);
        v65(v62, v59);
        v58 = v64;
        v60 = v63;
        dispatch thunk of SIMDStorage.subscript.setter();
        v56 = v62;
        v55 = v93;
        v61 = v95;
      }

      while (v87 != v95);
    }

    (*(v86 + 8))(v55, v58);
    v74(v79, v94, v58);
    v66 = swift_allocObject();
    v67 = v80;
    v68 = v81;
    v66[2] = v58;
    v66[3] = v67;
    v69 = v82;
    v70 = v83;
    v66[4] = v68;
    v66[5] = v69;
    v71 = v84;
    v66[6] = v70;
    v66[7] = v71;
    return partial apply for closure #1 in static SIMD<>._vjpNegate(rhs:);
  }

  return result;
}

uint64_t (*static SIMD<>._jvpNegate(rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v83 = a7;
  v84 = a8;
  v81 = a5;
  v89 = a2;
  v79 = a1;
  v86 = *(a3 - 8);
  v10 = MEMORY[0x2A1C7C4A8](a1, a2);
  v94 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v15 = &v73 - v14;
  MEMORY[0x2A1C7C4A8](v13, v16);
  v93 = &v73 - v17;
  v80 = v18;
  v19 = *(v18 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v23 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v22);
  v78 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v77 = &v73 - v27;
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v90 = &v73 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v34 = &v73 - v33;
  MEMORY[0x2A1C7C4A8](v32, v35);
  v37 = &v73 - v36;
  v82 = a6;
  v76 = *(*(*(a6 + 16) + 16) + 8);
  v38 = swift_getAssociatedTypeWitness();
  MEMORY[0x2A1C7C4A8](v38, v39);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v91 = v21;
  v40 = *(v21 + 16);
  v41 = v34;
  v95 = v37;
  v73 = AssociatedTypeWitness;
  v87 = (v21 + 16);
  v88 = v40;
  (v40)(v34, v37, AssociatedTypeWitness);
  dispatch thunk of SIMDStorage.init()();
  v42 = v15;
  v85 = a3;
  v92 = v19;
  v43 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v43 < 0)
  {
    goto LABEL_10;
  }

  v44 = v43;
  v45 = v85;
  v46 = v90;
  v47 = v88;
  v48 = v73;
  if (v43)
  {
    v49 = 0;
    do
    {
      v47(v46, v41, v48);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v49;
    }

    while (v44 != v49);
  }

  v51 = v91 + 8;
  v50 = *(v91 + 8);
  v50(v41, v48);
  v52 = *(v86 + 32);
  v75 = v86 + 32;
  v74 = v52;
  v52(v93, v42, v45);
  dispatch thunk of SIMDStorage.init()();
  v53 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v53 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v54 = v53;
    v50(v95, v48);
    v91 = v51;
    v55 = v93;
    v56 = v77;
    v57 = v78;
    v58 = v85;
    v59 = v48;
    v88 = v50;
    v60 = v76;
    if (v54)
    {
      v61 = 0;
      v87 = v54;
      do
      {
        v95 = v61 + 1;
        v62 = v56;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v63 = v60;
        v64 = v58;
        v65 = v88;
        v88(v57, v59);
        v65(v62, v59);
        v58 = v64;
        v60 = v63;
        dispatch thunk of SIMDStorage.subscript.setter();
        v56 = v62;
        v55 = v93;
        v61 = v95;
      }

      while (v87 != v95);
    }

    (*(v86 + 8))(v55, v58);
    v74(v79, v94, v58);
    v66 = swift_allocObject();
    v67 = v80;
    v68 = v81;
    v66[2] = v58;
    v66[3] = v67;
    v69 = v82;
    v70 = v83;
    v66[4] = v68;
    v66[5] = v69;
    v71 = v84;
    v66[6] = v70;
    v66[7] = v71;
    return partial apply for closure #1 in static SIMD<>._jvpNegate(rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._vjpNegate(rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v70 = a1;
  v71 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v75 = &v61 - v13;
  v14 = *(a3 + 48);
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v65 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v64 = &v61 - v22;
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v72 = &v61 - v25;
  v27 = MEMORY[0x2A1C7C4A8](v24, v26);
  v29 = &v61 - v28;
  MEMORY[0x2A1C7C4A8](v27, v30);
  v32 = &v61 - v31;
  v63 = *(*(*(a4 + 16) + 16) + 8);
  v33 = swift_getAssociatedTypeWitness();
  MEMORY[0x2A1C7C4A8](v33, v34);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v73 = v16;
  v35 = *(v16 + 16);
  v76 = v32;
  v62 = v15;
  v68 = (v16 + 16);
  v69 = v35;
  (v35)(v29, v32, v15);
  dispatch thunk of SIMDStorage.init()();
  v36 = v11;
  v66 = AssociatedTypeWitness;
  v74 = v14;
  v37 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v37 < 0)
  {
    goto LABEL_10;
  }

  v38 = v37;
  v39 = v66;
  v40 = v72;
  v41 = v69;
  v42 = v62;
  if (v37)
  {
    v43 = 0;
    do
    {
      v41(v40, v29, v42);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v43;
    }

    while (v38 != v43);
  }

  v45 = v73 + 8;
  v44 = *(v73 + 8);
  v44(v29, v42);
  (*(v67 + 32))(v75, v36, v39);
  dispatch thunk of SIMDStorage.init()();
  v46 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v46 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v47 = v46;
    v44(v76, v42);
    v49 = v74;
    v48 = v75;
    v73 = v45;
    v51 = v64;
    v50 = v65;
    v52 = v42;
    v53 = v66;
    v69 = v44;
    if (v47)
    {
      v54 = 0;
      v68 = v47;
      do
      {
        v76 = v54 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v55 = v50;
        v56 = v49;
        v57 = v50;
        v58 = v53;
        v59 = v69;
        v69(v55, v52);
        v59(v51, v52);
        v53 = v58;
        v50 = v57;
        v49 = v56;
        dispatch thunk of SIMDStorage.subscript.setter();
        v48 = v75;
        v54 = v76;
      }

      while (v68 != v76);
    }

    return (*(v67 + 8))(v48, v53);
  }

  return result;
}

uint64_t (*static SIMD<>._vjpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a3;
  v64 = a7;
  v57 = a5;
  v58 = a6;
  v62 = a2;
  v56 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v51 = &v49 - v15;
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v19 = &v49 - v18;
  v52 = *(a4 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v17, v20);
  v55 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v53 = &v49 - v25;
  v54 = v26;
  MEMORY[0x2A1C7C4A8](v24, v27);
  v29 = &v49 - v28;
  dispatch thunk of SIMDStorage.init()();
  v30 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v30 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v60 = v19;
    v61 = v29;
    v31 = v51;
    if (v30)
    {
      v32 = 0;
      v33 = (v50 + 8);
      v59 = v30;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static Numeric.* infix(_:_:)();
        v34 = *v33;
        (*v33)(v12, AssociatedTypeWitness);
        v34(v31, AssociatedTypeWitness);
        dispatch thunk of SIMDStorage.subscript.setter();
        ++v32;
      }

      while (v59 != v32);
    }

    v35 = v52;
    v36 = a4;
    v37 = *(v52 + 32);
    v37(v56, v61, a4);
    v38 = *(v35 + 16);
    v39 = v53;
    v38(v53, v63, v36);
    v40 = v55;
    v38(v55, v62, v36);
    v41 = *(v35 + 80);
    v42 = (v41 + 48) & ~v41;
    v43 = (v54 + v41 + v42) & ~v41;
    v44 = swift_allocObject();
    v45 = v57;
    v46 = v58;
    v44[2] = v36;
    v44[3] = v45;
    v47 = v64;
    v44[4] = v46;
    v44[5] = v47;
    v37(v44 + v42, v39, v36);
    v37(v44 + v43, v40, v36);
    return partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a4;
  v48 = a5;
  v44 = a3;
  v51 = a2;
  v11 = *(a7 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v41 = AssociatedTypeWitness;
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v13);
  v43 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v42 = &v37 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v54 = &v37 - v21;
  v38 = *(a6 - 8);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of SIMDStorage.init()();
  v25 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v25 < 0)
  {
    goto LABEL_10;
  }

  v39 = a1;
  v53 = a9;
  v26 = v43;
  v49 = v11;
  v50 = v24;
  v28 = v41;
  v27 = v42;
  if (v25)
  {
    v29 = 0;
    v45 = (v40 + 8);
    v46 = v25;
    do
    {
      v52 = v29 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of static Numeric.* infix(_:_:)();
      v30 = *v45;
      (*v45)(v26, v28);
      v30(v27, v28);
      dispatch thunk of SIMDStorage.subscript.setter();
      v29 = v52;
    }

    while (v46 != v52);
  }

  (*(v38 + 32))(v39, v50, a6);
  dispatch thunk of SIMDStorage.init()();
  result = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (result < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v32 = v43;
    v34 = v41;
    v33 = v42;
    if (result)
    {
      v35 = 0;
      v47 = (v40 + 8);
      v50 = result;
      do
      {
        v52 = v35 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static Numeric.* infix(_:_:)();
        v36 = *v47;
        (*v47)(v32, v34);
        v36(v33, v34);
        dispatch thunk of SIMDStorage.subscript.setter();
        result = v50;
        v35 = v52;
      }

      while (v50 != v52);
    }
  }

  return result;
}

uint64_t (*static SIMD<>._jvpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1, uint64_t a2)
{
  v63 = a3;
  v64 = a7;
  v57 = a5;
  v58 = a6;
  v62 = a2;
  v56 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v51 = &v49 - v15;
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v19 = &v49 - v18;
  v52 = *(a4 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v17, v20);
  v55 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v53 = &v49 - v25;
  v54 = v26;
  MEMORY[0x2A1C7C4A8](v24, v27);
  v29 = &v49 - v28;
  dispatch thunk of SIMDStorage.init()();
  v30 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v30 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v60 = v19;
    v61 = v29;
    v31 = v51;
    if (v30)
    {
      v32 = 0;
      v33 = (v50 + 8);
      v59 = v30;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static Numeric.* infix(_:_:)();
        v34 = *v33;
        (*v33)(v12, AssociatedTypeWitness);
        v34(v31, AssociatedTypeWitness);
        dispatch thunk of SIMDStorage.subscript.setter();
        ++v32;
      }

      while (v59 != v32);
    }

    v35 = v52;
    v36 = a4;
    v37 = *(v52 + 32);
    v37(v56, v61, a4);
    v38 = *(v35 + 16);
    v39 = v53;
    v38(v53, v62, v36);
    v40 = v55;
    v38(v55, v63, v36);
    v41 = *(v35 + 80);
    v42 = (v41 + 48) & ~v41;
    v43 = (v54 + v41 + v42) & ~v41;
    v44 = swift_allocObject();
    v45 = v57;
    v46 = v58;
    v44[2] = v36;
    v44[3] = v45;
    v47 = v64;
    v44[4] = v46;
    v44[5] = v47;
    v37(v44 + v42, v39, v36);
    v37(v44 + v43, v40, v36);
    return partial apply for closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:)@<X0>(uint64_t a1@<X0>, void (**a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v73 = a8;
  v55 = a1;
  v56 = a7;
  v67 = a4;
  v53 = a3;
  v57 = a9;
  v11 = *(a6 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  v59 = AssociatedTypeWitness;
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v13);
  v61 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v60 = &v53 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v72 = &v53 - v21;
  v63 = *(a5 - 8);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v70 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v54 = &v53 - v27;
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v31 = &v53 - v30;
  MEMORY[0x2A1C7C4A8](v29, v32);
  v62 = &v53 - v33;
  dispatch thunk of SIMDStorage.init()();
  v34 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v34 < 0)
  {
    goto LABEL_10;
  }

  v66 = a2;
  v68 = v11;
  v69 = v31;
  v35 = v60;
  v36 = v61;
  v37 = v59;
  if (v34)
  {
    v38 = 0;
    v64 = (v58 + 8);
    v65 = v34;
    do
    {
      v71 = v38 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of static Numeric.* infix(_:_:)();
      v39 = *v64;
      (*v64)(v36, v37);
      v39(v35, v37);
      dispatch thunk of SIMDStorage.subscript.setter();
      v38 = v71;
    }

    while (v65 != v71);
  }

  v64 = *(v63 + 32);
  v65 = v63 + 32;
  (v64)(v62, v69, a5);
  dispatch thunk of SIMDStorage.init()();
  v40 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v40 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v41 = a5;
    v42 = v60;
    v43 = v61;
    v44 = v59;
    if (v40)
    {
      v45 = 0;
      v66 = (v58 + 8);
      v69 = v40;
      do
      {
        v71 = v45 + 1;
        v46 = v41;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static Numeric.* infix(_:_:)();
        v47 = *v66;
        (*v66)(v43, v44);
        v47(v42, v44);
        dispatch thunk of SIMDStorage.subscript.setter();
        v41 = v46;
        v45 = v71;
      }

      while (v69 != v71);
    }

    v48 = v54;
    v49 = v41;
    (v64)(v54, v70, v41);
    swift_getAssociatedConformanceWitness();
    v50 = v62;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v51 = *(v63 + 8);
    v51(v48, v49);
    return (v51)(v50, v49);
  }

  return result;
}

uint64_t (*static SIMD<>._vjpDivide(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a3;
  v64 = a7;
  v57 = a5;
  v58 = a6;
  v62 = a2;
  v56 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v51 = &v49 - v15;
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v19 = &v49 - v18;
  v52 = *(a4 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v17, v20);
  v55 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v53 = &v49 - v25;
  v54 = v26;
  MEMORY[0x2A1C7C4A8](v24, v27);
  v29 = &v49 - v28;
  dispatch thunk of SIMDStorage.init()();
  v30 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v30 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v60 = v19;
    v61 = v29;
    v31 = v51;
    if (v30)
    {
      v32 = 0;
      v33 = (v50 + 8);
      v59 = v30;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static FloatingPoint./ infix(_:_:)();
        v34 = *v33;
        (*v33)(v12, AssociatedTypeWitness);
        v34(v31, AssociatedTypeWitness);
        dispatch thunk of SIMDStorage.subscript.setter();
        ++v32;
      }

      while (v59 != v32);
    }

    v35 = v52;
    v36 = a4;
    v37 = *(v52 + 32);
    v37(v56, v61, a4);
    v38 = *(v35 + 16);
    v39 = v53;
    v38(v53, v63, v36);
    v40 = v55;
    v38(v55, v62, v36);
    v41 = *(v35 + 80);
    v42 = (v41 + 48) & ~v41;
    v43 = (v54 + v41 + v42) & ~v41;
    v44 = swift_allocObject();
    v45 = v57;
    v46 = v58;
    v44[2] = v36;
    v44[3] = v45;
    v47 = v64;
    v44[4] = v46;
    v44[5] = v47;
    v37(v44 + v42, v39, v36);
    v37(v44 + v43, v40, v36);
    return partial apply for closure #1 in static SIMD<>._vjpDivide(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._vjpDivide(lhs:rhs:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v139 = a5;
  v141 = a4;
  v142 = a2;
  v143 = a3;
  v11 = *(a7 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v155 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v13);
  v136 = v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v19 = v124 - v18;
  v21 = MEMORY[0x2A1C7C4A8](v17, v20);
  v154 = v124 - v22;
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v128 = v124 - v25;
  MEMORY[0x2A1C7C4A8](v24, v26);
  v129 = v124 - v27;
  v151 = *(a9 + 16);
  v152 = *(*(v151 + 16) + 8);
  v126 = *(v152 + 16);
  v29 = v28;
  v125 = swift_getAssociatedTypeWitness();
  v31 = MEMORY[0x2A1C7C4A8](v125, v30);
  v124[1] = v124 - v32;
  v137 = *(a6 - 8);
  v34 = MEMORY[0x2A1C7C4A8](v31, v33);
  v149 = v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x2A1C7C4A8](v34, v36);
  v147 = v124 - v38;
  v40 = MEMORY[0x2A1C7C4A8](v37, v39);
  v130 = v124 - v41;
  v43 = MEMORY[0x2A1C7C4A8](v40, v42);
  v145 = v124 - v44;
  v46 = MEMORY[0x2A1C7C4A8](v43, v45);
  v48 = v124 - v47;
  v50 = MEMORY[0x2A1C7C4A8](v46, v49);
  v144 = v124 - v51;
  v53 = MEMORY[0x2A1C7C4A8](v50, v52);
  v148 = v124 - v54;
  v56 = MEMORY[0x2A1C7C4A8](v53, v55);
  v131 = v124 - v57;
  MEMORY[0x2A1C7C4A8](v56, v58);
  v60 = v124 - v59;
  dispatch thunk of SIMDStorage.init()();
  v61 = v60;
  v62 = a6;
  v63 = v11;
  v64 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v64 < 0)
  {
    goto LABEL_26;
  }

  v127 = v48;
  v135 = a1;
  v150 = v61;
  v65 = v136;
  v66 = v62;
  v140 = v29;
  if (v64)
  {
    v67 = v154;
    v68 = 0;
    v138 = (v155 + 8);
    v146 = v64;
    do
    {
      v153 = v68 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v69 = v140;
      dispatch thunk of static FloatingPoint./ infix(_:_:)();
      v70 = v63;
      v71 = v67;
      v72 = *v138;
      (*v138)(v65, v69);
      v72(v19, v69);
      v67 = v71;
      v63 = v70;
      dispatch thunk of SIMDStorage.subscript.setter();
      v68 = v153;
    }

    while (v146 != v153);
  }

  v132 = v19;
  v73 = *(v137 + 32);
  v134 = v137 + 32;
  v133 = v73;
  v73(v135, v150, v66);
  v74 = v140;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v75 = v129;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v76 = *(v155 + 16);
  v76(v128, v75, v74);
  dispatch thunk of SIMDStorage.init()();
  v135 = v66;
  v146 = v63;
  v77 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v77 < 0)
  {
    goto LABEL_26;
  }

  v78 = v77;
  v79 = v135;
  v80 = v128;
  v81 = v127;
  v82 = v154;
  if (v77)
  {
    v83 = 0;
    do
    {
      v76(v82, v80, v74);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v83;
    }

    while (v78 != v83);
  }

  v85 = v155 + 8;
  v84 = *(v155 + 8);
  v84(v80, v74);
  v133(v144, v81, v79);
  dispatch thunk of SIMDStorage.init()();
  v86 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v86 < 0)
  {
    goto LABEL_26;
  }

  v87 = v86;
  v84(v129, v74);
  v155 = v85;
  v153 = v84;
  v89 = v135;
  v88 = v136;
  v90 = v132;
  v91 = v146;
  v92 = v144;
  v93 = v74;
  if (v87)
  {
    v94 = 0;
    v138 = v87;
    v95 = v153;
    do
    {
      v150 = v94 + 1;
      v96 = v90;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      (v95)(v88, v93);
      (v95)(v96, v93);
      dispatch thunk of SIMDStorage.subscript.setter();
      v90 = v96;
      v92 = v144;
      v94 = v150;
    }

    while (v138 != v150);
  }

  v97 = *(v137 + 8);
  v137 += 8;
  v144 = v97;
  (v97)(v92, v89);
  v133(v148, v145, v89);
  dispatch thunk of SIMDStorage.init()();
  v98 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v98 < 0)
  {
    goto LABEL_26;
  }

  v100 = v135;
  v99 = v136;
  v101 = v132;
  v102 = v93;
  if (v98)
  {
    v103 = 0;
    v145 = v98;
    do
    {
      v150 = v103 + 1;
      v104 = v101;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of static Numeric.* infix(_:_:)();
      v105 = v91;
      v106 = v153;
      (v153)(v99, v102);
      (v106)(v104, v102);
      v91 = v105;
      dispatch thunk of SIMDStorage.subscript.setter();
      v101 = v104;
      v103 = v150;
    }

    while (v145 != v150);
  }

  v133(v130, v147, v100);
  dispatch thunk of SIMDStorage.init()();
  v107 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v107 < 0)
  {
    goto LABEL_26;
  }

  v108 = v91;
  v109 = v135;
  v110 = v136;
  v111 = v132;
  v112 = v130;
  if (v107)
  {
    v113 = 0;
    v147 = v107;
    do
    {
      v150 = v113 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of static FloatingPoint./ infix(_:_:)();
      v114 = v153;
      (v153)(v110, v102);
      (v114)(v111, v102);
      dispatch thunk of SIMDStorage.subscript.setter();
      v113 = v150;
    }

    while (v147 != v150);
  }

  v115 = v144;
  (v144)(v112, v109);
  v115(v148, v109);
  v133(v131, v149, v109);
  dispatch thunk of SIMDStorage.init()();
  v116 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v116 < 0)
  {
LABEL_26:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v117 = v131;
    if (v116)
    {
      v118 = 0;
      v150 = v116;
      do
      {
        v151 = v118 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static Numeric.* infix(_:_:)();
        v119 = v110;
        v120 = v110;
        v121 = v108;
        v122 = v153;
        (v153)(v119, v102);
        (v122)(v111, v102);
        v108 = v121;
        v110 = v120;
        dispatch thunk of SIMDStorage.subscript.setter();
        v118 = v151;
      }

      while (v150 != v151);
    }

    return (v144)(v117, v109);
  }

  return result;
}

uint64_t (*static SIMD<>._jvpDivide(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1, uint64_t a2)
{
  v63 = a3;
  v64 = a7;
  v57 = a5;
  v58 = a6;
  v62 = a2;
  v56 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v51 = &v49 - v15;
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v19 = &v49 - v18;
  v52 = *(a4 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v17, v20);
  v55 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v53 = &v49 - v25;
  v54 = v26;
  MEMORY[0x2A1C7C4A8](v24, v27);
  v29 = &v49 - v28;
  dispatch thunk of SIMDStorage.init()();
  v30 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v30 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v60 = v19;
    v61 = v29;
    v31 = v51;
    if (v30)
    {
      v32 = 0;
      v33 = (v50 + 8);
      v59 = v30;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static FloatingPoint./ infix(_:_:)();
        v34 = *v33;
        (*v33)(v12, AssociatedTypeWitness);
        v34(v31, AssociatedTypeWitness);
        dispatch thunk of SIMDStorage.subscript.setter();
        ++v32;
      }

      while (v59 != v32);
    }

    v35 = v52;
    v36 = a4;
    v37 = *(v52 + 32);
    v37(v56, v61, a4);
    v38 = *(v35 + 16);
    v39 = v53;
    v38(v53, v63, v36);
    v40 = v55;
    v38(v55, v62, v36);
    v41 = *(v35 + 80);
    v42 = (v41 + 48) & ~v41;
    v43 = (v54 + v41 + v42) & ~v41;
    v44 = swift_allocObject();
    v45 = v57;
    v46 = v58;
    v44[2] = v36;
    v44[3] = v45;
    v47 = v64;
    v44[4] = v46;
    v44[5] = v47;
    v37(v44 + v42, v39, v36);
    v37(v44 + v43, v40, v36);
    return partial apply for closure #1 in static SIMD<>._jvpDivide(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._jvpDivide(lhs:rhs:)@<X0>(void (**a1)(uint64_t, uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X4>, uint64_t a5@<X5>, void (*a6)(char *, char *)@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v97 = a7;
  v77 = a3;
  v78 = a6;
  v87 = a1;
  v88 = a2;
  v89 = a8;
  v9 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = *(AssociatedTypeWitness - 8);
  v83 = AssociatedTypeWitness;
  v12 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v11);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v18 = &v75 - v17;
  v20 = MEMORY[0x2A1C7C4A8](v16, v19);
  v96 = &v75 - v21;
  v84 = *(a4 - 1);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v91 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v93 = &v75 - v27;
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v90 = &v75 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v76 = &v75 - v33;
  v35 = MEMORY[0x2A1C7C4A8](v32, v34);
  v37 = &v75 - v36;
  v39 = MEMORY[0x2A1C7C4A8](v35, v38);
  v81 = &v75 - v40;
  MEMORY[0x2A1C7C4A8](v39, v41);
  v92 = &v75 - v42;
  dispatch thunk of SIMDStorage.init()();
  v43 = a4;
  v44 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v44 < 0)
  {
    goto LABEL_18;
  }

  v94 = v37;
  v45 = v83;
  if (v44)
  {
    v46 = 0;
    v85 = (v82 + 8);
    v86 = v44;
    do
    {
      v95 = v46 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of static Numeric.* infix(_:_:)();
      v47 = *v85;
      (*v85)(v14, v45);
      v47(v18, v45);
      dispatch thunk of SIMDStorage.subscript.setter();
      v46 = v95;
    }

    while (v86 != v95);
  }

  v79 = *(v84 + 32);
  v80 = v84 + 32;
  v79(v81, v94, a4);
  dispatch thunk of SIMDStorage.init()();
  v48 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v48 < 0)
  {
    goto LABEL_18;
  }

  v95 = v9;
  v49 = v14;
  v50 = v83;
  if (v48)
  {
    v51 = 0;
    v85 = (v82 + 8);
    v86 = v48;
    v52 = (v82 + 8);
    do
    {
      v94 = v51 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of static Numeric.* infix(_:_:)();
      v53 = *v52;
      (*v52)(v49, v50);
      v53(v18, v50);
      dispatch thunk of SIMDStorage.subscript.setter();
      v51 = v94;
    }

    while (v86 != v94);
  }

  v85 = v18;
  v86 = v49;
  v54 = v76;
  v79(v76, v90, v43);
  swift_getAssociatedConformanceWitness();
  v55 = v81;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v56 = v84 + 8;
  v57 = *(v84 + 8);
  v57(v54, v43);
  v84 = v56;
  v78 = v57;
  v57(v55, v43);
  dispatch thunk of SIMDStorage.init()();
  v81 = v43;
  v58 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v58 < 0)
  {
    goto LABEL_18;
  }

  v60 = v85;
  v59 = v86;
  v61 = v81;
  v62 = v83;
  if (v58)
  {
    v63 = 0;
    v87 = (v82 + 8);
    v90 = v58;
    do
    {
      v94 = v63 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of static Numeric.* infix(_:_:)();
      v64 = *v87;
      (*v87)(v59, v62);
      v64(v60, v62);
      dispatch thunk of SIMDStorage.subscript.setter();
      v63 = v94;
    }

    while (v90 != v94);
  }

  v79(v93, v91, v61);
  dispatch thunk of SIMDStorage.init()();
  v65 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v65 < 0)
  {
LABEL_18:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v66 = v85;
    v67 = v86;
    v68 = v81;
    v69 = v83;
    if (v65)
    {
      v70 = 0;
      v71 = (v82 + 8);
      v94 = v65;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static FloatingPoint./ infix(_:_:)();
        v72 = *v71;
        (*v71)(v67, v69);
        v72(v66, v69);
        dispatch thunk of SIMDStorage.subscript.setter();
        ++v70;
      }

      while (v94 != v70);
    }

    v73 = v78;
    v78(v93, v68);
    return (v73)(v92, v68);
  }

  return result;
}

uint64_t (*static SIMD<>._vjpAdd(lhs:rhs:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a6;
  v82 = a8;
  v87 = a3;
  v88 = a7;
  v79 = a1;
  v80 = a5;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v15);
  v73 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v76 = &v71 - v20;
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v24 = &v71 - v23;
  MEMORY[0x2A1C7C4A8](v22, v25);
  v84 = *(a4 - 8);
  v28 = MEMORY[0x2A1C7C4A8](&v71 - v26, v27);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x2A1C7C4A8](v28, v31);
  v34 = &v71 - v33;
  v36 = MEMORY[0x2A1C7C4A8](v32, v35);
  v83 = &v71 - v37;
  v90 = v14;
  v38 = *(v14 + 16);
  v85 = v14 + 16;
  v86 = v36;
  v40 = v39;
  v41 = v38;
  v38(v36, a2);
  dispatch thunk of SIMDStorage.init()();
  v42 = v34;
  v43 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v43 < 0)
  {
    goto LABEL_10;
  }

  v44 = v43;
  v89 = v30;
  v91 = v12;
  v45 = v86;
  if (v43)
  {
    v46 = 0;
    do
    {
      v41(v24, v45, v40);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v46;
    }

    while (v44 != v46);
  }

  v72 = v24;
  v47 = v90 + 8;
  v48 = *(v90 + 8);
  v48(v45, v40);
  v77 = *(v84 + 32);
  v78 = v84 + 32;
  v77(v83, v42, a4);
  dispatch thunk of SIMDStorage.init()();
  v49 = a4;
  v50 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v50 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v74 = a9;
    v75 = a10;
    v90 = v47;
    v51 = v72;
    v52 = v73;
    v53 = v76;
    v54 = v83;
    v86 = v48;
    if (v50)
    {
      v55 = v40;
      v56 = 0;
      v85 = v50;
      do
      {
        v91 = v56 + 1;
        v57 = v53;
        v58 = v54;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v59 = v52;
        v60 = v52;
        v61 = v51;
        v62 = v49;
        v63 = v86;
        v86(v59, v55);
        v63(v57, v55);
        v49 = v62;
        v51 = v61;
        v52 = v60;
        dispatch thunk of SIMDStorage.subscript.setter();
        v53 = v57;
        v54 = v58;
        v56 = v91;
      }

      while (v85 != v91);
    }

    (*(v84 + 8))(v54, v49);
    v77(v79, v89, v49);
    v64 = swift_allocObject();
    v65 = v80;
    v66 = v81;
    v64[2] = v49;
    v64[3] = v65;
    v67 = v88;
    v64[4] = v66;
    v64[5] = v67;
    v69 = v74;
    v68 = v75;
    v64[6] = v82;
    v64[7] = v69;
    v64[8] = v68;
    return partial apply for closure #1 in static SIMD<>._vjpAdd(lhs:rhs:);
  }

  return result;
}

{
  v82 = a6;
  v83 = a8;
  v87 = a7;
  v79 = a2;
  v80 = a1;
  v81 = a5;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v15);
  v73 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v76 = &v71 - v20;
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v24 = &v71 - v23;
  MEMORY[0x2A1C7C4A8](v22, v25);
  v84 = *(a4 - 8);
  v28 = MEMORY[0x2A1C7C4A8](&v71 - v26, v27);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x2A1C7C4A8](v28, v31);
  v34 = &v71 - v33;
  v36 = MEMORY[0x2A1C7C4A8](v32, v35);
  v88 = &v71 - v37;
  v90 = v14;
  v38 = *(v14 + 16);
  v85 = v14 + 16;
  v86 = v36;
  v40 = v39;
  v41 = v38;
  v38(v36, a3);
  dispatch thunk of SIMDStorage.init()();
  v42 = v34;
  v43 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v43 < 0)
  {
    goto LABEL_10;
  }

  v44 = v43;
  v89 = v30;
  v91 = v12;
  v45 = v86;
  if (v43)
  {
    v46 = 0;
    do
    {
      v41(v24, v45, v40);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v46;
    }

    while (v44 != v46);
  }

  v72 = v24;
  v47 = v90 + 8;
  v48 = *(v90 + 8);
  v48(v45, v40);
  v77 = *(v84 + 32);
  v78 = v84 + 32;
  v77(v88, v42, a4);
  dispatch thunk of SIMDStorage.init()();
  v49 = a4;
  v50 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v50 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v74 = a9;
    v75 = a10;
    v51 = v79;
    v90 = v47;
    v52 = v72;
    v53 = v73;
    v54 = v76;
    v86 = v48;
    if (v50)
    {
      v55 = v40;
      v56 = 0;
      v85 = v50;
      do
      {
        v91 = v56 + 1;
        v57 = v54;
        v58 = v51;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v59 = v53;
        v60 = v53;
        v61 = v52;
        v62 = v49;
        v63 = v86;
        v86(v59, v55);
        v63(v57, v55);
        v49 = v62;
        v52 = v61;
        v53 = v60;
        dispatch thunk of SIMDStorage.subscript.setter();
        v54 = v57;
        v51 = v58;
        v56 = v91;
      }

      while (v85 != v91);
    }

    (*(v84 + 8))(v88, v49);
    v77(v80, v89, v49);
    v64 = swift_allocObject();
    v65 = v81;
    v66 = v82;
    v64[2] = v49;
    v64[3] = v65;
    v67 = v87;
    v64[4] = v66;
    v64[5] = v67;
    v69 = v74;
    v68 = v75;
    v64[6] = v83;
    v64[7] = v69;
    v64[8] = v68;
    return partial apply for closure #1 in static SIMD<>._vjpAdd(lhs:rhs:);
  }

  return result;
}