uint64_t objectdestroy_20Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_26Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222A5EBC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222A35344;

  return sub_222A5E354(a1, v4, v5, v6);
}

uint64_t sub_222A5EC90(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A35344;

  return sub_222A5E404(a1, v1);
}

void *sub_222A5ED40(void *a1, uint64_t *a2, uint64_t a3)
{
  v7 = *(sub_222B01848() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_222A5AB3C(a1, a2, a3, v8, v9);
}

uint64_t sub_222A5EDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 16))(a2, a1, *(a1 + 8));
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_222A5EE08(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A35344;

  return sub_222A31C04(a1, v1);
}

uint64_t sub_222A5EEA4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A34620;

  return sub_222A5D9EC(a1, v1);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222A5EF80@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (*(v3 + 16))();
  v8 = v7;
  result = swift_allocObject();
  *(result + 16) = v6;
  *(result + 24) = v8;
  *a3 = a2;
  a3[1] = result;
  return result;
}

uint64_t sub_222A5EFE4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_222B01848() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_222A59534(a1, a2, v6, v7);
}

uint64_t sub_222A5F068@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t objectdestroy_121Tm()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_222A5F0F4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A35344;

  return sub_222A5DBE8(a1, v1);
}

uint64_t sub_222A5F1A4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A35344;

  return sub_222A5DFB0(a1, v1);
}

uint64_t sub_222A5F274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WindowedAsyncSequence.WindowedAsyncSequenceIterator(0, v10, v11, v12);
  v14 = *(v13 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a4 + v14, 1, 1, AssociatedTypeWitness);
  *(a4 + *(v13 + 40)) = 0;
  (*(v7 + 16))(v9, a1, a2);
  sub_222B02798();
  return (*(v7 + 8))(a1, a2);
}

uint64_t WindowedAsyncSequence.WindowedAsyncSequenceIterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 24);
  v3[6] = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v5 = sub_222B02B28();
  v3[8] = v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v3[9] = TupleTypeMetadata2;
  v3[10] = *(TupleTypeMetadata2 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = *(AssociatedTypeWitness - 8);
  v3[13] = swift_task_alloc();
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222A5F5AC, 0, 0);
}

uint64_t sub_222A5F5AC()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 40);
  *(v0 + 184) = v2;
  if (*(v1 + v2))
  {
    (*(*(v0 + 80) + 56))(*(v0 + 16), 1, 1, *(v0 + 72));

    v3 = *(v0 + 8);
LABEL_5:

    return v3();
  }

  if (sub_222B02788())
  {
    *(v1 + v2) = 1;
    sub_222B02728();
    sub_222A34DE0();
    swift_allocError();
    sub_222B02298();
    swift_willThrow();

    v3 = *(v0 + 8);
    goto LABEL_5;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_222A5F7C0;
  v8 = *(v0 + 128);

  return MEMORY[0x282200308](v8, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_222A5F7C0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_222A5FD70;
  }

  else
  {
    v2 = sub_222A5F8D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222A5F8D4()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 96) + 48);
  if (v2(*(v0 + 128), 1, v1) == 1)
  {
    *(*(v0 + 32) + *(v0 + 184)) = 1;
    v1 = *(v0 + 56);
  }

  v3 = *(v0 + 120);
  v4 = *(v0 + 32);
  v5 = *(*(v0 + 24) + 36);
  v6 = *(*(v0 + 112) + 16);
  v6(v3, v4 + v5, *(v0 + 64));
  v7 = v2(v3, 1, v1);
  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  v10 = *(v0 + 112);
  if (v7 == 1)
  {
    v11 = *(v0 + 64);
    v12 = *(v10 + 8);
    *(v0 + 152) = v12;
    *(v0 + 160) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v8, v11);
    (*(v10 + 24))(v4 + v5, v9, v11);
    v13 = swift_task_alloc();
    *(v0 + 168) = v13;
    *v13 = v0;
    v13[1] = sub_222A5FBC0;
    v14 = *(v0 + 24);
    v15 = *(v0 + 16);

    return WindowedAsyncSequence.WindowedAsyncSequenceIterator.next()(v15, v14);
  }

  else
  {
    v17 = *(v0 + 104);
    v26 = *(v0 + 128);
    v27 = v5;
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    v20 = *(v0 + 56);
    v24 = *(v0 + 88);
    v25 = *(v0 + 64);
    v28 = *(v0 + 16);
    v21 = *(*(v0 + 96) + 32);
    v21(v17, v8, v20);
    v23 = *(v19 + 48);
    v21(v24, v17, v20);
    v6(v24 + v23, v26, v25);
    (*(v10 + 40))(v4 + v27, v26, v25);
    (*(v18 + 32))(v28, v24, v19);
    (*(v18 + 56))(v28, 0, 1, v19);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_222A5FBC0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_222A5FDFC;
  }

  else
  {
    v2 = sub_222A5FCD4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222A5FCD4()
{
  (*(v0 + 152))(*(v0 + 128), *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222A5FD70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222A5FDFC()
{
  (*(v0 + 152))(*(v0 + 128), *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222A5FE98(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A34620;

  return WindowedAsyncSequence.WindowedAsyncSequenceIterator.next()(a1, a2);
}

uint64_t sub_222A5FF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_222A60014;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_222A60014()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t WindowedAsyncSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  return sub_222A5F274(v5, v3, a2);
}

uint64_t sub_222A60244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WindowedNAsyncSequence.WindowedNAsyncSequenceIterator(0, v12, v13, v13);
  *(a5 + v14[11]) = 0;
  *(a5 + v14[9]) = a1;
  swift_getAssociatedTypeWitness();
  *(a5 + v14[10]) = sub_222B02658();
  (*(v9 + 16))(v11, a2, a3);
  sub_222B02798();
  return (*(v9 + 8))(a2, a3);
}

uint64_t WindowedNAsyncSequence.WindowedNAsyncSequenceIterator.next()(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *(a1 + 24);
  v2[7] = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[8] = AssociatedTypeWitness;
  v2[9] = *(AssociatedTypeWitness - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = sub_222B02B28();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222A60518, 0, 0);
}

uint64_t sub_222A60518()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 32) + 44);
  *(v0 + 184) = v2;
  if (*(v1 + v2))
  {

    v3 = *(v0 + 8);

    return v3(0);
  }

  else if (sub_222B02788())
  {
    *(v1 + v2) = 1;
    sub_222B02728();
    sub_222A34DE0();
    swift_allocError();
    sub_222B02298();
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_222A60774;
    v9 = *(v0 + 136);

    return MEMORY[0x282200308](v9, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_222A60774()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_222A60EEC;
  }

  else
  {
    v2 = sub_222A60888;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222A60888()
{
  v1 = (v0 + 104);
  v2 = v0 + 72;
  v3 = *(v0 + 72);
  v4 = *(v0 + 128);
  v6 = (v0 + 64);
  v5 = *(v0 + 64);
  v34 = *(*(v0 + 112) + 16);
  v34(v4, *(v0 + 136), *(v0 + 104));
  v33 = *(v3 + 48);
  v7 = v33(v4, 1, v5);
  v8 = *(v0 + 128);
  if (v7 == 1)
  {
    v2 = v0 + 112;
    v6 = (v0 + 104);
LABEL_8:
    (*(*v2 + 8))(v8, *v6);
    v15 = *(*(v0 + 40) + *(*(v0 + 32) + 40));
    *(v0 + 16) = v15;
    sub_222B026C8();

    swift_getWitnessTable();
    if ((sub_222B02868() & 1) == 0)
    {
      v16 = *(v0 + 88);
      v32 = v1;
      v17 = *(v0 + 72);
      v31 = *(v0 + 64);
      swift_getWitnessTable();
      sub_222B02878();
      (*(v17 + 8))(v16, v31);
      v1 = v32;
    }

    v18 = *(v0 + 120);
    v19 = *(v0 + 64);
    v34(v18, *(v0 + 136), *(v0 + 104));
    if (v33(v18, 1, v19) == 1)
    {
      (*(*(v0 + 112) + 8))(*(v0 + 120), *v1);
    }

    else
    {
      v21 = *(v0 + 80);
      v20 = *(v0 + 88);
      v23 = *(v0 + 64);
      v22 = *(v0 + 72);
      (*(v22 + 32))(v21, *(v0 + 120), v23);
      (*(v22 + 16))(v20, v21, v23);
      sub_222B026A8();
      (*(v22 + 8))(v21, v23);
    }

    v24 = *(v0 + 136);
    v26 = *(v0 + 104);
    v25 = *(v0 + 112);
    *(v0 + 24) = v15;
    v27 = sub_222B02868();
    (*(v25 + 8))(v24, v26);
    if (v27)
    {
      v28 = *(v0 + 184);
      v29 = *(v0 + 40);

      v15 = 0;
      *(v29 + v28) = 1;
    }

    v30 = *(v0 + 8);

    return v30(v15);
  }

  v10 = *(v0 + 32);
  v9 = *(v0 + 40);
  (*(*(v0 + 72) + 32))(*(v0 + 96), v8, *(v0 + 64));
  v11 = sub_222B02698();
  v8 = *(v0 + 96);
  if (v11 >= *(v9 + *(v10 + 36)))
  {
    v1 = (v0 + 104);
    goto LABEL_8;
  }

  (*(*(v0 + 72) + 16))(*(v0 + 88), *(v0 + 96), *(v0 + 64));
  sub_222B026C8();
  sub_222B026A8();
  v12 = swift_task_alloc();
  *(v0 + 160) = v12;
  *v12 = v0;
  v12[1] = sub_222A60CDC;
  v13 = *(v0 + 32);

  return WindowedNAsyncSequence.WindowedNAsyncSequenceIterator.next()(v13);
}

uint64_t sub_222A60CDC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_222A60F94;
  }

  else
  {
    *(v4 + 176) = a1;
    v5 = sub_222A60E04;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_222A60E04()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  (*(v0[9] + 8))(v0[12], v0[8]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[22];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_222A60EEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222A60F94()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  (*(v0[9] + 8))(v0[12], v0[8]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_222A61074(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_222A33E10;

  return WindowedNAsyncSequence.WindowedNAsyncSequenceIterator.next()(a2);
}

uint64_t sub_222A6110C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_222A629D8;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_222A611E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  v8 = type metadata accessor for WindowedNAsyncSequence(0, a3, a4, a4);
  v9 = *(*(a3 - 8) + 32);
  v10 = a5 + *(v8 + 36);

  return v9(v10, a2, a3);
}

uint64_t WindowedNAsyncSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  (*(v9 + 16))(v7, v2 + *(v5 + 36), v4);
  return sub_222A60244(v8, v7, v4, a2);
}

uint64_t sub_222A61364(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t AsyncSequence.window2()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t AsyncSequence.windowN(length:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v4, a2);
  *a4 = a1;
  v13 = type metadata accessor for WindowedNAsyncSequence(0, a2, a3, v12);
  return (*(v9 + 32))(&a4[*(v13 + 36)], v11, a2);
}

uint64_t sub_222A615EC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222A6165C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_222A6179C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_222A619BC(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_222B02B28();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_222A61A90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  v14 = *(v9 + 80);
  v15 = *(*(v8 - 8) + 64);
  if (!v11)
  {
    ++v15;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v6 + 64) + v14;
  if (a2 > v13)
  {
    v17 = v15 + (v16 & ~v14) + 1;
    v18 = 8 * v17;
    if (v17 > 3)
    {
      goto LABEL_14;
    }

    v20 = ((a2 - v13 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v20))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v20 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v20 >= 2)
    {
LABEL_14:
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_34;
      }

LABEL_21:
      v21 = (v19 - 1) << v18;
      if (v17 > 3)
      {
        v21 = 0;
      }

      if (v17)
      {
        if (v17 <= 3)
        {
          v22 = v17;
        }

        else
        {
          v22 = 4;
        }

        if (v22 > 2)
        {
          if (v22 == 3)
          {
            v23 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v23 = *a1;
          }
        }

        else if (v22 == 1)
        {
          v23 = *a1;
        }

        else
        {
          v23 = *a1;
        }
      }

      else
      {
        v23 = 0;
      }

      v29 = v13 + (v23 | v21);
      return (v29 + 1);
    }
  }

LABEL_34:
  if (v7 != v13)
  {
    v26 = (a1 + v16) & ~v14;
    if (v12 == v13)
    {
      if (v11 >= 2)
      {
        v27 = (*(v10 + 48))(v26);
        if (v27 >= 2)
        {
          return v27 - 1;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }

    v28 = *(v26 + v15);
    if (v28 < 2)
    {
      return 0;
    }

    v29 = (v28 + 2147483646) & 0x7FFFFFFF;
    return (v29 + 1);
  }

  v24 = *(v6 + 48);

  return v24(a1, v7, AssociatedTypeWitness);
}

void sub_222A61D7C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v11 + 80);
  v17 = *(v11 + 64);
  if (v15 <= 0xFE)
  {
    v15 = 254;
  }

  v18 = *(v8 + 64) + v16;
  if (!v13)
  {
    ++v17;
  }

  v19 = v17 + (v18 & ~v16) + 1;
  if (a3 > v15)
  {
    v10 = 1;
    if (v19 <= 3)
    {
      v20 = ((a3 - v15 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
      v21 = HIWORD(v20);
      if (v20 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v20 >= 2)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      if (v21)
      {
        v10 = 4;
      }

      else
      {
        v10 = v23;
      }
    }
  }

  if (v15 < a2)
  {
    v24 = ~v15 + a2;
    if (v19 < 4)
    {
      v25 = (v24 >> (8 * v19)) + 1;
      if (v17 + (v18 & ~v16) != -1)
      {
        v26 = v24 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v26;
            if (v10 > 1)
            {
LABEL_53:
              if (v10 == 2)
              {
                *&a1[v19] = v25;
              }

              else
              {
                *&a1[v19] = v25;
              }

              return;
            }
          }

          else
          {
            *a1 = v24;
            if (v10 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v26;
        a1[2] = BYTE2(v26);
      }

      if (v10 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v17 + (v18 & ~v16) + 1);
      *a1 = v24;
      v25 = 1;
      if (v10 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v10)
    {
      a1[v19] = v25;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v19] = 0;
  }

  else if (v10)
  {
    a1[v19] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 == v15)
  {
    v27 = *(v8 + 56);

    v27(a1, a2, v9, AssociatedTypeWitness);
  }

  else
  {
    v28 = &a1[v18] & ~v16;
    if (v14 == v15)
    {
      v29 = *(v12 + 56);

      v29(v28, (a2 + 1));
    }

    else
    {
      *(v28 + v17) = a2 + 1;
    }
  }
}

uint64_t sub_222A620FC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222A6217C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_222A622DC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_222A62518(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_222B026C8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_222A625F4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 <= 3)
  {
    v11 = ((a2 - v8 + 255) >> 8) + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&a1[v10];
      if (!v14)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v16 = (v14 - 1) << (8 * v10);
    if (v10 <= 3)
    {
      v17 = *a1;
    }

    else
    {
      v16 = 0;
      v17 = *a1;
    }

    return v8 + (v17 | v16) + 1;
  }

  if (v13)
  {
    v14 = a1[v10];
    if (a1[v10])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v7 < 0x7FFFFFFF)
  {
    v19 = *(((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  else
  {
    v18 = *(v6 + 48);

    return v18(a1);
  }
}

void sub_222A627AC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v14 = 0;
    if (v10 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v11 <= 3)
    {
      v12 = ((a3 - v10 + 255) >> 8) + 1;
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

    if (v10 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v14)
      {
        a1[v11] = 0;
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
      if (v8 < 0x7FFFFFFF)
      {
        v18 = (((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = (a2 - 1);
        }

        *v18 = v19;
      }

      else
      {
        v17 = *(v7 + 56);

        v17(a1, a2);
      }

      return;
    }
  }

  v15 = ~v10 + a2;
  bzero(a1, v11);
  if (v11 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
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
    a1[v11] = v16;
  }
}

void *sub_222A629E4(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v13 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = type metadata accessor for UniversalSuggestionCandidate(0);
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v14, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v13;
        }

        if (v14)
        {
          break;
        }

        if (v8 == v6)
        {
          return v13;
        }
      }

      MEMORY[0x223DC6810](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_222B02648();
      }

      sub_222B02688();
      result = v15;
    }

    while (v8 != v6);
  }

  return result;
}

uint64_t PLUSUniversalSuggestionsRuntimeLogger.__allocating_init(logTarget:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_222A1E5A8(a1, v2 + 16);
  return v2;
}

uint64_t PLUSUniversalSuggestionsRuntimeLogger.__allocating_init()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 BOOLForKey_];

  v3 = &type metadata for SiriAnalyticsSharedPLUSEventLogTarget;
  if (v2)
  {
    v3 = &type metadata for DisabledPLUSEventLogTarget;
  }

  v4 = &protocol witness table for DisabledPLUSEventLogTarget;
  if (!v2)
  {
    v4 = &protocol witness table for SiriAnalyticsSharedPLUSEventLogTarget;
  }

  v8 = v3;
  v9 = v4;
  type metadata accessor for PLUSUniversalSuggestionsRuntimeLogger();
  v5 = swift_allocObject();
  sub_222A1E5A8(&v7, v5 + 16);
  return v5;
}

uint64_t sub_222A62CD0(uint64_t a1)
{
  v3 = sub_222B018D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222A42E40(v1 + 16, v12);
  (*(v4 + 16))(v6, a1, v3);
  type metadata accessor for PLUSUniversalSuggestionsRuntimeRequestLogger(0);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  sub_222A1E5A8(v12, v7 + 16);
  (*(v4 + 32))(v7 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId, v6, v3);
  (*(v4 + 56))(v7 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, 1, 1, v3);
  return v7;
}

uint64_t PLUSUniversalSuggestionsRuntimeRequestLogger.__allocating_init(logTarget:requestId:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  sub_222A1E5A8(a1, v4 + 16);
  v7 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  (*(v9 + 32))(v4 + v7, a2, v8);
  (*(v9 + 56))(v4 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, 1, 1, v8);
  return v4;
}

uint64_t type metadata accessor for PLUSUniversalSuggestionsRuntimeRequestLogger(uint64_t a1)
{
  result = qword_27D01D5D0;
  if (!qword_27D01D5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222A62FF8(uint64_t a1, uint64_t a2)
{
  v5 = sub_222B018D8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  sub_222A42E40(v2 + 16, v20);
  v12 = *(v6 + 16);
  v12(v11, a1, v5);
  v12(v9, a2, v5);
  type metadata accessor for PLUSUniversalSuggestionsRuntimeRequestLogger(0);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
  sub_222A1E5A8(v20, v13 + 16);
  v16 = *(v6 + 32);
  v16(v13 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId, v11, v5);
  v17 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId;
  v16(v13 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, v9, v5);
  (*(v6 + 56))(v13 + v17, 0, 1, v5);
  return v13;
}

uint64_t PLUSUniversalSuggestionsRuntimeRequestLogger.__allocating_init(logTarget:requestId:plusId:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  sub_222A1E5A8(a1, v6 + 16);
  v9 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId;
  v10 = sub_222B018D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 32);
  v12(v6 + v9, a2, v10);
  v13 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId;
  v12(v6 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, a3, v10);
  (*(v11 + 56))(v6 + v13, 0, 1, v10);
  return v6;
}

uint64_t PLUSUniversalSuggestionsRuntimeLogger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_222A633AC@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v22 = sub_222B018D8();
  v2 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D5C8, &qword_222B0F0B0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId;
  swift_beginAccess();
  sub_222A34E48(v1 + v14, v13, &qword_27D01D5C8, &qword_222B0F0B0);
  v23 = v5;
  v24 = v4;
  if ((*(v5 + 48))(v13, 1, v4) != 1)
  {
    return sub_222A65A04(v13, v25);
  }

  v15 = v25;
  sub_222A34F20(v13, &qword_27D01D5C8, &qword_222B0F0B0);
  sub_222A34E48(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, v7, &unk_27D01DA50, &unk_222B04E20);
  v16 = *(v2 + 48);
  v17 = v22;
  if (v16(v7, 1, v22) == 1)
  {
    v18 = v21;
    (*(v2 + 16))(v21, v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId, v17);
    sub_222A584E8(v18, v15);
    if (v16(v7, 1, v17) != 1)
    {
      sub_222A34F20(v7, &unk_27D01DA50, &unk_222B04E20);
    }
  }

  else
  {
    (*(v2 + 32))(v15, v7, v17);
    (*(v2 + 56))(v15, 0, 1, v17);
  }

  sub_222A34E48(v15, v11, &unk_27D01DA50, &unk_222B04E20);
  (*(v23 + 56))(v11, 0, 1, v24);
  swift_beginAccess();
  sub_222A65994(v11, v1 + v14);
  return swift_endAccess();
}

uint64_t PLUSUniversalSuggestionsRuntimeRequestLogger.init(logTarget:requestId:)(__int128 *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  sub_222A1E5A8(a1, v2 + 16);
  v7 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  (*(v9 + 32))(v2 + v7, a2, v8);
  (*(v9 + 56))(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, 1, 1, v8);
  return v2;
}

uint64_t PLUSUniversalSuggestionsRuntimeRequestLogger.init(logTarget:requestId:plusId:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  sub_222A1E5A8(a1, v3 + 16);
  v9 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId;
  v10 = sub_222B018D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 32);
  v12(v3 + v9, a2, v10);
  v13 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId;
  v12(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, a3, v10);
  (*(v11 + 56))(v3 + v13, 0, 1, v10);
  return v3;
}

void sub_222A639C4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v33 - v5;
  v7 = sub_222B018D8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v33 - v12;
  sub_222A633AC(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_222A34F20(v6, &unk_27D01DA50, &unk_222B04E20);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v14 = sub_222B02148();
    __swift_project_value_buffer(v14, qword_280CBC458);
    v15 = sub_222B02128();
    v16 = sub_222B028E8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_222A1C000, v15, v16, "Could not generate a plus logging identifier for a SELF event donation", v17, 2u);
      MEMORY[0x223DC7E30](v17, -1, -1);
    }
  }

  else
  {
    v18 = *(v8 + 32);
    v18(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);
    type metadata accessor for PLUSSchemaEventConstructor(0);
    v19 = swift_allocObject();
    v20 = (v18)(v19 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v11, v7);
    *(v19 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain) = 2;
    MEMORY[0x28223BE20](v20);
    v33[-2] = v13;
    v21 = sub_222A629E4(sub_222A65644, &v33[-4], a1);
    v22 = v21;
    if (v21 >> 62)
    {
      v23 = sub_222B02DC8();
    }

    else
    {
      v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = sub_222A452A0(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId, v22, v23 != 0);

    if (v24)
    {
      v25 = v1[5];
      v26 = v2[6];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      PLUSEventLogTarget.emitMessage(_:)(v24, v25, v26);

      swift_setDeallocating();
      v27 = *(v8 + 8);
      v27(v19 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v7);
      swift_deallocClassInstance();
      v27(v13, v7);
    }

    else
    {
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v28 = sub_222B02148();
      __swift_project_value_buffer(v28, qword_280CBC458);
      v29 = sub_222B02128();
      v30 = sub_222B028E8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33[0] = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_222A230FC(0xD000000000000028, 0x8000000222B11DC0, v33);
        _os_log_impl(&dword_222A1C000, v29, v30, "PLUSUniversalSuggestionsRuntimeLogger.%s:  failed to create PLUS SELF event templates", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x223DC7E30](v32, -1, -1);
        MEMORY[0x223DC7E30](v31, -1, -1);
      }

      (*(v8 + 8))(v13, v7);
    }
  }
}

void sub_222A63EE8(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_222B018D8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  sub_222A633AC(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_222A34F20(v6, &unk_27D01DA50, &unk_222B04E20);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v14 = sub_222B02148();
    __swift_project_value_buffer(v14, qword_280CBC458);
    v15 = sub_222B02128();
    v16 = sub_222B028E8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_222A1C000, v15, v16, "Could not generate a plus logging identifier for a SELF event donation", v17, 2u);
      MEMORY[0x223DC7E30](v17, -1, -1);
    }
  }

  else
  {
    v18 = *(v8 + 32);
    v18(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);
    type metadata accessor for PLUSSchemaEventConstructor(0);
    v19 = swift_allocObject();
    v18((v19 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId), v11, v7);
    *(v19 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain) = 2;
    v20 = sub_222A45510(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId, a1 & 1, 0);
    if (v20)
    {
      v21 = v20;
      v22 = v1[5];
      v23 = v2[6];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      PLUSEventLogTarget.emitMessage(_:)(v21, v22, v23);
    }

    else
    {
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v24 = sub_222B02148();
      __swift_project_value_buffer(v24, qword_280CBC458);
      v25 = sub_222B02128();
      v26 = sub_222B028E8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v32 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_222A230FC(0xD000000000000029, 0x8000000222B11DF0, &v32);
        _os_log_impl(&dword_222A1C000, v25, v26, "PLUSUniversalSuggestionsRuntimeLogger.%s:  failed to create PLUS SELF event templates", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x223DC7E30](v28, -1, -1);
        MEMORY[0x223DC7E30](v27, -1, -1);
        swift_setDeallocating();
        v29 = *(v8 + 8);
        v29(v19 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v7);
        swift_deallocClassInstance();

        v29(v13, v7);
        return;
      }
    }

    swift_setDeallocating();
    v30 = *(v8 + 8);
    v30(v19 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v7);
    swift_deallocClassInstance();
    v30(v13, v7);
  }
}

void sub_222A643E0(uint64_t a1, char *a2)
{
  v71 = a2;
  v72 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v65 - v7;
  v9 = sub_222B018D8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v65 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v65 - v17;
  v69 = v2;
  sub_222A633AC(v8);
  v19 = *(v10 + 48);
  if (v19(v8, 1, v9) == 1)
  {
    sub_222A34F20(v8, &unk_27D01DA50, &unk_222B04E20);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v20 = sub_222B02148();
    __swift_project_value_buffer(v20, qword_280CBC458);
    v21 = sub_222B02128();
    v22 = sub_222B028E8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_222A1C000, v21, v22, "Could not generate a plus logging identifier for a SELF event donation", v23, 2u);
      MEMORY[0x223DC7E30](v23, -1, -1);
    }
  }

  else
  {
    v68 = v13;
    v24 = v10;
    v25 = *(v10 + 32);
    v25(v18, v8, v9);
    v70 = v24;
    (*(v24 + 16))(v16, v18, v9);
    type metadata accessor for PLUSSchemaEventConstructor(0);
    v26 = swift_allocObject();
    v25((v26 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId), v16, v9);
    *(v26 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain) = 2;
    v67 = v71[16];
    v27 = v71[17];
    type metadata accessor for PLUSLoggingIdGenerator();
    v71 = v18;
    static PLUSLoggingIdGenerator.derivePlusSuggestionLinkId(plusId:for:)(v18, v72, v6);
    v28 = v9;
    if (v19(v6, 1, v9) == 1)
    {
      sub_222A34F20(v6, &unk_27D01DA50, &unk_222B04E20);
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v29 = sub_222B02148();
      __swift_project_value_buffer(v29, qword_280CBC458);
      v30 = sub_222B02128();
      v31 = sub_222B028E8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v73 = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_222A230FC(0xD000000000000037, 0x8000000222B11E20, &v73);
        _os_log_impl(&dword_222A1C000, v30, v31, "PLUSUniversalSuggestionsRuntimeLogger.%s:  cannot generate a suggestion link id", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x223DC7E30](v33, -1, -1);
        MEMORY[0x223DC7E30](v32, -1, -1);
      }

      swift_setDeallocating();
      v34 = *(v70 + 8);
      v34(v26 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v9);
      swift_deallocClassInstance();
      v34(v71, v9);
    }

    else
    {
      v25(v68, v6, v9);
      v35 = sub_222A45CBC();
      v36 = v70;
      if (v35)
      {
        v37 = v35;
        v38 = _s28SiriPrivateLearningAnalytics28PLUSSchemaMessageConstructorO24suggestionDomainMetadata0h10GenerationI0So0e14PLUSSuggestioniJ0CSgSo0elkI0V_tFZ_0(2);
        if (v38)
        {
          v39 = v38;
          v40 = [objc_allocWithZone(MEMORY[0x277D59DA8]) init];
          if (v40)
          {
            v72 = v28;
            v41 = v40;
            [v40 setSuggestionDomainMetadata_];
            v42 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v66 = v27;
            v43 = v42;
            v44 = v69;
            v45 = sub_222B01878();
            v46 = [v43 initWithNSUUID_];

            [v41 setOriginalRequestId_];
            v47 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v48 = v68;
            v49 = sub_222B01878();
            v50 = [v47 initWithNSUUID_];

            [v41 setSuggestionLinkId_];
            [v41 setSuggestionSurfaced_];
            [v41 setSuggestionNoveltyState_];
            [v41 setDomainSuggestionMetadata_];
            [v37 setPlusSuggesterSuggestionMetadataReported_];

            v51 = v44[5];
            v52 = v44[6];
            __swift_project_boxed_opaque_existential_1(v44 + 2, v51);
            PLUSEventLogTarget.emitMessage(_:)(v37, v51, v52);

            swift_setDeallocating();
            v53 = *(v36 + 8);
            v54 = v72;
            v53(v26 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v72);
            swift_deallocClassInstance();
            v53(v48, v54);
            v53(v71, v54);
            return;
          }

          v37 = v39;
        }
      }

      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v55 = sub_222B02148();
      __swift_project_value_buffer(v55, qword_280CBC458);
      v56 = sub_222B02128();
      v57 = sub_222B028E8();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v73 = v59;
        *v58 = 136315138;
        *(v58 + 4) = sub_222A230FC(0xD00000000000008BLL, 0x8000000222B112A0, &v73);
        _os_log_impl(&dword_222A1C000, v56, v57, "PLUSSchemaEventConstructor.%s:  failed to create PLUS SELF event templates", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x223DC7E30](v59, -1, -1);
        MEMORY[0x223DC7E30](v58, -1, -1);
      }

      v60 = sub_222B02128();
      v61 = sub_222B028E8();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v73 = v63;
        *v62 = 136315138;
        *(v62 + 4) = sub_222A230FC(0xD000000000000037, 0x8000000222B11E20, &v73);
        _os_log_impl(&dword_222A1C000, v60, v61, "PLUSUniversalSuggestionsRuntimeLogger.%s:  failed to create PLUS SELF event templates", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x223DC7E30](v63, -1, -1);
        MEMORY[0x223DC7E30](v62, -1, -1);
      }

      v64 = *(v70 + 8);
      v64(v68, v28);
      v64(v71, v28);
    }
  }
}

void sub_222A64D0C(uint64_t a1, unsigned __int8 *a2)
{
  v60 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v54 - v8;
  v10 = sub_222B018D8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v54 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v54 - v18;
  v58 = *a2;
  v59 = v2;
  sub_222A633AC(v9);
  v20 = *(v11 + 48);
  if (v20(v9, 1, v10) == 1)
  {
    sub_222A34F20(v9, &unk_27D01DA50, &unk_222B04E20);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v21 = sub_222B02148();
    __swift_project_value_buffer(v21, qword_280CBC458);
    v22 = sub_222B02128();
    v23 = sub_222B028E8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_222A1C000, v22, v23, "Could not generate a plus logging identifier for a SELF event donation", v24, 2u);
      MEMORY[0x223DC7E30](v24, -1, -1);
    }
  }

  else
  {
    v55 = v14;
    v25 = v11;
    v26 = *(v11 + 32);
    v26(v19, v9, v10);
    v57 = v25;
    (*(v25 + 16))(v17, v19, v10);
    type metadata accessor for PLUSSchemaEventConstructor(0);
    v27 = swift_allocObject();
    v26((v27 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId), v17, v10);
    *(v27 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain) = 2;
    type metadata accessor for PLUSLoggingIdGenerator();
    v56 = v19;
    static PLUSLoggingIdGenerator.derivePlusSuggestionLinkId(plusId:for:)(v19, v60, v7);
    if (v20(v7, 1, v10) == 1)
    {
      sub_222A34F20(v7, &unk_27D01DA50, &unk_222B04E20);
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v28 = sub_222B02148();
      __swift_project_value_buffer(v28, qword_280CBC458);
      v29 = sub_222B02128();
      v30 = sub_222B028E8();
      v31 = os_log_type_enabled(v29, v30);
      v32 = v57;
      if (v31)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v61 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_222A230FC(0xD000000000000036, 0x8000000222B11E60, &v61);
        _os_log_impl(&dword_222A1C000, v29, v30, "PLUSUniversalSuggestionsRuntimeLogger.%s:  cannot generate a suggestion link id", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x223DC7E30](v34, -1, -1);
        MEMORY[0x223DC7E30](v33, -1, -1);
        swift_setDeallocating();
        v35 = *(v32 + 8);
        v35(v27 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v10);
        swift_deallocClassInstance();

        v35(v56, v10);
      }

      else
      {

        swift_setDeallocating();
        v45 = *(v32 + 8);
        v45(v27 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v10);
        swift_deallocClassInstance();
        v45(v56, v10);
      }
    }

    else
    {
      if (v58)
      {
        v36 = 2;
      }

      else
      {
        v36 = 1;
      }

      v37 = v55;
      v26(v55, v7, v10);
      v38 = v37;
      v39 = v59;
      v40 = sub_222A45A2C(v59 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId, v37, v36);
      if (v40)
      {
        v41 = v40;
        v42 = v39[5];
        v43 = v39[6];
        __swift_project_boxed_opaque_existential_1(v39 + 2, v42);
        PLUSEventLogTarget.emitMessage(_:)(v41, v42, v43);
        swift_setDeallocating();
        v44 = *(v57 + 8);
        v44(v27 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v10);
        swift_deallocClassInstance();

        v44(v37, v10);
        v44(v56, v10);
      }

      else
      {
        v47 = v56;
        v46 = v57;
        if (qword_280CBA628 != -1)
        {
          swift_once();
        }

        v48 = sub_222B02148();
        __swift_project_value_buffer(v48, qword_280CBC458);
        v49 = sub_222B02128();
        v50 = sub_222B028E8();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v61 = v52;
          *v51 = 136315138;
          *(v51 + 4) = sub_222A230FC(0xD000000000000036, 0x8000000222B11E60, &v61);
          _os_log_impl(&dword_222A1C000, v49, v50, "PLUSUniversalSuggestionsRuntimeLogger.%s:  failed to create PLUS SELF event templates", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v52);
          MEMORY[0x223DC7E30](v52, -1, -1);
          MEMORY[0x223DC7E30](v51, -1, -1);
        }

        v53 = *(v46 + 8);
        v53(v38, v10);
        v53(v47, v10);
      }
    }
  }
}

uint64_t PLUSUniversalSuggestionsRuntimeRequestLogger.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_222A34F20(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, &unk_27D01DA50, &unk_222B04E20);
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId;
  v2 = sub_222B018D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_222A34F20(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId, &qword_27D01D5C8, &qword_222B0F0B0);
  return v0;
}

uint64_t PLUSUniversalSuggestionsRuntimeRequestLogger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_222A34F20(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, &unk_27D01DA50, &unk_222B04E20);
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId;
  v2 = sub_222B018D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_222A34F20(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId, &qword_27D01D5C8, &qword_222B0F0B0);

  return swift_deallocClassInstance();
}

NSObject *sub_222A65644@<X0>(uint64_t a1@<X0>, NSObject **a2@<X8>)
{
  result = sub_222AFF9F8(*(v2 + 16), a1);
  *a2 = result;
  return result;
}

void sub_222A656F8(uint64_t a1)
{
  sub_222A658D8(319);
  if (v1 <= 0x3F)
  {
    sub_222B018D8();
    if (v2 <= 0x3F)
    {
      sub_222A65930(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_222A658D8(uint64_t a1)
{
  if (!qword_280CBA1E8)
  {
    sub_222B018D8();
    v1 = sub_222B02B28();
    if (!v2)
    {
      atomic_store(v1, &qword_280CBA1E8);
    }
  }
}

void sub_222A65930(uint64_t a1)
{
  if (!qword_27D01D5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01DA50, &unk_222B04E20);
    v1 = sub_222B02B28();
    if (!v2)
    {
      atomic_store(v1, &qword_27D01D5E0);
    }
  }
}

uint64_t sub_222A65994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D5C8, &qword_222B0F0B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A65A04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A65A74(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return BPSDemandMax();
  }

  v3 = 0;
  v4 = (a2 + 32);
  v5 = 1 - v2;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v3 |= v7 == *MEMORY[0x277CF1788];
    if (v3)
    {
      if (!v5)
      {
        return *MEMORY[0x277CF1788];
      }

      result = 0;
    }

    else
    {
      if (v6 != *MEMORY[0x277CF1780])
      {
        v8 = __OFADD__(v6, result);
        result += v6;
        if (v8)
        {
          result = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      if (!v5)
      {
        return BPSDemandMax();
      }
    }

    ++v5;
  }

  while (v5 != 1);
  __break(1u);
  return result;
}

uint64_t sub_222A65B24()
{

  return swift_deallocClassInstance();
}

void sub_222A65BBC(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v4 = sub_222B02B28();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v8 = *(v3 - 8);
  MEMORY[0x28223BE20](v5);
  v10 = &v27 - v9;
  v11 = *(v1 + qword_27D01D5F0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D600, &unk_222B083C0);
  inited = swift_initStackObject();
  v31 = xmmword_222B05260;
  *(inited + 16) = xmmword_222B05260;
  *(inited + 32) = a1;
  *(inited + 40) = *(v11 + 32);
  v13 = sub_222A65A74(0, inited);
  swift_setDeallocating();
  *(v11 + 32) = v13;
  v14 = *MEMORY[0x277CF1788];
  v15 = (v8 + 48);
  v33 = *MEMORY[0x277CF1780];
  v30 = (v8 + 32);
  v16 = (v8 + 8);
  while (v13 == v14 || v13 >= 1 && v13 != v33)
  {

    sub_222AE0924(v7);

    if ((*v15)(v7, 1, v3) == 1)
    {
      (*(v28 + 8))(v7, v29);
      v13 = *(v11 + 32);
      break;
    }

    (*v30)(v10, v7, v3);
    v17 = *(v11 + 16);
    swift_unknownObjectRetain();
    v18 = [v17 receiveInput_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v19 = swift_initStackObject();
    *(v19 + 16) = v31;
    *(v19 + 32) = v18;
    v20 = *(v11 + 32);
    *(v19 + 40) = v20;
    if (v18 == v14 || v20 == v14)
    {

      v13 = v14;
    }

    else
    {

      v13 = BPSDemandMax();
    }

    (*v16)(v10, v3);
    *(v11 + 32) = v13;
  }

  if (v13 == v14 || v13 >= 1 && v13 != v33)
  {
    v21 = *(v11 + 24);
    if (v21)
    {
      if (v21 == 1)
      {
        v22 = *(v11 + 40);
        if (v22)
        {
          v23 = *(v11 + 40);
        }

        else
        {
          v23 = [objc_opt_self() success];
          v22 = 0;
        }

        v25 = *(v11 + 16);
        v26 = v22;
        [v25 receiveCompletion_];
      }

      else
      {
        sub_222A42840(*(v11 + 24));
        v24 = v21;
        [v24 requestDemand_];
        v23 = v24;
        sub_222A34E38(v21);
      }
    }
  }
}

void sub_222A65FD4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_222A65BBC(a3);
}

id sub_222A66028(void *a1)
{
  v1 = a1;
  v2 = sub_222A660A4();

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D5F8, &qword_222B083B8);
    v3 = sub_222B025D8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_222A660A4()
{
  v1 = *(*(v0 + qword_27D01D5F0) + 24);
  if (v1 >= 2)
  {
    v2 = [v1 upstreamSubscriptions];
    if (v2)
    {
      v3 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D5F8, &qword_222B083B8);
      v4 = sub_222B025F8();
      sub_222A34E38(v1);

      return v4;
    }

    sub_222A34E38(v1);
  }

  return 0;
}

void sub_222A66144()
{
  v1 = *(v0 + qword_27D01D5F0);
  v2 = *(v1 + 24);
  if (v2 >= 2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *(v1 + 24) = 1;
  sub_222A34E38(v2);
  [v3 cancel];
}

void sub_222A661C4(void *a1)
{
  v1 = a1;
  sub_222A66144();
}

id sub_222A66234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _s28DownstreamBufferSubscriptionCMa(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_222A6632C()
{
  swift_unknownObjectRelease();
  sub_222A34E38(*(v0 + 24));

  return v0;
}

uint64_t sub_222A66364()
{
  sub_222A6632C();

  return swift_deallocClassInstance();
}

uint64_t sub_222A663E4(uint64_t a1, void *a2, void *a3)
{
  v19 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D610, qword_222B08440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_222B01848();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 timestampInNanoseconds];
  [a3 timeIntervalSince1970];
  sub_222B01808();
  (*(v9 + 16))(v11, v19, v8);
  v17 = type metadata accessor for LogicalClockTable.DeviceFixedContextTime(0);
  (*(v13 + 16))(&v7[*(v17 + 20)], v15, v12);
  *v7 = v16;
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  swift_beginAccess();
  sub_222AC57A8(v7, v11);
  swift_endAccess();
  return (*(v13 + 8))(v15, v12);
}

id sub_222A66668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for LogicalClockTable.DeviceFixedContextTime(0);
  v7 = *(v6 - 8);
  v44 = v6;
  v45 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v40 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v40 - v14;
  v16 = sub_222B018D8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v20 = *(v2 + 24);
  if (!*(v20 + 16))
  {
    goto LABEL_11;
  }

  v43 = v3;

  v21 = sub_222A26F40(a1);
  if ((v22 & 1) == 0)
  {

LABEL_11:
    v32 = 1;
LABEL_12:
    v33 = sub_222B01848();
    return (*(*(v33 - 8) + 56))(a2, v32, 1, v33);
  }

  v23 = *(*(v20 + 56) + 8 * v21);

  v24 = [v23 clockIdentifier];
  if (!v24)
  {
    goto LABEL_9;
  }

  v25 = v24;
  v26 = [v24 value];
  if (!v26)
  {

LABEL_9:
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_10;
  }

  v41 = v23;
  v42 = a2;
  v27 = v26;
  v28 = sub_222B01798();
  v30 = v29;

  sub_222A67044(v28, v30, v15);
  sub_222A26530(v28, v30);
  v31 = v17;
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    a2 = v42;
LABEL_10:
    sub_222A264C8(v15);
    goto LABEL_11;
  }

  (*(v17 + 32))(v19, v15, v16);
  v35 = v43;
  swift_beginAccess();
  v36 = *(v35 + 16);
  v37 = v41;
  a2 = v42;
  if (!*(v36 + 16))
  {
LABEL_18:

    (*(v31 + 8))(v19, v16);
    goto LABEL_11;
  }

  v38 = sub_222A26F40(v19);
  if ((v39 & 1) == 0)
  {

    goto LABEL_18;
  }

  sub_222A2E22C(*(v36 + 56) + *(v45 + 72) * v38, v10);

  sub_222A2E290(v10, v12);
  result = [v37 timestampInNanoseconds];
  if (!__OFSUB__(result, *v12))
  {
    sub_222B017E8();

    sub_222A66C04(v12);
    (*(v31 + 8))(v19, v16);
    v32 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_222A66AB0()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LogicalClockTable.DeviceFixedContextTime(uint64_t a1)
{
  result = qword_280CB6EE8;
  if (!qword_280CB6EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222A66B88(uint64_t a1)
{
  result = sub_222B01848();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222A66C04(uint64_t a1)
{
  v2 = type metadata accessor for LogicalClockTable.DeviceFixedContextTime(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222A66C70(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_222A66D74()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_222A66E84(uint64_t (*a1)(void))
{
  if ([v1 anyEventType] != 6)
  {
    v9 = v1;
LABEL_7:
    v11 = a1();

    return v11;
  }

  v3 = [v1 payload];
  if (v3)
  {
    v4 = v3;
    v5 = sub_222B01798();
    v7 = v6;

    v8 = sub_222B01788();
    sub_222A26530(v5, v7);
  }

  else
  {
    v8 = 0;
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

  v9 = [v10 event];
  if (v9)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_222A66FC0()
{
  v0 = sub_222A3A040(&unk_2835F1418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D618, &qword_222B08558);
  result = swift_arrayDestroy();
  qword_27D0245F0 = v0;
  return result;
}

uint64_t sub_222A67044@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_222B018D8();
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_17:
      v19 = *(v7 + 56);

      return v19(a3, 1, 1, v6);
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v13 = __OFSUB__(v11, v12);
    v14 = v11 - v12;
    if (!v13)
    {
      if (v14 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (1)
    {
      v26 = v7;
      if (v10 == 2)
      {
        break;
      }

      if (v10 != 1)
      {
        v27 = a1;
        v28 = a2;
        v29 = BYTE2(a2);
        v30 = BYTE3(a2);
        v31 = BYTE4(a2);
        v32 = BYTE5(a2);
        (*(v7 + 16))(v9, &v27, v6);
        goto LABEL_25;
      }

      if (a1 > a1 >> 32)
      {
        goto LABEL_28;
      }

      v15 = sub_222B015B8();
      if (!v15)
      {
        goto LABEL_33;
      }

      v16 = v15;
      v17 = sub_222B015D8();
      if (__OFSUB__(a1, v17))
      {
        goto LABEL_30;
      }

      v18 = a1 - v17 + v16;
      a1 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      sub_222B015C8();
      if (v18)
      {
        goto LABEL_23;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_27;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v21 = *(a1 + 16);
    v22 = sub_222B015B8();
    if (!v22)
    {
      goto LABEL_31;
    }

    v23 = v22;
    v24 = sub_222B015D8();
    if (!__OFSUB__(v21, v24))
    {
      v18 = v21 - v24 + v23;
      sub_222B015C8();
      if (!v18)
      {
        goto LABEL_32;
      }

LABEL_23:
      (*(v26 + 16))(v9, v18, v6);
LABEL_25:
      (*(v26 + 32))(a3, v9, v6);
      return (*(v26 + 56))(a3, 0, 1, v6);
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  sub_222B015C8();
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_222B015C8();
  __break(1u);
  return result;
}

uint64_t sub_222A67368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = sub_222A66E84(sub_222AA5ED4);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = a2();

  return v5;
}

void *static UEIEvents.dismissalReason(_:)()
{
  result = sub_222A66E84(sub_222AA5ED4);
  if (result)
  {
    v1 = result;
    v2 = [result uiStateTransition];
    if (v2 && (v3 = v2, v4 = [v2 dismissed], v3, v4))
    {
      v5 = [v4 dismissalReason];

      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id static UEIEvents.dismissalReason(_:)(void *a1)
{
  result = [a1 uiStateTransition];
  if (result)
  {
    v2 = result;
    v3 = [result dismissed];

    if (v3)
    {
      v4 = [v3 dismissalReason];

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_222A6754C(SEL *a1@<X1>, const char **a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_222A66E84(sub_222AA5ED4);
  if (v6)
  {
    v17 = v6;
    v7 = [v6 *a1];
    if (v7 && (v8 = *a2, v9 = v7, v10 = [v7 v8], v9, v10))
    {
      v11 = sub_222B01798();
      v13 = v12;

      sub_222A67044(v11, v13, a3);
      sub_222A26530(v11, v13);
    }

    else
    {
      v14 = sub_222B018D8();
      (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
    }
  }

  else
  {
    v15 = sub_222B018D8();
    v16 = *(*(v15 - 8) + 56);

    v16(a3, 1, 1, v15);
  }
}

uint64_t sub_222A676D4@<X0>(void *a1@<X0>, SEL *a2@<X1>, SEL *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = [a1 *a2];
  if (v6 && (v7 = v6, v8 = [v6 *a3], v7, v8))
  {
    v9 = sub_222B01798();
    v11 = v10;

    sub_222A67044(v9, v11, a4);

    return sub_222A26530(v9, v11);
  }

  else
  {
    v13 = sub_222B018D8();
    v14 = *(*(v13 - 8) + 56);

    return v14(a4, 1, 1, v13);
  }
}

uint64_t _s28SiriPrivateLearningAnalytics9UEIEventsO8dialogIDySSSgSo19SISchemaClientEventCFZ_0(void *a1)
{
  v2 = [a1 uufrShown];
  if (!v2 || (v3 = v2, v4 = [v2 dialogIdentifier], v3, !v4))
  {
    v5 = [a1 uufrSaid];
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    v4 = [v5 dialogIdentifier];

    if (!v4)
    {
      return 0;
    }
  }

  v7 = sub_222B02388();

  return v7;
}

id _s28SiriPrivateLearningAnalytics9UEIEventsO11dialogPhaseySSSgSo19SISchemaClientEventCFZ_0(void *a1)
{
  result = [a1 uufrSaid];
  if (result)
  {
    v2 = result;
    v3 = [result siriResponseContext];

    if (v3 && (v4 = [v3 dialogPhase], v3, v4))
    {
      v5 = sub_222B02388();

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s28SiriPrivateLearningAnalytics9UEIEventsO23dismissalReasonAsStringySSSgSo19SISchemaClientEventCFZ_0(void *a1)
{
  v1 = [a1 uiStateTransition];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 dismissed];

  if (!v3)
  {
    return 0;
  }

  [v3 dismissalReason];

  if (qword_27D01C4C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_27D0245F0;
  if (*(qword_27D0245F0 + 16) && (v5 = sub_222A2E3A4(), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 16 * v5);
  }

  else
  {
    v7 = 0;
  }

  swift_endAccess();
  return v7;
}

Swift::String_optional __swiftcall UniversalEntity.getName()()
{
  v1 = sub_222A67AA8(*v0);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

unint64_t sub_222A67AA8(uint64_t a1)
{
  result = sub_222B01C08();
  if (!result)
  {
    return result;
  }

  v3 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v10 = result;
    v11 = sub_222B02DC8();
    result = v10;
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_11:

    return 0;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x223DC6F00](0, result);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = *(v3 + 16);

    if (!v4)
    {
      __break(1u);
      return result;
    }
  }

  result = sub_222A67BDC(a1);
  if (v5)
  {
    v6 = v5;
    v7 = result;
    v8 = sub_222A67F6C();
    if (v9)
    {
      v12 = v8;

      MEMORY[0x223DC66E0](v7, v6);

      return v12;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

char *sub_222A67BDC(uint64_t a1)
{
  v2 = 0;
  v3 = sub_222B01C08();
  if (!v3)
  {
    return v2;
  }

  v4 = v3;
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_24:
    v6 = sub_222B02DC8();
    v28 = v2;
    if (v6)
    {
LABEL_4:
      v1 = 0;
      v2 = MEMORY[0x277D84F90];
      do
      {
        v7 = v1;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v7, v4);
            v1 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              goto LABEL_22;
            }
          }

          else
          {
            if (v7 >= *(v5 + 16))
            {
              goto LABEL_23;
            }

            v1 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
LABEL_22:
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }
          }

          sub_222B01C58();
          if (v30)
          {
            break;
          }

          ++v7;
          if (v1 == v6)
          {
            goto LABEL_26;
          }
        }

        v8 = sub_222B023E8();
        v10 = v9;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_222AA8C78(0, *(v2 + 2) + 1, 1, v2);
        }

        v12 = *(v2 + 2);
        v11 = *(v2 + 3);
        if (v12 >= v11 >> 1)
        {
          v2 = sub_222AA8C78((v11 > 1), v12 + 1, 1, v2);
        }

        *(v2 + 2) = v12 + 1;
        v13 = &v2[16 * v12];
        *(v13 + 4) = v8;
        *(v13 + 5) = v10;
      }

      while (v1 != v6);
      goto LABEL_26;
    }
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v28 = 0;
    if (v6)
    {
      goto LABEL_4;
    }
  }

  v2 = MEMORY[0x277D84F90];
LABEL_26:

  v14 = 0;
  v15 = *(v2 + 2);
  v16 = MEMORY[0x277D84F90];
LABEL_27:
  v17 = &v2[16 * v14 + 40];
  while (v15 != v14)
  {
    if (v14 >= *(v2 + 2))
    {
      __break(1u);
      goto LABEL_46;
    }

    ++v14;
    v1 = *(v17 - 1);
    v18 = *v17;
    v17 += 16;
    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {

      v29 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_222A23AE4(0, *(v16 + 2) + 1, 1);
        v16 = v29;
      }

      v21 = *(v16 + 2);
      v20 = *(v16 + 3);
      if (v21 >= v20 >> 1)
      {
        sub_222A23AE4((v20 > 1), v21 + 1, 1);
        v16 = v29;
      }

      *(v16 + 2) = v21 + 1;
      v22 = &v16[16 * v21];
      *(v22 + 4) = v1;
      *(v22 + 5) = v18;
      goto LABEL_27;
    }
  }

  v29 = v16;

  v1 = v28;
  sub_222A68A44(&v29);
  if (v28)
  {
LABEL_46:

    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D290, &qword_222B06EE0);
  sub_222A69918();
  v23 = sub_222B02328();
  v25 = v24;

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v29 = 34;
    v30 = 0xE100000000000000;
    MEMORY[0x223DC66E0](v23, v25);

    MEMORY[0x223DC66E0](34, 0xE100000000000000);

    return v29;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_222A67F6C()
{
  v23 = *v0;
  result = sub_222B01BF8();
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
LABEL_26:
    v4 = sub_222B02DC8();
    if (!v4)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_27;
    }
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v22 = v6;
    v7 = v5;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223DC6F00](v7, v2);
        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_25;
        }

        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      sub_222B01C58();
      v8 = v24;
      if (v24)
      {
        break;
      }

LABEL_7:
      ++v7;
      if (v5 == v4)
      {
        goto LABEL_27;
      }
    }

    v24 = v23;
    v9 = sub_222A67BDC(v8);
    v11 = v10;

    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_222AA8C78(0, *(v22 + 2) + 1, 1, v22);
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    v16 = v12;
    if (v15 >= v14 >> 1)
    {
      v16 = sub_222AA8C78((v14 > 1), v15 + 1, 1, v12);
    }

    *(v16 + 2) = v15 + 1;
    v6 = v16;
    v17 = &v16[16 * v15];
    *(v17 + 4) = v9;
    *(v17 + 5) = v11;
  }

  while (v5 != v4);
LABEL_27:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D290, &qword_222B06EE0);
  sub_222A69918();
  v18 = sub_222B02328();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    MEMORY[0x223DC66E0](v18, v20);

    MEMORY[0x223DC66E0](93, 0xE100000000000000);

    return 91;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_222A6820C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64616F6C796170;
  }

  else
  {
    v3 = 1702060386;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x64616F6C796170;
  }

  else
  {
    v5 = 1702060386;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_222B02F78();
  }

  return v8 & 1;
}

uint64_t sub_222A682AC()
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A68328(uint64_t a1)
{
  sub_222B02448();
}

uint64_t sub_222A68390(uint64_t a1)
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A68408@<X0>(char *a2@<X8>)
{
  v3 = sub_222B02E48();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_222A68468(uint64_t *a1@<X8>)
{
  v2 = 1702060386;
  if (*v1)
  {
    v2 = 0x64616F6C796170;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_222A684A0()
{
  if (*v0)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t sub_222A684D4@<X0>(char *a3@<X8>)
{
  v4 = sub_222B02E48();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_222A68538(uint64_t a1)
{
  v2 = sub_222A6954C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222A68574(uint64_t a1)
{
  v2 = sub_222A6954C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UniversalEntity.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D620, &qword_222B08560);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222A6954C();
  sub_222B03198();
  if (!v2)
  {
    v12 = 0;
    sub_222A695A0();
    sub_222B02E98();
    sub_222B01C18();
    v11 = 1;
    sub_222A69648(&qword_27D01D638, MEMORY[0x277D5E458]);
    sub_222B02E98();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t UniversalEntity.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D640, &qword_222B08568);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222A6954C();
  sub_222B031B8();
  v12 = 0;
  sub_222A695F4();
  sub_222B02EF8();
  if (!v2)
  {
    v10[1] = v8;
    v11 = 1;
    sub_222B01C18();
    sub_222A69648(&qword_27D01D650, MEMORY[0x277D5E450]);
    sub_222B02EF8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_222A68A44(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_222AB3A9C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_222A68AB0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_222A68AB0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_222B02F18();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_222B02668();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_222A68C78(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_222A68BA8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_222A68BA8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_222B02F78(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_222A68C78(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_222AB3838(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_222A69254((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_222B02F78();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_222B02F78();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_222AA8B74(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_222AA8B74((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_222A69254((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_222AB3838(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_222AB37AC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_222B02F78(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
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
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_222A69254(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_222B02F78() & 1) != 0)
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
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_222B02F78() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t _s28SiriPrivateLearningAnalytics15UniversalEntityO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = sub_222A67AA8(*a1);
  v5 = v4;
  v6 = sub_222A67AA8(v2);
  if (v5)
  {
    if (v7)
    {
      if (v3 == v6 && v5 == v7)
      {

        v9 = 1;
      }

      else
      {
        v9 = sub_222B02F78();
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (!v7)
    {
      v9 = 1;
      return v9 & 1;
    }

    v9 = 0;
  }

  return v9 & 1;
}

unint64_t sub_222A6954C()
{
  result = qword_27D01D628;
  if (!qword_27D01D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D628);
  }

  return result;
}

unint64_t sub_222A695A0()
{
  result = qword_27D01D630;
  if (!qword_27D01D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D630);
  }

  return result;
}

unint64_t sub_222A695F4()
{
  result = qword_27D01D648;
  if (!qword_27D01D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D648);
  }

  return result;
}

uint64_t sub_222A69648(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_222B01C18();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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

unint64_t sub_222A69768()
{
  result = qword_27D01D658;
  if (!qword_27D01D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D658);
  }

  return result;
}

unint64_t sub_222A697C0()
{
  result = qword_27D01D660;
  if (!qword_27D01D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D660);
  }

  return result;
}

unint64_t sub_222A69818()
{
  result = qword_27D01D668;
  if (!qword_27D01D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D668);
  }

  return result;
}

unint64_t sub_222A69870()
{
  result = qword_27D01D670;
  if (!qword_27D01D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D670);
  }

  return result;
}

unint64_t sub_222A698C4()
{
  result = qword_27D01D678;
  if (!qword_27D01D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D678);
  }

  return result;
}

unint64_t sub_222A69918()
{
  result = qword_280CB4BC0;
  if (!qword_280CB4BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D290, &qword_222B06EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB4BC0);
  }

  return result;
}

uint64_t SiriUserFeedbackLearningMLRuntimePlugin.init(bundleIdentifier:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for SiriUserFeedbackLearningMLRuntimePlugin(0) + 20);
  v7 = sub_222B01748();
  v10 = *(v7 - 8);
  (*(v10 + 32))(&a4[v6], a3, v7);
  v8 = *(v10 + 56);

  return v8(&a4[v6], 0, 1, v7);
}

uint64_t type metadata accessor for SiriUserFeedbackLearningMLRuntimePlugin(uint64_t a1)
{
  result = qword_280CB7B70;
  if (!qword_280CB7B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriUserFeedbackLearningMLRuntimePlugin.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SiriUserFeedbackLearningMLRuntimePlugin.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SiriUserFeedbackLearningMLRuntimePlugin(0) + 20);

  return sub_222A69B04(v3, a1);
}

uint64_t sub_222A69B04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SiriUserFeedbackLearningMLRuntimePlugin.init(bundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  *(a3 + 1) = a2;
  v4 = *(type metadata accessor for SiriUserFeedbackLearningMLRuntimePlugin(0) + 20);
  v5 = sub_222B01748();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a3[v4], 1, 1, v5);
}

uint64_t SiriUserFeedbackLearningMLRuntimePlugin.perform(_:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_222A69C14, 0, 0);
}

uint64_t sub_222A69C14()
{
  v16 = v0;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_222B02148();
  __swift_project_value_buffer(v2, qword_280CBC458);
  sub_222A4DE5C(v1, (v0 + 2));
  v3 = sub_222B02128();
  v4 = sub_222B028D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_222A230FC(0x286D726F66726570, 0xEB00000000293A5FLL, &v15);
    *(v5 + 12) = 2080;
    v7 = SiriUserFeedbackLearningTask.description.getter();
    v9 = v8;
    sub_222A4DEB8((v0 + 2));
    v10 = sub_222A230FC(v7, v9, &v15);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_222A1C000, v3, v4, "SiriUserFeedbackLearningMLRuntimePlugin.%s task: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v6, -1, -1);
    MEMORY[0x223DC7E30](v5, -1, -1);
  }

  else
  {

    sub_222A4DEB8((v0 + 2));
  }

  v11 = swift_task_alloc();
  v0[12] = v11;
  *(v11 + 16) = *(v0 + 5);
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_222A69EA0;
  v13 = v0[9];

  return MEMORY[0x2822007B8](v13, 0, 0, 0x286D726F66726570, 0xEB00000000293A5FLL, sub_222A6A644, v11, &type metadata for SiriUserFeedbackLearningTaskResult);
}

uint64_t sub_222A69EA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_222A69FB0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D680, &qword_222B08938);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - v7;
  v9 = objc_opt_self();
  v10 = *(a2 + 8);
  v11 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  aBlock[4] = sub_222A6A8D8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222A4E970;
  aBlock[3] = &block_descriptor_10;
  v14 = _Block_copy(aBlock);

  [v9 performTask:v10 forPluginID:v11 completionHandler:v14];
  _Block_release(v14);
}

uint64_t sub_222A6A198(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  SiriUserFeedbackLearningTaskResult.init(mlrTaskResult:error:)(a1, a2, &v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D680, &qword_222B08938);
  return sub_222B02708();
}

void SiriUserFeedbackLearningMLRuntimePlugin.perform(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v6 = sub_222B02148();
  __swift_project_value_buffer(v6, qword_280CBC458);
  sub_222A4DE5C(a1, aBlock);
  v7 = sub_222B02128();
  v8 = sub_222B028D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_222A230FC(0xD000000000000016, 0x8000000222B11980, &v20);
    *(v9 + 12) = 2080;
    v11 = SiriUserFeedbackLearningTask.description.getter();
    v13 = v12;
    sub_222A4DEB8(aBlock);
    v14 = sub_222A230FC(v11, v13, &v20);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_222A1C000, v7, v8, "SiriUserFeedbackLearningMLRuntimePlugin.%s task: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v10, -1, -1);
    MEMORY[0x223DC7E30](v9, -1, -1);
  }

  else
  {

    sub_222A4DEB8(aBlock);
  }

  v15 = objc_opt_self();
  v16 = *(a1 + 8);
  v17 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  aBlock[4] = sub_222A6A64C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222A4E970;
  aBlock[3] = &block_descriptor_4;
  v19 = _Block_copy(aBlock);

  [v15 performTask:v16 forPluginID:v17 completionHandler:v19];
  _Block_release(v19);
}

void sub_222A6A4C0(void *a1, void *a2, void (*a3)(__int128 *))
{
  v6 = a1;
  v7 = a2;
  SiriUserFeedbackLearningTaskResult.init(mlrTaskResult:error:)(a1, a2, &v13);
  v10 = v13;
  v11 = v14;
  v12 = v15;
  a3(&v10);
  v9 = v11;
  v8 = v12;
  sub_222A39248(v10, *(&v10 + 1));
}

uint64_t sub_222A6A558()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_222A6A598(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A34620;

  return SiriUserFeedbackLearningMLRuntimePlugin.perform(_:)(a1, a2);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of SiriUserFeedbackLearningPlugin.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_222A34620;

  return v11(a1, a2, a3, a4);
}

void sub_222A6A804(uint64_t a1)
{
  sub_222A6A880(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_222A6A880(uint64_t a1)
{
  if (!qword_280CB8308)
  {
    sub_222B01748();
    v1 = sub_222B02B28();
    if (!v2)
    {
      atomic_store(v1, &qword_280CB8308);
    }
  }
}

uint64_t sub_222A6A8D8(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D680, &qword_222B08938);

  return sub_222A6A198(a1, a2);
}

void *UniversalSuggestionsStoreRuntimeQueryWrapper.__allocating_init()()
{
  v0 = static Config.universalSuggestionsStoreFilePath.getter();
  v2 = v1;
  v3 = type metadata accessor for UniversalSuggestionsStoreCoreData();
  swift_allocObject();
  v4 = sub_222AB99B4(v0, v2, 0);
  if (v4)
  {
    v5 = v4;
    type metadata accessor for UniversalSuggestionsStoreRuntimeQueryWrapper();
    result = swift_allocObject();
    result[5] = v3;
    result[6] = &protocol witness table for UniversalSuggestionsStoreCoreData;
    result[2] = v5;
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v7 = sub_222B02148();
    __swift_project_value_buffer(v7, qword_280CBC458);
    v8 = sub_222B02128();
    v9 = sub_222B028E8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_222A1C000, v8, v9, "[UniversalSuggestionsStoreRuntimeQueryWrapper]: Failed to initialise Universal Suggestions store", v10, 2u);
      MEMORY[0x223DC7E30](v10, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t *UniversalSuggestionsStoreRuntimeQueryWrapper.__allocating_init(store:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_222A6B518(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

void *UniversalSuggestionsStoreRuntimeQueryWrapper.init(store:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_222A6B4A8(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_222A6ABF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v50 = a2;
  v48 = type metadata accessor for UniversalCandidate(0);
  MEMORY[0x28223BE20](v48);
  v47 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D688, &unk_222B08940);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v46 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v46 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = sub_222B02098();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  if (qword_27D01C4D0 != -1)
  {
    swift_once();
  }

  v23 = sub_222B020C8();
  __swift_project_value_buffer(v23, qword_27D024610);
  sub_222B020B8();
  sub_222B02068();
  v49 = sub_222A6EF34("runUniversalSuggestionsQuery", 28, 2, v21);
  (*(v19 + 8))(v21, v18);
  v24 = v3[5];
  v25 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v24);
  v51[0] = v22;
  (*(v25 + 24))(v51, v24, v25);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v26 = sub_222B02148();
  __swift_project_value_buffer(v26, qword_280CBC458);
  sub_222A6B61C(v17, v15);
  v27 = sub_222B02128();
  v28 = sub_222B028D8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v52 = v30;
    *v29 = 136315138;
    sub_222A6B61C(v15, v12);
    v31 = type metadata accessor for UniversalSuggestionCandidate(0);
    if ((*(*(v31 - 8) + 48))(v12, 1, v31) == 1)
    {
      sub_222A6B68C(v12);
      v32 = 0;
      v33 = 0;
    }

    else
    {
      v34 = &v12[*(v31 + 24)];
      v35 = v47;
      sub_222A43DEC(v34, v47);
      sub_222A6B764(v12, type metadata accessor for UniversalSuggestionCandidate);
      v36 = *(v35 + *(v48 + 20));

      sub_222A6B764(v35, type metadata accessor for UniversalCandidate);
      v51[0] = v36;
      v32 = sub_222A67AA8(v36);
      v33 = v37;
    }

    v51[0] = v32;
    v51[1] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D690, &qword_222B0F0C0);
    v38 = sub_222B023D8();
    v40 = v39;
    sub_222A6B68C(v15);
    v41 = sub_222A230FC(v38, v40, &v52);

    *(v29 + 4) = v41;
    _os_log_impl(&dword_222A1C000, v27, v28, "[UniversalSuggestionsStoreRuntimeQueryWrapper]: Found %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x223DC7E30](v30, -1, -1);
    MEMORY[0x223DC7E30](v29, -1, -1);
  }

  else
  {

    sub_222A6B68C(v15);
  }

  sub_222A6B6F4(v17, v9);
  v42 = type metadata accessor for UniversalSuggestionCandidate(0);
  if ((*(*(v42 - 8) + 48))(v9, 1, v42) == 1)
  {
    sub_222A6B68C(v9);
    v43 = 0;
  }

  else
  {
    v44 = v47;
    sub_222A43DEC(&v9[*(v42 + 24)], v47);
    sub_222A6B764(v9, type metadata accessor for UniversalSuggestionCandidate);
    v43 = *(v44 + *(v48 + 20));

    sub_222A6B764(v44, type metadata accessor for UniversalCandidate);
  }

  *v50 = v43;
  sub_222A6B1A0(v49);
}

uint64_t sub_222A6B1A0(uint64_t a1)
{
  v1 = sub_222B020D8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222B02098();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D01C4D0 != -1)
  {
    swift_once();
  }

  v9 = sub_222B020C8();
  __swift_project_value_buffer(v9, qword_27D024610);
  v10 = sub_222B020B8();
  sub_222B020E8();
  v11 = sub_222B029F8();
  if (sub_222B02B08())
  {

    sub_222B02118();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_222B02078();
    _os_signpost_emit_with_name_impl(&dword_222A1C000, v10, v11, v14, "runUniversalSuggestionsQuery", v12, v13, 2u);
    MEMORY[0x223DC7E30](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t UniversalSuggestionsStoreRuntimeQueryWrapper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_222A6B4A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  return a2;
}

uint64_t *sub_222A6B518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UniversalSuggestionsStoreRuntimeQueryWrapper();
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v10[5] = a3;
  v10[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10 + 2);
  (*(v7 + 32))(boxed_opaque_existential_1, v9, a3);
  return v10;
}

uint64_t sub_222A6B61C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D688, &unk_222B08940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A6B68C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D688, &unk_222B08940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222A6B6F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D688, &unk_222B08940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A6B764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222A6B814(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x223DC6F00](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_222B02D18();
        sub_222B02D48();
        v4 = v15;
        sub_222B02D58();
        sub_222B02D28();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

void *static NlxSELFUtils.getTopNlxUsoGraph(from:)(unint64_t a1)
{
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v120);
  v124 = MEMORY[0x277D84F90];
  v119 = &v116 - v5;
  if (a1 >> 62)
  {
    goto LABEL_183;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = MEMORY[0x277D84F90];
  v123 = a1;
  if (v6)
  {
    v8 = 0;
    v1 = a1 & 0xC000000000000001;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v1)
      {
        v10 = MEMORY[0x223DC6F00](v8, a1);
      }

      else
      {
        if (v8 >= *(v9 + 16))
        {
          goto LABEL_123;
        }

        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = v10;
      v2 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_122;
      }

      if ([v10 anyEventType] == 18)
      {
        sub_222B02D18();
        sub_222B02D48();
        sub_222B02D58();
        sub_222B02D28();
        a1 = v123;
      }

      else
      {
      }

      ++v8;
    }

    while (v2 != v6);
    v9 = v124;
    v124 = v7;
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_184;
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_184;
    }
  }

  if ((v9 & 0x4000000000000000) == 0)
  {
    v2 = *(v9 + 16);
    goto LABEL_19;
  }

LABEL_184:
  v2 = sub_222B02DC8();
LABEL_19:
  a1 = 0;
  v121 = 0;
  v122 = MEMORY[0x277D84F90];
  if (!v2)
  {
LABEL_20:

    v2 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
    if (v6)
    {
      v9 = 0;
      a1 = v123;
      v12 = v123 & 0xC000000000000001;
      v13 = v123 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v12)
        {
          v22 = MEMORY[0x223DC6F00](v9, a1);
        }

        else
        {
          if (v9 >= *(v13 + 16))
          {
            goto LABEL_125;
          }

          v22 = *(a1 + 8 * v9 + 32);
        }

        v23 = v22;
        v1 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_124;
        }

        if ([v22 anyEventType] == 19)
        {
          sub_222B02D18();
          sub_222B02D48();
          sub_222B02D58();
          sub_222B02D28();
          a1 = v123;
        }

        else
        {
        }

        ++v9;
      }

      while (v1 != v6);
      v1 = v124;
      v124 = v2;
      if (v1 < 0)
      {
        goto LABEL_185;
      }
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
      v124 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
      {
        goto LABEL_185;
      }
    }

    if ((v1 & 0x4000000000000000) == 0)
    {
      v6 = *(v1 + 16);
LABEL_50:
      a1 = 0;
      v3 = 0x277D59000uLL;
      v123 = MEMORY[0x277D84F90];
      if (!v6)
      {
LABEL_51:

        a1 = sub_222A6CB10(v122, v123);

        if (!a1)
        {
          goto LABEL_198;
        }

        if (a1 >> 62)
        {
          v1 = sub_222B02DC8();
          if (!v1)
          {
            goto LABEL_197;
          }
        }

        else
        {
          v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v1)
          {
            goto LABEL_197;
          }
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x223DC6F00](0, a1);
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_190:
            swift_once();
LABEL_60:
            v25 = sub_222B02148();
            v26 = __swift_project_value_buffer(v25, qword_280CBC458);
            v27 = v9;
            v118 = v26;
            v28 = sub_222B02128();
            v29 = sub_222B028D8();

            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              v31 = swift_slowAlloc();
              v126 = v31;
              *v30 = 136315138;
              v32 = [v27 userDialogActs];
              if (v32)
              {
                sub_222A250BC(0, &qword_280CB4B10, 0x277D58FD0);
                v33 = sub_222B025F8();

                if (v33 >> 62)
                {
                  v34 = sub_222B02DC8();
                }

                else
                {
                  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }
              }

              else
              {
                v34 = 0;
              }

              v124 = v34;
              v125 = v32 == 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D698, qword_222B089C0);
              v48 = sub_222B023D8();
              v50 = sub_222A230FC(v48, v49, &v126);

              *(v30 + 4) = v50;
              _os_log_impl(&dword_222A1C000, v28, v29, "[NlxSELFUtils] Found %s dialog acts in the top NLX parse", v30, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v31);
              MEMORY[0x223DC7E30](v31, -1, -1);
              MEMORY[0x223DC7E30](v30, -1, -1);
            }

            v6 = v122;
            v51 = [v27 userDialogActs];
            if (!v51)
            {

LABEL_198:

              return 0;
            }

            v52 = v51;
            sub_222A250BC(0, &qword_280CB4B10, 0x277D58FD0);
            a1 = sub_222B025F8();

            v123 = v27;
            if (a1 >> 62)
            {
              goto LABEL_195;
            }

            v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v2)
            {
              goto LABEL_97;
            }

LABEL_196:

LABEL_197:

            goto LABEL_198;
          }

          v24 = *(a1 + 32);
        }

        v6 = v24;
        if (v1 != 1)
        {
          v2 = 1;
          while (1)
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v43 = MEMORY[0x223DC6F00](v2, a1);
            }

            else
            {
              if ((v2 & 0x8000000000000000) != 0)
              {
LABEL_181:
                __break(1u);
LABEL_182:
                __break(1u);
LABEL_183:
                v6 = sub_222B02DC8();
                goto LABEL_3;
              }

              if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_182;
              }

              v43 = *(a1 + 8 * v2 + 32);
            }

            v9 = v43;
            v44 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              goto LABEL_126;
            }

            [v6 probability];
            v46 = v45;
            [v9 probability];
            if (v46 < v47)
            {

              v6 = v9;
              ++v2;
              if (v44 == v1)
              {
                goto LABEL_59;
              }
            }

            else
            {

              ++v2;
              if (v44 == v1)
              {
                break;
              }
            }
          }
        }

        v9 = v6;
LABEL_59:

        if (qword_280CBA628 == -1)
        {
          goto LABEL_60;
        }

        goto LABEL_190;
      }

      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x223DC6F00](a1, v1);
        }

        else
        {
          if (a1 >= *(v1 + 16))
          {
            goto LABEL_121;
          }

          v37 = *(v1 + 8 * a1 + 32);
        }

        v2 = v37;
        v9 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          goto LABEL_120;
        }

        v38 = [v37 payload];
        if (v38)
        {
          v39 = v38;
          v40 = sub_222B01798();
          v42 = v41;

          v35 = sub_222B01788();
          sub_222A26530(v40, v42);
        }

        else
        {
          v35 = 0;
        }

        v36 = [objc_allocWithZone(MEMORY[0x277D59610]) initWithData_];

        ++a1;
        if (v36)
        {
          MEMORY[0x223DC6810]();
          if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_222B02648();
          }

          sub_222B02688();
          v123 = v124;
          a1 = v9;
          if (v6 == v9)
          {
            goto LABEL_51;
          }
        }

        else if (v6 == a1)
        {
          goto LABEL_51;
        }
      }
    }

LABEL_185:
    v6 = sub_222B02DC8();
    goto LABEL_50;
  }

  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x223DC6F00](a1, v9);
    }

    else
    {
      if (a1 >= *(v9 + 16))
      {
        goto LABEL_119;
      }

      v20 = *(v9 + 8 * a1 + 32);
    }

    v3 = v20;
    v1 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      break;
    }

    v21 = [v20 payload];
    if (v21)
    {
      v14 = v21;
      v15 = sub_222B01798();
      v17 = v16;

      v18 = sub_222B01788();
      sub_222A26530(v15, v17);
    }

    else
    {
      v18 = 0;
    }

    v19 = [objc_allocWithZone(MEMORY[0x277D590F0]) initWithData_];

    ++a1;
    if (v19)
    {
      MEMORY[0x223DC6810]();
      if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_222B02648();
      }

      sub_222B02688();
      v122 = v124;
      a1 = v1;
      if (v2 == v1)
      {
        goto LABEL_20;
      }
    }

    else if (v2 == a1)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_119:
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
  v76 = sub_222B018D8();
  (*(*(v76 - 8) + 56))(v119, 1, 1, v76);
LABEL_128:
  v77 = sub_222B023D8();
  v79 = sub_222A230FC(v77, v78, &v124);

  *(v3 + 4) = v79;
  _os_log_impl(&dword_222A1C000, a1, v2, "[NlxSELFUtils] Fetching NLX events for link id=%s to reconstruct the graph", v3, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v1);
  MEMORY[0x223DC7E30](v1, -1, -1);
  MEMORY[0x223DC7E30](v3, -1, -1);
  while (2)
  {

    v124 = MEMORY[0x277D84F90];
    v80 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
      v81 = sub_222B02DC8();
    }

    else
    {
      v81 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v82 = MEMORY[0x277D84F90];
    if (!v81)
    {
      a1 = MEMORY[0x277D84F90];
      goto LABEL_150;
    }

    v83 = 0;
    v84 = v6 & 0xC000000000000001;
    a1 = MEMORY[0x277D84F90];
    do
    {
      v1 = a1;
      a1 = v83;
      while (1)
      {
        if (v84)
        {
          v85 = MEMORY[0x223DC6F00](a1, v6);
        }

        else
        {
          if (a1 >= *(v80 + 16))
          {
            goto LABEL_192;
          }

          v85 = *(v6 + 8 * a1 + 32);
        }

        v6 = v85;
        v83 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          __break(1u);
LABEL_192:
          __break(1u);
          goto LABEL_193;
        }

        v86 = [v85 cdmUsoGraphTier1];
        if (v86)
        {
          break;
        }

LABEL_135:
        ++a1;
        v6 = v122;
        if (v83 == v81)
        {
          a1 = v1;
          v82 = MEMORY[0x277D84F90];
          goto LABEL_150;
        }
      }

      v87 = v86;
      v88 = [v86 usoGraphTier1];

      if (!v88)
      {
        goto LABEL_135;
      }

      MEMORY[0x223DC6810]();
      v6 = v122;
      if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v1 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222B02648();
      }

      sub_222B02688();
      a1 = v124;
      v82 = MEMORY[0x277D84F90];
    }

    while (v83 != v81);
LABEL_150:

    v124 = v82;
    if (a1 >> 62)
    {
      v89 = sub_222B02DC8();
    }

    else
    {
      v89 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v60 = v123;
    v58 = v116;
    if (v89)
    {
      v90 = 0;
      v122 = a1 & 0xC000000000000001;
      v91 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v122)
        {
          v92 = MEMORY[0x223DC6F00](v90, a1);
        }

        else
        {
          if (v90 >= *(v91 + 16))
          {
            goto LABEL_194;
          }

          v92 = *(a1 + 8 * v90 + 32);
        }

        v93 = v92;
        v1 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          break;
        }

        v94 = [v92 linkId];
        if (v94)
        {
          v95 = v94;
          v96 = a1;
          sub_222A250BC(0, &qword_27D01D050, 0x277D5AC78);
          v6 = v117;
          v97 = sub_222B02AE8();

          if (v97)
          {
            sub_222B02D18();
            sub_222B02D48();
            sub_222B02D58();
            sub_222B02D28();
          }

          else
          {
          }

          a1 = v96;
        }

        else
        {
        }

        ++v90;
        if (v1 == v89)
        {
          v60 = v123;
          v70 = v124;
          v58 = v116;
          goto LABEL_168;
        }
      }

LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      v2 = sub_222B02DC8();
      if (!v2)
      {
        goto LABEL_196;
      }

LABEL_97:
      v3 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v53 = MEMORY[0x223DC6F00](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_180;
          }

          v53 = *(a1 + 8 * v3 + 32);
        }

        v9 = v53;
        v1 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_180:
          __break(1u);
          goto LABEL_181;
        }

        v54 = [v53 reference];
        if (v54)
        {

          v55 = [v9 userStatedTask];
          if (v55)
          {
            break;
          }
        }

        ++v3;
        if (v1 == v2)
        {
          goto LABEL_196;
        }
      }

      v56 = v55;

      v57 = [v9 reference];
      if (v57)
      {
        v58 = v57;
        v59 = [v9 reference];
        v60 = v123;
        if (!v59 || (v61 = v59, v62 = [v59 linkId], v61, !v62))
        {

          v70 = MEMORY[0x277D84F90];
          goto LABEL_169;
        }

        v63 = v62;
        a1 = sub_222B02128();
        LOBYTE(v2) = sub_222B028D8();

        v64 = os_log_type_enabled(a1, v2);
        v116 = v58;
        v117 = v63;
        if (!v64)
        {
          continue;
        }

        v3 = swift_slowAlloc();
        v1 = swift_slowAlloc();
        v124 = v1;
        *v3 = 136315138;
        v65 = [v63 value];
        if (v65)
        {
          v66 = v65;
          v67 = sub_222B01798();
          v69 = v68;

          sub_222A67044(v67, v69, v119);
          sub_222A26530(v67, v69);
          goto LABEL_128;
        }

        goto LABEL_127;
      }

      v71 = sub_222B02128();
      v72 = sub_222B028E8();
      v73 = os_log_type_enabled(v71, v72);
      v74 = v123;
      if (v73)
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_222A1C000, v71, v72, "[NlxSELFUtils] No USO graph in top dialog act", v75, 2u);
        MEMORY[0x223DC7E30](v75, -1, -1);
      }

      return 0;
    }

    else
    {
      v70 = MEMORY[0x277D84F90];
LABEL_168:

LABEL_169:

      v98 = sub_222B02128();
      v99 = sub_222B028D8();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 134217984;
        if (v70 >> 62)
        {
          v101 = sub_222B02DC8();
        }

        else
        {
          v101 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v100 + 4) = v101;

        _os_log_impl(&dword_222A1C000, v98, v99, "[NlxSELFUtils] Found %ld NLX redaction events", v100, 0xCu);
        MEMORY[0x223DC7E30](v100, -1, -1);

        v60 = v123;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v102 = v121;
      v103 = sub_222ACC144(v58, v70);
      if (v102)
      {

        v104 = v102;
        v105 = sub_222B02128();
        v106 = sub_222B028E8();

        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = v60;
          v109 = swift_slowAlloc();
          v124 = v109;
          *v107 = 136315138;
          v126 = v102;
          v110 = v102;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
          v111 = sub_222B023D8();
          v113 = sub_222A230FC(v111, v112, &v124);

          *(v107 + 4) = v113;
          _os_log_impl(&dword_222A1C000, v105, v106, "Failed to un-redact the NLX USO graph: %s", v107, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v109);
          MEMORY[0x223DC7E30](v109, -1, -1);
          MEMORY[0x223DC7E30](v107, -1, -1);
        }

        else
        {
        }

        return 0;
      }

      v114 = v103;

      return v114;
    }
  }
}

unint64_t sub_222A6CB10(unint64_t a1, unint64_t a2)
{
  result = sub_222A6CD30(a1, a2);
  if (result)
  {
    v3 = result;
    v19 = result;
    v4 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = result)
    {
      while (!__OFSUB__(i--, 1))
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x223DC6F00](i, v3);
        }

        else
        {
          if ((i & 0x8000000000000000) != 0)
          {
            goto LABEL_25;
          }

          if (i >= *(v4 + 16))
          {
            goto LABEL_26;
          }

          v7 = *(v3 + 32 + 8 * i);
        }

        v8 = v7;
        v9 = [v7 cdmRequestContext];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 ended];

          if (v11)
          {

            goto LABEL_17;
          }
        }

        else
        {
        }

        if (!i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      result = sub_222B02DC8();
    }

LABEL_17:
    MEMORY[0x28223BE20](result);
    v18[2] = &v19;
    v13 = sub_222A9DCE0(sub_222A6E52C, v18, i, v12);

    if (v13 && (v14 = [v13 cdmRequestContext], v13, v14) && (v15 = objc_msgSend(v14, sel_ended), v14, v15) && (v16 = objc_msgSend(v15, sel_parses), v15, v16))
    {
      sub_222A250BC(0, &qword_280CB4B68, 0x277D58FD8);
      v17 = sub_222B025F8();

      return v17;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_222A6CD30(unint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v90 - v5;
  v7 = sub_222B018D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222A6D88C(a2, v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v29 = (*(v8 + 32))(v10, v6, v7);
    MEMORY[0x28223BE20](v29);
    *(&v90 - 2) = v10;

    v30 = sub_222A6B814(sub_222A6E43C, (&v90 - 4), a1);
    (*(v8 + 8))(v10, v7);
    return v30;
  }

  sub_222A34F20(v6, &unk_27D01DA50, &unk_222B04E20);
  v11 = sub_222A6E290(a2);
  v92 = a1;
  if (v12)
  {
    v13 = v12;
    v91 = v11;
    v94 = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      goto LABEL_44;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
    {
      v15 = 0;
      v16 = a1 & 0xC000000000000001;
      v17 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v16)
        {
          v18 = MEMORY[0x223DC6F00](v15, a1);
        }

        else
        {
          if (v15 >= *(v17 + 16))
          {
            goto LABEL_41;
          }

          v18 = *(a1 + 8 * v15 + 32);
        }

        v19 = v18;
        v20 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v21 = [v18 eventMetadata];
        if (v21)
        {
          v22 = v21;
          v23 = [v21 resultCandidateId];

          if (v23)
          {
            v24 = sub_222B02388();
            v26 = v25;

            v27 = v24 == v91 && v13 == v26;
            if (v27)
            {

              a1 = v92;
LABEL_21:
              sub_222B02D18();
              sub_222B02D48();
              sub_222B02D58();
              sub_222B02D28();
              goto LABEL_7;
            }

            v28 = sub_222B02F78();

            a1 = v92;
            if (v28)
            {
              goto LABEL_21;
            }
          }
        }

LABEL_7:
        ++v15;
        if (v20 == i)
        {
          v30 = v94;
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      ;
    }

    v30 = MEMORY[0x277D84F90];
LABEL_46:

    return v30;
  }

  v94 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v31 = sub_222B02DC8();
    if (v31)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
LABEL_27:
      v32 = v31;
      v33 = 0;
      v34 = a1 & 0xC000000000000001;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v34)
        {
          v35 = MEMORY[0x223DC6F00](v33, a1);
        }

        else
        {
          if (v33 >= *(v13 + 16))
          {
            goto LABEL_43;
          }

          v35 = *(a1 + 8 * v33 + 32);
        }

        v36 = v35;
        a1 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_42;
        }

        v37 = [v35 cdmRequestContext];
        if (v37 && (v38 = v37, v39 = [v37 ended], v38, v39))
        {

          sub_222B02D18();
          sub_222B02D48();
          sub_222B02D58();
          sub_222B02D28();
        }

        else
        {
        }

        ++v33;
        v27 = a1 == v32;
        a1 = v92;
      }

      while (!v27);
      v40 = v94;
      v31 = v32;
      if (v94 < 0)
      {
        goto LABEL_116;
      }

      goto LABEL_50;
    }
  }

  v40 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
LABEL_116:
    v42 = sub_222B02DC8();
    goto LABEL_52;
  }

LABEL_50:
  if ((v40 & 0x4000000000000000) != 0)
  {
    goto LABEL_116;
  }

  v42 = *(v40 + 16);
LABEL_52:
  v90 = v31;
  v30 = MEMORY[0x277D84F90];
  if (!v42)
  {
    v91 = MEMORY[0x277D84F90];
    goto LABEL_74;
  }

  v31 = 0;
  v91 = MEMORY[0x277D84F90];
  while (2)
  {
    v43 = v31;
    while (1)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x223DC6F00](v43, v40);
      }

      else
      {
        if (v43 >= *(v40 + 16))
        {
          goto LABEL_113;
        }

        v44 = *(v40 + 8 * v43 + 32);
      }

      v45 = v44;
      v31 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v46 = [v44 eventMetadata];
      if (v46)
      {
        v47 = v46;
        v48 = [v46 resultCandidateId];

        if (v48)
        {
          break;
        }
      }

LABEL_56:
      ++v43;
      a1 = v92;
      if (v31 == v42)
      {
        v30 = MEMORY[0x277D84F90];
        goto LABEL_74;
      }
    }

    v49 = sub_222B02388();
    v51 = v50;

    v52 = sub_222A9DDF4(v49, v51);
    LOBYTE(v49) = v53;

    if (v49)
    {
      goto LABEL_56;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v91 = sub_222AA8ECC(0, *(v91 + 2) + 1, 1, v91);
    }

    v56 = *(v91 + 2);
    v55 = *(v91 + 3);
    if (v56 >= v55 >> 1)
    {
      v91 = sub_222AA8ECC((v55 > 1), v56 + 1, 1, v91);
    }

    v57 = v91;
    *(v91 + 2) = v56 + 1;
    *&v57[8 * v56 + 32] = v52;
    a1 = v92;
    v30 = MEMORY[0x277D84F90];
    if (v31 != v42)
    {
      continue;
    }

    break;
  }

LABEL_74:

  v58 = v90;
  v59 = *(v91 + 2);
  if (!v59)
  {

    return 0;
  }

  v60 = *(v91 + 4);
  v61 = v59 - 1;
  if (v59 != 1)
  {
    if (v59 >= 5)
    {
      v62 = v61 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v63 = vdupq_n_s64(v60);
      v64 = (v91 + 56);
      v65 = v61 & 0xFFFFFFFFFFFFFFFCLL;
      v66 = v63;
      do
      {
        v63 = vbslq_s8(vcgtq_s64(v63, v64[-1]), v63, v64[-1]);
        v66 = vbslq_s8(vcgtq_s64(v66, *v64), v66, *v64);
        v64 += 2;
        v65 -= 4;
      }

      while (v65);
      v67 = vbslq_s8(vcgtq_s64(v63, v66), v63, v66);
      v68 = vextq_s8(v67, v67, 8uLL).u64[0];
      v60 = vbsl_s8(vcgtd_s64(v67.i64[0], v68), *v67.i8, v68);
      if (v61 != (v61 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_82;
      }
    }

    else
    {
      v62 = 1;
LABEL_82:
      v69 = v59 - v62;
      v70 = &v91[8 * v62 + 32];
      do
      {
        v72 = *v70;
        v70 += 8;
        v71 = v72;
        if (v60 <= v72)
        {
          v60 = v71;
        }

        --v69;
      }

      while (v69);
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v73 = sub_222B02148();
  __swift_project_value_buffer(v73, qword_280CBC458);
  v74 = sub_222B02128();
  v75 = sub_222B028E8();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 134217984;
    *(v76 + 4) = v60;
    _os_log_impl(&dword_222A1C000, v74, v75, "Using highest integer rcId of %ld to identify primary NLX candidate", v76, 0xCu);
    MEMORY[0x223DC7E30](v76, -1, -1);
  }

  v94 = v30;
  if (v58)
  {
    v77 = 0;
    v40 = a1 & 0xC000000000000001;
    v78 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v40)
      {
        v79 = MEMORY[0x223DC6F00](v77, a1);
      }

      else
      {
        if (v77 >= *(v78 + 16))
        {
          goto LABEL_115;
        }

        v79 = *(a1 + 8 * v77 + 32);
      }

      v80 = v79;
      v31 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        goto LABEL_114;
      }

      v81 = [v79 eventMetadata];
      if (v81 && (v82 = v81, v83 = [v81 resultCandidateId], v82, v83))
      {
        v84 = sub_222B02388();
        v86 = v85;

        v93 = v60;
        v87 = sub_222B02F38();
        if (v86)
        {
          if (v84 == v87 && v86 == v88)
          {

            goto LABEL_107;
          }

          v89 = sub_222B02F78();

          if (v89)
          {
LABEL_107:
            sub_222B02D18();
            sub_222B02D48();
            sub_222B02D58();
            sub_222B02D28();
          }

          else
          {
          }

          a1 = v92;
          goto LABEL_94;
        }

        a1 = v92;
      }

      else
      {
        v93 = v60;
        sub_222B02F38();
      }

LABEL_94:
      ++v77;
      if (v31 == v58)
      {
        return v94;
      }
    }
  }

  return v30;
}

unint64_t sub_222A6D6B4(unint64_t a1, unint64_t a2)
{
  result = sub_222A6CD30(a1, a2);
  if (!result)
  {
    return result;
  }

  v3 = result;
  v16 = result;
  v4 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    goto LABEL_22;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v6 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223DC6F00](v6 - 1, v3);
      goto LABEL_10;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_20;
    }

    if (v5 >= *(v4 + 16))
    {
LABEL_21:
      __break(1u);
LABEL_22:
      result = sub_222B02DC8();
      v5 = result;
    }

    else
    {
      v7 = *(v3 + 32 + 8 * v5);
LABEL_10:
      v8 = v7;
      v9 = [v7 cdmMatchingSpanEnded];

      if (v9)
      {

        break;
      }
    }
  }

  MEMORY[0x28223BE20](result);
  v15[2] = &v16;
  v11 = sub_222A9DCE0(sub_222A6E41C, v15, v5, v10);

  if (!v11)
  {
    return 0;
  }

  v12 = [v11 cdmMatchingSpanEnded];

  if (!v12)
  {
    return 0;
  }

  v13 = [v12 matchingSpans];

  if (!v13)
  {
    return 0;
  }

  sub_222A250BC(0, &qword_27D01D6A0, 0x277D58E20);
  v14 = sub_222B025F8();

  return v14;
}

uint64_t sub_222A6D88C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v24 = a1;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v6 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223DC6F00](v6 - 1, v2);
      goto LABEL_9;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }

    if (v5 >= *(v4 + 16))
    {
LABEL_23:
      __break(1u);
LABEL_24:
      a1 = sub_222B02DC8();
      v5 = a1;
    }

    else
    {
      v7 = *(v2 + 32 + 8 * v5);
LABEL_9:
      v8 = v7;
      v9 = [v7 trpFinalized];

      if (v9)
      {

        break;
      }
    }
  }

  MEMORY[0x28223BE20](a1);
  v23[2] = &v24;
  v11 = sub_222A9DCE0(sub_222A6E52C, v23, v5, v10);
  if (v11)
  {
    v12 = v11;
    v13 = [v11 trpFinalized];
    if (v13 && (v14 = v13, v15 = [v13 trpId], v14, v15))
    {
      v16 = [v15 value];
      if (v16)
      {
        v17 = v16;
        v18 = sub_222B01798();
        v20 = v19;

        sub_222A67044(v18, v20, a2);
        return sub_222A26530(v18, v20);
      }
    }

    else
    {
    }
  }

  v22 = sub_222B018D8();
  return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
}

uint64_t sub_222A6DABC(id *a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D6A8, &unk_222B08A00);
  MEMORY[0x28223BE20](v42);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v39 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v18 = [*a1 eventMetadata];
  v41 = v12;
  if (v18)
  {
    v19 = v18;
    v20 = [v18 trpId];

    if (v20)
    {
      v21 = [v20 value];
      if (v21)
      {
        v22 = v21;
        v23 = sub_222B01798();
        v39 = a2;
        v25 = v24;

        sub_222A67044(v23, v25, v17);
        v26 = v25;
        a2 = v39;
        sub_222A26530(v23, v26);
        goto LABEL_7;
      }
    }
  }

  (*(v5 + 56))(v17, 1, 1, v4);
LABEL_7:
  (*(v5 + 16))(v15, a2, v4);
  (*(v5 + 56))(v15, 0, 1, v4);
  v27 = *(v42 + 48);
  sub_222A6E45C(v17, v8);
  sub_222A6E45C(v15, &v8[v27]);
  v28 = v5;
  v29 = v5;
  v30 = v17;
  v31 = *(v29 + 48);
  if (v31(v8, 1, v4) != 1)
  {
    v42 = v30;
    v33 = v41;
    sub_222A6E45C(v8, v41);
    if (v31(&v8[v27], 1, v4) != 1)
    {
      v34 = v28;
      v35 = &v8[v27];
      v36 = v40;
      (*(v28 + 32))(v40, v35, v4);
      sub_222A6E4CC();
      v32 = sub_222B02338();
      v37 = *(v34 + 8);
      v37(v36, v4);
      sub_222A34F20(v15, &unk_27D01DA50, &unk_222B04E20);
      sub_222A34F20(v42, &unk_27D01DA50, &unk_222B04E20);
      v37(v33, v4);
      sub_222A34F20(v8, &unk_27D01DA50, &unk_222B04E20);
      return v32 & 1;
    }

    sub_222A34F20(v15, &unk_27D01DA50, &unk_222B04E20);
    sub_222A34F20(v42, &unk_27D01DA50, &unk_222B04E20);
    (*(v28 + 8))(v33, v4);
    goto LABEL_12;
  }

  sub_222A34F20(v15, &unk_27D01DA50, &unk_222B04E20);
  sub_222A34F20(v30, &unk_27D01DA50, &unk_222B04E20);
  if (v31(&v8[v27], 1, v4) != 1)
  {
LABEL_12:
    sub_222A34F20(v8, &qword_27D01D6A8, &unk_222B08A00);
    v32 = 0;
    return v32 & 1;
  }

  sub_222A34F20(v8, &unk_27D01DA50, &unk_222B04E20);
  v32 = 1;
  return v32 & 1;
}

uint64_t (*sub_222A6DF8C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DC6F00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_222A6E524;
  }

  __break(1u);
  return result;
}

void (*sub_222A6E00C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DC6F00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_222A6E08C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_222A6E094(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DC6F00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_222A6E114;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_222A6E11C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DC6F00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_222A6E19C;
  }

  __break(1u);
  return result;
}

void (*sub_222A6E1A4(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DC6F00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_222A6E528;
  }

  __break(1u);
  return result;
}

unint64_t sub_222A6E224@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x223DC6F00](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_222A6E290(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_20:
    v2 = sub_222B02DC8();
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return 0;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x223DC6F00](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = [v4 resultSelected];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 exists];

      if (v9)
      {
        break;
      }
    }

    if (v6 == v2)
    {
      return 0;
    }
  }

  v10 = [v5 eventMetadata];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 resultCandidateId];

    if (v12)
    {
      v13 = sub_222B02388();

      return v13;
    }
  }

  return 0;
}

uint64_t sub_222A6E45C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_222A6E4CC()
{
  result = qword_280CB8300;
  if (!qword_280CB8300)
  {
    sub_222B018D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB8300);
  }

  return result;
}

void *CoreAnalyticsMeasurable.payload()(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D6B0, qword_222B08A10);
  result = sub_222B02DD8();
  v4 = result;
  v5 = 0;
  v6 = v2 + 64;
  v26 = result;
  v27 = v2;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v2 + 64);
  v10 = (v7 + 63) >> 6;
  v25 = result + 8;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v28 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = (*(v27 + 48) + 16 * v14);
      v16 = v15[1];
      v29 = *v15;
      sub_222A42E40(*(v27 + 56) + 40 * v14, v30);
      v17 = v31;
      v18 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v19 = *(v18 + 8);

      v20 = v19(v17, v18);
      result = __swift_destroy_boxed_opaque_existential_0(v30);
      v4 = v26;
      *(v25 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v21 = (v26[6] + 16 * v14);
      *v21 = v29;
      v21[1] = v16;
      *(v26[7] + 8 * v14) = v20;
      v22 = v26[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v26[2] = v24;
      v9 = v28;
      if (!v28)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        return v4;
      }

      v13 = *(v6 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v28 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t CoreAnalyticsLogger.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 1;
  *(result + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t CoreAnalyticsLogger.init()()
{
  result = v0;
  *(v0 + 16) = 1;
  *(v0 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_222A6E784()
{
  *(v0 + 16) = 0;
  swift_beginAccess();
  *(v0 + 24) = MEMORY[0x277D84F90];
}

void sub_222A6E804(void *a1)
{
  if (*(v1 + 16))
  {
    aBlock = 0xD000000000000027;
    v10 = 0x8000000222B12160;
    v2 = a1[3];
    v3 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v2);
    v5 = (*(v3 + 8))(v2, v3);
    MEMORY[0x223DC66E0](v5);

    v6 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

    sub_222A42E40(a1, v15);
    v7 = swift_allocObject();
    sub_222A1E5A8(v15, v7 + 16);
    v13 = sub_222A6E988;
    v14 = v7;
    aBlock = MEMORY[0x277D85DD0];
    v10 = 1107296256;
    v11 = sub_222A6E9CC;
    v12 = &block_descriptor_5;
    v8 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v8);
  }

  else
  {

    sub_222A6EA70(a1);
  }
}

void *sub_222A6E988()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return CoreAnalyticsMeasurable.payload()(v1, v2);
}

id sub_222A6E9CC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_222A6EEE8();
    v4 = sub_222B022A8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_222A6EA70(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = CoreAnalyticsMeasurable.payload()(v2, v3);
  v5 = 0;
  v29 = v4;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v4 + 8;
  v9 = v7 & v4[8];
  v10 = (v6 + 63) >> 6;
  while (v9)
  {
LABEL_10:
    while (1)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = (v29[6] + ((v5 << 10) | (16 * v12)));
      v15 = *v13;
      v14 = v13[1];
      v16 = a1[3];
      v17 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v16);

      v18 = CoreAnalyticsMeasurable.payload()(v16, v17);
      if (v18[2])
      {
        v19 = sub_222A26EC8(v15, v14);
        if (v20)
        {
          break;
        }
      }

      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v21 = *(v18[7] + 8 * v19);

    swift_beginAccess();
    v22 = *(v28 + 24);
    v27 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v28 + 24) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_222AA94B4(0, v22[2] + 1, 1, v22);
      *(v28 + 24) = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_222AA94B4((v24 > 1), v25 + 1, 1, v22);
    }

    v22[2] = v25 + 1;
    v26 = &v22[3 * v25];
    v26[4] = v15;
    v26[5] = v14;
    v26[6] = v27;
    *(v28 + 24) = v22;
    swift_endAccess();
  }

LABEL_6:
  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v9 = v8[v11];
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t CoreAnalyticsLogger.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t UFLCoreAnalyticsLogLevel.hashValue.getter()
{
  v1 = *v0;
  sub_222B03128();
  MEMORY[0x223DC7380](v1);
  return sub_222B03168();
}

unint64_t sub_222A6ED8C()
{
  result = qword_27D01D6B8;
  if (!qword_27D01D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D6B8);
  }

  return result;
}

unint64_t sub_222A6EEE8()
{
  result = qword_280CB4AE8;
  if (!qword_280CB4AE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CB4AE8);
  }

  return result;
}

uint64_t sub_222A6EF34(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_222B02098();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280CB4BF8 != -1)
  {
    swift_once();
  }

  v11 = byte_280CBC3C0;
  v12 = sub_222B020B8();
  v13 = sub_222B02A08();
  result = sub_222B02B08();
  if (v11 == 1)
  {
    if ((result & 1) == 0)
    {
LABEL_23:

      (*(v8 + 16))(v10, a4, v7);
      sub_222B02108();
      swift_allocObject();
      return sub_222B020F8();
    }

    if (a3)
    {
LABEL_12:
      if (!(a1 >> 32))
      {
        if ((a1 & 0xFFFFF800) == 0xD800)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (a1 >> 16 <= 0x10)
        {
          a1 = v18;
          goto LABEL_16;
        }

        goto LABEL_26;
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (a1)
    {
LABEL_16:
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = sub_222B02078();
      v17 = "";
LABEL_22:
      _os_signpost_emit_with_name_impl(&dword_222A1C000, v12, v13, v16, a1, v17, v15, 2u);
      MEMORY[0x223DC7E30](v15, -1, -1);
      goto LABEL_23;
    }

    __break(1u);
  }

  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  if ((a3 & 1) == 0)
  {
    if (!a1)
    {
      __break(1u);
      goto LABEL_12;
    }

LABEL_21:
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_222B02078();
    v17 = "enableTelemetry=YES";
    goto LABEL_22;
  }

  if (a1 >> 32)
  {
    goto LABEL_25;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 > 0x10)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    a1 = &v19;
    goto LABEL_21;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_222A6F1AC()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_280CBC458);
  __swift_project_value_buffer(v0, qword_280CBC458);
  return sub_222B02138();
}

uint64_t sub_222A6F228()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_280CBC3C8);
  __swift_project_value_buffer(v0, qword_280CBC3C8);
  return sub_222B02138();
}

uint64_t sub_222A6F2A8()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_27D0245F8);
  __swift_project_value_buffer(v0, qword_27D0245F8);
  return sub_222B02138();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_222A6F410(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_222B02148();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_222B020C8();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, a4);
  (*(v9 + 16))(v11, v13, v8);
  return sub_222B020A8();
}

void sub_222A6F544()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 BOOLForKey_];

  byte_280CBC3C0 = v2;
}

void sub_222A6F5D4(const char *a1, uint64_t a2, char a3)
{
  if (qword_280CB4BF8 != -1)
  {
    swift_once();
  }

  v5 = byte_280CBC3C0;
  log = sub_222B020B8();
  v6 = sub_222B02A18();
  v7 = sub_222B02B08();
  if (v5 == 1)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }

    if (a3)
    {
      if (a1 >> 32)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (a1 >> 16 > 0x10)
      {
        goto LABEL_28;
      }

      a1 = &v12;
    }

    else if (!a1)
    {
      __break(1u);
      goto LABEL_8;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_222B02078();
    v10 = "";
LABEL_25:
    _os_signpost_emit_with_name_impl(&dword_222A1C000, log, v6, v9, a1, v10, v8, 2u);
    MEMORY[0x223DC7E30](v8, -1, -1);

    return;
  }

LABEL_8:
  if (v7)
  {
    if ((a3 & 1) == 0)
    {
      if (!a1)
      {
        __break(1u);
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    if (!(a1 >> 32))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_31:
        __break(1u);
        return;
      }

      if (a1 >> 16 <= 0x10)
      {
        a1 = &v13;
LABEL_24:
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = sub_222B02078();
        v10 = "enableTelemetry=YES";
        goto LABEL_25;
      }

      goto LABEL_29;
    }

    goto LABEL_27;
  }

LABEL_12:
}

uint64_t PluginSchedulerRunResult.bundleName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PluginSchedulerRunResult.pluginResult.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

__n128 PluginSchedulerRunResult.init(bundleName:pluginResult:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  return result;
}

uint64_t sub_222A6F824()
{
  v0 = sub_222A76A6C(&unk_2835F1608);
  result = sub_222A77DD0(&unk_2835F1628);
  qword_280CB9C30 = v0;
  return result;
}

uint64_t PluginScheduler.__allocating_init(queue:)(void *a1)
{
  swift_allocObject();
  v2 = sub_222A76BD4(a1);

  return v2;
}

uint64_t PluginScheduler.init(queue:)(void *a1)
{
  v2 = sub_222A76BD4(a1);

  return v2;
}

uint64_t sub_222A6F8E0(char *a1, uint64_t a2, uint64_t a3)
{
  v8 = *a1;
  if (qword_280CB9568 != -1)
  {
    swift_once();
  }

  v5 = sub_222B01748();
  v6 = __swift_project_value_buffer(v5, qword_280CBC438);
  return sub_222A6F974(&v8, v6, a2, a3);
}

uint64_t sub_222A6F974(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a3;
  v38 = a4;
  v31 = a2;
  v41 = sub_222B021D8();
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_222B02238();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222B01748();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_222B02268();
  v35 = v12;
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  LOBYTE(a1) = *a1;
  v32 = *(v5 + 16);
  sub_222B02248();
  sub_222B02288();
  v19 = *(v13 + 8);
  v34 = v13 + 8;
  v36 = v19;
  v19(v16, v12);
  v20 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v9);
  v21 = (*(v10 + 80) + 41) & ~*(v10 + 80);
  v22 = swift_allocObject();
  v23 = v37;
  v24 = v38;
  *(v22 + 16) = v20;
  *(v22 + 24) = v23;
  *(v22 + 32) = v24;
  *(v22 + 40) = a1;
  (*(v10 + 32))(v22 + v21, &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_222A77CC8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_95;
  v25 = _Block_copy(aBlock);

  v26 = v33;
  sub_222B02208();
  v44 = MEMORY[0x277D84F90];
  sub_222A77D34(qword_280CBA240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A77D7C(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
  v27 = v39;
  v28 = v41;
  sub_222B02BB8();
  MEMORY[0x223DC6BC0](v18, v26, v27, v25);
  _Block_release(v25);
  (*(v43 + 8))(v27, v28);
  (*(v40 + 8))(v26, v42);
  v36(v18, v35);
}

uint64_t sub_222A6FE50(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v90 = a5;
  v91 = a3;
  v7 = sub_222B020C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222B02098();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v83 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v33 = sub_222B02148();
    __swift_project_value_buffer(v33, qword_280CBC458);
    v34 = sub_222B02128();
    v35 = sub_222B028E8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_222A1C000, v34, v35, "The scheduler was deallocated, cancelling the execution of plugins", v36, 2u);
      MEMORY[0x223DC7E30](v36, -1, -1);
    }

    if (qword_280CB8988 != -1)
    {
      swift_once();
    }

    v37 = swift_allocObject();
    v37[2] = a2;
    v37[3] = v91;
    v37[4] = MEMORY[0x277D84F90];

    sub_222AE8044(sub_222A772D0, v37);
  }

  v19 = Strong;
  v89 = v8;
  __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceConfiguration), *(Strong + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceConfiguration + 24));
  if ((sub_222ADD258() & 1) != 0 || !AFDeviceSupportsSiriUOD())
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v29 = sub_222B02148();
    __swift_project_value_buffer(v29, qword_280CBC458);
    v30 = sub_222B02128();
    v31 = sub_222B028D8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_222A1C000, v30, v31, "Skipping SiriPrivateLearningAnalytics plugins run - device configuration is not supported", v32, 2u);
      MEMORY[0x223DC7E30](v32, -1, -1);
    }

    if (qword_280CB8988 == -1)
    {
      goto LABEL_17;
    }

LABEL_66:
    swift_once();
LABEL_17:
    v28 = swift_allocObject();
    v28[2] = a2;
    v28[3] = v91;
    v28[4] = MEMORY[0x277D84F90];

LABEL_18:
    sub_222AE8044(sub_222A77EE8, v28);
  }

  v87 = a4;
  v88 = a2;
  v20 = *(v19 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceLowPowerModeDetector + 24);
  v21 = *(v19 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceLowPowerModeDetector + 32);
  __swift_project_boxed_opaque_existential_1((v19 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceLowPowerModeDetector), v20);
  if ((*(v21 + 8))(v20, v21))
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v22 = sub_222B02148();
    __swift_project_value_buffer(v22, qword_280CBC458);
    v23 = sub_222B02128();
    v24 = sub_222B028D8();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v88;
    if (v25)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_222A1C000, v23, v24, "Skipping SiriPrivateLearningAnalytics plugins run - device is in low power mode", v27, 2u);
      MEMORY[0x223DC7E30](v27, -1, -1);
    }

    if (qword_280CB8988 != -1)
    {
      swift_once();
    }

    v28 = swift_allocObject();
    v28[2] = v26;
    v28[3] = v91;
    v28[4] = MEMORY[0x277D84F90];

    goto LABEL_18;
  }

  if (qword_280CB8540 != -1)
  {
    swift_once();
  }

  v39 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_lockPath;
  sub_222A7BCAC(v19 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_lockPath);
  sub_222A79DEC(v19 + v39, 1, &v94);
  a2 = v88;
  if (!v95)
  {
    sub_222A34F20(&v94, &unk_27D01D6F0, &unk_222B08CB0);
    v60 = v87;
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v61 = sub_222B02148();
    __swift_project_value_buffer(v61, qword_280CBC458);
    v62 = sub_222B02128();
    v63 = sub_222B028D8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_222A1C000, v62, v63, "The scheduler is not able to acquire the scheduling lock, the plugins might already be running", v64, 2u);
      v65 = v64;
      v60 = v87;
      MEMORY[0x223DC7E30](v65, -1, -1);
    }

    LOBYTE(v96[0]) = v60;
    sub_222A74E70(v96);
    if (qword_280CB8988 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

  sub_222A1E5A8(&v94, v96);
  v40 = v87;
  LOBYTE(v94) = v87;
  if (sub_222A74204(&v94))
  {
    v41 = v40 == 3;
    if (v40 == 3)
    {
      v42 = "runPluginScheduler";
    }

    else
    {
      v42 = "runPluginEventsScheduler";
    }

    if (v41)
    {
      v43 = 18;
    }

    else
    {
      v43 = 24;
    }

    if (qword_280CB79E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v7, qword_280CBC3F8);
    sub_222B02088();
    v44 = sub_222A6EF34(v42, v43, 2, v17);
    v86 = v43;
    v45 = v42;
    v46 = v44;
    v47 = *(v12 + 8);
    v85 = v12 + 8;
    v84 = v47;
    v47(v17, v11);
    sub_222A42E40(v96, &v94);
    v48 = swift_allocObject();
    v49 = v86;
    *(v48 + 16) = v45;
    *(v48 + 24) = v49;
    *(v48 + 32) = 2;
    *(v48 + 40) = v46;
    sub_222A1E5A8(&v94, v48 + 48);
    v86 = v48;
    v50 = v91;
    *(v48 + 88) = v88;
    *(v48 + 96) = v50;
    v93 = MEMORY[0x277D84F90];
    v51 = qword_280CB79E0;
    v88 = v46;

    if (v51 != -1)
    {
      swift_once();
    }

    v52 = v87;
    v53 = __swift_project_value_buffer(v7, qword_280CBC3E0);
    (*(v89 + 16))(v10, v53, v7);
    sub_222B02088();
    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = sub_222B020B8();
    v56 = sub_222B02A08();
    v57 = sub_222B02078();
    _os_signpost_emit_with_name_impl(&dword_222A1C000, v55, v56, v57, "loadPlugins", "", v54, 2u);
    if (v52 == 3)
    {
      v58 = v90;
      v59 = 0;
    }

    else
    {
      v59 = *(v19 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_eventBasedEnabledPlugins);
      v58 = v90;
    }

    v93 = sub_222AD07BC(v58, v59);
    v71 = sub_222B029F8();
    v72 = sub_222B02078();
    _os_signpost_emit_with_name_impl(&dword_222A1C000, v55, v71, v72, "loadPlugins", "", v54, 2u);

    MEMORY[0x223DC7E30](v54, -1, -1);
    v84(v15, v11);
    (*(v89 + 8))(v10, v7);
    sub_222A76634();
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v73 = sub_222B02148();
    __swift_project_value_buffer(v73, qword_280CBC458);
    v74 = sub_222B02128();
    v75 = sub_222B028D8();
    v76 = os_log_type_enabled(v74, v75);
    v77 = v87;
    if (v76)
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v92 = v79;
      *v78 = 136315138;
      if (v77 == 3)
      {
        v80 = 0xEB0000000065636ELL;
        v81 = 0x616E65746E69614DLL;
      }

      else
      {
        *&v94 = 0;
        *(&v94 + 1) = 0xE000000000000000;
        MEMORY[0x223DC66E0](0x736142746E657645, 0xEB000000005B6465);
        sub_222ACEB4C(v77);
        MEMORY[0x223DC66E0](93, 0xE100000000000000);
        v80 = *(&v94 + 1);
        v81 = v94;
      }

      v82 = sub_222A230FC(v81, v80, &v92);

      *(v78 + 4) = v82;
      _os_log_impl(&dword_222A1C000, v74, v75, "The scheduler is starting to run plugins with context=%s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x223DC7E30](v79, -1, -1);
      MEMORY[0x223DC7E30](v78, -1, -1);

      v77 = v87;
    }

    else
    {
    }

    LOBYTE(v94) = v77;
    sub_222A72574(&v94, v93, sub_222A77300, v86);

    __swift_destroy_boxed_opaque_existential_0(v96);
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v66 = sub_222B02148();
    __swift_project_value_buffer(v66, qword_280CBC458);
    v67 = sub_222B02128();
    v68 = sub_222B028D8();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_222A1C000, v67, v68, "The scheduler is skipping running plugins, the current time is outside the threshold", v69, 2u);
      MEMORY[0x223DC7E30](v69, -1, -1);
    }

    if (qword_280CB8988 != -1)
    {
      swift_once();
    }

    v70 = swift_allocObject();
    v70[2] = a2;
    v70[3] = v91;
    v70[4] = MEMORY[0x277D84F90];

    sub_222AE8044(sub_222A77EE8, v70);

    return __swift_destroy_boxed_opaque_existential_0(v96);
  }
}

uint64_t sub_222A70E64(uint64_t a1, const char *a2, uint64_t a3, int a4, uint64_t a5, void *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v27 = a8;
  v28 = a7;
  v25 = a6;
  v26 = a1;
  v24 = a4;
  v9 = sub_222B020D8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_222B02098();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280CB79E8 != -1)
  {
    swift_once();
  }

  v17 = sub_222B020C8();
  __swift_project_value_buffer(v17, qword_280CBC3F8);
  v18 = sub_222B020B8();
  sub_222B020E8();
  v23 = sub_222B029F8();
  result = sub_222B02B08();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v24 & 1) == 0)
  {
    if (a2)
    {
LABEL_11:

      sub_222B02118();

      if ((*(v10 + 88))(v12, v9) == *MEMORY[0x277D85B00])
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v10 + 8))(v12, v9);
        v20 = "";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = sub_222B02078();
      _os_signpost_emit_with_name_impl(&dword_222A1C000, v18, v23, v22, a2, v20, v21, 2u);
      MEMORY[0x223DC7E30](v21, -1, -1);
LABEL_15:

      (*(v14 + 8))(v16, v13);
      __swift_project_boxed_opaque_existential_1(v25, v25[3]);
      sub_222A7B5D0();
      return v28(v26);
    }

    __break(1u);
  }

  if (a2 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a2 & 0xFFFFF800) != 0xD800)
  {
    if (a2 >> 16 <= 0x10)
    {
      a2 = &v29;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_222A7116C(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = sub_222B020D8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222B02098();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280CB79E8 != -1)
  {
    swift_once();
  }

  v13 = sub_222B020C8();
  __swift_project_value_buffer(v13, qword_280CBC3F8);
  v14 = sub_222B020B8();
  sub_222B020E8();
  v19 = sub_222B029F8();
  result = sub_222B02B08();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_222B02118();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_222B02078();
      _os_signpost_emit_with_name_impl(&dword_222A1C000, v14, v19, v18, a1, v16, v17, 2u);
      MEMORY[0x223DC7E30](v17, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_222A71448(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v88 = a4;
  v82 = a9;
  v16 = sub_222B021D8();
  v86 = *(v16 - 8);
  v87 = v16;
  MEMORY[0x28223BE20](v16);
  v84 = &v71[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = sub_222B02238();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v19 = &v71[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_222B01748();
  MEMORY[0x28223BE20](v20);
  v23 = &v71[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3 >> 62)
  {
    v79 = v21;
    v68 = sub_222B02DC8();
    v21 = v79;
    if (v68 > a1)
    {
LABEL_3:
      v79 = v21;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v78 = a2;
        v77 = a6;
        v76 = a5;
        if ((a3 & 0xC000000000000001) != 0)
        {
          v24 = a7;
          v80 = MEMORY[0x223DC6F00](a1, a3);
LABEL_8:
          v25 = *(Strong + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceLowPowerModeDetector + 24);
          v26 = *(Strong + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceLowPowerModeDetector + 32);
          __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceLowPowerModeDetector), v25);
          if ((*(v26 + 8))(v25, v26))
          {
            v27 = v24;
            if (qword_280CBA628 != -1)
            {
              swift_once();
            }

            v28 = sub_222B02148();
            __swift_project_value_buffer(v28, qword_280CBC458);
            v29 = v80;

            v30 = sub_222B02128();
            v31 = sub_222B028D8();

            if (os_log_type_enabled(v30, v31))
            {
              v32 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              aBlock[0] = v33;
              *v32 = 136315394;
              v34 = [*(v29 + 32) bundleURL];
              sub_222B01718();

              v35 = sub_222B01698();
              v37 = v36;
              (*(v79 + 8))(v23, v20);
              v38 = sub_222A230FC(v35, v37, aBlock);

              *(v32 + 4) = v38;
              *(v32 + 12) = 2048;
              *(v32 + 14) = a1;
              _os_log_impl(&dword_222A1C000, v30, v31, "Stopping SiriPrivateLearningAnalytics plugin (%s) run from index %ld - device is in low power mode", v32, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v33);
              MEMORY[0x223DC7E30](v33, -1, -1);
              MEMORY[0x223DC7E30](v32, -1, -1);
            }

            v39 = v77;
            v88();
            v40 = v78;
            if (qword_280CB8988 != -1)
            {
              swift_once();
            }

            v41 = swift_allocObject();
            v41[2] = v39;
            v41[3] = v27;
            v41[4] = v40;

            sub_222AE8044(sub_222A77EE8, v41);
          }

          else
          {
            v75 = v24;
            if (qword_280CBA628 != -1)
            {
              swift_once();
            }

            v47 = sub_222B02148();
            __swift_project_value_buffer(v47, qword_280CBC458);
            v48 = v80;

            v49 = sub_222B02128();
            v50 = sub_222B028C8();

            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v73 = v51;
              v74 = swift_slowAlloc();
              aBlock[0] = v74;
              *v51 = 136315138;
              v52 = [*(v48 + 32) bundleURL];
              v72 = v50;
              v53 = v52;
              sub_222B01718();

              v54 = sub_222B01698();
              v56 = v55;
              (*(v79 + 8))(v23, v20);
              v57 = sub_222A230FC(v54, v56, aBlock);

              v58 = v73;
              *(v73 + 1) = v57;
              v59 = v58;
              _os_log_impl(&dword_222A1C000, v49, v72, "Starting plugin run for %s", v58, 0xCu);
              v60 = v74;
              __swift_destroy_boxed_opaque_existential_0(v74);
              MEMORY[0x223DC7E30](v60, -1, -1);
              MEMORY[0x223DC7E30](v59, -1, -1);
            }

            v61 = v78;
            v79 = *(Strong + 16);
            v62 = swift_allocObject();
            *(v62 + 16) = v48;
            *(v62 + 24) = v82;
            *(v62 + 32) = v61;
            *(v62 + 40) = a3;
            v63 = v76;
            *(v62 + 48) = v88;
            *(v62 + 56) = v63;
            v64 = v75;
            *(v62 + 64) = v77;
            *(v62 + 72) = v64;
            *(v62 + 80) = a8;
            *(v62 + 88) = a1;
            aBlock[4] = sub_222A7787C;
            aBlock[5] = v62;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_222AD9FB4;
            aBlock[3] = &block_descriptor_6;
            v65 = _Block_copy(aBlock);

            sub_222B02208();
            v89 = MEMORY[0x277D84F90];
            sub_222A77D34(qword_280CBA240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
            sub_222A77D7C(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
            v66 = v84;
            v67 = v87;
            sub_222B02BB8();
            MEMORY[0x223DC6BE0](0, v19, v66, v65);
            _Block_release(v65);

            (*(v86 + 8))(v66, v67);
            (*(v83 + 8))(v19, v85);
          }
        }

        if (a1 < 0)
        {
          __break(1u);
        }

        else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
        {
          v24 = a7;
          v80 = *(a3 + 8 * a1 + 32);

          goto LABEL_8;
        }

        __break(1u);
      }

      else if (qword_280CBA628 == -1)
      {
LABEL_17:
        v42 = sub_222B02148();
        __swift_project_value_buffer(v42, qword_280CBC458);
        v43 = sub_222B02128();
        v44 = sub_222B028E8();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_222A1C000, v43, v44, "The scheduler was deallocated, cancelling the execution of plugins", v45, 2u);
          MEMORY[0x223DC7E30](v45, -1, -1);
        }

        v88();
        if (qword_280CB8988 != -1)
        {
          swift_once();
        }

        v46 = swift_allocObject();
        v46[2] = a6;
        v46[3] = a7;
        v46[4] = a2;

        sub_222AE8044(sub_222A77EE8, v46);
      }

      swift_once();
      goto LABEL_17;
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    goto LABEL_3;
  }

  v88();
  if (qword_280CB8988 != -1)
  {
    swift_once();
  }

  v69 = swift_allocObject();
  v69[2] = a6;
  v69[3] = a7;
  v69[4] = a2;

  sub_222AE8044(sub_222A77EE8, v69);
}

uint64_t sub_222A71F10(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v23 = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  *(v18 + 64) = a8;
  *(v18 + 72) = a9;
  *(v18 + 80) = a2;
  *(v18 + 88) = a10;
  v21 = *(v17 + 16);

  v21(&v23, sub_222A77910, v18, ObjectType, v17);
}

uint64_t sub_222A72054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v58 = a7;
  v59 = a8;
  v56 = a5;
  v57 = a6;
  v55 = a4;
  v60 = a3;
  v13 = sub_222B01748();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v18 = *(a1 + 8);
  v20 = &off_2784BA000;
  v21 = &unk_280CBA000;
  v61 = v15;
  if (!v18)
  {
    goto LABEL_6;
  }

  v54 = v19;
  if (qword_280CBA628 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v22 = sub_222B02148();
    __swift_project_value_buffer(v22, qword_280CBC458);

    v23 = sub_222B02128();
    v24 = sub_222B028E8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v62 = v14;
      v27 = v26;
      v64 = v26;
      *v25 = 136315394;
      v28 = [*(a2 + 32) v20[255]];
      sub_222B01718();

      v29 = sub_222B01698();
      v31 = v30;
      (*(v62 + 8))(v17, v61);
      v32 = sub_222A230FC(v29, v31, &v64);

      *(v25 + 4) = v32;
      *(v25 + 12) = 2080;
      v19 = v54;
      v63[0] = v54;
      v63[1] = v18;

      v33 = sub_222B023D8();
      v35 = sub_222A230FC(v33, v34, &v64);

      *(v25 + 14) = v35;
      v20 = &off_2784BA000;
      _os_log_impl(&dword_222A1C000, v23, v24, "Error running plugin. Bundle: %s; Error: %s", v25, 0x16u);
      swift_arrayDestroy();
      v36 = v27;
      v14 = v62;
      MEMORY[0x223DC7E30](v36, -1, -1);
      v37 = v25;
      v13 = v61;
      MEMORY[0x223DC7E30](v37, -1, -1);

      v21 = &unk_280CBA000;
    }

    else
    {

      v21 = &unk_280CBA000;
      v19 = v54;
    }

LABEL_6:
    v38 = v20[255];
    v54 = *(a2 + 32);
    v39 = [v54 v38];
    sub_222B01718();

    v40 = sub_222B01698();
    v42 = v41;
    v20 = *(v14 + 8);
    v62 = v14 + 8;
    (v20)(v17, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CAA0, &unk_222B08CD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222B05250;
    *(inited + 32) = v40;
    *(inited + 40) = v42;
    *(inited + 48) = v19;
    *(inited + 56) = v18;
    v63[0] = v60;

    sub_222A96CE4(inited);
    v18 = v63[0];
    if (v21[197] != -1)
    {
      swift_once();
    }

    v14 = a11;
    v44 = sub_222B02148();
    __swift_project_value_buffer(v44, qword_280CBC458);

    v45 = sub_222B02128();
    v13 = sub_222B028C8();

    if (os_log_type_enabled(v45, v13))
    {
      v46 = swift_slowAlloc();
      a2 = swift_slowAlloc();
      v63[0] = a2;
      *v46 = 136315138;
      v47 = [v54 bundleURL];
      sub_222B01718();

      v48 = sub_222B01698();
      v50 = v49;
      (v20)(v17, v61);
      v51 = sub_222A230FC(v48, v50, v63);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_222A1C000, v45, v13, "Finished plugin run for %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a2);
      MEMORY[0x223DC7E30](a2, -1, -1);
      MEMORY[0x223DC7E30](v46, -1, -1);
    }

    if (!__OFADD__(a11, 1))
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  sub_222A71448(a11 + 1, v18, v55, v56, v57, v58, v59, a9, a10);
}

uint64_t sub_222A72574(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a2;
  v9 = sub_222B02098();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = swift_allocObject();
  *(v14 + 16) = v5;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = v13;
  v15 = qword_280CB79E8;

  if (v15 != -1)
  {
    swift_once();
  }

  if (v13 == 3)
  {
    v16 = 10;
  }

  else
  {
    v16 = 16;
  }

  if (v13 == 3)
  {
    v17 = "runPlugins";
  }

  else
  {
    v17 = "runPluginsEvents";
  }

  v18 = sub_222B020C8();
  __swift_project_value_buffer(v18, qword_280CBC3F8);
  sub_222B02088();
  v19 = sub_222A6EF34(v17, v16, 2, v12);
  (*(v10 + 8))(v12, v9);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v16;
  *(v20 + 32) = 2;
  *(v20 + 40) = v19;
  v21 = swift_allocObject();
  swift_weakInit();

  sub_222A71448(0, MEMORY[0x277D84F90], v24, sub_222A7786C, v20, sub_222A7785C, v14, v21, v13);
}