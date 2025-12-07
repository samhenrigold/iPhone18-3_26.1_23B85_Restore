void AsyncThrowingFlatMapSequence.Iterator.next(isolation:)()
{
  v2 = *v1;
  *(*v1 + 408);
  if (v0)
  {
    (*(v2[43] + 8))(v2[45], v2[38]);
    v3 = v2[46];
    v4 = v2[47];
    v5 = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
  }

  else
  {
    v3 = v2[46];
    v4 = v2[47];
    v5 = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v5, v3, v4);
}

{
  v2 = *v1;
  *(*v1 + 432);
  v3 = *(v2 + 376);
  v4 = *(v2 + 368);
  if (v0)
  {
    v5 = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
  }

  else
  {
    v5 = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v5, v4, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 448);
  *(*v1 + 456) = v0;
  v3;
  (*(v2[21] + 8))(v2[22], v2[17]);

  v4 = v2[47];
  v5 = v2[46];
  if (v0)
  {
    v6 = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
  }

  else
  {
    v6 = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v6, v5, v4);
}

{
  v2 = *v1;
  *(*v1 + 472);
  if (v0)
  {
    (*(v2[43] + 8))(v2[44], v2[38]);
    v3 = v2[46];
    v4 = v2[47];
    v5 = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
  }

  else
  {
    (*(v2[8] + 8))(v2[11], v2[7]);
    v3 = v2[46];
    v4 = v2[47];
    v5 = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v5, v3, v4);
}

void protocol witness for AsyncIteratorProtocol.next() in conformance AsyncThrowingFlatMapSequence<A, B>.Iterator(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc(368);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  AsyncThrowingFlatMapSequence.Iterator.next()(a1, a2);
}

void _ss28AsyncThrowingFlatMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc(480);
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = _ss31AsyncThrowingCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  AsyncThrowingFlatMapSequence.Iterator.next(isolation:)(a1, a2, a3, a5);
}

uint64_t AsyncFlatMapSequence.makeAsyncIterator()(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t, void, uint64_t, void))
{
  v20 = a2;
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v13 = &v19 - v12;
  (*(v6 + 16))(v9, v3, v5);
  (*(v10 + 40))(v5, v10);
  v14 = (v3 + *(a1 + 52));
  v15 = *v14;
  v16 = v14[1];
  v17 = *(*(a1 - 8) + 8);

  v17(v3, a1);
  return v20(v13, v15, v16, v5, *(a1 + 24), v10, *(a1 + 40));
}

uint64_t AsyncSequence.compactMap<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, v7);
  v15 = (a7 + *(a6(0, a3, a4, a5) + 44));
  *v15 = a1;
  v15[1] = a2;
}

uint64_t AsyncCompactMapSequence.init(_:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  result = a7(0, a4, a5, a6);
  v16 = (a8 + *(result + 44));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t AsyncCompactMapSequence.Iterator.baseIterator.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t AsyncCompactMapSequence.Iterator.baseIterator.setter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 40);

  return v5(v2, a1, AssociatedTypeWitness);
}

uint64_t AsyncThrowingCompactMapSequence.Iterator.init(_:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v12 = a7(0, a4, a5, a6);
  *(a8 + *(v12 + 48)) = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a8, a1, AssociatedTypeWitness);
  v15 = (a8 + *(v12 + 44));
  *v15 = a2;
  v15[1] = a3;
  return result;
}

void AsyncThrowingMapSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 32);
  v3[6] = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v3[10] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(AssociatedTypeWitness - 8);
  v3[11] = v7;
  v3[12] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncThrowingMapSequence.Iterator.next(), 0, 0);
}

uint64_t AsyncThrowingMapSequence.Iterator.next()()
{
  v1 = v0[3];
  if (*(v0[4] + *(v1 + 48)))
  {
    v2 = v0[12];
    v3 = v0[10];
    (*(*(*(v1 + 24) - 8) + 56))(v0[2], 1, 1);
    v2;
    v3;
    v4 = v0[1];

    return v4();
  }

  else
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = *(AssociatedConformanceWitness + 32);
    v8 = swift_checkMetadataState();
    v11 = (v7 + *v7);
    v9 = swift_task_alloc(v7[1]);
    v0[13] = v9;
    *v9 = v0;
    v9[1] = AsyncThrowingMapSequence.Iterator.next();
    v10 = v0[10];

    return v11(v10, v8, AssociatedConformanceWitness);
  }
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[9] + 8))(v1, v0[8]);
    v4 = v0[12];
    v5 = v0[10];
    (*(*(*(v0[3] + 24) - 8) + 56))(v0[2], 1, 1);
    v4;
    v5;
    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[3];
    v8 = v0[4];
    (*(v2 + 32))(v0[12], v1, v3);
    v10 = (v8 + *(v9 + 44));
    v11 = *v10;
    v0[15] = v10[1];

    v15 = (v11 + *v11);
    v12 = swift_task_alloc(v11[1]);
    v0[16] = v12;
    *v12 = v0;
    v12[1] = AsyncThrowingMapSequence.Iterator.next();
    v13 = v0[12];
    v14 = v0[2];

    return v15(v14, v13);
  }
}

{
  v1 = v0[12];
  v2 = v0[10];
  (*(*(*(v0[3] + 24) - 8) + 56))(v0[2], 0, 1);
  v1;
  v2;
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[10];
  v0[12];
  v1;
  v2 = v0[1];

  return v2();
}

void AsyncThrowingMapSequence.Iterator.next()()
{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = AsyncThrowingMapSequence.Iterator.next();
  }

  else
  {
    v3 = AsyncThrowingMapSequence.Iterator.next();
  }

  swift_task_switch(v3, 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  *(*v1 + 136) = v0;
  v3;
  v4 = v2[12];
  v5 = v2[11];
  v6 = v2[7];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = AsyncThrowingMapSequence.Iterator.next();
  }

  else
  {
    (*(v5 + 8))(v2[12], v2[7]);

    v7 = AsyncThrowingMapSequence.Iterator.next();
  }

  swift_task_switch(v7, 0, 0);
}

uint64_t AsyncThrowingMapSequence.Iterator.next()(uint64_t a1)
{
  *(v1[4] + *(v1[3] + 48)) = 1;
  swift_willThrow();
  v2 = v1[10];
  v1[12];
  v2;
  v3 = v1[1];

  return v3();
}

void AsyncThrowingMapSequence.Iterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *(a4 + 32);
  v5[8] = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[9] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v5[10] = v9;
  v5[11] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v5[12] = v10;
  v11 = type metadata accessor for Optional();
  v5[13] = v11;
  v12 = *(v11 - 8);
  v5[14] = v12;
  v5[15] = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 - 8);
  v5[16] = v13;
  v5[17] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v15 = (*(a3 + 8))(ObjectType, a3);
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v5[18] = v15;
  v5[19] = v17;

  swift_task_switch(AsyncThrowingMapSequence.Iterator.next(isolation:), v15, v17);
}

uint64_t AsyncThrowingMapSequence.Iterator.next(isolation:)()
{
  v1 = v0[5];
  if (*(v0[6] + *(v1 + 48)))
  {
    v2 = v0[17];
    v3 = v0[15];
    v4 = v0[11];
    (*(*(*(v1 + 24) - 8) + 56))(v0[2], 1, 1);
    v2;
    v3;
    v4;
    v5 = v0[1];

    return v5();
  }

  else
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[20] = AssociatedConformanceWitness;
    v8 = *(AssociatedConformanceWitness + 40);
    v9 = swift_checkMetadataState();
    v0[21] = v9;
    v15 = (v8 + *v8);
    v10 = swift_task_alloc(v8[1]);
    v0[22] = v10;
    *v10 = v0;
    v10[1] = AsyncThrowingMapSequence.Iterator.next(isolation:);
    v11 = v0[15];
    v12 = v0[11];
    v13 = v0[3];
    v14 = v0[4];

    return v15(v11, v13, v14, v12, v9, AssociatedConformanceWitness);
  }
}

{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[12];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[14] + 8))(v1, v0[13]);
    v4 = v0[17];
    v5 = v0[15];
    v6 = v0[11];
    (*(*(*(v0[5] + 24) - 8) + 56))(v0[2], 1, 1);
    v4;
    v5;
    v6;
    v7 = v0[1];

    return v7();
  }

  else
  {
    v10 = v0[5];
    v9 = v0[6];
    (*(v2 + 32))(v0[17], v1, v3);
    v11 = (v9 + *(v10 + 44));
    v12 = *v11;
    v0[23] = v11[1];

    v16 = (v12 + *v12);
    v13 = swift_task_alloc(v12[1]);
    v0[24] = v13;
    *v13 = v0;
    v13[1] = AsyncThrowingMapSequence.Iterator.next(isolation:);
    v14 = v0[17];
    v15 = v0[2];

    return v16(v15, v14);
  }
}

{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[11];
  (*(*(*(v0[5] + 24) - 8) + 56))(v0[2], 0, 1);
  v1;
  v2;
  v3;
  v4 = v0[1];

  return v4();
}

void AsyncThrowingMapSequence.Iterator.next(isolation:)()
{
  v2 = *v1;
  *(*v1 + 176);
  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = AsyncThrowingFilterSequence.Iterator.next(isolation:);
  }

  else
  {
    v5 = AsyncThrowingMapSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v5, v4, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v2[25] = v0;
  v3;
  v4 = v2[17];
  v5 = v2[16];
  v6 = v2[12];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v2[18];
    v8 = v2[19];
    v9 = AsyncThrowingMapSequence.Iterator.next(isolation:);
  }

  else
  {
    (*(v5 + 8))(v2[17], v2[12]);

    v7 = v2[18];
    v8 = v2[19];
    v9 = AsyncThrowingMapSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v9, v7, v8);
}

uint64_t AsyncThrowingMapSequence.Iterator.next(isolation:)(uint64_t a1)
{
  *(v1[6] + *(v1[5] + 48)) = 1;
  swift_willThrow();
  v2 = v1[15];
  v3 = v1[11];
  v1[17];
  v2;
  v3;
  v4 = v1[1];

  return v4();
}

void protocol witness for AsyncIteratorProtocol.next() in conformance AsyncThrowingMapSequence<A, B>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc(144);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  AsyncThrowingMapSequence.Iterator.next()(a1, a2);
}

void _ss24AsyncThrowingMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc(208);
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = _ss24AsyncThrowingMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  AsyncThrowingMapSequence.Iterator.next(isolation:)(a1, a2, a3, a5);
}

uint64_t _ss24AsyncThrowingMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 24);
  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t AsyncSequence.prefix(while:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 32))(a6, v6);
  v13 = (a6 + *(a5(0, a3, a4) + 36));
  *v13 = a1;
  v13[1] = a2;
}

uint64_t AsyncDropWhileSequence.init(_:predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  result = a6(0, a4, a5);
  v14 = (a7 + *(result + 36));
  *v14 = a2;
  v14[1] = a3;
  return result;
}

uint64_t AsyncPrefixWhileSequence.Iterator.baseIterator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t AsyncPrefixWhileSequence.Iterator.baseIterator.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 40);

  return v6(v2 + v4, a1, AssociatedTypeWitness);
}

uint64_t AsyncPrefixWhileSequence.Iterator.init(_:predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, _BYTE *a7@<X8>)
{
  *a7 = 0;
  v11 = a6(0, a4, a5);
  v12 = *(v11 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(&a7[v12], a1, AssociatedTypeWitness);
  v15 = &a7[*(v11 + 40)];
  *v15 = a2;
  v15[1] = a3;
  return result;
}

void AsyncThrowingPrefixWhileSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 24);
  v3[6] = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v3[10] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(AssociatedTypeWitness - 8);
  v3[11] = v7;
  v3[12] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncThrowingPrefixWhileSequence.Iterator.next(), 0, 0);
}

uint64_t AsyncThrowingPrefixWhileSequence.Iterator.next()()
{
  if (**(v0 + 32))
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 80);
    (*(*(v0 + 88) + 56))(*(v0 + 16), 1, 1, *(v0 + 56));
    v1;
    v2;
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = *(AssociatedConformanceWitness + 32);
    v7 = swift_checkMetadataState();
    v10 = (v6 + *v6);
    v8 = swift_task_alloc(v6[1]);
    *(v0 + 104) = v8;
    *v8 = v0;
    v8[1] = AsyncThrowingPrefixWhileSequence.Iterator.next();
    v9 = *(v0 + 80);

    return v10(v9, v7, AssociatedConformanceWitness);
  }
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[9] + 8))(v1, v0[8]);
    v4 = v0[12];
    v5 = v0[10];
    (*(v0[11] + 56))(v0[2], 1, 1, v0[7]);
    v4;
    v5;
    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[12];
    v10 = v0[3];
    v9 = v0[4];
    v11 = *(v2 + 32);
    v0[15] = v11;
    v0[16] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v11(v8, v1, v3);
    v12 = (v9 + *(v10 + 40));
    v13 = *v12;
    v0[17] = v12[1];

    v16 = (v13 + *v13);
    v14 = swift_task_alloc(v13[1]);
    v0[18] = v14;
    *v14 = v0;
    v14[1] = AsyncThrowingPrefixWhileSequence.Iterator.next();
    v15 = v0[12];

    return v16(v15);
  }
}

{
  if (*(v0 + 160) == 1)
  {
    (*(v0 + 120))(*(v0 + 16), *(v0 + 96), *(v0 + 56));
    v1 = 0;
  }

  else
  {
    v2 = *(v0 + 32);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 56));
    v1 = 1;
    *v2 = 1;
  }

  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  (*(*(v0 + 88) + 56))(*(v0 + 16), v1, 1, *(v0 + 56));
  v3;
  v4;
  v5 = *(v0 + 8);

  return v5();
}

void AsyncThrowingPrefixWhileSequence.Iterator.next()()
{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = AsyncThrowingDropWhileSequence.Iterator.next();
  }

  else
  {
    v3 = AsyncThrowingPrefixWhileSequence.Iterator.next();
  }

  swift_task_switch(v3, 0, 0);
}

void AsyncThrowingPrefixWhileSequence.Iterator.next()(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  *(*v2 + 152) = v1;
  v5;

  if (v1)
  {
    (*(*(v4 + 88) + 8))(*(v4 + 96), *(v4 + 56));
    v6 = AsyncThrowingPrefixWhileSequence.Iterator.next();
  }

  else
  {
    *(v4 + 160) = a1 & 1;
    v6 = AsyncThrowingPrefixWhileSequence.Iterator.next();
  }

  swift_task_switch(v6, 0, 0);
}

uint64_t AsyncThrowingPrefixWhileSequence.Iterator.next()(uint64_t a1)
{
  **(v1 + 32) = 1;
  swift_willThrow();
  v2 = *(v1 + 80);
  *(v1 + 96);
  v2;
  v3 = *(v1 + 8);

  return v3();
}

void AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *(a4 + 24);
  v5[8] = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[9] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v5[10] = v9;
  v5[11] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v5[12] = v10;
  v11 = type metadata accessor for Optional();
  v5[13] = v11;
  v12 = *(v11 - 8);
  v5[14] = v12;
  v5[15] = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 - 8);
  v5[16] = v13;
  v5[17] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v15 = (*(a3 + 8))(ObjectType, a3);
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v5[18] = v15;
  v5[19] = v17;

  swift_task_switch(AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:), v15, v17);
}

uint64_t AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:)()
{
  if (**(v0 + 48))
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 120);
    v3 = *(v0 + 88);
    (*(*(v0 + 128) + 56))(*(v0 + 16), 1, 1, *(v0 + 96));
    v1;
    v2;
    v3;
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 160) = AssociatedConformanceWitness;
    v7 = *(AssociatedConformanceWitness + 40);
    v8 = swift_checkMetadataState();
    *(v0 + 168) = v8;
    v14 = (v7 + *v7);
    v9 = swift_task_alloc(v7[1]);
    *(v0 + 176) = v9;
    *v9 = v0;
    v9[1] = AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:);
    v10 = *(v0 + 120);
    v11 = *(v0 + 88);
    v12 = *(v0 + 24);
    v13 = *(v0 + 32);

    return v14(v10, v12, v13, v11, v8, AssociatedConformanceWitness);
  }
}

{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[12];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[14] + 8))(v1, v0[13]);
    v4 = v0[17];
    v5 = v0[15];
    v6 = v0[11];
    (*(v0[16] + 56))(v0[2], 1, 1, v0[12]);
    v4;
    v5;
    v6;
    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[17];
    v11 = v0[5];
    v10 = v0[6];
    v12 = *(v2 + 32);
    v0[23] = v12;
    v0[24] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v9, v1, v3);
    v13 = (v10 + *(v11 + 40));
    v14 = *v13;
    v0[25] = v13[1];

    v17 = (v14 + *v14);
    v15 = swift_task_alloc(v14[1]);
    v0[26] = v15;
    *v15 = v0;
    v15[1] = AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:);
    v16 = v0[17];

    return v17(v16);
  }
}

{
  if (*(v0 + 224) == 1)
  {
    (*(v0 + 184))(*(v0 + 16), *(v0 + 136), *(v0 + 96));
    v1 = 0;
  }

  else
  {
    v2 = *(v0 + 48);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 96));
    v1 = 1;
    *v2 = 1;
  }

  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 88);
  (*(*(v0 + 128) + 56))(*(v0 + 16), v1, 1, *(v0 + 96));
  v3;
  v4;
  v5;
  v6 = *(v0 + 8);

  return v6();
}

void AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:)()
{
  v2 = *v1;
  *(*v1 + 176);
  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:);
  }

  else
  {
    v5 = AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v5, v4, v3);
}

void AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  *(*v2 + 216) = v1;
  v5;

  if (v1)
  {
    (*(*(v4 + 128) + 8))(*(v4 + 136), *(v4 + 96));
    v6 = *(v4 + 144);
    v7 = *(v4 + 152);
    v8 = AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:);
  }

  else
  {
    *(v4 + 224) = a1 & 1;
    v6 = *(v4 + 144);
    v7 = *(v4 + 152);
    v8 = AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v8, v6, v7);
}

uint64_t AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:)(uint64_t a1)
{
  **(v1 + 48) = 1;
  swift_willThrow();
  v2 = *(v1 + 120);
  v3 = *(v1 + 88);
  *(v1 + 136);
  v2;
  v3;
  v4 = *(v1 + 8);

  return v4();
}

void protocol witness for AsyncIteratorProtocol.next() in conformance AsyncThrowingPrefixWhileSequence<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc(176);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  AsyncThrowingPrefixWhileSequence.Iterator.next()(a1, a2);
}

void _ss32AsyncThrowingPrefixWhileSequenceV8IteratorVyx_GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc(240);
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = _ss31AsyncThrowingCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:)(a1, a2, a3, a5);
}

uint64_t UnownedJob.description.getter(uint64_t a1)
{
  if (!swift_task_getJobTaskId(a1))
  {
    return 0xD000000000000013;
  }

  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865D3D30](v1);

  MEMORY[0x1865D3D30](41, 0xE100000000000000);
  return 0x4A64656E776F6E55;
}

uint64_t Job.description.getter(uint64_t a1)
{
  if (swift_task_getJobTaskId(a1))
  {
    v1 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865D3D30](v1);

    MEMORY[0x1865D3D30](41, 0xE100000000000000);
  }

  return 0x203A646928626F4ALL;
}

uint64_t _ss11ExecutorJobV010withUnsafeA11PrivateData4bodyxxSwq_YKXE_tq_YKs5ErrorR_r0_lF(uint64_t (*a1)(uint64_t, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ExecutorPrivateData = swift_job_getExecutorPrivateData(v14);
  result = a1(ExecutorPrivateData, ExecutorPrivateData + 16, v13);
  if (v7)
  {
    return (*(v11 + 32))(a7, v13, a5);
  }

  return result;
}

unint64_t ExecutorJob.description.getter(uint64_t a1)
{
  if (!swift_task_getJobTaskId(a1))
  {
    return 0xD000000000000014;
  }

  _StringGuts.grow(_:)(19);

  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865D3D30](v1);

  MEMORY[0x1865D3D30](41, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t ExecutorJob.allocator.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = swift_job_getKind(a1);
  if (result)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1;
  }

  *a2 = v5;
  return result;
}

uint64_t ExecutorJob.LocalAllocator.allocate(capacity:)(uint64_t a1)
{
  result = swift_job_allocate(*v1, a1);
  if (a1 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ExecutorJob.LocalAllocator.allocate<A>(capacity:as:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 72);
  if ((v5 * result) >> 64 == (v5 * result) >> 63)
  {
    swift_job_allocate(*v3, v5 * result);

    return UnsafeMutableBufferPointer.init(start:count:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ExecutorJob.LocalAllocator.deallocate(_:)(uint64_t *a1, uint64_t a2, const char *a3, char *a4)
{
  if (a1)
  {
    v6 = *v4;

    return swift_job_deallocate(v6, a1, a3, a4);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ExecutorJob.LocalAllocator.deallocate<A>(_:)()
{
  v1 = *v0;
  v2 = UnsafeMutableBufferPointer.baseAddress.getter();
  if (v2)
  {

    return swift_job_deallocate(v1, v2, v3, v4);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t TaskPriority.init(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = result;
  a2[1] = result == 0;
  return result;
}

void withUnsafeContinuation<A>(isolation:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v8 = (*(a3 + 8))(ObjectType, a3);
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  swift_task_switch(withUnsafeContinuation<A>(isolation:_:), v8, v10);
}

void withUnsafeContinuation<A>(isolation:_:)()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = _unsafeInheritExecutor_withUnsafeContinuation<A>(_:);
  v3 = swift_continuation_init(v0 + 2, 0);
  v1(v3);

  swift_continuation_await((v0 + 2), v4);
}

void withUnsafeThrowingContinuation<A>(isolation:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v8 = (*(a3 + 8))(ObjectType, a3);
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  swift_task_switch(withUnsafeThrowingContinuation<A>(isolation:_:), v8, v10);
}

void withUnsafeThrowingContinuation<A>(isolation:_:)()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = withUnsafeThrowingContinuation<A>(isolation:_:);
  v3 = swift_continuation_init(v0 + 2, 1uLL);
  v1(v3);

  swift_continuation_await((v0 + 2), v4);
}

uint64_t withUnsafeThrowingContinuation<A>(isolation:_:)(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t static GlobalActor.sharedUnownedExecutor.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 8);
  v4 = swift_checkMetadataState();
  v5 = v3(v4, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t _ss24globalConcurrentExecutorSch_pvg(uint64_t a1, uint64_t a2)
{
  swift_createDefaultExecutorsOnce(a1, a2);
  if (_sScTss5NeverORszABRs_rlE16_defaultExecutorSch_pSgvpZ)
  {
    return swift_unknownObjectRetain();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for MainActor();
  result = swift_initStaticObject();
  static MainActor.shared = result;
  return result;
}

void static MainActor.run<A>(resultType:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  inited = swift_initStaticObject();
  MainExecutor = swift_task_getMainExecutor(inited);

  swift_task_switch(static MainActor.run<A>(resultType:body:), MainExecutor, v6);
}

uint64_t static MainActor.run<A>(resultType:body:)()
{
  (*(v0 + 24))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static MainActor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v10 = a1;
  if (one-time initialization token for shared != -1)
  {
    a1 = swift_once();
  }

  MainExecutor = swift_task_getMainExecutor(a1);
  if ((swift_task_isCurrentExecutor(MainExecutor, v12) & 1) == 0)
  {
    goto LABEL_10;
  }

  v13 = swift_allocObject();
  v13[2] = a7;
  v13[3] = v10;
  v13[4] = a2;
  partial apply for thunk for @callee_guaranteed () -> (@out A, @error @owned Error)();
  if (v7)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v16 = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
LABEL_10:
    _StringGuts.grow(_:)(66);
    MEMORY[0x1865D3D30](0xD00000000000003FLL, 0x800000018161DC90);
    v17 = _typeName(_:qualified:)();
    MEMORY[0x1865D3D30](v17);

    MEMORY[0x1865D3D30](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  return static MainActor.assumeIsolated<A>(_:file:line:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t specialized PriorityQueue.upHeap(ndx:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (a1 >= 1)
    {
      goto LABEL_3;
    }

LABEL_8:
    *v1 = v3;
    return result;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  v3 = result;
  if (a1 < 1)
  {
    goto LABEL_8;
  }

LABEL_3:
  v5 = v3 + 32;
  while (a1 < *(v3 + 16))
  {
    v6 = a1 >> 1;
    v7 = v1[1];
    v8 = *(v5 + 8 * a1);
    v11 = *(v5 + 8 * (a1 >> 1));
    v12 = v8;
    result = v7(&v12, &v11);
    if ((result & 1) == 0)
    {
      goto LABEL_8;
    }

    if (a1 >= *(v3 + 16))
    {
      break;
    }

    v9 = *(v5 + 8 * a1);
    *(v5 + 8 * a1) = *(v5 + 8 * v6);
    *(v5 + 8 * v6) = v9;
    v10 = a1 > 1;
    a1 >>= 1;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t specialized MutableCollection.swapAt(_:_:)(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v4 = result;
    v5 = *v2;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(result, 1, *v2);
    v6 = *(v5 + 32 + 8 * v4);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a2, 1, v5);
    v7 = *(v5 + 32 + 8 * a2);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      v5 = result;
    }

    *(v5 + 32 + 8 * v4) = v7;
    *(v5 + 32 + 8 * a2) = v6;
    *v2 = v5;
  }

  return result;
}

uint64_t specialized RangeReplaceableCollection<>.removeLast()()
{
  if (*(*v0 + 16))
  {
    result = specialized Array._customRemoveLast()();
    if (!result)
    {
      v2 = *(*v0 + 16) - 1;

      return specialized Array.remove(at:)(v2);
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void specialized PriorityQueue.downHeap(ndx:)()
{
  v1 = *v0;
  if (*(*v0 + 16))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    v2 = 0;
    v3 = 0;
    v4 = v0[1];
    v5 = v1 + 32;
    v6 = *(v1 + 16);
    while (v3 < v6)
    {
      v13 = *(v5 + 8 * v3);
      if (v2 >= v6)
      {
        break;
      }

      v7 = v3 | 1;
      v12 = *(v5 + 8 * v2);
      if (v4(&v13, &v12))
      {
        v8 = v3;
      }

      else
      {
        v8 = v2;
      }

      v9 = *(v1 + 16);
      if (v7 < v9)
      {
        v13 = *(v5 + 8 * v7);
        if (v8 >= v9)
        {
          break;
        }

        v12 = *(v5 + 8 * v8);
        if (v4(&v13, &v12))
        {
          v8 = v3 | 1;
        }
      }

      if (v8 == v2)
      {
LABEL_18:
        *v0 = v1;
        return;
      }

      v10 = *(v1 + 16);
      if (v2 >= v10 || v8 >= v10)
      {
        break;
      }

      v11 = *(v5 + 8 * v2);
      *(v5 + 8 * v2) = *(v5 + 8 * v8);
      *(v5 + 8 * v8) = v11;
      if ((v8 + 0x4000000000000000) < 0)
      {
        __break(1u);
        goto LABEL_21;
      }

      v3 = 2 * v8;
      v6 = *(v1 + 16);
      v2 = v8;
      if (2 * v8 >= v6)
      {
        goto LABEL_18;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void static Task<>.yield()()
{
  swift_task_switch(static Task<>.yield(), 0, 0);
}

{
  v8 = v0;
  *(v0 + 16) = v0;
  *(v0 + 24) = _unsafeInheritExecutor_withUnsafeContinuation<A>(_:);
  v1 = swift_continuation_init((v0 + 16), 0);
  static Task<>.currentPriority.getter(&v7);
  NullaryContinuationJob = swift_task_createNullaryContinuationJob(v7, v1);
  specialized static Task<>.currentExecutor.getter();
  v4 = v3;
  ObjectType = swift_getObjectType();
  (*(v4 + 24))(NullaryContinuationJob, ObjectType, v4);
  swift_unknownObjectRelease();

  swift_continuation_await((v0 + 16), v6);
}

uint64_t withTaskCancellationHandler<A>(operation:onCancel:)(uint64_t a1, int *a2, uint64_t a3, swift *a4, uint64_t a5)
{
  *(v5 + 16) = swift_task_addCancellationHandler(a4, a5);
  v10 = (a2 + *a2);
  v8 = swift_task_alloc(a2[1]);
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = withTaskCancellationHandler<A>(operation:onCancel:);

  return v10(a1);
}

uint64_t withTaskCancellationHandler<A>(operation:onCancel:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;
  *(*v0 + 24);
  swift_task_removeCancellationHandler(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t Task.result.getter(uint64_t a1, swift::AsyncTask *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a1;
  v5[4] = a3;
  v8 = swift_task_alloc(64);
  v5[7] = v8;
  *v8 = v5;
  v8[1] = Task.result.getter;

  return Task.value.getter(a1, a2);
}

void Task.result.getter()
{
  v2 = *(*v1 + 56);
  *(*v1 + 64) = v0;
  v2;
  if (v0)
  {
    v3 = Task.result.getter;
  }

  else
  {
    v3 = Task.result.getter;
  }

  swift_task_switch(v3, 0, 0);
}

uint64_t Task.result.getter()
{
  type metadata accessor for Result();
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 8);

  return v1();
}

{
  v0[2] = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();
  type metadata accessor for Result();
  swift_storeEnumTagMultiPayload();
  v1 = v0[1];

  return v1();
}

Swift::Int Task.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1865D4230](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Task<A, B>(uint64_t a1)
{
  Hasher.init(_seed:)();
  Task.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

unint64_t TaskPriority.description.getter()
{
  v1 = *v0;
  v2 = (((v1 - 9) >> 2) | ((v1 - 9) << 6));
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        return 0xD000000000000011;
      }

      goto LABEL_8;
    }

    return 0xD000000000000013;
  }

  else
  {
    if (((v1 - 9) >> 2) | ((v1 - 9) << 6))
    {
      if (v2 == 2)
      {
        return 0xD000000000000010;
      }

LABEL_8:
      _StringGuts.grow(_:)(16);

      v4 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865D3D30](v4);

      MEMORY[0x1865D3D30](41, 0xE100000000000000);
      return 0xD000000000000017;
    }

    return 0xD000000000000017;
  }
}

unint64_t static Task<>.currentPriority.getter@<X0>(_BYTE *a1@<X8>)
{
  if (swift_task_getCurrent())
  {

    v2 = swift_task_currentPriority();

LABEL_5:
    *a1 = v2;
    return result;
  }

  result = swift_task_getCurrentThreadPriority();
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = result;
    if (result < 0x100)
    {
      goto LABEL_5;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t UnsafeCurrentTask.priority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_task_currentPriority();
  *a1 = result;
  return result;
}

uint64_t withUnsafeCurrentTask<A>(body:)(uint64_t (*a1)(uint64_t *))
{
  Current = swift_task_getCurrent();
  if (Current)
  {
    v4 = Current;

    a1(&v4);
  }

  else
  {
    v4 = 0;
    return a1(&v4);
  }
}

uint64_t static Task<>.basePriority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_task_getCurrent();
  v3 = result;
  if (result)
  {

    v5 = swift_task_basePriority(v4);
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  a1[1] = v3 == 0;
  return result;
}

swift::AsyncTask *static Task<>.name.getter()
{
  result = swift_task_getCurrentTaskName();
  if (result)
  {
    return String.init(cString:)();
  }

  return result;
}

void withUnsafeCurrentTask<A>(body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  swift_task_switch(withUnsafeCurrentTask<A>(body:), 0, 0);
}

uint64_t withUnsafeCurrentTask<A>(body:)()
{
  Current = swift_task_getCurrent();
  v2 = v0[5];
  if (Current)
  {
    v0[3] = Current;
    v3 = v0 + 3;

    v8 = (v2 + *v2);
    v4 = swift_task_alloc(v2[1]);
    v0[7] = v4;
    *v4 = v0;
    v5 = withUnsafeCurrentTask<A>(body:);
  }

  else
  {
    v0[2] = 0;
    v3 = v0 + 2;
    v8 = (v2 + *v2);
    v4 = swift_task_alloc(v2[1]);
    v0[9] = v4;
    *v4 = v0;
    v5 = withUnsafeCurrentTask<A>(body:);
  }

  v4[1] = v5;
  v6 = v0[4];

  return (v8)(v6, v3);
}

{
  return (*(v0 + 8))();
}

{
  return (*(v0 + 8))();
}

void withUnsafeCurrentTask<A>(body:)()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;
  v2;

  if (v0)
  {

    swift_task_switch(withUnsafeCurrentTask<A>(body:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    v4();
  }
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;
  v2;
  if (v0)
  {

    swift_task_switch(withUnsafeCurrentTask<A>(body:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    v4();
  }
}

uint64_t UnsafeCurrentTask.basePriority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_task_basePriority(*v1);
  *a1 = result;
  return result;
}

Swift::Int UnsafeCurrentTask.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865D4230](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UnsafeCurrentTask()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865D4230](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnsafeCurrentTask(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1865D4230](v2);
  return Hasher._finalize()();
}

void _runAsyncMain(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = swift_task_create(0, 0, MEMORY[0x1E69E7CA8] + 8, &async function pointer to partial apply for closure #1 in _runAsyncMain(_:), v4);
  swift_createDefaultExecutorsOnce(v5, v6);
  if (static MainActor._executor)
  {
    v7 = qword_1ED42D448;
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    v10 = *(v9 + 32);
    swift_unknownObjectRetain();
    v10(v5, ObjectType, v9);
    swift_unknownObjectRelease();
    swift_task_asyncMainDrainQueue();
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t closure #1 in _runAsyncMain(_:)(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc(a2[1]);
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = closure #1 in _runAsyncMain(_:);

  return v5();
}

void closure #1 in _runAsyncMain(_:)()
{
  v2 = *(*v1 + 16);
  *(*v1 + 24) = v0;
  v2;
  if (v0)
  {
    v3 = closure #1 in _runAsyncMain(_:);
  }

  else
  {
    v3 = closure #1 in _runAsyncMain(_:);
  }

  swift_task_switch(v3, 0, 0);
}

{
  exit(0);
}

uint64_t closure #1 in _runAsyncMain(_:)()
{
  v1 = *(v0 + 24);
  swift_errorInMain();
  MEMORY[0x1865D4950](v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t _swift_task_isCurrentGlobalActor(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))(a1);

  return swift_task_isCurrentExecutorWithFlags(v2, v3, 0);
}

void _ss33withTaskPriorityEscalationHandler9operation02onC9Escalated9isolationxxyYaq_YKXE_yScP_ScPtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v18;
  v8[12] = v19;
  v8[9] = a8;
  v8[10] = v17;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v11 = *(v17 - 8);
  v8[13] = v11;
  v8[14] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    ObjectType = swift_getObjectType();
    v13 = (*(a7 + 8))(ObjectType, a7);
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v8[15] = v13;
  v8[16] = v15;

  swift_task_switch(_ss33withTaskPriorityEscalationHandler9operation02onC9Escalated9isolationxxyYaq_YKXE_yScP_ScPtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTY0_, v13, v15);
}

void _ss33withTaskPriorityEscalationHandler9operation02onC9Escalated9isolationxxyYaq_YKXE_yScP_ScPtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTY0_()
{
  v1 = swift_task_alloc(32);
  *(v0 + 136) = v1;
  *(v1 + 16) = *(v0 + 40);
  v2 = swift_task_alloc(128);
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = _ss33withTaskPriorityEscalationHandler9operation02onC9Escalated9isolationxxyYaq_YKXE_yScP_ScPtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTQ1_;

  JUMPOUT(0x1815CFDA4);
}

void _ss33withTaskPriorityEscalationHandler9operation02onC9Escalated9isolationxxyYaq_YKXE_yScP_ScPtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  v3;
  if (v0)
  {
    v5 = v2[15];
    v6 = v2[16];

    swift_task_switch(_ss33withTaskPriorityEscalationHandler9operation02onC9Escalated9isolationxxyYaq_YKXE_yScP_ScPtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTY2_, v5, v6);
  }

  else
  {
    v7 = v2[14];
    v2[17];
    v7;
    v8 = *(v4 + 8);

    v8();
  }
}

uint64_t _ss33withTaskPriorityEscalationHandler9operation02onC9Escalated9isolationxxyYaq_YKXE_yScP_ScPtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTY2_()
{
  v1 = v0[17];
  v2 = v0[14];
  (*(v0[13] + 32))(v0[12], v2, v0[10]);
  v1;
  v2;
  v3 = v0[1];

  return v3();
}

void _ss36__withTaskPriorityEscalationHandler09operation02onC9Escalated9isolationxxyYaq_YKXE_ys5UInt8V_AFtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = v16;
  v7[8] = v17;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v10 = *(v16 - 8);
  v7[9] = v10;
  v7[10] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    ObjectType = swift_getObjectType();
    v12 = (*(a7 + 8))(ObjectType, a7);
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v7[11] = v12;
  v7[12] = v14;

  swift_task_switch(_ss36__withTaskPriorityEscalationHandler09operation02onC9Escalated9isolationxxyYaq_YKXE_ys5UInt8V_AFtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTY0_, v12, v14);
}

uint64_t _ss36__withTaskPriorityEscalationHandler09operation02onC9Escalated9isolationxxyYaq_YKXE_ys5UInt8V_AFtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTY0_()
{
  v1 = *(v0 + 24);
  *(v0 + 104) = swift_task_addPriorityEscalationHandler(*(v0 + 40), *(v0 + 48));
  v6 = (v1 + *v1);
  v2 = swift_task_alloc(v1[1]);
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = _ss36__withTaskPriorityEscalationHandler09operation02onC9Escalated9isolationxxyYaq_YKXE_ys5UInt8V_AFtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTQ1_;
  v3 = *(v0 + 80);
  v4 = *(v0 + 16);

  return v6(v4, v3);
}

void _ss36__withTaskPriorityEscalationHandler09operation02onC9Escalated9isolationxxyYaq_YKXE_ys5UInt8V_AFtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTQ1_()
{
  v2 = *v1;
  *(*v1 + 112);
  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = _ss36__withTaskPriorityEscalationHandler09operation02onC9Escalated9isolationxxyYaq_YKXE_ys5UInt8V_AFtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTY3_;
  }

  else
  {
    v5 = _ss36__withTaskPriorityEscalationHandler09operation02onC9Escalated9isolationxxyYaq_YKXE_ys5UInt8V_AFtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTY2_;
  }

  swift_task_switch(v5, v4, v3);
}

uint64_t _ss36__withTaskPriorityEscalationHandler09operation02onC9Escalated9isolationxxyYaq_YKXE_ys5UInt8V_AFtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTY2_()
{
  v1 = *(v0 + 80);
  swift_task_removePriorityEscalationHandler(*(v0 + 104));
  v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t _ss36__withTaskPriorityEscalationHandler09operation02onC9Escalated9isolationxxyYaq_YKXE_ys5UInt8V_AFtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTY3_()
{
  v1 = v0[13];
  v2 = v0[10];
  (*(v0[9] + 32))(v0[8], v2, v0[7]);
  swift_task_removePriorityEscalationHandler(v1);
  v2;
  v3 = v0[1];

  return v3();
}

void _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = v17;
  v7[8] = v18;
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v10 = *(v17 - 8);
  v7[9] = v10;
  v11 = *(v10 + 64) + 15;
  v7[10] = swift_task_alloc(v11 & 0xFFFFFFFFFFFFFFF0);
  v7[11] = swift_task_alloc(v11 & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    ObjectType = swift_getObjectType();
    v13 = (*(a5 + 8))(ObjectType, a5);
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v7[12] = v13;
  v7[13] = v15;

  swift_task_switch(_ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTY0_, v13, v15);
}

uint64_t _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTY0_()
{
  v1 = v0[5];
  if (v0[3])
  {
    v2 = v0[4];
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 40))(ObjectType, v2);
    v0[14] = swift_task_pushTaskExecutorPreference(v4, v5);
    v11 = (v1 + *v1);
    v6 = swift_task_alloc(v1[1]);
    v0[15] = v6;
    *v6 = v0;
    v6[1] = _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTQ1_;
    v7 = v0[11];
  }

  else
  {
    v11 = (v1 + *v1);
    v8 = swift_task_alloc(v1[1]);
    v0[16] = v8;
    *v8 = v0;
    v8[1] = _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTQ3_;
    v7 = v0[10];
  }

  v9 = v0[2];

  return v11(v9, v7);
}

void _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTQ1_()
{
  v2 = *v1;
  *(*v1 + 120);
  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTY5_;
  }

  else
  {
    v5 = _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTY2_;
  }

  swift_task_switch(v5, v4, v3);
}

uint64_t _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTY2_()
{
  swift_task_popTaskExecutorPreference(v0[14]);
  v1 = v0[10];
  v0[11];
  v1;
  v2 = v0[1];

  return v2();
}

void _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTQ3_()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  v3;
  if (v0)
  {
    v5 = v2[12];
    v6 = v2[13];

    swift_task_switch(_ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTY4_, v5, v6);
  }

  else
  {
    v7 = v2[10];
    v2[11];
    v7;
    v8 = *(v4 + 8);

    v8();
  }
}

uint64_t _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTY4_()
{
  (*(v0[9] + 32))(v0[8], v0[10], v0[7]);
  v1 = v0[10];
  v0[11];
  v1;
  v2 = v0[1];

  return v2();
}

uint64_t _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTY5_()
{
  v1 = v0[14];
  (*(v0[9] + 32))(v0[8], v0[11], v0[7]);
  swift_task_popTaskExecutorPreference(v1);
  v2 = v0[10];
  v0[11];
  v2;
  v3 = v0[1];

  return v3();
}

uint64_t _ss26withTaskExecutorPreference_9operationxSch_pSg_xyYaYbKXEtYaKs8SendableRzlF(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v6 = v4;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v10 = (*(a3 + 40))(ObjectType, a3);
    v6[2] = swift_task_pushTaskExecutorPreference(v10, v11);
    v15 = (a4 + *a4);
    v12 = swift_task_alloc(a4[1]);
    v6[3] = v12;
    *v12 = v6;
    v13 = _ss26withTaskExecutorPreference_9operationxSch_pSg_xyYaYbKXEtYaKs8SendableRzlFTQ0_;
  }

  else
  {
    v15 = (a4 + *a4);
    v12 = swift_task_alloc(a4[1]);
    v6[4] = v12;
    *v12 = v6;
    v13 = _ss26withTaskExecutorPreference_9operationxSch_pSg_xyYaYbKXEtYaKs8SendableRzlFTQ1_;
  }

  v12[1] = v13;

  return v15(a1);
}

uint64_t _ss26withTaskExecutorPreference_9operationxSch_pSg_xyYaYbKXEtYaKs8SendableRzlFTQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;
  *(*v0 + 24);
  swift_task_popTaskExecutorPreference(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t _ss26withTaskExecutorPreference_9operationxSch_pSg_xyYaYbKXEtYaKs8SendableRzlFTQ1_()
{
  v3 = *v0;
  *(*v0 + 32);
  v1 = *(v3 + 8);

  return v1();
}

void withTaskCancellationHandler<A>(operation:onCancel:isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  if (a6)
  {
    ObjectType = swift_getObjectType();
    v10 = (*(a7 + 8))(ObjectType, a7);
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v7[7] = v10;
  v7[8] = v12;

  swift_task_switch(withTaskCancellationHandler<A>(operation:onCancel:isolation:), v10, v12);
}

uint64_t withTaskCancellationHandler<A>(operation:onCancel:isolation:)()
{
  v1 = *(v0 + 24);
  *(v0 + 72) = swift_task_addCancellationHandler(*(v0 + 40), *(v0 + 48));
  v5 = (v1 + *v1);
  v2 = swift_task_alloc(v1[1]);
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = withTaskCancellationHandler<A>(operation:onCancel:isolation:);
  v3 = *(v0 + 16);

  return v5(v3);
}

{
  swift_task_removeCancellationHandler(*(v0 + 72));
  v1 = *(v0 + 8);

  return v1();
}

{
  swift_task_removeCancellationHandler(*(v0 + 72));
  v1 = *(v0 + 8);

  return v1();
}

void withTaskCancellationHandler<A>(operation:onCancel:isolation:)()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  *(*v1 + 88) = v0;
  v3;
  v4 = *(v2 + 64);
  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = withTaskCancellationHandler<A>(operation:onCancel:isolation:);
  }

  else
  {
    v6 = withTaskCancellationHandler<A>(operation:onCancel:isolation:);
  }

  swift_task_switch(v6, v5, v4);
}

uint64_t static Task<>.isCancelled.getter()
{
  result = swift_task_getCurrent();
  if (result)
  {

    isCancelled = swift_task_isCancelled();

    return isCancelled & 1;
  }

  return result;
}

uint64_t static Task<>.checkCancellation()()
{
  result = swift_task_getCurrent();
  if (result)
  {

    isCancelled = swift_task_isCancelled();

    if (isCancelled)
    {
      lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

void TaskGroup.awaitAllRemainingTasks()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(a1 + 16);
  v3 = type metadata accessor for Optional();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_task_alloc(96);
  v2[8] = v5;
  *v5 = v2;
  v5[1] = TaskGroup.awaitAllRemainingTasks();
  v6 = v2[7];

  TaskGroup.next(isolation:)(v6, 0, 0);
}

void TaskGroup.awaitAllRemainingTasks()()
{
  *(*v0 + 64);

  swift_task_switch(TaskGroup.awaitAllRemainingTasks(), 0, 0);
}

{
  v1 = v0[7];
  v2 = (*(*(v0[4] - 8) + 48))(v1, 1);
  (*(v0[6] + 8))(v1, v0[5]);
  if (v2 == 1)
  {
    v1;
    v3 = v0[1];

    v3();
  }

  else
  {
    v4 = swift_task_alloc(96);
    v0[8] = v4;
    *v4 = v0;
    v4[1] = TaskGroup.awaitAllRemainingTasks();
    v5 = v0[7];

    TaskGroup.next(isolation:)(v5, 0, 0);
  }
}

void withTaskGroup<A, B>(of:returning:isolation:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[37] = a7;
  v8[38] = a8;
  v8[35] = a1;
  v8[36] = a6;
  if (a4)
  {
    ObjectType = swift_getObjectType();
    v11 = (*(a5 + 8))(ObjectType, a5);
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v8[39] = v11;
  v8[40] = v13;

  swift_task_switch(withTaskGroup<A, B>(of:returning:isolation:body:), v11, v13);
}

uint64_t withTaskGroup<A, B>(of:returning:isolation:body:)()
{
  v1 = v0[36];
  swift_taskGroup_initialize((v0 + 2), v0[38]);
  v0[34] = v0 + 2;
  v5 = (v1 + *v1);
  v2 = swift_task_alloc(v1[1]);
  v0[41] = v2;
  *v2 = v0;
  v2[1] = withTaskGroup<A, B>(of:returning:isolation:body:);
  v3 = v0[35];

  return (v5)(v3, v0 + 34);
}

{
  swift_taskGroup_destroy((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void withTaskGroup<A, B>(of:returning:isolation:body:)()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v7 = *v0;
  *(*v0 + 328);
  v3 = swift_task_alloc(80);
  *(v1 + 336) = v3;
  v6 = type metadata accessor for TaskGroup(0, v2, v4, v5);
  *v3 = v7;
  v3[1] = withTaskGroup<A, B>(of:returning:isolation:body:);

  TaskGroup.awaitAllRemainingTasks()(v6);
}

{
  v1 = *v0;
  *(*v0 + 336);
  v2 = *(v1 + 320);
  v3 = *(v1 + 312);

  swift_task_switch(withTaskGroup<A, B>(of:returning:isolation:body:), v3, v2);
}

uint64_t withTaskGroup<A, B>(of:returning:body:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[35] = a6;
  swift_taskGroup_initialize((v6 + 2), a6);
  v6[34] = v6 + 2;
  v11 = a4 + *a4;
  v9 = swift_task_alloc(a4[1]);
  v6[36] = v9;
  *v9 = v6;
  v9[1] = withTaskGroup<A, B>(of:returning:body:);

  return (v11)(a1, v6 + 34);
}

void withTaskGroup<A, B>(of:returning:body:)()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v7 = *v0;
  *(*v0 + 288);
  v3 = swift_task_alloc(80);
  *(v1 + 296) = v3;
  v6 = type metadata accessor for TaskGroup(0, v2, v4, v5);
  *v3 = v7;
  v3[1] = withTaskGroup<A, B>(of:returning:body:);

  TaskGroup.awaitAllRemainingTasks()(v6);
}

uint64_t withTaskGroup<A, B>(of:returning:body:)()
{
  v1 = *v0;
  v4 = *v0;
  *(*v0 + 296);
  swift_taskGroup_destroy((v1 + 16));
  v2 = *(v4 + 8);

  return v2();
}

void ThrowingTaskGroup.awaitAllRemainingTasks()(uint64_t a1)
{
  v3 = swift_task_alloc(96);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  ThrowingTaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, a1);
}

void withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[37] = a7;
  v8[38] = a8;
  v8[35] = a1;
  v8[36] = a6;
  if (a4)
  {
    ObjectType = swift_getObjectType();
    v11 = (*(a5 + 8))(ObjectType, a5);
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v8[39] = v11;
  v8[40] = v13;

  swift_task_switch(withThrowingTaskGroup<A, B>(of:returning:isolation:body:), v11, v13);
}

uint64_t withThrowingTaskGroup<A, B>(of:returning:isolation:body:)()
{
  v1 = v0[36];
  swift_taskGroup_initialize((v0 + 2), v0[38]);
  v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v0[34] = v0 + 2;
  v5 = (v1 + *v1);
  v2 = swift_task_alloc(v1[1]);
  v0[42] = v2;
  *v2 = v0;
  v2[1] = withThrowingTaskGroup<A, B>(of:returning:isolation:body:);
  v3 = v0[35];

  return (v5)(v3, v0 + 34);
}

{
  swift_taskGroup_destroy((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

{
  swift_taskGroup_destroy((v0 + 16));
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

void withThrowingTaskGroup<A, B>(of:returning:isolation:body:)()
{
  v2 = *(*v1 + 336);
  v3 = *v1;
  v3[43] = v0;
  v2;
  if (v0)
  {
    v4 = v3[39];
    v5 = v3[40];

    swift_task_switch(withThrowingTaskGroup<A, B>(of:returning:isolation:body:), v4, v5);
  }

  else
  {
    v6 = v3[41];
    v7 = v3[38];
    v8 = swift_task_alloc(32);
    v3[44] = v8;
    v9 = type metadata accessor for ThrowingTaskGroup(0, v7, v6, MEMORY[0x1E69E7288]);
    *v8 = v3;
    v8[1] = withThrowingTaskGroup<A, B>(of:returning:isolation:body:);

    ThrowingTaskGroup.awaitAllRemainingTasks()(v9);
  }
}

{
  v1 = *v0;
  *(*v0 + 352);
  v2 = *(v1 + 320);
  v3 = *(v1 + 312);

  swift_task_switch(withThrowingTaskGroup<A, B>(of:returning:isolation:body:), v3, v2);
}

{
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  swift_taskGroup_cancelAll(*(v0 + 272));
  v3 = swift_task_alloc(32);
  *(v0 + 360) = v3;
  v4 = type metadata accessor for ThrowingTaskGroup(0, v2, v1, MEMORY[0x1E69E7288]);
  *v3 = v0;
  v3[1] = withThrowingTaskGroup<A, B>(of:returning:isolation:body:);

  ThrowingTaskGroup.awaitAllRemainingTasks()(v4);
}

{
  v1 = *v0;
  *(*v0 + 360);
  v2 = *(v1 + 320);
  v3 = *(v1 + 312);

  swift_task_switch(withThrowingTaskGroup<A, B>(of:returning:isolation:body:), v3, v2);
}

uint64_t withThrowingTaskGroup<A, B>(of:returning:body:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[35] = a6;
  swift_taskGroup_initialize((v6 + 2), a6);
  v6[36] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6[34] = v6 + 2;
  v11 = a4 + *a4;
  v9 = swift_task_alloc(a4[1]);
  v6[37] = v9;
  *v9 = v6;
  v9[1] = withThrowingTaskGroup<A, B>(of:returning:body:);

  return (v11)(a1, v6 + 34);
}

void withThrowingTaskGroup<A, B>(of:returning:body:)()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(v2 + 304) = v0;
  v3;
  v5 = *(v2 + 288);
  v6 = *(v2 + 280);
  if (v0)
  {
    swift_taskGroup_cancelAll(*(v2 + 272));
    v7 = swift_task_alloc(32);
    *(v2 + 320) = v7;
    v8 = type metadata accessor for ThrowingTaskGroup(0, v6, v5, MEMORY[0x1E69E7288]);
    *v7 = v4;
    v9 = withThrowingTaskGroup<A, B>(of:returning:body:);
  }

  else
  {
    v7 = swift_task_alloc(32);
    *(v2 + 312) = v7;
    v8 = type metadata accessor for ThrowingTaskGroup(0, v6, v5, MEMORY[0x1E69E7288]);
    *v7 = v4;
    v9 = withThrowingTaskGroup<A, B>(of:returning:body:);
  }

  v7[1] = v9;

  ThrowingTaskGroup.awaitAllRemainingTasks()(v8);
}

uint64_t withThrowingTaskGroup<A, B>(of:returning:body:)()
{
  v1 = *v0;
  v4 = *v0;
  *(*v0 + 312);
  swift_taskGroup_destroy((v1 + 16));
  v2 = *(v4 + 8);

  return v2();
}

{
  v1 = *v0;
  v4 = *v0;
  *(*v0 + 320);
  swift_taskGroup_destroy((v1 + 16));
  swift_willThrow();
  v2 = *(v4 + 8);

  return v2();
}

void TaskGroup.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a1;
  v4[8] = v3;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v7 = (*(a3 + 8))(ObjectType, a3);
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[9] = v7;
  v4[10] = v9;

  swift_task_switch(TaskGroup.next(isolation:), v7, v9);
}

uint64_t TaskGroup.next(isolation:)()
{
  return swift_taskGroup_wait_next_throwing(*(v0 + 56), **(v0 + 64), TaskGroup.next(isolation:), (v0 + 16));
}

{
  return swift_unexpectedError();
}

void TaskGroup.next(isolation:)()
{
  *(v1 + 88) = v0;
  if (v0)
  {
    swift_task_switch(TaskGroup.next(isolation:), *(v1 + 72), *(v1 + 80));
  }

  else
  {
    (*(v1 + 8))();
  }
}

void TaskGroup.next()(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  swift_task_switch(TaskGroup.next(), 0, 0);
}

uint64_t TaskGroup.next()()
{
  return swift_taskGroup_wait_next_throwing(*(v0 + 56), **(v0 + 64), TaskGroup.next(), (v0 + 16));
}

{
  return swift_unexpectedError();
}

void TaskGroup.next()()
{
  *(v1 + 72) = v0;
  if (v0)
  {
    swift_task_switch(TaskGroup.next(), 0, 0);
  }

  else
  {
    (*(v1 + 8))();
  }
}

void TaskGroup.awaitAllRemainingTasks(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(a3 + 16);
  v5 = type metadata accessor for Optional();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_task_alloc(96);
  v4[10] = v7;
  *v7 = v4;
  v7[1] = TaskGroup.awaitAllRemainingTasks(isolation:);
  v8 = v4[9];
  v9 = v4[2];
  v10 = v4[3];

  TaskGroup.next(isolation:)(v8, v9, v10);
}

void TaskGroup.awaitAllRemainingTasks(isolation:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  *(*v0 + 80);
  if (v2)
  {
    v3 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(ObjectType, v3);
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  swift_task_switch(TaskGroup.awaitAllRemainingTasks(isolation:), v5, v7);
}

{
  v1 = v0[9];
  if ((*(*(v0[6] - 8) + 48))(v1, 1) == 1)
  {
    (*(v0[8] + 8))(v1, v0[7]);
    v1;
    v2 = v0[1];

    v2();
  }

  else
  {
    (*(v0[8] + 8))(v1, v0[7]);
    v3 = swift_task_alloc(96);
    v0[10] = v3;
    *v3 = v0;
    v3[1] = TaskGroup.awaitAllRemainingTasks(isolation:);
    v4 = v0[9];
    v5 = v0[2];
    v6 = v0[3];

    TaskGroup.next(isolation:)(v4, v5, v6);
  }
}

void ThrowingTaskGroup.awaitAllRemainingTasks(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(a3 + 16);
  v5 = type metadata accessor for Optional();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_task_alloc(80);
  v4[10] = v7;
  *v7 = v4;
  v7[1] = ThrowingTaskGroup.awaitAllRemainingTasks(isolation:);
  v8 = v4[9];
  v9 = v4[2];
  v10 = v4[3];

  ThrowingTaskGroup.next(isolation:)(v8, v9, v10);
}

void ThrowingTaskGroup.awaitAllRemainingTasks(isolation:)()
{
  v3 = *v1;
  v2 = *v1;
  *(*v1 + 80);
  v4 = *(v2 + 16);
  if (v0)
  {
    MEMORY[0x1865D4950](v0);
    if (v4)
    {
      v5 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      v7 = (*(v5 + 8))(ObjectType, v5);
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = ThrowingTaskGroup.awaitAllRemainingTasks(isolation:);
  }

  else
  {
    if (v4)
    {
      v11 = *(v3 + 24);
      v12 = swift_getObjectType();
      v7 = (*(v11 + 8))(v12, v11);
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = ThrowingTaskGroup.awaitAllRemainingTasks(isolation:);
  }

  swift_task_switch(v10, v7, v9);
}

{
  v1 = v0[9];
  if ((*(*(v0[6] - 8) + 48))(v1, 1) == 1)
  {
    (*(v0[8] + 8))(v1, v0[7]);
    v1;
    v2 = v0[1];

    v2();
  }

  else
  {
    (*(v0[8] + 8))(v1, v0[7]);
    v3 = swift_task_alloc(80);
    v0[10] = v3;
    *v3 = v0;
    v3[1] = ThrowingTaskGroup.awaitAllRemainingTasks(isolation:);
    v4 = v0[9];
    v5 = v0[2];
    v6 = v0[3];

    ThrowingTaskGroup.next(isolation:)(v4, v5, v6);
  }
}

{
  v1 = swift_task_alloc(80);
  v0[10] = v1;
  *v1 = v0;
  v1[1] = ThrowingTaskGroup.awaitAllRemainingTasks(isolation:);
  v2 = v0[9];
  v3 = v0[2];
  v4 = v0[3];

  ThrowingTaskGroup.next(isolation:)(v2, v3, v4);
}

void ThrowingTaskGroup.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = v3;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v7 = (*(a3 + 8))(ObjectType, a3);
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  swift_task_switch(ThrowingTaskGroup.next(isolation:), v7, v9);
}

void ThrowingTaskGroup._waitForAll()(uint64_t a1)
{
  v3 = swift_task_alloc(32);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = ThrowingTaskGroup._waitForAll();

  ThrowingTaskGroup.awaitAllRemainingTasks()(a1);
}

void ThrowingTaskGroup.next()(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  swift_task_switch(ThrowingTaskGroup.next(isolation:), 0, 0);
}

void ThrowingTaskGroup.nextResult()(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(a2 + 16);
  v3[11] = v4;
  v5 = type metadata accessor for Optional();
  v3[12] = v5;
  v6 = *(v5 - 8);
  v3[13] = v6;
  v3[14] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 - 8);
  v3[15] = v7;
  v3[16] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(ThrowingTaskGroup.nextResult(), 0, 0);
}

uint64_t ThrowingTaskGroup.nextResult()()
{
  return swift_taskGroup_wait_next_throwing(*(v0 + 112), **(v0 + 80), ThrowingTaskGroup.nextResult(), (v0 + 16));
}

{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[8];
    (*(v0[13] + 8))(v1, v0[12]);
    v5 = type metadata accessor for Result();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  }

  else
  {
    v6 = v0[16];
    v7 = v0[8];
    v8 = *(v2 + 32);
    v8(v6, v1, v3);
    v8(v7, v6, v3);
    v9 = type metadata accessor for Result();
    swift_storeEnumTagMultiPayload();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  }

  v10 = v0[14];
  v0[16];
  v10;
  v11 = v0[1];

  return v11();
}

{
  v1 = v0[8];
  v0[7] = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();
  v2 = type metadata accessor for Result();
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[14];
  v0[16];
  v3;
  v4 = v0[1];

  return v4();
}

void ThrowingTaskGroup.nextResult()()
{
  *(v1 + 136) = v0;
  if (v0)
  {
    v2 = ThrowingTaskGroup.nextResult();
  }

  else
  {
    v2 = ThrowingTaskGroup.nextResult();
  }

  swift_task_switch(v2, 0, 0);
}

uint64_t TaskGroup.makeAsyncIterator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

void TaskGroup.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *(a2 + 16);
  v4 = type metadata accessor for Optional();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = swift_task_alloc((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(TaskGroup.Iterator.next(), 0, 0);
}

void TaskGroup.Iterator.next()()
{
  if (*(v0[3] + 8))
  {
    (*(*(v0[4] - 8) + 56))(v0[2], 1, 1);
    v0[7];
    v1 = v0[1];

    v1();
  }

  else
  {
    v2 = swift_task_alloc(96);
    v0[8] = v2;
    *v2 = v0;
    v2[1] = TaskGroup.Iterator.next();
    v3 = v0[7];

    TaskGroup.next(isolation:)(v3, 0, 0);
  }
}

{
  *(*v0 + 64);

  swift_task_switch(TaskGroup.Iterator.next(), 0, 0);
}

uint64_t TaskGroup.Iterator.next()()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[2];
    v5 = v0[3];
    (*(v0[6] + 8))(v1, v0[5]);
    *(v5 + 8) = 1;
    (*(v3 + 56))(v4, 1, 1, v2);
  }

  else
  {
    v6 = v0[2];
    (*(v3 + 32))(v6, v1, v2);
    (*(v3 + 56))(v6, 0, 1, v2);
  }

  v0[7];
  v7 = v0[1];

  return v7();
}

void TaskGroup.Iterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = *(a4 + 16);
  v8 = type metadata accessor for Optional();
  v5[7] = v8;
  v9 = *(v8 - 8);
  v5[8] = v9;
  v5[9] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v11 = (*(a3 + 8))(ObjectType, a3);
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v5[10] = v11;
  v5[11] = v13;

  swift_task_switch(TaskGroup.Iterator.next(isolation:), v11, v13);
}

void TaskGroup.Iterator.next(isolation:)()
{
  if (*(v0[5] + 8))
  {
    (*(*(v0[6] - 8) + 56))(v0[2], 1, 1);
    v0[9];
    v1 = v0[1];

    v1();
  }

  else
  {
    v2 = swift_task_alloc(96);
    v0[12] = v2;
    *v2 = v0;
    v2[1] = TaskGroup.Iterator.next(isolation:);
    v3 = v0[9];
    v4 = v0[4];
    v5 = v0[3];

    TaskGroup.next(isolation:)(v3, v5, v4);
  }
}

{
  v1 = *v0;
  *(*v0 + 96);
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  swift_task_switch(TaskGroup.Iterator.next(isolation:), v3, v2);
}

uint64_t TaskGroup.Iterator.next(isolation:)()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[5];
    v5 = v0[2];
    (*(v0[8] + 8))(v1, v0[7]);
    *(v4 + 8) = 1;
    (*(v3 + 56))(v5, 1, 1, v2);
  }

  else
  {
    v6 = v0[2];
    (*(v3 + 32))(v6, v1, v2);
    (*(v3 + 56))(v6, 0, 1, v2);
  }

  v0[9];
  v7 = v0[1];

  return v7();
}

void protocol witness for AsyncIteratorProtocol.next() in conformance TaskGroup<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc(80);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance TaskGroup<A>.Iterator;

  TaskGroup.Iterator.next()(a1, a2);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance TaskGroup<A>.Iterator()
{
  v3 = *v0;
  *(*v0 + 16);
  v1 = *(v3 + 8);

  return v1();
}

void _sScG8IteratorVyx_GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc(112);
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = ThrowingTaskGroup._waitForAll();

  TaskGroup.Iterator.next(isolation:)(a1, a2, a3, a5);
}

uint64_t ThrowingTaskGroup.makeAsyncIterator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

void ThrowingTaskGroup.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 16);
  v4 = type metadata accessor for Optional();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = swift_task_alloc((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(ThrowingTaskGroup.Iterator.next(), 0, 0);
}

void ThrowingTaskGroup.Iterator.next()()
{
  if (*(v0[4] + 8))
  {
    (*(*(v0[5] - 8) + 56))(v0[2], 1, 1);
    v0[8];
    v1 = v0[1];

    v1();
  }

  else
  {
    v2 = swift_task_alloc(80);
    v0[9] = v2;
    *v2 = v0;
    v2[1] = ThrowingTaskGroup.Iterator.next();
    v3 = v0[8];

    ThrowingTaskGroup.next(isolation:)(v3, 0, 0);
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = ThrowingTaskGroup.Iterator.next();
  }

  else
  {
    v3 = ThrowingTaskGroup.Iterator.next();
  }

  swift_task_switch(v3, 0, 0);
}

uint64_t ThrowingTaskGroup.Iterator.next()()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[4];
    v5 = v0[2];
    (*(v0[7] + 8))(v1, v0[6]);
    *(v4 + 8) = 1;
    (*(v3 + 56))(v5, 1, 1, v2);
  }

  else
  {
    v6 = v0[2];
    (*(v3 + 32))(v6, v1, v2);
    (*(v3 + 56))(v6, 0, 1, v2);
  }

  v0[8];
  v7 = v0[1];

  return v7();
}

uint64_t ThrowingTaskGroup.Iterator.next()(uint64_t a1)
{
  v2 = v1[8];
  *(v1[4] + 8) = 1;
  swift_willThrow();
  v2;
  v3 = v1[1];

  return v3();
}

void _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = v5;
  v6[8] = a5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v6[9] = *(a4 + 16);
  v9 = type metadata accessor for Optional();
  v6[10] = v9;
  v10 = *(v9 - 8);
  v6[11] = v10;
  v6[12] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v12 = (*(a3 + 8))(ObjectType, a3);
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v6[13] = v12;
  v6[14] = v14;

  swift_task_switch(_sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY0_, v12, v14);
}

void _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY0_()
{
  if (*(v0[7] + 8))
  {
    (*(*(v0[9] - 8) + 56))(v0[3], 1, 1);
    v0[12];
    v1 = v0[1];

    v1();
  }

  else
  {
    v2 = v0[6];
    v3 = swift_task_alloc(80);
    v0[15] = v3;
    v0[16] = *(v2 + 24);
    v0[17] = *(v2 + 32);
    *v3 = v0;
    v3[1] = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTQ1_;
    v4 = v0[12];
    v5 = v0[4];
    v6 = v0[5];

    ThrowingTaskGroup.next(isolation:)(v4, v5, v6);
  }
}

void _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  *(*v1 + 144) = v0;
  v3;
  v4 = *(v2 + 112);
  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY3_;
  }

  else
  {
    v6 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY2_;
  }

  swift_task_switch(v6, v5, v4);
}

uint64_t _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY2_()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[7];
    v5 = v0[3];
    (*(v0[11] + 8))(v1, v0[10]);
    *(v4 + 8) = 1;
    (*(v3 + 56))(v5, 1, 1, v2);
  }

  else
  {
    v6 = v0[3];
    (*(v3 + 32))(v6, v1, v2);
    (*(v3 + 56))(v6, 0, 1, v2);
  }

  v0[12];
  v7 = v0[1];

  return v7();
}

uint64_t _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY3_()
{
  v1 = v0[18];
  v2 = v0[12];
  *(v0[7] + 8) = 1;
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v2;
  v3 = v0[1];

  return v3();
}

void protocol witness for AsyncIteratorProtocol.next() in conformance ThrowingTaskGroup<A, B>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc(96);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  ThrowingTaskGroup.Iterator.next()(a1, a2);
}

void _sScg8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v10 = *(a5 + 24);
  v5[3] = v10;
  v11 = *(v10 - 8);
  v5[4] = v11;
  v12 = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[5] = v12;
  v13 = swift_task_alloc(160);
  v5[6] = v13;
  *v13 = v5;
  v13[1] = _ss23AsyncCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(a1, a2, a3, a5, v12);
}

void DiscardingTaskGroup.awaitAllRemainingTasks()()
{
  *(v1 + 56) = v0;
  swift_task_switch(DiscardingTaskGroup.awaitAllRemainingTasks(), 0, 0);
}

{
  swift_taskGroup_waitAll(v0 + 72, **(v0 + 56), 0, DiscardingTaskGroup.awaitAllRemainingTasks(), (v0 + 16));
}

{
  *(v1 + 64) = v0;
  if (v0)
  {
    v2 = DiscardingTaskGroup.awaitAllRemainingTasks();
  }

  else
  {
    v2 = DiscardingTaskGroup.awaitAllRemainingTasks();
  }

  swift_task_switch(v2, 0, 0);
}

uint64_t DiscardingTaskGroup.awaitAllRemainingTasks()()
{
  return (*(v0 + 8))();
}

{
  return (*(v0 + 8))();
}

void withDiscardingTaskGroup<A>(returning:isolation:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[42] = a6;
  v7[43] = a7;
  v7[40] = a1;
  v7[41] = a5;
  v10 = *(a7 - 8);
  v7[44] = v10;
  v7[45] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v12 = (*(a4 + 8))(ObjectType, a4);
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v7[46] = v12;
  v7[47] = v14;

  swift_task_switch(withDiscardingTaskGroup<A>(returning:isolation:body:), v12, v14);
}

uint64_t withDiscardingTaskGroup<A>(returning:isolation:body:)()
{
  v1 = v0[41];
  swift_taskGroup_initializeWithFlags(0x100, (v0 + 2), MEMORY[0x1E69E7CA8] + 8);
  v0[39] = v0 + 2;
  v5 = (v1 + *v1);
  v2 = swift_task_alloc(v1[1]);
  v0[48] = v2;
  *v2 = v0;
  v2[1] = withDiscardingTaskGroup<A>(returning:isolation:body:);
  v3 = v0[45];

  return (v5)(v3, v0 + 39);
}

{
  v1 = v0[45];
  (*(v0[44] + 32))(v0[40], v1, v0[43]);
  swift_taskGroup_destroy((v0 + 2));
  v1;
  v2 = v0[1];

  return v2();
}

{
  return swift_unexpectedError();
}

void withDiscardingTaskGroup<A>(returning:isolation:body:)()
{
  v1 = *v0;
  *(*v0 + 384);
  v2 = *(v1 + 312);

  swift_taskGroup_waitAll(v1 + 400, v2, 0, withDiscardingTaskGroup<A>(returning:isolation:body:), (v1 + 272));
}

{
  *(v1 + 392) = v0;
  if (v0)
  {
    v2 = withDiscardingTaskGroup<A>(returning:isolation:body:);
  }

  else
  {
    v2 = withDiscardingTaskGroup<A>(returning:isolation:body:);
  }

  swift_task_switch(v2, 0, 0);
}

{
  swift_task_switch(withDiscardingTaskGroup<A>(returning:isolation:body:), *(v0 + 368), *(v0 + 376));
}

{
  swift_task_switch(withDiscardingTaskGroup<A>(returning:isolation:body:), *(v0 + 368), *(v0 + 376));
}

uint64_t withDiscardingTaskGroup<A>(returning:body:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v5[40] = a1;
  v5[41] = a5;
  v7 = *(a5 - 8);
  v5[42] = v7;
  v8 = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[43] = v8;
  swift_taskGroup_initializeWithFlags(0x100, (v5 + 2), MEMORY[0x1E69E7CA8] + 8);
  v5[39] = v5 + 2;
  v11 = a3 + *a3;
  v9 = swift_task_alloc(a3[1]);
  v5[44] = v9;
  *v9 = v5;
  v9[1] = withDiscardingTaskGroup<A>(returning:body:);

  return (v11)(v8, v5 + 39);
}

void withDiscardingTaskGroup<A>(returning:body:)()
{
  v1 = *v0;
  *(*v0 + 352);
  v2 = *(v1 + 312);

  swift_taskGroup_waitAll(v1 + 368, v2, 0, withDiscardingTaskGroup<A>(returning:body:), (v1 + 272));
}

{
  *(v1 + 360) = v0;
  if (v0)
  {
    v2 = withDiscardingTaskGroup<A>(returning:body:);
  }

  else
  {
    v2 = withDiscardingTaskGroup<A>(returning:body:);
  }

  swift_task_switch(v2, 0, 0);
}

uint64_t withDiscardingTaskGroup<A>(returning:body:)()
{
  v1 = v0[43];
  (*(v0[42] + 32))(v0[40], v1, v0[41]);
  swift_taskGroup_destroy((v0 + 2));
  v1;
  v2 = v0[1];

  return v2();
}

{
  return swift_unexpectedError();
}

void ThrowingDiscardingTaskGroup.awaitAllRemainingTasks(bodyError:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  swift_task_switch(ThrowingDiscardingTaskGroup.awaitAllRemainingTasks(bodyError:), 0, 0);
}

void ThrowingDiscardingTaskGroup.awaitAllRemainingTasks(bodyError:)()
{
  swift_taskGroup_waitAll(v0 + 80, **(v0 + 64), *(v0 + 56), ThrowingDiscardingTaskGroup.awaitAllRemainingTasks(bodyError:), (v0 + 16));
}

{
  *(v1 + 72) = v0;
  if (v0)
  {
    v2 = ThrowingDiscardingTaskGroup.awaitAllRemainingTasks(bodyError:);
  }

  else
  {
    v2 = DiscardingTaskGroup.awaitAllRemainingTasks();
  }

  swift_task_switch(v2, 0, 0);
}

void withThrowingDiscardingTaskGroup<A>(returning:isolation:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[47] = a6;
  v7[48] = a7;
  v7[45] = a1;
  v7[46] = a5;
  v10 = *(a7 - 8);
  v7[49] = v10;
  v11 = *(v10 + 64) + 15;
  v7[50] = swift_task_alloc(v11 & 0xFFFFFFFFFFFFFFF0);
  v7[51] = swift_task_alloc(v11 & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v13 = (*(a4 + 8))(ObjectType, a4);
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v7[52] = v13;
  v7[53] = v15;

  swift_task_switch(withThrowingDiscardingTaskGroup<A>(returning:isolation:body:), v13, v15);
}

uint64_t withThrowingDiscardingTaskGroup<A>(returning:isolation:body:)()
{
  v1 = v0[46];
  swift_taskGroup_initializeWithFlags(0x100, (v0 + 2), MEMORY[0x1E69E7CA8] + 8);
  v0[39] = v0 + 2;
  v5 = (v1 + *v1);
  v2 = swift_task_alloc(v1[1]);
  v0[54] = v2;
  *v2 = v0;
  v2[1] = withThrowingDiscardingTaskGroup<A>(returning:isolation:body:);
  v3 = v0[50];

  return (v5)(v3, v0 + 39);
}

{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  (*(v0 + 448))(*(v0 + 360), v2, *(v0 + 384));
  swift_taskGroup_destroy((v0 + 16));
  v2;
  v1;
  v3 = *(v0 + 8);

  return v3();
}

{
  v2 = v0[50];
  v1 = v0[51];
  swift_taskGroup_destroy((v0 + 2));
  v1;
  v2;
  v3 = v0[1];

  return v3();
}

{
  v2 = v0[50];
  v1 = v0[51];
  swift_taskGroup_destroy((v0 + 2));
  v1;
  v2;
  v3 = v0[1];

  return v3();
}

void withThrowingDiscardingTaskGroup<A>(returning:isolation:body:)()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  *(*v1 + 440) = v0;
  v3;
  v4 = *(v2 + 424);
  v5 = *(v2 + 416);
  if (v0)
  {
    v6 = withThrowingDiscardingTaskGroup<A>(returning:isolation:body:);
  }

  else
  {
    v6 = withThrowingDiscardingTaskGroup<A>(returning:isolation:body:);
  }

  swift_task_switch(v6, v5, v4);
}

{
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);
  v5 = *(v4 + 32);
  *(v0 + 448) = v5;
  *(v0 + 456) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v5(v1, v2, v3);
  v6 = *(v0 + 312);

  swift_taskGroup_waitAll(v0 + 481, v6, 0, withThrowingDiscardingTaskGroup<A>(returning:isolation:body:), (v0 + 320));
}

{
  v1[58] = v0;
  if (v0)
  {
    (*(v1[49] + 8))(v1[51], v1[48]);
    v2 = withThrowingDiscardingTaskGroup<A>(returning:isolation:body:);
  }

  else
  {
    v2 = withThrowingDiscardingTaskGroup<A>(returning:isolation:body:);
  }

  swift_task_switch(v2, 0, 0);
}

{
  swift_task_switch(withThrowingDiscardingTaskGroup<A>(returning:isolation:body:), *(v0 + 416), *(v0 + 424));
}

{
  swift_task_switch(withThrowingDiscardingTaskGroup<A>(returning:isolation:body:), *(v0 + 416), *(v0 + 424));
}

{
  v1 = *(v0 + 440);
  v2 = *(v0 + 312);
  swift_taskGroup_cancelAll(v2);
  MEMORY[0x1865D4960](v1);

  swift_taskGroup_waitAll(v0 + 480, v2, v1, withThrowingDiscardingTaskGroup<A>(returning:isolation:body:), (v0 + 272));
}

{
  *(v1 + 472) = v0;
  v2 = *(v1 + 440);
  MEMORY[0x1865D4950](v2);
  if (v0)
  {
    MEMORY[0x1865D4950](v2);
    v3 = withThrowingDiscardingTaskGroup<A>(returning:isolation:body:);
  }

  else
  {
    v3 = withThrowingDiscardingTaskGroup<A>(returning:isolation:body:);
  }

  swift_task_switch(v3, 0, 0);
}

{
  swift_task_switch(withThrowingDiscardingTaskGroup<A>(returning:isolation:body:), *(v0 + 416), *(v0 + 424));
}

{
  swift_task_switch(withThrowingDiscardingTaskGroup<A>(returning:isolation:body:), *(v0 + 416), *(v0 + 424));
}

uint64_t withThrowingDiscardingTaskGroup<A>(returning:isolation:body:)(uint64_t a1)
{
  swift_willThrow();
  v3 = v1[50];
  v2 = v1[51];
  swift_taskGroup_destroy((v1 + 2));
  v2;
  v3;
  v4 = v1[1];

  return v4();
}

uint64_t withThrowingDiscardingTaskGroup<A>(returning:body:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v5[45] = a1;
  v5[46] = a5;
  v7 = *(a5 - 8);
  v5[47] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc(v8 & 0xFFFFFFFFFFFFFFF0);
  v5[48] = v9;
  v5[49] = swift_task_alloc(v8 & 0xFFFFFFFFFFFFFFF0);
  swift_taskGroup_initializeWithFlags(0x100, (v5 + 2), MEMORY[0x1E69E7CA8] + 8);
  v5[39] = v5 + 2;
  v12 = a3 + *a3;
  v10 = swift_task_alloc(a3[1]);
  v5[50] = v10;
  *v10 = v5;
  v10[1] = withThrowingDiscardingTaskGroup<A>(returning:body:);

  return (v12)(v9, v5 + 39);
}

void withThrowingDiscardingTaskGroup<A>(returning:body:)()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  *(*v1 + 408) = v0;
  v3;
  if (v0)
  {
    v4 = v2[39];
    swift_taskGroup_cancelAll(v4);
    MEMORY[0x1865D4960](v0);
    v5 = withThrowingDiscardingTaskGroup<A>(returning:body:);
    v6 = (v2 + 56);
    v7 = (v2 + 34);
    v8 = v4;
    v9 = v0;
  }

  else
  {
    v11 = v2[48];
    v10 = v2[49];
    v12 = v2[46];
    v13 = v2[47];
    v14 = *(v13 + 32);
    v2[52] = v14;
    v2[53] = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v14(v10, v11, v12);
    v8 = v2[39];
    v5 = withThrowingDiscardingTaskGroup<A>(returning:body:);
    v6 = v2 + 449;
    v7 = (v2 + 40);
    v9 = 0;
  }

  swift_taskGroup_waitAll(v6, v8, v9, v5, v7);
}

{
  v1[54] = v0;
  if (v0)
  {
    (*(v1[47] + 8))(v1[49], v1[46]);
    v2 = withThrowingDiscardingTaskGroup<A>(returning:body:);
  }

  else
  {
    v2 = withThrowingDiscardingTaskGroup<A>(returning:body:);
  }

  swift_task_switch(v2, 0, 0);
}

{
  *(v1 + 440) = v0;
  v2 = *(v1 + 408);
  MEMORY[0x1865D4950](v2);
  if (v0)
  {
    MEMORY[0x1865D4950](v2);
    v3 = withThrowingDiscardingTaskGroup<A>(returning:body:);
  }

  else
  {
    v3 = withThrowingDiscardingTaskGroup<A>(returning:body:);
  }

  swift_task_switch(v3, 0, 0);
}

uint64_t withThrowingDiscardingTaskGroup<A>(returning:body:)()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  (*(v0 + 416))(*(v0 + 360), v2, *(v0 + 368));
  swift_taskGroup_destroy((v0 + 16));
  v2;
  v1;
  v3 = *(v0 + 8);

  return v3();
}

{
  v2 = v0[48];
  v1 = v0[49];
  swift_taskGroup_destroy((v0 + 2));
  v1;
  v2;
  v3 = v0[1];

  return v3();
}

{
  v2 = v0[48];
  v1 = v0[49];
  swift_taskGroup_destroy((v0 + 2));
  v1;
  v2;
  v3 = v0[1];

  return v3();
}

uint64_t withThrowingDiscardingTaskGroup<A>(returning:body:)(uint64_t a1)
{
  swift_willThrow();
  v3 = v1[48];
  v2 = v1[49];
  swift_taskGroup_destroy((v1 + 2));
  v2;
  v3;
  v4 = v1[1];

  return v4();
}

uint64_t TaskLocal.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  return v2;
}

uint64_t TaskLocal.get()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_task_localValueGet(v2);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = (v2 + *(*v2 + 88));
  }

  v7 = *(*(*(v4 + 80) - 8) + 16);

  return v7(a1, v6);
}

void TaskLocal.withValue<A>(_:operation:isolation:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = v20;
  v9[12] = v8;
  v9[9] = a8;
  v9[10] = v19;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v12 = *(*v8 + 80);
  v9[13] = v12;
  v13 = *(v12 - 8);
  v9[14] = v13;
  v9[15] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    ObjectType = swift_getObjectType();
    v15 = (*(a6 + 8))(ObjectType, a6);
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v9[16] = v15;
  v9[17] = v17;

  swift_task_switch(TaskLocal.withValue<A>(_:operation:isolation:file:line:), v15, v17);
}

void TaskLocal.withValue<A>(_:operation:isolation:file:line:)()
{
  (*(v0[14] + 16))(v0[15], v0[3], v0[13]);
  v1 = swift_task_alloc(96);
  v0[18] = v1;
  *v1 = v0;
  v1[1] = TaskLocal.withValue<A>(_:operation:isolation:file:line:);
  v2 = v0[15];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];

  TaskLocal.withValueImpl<A>(_:operation:isolation:file:line:)(v7, v2, v5, v6, v3, v4);
}

{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;
  v2;
  if (v0)
  {
    v4 = v3[16];
    v5 = v3[17];

    swift_task_switch(TaskLocal.withValue<A>(_:operation:isolation:file:line:), v4, v5);
  }

  else
  {
    v3[15];
    v6 = v3[1];

    v6();
  }
}

uint64_t TaskLocal.withValue<A>(_:operation:isolation:file:line:)()
{
  *(v0 + 120);
  v1 = *(v0 + 8);

  return v1();
}

void TaskLocal.withValueImpl<A>(_:operation:isolation:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a4;
  v7[6] = v6;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[7] = *v6;
  if (a5)
  {
    ObjectType = swift_getObjectType();
    v10 = (*(a6 + 8))(ObjectType, a6);
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v7[8] = v10;
  v7[9] = v12;

  swift_task_switch(TaskLocal.withValueImpl<A>(_:operation:isolation:file:line:), v10, v12);
}

uint64_t TaskLocal.withValueImpl<A>(_:operation:isolation:file:line:)()
{
  v1 = v0[4];
  swift_task_localValuePush(v0[6], v0[3], *(v0[7] + 80));
  v5 = (v1 + *v1);
  v2 = swift_task_alloc(v1[1]);
  v0[10] = v2;
  *v2 = v0;
  v2[1] = TaskLocal.withValueImpl<A>(_:operation:isolation:file:line:);
  v3 = v0[2];

  return v5(v3);
}

void TaskLocal.withValueImpl<A>(_:operation:isolation:file:line:)()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  *(*v1 + 88) = v0;
  v3;
  v4 = *(v2 + 72);
  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = TaskLocal.withValueImpl<A>(_:operation:isolation:file:line:);
  }

  else
  {
    v6 = TaskLocal.withValueImpl<A>(_:operation:isolation:file:line:);
  }

  swift_task_switch(v6, v5, v4);
}

uint64_t TaskLocal.withValueImpl<A>(_:operation:isolation:file:line:)(swift *a1)
{
  swift_task_localValuePop(a1);
  v2 = *(v1 + 8);

  return v2();
}

{
  swift_task_localValuePop(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t TaskLocal.withValue<A>(_:operation:file:line:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v8 = *(*(*v4 + 80) - 8);
  v9 = swift_task_alloc((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 16) = v9;
  (*(v8 + 16))();
  v10 = swift_task_alloc(32);
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = withCheckedThrowingContinuation<A>(function:_:);

  return TaskLocal.withValueImpl<A>(_:operation:file:line:)(a1, v9, a3);
}

uint64_t TaskLocal.withValueImpl<A>(_:operation:file:line:)(uint64_t a1, uint64_t a2, int *a3)
{
  swift_task_localValuePush(v3, a2, *(*v3 + 80));
  v9 = (a3 + *a3);
  v7 = swift_task_alloc(a3[1]);
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = TaskLocal.withValueImpl<A>(_:operation:file:line:);

  return v9(a1);
}

uint64_t TaskLocal.withValueImpl<A>(_:operation:file:line:)()
{
  v4 = *v0;
  *(*v0 + 16);
  swift_task_localValuePop(v1);
  v2 = *(v4 + 8);

  return v2();
}

void TaskLocal.withValue<A>(_:operation:file:line:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(*v2 + 80);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v10 - v5;
  (*(v7 + 16))(v10 - v5);
  v8 = swift_task_localValuePush(v2, v6, v4);
  v9 = a2(v8);
  swift_task_localValuePop(v9);
}

uint64_t TaskLocal.projectedValue.getter()
{
  protocol witness for SerialExecutor.asUnownedSerialExecutor() in conformance DispatchQueueShim();
}

uint64_t key path getter for TaskLocal.projectedValue : <A>TaskLocal<A>@<X0>(uint64_t *a1@<X8>)
{
  *a1 = protocol witness for SerialExecutor.asUnownedSerialExecutor() in conformance DispatchQueueShim();
}

void (*TaskLocal.projectedValue.modify(void *a1))()
{
  *a1 = v1;

  return key path setter for TaskLocal.projectedValue : <A>TaskLocal<A>;
}

uint64_t TaskLocal.description.getter()
{
  _StringGuts.grow(_:)(20);
  v0 = _typeName(_:qualified:)();
  MEMORY[0x1865D3D30](v0);

  MEMORY[0x1865D3D30](0x746C756166656428, 0xEF203A65756C6156);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x1865D3D30](41, 0xE100000000000000);
  return 0;
}

Swift::Void __swiftcall _checkIllegalTaskLocalBindingWithinWithTaskGroup(file:line:)(Swift::String file, Swift::UInt line)
{
  object = file._object;
  countAndFlagsBits = file._countAndFlagsBits;
  hasTaskGroupStatusRecord = swift_task_hasTaskGroupStatusRecord(file._countAndFlagsBits);
  if (hasTaskGroupStatusRecord)
  {
    MEMORY[0x1EEE9AC00](hasTaskGroupStatusRecord);
    v6[2] = countAndFlagsBits;
    v6[3] = object;
    v6[4] = line;
    specialized String.withCString<A>(_:)(partial apply for closure #1 in _checkIllegalTaskLocalBindingWithinWithTaskGroup(file:line:), v6, countAndFlagsBits, object);
  }
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0 || !(a4 & 0x2000000000000000 | a3 & 0x1000000000000000))
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }

  MEMORY[0x1EEE9AC00](a1);
  if ((v5 & 0x2000000000000000) != 0)
  {
    v10[0] = v4;
    v10[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    return v6(v10);
  }

  else
  {
    if ((v4 & 0x1000000000000000) != 0)
    {
      v7 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v8 = v4 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = _StringObject.sharedUTF8.getter();
    }

    return _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n(v7, v8, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
  }
}

void static Task<>.sleep(_:)()
{
  v16 = v0;
  v1 = v0;
  v2 = v0;
  v3 = (v0 + 2);
  v4 = v1[10];
  v1[2] = v2;
  v1[3] = static Task<>.sleep(_:);
  v5 = swift_continuation_init(v3, 0);
  static Task<>.currentPriority.getter(v13);
  NullaryContinuationJob = swift_task_createNullaryContinuationJob(LOBYTE(v13[0]), v5);
  if (specialized static Task<>.currentSchedulableExecutor.getter())
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    v15 = v4 * 0x3B9ACA00uLL;
    v13[0] = 0;
    v13[1] = 0;
    v14 = 1;
    v10 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock();
    SchedulableExecutor.enqueue<A>(_:after:tolerance:clock:)(NullaryContinuationJob, &v15, v13, v11, ObjectType, &type metadata for ContinuousClock, v8, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_task_enqueueGlobalWithDelay(v4, NullaryContinuationJob);
  }

  swift_continuation_await(v3, v12);
}

uint64_t static Task<>.sleep(_:)()
{
  v1 = *(*v0 + 8);

  return v1();
}

void static Task<>.sleep(nanoseconds:)(uint64_t a1)
{
  *(v1 + 120) = a1;
  swift_task_switch(static Task<>.sleep(nanoseconds:), 0, 0);
}

{
  v2 = *(*v1 + 48);
  *(*v1 + 152) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = static Task<>.sleep(nanoseconds:);
  }

  else
  {
    v3 = static Task<>.sleep(nanoseconds:);
  }

  swift_task_switch(v3, 0, 0);
}

void static Task<>.sleep(nanoseconds:)()
{
  v1 = swift_slowAlloc();
  *(v0 + 128) = v1;
  atomic_store(0, v1);
  v2 = swift_task_alloc(32);
  *(v0 + 136) = v2;
  *(v2 + 16) = v1;

  swift_task_switch(static Task<>.sleep(nanoseconds:), 0, 0);
}

{
  *(v0 + 144) = swift_task_addCancellationHandler(partial apply for closure #2 in static Task<>.sleep(nanoseconds:), *(v0 + 136));

  swift_task_switch(static Task<>.sleep(nanoseconds:), 0, 0);
}

{
  v1 = v0;
  v2 = v0;
  v3 = (v0 + 16);
  *(v1 + 16) = v2;
  *(v1 + 24) = static Task<>.sleep(nanoseconds:);
  v4 = swift_continuation_init(v3, 1uLL);
  while (1)
  {
    v6 = atomic_load(*(v1 + 128));
    if ((v6 & 3) != 0)
    {
      break;
    }

    if (v6 >= 4)
    {
      goto LABEL_13;
    }

    v7 = 0;
    atomic_compare_exchange_strong(*(v1 + 128), &v7, v4);
    if (!v7)
    {
      v8 = *(v1 + 128);
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      v10 = swift_task_create(0, 0, MEMORY[0x1E69E7CA8] + 8, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static Task<>.sleep(nanoseconds:), v9);
      v11 = specialized static Task<>.currentSchedulableExecutor.getter();
      v13 = *(v1 + 120);
      if (v11)
      {
        v14 = v12;
        v15 = 1000000000 * v13;
        v16 = (v13 * 0x3B9ACA00uLL) >> 64;
        ObjectType = swift_getObjectType();
        *(v1 + 104) = v15;
        *(v1 + 112) = v16;
        *(v1 + 80) = 0;
        *(v1 + 88) = 0;
        *(v1 + 96) = 1;
        v18 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock();
        SchedulableExecutor.enqueue<A>(_:after:tolerance:clock:)(v10, v1 + 104, v1 + 80, v19, ObjectType, &type metadata for ContinuousClock, v14, v18);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_task_enqueueGlobalWithDelay(*(v1 + 120), v10);
      }

      goto LABEL_10;
    }
  }

  if ((v6 & 3) != 3)
  {
    while (1)
    {
LABEL_13:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_continuation_throwingResume(v4, v5);
LABEL_10:

  swift_continuation_await(v3, v20);
}

{
  v1 = *(v0 + 136);
  swift_task_removeCancellationHandler(*(v0 + 144));
  v1;

  swift_task_switch(static Task<>.sleep(nanoseconds:), 0, 0);
}

{
  v1 = *(v0 + 136);
  swift_task_removeCancellationHandler(*(v0 + 144));
  v1;

  swift_task_switch(static Task<>.sleep(nanoseconds:), 0, 0);
}

uint64_t static Task<>.sleep(nanoseconds:)()
{
  v1 = atomic_load(*(v0 + 128));
  v2 = v1 & 3;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      MEMORY[0x1865D4B40](*(v0 + 128), -1, -1);
      lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
      swift_allocError();
      swift_willThrow();
      swift_willThrow();
      v3 = *(v0 + 8);
      goto LABEL_7;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (!v2)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  MEMORY[0x1865D4B40](*(v0 + 128), -1, -1);
  v3 = *(v0 + 8);
LABEL_7:

  return v3();
}

uint64_t static Task<>.sleep(nanoseconds:)(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t closure #1 in closure #1 in closure #1 in static Task<>.sleep(nanoseconds:)(uint64_t a1, swift::AsyncTask *a2)
{
  specialized static Task<>.onSleepWake(_:)(*(v2 + 16), a2);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t AsyncStream._Storage.State.init(limit:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = type metadata accessor for Optional();
  type metadata accessor for UnsafeContinuation(0, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  *a3 = Array.init()();
  result = _Deque._Storage.init()(a2);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 8) = result;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  return result;
}

void *AsyncStream._Storage.deinit()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if (v2)
  {
    v3 = *(v0 + 56);
    v7 = 1;

    v2(&v7);
    _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v2, v3);
    v4 = *(v1 + 48);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v1 + 56);

  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v4, v5);
  return v1;
}

uint64_t AsyncStream._Storage.__deallocating_deinit()
{
  AsyncStream._Storage.deinit();

  return swift_deallocClassInstance();
}

uint64_t AsyncStream._Storage.getOnTermination()()
{
  _swift_async_stream_lock_lock((v0 + 72));
  v1 = *(v0 + 48);
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v1, *(v0 + 56));
  _swift_async_stream_lock_unlock((v0 + 72));
  return v1;
}

uint64_t AsyncStream._Storage.setOnTermination(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v2->_os_unfair_lock_opaque;
  _swift_async_stream_lock_lock(v2 + 18);
  v8 = *&v2[12]._os_unfair_lock_opaque;
  v9 = *&v2[14]._os_unfair_lock_opaque;
  if (v8)
  {
    v7 = swift_allocObject();
    v10 = v7;
    v7[2] = *(v6 + 80);
    v7[3] = v8;
    v7[4] = v9;
    v11 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed AsyncStream<A>.Continuation.Termination) -> ()partial apply;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v19[0] = v11;
  v19[1] = v10;
  MEMORY[0x1EEE9AC00](v7);
  v18[2] = v3;
  v18[3] = a1;
  v18[4] = a2;
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v8, v9);
  type metadata accessor for AsyncStream.Continuation.Termination(255, *(v6 + 80), v12, v13);
  v14 = MEMORY[0x1E69E7CA8];
  swift_getFunctionTypeMetadata1();
  v15 = type metadata accessor for Optional();
  _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(v19, partial apply for closure #1 in AsyncStream._Storage.setOnTermination(_:), v18, v15, MEMORY[0x1E69E73E0], v14 + 8, MEMORY[0x1E69E7410], v16);
  return _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v11, v10);
}

uint64_t _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v14(v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a5);
  }

  return result;
}

void AsyncStream._Storage.cancel@Sendable ()()
{
  _swift_async_stream_lock_lock((v0 + 72));
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  _swift_async_stream_lock_unlock((v0 + 72));
  if (v1)
  {
    v3 = 1;
    v1(&v3);
    _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v1, v2);
  }

  AsyncStream._Storage.finish()();
}

Swift::Void __swiftcall AsyncStream._Storage.finish()()
{
  v1 = (v0 + 72);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  _swift_async_stream_lock_lock((v0 + 72));
  v7 = *(v0 + 16);
  v8 = *(v0 + 48);
  v22 = *(v0 + 56);
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  v25 = v7;
  v9 = type metadata accessor for UnsafeContinuation(255, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    _swift_async_stream_lock_unlock(v1);
    if (v8)
    {
      v23 = 0;
      v10 = v22;
      v8(&v23);
      _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v8, v10);
    }
  }

  else
  {
    v21 = v4;
    v11 = *(v0 + 16);

    Array.removeAll(keepingCapacity:)(0);
    _swift_async_stream_lock_unlock(v1);
    if (v8)
    {
      v24 = 0;
      v12 = v22;
      v8(&v24);
      _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v8, v12);
    }

    if (MEMORY[0x1865D3E00](v11, v9))
    {
      v13 = (v21 + 32);
      v14 = 4;
      do
      {
        v15 = v14 - 4;
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          v17 = *(v11 + 8 * v14);
          v18 = __OFADD__(v15, 1);
          v19 = v14 - 3;
          if (v18)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v17 = _ArrayBuffer._getElementSlowPath(_:)();
          swift_unknownObjectRelease();
          v18 = __OFADD__(v15, 1);
          v19 = v14 - 3;
          if (v18)
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        (*(*(v2 - 8) + 56))(v6, 1, 1, v2);
        (*v13)(*(*(v17 + 64) + 40), v6, v3);
        swift_continuation_resume(v17, v20);
        ++v14;
      }

      while (v19 != MEMORY[0x1865D3E00](v11, v9));
    }
  }
}

void specialized AsyncStream._Storage.yield(_:)(uint64_t a1@<X8>)
{
  v2 = v1;
  _swift_async_stream_lock_lock((v1 + 72));
  v4 = (v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(*(v1 + 24) + 24);
  if (*(*(v1 + 16) + 16))
  {
    v8 = specialized RangeReplaceableCollection.removeFirst()();
    if (v7 <= 0)
    {
      if (*(v1 + 64))
      {
        v36 = 0;
        _swift_async_stream_lock_unlock((v1 + 72));
        **(*(v8 + 64) + 40) = 1;
        swift_continuation_resume(v8, v10);
        v9 = 2;
      }

      else
      {
        if (v6 > 1)
        {
          v36 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v5;
        }

        _swift_async_stream_lock_unlock((v1 + 72));
        **(*(v8 + 64) + 40) = 0;
        swift_continuation_resume(v8, v26);
        v9 = 0;
      }

      goto LABEL_64;
    }

    if (*(v1 + 64))
    {
      v36 = 0;
      v9 = 2;
LABEL_54:
      specialized _Deque.removeFirst()();
      _swift_async_stream_lock_unlock(v2 + 18);
      **(*(v8 + 64) + 40) = 0;
      swift_continuation_resume(v8, v31);
LABEL_64:
      *a1 = v36;
      *(a1 + 8) = v9;
      return;
    }

    if (v6)
    {
      if (v6 != 1)
      {
        v19 = *(*v4 + 24);
        v20 = v19 + 1;
        if (!__OFADD__(v19, 1))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v22 = *v4;
          if (*(*v4 + 16) < v20 || (isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v20, 0);
            v22 = *v4;
          }

          specialized _Deque._UnsafeHandle.uncheckedAppend(_:)((v22 + 16));
          v9 = 0;
          v36 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_54;
        }

        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      if (v7 < v5)
      {
        v11 = *(*v4 + 24);
        v12 = v11 + 1;
        if (!__OFADD__(v11, 1))
        {
LABEL_27:
          v17 = swift_isUniquelyReferenced_nonNull_native();
          v18 = *v4;
          if (*(*v4 + 16) < v12 || (v17 & 1) == 0)
          {
            specialized _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v12, 0);
            v18 = *v4;
          }

          specialized _Deque._UnsafeHandle.uncheckedAppend(_:)((v18 + 16));
          v9 = 0;
          v36 = v5 + ~v7;
          goto LABEL_54;
        }

        __break(1u);
        goto LABEL_15;
      }

      specialized _Deque.removeFirst()();
      v27 = *(*v4 + 24);
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v29 = swift_isUniquelyReferenced_nonNull_native();
      v30 = *v4;
      if (*(*v4 + 16) < v28 || (v29 & 1) == 0)
      {
        specialized _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v28, 0);
        v30 = *v4;
      }

      specialized _Deque._UnsafeHandle.uncheckedAppend(_:)((v30 + 16));
    }

    else
    {
      if (v7 < v5)
      {
        v16 = *(*v4 + 24);
        v12 = v16 + 1;
        if (!__OFADD__(v16, 1))
        {
          goto LABEL_27;
        }

        goto LABEL_68;
      }

      v36 = 0;
    }

    v9 = 1;
    goto LABEL_54;
  }

  if (*(v1 + 64))
  {
    v36 = 0;
    v9 = 2;
LABEL_63:
    _swift_async_stream_lock_unlock(v2 + 18);
    goto LABEL_64;
  }

LABEL_15:
  if (!v6)
  {
    if (v7 >= v5)
    {
LABEL_61:
      v36 = 0;
LABEL_62:
      v9 = 1;
      goto LABEL_63;
    }

    v23 = v7 + 1;
    if (__OFSUB__(v5, v7 + 1))
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v36 = v5 - (v7 + 1);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v4;
    if (*(*v4 + 16) <= v7)
    {
      goto LABEL_43;
    }

LABEL_42:
    if (v24)
    {
LABEL_44:
      specialized _Deque._UnsafeHandle.uncheckedAppend(_:)((v25 + 16));
      v9 = 0;
      goto LABEL_63;
    }

LABEL_43:
    specialized _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v23, 0);
    v25 = *v4;
    goto LABEL_44;
  }

  if (v6 != 1)
  {
    v36 = 0x7FFFFFFFFFFFFFFFLL;
    v23 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v25 = *v4;
      if (*(*v4 + 16) < v23)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    goto LABEL_66;
  }

  if (v7 < v5)
  {
    v13 = v7 + 1;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v4;
    if (*(*v4 + 16) <= v7 || (v14 & 1) == 0)
    {
      specialized _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v7 + 1, 0);
      v15 = *v4;
    }

    specialized _Deque._UnsafeHandle.uncheckedAppend(_:)((v15 + 16));
    if (!__OFSUB__(v5, v13))
    {
      v9 = 0;
      v36 = v5 - v13;
      goto LABEL_63;
    }

    goto LABEL_69;
  }

  if (v7 < 1)
  {
    goto LABEL_61;
  }

  specialized _Deque.removeFirst()();
  v32 = *(*v4 + 24);
  v33 = v32 + 1;
  if (!__OFADD__(v32, 1))
  {
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v4;
    if (*(*v4 + 16) < v33 || (v34 & 1) == 0)
    {
      specialized _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v33, 0);
      v35 = *v4;
    }

    specialized _Deque._UnsafeHandle.uncheckedAppend(_:)((v35 + 16));
    goto LABEL_62;
  }

LABEL_71:
  __break(1u);
}

void AsyncStream._Storage.yield(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v85 = a1;
  v83 = a2;
  v4 = *(*v2 + 80);
  v5 = type metadata accessor for Optional();
  v81 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v80 = &v78 - v7;
  v84 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v78 - v8;
  _swift_async_stream_lock_lock((v2 + 72));
  v79 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 24);

  v11 = MEMORY[0x1E69E73E0];
  v12 = MEMORY[0x1E69E7410];
  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, v10, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v77);
  v13 = v86;

  v86 = *(v3 + 16);
  v82 = v5;
  type metadata accessor for UnsafeContinuation(255, v5, v11, v12);
  type metadata accessor for Array();
  swift_getWitnessTable();
  if ((Collection.isEmpty.getter() & 1) == 0)
  {
    swift_getWitnessTable();
    RangeReplaceableCollection.removeFirst()();
    v20 = v86;
    if (v13 < 1)
    {
      if (*(v3 + 64))
      {
        v30 = v84;
        (*(v84 + 8))(v85, v4);
        type metadata accessor for AsyncStream.Continuation.YieldResult(0, v4, v31, v32);
        swift_storeEnumTagMultiPayload();
        _swift_async_stream_lock_unlock((v3 + 72));
        v33 = v80;
        (*(v30 + 56))(v80, 1, 1, v4);
        (*(v81 + 32))(*(*(v20 + 64) + 40), v33, v82);
      }

      else
      {
        if (v9 > 1)
        {
          v42 = 0x7FFFFFFFFFFFFFFFLL;
          v40 = v81;
          v39 = v82;
          v41 = v84;
        }

        else
        {
          v40 = v81;
          v39 = v82;
          v41 = v84;
          v42 = v79;
        }

        *v83 = v42;
        type metadata accessor for AsyncStream.Continuation.YieldResult(0, v4, v18, v19);
        swift_storeEnumTagMultiPayload();
        _swift_async_stream_lock_unlock((v3 + 72));
        v68 = v80;
        (*(v41 + 32))(v80, v85, v4);
        (*(v41 + 56))(v68, 0, 1, v4);
        (*(v40 + 32))(*(*(v20 + 64) + 40), v68, v39);
      }

      goto LABEL_37;
    }

    if (*(v3 + 64))
    {
      v21 = v84;
      (*(v84 + 8))(v85, v4);
      type metadata accessor for AsyncStream.Continuation.YieldResult(0, v4, v22, v23);
LABEL_30:
      swift_storeEnumTagMultiPayload();
      v38 = v81;
      v37 = v82;
      goto LABEL_31;
    }

    if (v9)
    {
      if (v9 != 1)
      {
        v57 = type metadata accessor for _Deque(0, v4, v18, v19);
        v58 = v85;
        _Deque.append(_:)(v85, v57);
        v21 = v84;
        (*(v84 + 8))(v58, v4);
        *v83 = 0x7FFFFFFFFFFFFFFFLL;
        type metadata accessor for AsyncStream.Continuation.YieldResult(0, v4, v59, v60);
        goto LABEL_30;
      }

      v35 = type metadata accessor for _Deque(0, v4, v18, v19);
      v36 = v79;
      v38 = v81;
      v37 = v82;
      v21 = v84;
      if (v13 >= v79)
      {
        v69 = v35;
        _Deque.removeFirst()(v35);
        type metadata accessor for AsyncStream.Continuation.YieldResult(0, v4, v70, v71);
        swift_storeEnumTagMultiPayload();
        v72 = v85;
        _Deque.append(_:)(v85, v69);
        (*(v21 + 8))(v72, v4);
        goto LABEL_31;
      }

      _Deque.append(_:)(v85, v35);
    }

    else
    {
      v36 = v79;
      v38 = v81;
      v37 = v82;
      if (v13 >= v79)
      {
        v21 = v84;
        (*(v84 + 32))(v83, v85, v4);
        type metadata accessor for AsyncStream.Continuation.YieldResult(0, v4, v73, v74);
        swift_storeEnumTagMultiPayload();
        goto LABEL_31;
      }

      v52 = type metadata accessor for _Deque(0, v4, v18, v19);
      _Deque.append(_:)(v85, v52);
      v21 = v84;
    }

    (*(v21 + 8))(v85, v4);
    *v83 = v36 + ~v13;
    type metadata accessor for AsyncStream.Continuation.YieldResult(0, v4, v53, v54);
    swift_storeEnumTagMultiPayload();
LABEL_31:
    v61 = type metadata accessor for _Deque(0, v4, v55, v56);
    v62 = v78;
    _Deque.removeFirst()(v61);
    _swift_async_stream_lock_unlock((v3 + 72));
    v63 = v80;
    (*(v21 + 32))(v80, v62, v4);
    (*(v21 + 56))(v63, 0, 1, v4);
    (*(v38 + 32))(*(*(v20 + 64) + 40), v63, v37);
LABEL_37:
    swift_continuation_resume(v20, v34);
    return;
  }

  if (*(v3 + 64))
  {
    (*(v84 + 8))(v85, v4);
    type metadata accessor for AsyncStream.Continuation.YieldResult(0, v4, v16, v17);
LABEL_4:
    swift_storeEnumTagMultiPayload();
LABEL_5:
    _swift_async_stream_lock_unlock((v3 + 72));
    return;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      *v83 = 0x7FFFFFFFFFFFFFFFLL;
      type metadata accessor for AsyncStream.Continuation.YieldResult(0, v4, v14, v15);
      swift_storeEnumTagMultiPayload();
      v50 = type metadata accessor for _Deque(0, v4, v48, v49);
      v51 = v85;
      _Deque.append(_:)(v85, v50);
      (*(v84 + 8))(v51, v4);
      goto LABEL_5;
    }

    v24 = v79;
    v25 = v84;
    if (v13 < v79)
    {
      v26 = type metadata accessor for _Deque(0, v4, v14, v15);
      v27 = v85;
      _Deque.append(_:)(v85, v26);
      (*(v25 + 8))(v27, v4);
      if (!__OFSUB__(v24, v13 + 1))
      {
        *v83 = v24 - (v13 + 1);
        type metadata accessor for AsyncStream.Continuation.YieldResult(0, v4, v28, v29);
        goto LABEL_4;
      }

      __break(1u);
      goto LABEL_42;
    }

    if (v13 >= 1)
    {
      v64 = type metadata accessor for _Deque(0, v4, v14, v15);
      _Deque.removeFirst()(v64);
      type metadata accessor for AsyncStream.Continuation.YieldResult(0, v4, v65, v66);
      swift_storeEnumTagMultiPayload();
      v67 = v85;
      _Deque.append(_:)(v85, v64);
      (*(v25 + 8))(v67, v4);
      goto LABEL_5;
    }

LABEL_40:
    (*(v84 + 32))(v83, v85, v4);
    type metadata accessor for AsyncStream.Continuation.YieldResult(0, v4, v75, v76);
    goto LABEL_4;
  }

  if (v13 >= v79)
  {
    goto LABEL_40;
  }

  v43 = v84;
  if (!__OFSUB__(v79, v13 + 1))
  {
    *v83 = v79 - (v13 + 1);
    type metadata accessor for AsyncStream.Continuation.YieldResult(0, v4, v14, v15);
    swift_storeEnumTagMultiPayload();
    v46 = type metadata accessor for _Deque(0, v4, v44, v45);
    v47 = v85;
    _Deque.append(_:)(v85, v46);
    (*(v43 + 8))(v47, v4);
    goto LABEL_5;
  }

LABEL_42:
  __break(1u);
}

uint64_t specialized RangeReplaceableCollection.removeFirst()()
{
  if (*(*v0 + 16))
  {
    v1 = *(*v0 + 32);
    specialized RangeReplaceableCollection.removeFirst(_:)(1uLL);
    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *_Deque.append(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v11);
  if (__OFADD__(v13, 1))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for _Deque._Storage(0, v4, v6, v7);
    _Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(v13 + 1, 0);
    MEMORY[0x1EEE9AC00](v8);
    v11 = v4;
    v12 = a1;
    return _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.append(_:), &v10, v9, v4, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
  }

  return result;
}

uint64_t specialized _Deque.removeFirst()()
{
  if (!*(*v0 + 24))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = *(v2 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_DequeBufferCyytGMd, &_ss12_DequeBufferCyytGMR);
    v3 = swift_allocObject();
    v5 = *(v2 + 24);
    *(v3 + 16) = v4;
    v6 = (v3 + 16);
    *(v3 + 24) = v5;
    swift_getObjectType();
    _swift_getObjCClassInstanceExtents();
    if ((v7 & 0x8000000000000000) == 0)
    {
      if (v7 == 16)
      {
LABEL_8:
        if (_swift_objcClassUsesNativeSwiftReferenceCounting())
        {
          if (*(v2 + 24) >= 1)
          {
            specialized _Deque._UnsafeHandle.segments()((v2 + 16), v2 + 40, v10);
            specialized _Deque._UnsafeHandle.initialize(at:from:)(*(v2 + 32), v10[0], v10[1], v6, v3 + 40, 201, specialized UnsafeMutablePointer.initialize(from:count:), 203);
            if ((v11 & 1) == 0)
            {
              specialized _Deque._UnsafeHandle.initialize(at:from:)(0, v10[2], v10[3], v6, v3 + 40, 201, specialized UnsafeMutablePointer.initialize(from:count:), 203);
            }
          }

          *v0 = v3;
          goto LABEL_13;
        }

LABEL_18:
        result = _fatalErrorMessage(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      _swift_getObjCClassInstanceExtents();
      if ((v8 & 0x8000000000000000) == 0)
      {
        if (v8 != 40)
        {
          goto LABEL_18;
        }

        goto LABEL_8;
      }
    }

LABEL_17:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_18;
  }

  v3 = *v0;
LABEL_13:

  return specialized _Deque._UnsafeHandle.uncheckedRemoveFirst()((v3 + 16));
}

uint64_t _Deque.removeFirst()(uint64_t a1)
{
  v9[4] = *v1;
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = *(a1 + 16);
    type metadata accessor for _Deque._Storage(0, v5, v3, v4);
    _Deque._Storage.ensureUnique()();
    MEMORY[0x1EEE9AC00](v6);
    v9[2] = v5;
    return _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.removeFirst(), v9, v7, v5, v5, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
  }

  return result;
}

void AsyncStream._Storage.next(_:)(continuationChecking *a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Optional();
  v22 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  v8 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - v9;
  _swift_async_stream_lock_lock((v1 + 72));
  v24 = a1;
  v11 = MEMORY[0x1E69E73E0];
  v23 = v4;
  type metadata accessor for UnsafeContinuation(255, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  type metadata accessor for Array();
  Array.append(_:)();
  v12 = *(v1 + 24);

  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, v12, &type metadata for _DequeBufferHeader, v3, v11, MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v21);
  v13 = v24;

  if (v13 < 1)
  {
    v20 = v22;
    v19 = v23;
    if (*(v1 + 64) != 1)
    {
      _swift_async_stream_lock_unlock((v1 + 72));
      return;
    }

    swift_getWitnessTable();
    RangeReplaceableCollection.removeFirst()();
    v14 = v24;
    _swift_async_stream_lock_unlock((v1 + 72));
    (*(v8 + 56))(v7, 1, 1, v3);
    (*(v20 + 32))(*(*(v14 + 8) + 40), v7, v19);
  }

  else
  {
    swift_getWitnessTable();
    RangeReplaceableCollection.removeFirst()();
    v14 = v24;
    v17 = type metadata accessor for _Deque(0, v3, v15, v16);
    _Deque.removeFirst()(v17);
    _swift_async_stream_lock_unlock((v1 + 72));
    (*(v8 + 32))(v7, v10, v3);
    (*(v8 + 56))(v7, 0, 1, v3);
    (*(v22 + 32))(*(*(v14 + 8) + 40), v7, v23);
  }

  swift_continuation_resume(v14, v18);
}

void AsyncStream._Storage.next()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  swift_task_switch(AsyncStream._Storage.next(), 0, 0);
}

void AsyncStream._Storage.next()()
{
  v1 = v0[3];

  v2 = swift_task_alloc(32);
  v0[5] = v2;
  *(v2 + 16) = partial apply for implicit closure #2 in implicit closure #1 in AsyncStream._Storage.next();
  *(v2 + 24) = v1;
  v3 = swift_task_alloc(96);
  v0[6] = v3;
  type metadata accessor for Optional();
  *v3 = v0;
  v3[1] = AsyncStream._Storage.next();
  v4 = v0[2];
  v5 = v0[3];

  withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v4, &async function pointer to partial apply for closure #1 in AsyncStream._Storage.next(), v5, partial apply for closure #2 in AsyncStream._Storage.next(), v2, 0, 0);
}

uint64_t AsyncStream._Storage.next()()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 48);
  if (v0)
  {

    JUMPOUT(0x1865D4950);
  }

  v4 = *(v2 + 40);

  v4;
  v5 = *(v3 + 8);

  return v5();
}

void closure #1 in AsyncStream._Storage.next()(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *a2;
  swift_task_switch(closure #1 in AsyncStream._Storage.next(), 0, 0);
}

uint64_t closure #1 in AsyncStream._Storage.next()()
{
  v1 = swift_task_alloc(112);
  v0[5] = v1;
  v2 = type metadata accessor for Optional();
  *v1 = v0;
  v1[1] = closure #1 in AsyncStream._Storage.next();
  v3 = v0[2];
  v4 = v0[3];

  return (withUnsafeContinuation<A>(isolation:_:))(v3, 0, 0, partial apply for closure #1 in closure #1 in AsyncStream._Storage.next(), v4, v2);
}

{
  v3 = *v0;
  *(*v0 + 40);
  v1 = *(v3 + 8);

  return v1();
}

uint64_t static AsyncStream._Storage.create(limit:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  protocol witness for static Equatable.== infix(_:_:) in conformance ContinuousClock.Instant.CodingKeys();
  v4 = swift_allocObject();
  *&v10 = v2;
  BYTE8(v10) = v3;
  v5 = *(v1 + 80);
  AsyncStream._Storage.State.init(limit:)(&v10, v5, &v15);
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v8 = type metadata accessor for AsyncStream._Storage.State(0, v5, v6, v7);
  (*(*(v8 - 8) + 32))(v4 + 16, &v10, v8);
  _swift_async_stream_lock_init((v4 + 72));
  return v4;
}

uint64_t AsyncThrowingStream._Storage.State.init(limit:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  *a5 = 0;
  *(a5 + 8) = _Deque._Storage.init()(a2);
  v11 = type metadata accessor for AsyncThrowingStream._Storage.State(0, a2, a3, a4);
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  v12 = *(v11 + 56);
  v13 = type metadata accessor for AsyncThrowingStream._Storage.Terminal(0, a2, a3, a4);
  result = (*(*(v13 - 8) + 56))(a5 + v12, 1, 1, v13);
  *(a5 + 16) = v9;
  *(a5 + 24) = v10;
  return result;
}

void *AsyncThrowingStream._Storage.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2[10];
  v4 = v2[11];
  v5 = v2[12];
  v6 = type metadata accessor for AsyncThrowingStream.Continuation.Termination(0, v3, v4, v5);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v10 = v1 + v2[13];
  v11 = *(v10 + 4);
  if (v11)
  {
    v12 = *(v10 + 5);
    v13 = type metadata accessor for Optional();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);

    v11(v9);
    _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v11, v12);
    (*(v7 + 8))(v9, v6);
  }

  v14 = type metadata accessor for AsyncThrowingStream._Storage.State(0, v3, v4, v5);
  (*(*(v14 - 8) + 8))(v10, v14);
  return v1;
}

uint64_t AsyncThrowingStream._Storage.__deallocating_deinit()
{
  AsyncThrowingStream._Storage.deinit();

  return swift_deallocClassInstance();
}

uint64_t AsyncThrowingStream._Storage.getOnTermination()()
{
  _swift_async_stream_lock_lock((v0 + ((*(*v0 + 48) + 7) & 0x1FFFFFFF8)));
  v1 = v0 + *(*v0 + 104);
  v2 = *(v1 + 32);
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v2, *(v1 + 40));
  _swift_async_stream_lock_unlock((v0 + ((*(*v0 + 48) + 7) & 0x1FFFFFFF8)));
  return v2;
}

uint64_t AsyncThrowingStream._Storage.setOnTermination(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  _swift_async_stream_lock_lock((v2 + ((*(*v2 + 12) + 7) & 0x1FFFFFFF8)));
  v7 = v2 + (*v2)[13];
  v8 = *(v7 + 4);
  v9 = *(v7 + 5);
  if (v8)
  {
    v6 = swift_allocObject();
    v10 = v6;
    *(v6 + 16) = *(v5 + 5);
    *(v6 + 32) = v5[12];
    *(v6 + 40) = v8;
    *(v6 + 48) = v9;
    v11 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed AsyncThrowingStream<A, B>.Continuation.Termination) -> ()partial apply;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v17[0] = v11;
  v17[1] = v10;
  MEMORY[0x1EEE9AC00](v6);
  v16[2] = v2;
  v16[3] = a1;
  v16[4] = a2;
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v8, v9);
  type metadata accessor for AsyncThrowingStream.Continuation.Termination(255, v5[10], v5[11], v5[12]);
  v12 = MEMORY[0x1E69E7CA8];
  swift_getFunctionTypeMetadata1();
  v13 = type metadata accessor for Optional();
  _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(v17, partial apply for closure #1 in AsyncThrowingStream._Storage.setOnTermination(_:), v16, v13, MEMORY[0x1E69E73E0], v12 + 8, MEMORY[0x1E69E7410], v14);
  return _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v11, v10);
}

void AsyncThrowingStream._Storage.cancel@Sendable ()()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = type metadata accessor for AsyncThrowingStream.Continuation.Termination(0, *(v1 + 80), v3, *(v1 + 96));
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  _swift_async_stream_lock_lock((v0 + ((*(v2 + 48) + 7) & 0x1FFFFFFF8)));
  v12 = v0 + *(*v0 + 104);
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  _swift_async_stream_lock_unlock((v0 + ((*(*v0 + 48) + 7) & 0x1FFFFFFF8)));
  if (v13)
  {
    (*(v5 + 56))(v11, 1, 1, v4);
    v13(v11);
    _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v13, v14);
    (*(v9 + 8))(v11, v8);
  }

  (*(*(v3 - 8) + 56))(v7, 1, 1, v3);
  AsyncThrowingStream._Storage.finish(throwing:)(v7);
}

void AsyncThrowingStream._Storage.finish(throwing:)(uint64_t a1)
{
  v2 = v1;
  v117 = a1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 96);
  v7 = type metadata accessor for AsyncThrowingStream._Storage.Terminal(0, v4, v5, v6);
  v118 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v94 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v93 = &v90 - v10;
  v11 = type metadata accessor for Optional();
  v102 = *(v11 - 8);
  v103 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v90 - v12;
  v13 = type metadata accessor for AsyncThrowingStream.Continuation.Termination(0, v4, v5, v6);
  v108 = *(v13 - 8);
  v109 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v107 = &v90 - v15;
  v100 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v99 = &v90 - v16;
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  v115 = v17;
  v116 = v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v90 - v20;
  v105 = *(v5 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v91 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v98 = (&v90 - v24);
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v97 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v90 - v29;
  _swift_async_stream_lock_lock((v2 + ((*(v3 + 48) + 7) & 0x1FFFFFFF8)));
  v31 = (v2 + *(*v2 + 104));
  v32 = v31[5];
  v113 = v31[4];
  v114 = v5;
  v106 = v32;
  v110 = v4;
  v92 = v6;
  v33 = type metadata accessor for AsyncThrowingStream._Storage.State(0, v4, v5, v6);
  v31[4] = 0;
  v31[5] = 0;
  v34 = *(v33 + 56);
  v96 = *(v26 + 16);
  v96(v30, v31 + v34, v25);
  v35 = *(v118 + 48);
  v112 = v7;
  v95 = v35;
  LODWORD(v7) = v35(v30, 1, v7);
  v36 = *(v26 + 8);
  v111 = v25;
  v104 = v36;
  v36(v30, v25);
  if (v7 == 1)
  {
    v90 = v34;
    v37 = v116;
    v38 = v115;
    (*(v116 + 16))(v21, v117, v115);
    v39 = v105;
    v40 = v114;
    if ((*(v105 + 48))(v21, 1, v114) == 1)
    {
      (*(v37 + 8))(v21, v38);
      v34 = v90;
      v104(v31 + v90, v111);
      v41 = 1;
    }

    else
    {
      v42 = *(v39 + 32);
      v43 = v98;
      v42(v98, v21, v114);
      v44 = v42;
      v34 = v90;
      v104(v31 + v90, v111);
      v44(v31 + v34, v43, v114);
      v40 = v114;
      v41 = 0;
    }

    (*(v39 + 56))(v31 + v34, v41, 1, v40);
    (*(v118 + 56))(v31 + v34, 0, 1, v112);
  }

  if (!*v31)
  {
    _swift_async_stream_lock_unlock((v2 + ((*(*v2 + 48) + 7) & 0x1FFFFFFF8)));
    v58 = v113;
    if (!v113)
    {
      (*(v116 + 8))(v117, v115);
      return;
    }

    v59 = v116;
    v60 = v107;
    v61 = v115;
    (*(v116 + 32))(v107, v117, v115);
LABEL_15:
    (*(v59 + 56))(v60, 0, 1, v61);
    v65 = v106;
    (v58)(v60);
    _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v58, v65);
    (*(v108 + 8))(v60, v109);
    return;
  }

  v98 = *v31;
  v45 = v34;
  v46 = v31[1];

  v47 = v110;
  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, v46, &type metadata for _DequeBufferHeader, v110, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v89);
  v48 = v119;

  if (v48 >= 1)
  {
    *v31 = 0;
    v51 = type metadata accessor for _Deque(0, v47, v49, v50);
    v52 = v99;
    _Deque.removeFirst()(v51);
    _swift_async_stream_lock_unlock((v2 + ((*(*v2 + 48) + 7) & 0x1FFFFFFF8)));
    v53 = v113;
    if (v113)
    {
      v54 = v116;
      v55 = v107;
      v56 = v115;
      (*(v116 + 32))(v107, v117, v115);
      (*(v54 + 56))(v55, 0, 1, v56);
      v57 = v106;
      (v53)(v55);
      _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v53, v57);
      (*(v108 + 8))(v55, v109);
    }

    else
    {
      (*(v116 + 8))(v117, v115);
    }

    v67 = v100;
    v66 = v101;
    (*(v100 + 32))(v101, v52, v47);
    (*(v67 + 56))(v66, 0, 1, v47);
    v68 = v98;
    (*(v102 + 32))(v98[8][5], v66, v103);
    swift_continuation_throwingResume(v68, v69);
    return;
  }

  v62 = v97;
  v63 = v111;
  v96(v97, v31 + v45, v111);
  v64 = v112;
  if (v95(v62, 1, v112) == 1)
  {
    v104(v62, v63);
    _swift_async_stream_lock_unlock((v2 + ((*(*v2 + 48) + 7) & 0x1FFFFFFF8)));
    v61 = v115;
    v59 = v116;
    v58 = v113;
    if (!v113)
    {
      (*(v116 + 8))(v117, v115);
      return;
    }

    v60 = v107;
    (*(v116 + 32))(v107, v117, v115);
    goto LABEL_15;
  }

  v70 = *(v118 + 32);
  v71 = v93;
  v70(v93, v62, v64);
  *v31 = 0;
  _swift_async_stream_lock_unlock((v2 + ((*(*v2 + 48) + 7) & 0x1FFFFFFF8)));
  v72 = v113;
  if (v113)
  {
    v73 = v116;
    v74 = v107;
    v75 = v115;
    (*(v116 + 32))(v107, v117, v115);
    (*(v73 + 56))(v74, 0, 1, v75);
    v76 = v106;
    (v72)(v74);
    _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v72, v76);
    (*(v108 + 8))(v74, v109);
  }

  else
  {
    (*(v116 + 8))(v117, v115);
  }

  v77 = v102;
  v78 = v94;
  v70(v94, v71, v64);
  v79 = v105;
  v80 = v114;
  if ((*(v105 + 48))(v78, 1, v114) == 1)
  {
    v81 = v101;
    (*(v100 + 56))(v101, 1, 1, v110);
    v82 = v98;
    (*(v77 + 32))(v98[8][5], v81, v103);
    swift_continuation_throwingResume(v82, v83);
  }

  else
  {
    v84 = *(v79 + 32);
    v85 = v91;
    v84(v91, v78, v80);
    v86 = swift_allocError();
    v84(v87, v85, v80);
    v119 = v86;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    UnsafeContinuation.resume(throwing:)(&v119, v98, v103, v88, MEMORY[0x1E69E7288]);
  }
}

void AsyncThrowingStream._Storage.yield(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v123 = a2;
  v124 = a1;
  v3 = *v2;
  v110 = *(*(*v2 + 88) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v108 = &v107 - v4;
  v6 = *(v5 + 80);
  v128 = *(v5 + 96);
  v129 = v7;
  v8 = type metadata accessor for AsyncThrowingStream._Storage.Terminal(0, v6, v7, v128);
  v126 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v109 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v112 = &v107 - v11;
  v121 = type metadata accessor for Optional();
  v119 = *(v121 - 8);
  v12 = MEMORY[0x1EEE9AC00](v121);
  v118 = &v107 - v13;
  v127 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v115 = &v107 - v14;
  v125 = v8;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v111 = &v107 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v107 - v22;
  _swift_async_stream_lock_lock((v2 + ((*(v3 + 48) + 7) & 0x1FFFFFFF8)));
  v24 = *(*v2 + 104);
  v122 = v2;
  v117 = *(v2 + v24 + 16);
  v116 = *(v2 + v24 + 24);
  v25 = (v2 + v24);
  v26 = *(v2 + v24 + 8);
  v120 = (v2 + v24 + 8);

  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, v26, &type metadata for _DequeBufferHeader, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v106);
  v27 = v130;

  v28 = *v25;
  if (!*v25)
  {
    v47 = v128;
    v46 = v129;
    v48 = type metadata accessor for AsyncThrowingStream._Storage.State(0, v6, v129, v128);
    (*(v16 + 16))(v19, v25 + *(v48 + 56), v15);
    v49 = (*(v126 + 48))(v19, 1, v125);
    (*(v16 + 8))(v19, v15);
    if (v49 != 1)
    {
      (*(v127 + 8))(v124, v6);
      type metadata accessor for AsyncThrowingStream.Continuation.YieldResult(0, v6, v46, v47);
      goto LABEL_21;
    }

    v52 = v127;
    if (v116)
    {
      v53 = v47;
      v54 = v117;
      if (v116 == 1)
      {
        if (v27 < v117)
        {
          v55 = type metadata accessor for _Deque(0, v6, v50, v51);
          v56 = v124;
          _Deque.append(_:)(v124, v55);
          (*(v52 + 8))(v56, v6);
          if (!__OFSUB__(v54, v27 + 1))
          {
            *v123 = v54 - (v27 + 1);
            type metadata accessor for AsyncThrowingStream.Continuation.YieldResult(0, v6, v46, v53);
LABEL_21:
            swift_storeEnumTagMultiPayload();
LABEL_33:
            _swift_async_stream_lock_unlock((v122 + ((*(*v122 + 48) + 7) & 0x1FFFFFFF8)));
            return;
          }

          __break(1u);
LABEL_52:
          __break(1u);
          return;
        }

        if (v27 >= 1)
        {
          v101 = type metadata accessor for _Deque(0, v6, v50, v51);
          _Deque.removeFirst()(v101);
          type metadata accessor for AsyncThrowingStream.Continuation.YieldResult(0, v6, v46, v53);
          swift_storeEnumTagMultiPayload();
          v102 = v124;
          _Deque.append(_:)(v124, v101);
          (*(v52 + 8))(v102, v6);
          goto LABEL_33;
        }

        (*(v127 + 32))(v123, v124, v6);
        v103 = v6;
        v104 = v46;
        v105 = v53;
LABEL_50:
        type metadata accessor for AsyncThrowingStream.Continuation.YieldResult(0, v103, v104, v105);
        goto LABEL_21;
      }

      *v123 = 0x7FFFFFFFFFFFFFFFLL;
      type metadata accessor for AsyncThrowingStream.Continuation.YieldResult(0, v6, v46, v53);
    }

    else
    {
      if (v27 >= v117)
      {
        (*(v127 + 32))(v123, v124, v6);
        v103 = v6;
        v104 = v46;
        v105 = v47;
        goto LABEL_50;
      }

      if (__OFSUB__(v117, v27 + 1))
      {
        goto LABEL_52;
      }

      *v123 = v117 - (v27 + 1);
      type metadata accessor for AsyncThrowingStream.Continuation.YieldResult(0, v6, v46, v47);
    }

    swift_storeEnumTagMultiPayload();
    v90 = type metadata accessor for _Deque(0, v6, v88, v89);
    v91 = v124;
    _Deque.append(_:)(v124, v90);
    (*(v52 + 8))(v91, v6);
    goto LABEL_33;
  }

  v29 = v15;
  v30 = v125;
  v113 = v6;
  v114 = v28;
  v31 = v128;
  v32 = *(type metadata accessor for AsyncThrowingStream._Storage.State(0, v6, v129, v128) + 56);
  v33 = *(v16 + 16);
  v34 = v126;
  v35 = (v126 + 48);
  if (v27 >= 1)
  {
    v36 = v27;
    v33(v23, v25 + v32, v29);
    v37 = (*v35)(v23, 1, v30);
    (*(v16 + 8))(v23, v29);
    if (v37 != 1)
    {
      v41 = v127;
      v40 = v113;
      (*(v127 + 8))(v124, v113);
      type metadata accessor for AsyncThrowingStream.Continuation.YieldResult(0, v40, v129, v128);
      swift_storeEnumTagMultiPayload();
      v63 = v119;
LABEL_42:
      *v25 = 0;
      v98 = type metadata accessor for _Deque(0, v40, v64, v65);
      v99 = v115;
      _Deque.removeFirst()(v98);
      _swift_async_stream_lock_unlock((v122 + ((*(*v122 + 48) + 7) & 0x1FFFFFFF8)));
      v97 = v118;
      (*(v41 + 32))(v118, v99, v40);
      (*(v41 + 56))(v97, 0, 1, v40);
      goto LABEL_43;
    }

    v40 = v113;
    v41 = v127;
    if (v116)
    {
      v42 = v117;
      if (v116 == 1)
      {
        v43 = type metadata accessor for _Deque(0, v113, v38, v39);
        v44 = v43;
        if (v36 < v42)
        {
          v45 = v124;
          _Deque.append(_:)(v124, v43);
          (*(v41 + 8))(v45, v40);
          *v123 = v42 + ~v36;
          type metadata accessor for AsyncThrowingStream.Continuation.YieldResult(0, v40, v129, v128);
LABEL_40:
          swift_storeEnumTagMultiPayload();
          goto LABEL_41;
        }

        _Deque.removeFirst()(v43);
        type metadata accessor for AsyncThrowingStream.Continuation.YieldResult(0, v40, v129, v128);
        swift_storeEnumTagMultiPayload();
        v86 = v124;
        v87 = v124;
        v85 = v44;
LABEL_38:
        _Deque.append(_:)(v87, v85);
        (*(v41 + 8))(v86, v40);
LABEL_41:
        v63 = v119;
        goto LABEL_42;
      }

      v82 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      if (v27 >= v117)
      {
        (*(v127 + 32))(v123, v124, v113);
        type metadata accessor for AsyncThrowingStream.Continuation.YieldResult(0, v40, v129, v128);
        goto LABEL_40;
      }

      v82 = v117 + ~v27;
    }

    *v123 = v82;
    type metadata accessor for AsyncThrowingStream.Continuation.YieldResult(0, v40, v129, v128);
    swift_storeEnumTagMultiPayload();
    v85 = type metadata accessor for _Deque(0, v40, v83, v84);
    v86 = v124;
    v87 = v124;
    goto LABEL_38;
  }

  v120 = v25;
  v57 = v111;
  v33(v111, v25 + v32, v29);
  v58 = v30;
  if ((*v35)(v57, 1, v30) != 1)
  {
    v66 = *(v127 + 8);
    v67 = v124;
    v68 = v31;
    v124 = v29;
    v69 = v34;
    v70 = v113;
    v66(v67, v113);
    v71 = v58;
    v72 = *(v34 + 32);
    v73 = v68;
    v72(v112, v57, v71);
    v74 = v129;
    type metadata accessor for AsyncThrowingStream.Continuation.YieldResult(0, v70, v129, v73);
    swift_storeEnumTagMultiPayload();
    v75 = v120;
    *v120 = 0;
    (*(v16 + 8))(v75 + v32, v124);
    v76 = v110;
    (*(v110 + 56))(v75 + v32, 1, 1, v74);
    (*(v69 + 56))(v75 + v32, 0, 1, v71);
    _swift_async_stream_lock_unlock((v122 + ((*(*v122 + 48) + 7) & 0x1FFFFFFF8)));
    v77 = v109;
    v72(v109, v112, v71);
    if ((*(v76 + 48))(v77, 1, v74) != 1)
    {
      v92 = *(v76 + 32);
      v93 = v108;
      v92(v108, v77, v74);
      v94 = swift_allocError();
      v92(v95, v93, v74);
      v130 = v94;
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      UnsafeContinuation.resume(throwing:)(&v130, v114, v121, v96, MEMORY[0x1E69E7288]);
      return;
    }

    v78 = v118;
    (*(v127 + 56))(v118, 1, 1, v70);
    v79 = v114;
    (*(v119 + 32))(v114[8][5], v78, v121);
    v81 = v79;
    goto LABEL_44;
  }

  (*(v16 + 8))(v57, v29);
  v59 = v127;
  if (v116)
  {
    v60 = v113;
    v61 = v129;
    v62 = v117;
    if (v116 != 1)
    {
      v62 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v63 = v119;
  }

  else
  {
    v60 = v113;
    v61 = v129;
    v63 = v119;
    v62 = v117;
  }

  *v123 = v62;
  type metadata accessor for AsyncThrowingStream.Continuation.YieldResult(0, v60, v61, v31);
  swift_storeEnumTagMultiPayload();
  *v25 = 0;
  _swift_async_stream_lock_unlock((v122 + ((*(*v122 + 48) + 7) & 0x1FFFFFFF8)));
  v97 = v118;
  (*(v59 + 32))(v118, v124, v60);
  (*(v59 + 56))(v97, 0, 1, v60);
LABEL_43:
  v100 = v114;
  (*(v63 + 32))(v114[8][5], v97, v121);
  v81 = v100;
LABEL_44:
  swift_continuation_throwingResume(v81, v80);
}

void AsyncThrowingStream._Storage.next(_:)(atomic_ullong **a1)
{
  v2 = v1;
  v61 = a1;
  v3 = *v1;
  v51 = *(*(*v1 + 88) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v48 - v4;
  v6 = *(v5 + 80);
  v7 = *(v5 + 96);
  v57 = v8;
  v55 = v7;
  v9 = type metadata accessor for AsyncThrowingStream._Storage.Terminal(255, v6, v8, v7);
  v56 = type metadata accessor for Optional();
  v54 = *(v56 - 8);
  v10 = MEMORY[0x1EEE9AC00](v56);
  v12 = &v48 - v11;
  v52 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v50 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v48 - v15;
  v16 = type metadata accessor for Optional();
  v59 = *(v16 - 8);
  v60 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v58 = &v48 - v18;
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - v20;
  _swift_async_stream_lock_lock((v1 + ((*(v3 + 48) + 7) & 0x1FFFFFFF8)));
  v22 = v1 + *(*v1 + 104);
  if (*v22)
  {
    AsyncThrowingStream._Storage.unlock()();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v23 = *(v22 + 1);

    _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, v23, &type metadata for _DequeBufferHeader, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v47);
    v24 = v62;

    if (v24 >= 1)
    {
      v27 = type metadata accessor for _Deque(0, v6, v25, v26);
      _Deque.removeFirst()(v27);
      _swift_async_stream_lock_unlock((v1 + ((*(*v1 + 48) + 7) & 0x1FFFFFFF8)));
      v28 = v58;
      (*(v19 + 32))(v58, v21, v6);
      (*(v19 + 56))(v28, 0, 1, v6);
LABEL_4:
      v29 = v61;
      (*(v59 + 32))(v61[8][5], v28, v60);
      swift_continuation_throwingResume(v29, v30);
      return;
    }

    v31 = *(type metadata accessor for AsyncThrowingStream._Storage.State(0, v6, v57, v55) + 56);
    v32 = v54;
    v33 = v56;
    (*(v54 + 16))(v12, &v22[v31], v56);
    v34 = v52;
    if ((*(v52 + 48))(v12, 1, v9) == 1)
    {
      (*(v32 + 8))(v12, v33);
      *v22 = v61;
      _swift_async_stream_lock_unlock((v2 + ((*(*v2 + 48) + 7) & 0x1FFFFFFF8)));
    }

    else
    {
      v35 = *(v34 + 32);
      v48 = v9;
      v35(v53, v12, v9);
      (*(v32 + 8))(&v22[v31], v56);
      v36 = v51;
      v37 = v57;
      (*(v51 + 56))(&v22[v31], 1, 1, v57);
      v38 = &v22[v31];
      v39 = v48;
      (*(v34 + 56))(v38, 0, 1, v48);
      _swift_async_stream_lock_unlock((v2 + ((*(*v2 + 48) + 7) & 0x1FFFFFFF8)));
      v40 = v50;
      v35(v50, v53, v39);
      if ((*(v36 + 48))(v40, 1, v37) == 1)
      {
        v28 = v58;
        (*(v19 + 56))(v58, 1, 1, v6);
        goto LABEL_4;
      }

      v41 = *(v36 + 32);
      v42 = v49;
      v43 = v57;
      v41(v49, v40, v57);
      v44 = swift_allocError();
      v41(v45, v42, v43);
      v62 = v44;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      UnsafeContinuation.resume(throwing:)(&v62, v61, v60, v46, MEMORY[0x1E69E7288]);
    }
  }
}

void AsyncThrowingStream._Storage.next()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  swift_task_switch(AsyncThrowingStream._Storage.next(), 0, 0);
}

void AsyncThrowingStream._Storage.next()()
{
  v1 = v0[3];

  v2 = swift_task_alloc(32);
  v0[5] = v2;
  *(v2 + 16) = partial apply for implicit closure #2 in implicit closure #1 in AsyncThrowingStream._Storage.next();
  *(v2 + 24) = v1;
  v3 = swift_task_alloc(96);
  v0[6] = v3;
  type metadata accessor for Optional();
  *v3 = v0;
  v3[1] = AsyncThrowingStream._Storage.next();
  v4 = v0[2];
  v5 = v0[3];

  withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v4, &async function pointer to partial apply for closure #1 in AsyncThrowingStream._Storage.next(), v5, partial apply for closure #2 in AsyncThrowingStream._Storage.next(), v2, 0, 0);
}

{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;
  v2;
  if (v0)
  {

    swift_task_switch(AsyncThrowingStream._Storage.next(), 0, 0);
  }

  else
  {
    v4 = v3[5];

    v4;
    v5 = v3[1];

    v5();
  }
}

uint64_t AsyncThrowingStream._Storage.next()()
{
  v1 = *(v0 + 40);

  v1;
  v2 = *(v0 + 8);

  return v2();
}

void closure #1 in AsyncThrowingStream._Storage.next()(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *a2;
  swift_task_switch(closure #1 in AsyncThrowingStream._Storage.next(), 0, 0);
}

uint64_t closure #1 in AsyncThrowingStream._Storage.next()()
{
  v1 = swift_task_alloc(112);
  v0[5] = v1;
  v2 = type metadata accessor for Optional();
  *v1 = v0;
  v1[1] = closure #1 in AsyncThrowingStream._Storage.next();
  v3 = v0[2];
  v4 = v0[3];

  return (withUnsafeThrowingContinuation<A>(isolation:_:))(v3, 0, 0, partial apply for closure #1 in closure #1 in AsyncThrowingStream._Storage.next(), v4, v2);
}

{
  return (*(v0 + 8))();
}

void closure #1 in AsyncThrowingStream._Storage.next()()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;
  v2;
  if (v0)
  {

    swift_task_switch(closure #1 in AsyncThrowingStream._Storage.next(), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    v4();
  }
}

uint64_t static AsyncThrowingStream._Storage.create(limit:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = *(v2 + 96);
  v7 = type metadata accessor for AsyncThrowingStream._Storage.State(0, v4, v5, v6);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  v11 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  protocol witness for static Equatable.== infix(_:_:) in conformance ContinuousClock.Instant.CodingKeys();
  v12 = swift_allocObject();
  v13 = *(*v12 + 104);
  v15 = v11;
  v16 = a1;
  AsyncThrowingStream._Storage.State.init(limit:)(&v15, v4, v5, v6, v10);
  (*(v8 + 32))(v12 + v13, v10, v7);
  _swift_async_stream_lock_init((v12 + ((*(*v12 + 48) + 7) & 0x1FFFFFFF8)));
  return v12;
}

void _AsyncStreamCriticalStorage.value.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  _swift_async_stream_lock_lock((v1 + ((*(*v1 + 48) + 7) & 0x1FFFFFFF8)));
  (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + *(*v1 + 88));
  v4 = (v1 + ((*(*v1 + 48) + 7) & 0x1FFFFFFF8));

  _swift_async_stream_lock_unlock(v4);
}

uint64_t static _AsyncStreamCriticalStorage.create(_:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  protocol witness for static Equatable.== infix(_:_:) in conformance ContinuousClock.Instant.CodingKeys();
  v7 = swift_allocObject();
  v8 = *(*v7 + 88);
  (*(v4 + 16))(v6, a1, v3);
  (*(v4 + 32))(v7 + v8, v6, v3);
  _swift_async_stream_lock_init((v7 + ((*(*v7 + 48) + 7) & 0x1FFFFFFF8)));
  return v7;
}

uint64_t TaskLocal.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

Swift::Int AsyncStream.Continuation.Termination.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865D4230](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AsyncStream<A>.Continuation.Termination(uint64_t a1)
{
  Hasher.init(_seed:)();
  AsyncStream.Continuation.Termination.hash(into:)();
  return Hasher._finalize()();
}

uint64_t (*key path getter for AsyncStream.Continuation.onTermination : <A>AsyncStream<A>.Continuation@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>))()
{
  v4 = *(a1 + a2 - 8);
  result = AsyncStream.Continuation.onTermination.getter();
  if (result)
  {
    v7 = result;
    v8 = v6;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v7;
    *(result + 4) = v8;
    v9 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed AsyncStream<A>.Continuation.Termination) -> ();
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  a3[1] = result;
  return result;
}

uint64_t key path setter for AsyncStream.Continuation.onTermination : <A>AsyncStream<A>.Continuation(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = swift_allocObject();
    v7[2] = v4;
    v7[3] = v5;
    v7[4] = v6;
    v8 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed AsyncStream<A>.Continuation.Termination) -> (@out ());
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v5, v6);
  type metadata accessor for AsyncStream.Continuation(0, v4, v9, v10);

  specialized AsyncStream.Continuation.onTermination.setter(v8, v7);
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v8, v7);
}

uint64_t AsyncStream.Continuation.onTermination.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized AsyncStream.Continuation.onTermination.setter(a1, a2);

  return _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(a1, a2);
}

uint64_t (*AsyncStream.Continuation.onTermination.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = *v1;
  *a1 = AsyncStream._Storage.getOnTermination()();
  a1[1] = v3;
  return AsyncStream.Continuation.onTermination.modify;
}

void *AsyncStream._Context.__allocating_init(storage:produce:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t AsyncStream._Context.__deallocating_deinit()
{
  AsyncStream._Context.deinit(AsyncStream._Storage.cancel@Sendable ());

  return swift_deallocClassInstance();
}

uint64_t AsyncStream.init(_:bufferingPolicy:_:)@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *)@<X2>, uint64_t a3@<X4>, void *a4@<X8>, uint64_t a5@<X3>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  type metadata accessor for AsyncStream._Storage(0, a3, a2, a5);
  v15 = v8;
  v16 = v9;
  v10 = static AsyncStream._Storage.create(limit:)(&v15);
  type metadata accessor for AsyncStream._Context(0, a3, v11, v12);
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = &async function pointer to partial apply for implicit closure #2 in implicit closure #1 in AsyncStream.init(_:bufferingPolicy:_:);
  v13[4] = v10;
  *a4 = v13;

  v15 = v10;

  a2(&v15);
}

void implicit closure #2 in implicit closure #1 in AsyncStream.init(_:bufferingPolicy:_:)(uint64_t a1)
{
  v3 = swift_task_alloc(64);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = implicit closure #2 in implicit closure #1 in AsyncStream.init(_:bufferingPolicy:_:);

  AsyncStream._Storage.next()(a1);
}

uint64_t implicit closure #2 in implicit closure #1 in AsyncStream.init(_:bufferingPolicy:_:)()
{
  v3 = *v0;
  *(*v0 + 16);
  v1 = *(v3 + 8);

  return v1();
}

void *AsyncStream.init(unfolding:onCancel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  type metadata accessor for Optional();
  swift_getFunctionTypeMetadata0();
  v12 = type metadata accessor for Optional();
  type metadata accessor for _AsyncStreamCriticalStorage(0, v12, v13, v14);
  v20[0] = a1;
  v20[1] = a2;
  v15 = static _AsyncStreamCriticalStorage.create(_:)(v20);

  type metadata accessor for AsyncStream._Context(0, a5, v16, v17);
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a3;
  v18[5] = a4;
  result = swift_allocObject();
  result[2] = 0;
  result[3] = &async function pointer to partial apply for closure #1 in AsyncStream.init(unfolding:onCancel:);
  result[4] = v18;
  *a6 = result;
  return result;
}

void closure #1 in AsyncStream.init(unfolding:onCancel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  swift_task_switch(closure #1 in AsyncStream.init(unfolding:onCancel:), 0, 0);
}

void closure #1 in AsyncStream.init(unfolding:onCancel:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_task_alloc(32);
  v0[7] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  v6 = swift_task_alloc(48);
  v0[8] = v6;
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v2;
  v7 = swift_task_alloc(96);
  v0[9] = v7;
  type metadata accessor for Optional();
  *v7 = v0;
  v7[1] = closure #1 in AsyncStream.init(unfolding:onCancel:);
  v8 = v0[2];

  withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v8, &async function pointer to partial apply for closure #1 in closure #1 in AsyncStream.init(unfolding:onCancel:), v5, partial apply for closure #2 in closure #1 in AsyncStream.init(unfolding:onCancel:), v6, 0, 0);
}

uint64_t closure #1 in AsyncStream.init(unfolding:onCancel:)()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 72);
  if (v0)
  {

    JUMPOUT(0x1865D4950);
  }

  v4 = *(v2 + 56);
  *(v2 + 64);
  v4;
  v5 = *(v3 + 8);

  return v5();
}

void closure #1 in closure #1 in AsyncStream.init(unfolding:onCancel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = type metadata accessor for Optional();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v3[11] = swift_task_alloc((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(closure #1 in closure #1 in AsyncStream.init(unfolding:onCancel:), 0, 0);
}

uint64_t closure #1 in closure #1 in AsyncStream.init(unfolding:onCancel:)()
{
  _AsyncStreamCriticalStorage.value.getter((v0 + 2));
  v1 = v0[2];
  v0[12] = v1;
  if (v1)
  {
    v0[13] = v0[3];
    v8 = (v1 + *v1);
    v2 = swift_task_alloc(v1[1]);
    v0[14] = v2;
    *v2 = v0;
    v2[1] = closure #1 in closure #1 in AsyncStream.init(unfolding:onCancel:);
    v3 = v0[11];

    return v8(v3);
  }

  else
  {
    v5 = *(*(v0[8] - 8) + 56);
    v5(v0[11], 1, 1);
    (*(v0[10] + 8))(v0[11], v0[9]);
    v0[5] = 0;
    v0[4] = 0;
    specialized _AsyncStreamCriticalStorage.value.setter((v0 + 4));
    v6 = v0[11];
    (v5)(v0[6], 1, 1, v0[8]);
    v6;
    v7 = v0[1];

    return v7();
  }
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v1, v0[9]);
    v0[4] = 0;
    v0[5] = 0;
    specialized _AsyncStreamCriticalStorage.value.setter((v0 + 4));
    v4 = 1;
  }

  else
  {
    (*(v3 + 32))(v0[6], v1, v2);
    v4 = 0;
  }

  v5 = v0[11];
  (*(v3 + 56))(v0[6], v4, 1, v0[8]);
  v5;
  v6 = v0[1];

  return v6();
}

void closure #1 in closure #1 in AsyncStream.init(unfolding:onCancel:)()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  *(*v0 + 112);
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v2, v1);

  swift_task_switch(closure #1 in closure #1 in AsyncStream.init(unfolding:onCancel:), 0, 0);
}

void AsyncStream.Iterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  swift_task_switch(AsyncStream.Iterator.next(), 0, 0);
}

uint64_t AsyncStream.Iterator.next()()
{
  v1 = **(v0 + 24);
  v2 = *(v1 + 24);
  *(v0 + 32) = *(v1 + 32);

  v6 = (v2 + *v2);
  v3 = swift_task_alloc(v2[1]);
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = AsyncStream.Iterator.next();
  v4 = *(v0 + 16);

  return v6(v4);
}

void AsyncStream.Iterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v7 = (*(a3 + 8))(ObjectType, a3);
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  swift_task_switch(AsyncStream.Iterator.next(isolation:), v7, v9);
}

uint64_t AsyncStream.Iterator.next(isolation:)()
{
  v1 = **(v0 + 24);
  v2 = *(v1 + 24);
  *(v0 + 32) = *(v1 + 32);

  v6 = (v2 + *v2);
  v3 = swift_task_alloc(v2[1]);
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = AsyncStream.Iterator.next(isolation:);
  v4 = *(v0 + 16);

  return v6(v4);
}

{
  v3 = *v0;
  *(*v0 + 40);

  v1 = *(v3 + 8);

  return v1();
}

void protocol witness for AsyncIteratorProtocol.next() in conformance AsyncStream<A>.Iterator(uint64_t a1)
{
  v3 = swift_task_alloc(48);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = ThrowingTaskGroup._waitForAll();

  AsyncStream.Iterator.next()(a1);
}

void _sScS8IteratorVyx_GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc(48);
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = ThrowingTaskGroup._waitForAll();

  AsyncStream.Iterator.next(isolation:)(a1, a2, a3);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance AsyncStream<A>@<X0>(uint64_t *a1@<X8>)
{
  AsyncStream.makeAsyncIterator()(a1);
}

void AsyncStream.Continuation.yield(with:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Result();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  (*(v12 + 16))(&v13 - v10, a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    AsyncStream._Storage.yield(_:)(v8, a3);
  }
}

uint64_t static AsyncStream.makeStream(of:bufferingPolicy:)(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a4;
  v8 = *(a4 + 8);
  v17 = 0;
  v14 = v7;
  v15 = v8;
  v12 = a5;
  v13 = &v17;
  result = AsyncStream.init(_:bufferingPolicy:_:)(&v14, partial apply for closure #1 in static AsyncStream.makeStream(of:bufferingPolicy:), a5, &v16, v11);
  v10 = v17;
  *a1 = v16;
  if (v10)
  {
    *a2 = v10;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t key path getter for AsyncThrowingStream.Continuation.onTermination : <A, B>AsyncThrowingStream<A, B>.Continuation@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v10 = *(a1 + a2 - 24);
  v4 = *(a1 + a2 - 8);
  result = AsyncThrowingStream.Continuation.onTermination.getter();
  if (result)
  {
    v7 = result;
    v8 = v6;
    result = swift_allocObject();
    *(result + 16) = v10;
    *(result + 32) = v4;
    *(result + 40) = v7;
    *(result + 48) = v8;
    v9 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed AsyncThrowingStream<A, B>.Continuation.Termination) -> ();
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  a3[1] = result;
  return result;
}

uint64_t key path setter for AsyncThrowingStream.Continuation.onTermination : <A, B>AsyncThrowingStream<A, B>.Continuation(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a1;
  v8 = a1[1];
  if (*a1)
  {
    v9 = swift_allocObject();
    v9[2] = v4;
    v9[3] = v5;
    v9[4] = v6;
    v9[5] = v7;
    v9[6] = v8;
    v10 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed AsyncThrowingStream<A, B>.Continuation.Termination) -> (@out ());
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v7, v8);
  type metadata accessor for AsyncThrowingStream.Continuation(0, v4, v5, v6);

  specialized AsyncThrowingStream.Continuation.onTermination.setter(v10, v9);
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v10, v9);
}

uint64_t AsyncThrowingStream.Continuation.onTermination.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized AsyncThrowingStream.Continuation.onTermination.setter(a1, a2);

  return _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(a1, a2);
}

uint64_t (*AsyncThrowingStream.Continuation.onTermination.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = *v1;
  *a1 = AsyncThrowingStream._Storage.getOnTermination()();
  a1[1] = v3;
  return AsyncThrowingStream.Continuation.onTermination.modify;
}

uint64_t AsyncStream.Continuation.onTermination.modify(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t))
{
  v8 = a1[1];
  v9 = *a1;

  if (a2)
  {
    a5(v9, v8);
    a3(v9, v8);
    a4(v9, v8);

    return a4(v9, v8);
  }

  else
  {
    a3(v9, v8);
    a4(v9, v8);
  }
}

uint64_t AsyncStream._Context.deinit(void (*a1)(uint64_t))
{
  if (*(v1 + 16))
  {

    a1(v3);
  }

  return v1;
}

uint64_t AsyncThrowingStream._Context.__deallocating_deinit()
{
  AsyncStream._Context.deinit(AsyncThrowingStream._Storage.cancel@Sendable ());

  return swift_deallocClassInstance();
}

uint64_t AsyncThrowingStream.init<>(_:bufferingPolicy:_:)@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *)@<X2>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v10 = MEMORY[0x1E69E7288];
  type metadata accessor for AsyncThrowingStream._Storage(0, a3, v9, MEMORY[0x1E69E7288]);
  v15 = v7;
  v16 = v8;
  v11 = static AsyncThrowingStream._Storage.create(limit:)(&v15);
  type metadata accessor for AsyncThrowingStream._Context(0, a3, v9, v10);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = &async function pointer to partial apply for implicit closure #2 in implicit closure #1 in AsyncThrowingStream.init<>(_:bufferingPolicy:_:);
  v12[4] = v11;
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @async () -> (@out A?, @error @owned Error);
  v13[4] = v12;
  *a4 = v13;

  v15 = v11;

  a2(&v15);
}

void implicit closure #2 in implicit closure #1 in AsyncThrowingStream.init<>(_:bufferingPolicy:_:)(uint64_t a1)
{
  v3 = swift_task_alloc(64);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  AsyncThrowingStream._Storage.next()(a1);
}

uint64_t thunk for @escaping @callee_guaranteed @async () -> (@out A?, @error @owned Error)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc(a2[1]);
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = _ss31AsyncThrowingCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return v9(a1);
}

void *AsyncThrowingStream.init<>(unfolding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for Optional();
  swift_getFunctionTypeMetadata0();
  v8 = type metadata accessor for Optional();
  type metadata accessor for _AsyncStreamCriticalStorage(0, v8, v9, v10);
  v15[0] = a1;
  v15[1] = a2;
  v11 = static _AsyncStreamCriticalStorage.create(_:)(v15);

  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for AsyncThrowingStream._Context(0, a3, v12, MEMORY[0x1E69E7288]);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = v11;
  result = swift_allocObject();
  result[2] = 0;
  result[3] = &async function pointer to partial apply for closure #1 in AsyncThrowingStream.init<>(unfolding:);
  result[4] = v13;
  *a4 = result;
  return result;
}

void closure #1 in AsyncThrowingStream.init<>(unfolding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  swift_task_switch(closure #1 in AsyncThrowingStream.init<>(unfolding:), 0, 0);
}

void closure #1 in AsyncThrowingStream.init<>(unfolding:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc(32);
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc(32);
  v0[7] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc(96);
  v0[8] = v5;
  type metadata accessor for Optional();
  *v5 = v0;
  v5[1] = closure #1 in AsyncThrowingStream.init<>(unfolding:);
  v6 = v0[2];

  withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &async function pointer to partial apply for closure #1 in closure #1 in AsyncThrowingStream.init<>(unfolding:), v3, partial apply for closure #2 in closure #1 in AsyncThrowingStream.init<>(unfolding:), v4, 0, 0);
}

{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;
  v2;
  if (v0)
  {

    swift_task_switch(closure #1 in AsyncThrowingStream.init<>(unfolding:), 0, 0);
  }

  else
  {
    v4 = v3[6];
    v3[7];
    v4;
    v5 = v3[1];

    v5();
  }
}

uint64_t closure #1 in AsyncThrowingStream.init<>(unfolding:)()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[5];
  v0[7];
  v2;
  *v3 = v1;
  v4 = v0[1];

  return v4();
}

void closure #1 in closure #1 in AsyncThrowingStream.init<>(unfolding:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = type metadata accessor for Optional();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v3[11] = swift_task_alloc((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(closure #1 in closure #1 in AsyncThrowingStream.init<>(unfolding:), 0, 0);
}

uint64_t closure #1 in closure #1 in AsyncThrowingStream.init<>(unfolding:)()
{
  _AsyncStreamCriticalStorage.value.getter((v0 + 2));
  v1 = v0[2];
  v2 = v0[3];
  v0[12] = v1;
  v0[13] = v2;
  if (v1)
  {
    v9 = (v1 + *v1);
    v3 = swift_task_alloc(v1[1]);
    v0[14] = v3;
    *v3 = v0;
    v3[1] = closure #1 in closure #1 in AsyncThrowingStream.init<>(unfolding:);
    v4 = v0[11];

    return v9(v4);
  }

  else
  {
    v6 = *(*(v0[8] - 8) + 56);
    v6(v0[11], 1, 1);
    (*(v0[10] + 8))(v0[11], v0[9]);
    v0[5] = 0;
    v0[4] = 0;
    specialized _AsyncStreamCriticalStorage.value.setter((v0 + 4));
    v7 = v0[11];
    (v6)(v0[6], 1, 1, v0[8]);
    v7;
    v8 = v0[1];

    return v8();
  }
}

{
  v1 = v0[11];
  v2 = v0[8];
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v0[12], v0[13]);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
    v0[4] = 0;
    v0[5] = 0;
    specialized _AsyncStreamCriticalStorage.value.setter((v0 + 4));
    v4 = 1;
  }

  else
  {
    (*(v3 + 32))(v0[6], v0[11], v0[8]);
    v4 = 0;
  }

  v5 = v0[11];
  (*(v3 + 56))(v0[6], v4, 1, v0[8]);
  v5;
  v6 = v0[1];

  return v6();
}

{
  v1 = v0[11];
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v0[12], v0[13]);
  v1;
  v2 = v0[1];

  return v2();
}

void closure #1 in closure #1 in AsyncThrowingStream.init<>(unfolding:)()
{
  v2 = *(*v1 + 112);
  *(*v1 + 120) = v0;
  v2;
  if (v0)
  {
    v3 = closure #1 in closure #1 in AsyncThrowingStream.init<>(unfolding:);
  }

  else
  {
    v3 = closure #1 in closure #1 in AsyncThrowingStream.init<>(unfolding:);
  }

  swift_task_switch(v3, 0, 0);
}

void AsyncThrowingStream.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(a2 + 24);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = swift_task_alloc((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncThrowingStream.Iterator.next(), 0, 0);
}

uint64_t AsyncThrowingStream.Iterator.next()()
{
  v1 = **(v0 + 32);
  v2 = *(v1 + 24);
  *(v0 + 64) = *(v1 + 32);

  v7 = (v2 + *v2);
  v3 = swift_task_alloc(v2[1]);
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = AsyncThrowingStream.Iterator.next();
  v4 = *(v0 + 56);
  v5 = *(v0 + 16);

  return v7(v5, v4);
}

{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);
  v1;
  v5 = v0[1];

  return v5();
}

void AsyncThrowingStream.Iterator.next()()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  v3;

  if (v0)
  {

    swift_task_switch(AsyncThrowingStream.Iterator.next(), 0, 0);
  }

  else
  {
    *(v2 + 56);
    v5 = *(v4 + 8);

    v5();
  }
}

void _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[3] = v5;
  v6[4] = a5;
  v6[2] = a1;
  v9 = *(a4 + 24);
  v6[5] = v9;
  v10 = *(v9 - 8);
  v6[6] = v10;
  v6[7] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v12 = (*(a3 + 8))(ObjectType, a3);
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v6[8] = v12;
  v6[9] = v14;

  swift_task_switch(_sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY0_, v12, v14);
}

uint64_t _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY0_()
{
  v1 = **(v0 + 24);
  v2 = *(v1 + 24);
  *(v0 + 80) = *(v1 + 32);

  v7 = (v2 + *v2);
  v3 = swift_task_alloc(v2[1]);
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTQ1_;
  v4 = *(v0 + 56);
  v5 = *(v0 + 16);

  return v7(v5, v4);
}

void _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTQ1_()
{
  v2 = *v1;
  v3 = (*v1)[11];
  v4 = *v1;
  v3;

  if (v0)
  {
    v5 = v2[8];
    v6 = v2[9];

    swift_task_switch(_sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY2_, v5, v6);
  }

  else
  {
    v2[7];
    v7 = v4[1];

    v7();
  }
}

uint64_t _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY2_()
{
  v1 = v0[7];
  (*(v0[6] + 32))(v0[4], v1, v0[5]);
  v1;
  v2 = v0[1];

  return v2();
}

void protocol witness for AsyncIteratorProtocol.next() in conformance AsyncThrowingStream<A, B>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc(80);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  AsyncThrowingStream.Iterator.next()(a1, a2);
}

void _sScs8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v10 = *(a5 + 24);
  v5[3] = v10;
  v11 = *(v10 - 8);
  v5[4] = v11;
  v12 = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[5] = v12;
  v13 = swift_task_alloc(96);
  v5[6] = v13;
  *v13 = v5;
  v13[1] = _ss23AsyncCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(a1, a2, a3, a5, v12);
}

void AsyncThrowingStream.Continuation.yield<>(with:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = type metadata accessor for Result();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v15 - v12);
  (*(v14 + 16))(&v15 - v12, a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v13;
    AsyncThrowingStream._Storage.finish(throwing:)(&v16);
    type metadata accessor for AsyncThrowingStream.Continuation.YieldResult(0, v5, v10, MEMORY[0x1E69E7288]);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v6 + 32))(v8, v13, v5);
    AsyncThrowingStream._Storage.yield(_:)(v8, a3);
  }
}

uint64_t static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a4;
  v8 = *(a4 + 8);
  v14 = 0;
  v11 = v7;
  v12 = v8;
  result = AsyncThrowingStream.init<>(_:bufferingPolicy:_:)(&v11, partial apply for closure #1 in static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:), a5, &v13);
  v10 = v14;
  *a1 = v13;
  if (v10)
  {
    *a2 = v10;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AsyncStream<A>.Continuation(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

void _DequeBuffer.deinit()
{
  v2 = v0[3];
  v1 = v0[4];
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  else
  {
    v3 = v0[2];
    if (v3 >= v1 + v2)
    {
      goto LABEL_5;
    }

    v4 = v3 - v1;
    if (!__OFSUB__(v3, v1))
    {
      UnsafeMutablePointer.deinitialize(count:)();
      if (!__OFSUB__(v2, v4))
      {
LABEL_5:
        UnsafeMutablePointer.deinitialize(count:)();

LABEL_11:
        JUMPOUT(0x1865D4020);
      }

LABEL_10:
      __break(1u);
      goto LABEL_11;
    }
  }

  __break(1u);
  goto LABEL_10;
}

uint64_t _DequeBuffer.__deallocating_deinit()
{
  _DequeBuffer.deinit();

  return swift_deallocClassInstance();
}

uint64_t _DequeBuffer.description.getter()
{
  _StringGuts.grow(_:)(19);

  strcpy(v3, "_DequeStorage<");
  v0 = _typeName(_:qualified:)();
  MEMORY[0x1865D3D30](v0);

  MEMORY[0x1865D3D30](62, 0xE100000000000000);
  v1 = _DequeBufferHeader.description.getter();
  MEMORY[0x1865D3D30](v1);

  return v3[0];
}

void *one-time initialization function for _emptyDequeStorage()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_DequeBufferCyytGMd, &_ss12_DequeBufferCyytGMR);
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  _emptyDequeStorage = result;
  return result;
}

uint64_t _DequeBufferHeader.description.getter()
{
  _StringGuts.grow(_:)(40);
  MEMORY[0x1865D3D30](0x7469636170616328, 0xEB00000000203A79);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865D3D30](v0);

  MEMORY[0x1865D3D30](0x3A746E756F63202CLL, 0xE900000000000020);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865D3D30](v1);

  MEMORY[0x1865D3D30](0x537472617473202CLL, 0xED0000203A746F6CLL);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865D3D30](v2);

  MEMORY[0x1865D3D30](64, 0xE100000000000000);

  MEMORY[0x1865D3D30](41, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _DequeSlot()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865D3D30](v0);

  return 64;
}

uint64_t _ss20_UnsafeWrappedBufferV5first5count6secondAdByxGSPyxG_SiAGSitcfCyt_Tt3g5@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 < 0 || a4 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (a2)
  {
    *a5 = result;
    *(a5 + 8) = a2;
    *(a5 + 16) = a3;
    *(a5 + 24) = a4;
    *(a5 + 32) = 0;
    return result;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _UnsafeWrappedBuffer.init(first:count:second:count:)@<X0>(uint64_t a6@<X8>)
{
  v7 = UnsafeBufferPointer.init(start:count:)();
  v9 = v8;
  result = UnsafeBufferPointer.init(start:count:)();
  if (v9 <= 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a6 = v7;
    *(a6 + 8) = v9;
    *(a6 + 16) = result;
    *(a6 + 24) = v11;
    *(a6 + 32) = 0;
  }

  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a2 > 0 || (a5 & 1) != 0)
  {
    if (a4)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    if (a5)
    {
      v6 = a3;
    }

    *a6 = result;
    *(a6 + 8) = a2;
    *(a6 + 16) = v6;
    *(a6 + 24) = a4;
    *(a6 + 32) = a5 & 1 | (a4 == 0);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.init(first:count:second:count:)@<X0>(uint64_t a6@<X8>)
{
  v7 = UnsafeMutableBufferPointer.init(start:count:)();
  v9 = v8;
  result = UnsafeMutableBufferPointer.init(start:count:)();
  if (v9 <= 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    if (v11)
    {
      v12 = result;
    }

    else
    {
      v12 = 0;
    }

    *a6 = v7;
    *(a6 + 8) = v9;
    *(a6 + 16) = v12;
    *(a6 + 24) = v11;
    *(a6 + 32) = v11 == 0;
  }

  return result;
}

uint64_t _ss27_UnsafeMutableWrappedBufferV8mutatingAByxGs01_acD0VyxG_tcfCyt_Tt0g5@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  if (v2 <= 0 && *(result + 32) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = *(result + 16);
    if (*(result + 24))
    {
      v5 = *(result + 32);
    }

    else
    {
      v5 = 1;
    }

    if (*(result + 32))
    {
      v6 = 0;
    }

    else
    {
      v6 = *(result + 24);
    }

    if (v5)
    {
      v4 = 0;
    }

    *a2 = *result;
    *(a2 + 8) = v2;
    *(a2 + 16) = v4;
    *(a2 + 24) = v6;
    *(a2 + 32) = v5;
  }

  return result;
}

double _UnsafeMutableWrappedBuffer.init(mutating:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1865D3F60](*a1, *(a1 + 8), a2);
  v8 = v7;
  v16 = *(a1 + 16);
  LOBYTE(v17) = *(a1 + 32);
  v13[2] = a2;
  type metadata accessor for UnsafeBufferPointer();
  type metadata accessor for Optional();
  v9 = type metadata accessor for UnsafeMutableBufferPointer();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in _UnsafeMutableWrappedBuffer.init(mutating:), v13, MEMORY[0x1E69E73E0], v9, v10, v14);
  _UnsafeMutableWrappedBuffer.init(_:_:)(v6, v8, v14[0], v14[1], v15, &v16);
  result = *&v16;
  v12 = v17;
  *a3 = v16;
  *(a3 + 16) = v12;
  *(a3 + 32) = v18;
  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

Swift::Void __swiftcall _UnsafeMutableWrappedBuffer.deinitialize()()
{
  UnsafeMutableBufferPointer._deinitializeAll()();
  if ((*(v0 + 32) & 1) == 0)
  {

    UnsafeMutableBufferPointer._deinitializeAll()();
  }
}

Swift::Void __swiftcall UnsafeMutableBufferPointer._deinitializeAll()()
{
  if (v0 >= 1)
  {
    if (UnsafeMutableBufferPointer.baseAddress.getter())
    {

      UnsafeMutablePointer.deinitialize(count:)();
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

uint64_t _UnsafeMutableWrappedBuffer.initialize<A>(fromPrefixOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for Optional();
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v29 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v26 - v12;
  v34 = 0;
  v13 = 0;
  v14 = v4[1];
  v36 = *v4;
  v37 = v14;
  v30 = v15;
  v31 = (v15 + 48);
  v16 = (v15 + 32);
  v28 = v14;
  do
  {
    if (v13 == v37)
    {
      v17 = v35;
      if (v34)
      {
        v13 = v37;
        goto LABEL_16;
      }

      if (v4[4])
      {
        return v37;
      }

      v18 = v4[3];
      if (v18 < 1)
      {
        return v37;
      }

      v13 = 0;
      v36 = v4[2];
      v37 = v18;
      v34 = 1;
    }

    else
    {
      v17 = v35;
    }

    dispatch thunk of IteratorProtocol.next()();
    if ((*v31)(v9, 1, v5) == 1)
    {
      goto LABEL_13;
    }

    v19 = *v16;
    (*v16)(v17, v9, v5);
    v20 = UnsafeMutableBufferPointer.baseAddress.getter();
    if (!v20)
    {
      goto LABEL_19;
    }

    v21 = v17;
    v22 = v29;
    v23 = v20 + *(v30 + 72) * v13;
    v19(v29, v21, v5);
    v19(v23, v22, v5);
  }

  while (!__OFADD__(v13++, 1));
  __break(1u);
LABEL_13:
  (*(v26 + 8))(v9, v27);
  v37 = v13;
  if ((v34 & 1) == 0)
  {
    return v37;
  }

LABEL_16:
  v37 = v28 + v13;
  if (!__OFADD__(v28, v13))
  {
    return v37;
  }

  __break(1u);
LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.initialize<A>(fromSequencePrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v49 = a1;
  v47 = a3;
  v10 = *(a3 + 16);
  v11 = type metadata accessor for Optional();
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - v13;
  v54 = *(v10 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  v50 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v56 = &v43 - v22;
  v23 = *(v6 + 24);
  v52 = *(v6 + 16);
  v24 = *(v6 + 32);
  if ((v24 & 1) == 0)
  {
    v25 = *(v6 + 8);
    if (v25 < dispatch thunk of Sequence.underestimatedCount.getter())
    {
      v26 = v49;
      dispatch thunk of Sequence.makeIterator()();
      v27 = v26;
      v28 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v30 = v47;

      return _UnsafeMutableWrappedBuffer.initialize<A>(fromPrefixOf:)(v27, v30, v28, AssociatedConformanceWitness);
    }
  }

  v32 = *(v50 + 16);
  v47 = a2;
  v32(v21, a2, a4);
  v33 = *(v6 + 8);
  v34 = dispatch thunk of Sequence._copyContents(initializing:)();
  v46 = v33;
  v35 = a4;
  if (v34 != v33 || (v24 & 1) != 0)
  {
    (*(v50 + 8))(v47, a4);
LABEL_19:
    (*(v48 + 32))(v49, v56, AssociatedTypeWitness);
    return v34;
  }

  if (v23 < 1)
  {
    v23 = 0;
LABEL_16:
    (*(v50 + 8))(v47, v35);
    v36 = v23;
  }

  else
  {
    v43 = a4;
    v51 = swift_getAssociatedConformanceWitness();
    v36 = 0;
    v37 = (v54 + 48);
    v38 = (v54 + 32);
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      if ((*v37)(v14, 1, v10) == 1)
      {
        break;
      }

      v39 = *v38;
      (*v38)(v19, v14, v10);
      v40 = UnsafeMutableBufferPointer.baseAddress.getter();
      if (!v40)
      {
        goto LABEL_21;
      }

      v41 = v53;
      v42 = v40 + *(v54 + 72) * v36;
      v39(v53, v19, v10);
      v39(v42, v41, v10);
      if (v23 == ++v36)
      {
        v35 = v43;
        goto LABEL_16;
      }
    }

    (*(v50 + 8))(v47, v43);
    (*(v44 + 8))(v14, v45);
  }

  v34 = v46 + v36;
  if (!__OFADD__(v46, v36))
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_21:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.initialize<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v63 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for PartialRangeFrom();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v43 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v58 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v43 - v12;
  v55 = AssociatedConformanceWitness;
  v13 = type metadata accessor for PartialRangeUpTo();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v53 = AssociatedTypeWitness;
  v54 = &v43 - v15;
  v56 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v52 = &v43 - v21;
  v22 = *(v4 + 24);
  v23 = *(v4 + 32);
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(v4 + 24);
  }

  v25 = *(v4 + 8);
  if (__OFADD__(v25, v24))
  {
    __break(1u);
    goto LABEL_14;
  }

  v48 = v20;
  v49 = v19;
  v50 = v22;
  v51 = v11;
  v26 = v63;
  v27 = a3;
  if (v25 + v24 != dispatch thunk of Collection.count.getter())
  {
LABEL_14:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_15:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if ((v23 & 1) == 0)
  {
    v47 = *(v4 + 16);
    dispatch thunk of Collection.startIndex.getter();
    v30 = *v4;
    v44 = v25;
    v45 = v30;
    v31 = v52;
    dispatch thunk of Collection.index(_:offsetBy:)();
    v32 = v56;
    v33 = v53;
    (*(v56 + 8))(v18, v53);
    v46 = *(v55 + 8);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v34 = v54;
      (*(v32 + 16))(v54, v31, v33);
      v35 = v49;
      swift_getWitnessTable();
      v36 = v57;
      Collection.subscript.getter();
      (*(v48 + 8))(v34, v35);
      v37 = *(v62 + 16);
      v38 = v51;
      v39 = swift_getAssociatedConformanceWitness();
      v62 = v37;
      v55 = v39;
      UnsafeMutableBufferPointer._initialize<A>(from:)(v36, v45, v44, v37, v38, v39);
      v58 = *(v58 + 8);
      (v58)(v36, v38);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v40 = v59;
        (*(v32 + 32))(v59, v31, v33);
        v41 = v61;
        swift_getWitnessTable();
        v42 = v63;
        Collection.subscript.getter();
        (*(*(v27 - 8) + 8))(v42, v27);
        (*(v60 + 8))(v40, v41);
        UnsafeMutableBufferPointer._initialize<A>(from:)(v36, v47, v50, v62, v38, v55);
        return (v58)(v36, v38);
      }
    }

    goto LABEL_15;
  }

  UnsafeMutableBufferPointer._initialize<A>(from:)(v26, *v4, v25, *(v62 + 16), a3, a4);
  v28 = *(*(a3 - 8) + 8);

  return v28(v26, a3);
}

uint64_t UnsafeMutableBufferPointer._initialize<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a3;
  v23 = a2;
  v24 = a4;
  v8 = type metadata accessor for Optional();
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v21 - v17;
  v19 = v22;
  if (dispatch thunk of Collection.count.getter() == v19)
  {
    (*(v12 + 16))(v14, a1, a5);
    if (dispatch thunk of Sequence._copyContents(initializing:)() == v19)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of IteratorProtocol.next()();
      if ((*(*(v24 - 8) + 48))(v11, 1) == 1)
      {
        (*(v16 + 8))(v18, AssociatedTypeWitness);
        return (*(v25 + 8))(v11, v26);
      }

      (*(v25 + 8))(v11, v26);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.assign<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = dispatch thunk of Collection.count.getter();
  v13 = *(v4 + 24);
  if (*(v4 + 32))
  {
    v13 = 0;
  }

  v14 = *(v4 + 8);
  v15 = __OFADD__(v14, v13);
  v16 = v14 + v13;
  if (v15)
  {
    __break(1u);
  }

  else if (v12 == v16)
  {
    _UnsafeMutableWrappedBuffer.deinitialize()();
    (*(v9 + 16))(v11, a1, a3);
    return _UnsafeMutableWrappedBuffer.initialize<A>(from:)(v11, a2, a3, a4);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Sequence._withContiguousStorageIfAvailable_SR14663<A>(_:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  swift_getAssociatedTypeWitness();
  if (type metadata accessor for Array() == a3 && (_isBridgedVerbatimToObjectiveC<A>(_:)() & 1) != 0)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  else
  {
    return dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  }
}

uint64_t _Deque._Storage.description.getter(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(20);

  v2 = _typeName(_:qualified:)();
  MEMORY[0x1865D3D30](v2);

  MEMORY[0x1865D3D30](0x61726F74535F2E3ELL, 0xEA00000000006567);
  v3 = _DequeBufferHeader.description.getter();
  MEMORY[0x1865D3D30](v3);

  return 0x3C6575716544;
}

uint64_t _Deque._Storage.init()(uint64_t a1)
{
  if (one-time initialization token for _emptyDequeStorage != -1)
  {
    swift_once();
  }

  return ManagedBufferPointer.init(unsafeBufferObject:)();
}

uint64_t _Deque._Storage.init(minimumCapacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _DequeBuffer(0, a2, a3, a4);
  static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();

  return ManagedBufferPointer.init(unsafeBufferObject:)();
}

uint64_t _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v15 + ((*(*(v14 - 8) + 80) + 16) & ~*(*(v14 - 8) + 80)), v13);
  if (v9)
  {
    return (*(v11 + 32))(a9, v13, a6);
  }

  return result;
}

uint64_t _ss20ManagedBufferPointerVsRi__rlE25withUnsafeMutablePointersyqd_0_qd_0_SpyxG_Spyq_Gtqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  result = MEMORY[0x1EEE9AC00](a1);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v21 = *(v19 + 64);
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_7;
  }

  v24 = *(*(v14 - 8) + 80);
  v25 = __CFADD__(v23, v24 + 1);
  v26 = v23 + v24 + 1;
  if (v25)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = v15(v13 + v20, v13 + ((v26 - 1) & ~v24), v17);
  if (v9)
  {
    return (*(v11 + 32))(a9, v17, a6);
  }

  return result;
}

uint64_t _Deque._Storage.read<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a4;
  v14 = a5;
  v15 = a1;
  v16 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return _ss20ManagedBufferPointerVsRi__rlE25withUnsafeMutablePointersyqd_0_qd_0_SpyxG_Spyq_Gtqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(a6, v12, a3, &type metadata for _DequeBufferHeader, a4, v10, a5, MEMORY[0x1E69E7288], &v17);
}

Swift::Void __swiftcall _Deque._Storage.ensureUnique()()
{
  v0 = type metadata accessor for ManagedBufferPointer();
  if ((MEMORY[0x1865D40D0](v0) & 1) == 0)
  {

    _Deque._Storage._makeUniqueCopy()();
  }
}

Swift::Void __swiftcall _Deque._Storage._makeUniqueCopy()()
{
  v2 = *v1;
  v4 = *(v0 + 16);
  _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque._Storage._makeUniqueCopy(), &v3, v2, v4, v0, partial apply for closure #1 in _Deque._Storage.read<A>(_:));

  *v1 = v5;
}

uint64_t _Deque._UnsafeHandle.copyElements()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _DequeBuffer(0, a3, a3, a4);
  v10[8] = a1;
  v10[9] = a2;
  static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
  v7 = ManagedBufferPointer.init(unsafeBufferObject:)();
  v8 = v7;
  if (a1[1] >= 1)
  {
    MEMORY[0x1EEE9AC00](v7);
    v10[2] = a3;
    v10[3] = a1;
    v10[4] = a2;
    _Deque._Storage.read<A>(_:)(partial apply for closure #2 in _Deque._UnsafeHandle.copyElements(), v10, v8, a3, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
  }

  return v8;
}

Swift::Int __swiftcall _Deque._Storage._growCapacity(to:linearly:)(Swift::Int to, Swift::Bool linearly)
{
  if (linearly)
  {
    _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.capacity.getter, 0, v2, &type metadata for _DequeBufferHeader, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v8);
    v5 = v9;
  }

  else
  {
    _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.capacity.getter, 0, v2, &type metadata for _DequeBufferHeader, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v8);
    v6 = ceil(v9 * 1.5);
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v6 <= -9.22337204e18 || v6 >= 9.22337204e18)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v5 = v6;
  }

  if (v5 <= to)
  {
    return to;
  }

  else
  {
    return v5;
  }
}

Swift::Void __swiftcall _Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(Swift::Int minimumCapacity, Swift::Bool linearGrowth)
{
  v6 = *(v2 + 16);
  v7 = type metadata accessor for ManagedBufferPointer();
  v8 = MEMORY[0x1865D40D0](v7);
  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.capacity.getter, 0, *v3, &type metadata for _DequeBufferHeader, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v9);
  if (v10 < minimumCapacity || (v8 & 1) == 0)
  {
    _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(minimumCapacity, linearGrowth);
  }
}

uint64_t specialized _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v5 >= a1)
  {
    if (!isUniquelyReferenced_nonNull_native)
    {
      v13 = *v2;
      v14 = (*v2 + 16);
      v15 = *v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_DequeBufferCyytGMd, &_ss12_DequeBufferCyytGMR);
      v16 = swift_allocObject();
      v17 = *(v13 + 24);
      *(v16 + 16) = v15;
      v18 = (v16 + 16);
      *(v16 + 24) = v17;
      swift_getObjectType();
      _swift_getObjCClassInstanceExtents();
      if ((v19 & 0x8000000000000000) == 0)
      {
        if (v19 == 16)
        {
          goto LABEL_17;
        }

        _swift_getObjCClassInstanceExtents();
        if ((v20 & 0x8000000000000000) == 0)
        {
          if (v20 == 40)
          {
LABEL_17:
            if (_swift_objcClassUsesNativeSwiftReferenceCounting())
            {
              if (*(v13 + 24) >= 1)
              {
                specialized _Deque._UnsafeHandle.segments()(v14, v13 + 40, v24);
                specialized _Deque._UnsafeHandle.initialize(at:from:)(*(v13 + 32), v24[0], v24[1], v18, v16 + 40, 201, specialized UnsafeMutablePointer.initialize(from:count:), 203);
                if ((v25 & 1) == 0)
                {
                  specialized _Deque._UnsafeHandle.initialize(at:from:)(0, v24[2], v24[3], v18, v16 + 40, 201, specialized UnsafeMutablePointer.initialize(from:count:), 203);
                }
              }

              goto LABEL_31;
            }
          }

LABEL_37:
          _fatalErrorMessage(_:_:file:line:flags:)();
          __break(1u);
          goto LABEL_38;
        }
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_37;
  }

  v7 = *v2;
  v8 = (*v2 + 16);
  v9 = *v8;
  if (!isUniquelyReferenced_nonNull_native)
  {
    if ((a2 & 1) == 0)
    {
      v21 = ceil(v9 * 1.5);
      if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v21 <= -9.22337204e18 || v21 >= 9.22337204e18)
      {
        goto LABEL_38;
      }

      v9 = v21;
    }

    if (v9 <= a1)
    {
      v22 = a1;
    }

    else
    {
      v22 = v9;
    }

    v12 = specialized _Deque._UnsafeHandle.copyElements(minimumCapacity:)(v22, v8, v7 + 40);
    goto LABEL_30;
  }

  if (a2)
  {
LABEL_8:
    if (v9 <= a1)
    {
      v11 = a1;
    }

    else
    {
      v11 = v9;
    }

    v12 = specialized _Deque._UnsafeHandle.moveElements(minimumCapacity:)(v11, v8, v7 + 40);
LABEL_30:
    v16 = v12;
LABEL_31:

    *v2 = v16;
    return result;
  }

  v10 = ceil(v9 * 1.5);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v10 > -9.22337204e18 && v10 < 9.22337204e18)
  {
    v9 = v10;
    goto LABEL_8;
  }

LABEL_38:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(Swift::Int minimumCapacity, Swift::Bool linearGrowth)
{
  v4 = v2;
  v7 = *(v2 + 16);
  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.capacity.getter, 0, *v3, &type metadata for _DequeBufferHeader, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v18);
  v8 = type metadata accessor for ManagedBufferPointer();
  v9 = MEMORY[0x1865D40D0](v8);
  v10 = v9;
  if (v20 < minimumCapacity)
  {
    v11 = minimumCapacity;
    v12 = *v3;
    v13 = _Deque._Storage._growCapacity(to:linearly:)(v11, linearGrowth);
    if (v10)
    {
      v18 = v7;
      v19 = MEMORY[0x1EEE9AC00](v13);
      v14 = partial apply for closure #2 in _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:);
      v15 = partial apply for closure #1 in _Deque._Storage.update<A>(_:);
LABEL_8:
      _Deque._Storage.read<A>(_:)(v14, &v17, v12, v7, v4, v15);

      *v3 = v20;
      return;
    }

    v18 = v7;
    v19 = MEMORY[0x1EEE9AC00](v13);
    v16 = partial apply for closure #3 in _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:);
LABEL_7:
    v14 = v16;
    v15 = partial apply for closure #1 in _Deque._Storage.read<A>(_:);
    goto LABEL_8;
  }

  if ((v9 & 1) == 0)
  {
    v12 = *v3;
    MEMORY[0x1EEE9AC00](v9);
    v18 = v7;
    v16 = partial apply for closure #1 in _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:);
    goto LABEL_7;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t *specialized _Deque._UnsafeHandle.moveElements(minimumCapacity:)(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3 > a1)
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_DequeBufferCyytGMd, &_ss12_DequeBufferCyytGMR);
  v6 = swift_allocObject();
  v6[2] = _swift_stdlib_malloc_size(v6) - 40;
  v6[3] = v3;
  v6[4] = 0;
  swift_getObjectType();
  _swift_getObjCClassInstanceExtents();
  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7 == 16)
  {
    goto LABEL_6;
  }

  _swift_getObjCClassInstanceExtents();
  if (v8 < 0)
  {
LABEL_12:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_14;
  }

  if (v8 != 40)
  {
LABEL_14:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

LABEL_6:
  if ((_swift_objcClassUsesNativeSwiftReferenceCounting() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v3 > 0)
  {
    specialized _Deque._UnsafeHandle.segments()(a2, a3, v11);
    _ss27_UnsafeMutableWrappedBufferV8mutatingAByxGs01_acD0VyxG_tcfCyt_Tt0g5(v11, v12);
    v9 = specialized _Deque._UnsafeHandle.initialize(at:from:)(0, v12[0], v12[1], v6 + 2, (v6 + 5), 212, specialized UnsafeMutablePointer.moveInitialize(from:count:), 214);
    if ((v13 & 1) == 0)
    {
      specialized _Deque._UnsafeHandle.initialize(at:from:)(v9, v12[2], v12[3], v6 + 2, (v6 + 5), 212, specialized UnsafeMutablePointer.moveInitialize(from:count:), 214);
    }

    a2[1] = 0;
  }

  return v6;
}

uint64_t _Deque._UnsafeHandle.moveElements(minimumCapacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 8);
  if (v4 > a1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v8 = type metadata accessor for _DequeBuffer(0, a4, a3, a4);
    MEMORY[0x1EEE9AC00](v8);
    v13 = v4;
    static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
    v9 = ManagedBufferPointer.init(unsafeBufferObject:)();
    v10 = v9;
    if (v4 >= 1)
    {
      MEMORY[0x1EEE9AC00](v9);
      v12[2] = a4;
      v12[3] = a2;
      v13 = a3;
      _Deque._Storage.read<A>(_:)(partial apply for closure #2 in _Deque._UnsafeHandle.moveElements(minimumCapacity:), v12, v10, a4, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
      *(a2 + 8) = 0;
    }

    return v10;
  }

  return result;
}

uint64_t *specialized _Deque._UnsafeHandle.copyElements(minimumCapacity:)(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2[1] > a1)
  {
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_DequeBufferCyytGMd, &_ss12_DequeBufferCyytGMR);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  v7 = a2[1];
  v5[2] = v6 - 40;
  v5[3] = v7;
  v5[4] = 0;
  swift_getObjectType();
  _swift_getObjCClassInstanceExtents();
  if (v8 < 0)
  {
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_14:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_15;
  }

  if (v8 != 16)
  {
    _swift_getObjCClassInstanceExtents();
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (v9 != 40)
      {
        goto LABEL_15;
      }

      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_6:
  if (_swift_objcClassUsesNativeSwiftReferenceCounting())
  {
    v10 = a2[1];
    if (v10 <= 0)
    {
      return v5;
    }

    if (v5[3] == v10 && !v5[4])
    {
      specialized _Deque._UnsafeHandle.segments()(a2, a3, v13);
      v11 = specialized _Deque._UnsafeHandle.initialize(at:from:)(0, v13[0], v13[1], v5 + 2, (v5 + 5), 201, specialized UnsafeMutablePointer.initialize(from:count:), 203);
      if ((v14 & 1) == 0)
      {
        specialized _Deque._UnsafeHandle.initialize(at:from:)(v11, v13[2], v13[3], v5 + 2, (v5 + 5), 201, specialized UnsafeMutablePointer.initialize(from:count:), 203);
      }

      return v5;
    }

    goto LABEL_14;
  }

LABEL_15:
  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _Deque._UnsafeHandle.copyElements(minimumCapacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 8) > a1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = type metadata accessor for _DequeBuffer(0, a4, a3, a4);
    MEMORY[0x1EEE9AC00](v7);
    v12 = a2;
    v13 = a3;
    static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
    v8 = ManagedBufferPointer.init(unsafeBufferObject:)();
    v9 = v8;
    if (*(a2 + 8) >= 1)
    {
      MEMORY[0x1EEE9AC00](v8);
      v11[2] = a4;
      v11[3] = a2;
      v12 = a3;
      _Deque._Storage.read<A>(_:)(partial apply for closure #2 in _Deque._UnsafeHandle.copyElements(minimumCapacity:), v11, v9, a4, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
    }

    return v9;
  }

  return result;
}

uint64_t _Deque._UnsafeHandle.ptr(at:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 0x8000000000000000) == 0 && *a2 >= a1)
  {
    return a3 + *(*(a4 - 8) + 72) * a1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _Deque._UnsafeHandle.buffer(for:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*a3 < a2)
  {
    goto LABEL_7;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_7:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  return UnsafeBufferPointer.init(start:count:)();
}

uint64_t _Deque._UnsafeHandle.limSlot.getter(uint64_t *a1)
{
  result = *a1;
  if (result < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized _Deque._UnsafeHandle.slot(after:)(uint64_t a1, uint64_t *a2)
{
  if (*a2 <= a1)
  {
    goto LABEL_7;
  }

  result = a1 + 1;
  if (result >= *a2)
  {
    return 0;
  }

  if (a1 <= -2)
  {
LABEL_7:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::_DequeSlot __swiftcall _Deque._UnsafeHandle.slot(before:)(Swift::_DequeSlot before)
{
  v2 = *v1;
  if (*v1 <= before.position)
  {
    goto LABEL_10;
  }

  if (!before.position)
  {
    if (v2 > 0)
    {
      return (v2 - 1);
    }

LABEL_10:
    result.position = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v3 = __OFSUB__(before.position, 1);
  result.position = before.position - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result.position < 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3 < a1)
  {
    goto LABEL_15;
  }

  v5 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a2 < 0)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    v5 = __OFADD__(result, v3);
    result += v3;
    if (v5)
    {
      goto LABEL_14;
    }

LABEL_10:
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

LABEL_15:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v5 = __OFSUB__(result, v3);
  v6 = result - v3;
  if (v6 < 0 != v5)
  {
    goto LABEL_10;
  }

  if (v5)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v6;
  if (v6 < 0)
  {
    goto LABEL_15;
  }

  return result;
}

Swift::_DequeSlot __swiftcall _Deque._UnsafeHandle.slot(forOffset:)(Swift::Int forOffset)
{
  if (forOffset < 0)
  {
    goto LABEL_9;
  }

  v2 = *v1;
  if (*v1 < forOffset)
  {
    goto LABEL_9;
  }

  result.position = v1[2] + forOffset;
  v4 = __OFSUB__(result.position, v2);
  v5 = result.position - v2;
  if (v5 < 0 != v4)
  {
    if ((result.position & 0x8000000000000000) == 0)
    {
      return result;
    }

LABEL_9:
    result.position = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  result.position = v5;
  if (v5 < 0)
  {
    goto LABEL_9;
  }

  return result;
}

void *specialized _Deque._UnsafeHandle.segments()@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = result[1];
  v9 = v4 < 0 || *result < v4;
  if (v5 < v7)
  {
    if (!v9)
    {
      if (!__OFSUB__(v7, v5))
      {
        result = _ss20_UnsafeWrappedBufferV5first5count6secondAdByxGSPyxG_SiAGSitcfCyt_Tt3g5(a2 + v4, v5, a2, v7 - v5, v13);
        v10 = v13[0];
        v7 = v13[1];
        v11 = v14;
        v12 = v15;
LABEL_15:
        *a3 = v10;
        *(a3 + 8) = v7;
        *(a3 + 16) = v11;
        *(a3 + 32) = v12;
        return result;
      }

      goto LABEL_17;
    }

LABEL_18:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_19;
  }

  if (v9)
  {
    goto LABEL_18;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = a2 + v4;
    v11 = 0uLL;
    v12 = 1;
    goto LABEL_15;
  }

LABEL_19:
  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _Deque._UnsafeHandle.segments()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  result = a1[2];
  v8 = v6 - result;
  if (__OFSUB__(v6, result))
  {
    __break(1u);
  }

  else
  {
    v11 = a1[1];
    _Deque._UnsafeHandle.ptr(at:)(result, a1, a2, a3);
    if (v8 >= v11)
    {
      result = UnsafeBufferPointer.init(start:count:)();
      v13 = 1;
      LOBYTE(v15[0]) = 1;
      v12 = 0uLL;
      goto LABEL_6;
    }

    result = _Deque._UnsafeHandle.ptr(at:)(0, a1, a2, a3);
    if (!__OFSUB__(a1[1], v8))
    {
      _UnsafeWrappedBuffer.init(first:count:second:count:)(v15);
      v12 = v16;
      v13 = v17;
      result = v15[0];
      v14 = v15[1];
LABEL_6:
      *a4 = result;
      *(a4 + 8) = v14;
      *(a4 + 16) = v12;
      *(a4 + 32) = v13;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _Deque._UnsafeHandle.segments(forOffsets:)@<X0>(Swift::Int a1@<X0>, Swift::Int a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if ((a1 & 0x8000000000000000) == 0 && a3[1] >= a2)
  {
    v12.position = _Deque._UnsafeHandle.slot(forOffset:)(a1).position;
    v13.position = _Deque._UnsafeHandle.slot(forOffset:)(a2).position;
    v14 = __OFSUB__(a2, a1);
    v15 = a2 - a1;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      position = v13.position;
      _Deque._UnsafeHandle.ptr(at:)(v12.position, a3, a4, a5);
      if (!v15 || v12.position < position)
      {
        result = UnsafeBufferPointer.init(start:count:)();
        v18 = 1;
        LOBYTE(v21[0]) = 1;
        v17 = 0uLL;
        goto LABEL_9;
      }

      if (!__OFSUB__(*a3, v12.position))
      {
        _Deque._UnsafeHandle.ptr(at:)(0, a3, a4, a5);
        _UnsafeWrappedBuffer.init(first:count:second:count:)(v21);
        v17 = v22;
        v18 = v23;
        result = v21[0];
        v20 = v21[1];
LABEL_9:
        *a6 = result;
        *(a6 + 8) = v20;
        *(a6 + 16) = v17;
        *(a6 + 32) = v18;
        return result;
      }
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _Deque._UnsafeHandle.availableSegments()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(a1[2], a1[1], a1);
  if (a1[1] >= *a1)
  {
    _Deque._UnsafeHandle.ptr(at:)(v8, a1, a2, a3);
    result = UnsafeMutableBufferPointer.init(start:count:)();
    v13 = 0;
    v14 = 0;
    v15 = 1;
    goto LABEL_12;
  }

  v9 = a1[2];
  if (v8 < v9)
  {
    v10 = _Deque._UnsafeHandle.buffer(for:)(v8, v9, a1, a2, a3);
    result = MEMORY[0x1865D3F60](v10);
    v13 = 0;
    v14 = 0;
    v15 = 1;
LABEL_12:
    *a4 = result;
    *(a4 + 8) = v12;
    *(a4 + 16) = v13;
    *(a4 + 24) = v14;
    *(a4 + 32) = v15;
    return result;
  }

  v16 = v8;
  v17 = _Deque._UnsafeHandle.limSlot.getter(a1);
  if (v17 < v16 || (v18 = _Deque._UnsafeHandle.buffer(for:)(v16, v17, a1, a2, a3), v19 = MEMORY[0x1865D3F60](v18), v21 = v20, v22 = a1[2], v22 < 0))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v23 = v19;
    v24 = _Deque._UnsafeHandle.buffer(for:)(0, v22, a1, a2, a3);
    v25 = MEMORY[0x1865D3F60](v24);
    if (v21 > 0)
    {
      v14 = v26;
      v12 = v21;
      v15 = v14 == 0;
      if (v14)
      {
        v13 = v25;
      }

      else
      {
        v13 = 0;
      }

      result = v23;
      goto LABEL_12;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *specialized UnsafeMutablePointer.initialize(from:count:)(char *__src, size_t __n, char *__dst)
{
  if ((__n & 0x8000000000000000) != 0 || &__dst[__n] > __src && &__src[__n] > __dst)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    return memcpy(__dst, __src, __n);
  }

  return result;
}

uint64_t specialized _Deque._UnsafeHandle.initialize(at:from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  v8 = result + a3;
  if (__OFADD__(result, a3))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*a4 < v8)
  {
    goto LABEL_13;
  }

  if (a3 < 1)
  {
    return result;
  }

  if (result < 0 || *a4 < result)
  {
    goto LABEL_13;
  }

  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_13;
  }

  a7(a2, a3, a5 + result);
  result = v8;
  if (v8 < 0)
  {
LABEL_13:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _Deque._UnsafeHandle.initialize(at:from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t), void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a10)
{
  v10 = result + a3;
  if (__OFADD__(result, a3))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*a4 < v10)
  {
    goto LABEL_10;
  }

  if (a3 < 1)
  {
    return result;
  }

  v15 = _Deque._UnsafeHandle.ptr(at:)(result, a4, a5, a6);
  v16 = a8(a2, a3, a6);
  if (!v16)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_10;
  }

  a9(v16, a3, v15, a6);
  result = v10;
  if (v10 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, size_t __len, char *__dst)
{
  if ((__len & 0x8000000000000000) != 0)
  {
    __src = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (__dst != __src || &__src[__len] <= __dst)
  {

    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (a2 < 0)
  {
    __src = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (__dst != __src || &__src[8 * a2] <= __dst)
  {

    return memmove(__dst, __src, 8 * a2);
  }

  return __src;
}

Swift::tuple_source__DequeSlot_target__DequeSlot __swiftcall _Deque._UnsafeHandle.move(from:to:count:)(Swift::_DequeSlot from, Swift::_DequeSlot to, Swift::Int count)
{
  if (count < 0)
  {
    goto LABEL_11;
  }

  position = from.position;
  if (__OFADD__(from.position, count))
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v3;
  if (*v3 < from.position + count)
  {
LABEL_11:
    v12 = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_12;
  }

  if (__OFADD__(to.position, count))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*v3 < to.position + count)
  {
    goto LABEL_11;
  }

  if (count)
  {
    v9 = v5;
    v10 = v4;
    v11 = to.position;
    _Deque._UnsafeHandle.ptr(at:)(to.position, v3, v4, v5);
    _Deque._UnsafeHandle.ptr(at:)(position, v8, v10, v9);
    UnsafeMutablePointer.moveInitialize(from:count:)();
    position = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(position, count, v8);
    to.position = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(v11, count, v8);
  }

  v12 = position;
LABEL_12:
  result.target = to;
  result.source.position = v12;
  return result;
}

uint64_t _Deque._UnsafeHandle.uncheckedReplaceInPlace<A>(inOffsets:with:)(Swift::Int a1, Swift::Int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4[1] < a2)
  {
    goto LABEL_8;
  }

  result = dispatch thunk of Collection.count.getter();
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result != a2 - a1)
  {
LABEL_8:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a1 != a2)
  {
    _Deque._UnsafeHandle.segments(forOffsets:)(a1, a2, a4, a5, a6, v21);
    _UnsafeMutableWrappedBuffer.init(mutating:)(v21, a6, v20);
    v19 = type metadata accessor for _UnsafeMutableWrappedBuffer(0, a6, v17, v18);
    return _UnsafeMutableWrappedBuffer.assign<A>(from:)(a3, v19, a7, a8);
  }

  return result;
}

uint64_t specialized _Deque._UnsafeHandle.uncheckedAppend(_:)(uint64_t *a1)
{
  v1 = a1[1];
  if (v1 >= *a1 || (result = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(a1[2], v1, a1), result < 0) || *a1 < result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    a1[1] = v1 + 1;
  }

  return result;
}

uint64_t _Deque._UnsafeHandle.uncheckedAppend(_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 8);
  if (v12 < *a2)
  {
    v13 = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(a2[2], v12, a2);
    v14 = _Deque._UnsafeHandle.ptr(at:)(v13, a2, a3, a4);
    (*(v8 + 16))(v10, a1, a4);
    result = (*(v8 + 32))(v14, v10, a4);
    v16 = a2[1];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (!v17)
    {
      a2[1] = v18;
      return result;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int _Deque._UnsafeHandle.uncheckedAppend(contentsOf:)(uint64_t a1, uint64_t a2, Swift::Int *a3, uint64_t a4, uint64_t a5)
{
  result = a3[1];
  v8 = __OFADD__(result, a2);
  v9 = result + a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*a3 < v9)
  {
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 1)
  {
    return result;
  }

  a3[1] = v9;
  if (v9 < result)
  {
LABEL_9:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  _Deque._UnsafeHandle.segments(forOffsets:)(result, v9, a3, a4, a5, v17);
  _UnsafeMutableWrappedBuffer.init(mutating:)(v17, a5, v16);
  v17[0] = a1;
  v17[1] = a2;
  v13 = type metadata accessor for _UnsafeMutableWrappedBuffer(0, a5, v11, v12);
  v14 = type metadata accessor for UnsafeBufferPointer();
  WitnessTable = swift_getWitnessTable();
  return _UnsafeMutableWrappedBuffer.initialize<A>(from:)(v17, v13, v14, WitnessTable);
}

uint64_t _Deque._UnsafeHandle.uncheckedPrepend(_:)(uint64_t a1, Swift::_DequeSlot *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11[1] < *v11)
  {
    position = _Deque._UnsafeHandle.slot(before:)(a2[2]).position;
    v13 = _Deque._UnsafeHandle.ptr(at:)(position, a2, a3, a4);
    (*(v8 + 16))(v10, a1, a4);
    result = (*(v8 + 32))(v13, v10, a4);
    a2[2].position = position;
    v15 = a2[1].position;
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (!v16)
    {
      a2[1].position = v17;
      return result;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _Deque._UnsafeHandle.mutableWrappedBuffer(between:and:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*a3 >= a1 && *a3 >= a2)
  {
    _Deque._UnsafeHandle.ptr(at:)(a1, a3, a4, a5);
    if (a1 >= a2)
    {
      if (!__OFSUB__(*a3, a1))
      {
        _Deque._UnsafeHandle.ptr(at:)(0, a3, a4, a5);
        _UnsafeMutableWrappedBuffer.init(first:count:second:count:)(v16);
        v15 = v17;
        v14 = v18;
        result = v16[0];
        v13 = v16[1];
        goto LABEL_8;
      }
    }

    else
    {
      if (!__OFSUB__(a2, a1))
      {
        result = UnsafeMutableBufferPointer.init(start:count:)();
        v14 = 1;
        LOBYTE(v16[0]) = 1;
        v15 = 0uLL;
LABEL_8:
        *a6 = result;
        *(a6 + 8) = v13;
        *(a6 + 16) = v15;
        *(a6 + 32) = v14;
        return result;
      }

      __break(1u);
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _Deque._UnsafeHandle.uncheckedInsert<A>(contentsOf:count:atOffset:)(uint64_t a1, Swift::Int a2, Swift::Int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4[1] >= a3 && dispatch thunk of Collection.count.getter() == a2)
  {
    if (a2 < 1)
    {
      v20 = *(*(a7 - 8) + 8);

      return v20(a1, a7);
    }

    else
    {
      _Deque._UnsafeHandle.openGap(ofSize:atOffset:)(a2, a3, a4, a5, a6, v21);
      v18 = type metadata accessor for _UnsafeMutableWrappedBuffer(0, a6, v16, v17);
      return _UnsafeMutableWrappedBuffer.initialize<A>(from:)(a1, v18, a7, a8);
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double _Deque._UnsafeHandle.openGap(ofSize:atOffset:)@<D0>(Swift::Int a1@<X0>, Swift::Int a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a2 < 0)
  {
    goto LABEL_64;
  }

  v8 = a3[1];
  v9 = v8 - a2;
  if (v8 < a2)
  {
    goto LABEL_64;
  }

  if (__OFADD__(v8, a1))
  {
    __break(1u);
    goto LABEL_56;
  }

  if (*a3 < v8 + a1 || a1 <= 0)
  {
    goto LABEL_64;
  }

  v13 = a3[2];
  if (v9 <= a2)
  {
    v23 = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(v13, v8, a3);
    v24 = a3[1];
    if (!__OFADD__(v24, a1))
    {
      v13 = v23;
      v25 = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(a3[2], v24 + a1, a3);
      v15.position = _Deque._UnsafeHandle.slot(forOffset:)(a2).position;
      v26 = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(v15.position, a1, a3);
      v14.position = v26;
      v27 = *a3;
      v28 = v13;
      if (v13 || (v28 = *a3, (v27 & 0x8000000000000000) == 0))
      {
        v29 = v25;
        if (v25 || (v29 = *a3, (v27 & 0x8000000000000000) == 0))
        {
          if (v28 >= v15.position)
          {
            if (v29 < v26)
            {
              v34 = _Deque._UnsafeHandle.limSlot.getter(a3) - a1;
              if (v34 < 0)
              {
                goto LABEL_64;
              }

              _Deque._UnsafeHandle.move(from:to:count:)(v34, 0, v25);
              v35 = __OFSUB__(v9, v25);
              v9 -= v25;
              if (v35)
              {
                __break(1u);
LABEL_37:
                if (v13 < v14.position)
                {
                  goto LABEL_64;
                }

                if (__OFSUB__(v17, v13))
                {
                  goto LABEL_61;
                }

                _Deque._UnsafeHandle.move(from:to:count:)(v13, v14, v17 - v13);
                v32 = _Deque._UnsafeHandle.limSlot.getter(a3) - a1;
                if (v32 < 0)
                {
                  goto LABEL_64;
                }

                v31.position = 0;
                position = v15.position;
                goto LABEL_42;
              }
            }
          }

          else if (v29 >= v26)
          {
            v40 = v13;
            if (!v13)
            {
              v40 = *a3;
              if (v27 < 0)
              {
                goto LABEL_64;
              }
            }

            if (v40 >= a3[2])
            {
              goto LABEL_64;
            }

            _Deque._UnsafeHandle.move(from:to:count:)(0, a1, v13);
            v9 = *a3 - v15.position;
            if (__OFSUB__(*a3, v15.position))
            {
LABEL_63:
              __break(1u);
              goto LABEL_64;
            }
          }

          else
          {
            _Deque._UnsafeHandle.move(from:to:count:)(0, a1, v13);
            v30 = _Deque._UnsafeHandle.limSlot.getter(a3) - a1;
            if (v30 < 0)
            {
              goto LABEL_64;
            }

            _Deque._UnsafeHandle.move(from:to:count:)(v30, 0, a1);
            v17 = v9 - a1;
            if (__OFSUB__(v9, a1))
            {
              goto LABEL_62;
            }

            v9 = v17 - v13;
            if (__OFSUB__(v17, v13))
            {
              __break(1u);
              goto LABEL_28;
            }
          }

          _Deque._UnsafeHandle.move(from:to:count:)(v15, v14, v9);
          v41 = a3[1];
          v35 = __OFADD__(v41, a1);
          v42 = v41 + a1;
          if (v35)
          {
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          a3[1] = v42;
          if (v14.position || (v14.position = *a3, (*a3 & 0x8000000000000000) == 0))
          {
            v38 = v15.position;
            v39 = v14.position;
            goto LABEL_54;
          }
        }
      }

      while (1)
      {
LABEL_64:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v14.position = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(v13, -a1, a3);
  v15.position = _Deque._UnsafeHandle.slot(forOffset:)(a2).position;
  v16 = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(v15.position, -a1, a3);
  v9 = v16;
  v17 = *a3;
  v18 = v15.position;
  if (!v15.position)
  {
    v18 = *a3;
    if (v17 < 0)
    {
      goto LABEL_64;
    }
  }

  v19 = v16;
  if (!v16)
  {
    v19 = *a3;
    if (v17 < 0)
    {
      goto LABEL_64;
    }
  }

  if (v18 < v13)
  {
    if (v19 < v14.position)
    {
      if (__OFSUB__(v17, v13))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      _Deque._UnsafeHandle.move(from:to:count:)(v13, v14, v17 - v13);
      v20 = _Deque._UnsafeHandle.limSlot.getter(a3) - a1;
      if (v20 < 0)
      {
        goto LABEL_64;
      }

      v21.position = 0;
      v22 = a1;
      goto LABEL_31;
    }

    goto LABEL_37;
  }

LABEL_28:
  if (v19 < v14.position)
  {
    v22 = v17 - v14.position;
    if (__OFSUB__(v17, v14.position))
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v21.position = v13;
    v20 = v14.position;
LABEL_31:
    _Deque._UnsafeHandle.move(from:to:count:)(v21, v20, v22);
    v31.position = a1;
    v32 = 0;
    position = v9;
    goto LABEL_42;
  }

  v31.position = v13;
  v32 = v14.position;
  position = a2;
LABEL_42:
  _Deque._UnsafeHandle.move(from:to:count:)(v31, v32, position);
  a3[2] = v14.position;
  v36 = a3[1];
  v35 = __OFADD__(v36, a1);
  v37 = v36 + a1;
  if (v35)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  a3[1] = v37;
  if (!v15.position)
  {
    v15.position = *a3;
    if (*a3 < 0)
    {
      goto LABEL_64;
    }
  }

  v38 = v9;
  v39 = v15.position;
LABEL_54:
  _Deque._UnsafeHandle.mutableWrappedBuffer(between:and:)(v38, v39, a3, a4, a5, v47);
  v43 = v48;
  result = *v47;
  v45 = v47[1];
  *a6 = v47[0];
  *(a6 + 16) = v45;
  *(a6 + 32) = v43;
  return result;
}