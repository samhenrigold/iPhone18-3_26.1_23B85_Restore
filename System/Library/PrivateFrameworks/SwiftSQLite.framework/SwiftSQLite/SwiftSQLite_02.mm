unint64_t sub_26C08FEBC()
{
  result = qword_2804794B0;
  if (!qword_2804794B0)
  {
    type metadata accessor for Statement();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804794B0);
  }

  return result;
}

unint64_t sub_26C08FF10(uint64_t a1)
{
  result = sub_26C08FEBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26C08FF3C()
{
  result = qword_2804794B8;
  if (!qword_2804794B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804794C0, &qword_26C0ACD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804794B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Cursor(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Cursor(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t + infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  return sub_26C06F45C(a1, a2, &qword_280479410, &qword_26C0AC868, 31868, sub_26C085EB8);
}

{
  return sub_26C06F45C(a1, a2, &qword_280479430, &qword_26C0AC888, 31868, sub_26C085F08);
}

uint64_t + infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  return sub_26C090278(a1, a2, a3, &qword_280479410, &qword_26C0AC868, sub_26C085EB8);
}

{
  return sub_26C090278(a1, a2, a3, &qword_280479430, &qword_26C0AC888, sub_26C085F08);
}

uint64_t + infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479430, &qword_26C0AC888);
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v5;
  v13[1] = v4;
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479410, &qword_26C0AC868);
  v12[4] = &protocol witness table for Expression<A>;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v13, inited + 32);
  sub_26C06B6BC(v12, inited + 72);

  sub_26C085F08(inited, 1, 31868, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479410, &qword_26C0AC868);
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v5;
  v13[1] = v4;
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479430, &qword_26C0AC888);
  v12[4] = &protocol witness table for Expression<A>;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v13, inited + 32);
  sub_26C06B6BC(v12, inited + 72);

  sub_26C085F08(inited, 1, 31868, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_26C090278(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v15[4] = &protocol witness table for Expression<A>;
  v15[0] = v10;
  v15[1] = v9;
  v15[2] = v11;
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = &protocol witness table for String;
  v14[0] = a2;
  v14[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v15, inited + 32);
  sub_26C06B6BC(v14, inited + 72);

  a6(inited, 1, 31868, 0xE200000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t + infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C090438(a1, a2, a3, a4, 0, x8_0);
}

{
  return sub_26C09154C(a1, a2, a3, a4, 0, x8_0);
}

uint64_t + infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C090518(a1, a2, a3, a4, 0, x8_0);
}

{
  return sub_26C0907FC(a1, a2, a3, a4, 0, x8_0);
}

uint64_t - infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C090438(a1, a2, a3, a4, 1, x8_0);
}

{
  return sub_26C09154C(a1, a2, a3, a4, 1, x8_0);
}

uint64_t - infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C090518(a1, a2, a3, a4, 1, x8_0);
}

{
  return sub_26C0907FC(a1, a2, a3, a4, 1, x8_0);
}

uint64_t * infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C090438(a1, a2, a3, a4, 5, x8_0);
}

{
  return sub_26C09154C(a1, a2, a3, a4, 5, x8_0);
}

uint64_t * infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C090518(a1, a2, a3, a4, 5, x8_0);
}

{
  return sub_26C0907FC(a1, a2, a3, a4, 5, x8_0);
}

uint64_t / infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C090438(a1, a2, a3, a4, 6, x8_0);
}

{
  return sub_26C09154C(a1, a2, a3, a4, 6, x8_0);
}

uint64_t sub_26C090438@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v18 = type metadata accessor for Expression(0, a3, a3, a4);
  v19 = &protocol witness table for Expression<A>;
  v17[0] = v10;
  v17[1] = v9;
  v17[2] = v11;
  v16[3] = v18;
  v16[4] = &protocol witness table for Expression<A>;
  v16[0] = v13;
  v16[1] = v12;
  v16[2] = v14;

  sub_26C06E7EC(v17, v16, 1, a5, a3, a6);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t / infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C090518(a1, a2, a3, a4, 6, x8_0);
}

{
  return sub_26C0907FC(a1, a2, a3, a4, 6, x8_0);
}

uint64_t sub_26C090518@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v18[3] = type metadata accessor for Expression(0, a3, a3, a4);
  v18[4] = &protocol witness table for Expression<A>;
  v18[0] = v12;
  v18[1] = v11;
  v18[2] = v13;
  v14 = *(a4 + 8);
  v17[3] = a3;
  v17[4] = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);

  sub_26C06E7EC(v18, v17, 1, a5, a3, a6);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_26C090614@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W5>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v13 = sub_26C0ABAF0();
  v21[3] = type metadata accessor for Expression(0, v13, v14, v15);
  v21[4] = &protocol witness table for Expression<A>;
  v21[0] = v8;
  v21[1] = v7;
  v21[2] = v9;
  v20[3] = type metadata accessor for Expression(0, a3, v16, v17);
  v20[4] = &protocol witness table for Expression<A>;
  v20[0] = v11;
  v20[1] = v10;
  v20[2] = v12;

  sub_26C06E7EC(v21, v20, 1, a4, v13, a5);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_26C090710@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X5>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v12 = sub_26C0ABAF0();
  v18 = type metadata accessor for Expression(0, v12, v13, v14);
  v19 = &protocol witness table for Expression<A>;
  v17[0] = v7;
  v17[1] = v6;
  v17[2] = v8;
  v16[3] = v18;
  v16[4] = &protocol witness table for Expression<A>;
  v16[0] = v10;
  v16[1] = v9;
  v16[2] = v11;

  sub_26C06E7EC(v17, v16, 1, a3, v12, a4);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_26C0907FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = sub_26C0ABAF0();
  v21[3] = type metadata accessor for Expression(0, v14, v15, v16);
  v21[4] = &protocol witness table for Expression<A>;
  v21[0] = v12;
  v21[1] = v11;
  v21[2] = v13;
  v17 = *(a4 + 8);
  v20[3] = a3;
  v20[4] = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);

  sub_26C06E7EC(v21, v20, 1, a5, v14, a6);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t % infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C0909A8(a1, a2, a3, a4, 7, a5);
}

{
  return sub_26C0919CC(a1, a2, a3, a4, 7, a5);
}

uint64_t % infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C06D4A0(a1, a2, a3, a4, 7, a5);
}

{
  return sub_26C090C78(a1, a2, a3, a4, 7, a5);
}

uint64_t << infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C0909A8(a1, a2, a3, a4, 8, a5);
}

{
  return sub_26C0919CC(a1, a2, a3, a4, 8, a5);
}

uint64_t << infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C06D4A0(a1, a2, a3, a4, 8, a5);
}

{
  return sub_26C090C78(a1, a2, a3, a4, 8, a5);
}

uint64_t >> infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C0909A8(a1, a2, a3, a4, 9, a5);
}

{
  return sub_26C0919CC(a1, a2, a3, a4, 9, a5);
}

uint64_t >> infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C06D4A0(a1, a2, a3, a4, 9, a5);
}

{
  return sub_26C090C78(a1, a2, a3, a4, 9, a5);
}

uint64_t & infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C0909A8(a1, a2, a3, a4, 10, a5);
}

{
  return sub_26C0919CC(a1, a2, a3, a4, 10, a5);
}

uint64_t | infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C0909A8(a1, a2, a3, a4, 11, a5);
}

{
  return sub_26C0919CC(a1, a2, a3, a4, 11, a5);
}

uint64_t sub_26C0909A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v18 = type metadata accessor for Expression(0, a3, a3, a4);
  v19 = &protocol witness table for Expression<A>;
  v17[0] = v10;
  v17[1] = v9;
  v17[2] = v11;
  v16[3] = v18;
  v16[4] = &protocol witness table for Expression<A>;
  v16[0] = v13;
  v16[1] = v12;
  v16[2] = v14;

  sub_26C06E7EC(v17, v16, 1, a5, a3, a6);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t | infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C06D4A0(a1, a2, a3, a4, 11, a5);
}

{
  return sub_26C090C78(a1, a2, a3, a4, 11, a5);
}

uint64_t sub_26C090A90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W4>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v13 = sub_26C0ABAF0();
  v21[3] = type metadata accessor for Expression(0, v13, v14, v15);
  v21[4] = &protocol witness table for Expression<A>;
  v21[0] = v8;
  v21[1] = v7;
  v21[2] = v9;
  v20[3] = type metadata accessor for Expression(0, a3, v16, v17);
  v20[4] = &protocol witness table for Expression<A>;
  v20[0] = v11;
  v20[1] = v10;
  v20[2] = v12;

  sub_26C06E7EC(v21, v20, 1, a4, v13, a5);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_26C090B8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v12 = sub_26C0ABAF0();
  v18 = type metadata accessor for Expression(0, v12, v13, v14);
  v19 = &protocol witness table for Expression<A>;
  v17[0] = v7;
  v17[1] = v6;
  v17[2] = v8;
  v16[3] = v18;
  v16[4] = &protocol witness table for Expression<A>;
  v16[0] = v10;
  v16[1] = v9;
  v16[2] = v11;

  sub_26C06E7EC(v17, v16, 1, a3, v12, a4);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_26C090C78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = sub_26C0ABAF0();
  v21[3] = type metadata accessor for Expression(0, v14, v15, v16);
  v21[4] = &protocol witness table for Expression<A>;
  v21[0] = v12;
  v21[1] = v11;
  v21[2] = v13;
  v17 = *(a4 + 8);
  v20[3] = a3;
  v20[4] = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);

  sub_26C06E7EC(v21, v20, 1, a5, v14, a6);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t ^ infix<A>(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return sub_26C090E80(a1, a2, a3, a4, & infix<A>(_:_:), ~ prefix<A>(_:), | infix<A>(_:_:), & infix<A>(_:_:));
}

{
  return sub_26C090E80(a1, a2, a3, a4, & infix<A>(_:_:), ~ prefix<A>(_:), | infix<A>(_:_:), & infix<A>(_:_:));
}

{
  return sub_26C090E80(a1, a2, a3, a4, & infix<A>(_:_:), ~ prefix<A>(_:), | infix<A>(_:_:), & infix<A>(_:_:));
}

{
  return sub_26C090E80(a1, a2, a3, a4, & infix<A>(_:_:), ~ prefix<A>(_:), | infix<A>(_:_:), & infix<A>(_:_:));
}

uint64_t ^ infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_26C091074(a1, a2, a3, a4, & infix<A>(_:_:), ~ prefix<A>(_:), | infix<A>(_:_:), & infix<A>(_:_:));
}

{
  return sub_26C091074(a1, a2, a3, a4, & infix<A>(_:_:), ~ prefix<A>(_:), | infix<A>(_:_:), & infix<A>(_:_:));
}

uint64_t sub_26C090E80(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *, uint64_t *, uint64_t, uint64_t), void (*a6)(uint64_t *__return_ptr, uint64_t *, uint64_t), void (*a7)(uint64_t *__return_ptr, uint64_t *, void *, uint64_t), void (*a8)(uint64_t *, uint64_t *, uint64_t))
{
  v11 = a1[1];
  v12 = a1[2];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v29 = *a1;
  v10 = v29;
  v30 = v11;
  v31 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  a5(&v26, &v29, &v23, a3, a4);
  v23 = v26;
  v24 = v27;
  v25 = v28;
  a6(&v29, &v23, a3);

  v26 = v29;
  v27 = v30;
  v28 = v31;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v19[0] = v13;
  v19[1] = v14;
  v19[2] = v15;
  a7(&v23, &v20, v19, a3);
  v20 = v23;
  v21 = v24;
  v22 = v25;
  a8(&v26, &v20, a3);
}

uint64_t sub_26C091074(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *), void (*a6)(uint64_t *__return_ptr, uint64_t *, uint64_t), void (*a7)(uint64_t *__return_ptr, uint64_t *, uint64_t, uint64_t, uint64_t), void (*a8)(uint64_t *, uint64_t *, uint64_t))
{
  v13 = a1[1];
  v15 = a1[2];
  v27 = *a1;
  v14 = v27;
  v28 = v13;
  v29 = v15;
  a5(&v24, &v27);
  v21 = v24;
  v22 = v25;
  v23 = v26;
  a6(&v27, &v21, a3);

  v24 = v27;
  v25 = v28;
  v26 = v29;
  v18 = v14;
  v19 = v13;
  v20 = v15;
  a7(&v21, &v18, a2, a3, a4);
  v18 = v21;
  v19 = v22;
  v20 = v23;
  a8(&v24, &v18, a3);
}

uint64_t sub_26C0911AC@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = sub_26C06E8B8(a2);
  sub_26C06E288(a1, v5, v6, a3);
}

uint64_t + infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  return sub_26C0913C0(a1, a2, a3, &qword_280479410, &qword_26C0AC868, sub_26C085EB8);
}

{
  return sub_26C0913C0(a1, a2, a3, &qword_280479430, &qword_26C0AC888, sub_26C085F08);
}

uint64_t sub_26C0913C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v8 = *a3;
  v7 = a3[1];
  v9 = a3[2];
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = &protocol witness table for String;
  v13[0] = a1;
  v13[1] = a2;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12[4] = &protocol witness table for Expression<A>;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v13, inited + 32);
  sub_26C06B6BC(v12, inited + 72);

  a6(inited, 1, 31868, 0xE200000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t + infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C091648(a1, a2, a3, a4, 0, x8_0);
}

{
  return sub_26C091740(a1, a2, a3, a4, 0, x8_0);
}

uint64_t - infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C091648(a1, a2, a3, a4, 1, x8_0);
}

{
  return sub_26C091740(a1, a2, a3, a4, 1, x8_0);
}

uint64_t * infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C091648(a1, a2, a3, a4, 5, x8_0);
}

{
  return sub_26C091740(a1, a2, a3, a4, 5, x8_0);
}

uint64_t sub_26C09154C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v19[3] = type metadata accessor for Expression(0, a3, a3, a4);
  v19[4] = &protocol witness table for Expression<A>;
  v19[0] = v9;
  v19[1] = v8;
  v19[2] = v10;
  v14 = sub_26C0ABAF0();
  v18[3] = type metadata accessor for Expression(0, v14, v15, v16);
  v18[4] = &protocol witness table for Expression<A>;
  v18[0] = v12;
  v18[1] = v11;
  v18[2] = v13;

  sub_26C06E7EC(v19, v18, 1, a5, v14, a6);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t / infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C091648(a1, a2, a3, a4, 6, x8_0);
}

{
  return sub_26C091740(a1, a2, a3, a4, 6, x8_0);
}

uint64_t sub_26C091648@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v13 = *(a4 + 8);
  v19[3] = a3;
  v19[4] = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v18[3] = type metadata accessor for Expression(0, a3, v15, v16);
  v18[4] = &protocol witness table for Expression<A>;
  v18[0] = v11;
  v18[1] = v10;
  v18[2] = v12;

  sub_26C06E7EC(v19, v18, 1, a5, a3, a6);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_26C091740@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v13 = *(a4 + 8);
  v20[3] = a3;
  v20[4] = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v15 = sub_26C0ABAF0();
  v19[3] = type metadata accessor for Expression(0, v15, v16, v17);
  v19[4] = &protocol witness table for Expression<A>;
  v19[0] = v11;
  v19[1] = v10;
  v19[2] = v12;

  sub_26C06E7EC(v20, v19, 1, a5, v15, a6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t - prefix<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v10[3] = type metadata accessor for Expression(0, a2, a3, a4);
  v10[4] = &protocol witness table for Expression<A>;
  v10[0] = v7;
  v10[1] = v6;
  v10[2] = v8;

  sub_26C0911AC(v10, 1, a5);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t - prefix<A>(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = sub_26C0ABAF0();
  v10[3] = type metadata accessor for Expression(0, v6, v7, v8);
  v10[4] = &protocol witness table for Expression<A>;
  v10[0] = v4;
  v10[1] = v3;
  v10[2] = v5;

  sub_26C0911AC(v10, 1, a2);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t % infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C091AC8(a1, a2, a3, a4, 7, a5);
}

{
  return sub_26C091BC0(a1, a2, a3, a4, 7, a5);
}

uint64_t << infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C091AC8(a1, a2, a3, a4, 8, a5);
}

{
  return sub_26C091BC0(a1, a2, a3, a4, 8, a5);
}

uint64_t >> infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C091AC8(a1, a2, a3, a4, 9, a5);
}

{
  return sub_26C091BC0(a1, a2, a3, a4, 9, a5);
}

uint64_t & infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C091AC8(a1, a2, a3, a4, 10, a5);
}

{
  return sub_26C091BC0(a1, a2, a3, a4, 10, a5);
}

uint64_t sub_26C0919CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v19[3] = type metadata accessor for Expression(0, a3, a3, a4);
  v19[4] = &protocol witness table for Expression<A>;
  v19[0] = v9;
  v19[1] = v8;
  v19[2] = v10;
  v14 = sub_26C0ABAF0();
  v18[3] = type metadata accessor for Expression(0, v14, v15, v16);
  v18[4] = &protocol witness table for Expression<A>;
  v18[0] = v12;
  v18[1] = v11;
  v18[2] = v13;

  sub_26C06E7EC(v19, v18, 1, a5, v14, a6);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t | infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C091AC8(a1, a2, a3, a4, 11, a5);
}

{
  return sub_26C091BC0(a1, a2, a3, a4, 11, a5);
}

uint64_t sub_26C091AC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v13 = *(a4 + 8);
  v19[3] = a3;
  v19[4] = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v18[3] = type metadata accessor for Expression(0, a3, v15, v16);
  v18[4] = &protocol witness table for Expression<A>;
  v18[0] = v11;
  v18[1] = v10;
  v18[2] = v12;

  sub_26C06E7EC(v19, v18, 1, a5, a3, a6);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_26C091BC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v13 = *(a4 + 8);
  v20[3] = a3;
  v20[4] = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v15 = sub_26C0ABAF0();
  v19[3] = type metadata accessor for Expression(0, v15, v16, v17);
  v19[4] = &protocol witness table for Expression<A>;
  v19[0] = v11;
  v19[1] = v10;
  v19[2] = v12;

  sub_26C06E7EC(v20, v19, 1, a5, v15, a6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t ~ prefix<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v10[3] = type metadata accessor for Expression(0, a2, a3, a4);
  v10[4] = &protocol witness table for Expression<A>;
  v10[0] = v7;
  v10[1] = v6;
  v10[2] = v8;

  sub_26C0911AC(v10, 12, a5);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t ~ prefix<A>(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = sub_26C0ABAF0();
  v10[3] = type metadata accessor for Expression(0, v6, v7, v8);
  v10[4] = &protocol witness table for Expression<A>;
  v10[0] = v4;
  v10[1] = v3;
  v10[2] = v5;

  sub_26C0911AC(v10, 12, a2);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t ^ infix<A>(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return sub_26C091EE0(a1, a2, a3, a4, & infix<A>(_:_:), ~ prefix<A>(_:), | infix<A>(_:_:), & infix<A>(_:_:));
}

{
  return sub_26C091EE0(a1, a2, a3, a4, & infix<A>(_:_:), ~ prefix<A>(_:), | infix<A>(_:_:), & infix<A>(_:_:));
}

uint64_t sub_26C091EE0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t *), void (*a6)(uint64_t *__return_ptr, uint64_t *, uint64_t), void (*a7)(uint64_t *__return_ptr, uint64_t, uint64_t *, uint64_t, uint64_t), void (*a8)(uint64_t *, uint64_t *, uint64_t))
{
  v13 = a2[1];
  v15 = a2[2];
  v27 = *a2;
  v14 = v27;
  v28 = v13;
  v29 = v15;
  a5(&v24, a1, &v27);
  v21 = v24;
  v22 = v25;
  v23 = v26;
  a6(&v27, &v21, a3);

  v24 = v27;
  v25 = v28;
  v26 = v29;
  v18 = v14;
  v19 = v13;
  v20 = v15;
  a7(&v21, a1, &v18, a3, a4);
  v18 = v21;
  v19 = v22;
  v20 = v23;
  a8(&v24, &v18, a3);
}

uint64_t == infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C0932B4(a1, a2, a3, a4, 61, 0xE100000000000000, x8_0);
}

{
  return sub_26C09275C(a1, a2, a3, a4, 61, 0xE100000000000000, 21321, x8_0, 0xE200000000000000);
}

uint64_t === infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C06DFDC(a1, a2, a3, a4, 21321, 0xE200000000000000, x8_0);
}

{
  return sub_26C0922B4(a1, a2, a3, a4, 21321, 0xE200000000000000, 21321, x8_0, 0xE200000000000000);
}

uint64_t === infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C0932B4(a1, a2, a3, a4, 21321, 0xE200000000000000, x8_0);
}

{
  return sub_26C09275C(a1, a2, a3, a4, 21321, 0xE200000000000000, 21321, x8_0, 0xE200000000000000);
}

uint64_t != infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C0932B4(a1, a2, a3, a4, 15649, 0xE200000000000000, x8_0);
}

{
  return sub_26C09275C(a1, a2, a3, a4, 15649, 0xE200000000000000, 0x544F4E205349, x8_0, 0xE600000000000000);
}

uint64_t !== infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C06DFDC(a1, a2, a3, a4, 0x544F4E205349, 0xE600000000000000, x8_0);
}

{
  return sub_26C0922B4(a1, a2, a3, a4, 0x544F4E205349, 0xE600000000000000, 0x544F4E205349, x8_0, 0xE600000000000000);
}

uint64_t sub_26C0922B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  v38 = a6;
  v39 = a7;
  v37 = a5;
  v41 = a4;
  v42 = a8;
  v12 = sub_26C0ABAF0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v36 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = *(a3 - 8);
  MEMORY[0x28223BE20](v16);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[1];
  v40 = *a1;
  v23 = a1[2];
  (*(v13 + 16))(v18, a2, v12);
  if ((*(v19 + 48))(v18, 1, a3) == 1)
  {
    (*(v13 + 8))(v18, v12);
    v26 = type metadata accessor for Expression(0, v12, v24, v25);
    v49 = v26;
    v50 = &protocol witness table for Expression<A>;
    v46 = v40;
    v47 = v22;
    v48 = v23;
    v27 = v36;
    (*(v19 + 56))(v36, 1, 1, a3);
    v44 = v26;
    v45 = &protocol witness table for Expression<A>;

    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    ExpressionType<>.init(value:)(v27, v26, WitnessTable, v41, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    sub_26C06B6BC(&v46, inited + 32);
    sub_26C06B6BC(v43, inited + 72);
    sub_26C085EE0(inited, 1, v39, a9, v42);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
  }

  else
  {
    (*(v19 + 32))(v21, v18, a3);
    v49 = type metadata accessor for Expression(0, v12, v30, v31);
    v50 = &protocol witness table for Expression<A>;
    v46 = v40;
    v47 = v22;
    v48 = v23;
    v32 = *(v41 + 8);
    v44 = a3;
    v45 = v32;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
    (*(v19 + 16))(boxed_opaque_existential_1, v21, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_26C0AC580;
    sub_26C06B6BC(&v46, v34 + 32);
    sub_26C06B6BC(v43, v34 + 72);

    sub_26C085EE0(v34, 1, v37, v38, v42);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    (*(v19 + 8))(v21, a3);
  }

  __swift_destroy_boxed_opaque_existential_1(v43);
  return __swift_destroy_boxed_opaque_existential_1(&v46);
}

uint64_t !== infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C0932B4(a1, a2, a3, a4, 0x544F4E205349, 0xE600000000000000, x8_0);
}

{
  return sub_26C09275C(a1, a2, a3, a4, 0x544F4E205349, 0xE600000000000000, 0x544F4E205349, x8_0, 0xE600000000000000);
}

uint64_t sub_26C09275C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  v37 = a6;
  v38 = a7;
  v36 = a5;
  v40 = a4;
  v42 = a8;
  v12 = sub_26C0ABAF0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v36 - v18;
  v20 = *(a3 - 8);
  MEMORY[0x28223BE20](v17);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2[1];
  v39 = *a2;
  v41 = v23;
  v24 = a2[2];
  (*(v13 + 16))(v19, a1, v12);
  if ((*(v20 + 48))(v19, 1, a3) == 1)
  {
    (*(v13 + 8))(v19, v12);
    v27 = type metadata accessor for Expression(0, v12, v25, v26);
    (*(v20 + 56))(v16, 1, 1, a3);
    v49 = v27;
    v50 = &protocol witness table for Expression<A>;
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    ExpressionType<>.init(value:)(v16, v27, WitnessTable, v40, v48);
    v46 = v27;
    v47 = &protocol witness table for Expression<A>;
    v43 = v39;
    v44 = v41;
    v45 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    sub_26C06B6BC(v48, inited + 32);
    sub_26C06B6BC(&v43, inited + 72);

    sub_26C085EE0(inited, 1, v38, a9, v42);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
  }

  else
  {
    (*(v20 + 32))(v22, v19, a3);
    v30 = *(v40 + 8);
    v49 = a3;
    v50 = v30;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
    (*(v20 + 16))(boxed_opaque_existential_1, v22, a3);
    v46 = type metadata accessor for Expression(0, v12, v32, v33);
    v47 = &protocol witness table for Expression<A>;
    v43 = v39;
    v44 = v41;
    v45 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_26C0AC580;
    sub_26C06B6BC(v48, v34 + 32);
    sub_26C06B6BC(&v43, v34 + 72);

    sub_26C085EE0(v34, 1, v36, v37, v42);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    (*(v20 + 8))(v22, a3);
  }

  __swift_destroy_boxed_opaque_existential_1(&v43);
  return __swift_destroy_boxed_opaque_existential_1(v48);
}

uint64_t > infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C06DFDC(a1, a2, a3, a4, 62, 0xE100000000000000, x8_0);
}

{
  return sub_26C093130(a1, a2, a3, a4, 62, 0xE100000000000000, x8_0);
}

uint64_t > infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C0932B4(a1, a2, a3, a4, 62, 0xE100000000000000, x8_0);
}

{
  return sub_26C093428(a1, a2, a3, a4, 62, 0xE100000000000000, x8_0);
}

uint64_t >= infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C06DFDC(a1, a2, a3, a4, 15678, 0xE200000000000000, x8_0);
}

{
  return sub_26C093130(a1, a2, a3, a4, 15678, 0xE200000000000000, x8_0);
}

uint64_t >= infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C0932B4(a1, a2, a3, a4, 15678, 0xE200000000000000, x8_0);
}

{
  return sub_26C093428(a1, a2, a3, a4, 15678, 0xE200000000000000, x8_0);
}

uint64_t < infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C06DFDC(a1, a2, a3, a4, 60, 0xE100000000000000, x8_0);
}

{
  return sub_26C093130(a1, a2, a3, a4, 60, 0xE100000000000000, x8_0);
}

uint64_t < infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C0932B4(a1, a2, a3, a4, 60, 0xE100000000000000, x8_0);
}

{
  return sub_26C093428(a1, a2, a3, a4, 60, 0xE100000000000000, x8_0);
}

uint64_t sub_26C092CF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v22[3] = type metadata accessor for Expression(0, a3, a3, a4);
  v22[4] = &protocol witness table for Expression<A>;
  v22[0] = v10;
  v22[1] = v9;
  v22[2] = v11;
  v15 = sub_26C0ABAF0();
  v21[3] = type metadata accessor for Expression(0, v15, v16, v17);
  v21[4] = &protocol witness table for Expression<A>;
  v21[0] = v13;
  v21[1] = v12;
  v21[2] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v22, inited + 32);
  sub_26C06B6BC(v21, inited + 72);

  sub_26C085EE0(inited, 1, a5, a6, a7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v21);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_26C092E5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v15 = sub_26C0ABAF0();
  v24[3] = type metadata accessor for Expression(0, v15, v16, v17);
  v24[4] = &protocol witness table for Expression<A>;
  v24[0] = v10;
  v24[1] = v9;
  v24[2] = v11;
  v23[3] = type metadata accessor for Expression(0, a3, v18, v19);
  v23[4] = &protocol witness table for Expression<A>;
  v23[0] = v13;
  v23[1] = v12;
  v23[2] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v24, inited + 32);
  sub_26C06B6BC(v23, inited + 72);

  sub_26C085EE0(inited, 1, a4, a5, a6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v23);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_26C092FC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v14 = sub_26C0ABAF0();
  v21 = type metadata accessor for Expression(0, v14, v15, v16);
  v22 = &protocol witness table for Expression<A>;
  v20[0] = v9;
  v20[1] = v8;
  v20[2] = v10;
  v19[3] = v21;
  v19[4] = &protocol witness table for Expression<A>;
  v19[0] = v12;
  v19[1] = v11;
  v19[2] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v20, inited + 32);
  sub_26C06B6BC(v19, inited + 72);

  sub_26C085EE0(inited, 1, a3, a4, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v19);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t <= infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C06DFDC(a1, a2, a3, a4, 15676, 0xE200000000000000, x8_0);
}

{
  return sub_26C093130(a1, a2, a3, a4, 15676, 0xE200000000000000, x8_0);
}

uint64_t sub_26C093130@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v16 = sub_26C0ABAF0();
  v24[3] = type metadata accessor for Expression(0, v16, v17, v18);
  v24[4] = &protocol witness table for Expression<A>;
  v24[0] = v14;
  v24[1] = v13;
  v24[2] = v15;
  v19 = *(a4 + 8);
  v23[3] = a3;
  v23[4] = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v24, inited + 32);
  sub_26C06B6BC(v23, inited + 72);

  sub_26C085EE0(inited, 1, a5, a6, a7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v23);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t <= infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C0932B4(a1, a2, a3, a4, 15676, 0xE200000000000000, x8_0);
}

{
  return sub_26C093428(a1, a2, a3, a4, 15676, 0xE200000000000000, x8_0);
}

uint64_t sub_26C0932B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v15 = *(a4 + 8);
  v22[3] = a3;
  v22[4] = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v21[3] = type metadata accessor for Expression(0, a3, v17, v18);
  v21[4] = &protocol witness table for Expression<A>;
  v21[0] = v13;
  v21[1] = v12;
  v21[2] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v22, inited + 32);
  sub_26C06B6BC(v21, inited + 72);

  sub_26C06E254(inited, 1, a5, a6, a7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v21);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_26C093428@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v15 = *(a4 + 8);
  v23[3] = a3;
  v23[4] = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v17 = sub_26C0ABAF0();
  v22[3] = type metadata accessor for Expression(0, v17, v18, v19);
  v22[4] = &protocol witness table for Expression<A>;
  v22[0] = v13;
  v22[1] = v12;
  v22[2] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v23, inited + 32);
  sub_26C06B6BC(v22, inited + 72);

  sub_26C085EE0(inited, 1, a5, a6, a7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v22);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

void *sub_26C0935A0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v16 = a1[2];

  sub_26C0ABB30();

  MEMORY[0x26D69A890](0xD000000000000010, 0x800000026C0AE280);
  v15 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  v11 = *(a4 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(inited + 56) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(inited + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  v11(a2, a4);
  sub_26C0AB820();
  *(inited + 96) = AssociatedTypeWitness;
  *(inited + 104) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((inited + 72));
  v11(a2, a4);
  result = sub_26C085C94(inited);
  *a5 = v8;
  a5[1] = v15;
  a5[2] = v16;
  return result;
}

void *sub_26C093764@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  sub_26C0ABB30();

  MEMORY[0x26D69A890](0x4E41203F203D3E20, 0xEA00000000002044);
  MEMORY[0x26D69A890](v7, v8);
  MEMORY[0x26D69A890](1059077152, 0xE400000000000000);
  v17 = v8;
  v18 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC5C0;
  v11 = *(a4 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(inited + 56) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(inited + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  v11(a2, a4);
  v20 = v9;

  sub_26C085C94(inited);

  sub_26C085C94(v14);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_26C0AC5C0;
  sub_26C0ABA80();
  *(v15 + 56) = AssociatedTypeWitness;
  *(v15 + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((v15 + 32));
  v11(a2, a4);
  result = sub_26C085C94(v15);
  *a5 = v18;
  a5[1] = v17;
  a5[2] = v20;
  return result;
}

void *~= infix<A>(_:_:)@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  return sub_26C093A14(a2, a3, a5, 0x3F203D3C20, x8_0, 0xE500000000000000);
}

{
  return sub_26C093A14(a2, a3, a5, 1059077152, x8_0, 0xE400000000000000);
}

{
  return sub_26C093A14(a2, a3, a5, 0x3F203D3E20, x8_0, 0xE500000000000000);
}

void *sub_26C093A14@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X7>, void *a5@<X8>, uint64_t a6)
{
  v10 = a1[2];
  v14 = *a1;
  v15 = a1[1];

  MEMORY[0x26D69A890](a4, a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC5C0;
  v12 = *(a3 + 56);
  *(inited + 56) = swift_getAssociatedTypeWitness();
  *(inited + 64) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  v12(a2, a3);
  result = sub_26C085C94(inited);
  *a5 = v14;
  a5[1] = v15;
  a5[2] = v10;
  return result;
}

uint64_t sub_26C093B6C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v17 = &protocol witness table for Expression<A>;
  v15[0] = v7;
  v15[1] = v6;
  v15[2] = v8;
  v14[3] = v16;
  v14[4] = &protocol witness table for Expression<A>;
  v14[0] = v10;
  v14[1] = v9;
  v14[2] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v15, inited + 32);
  sub_26C06B6BC(v14, inited + 72);

  a5(inited, 1, 4476481, 0xE300000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t && infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v5;
  v13[1] = v4;
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v12[4] = &protocol witness table for Expression<A>;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v13, inited + 32);
  sub_26C06B6BC(v12, inited + 72);

  sub_26C085EE0(inited, 1, 4476481, 0xE300000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v5;
  v13[1] = v4;
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
  v12[4] = &protocol witness table for Expression<A>;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v13, inited + 32);
  sub_26C06B6BC(v12, inited + 72);

  sub_26C085EE0(inited, 1, 4476481, 0xE300000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t && infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  return sub_26C093FE4(a1, a2, &qword_280479390, &qword_26C0AD880, sub_26C06E254);
}

{
  return sub_26C093FE4(a1, a2, &qword_280479398, &qword_26C0AC610, sub_26C085EE0);
}

uint64_t sub_26C093FE4(uint64_t *a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v8;
  v13[1] = v7;
  v13[2] = v9;
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12[3] = MEMORY[0x277D839B0];
  v12[4] = &protocol witness table for Bool;
  LOBYTE(v12[0]) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v13, inited + 32);
  sub_26C06B6BC(v12, inited + 72);

  a5(inited, 1, 4476481, 0xE300000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t && infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  return sub_26C09416C(a1, a2, &qword_280479390, &qword_26C0AD880, sub_26C06E254);
}

{
  return sub_26C09416C(a1, a2, &qword_280479398, &qword_26C0AC610, sub_26C085EE0);
}

uint64_t sub_26C09416C(char a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v12[3] = MEMORY[0x277D839B0];
  v12[4] = &protocol witness table for Bool;
  LOBYTE(v12[0]) = a1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11[4] = &protocol witness table for Expression<A>;
  v11[0] = v7;
  v11[1] = v6;
  v11[2] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v12, inited + 32);
  sub_26C06B6BC(v11, inited + 72);

  a5(inited, 1, 4476481, 0xE300000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_26C0942A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_26C08D8D8(a1);
  sub_26C06E254(v7, 1, a2, a3, a4);
}

uint64_t || infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  return sub_26C06F45C(a1, a2, &qword_280479390, &qword_26C0AD880, 21071, sub_26C06E254);
}

{
  return sub_26C06F45C(a1, a2, &qword_280479398, &qword_26C0AC610, 21071, sub_26C085EE0);
}

uint64_t || infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v5;
  v13[1] = v4;
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v12[4] = &protocol witness table for Expression<A>;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v13, inited + 32);
  sub_26C06B6BC(v12, inited + 72);

  sub_26C085EE0(inited, 1, 21071, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v5;
  v13[1] = v4;
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
  v12[4] = &protocol witness table for Expression<A>;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v13, inited + 32);
  sub_26C06B6BC(v12, inited + 72);

  sub_26C085EE0(inited, 1, 21071, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_26C094634(uint64_t *a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v8;
  v13[1] = v7;
  v13[2] = v9;
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12[3] = MEMORY[0x277D839B0];
  v12[4] = &protocol witness table for Bool;
  LOBYTE(v12[0]) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v13, inited + 32);
  sub_26C06B6BC(v12, inited + 72);

  a5(inited, 1, 21071, 0xE200000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_26C0947B8(char a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v12[3] = MEMORY[0x277D839B0];
  v12[4] = &protocol witness table for Bool;
  LOBYTE(v12[0]) = a1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11[4] = &protocol witness table for Expression<A>;
  v11[0] = v7;
  v11[1] = v6;
  v11[2] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v12, inited + 32);
  sub_26C06B6BC(v11, inited + 72);

  a5(inited, 1, 21071, 0xE200000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t ! prefix(_:)(uint64_t *a1)
{
  return sub_26C094958(a1, &qword_280479390, &qword_26C0AD880, sub_26C06E24C);
}

{
  return sub_26C094958(a1, &qword_280479398, &qword_26C0AC610, sub_26C06E24C);
}

uint64_t sub_26C094958(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, uint64_t, unint64_t))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9[4] = &protocol witness table for Expression<A>;
  v9[0] = v6;
  v9[1] = v5;
  v9[2] = v7;

  a4(v9, 542396238, 0xE400000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

double sub_26C094A50@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_26C094AD8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_26C094BC8(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

uint64_t sub_26C094C2C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_26C094D24(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  swift_beginAccess();
  v5 = *a3;

  return v5;
}

void Connection.createFunction(_:argumentCount:deterministic:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (a4)
  {
    v14 = -1;
  }

  else
  {
    v14 = a3;
    if (a3 < 0)
    {
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }
  }

  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a7;
  aBlock[4] = sub_26C097AA8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26C097C9C;
  aBlock[3] = &block_descriptor;
  v16 = _Block_copy(aBlock);

  if (a5)
  {
    v17 = 2049;
  }

  else
  {
    v17 = 1;
  }

  swift_beginAccess();
  v18 = *(v8 + 16);
  if (!v18)
  {
    goto LABEL_17;
  }

  if (v14 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = sub_26C0AB8B0();
  sqlite3_create_function_v2(v18, (v19 + 32), v14, v17, v16, sub_26C097D24, 0, 0, 0);

  swift_beginAccess();
  if (!*(*(v8 + 72) + 16) || (sub_26C06772C(a1, a2), (v20 & 1) == 0))
  {
    swift_endAccess();
    v21 = sub_26C099074(MEMORY[0x277D84F90]);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v8 + 72);
    *(v8 + 72) = 0x8000000000000000;
    sub_26C098C54(v21, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v8 + 72) = v28;
  }

  swift_endAccess();
  swift_beginAccess();
  v24 = sub_26C097D7C(aBlock, a1, a2);
  if (*v23)
  {
    v25 = v23;
    _Block_copy(v16);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v25;
    *v25 = 0x8000000000000000;
    sub_26C098B08(v16, v14, v26);
    *v25 = v27;
  }

  (v24)(aBlock, 0);
  swift_endAccess();
  _Block_release(v16);
}

uint64_t Connection.handle.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26C0950CC@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  switch(result)
  {
    case 9:
      *a2 = 2;
      break;
    case 0x12:
      *a2 = 0;
      break;
    case 0x17:
      *a2 = 1;
      break;
    default:
      sub_26C0ABB30();

      v2 = sub_26C0ABC60();
      MEMORY[0x26D69A890](v2);

      result = sub_26C0ABBE0();
      __break(1u);
      break;
  }

  return result;
}

uint64_t Connection.Operation.hashValue.getter()
{
  v1 = *v0;
  sub_26C0ABD60();
  MEMORY[0x26D69AD00](v1);
  return sub_26C0ABD80();
}

uint64_t Connection.__allocating_init(_:readonly:)(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  Connection.init(_:readonly:)(a1, v2);
  return v4;
}

uint64_t Connection.init(_:readonly:)(uint64_t *a1, int a2)
{
  v22 = a2;
  v21 = sub_26C0ABAC0();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C0AB7D0();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_26C0ABA90();
  MEMORY[0x28223BE20](v7);
  v18[2] = *a1;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  v8 = (v2 + 16);
  *(v2 + 48) = 0u;
  v9 = MEMORY[0x277D84F98];
  *(v2 + 64) = 0;
  *(v2 + 72) = v9;
  *(v2 + 80) = v9;
  v18[1] = sub_26C06CD30();
  v23 = MEMORY[0x277D84F90];
  sub_26C099168();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804794E0, &qword_26C0AD050);
  sub_26C0991C0();
  sub_26C0ABB00();
  sub_26C0AB7C0();
  (*(v19 + 104))(v5, *MEMORY[0x277D85260], v21);
  *(v2 + 88) = sub_26C0ABAE0();
  *(v2 + 96) = 0;
  *(v2 + 104) = 1;
  if (v22)
  {
    v10 = 65537;
  }

  else
  {
    v10 = 65542;
  }

  v11 = sub_26C0AB8B0();

  swift_beginAccess();
  v12 = v20;
  v13 = sqlite3_open_v2((v11 + 32), v8, v10, 0);
  swift_endAccess();

  v14 = v25;
  sub_26C0678E0(v13, 0);
  if (v14)
  {
  }

  else
  {
    v15 = qword_280B5AF70;
    v16 = *(v12 + 88);
    if (v15 != -1)
    {
      swift_once();
    }

    v23 = sub_26C06CD98();
    v24 = 0;
    sub_26C0ABAB0();
  }

  return v12;
}

uint64_t Connection.Location.description.getter()
{
  v1 = v0[1];
  if (v1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *v0;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x3A79726F6D656D3ALL;
  }

  sub_26C099224(*v0, v1);
  return v3;
}

uint64_t Connection.__allocating_init(_:readonly:)(uint64_t a1, uint64_t a2, int a3)
{
  v6[1] = a2;
  v6[0] = a1;
  v4 = swift_allocObject();
  Connection.init(_:readonly:)(v6, a3);
  return v4;
}

sqlite3 *Connection.deinit()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    sqlite3_close(result);
    _Block_release(*(v0 + 32));
    _Block_release(*(v0 + 40));
    _Block_release(*(v0 + 48));
    _Block_release(*(v0 + 56));
    _Block_release(*(v0 + 64));

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Connection.__deallocating_deinit()
{
  Connection.deinit();

  return swift_deallocClassInstance();
}

sqlite3 *Connection.readonly.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    return (sqlite3_db_readonly(result, 0) == 1);
  }

  __break(1u);
  return result;
}

sqlite3 *Connection.lastInsertRowid.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    return sqlite3_last_insert_rowid(result);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C095868(int (*a1)(void))
{
  swift_beginAccess();
  result = *(v1 + 16);
  if (result)
  {
    return a1();
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Connection.execute(_:)(Swift::String a1)
{
  sub_26C06CD30();
  if (qword_280B5AF70 != -1)
  {
    swift_once();
  }

  sub_26C0ABAA0();
  v2 = sub_26C06CD98();
  if ((v8 & 1) != 0 || v7 != v2)
  {
    v6 = *(v1 + 88);
    sub_26C0ABAD0();
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = sub_26C0AB8B0();
      v5 = sqlite3_exec(v3, (v4 + 32), 0, 0, 0);

      sub_26C0678E0(v5, 0);
    }

    else
    {
      __break(1u);
    }
  }
}

sqlite3 *sub_26C095A28@<X0>(uint64_t a1@<X0>, _DWORD *a4@<X8>)
{
  result = swift_beginAccess();
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = sub_26C0AB8B0();
    v10 = sqlite3_exec(v8, (v9 + 32), 0, 0, 0);

    result = sub_26C0678E0(v10, 0);
    if (!v4)
    {
      *a4 = v10;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Connection.prepare(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  type metadata accessor for Statement();
  swift_allocObject();

  v9 = sub_26C066FF0(v8, a1, a2);

  if (v7 && !v3)
  {
    v10 = sub_26C06A5F0(a3);

    return v10;
  }

  return v9;
}

{
  v5 = v3;
  type metadata accessor for Statement();
  swift_allocObject();

  sub_26C066FF0(v9, a1, a2);

  if (!v4)
  {
    v5 = sub_26C06A5F0(a3);
  }

  return v5;
}

{
  type metadata accessor for Statement();
  swift_allocObject();

  sub_26C066FF0(v7, a1, a2);

  if (!v3)
  {
    v9 = Statement.bind(_:)(a3);

    return v9;
  }

  return result;
}

sqlite3 *Connection.run(_:_:)(uint64_t a1, uint64_t a2, sqlite3 *a3)
{
  return sub_26C095D14(a1, a2, a3);
}

{
  return Connection.run(_:_:)(a1, a2, a3);
}

sqlite3 *sub_26C095D14(uint64_t a1, uint64_t a2, sqlite3 *a3)
{
  type metadata accessor for Statement();
  swift_allocObject();

  sub_26C066FF0(v7, a1, a2);

  if (!v3)
  {
    a3 = Statement.run(_:)(a3);
  }

  return a3;
}

sqlite3 *Connection.run(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for Statement();
  v8 = swift_allocObject();

  v10 = a2;
  v11 = v8;
  sub_26C066FF0(v9, a1, v10);

  if (!v4)
  {
    Statement.bind(_:)(a3);
    v11 = Statement.run(_:)(MEMORY[0x277D84F90]);
  }

  return v11;
}

sqlite3 *Connection.vacuum()()
{
  v1 = v0;
  type metadata accessor for Statement();
  swift_allocObject();

  sub_26C066FF0(v2, 0x4D5555434156, 0xE600000000000000);

  if (!v0)
  {
    v1 = Statement.run(_:)(MEMORY[0x277D84F90]);
  }

  return v1;
}

uint64_t Connection.scalar(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  return sub_26C095F94(a1, a2, a3, a4);
}

{
  v13[14] = *MEMORY[0x277D85DE8];
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_26C066FF0(v9, a1, a2);

  if (!v4)
  {
    v11 = Statement.bind(_:)(a3);
    swift_beginAccess();
    sqlite3_reset(*(v11 + 16));
    Statement.step()();
    if (!v12)
    {
      Statement.row.getter(v13);
      Cursor.subscript.getter(0, a4);
    }
  }

  return result;
}

{
  return Connection.scalar(_:_:)(a1, a2, a3, a4);
}

uint64_t sub_26C095F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14[14] = *MEMORY[0x277D85DE8];
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_26C066FF0(v9, a1, a2);

  if (!v4)
  {
    v11 = sub_26C06A5F0(a3);
    swift_beginAccess();
    v12 = *(v11 + 16);

    sqlite3_reset(v12);
    Statement.step()();
    if (!v13)
    {
      Statement.row.getter(v14);
      Cursor.subscript.getter(0, a4);
    }
  }

  return result;
}

SwiftSQLite::Connection::TransactionMode_optional __swiftcall Connection.TransactionMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26C0ABC20();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Connection.TransactionMode.rawValue.getter()
{
  v1 = 0x54414944454D4D49;
  if (*v0 != 1)
  {
    v1 = 0x564953554C435845;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4445525245464544;
  }
}

uint64_t sub_26C0962D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x54414944454D4D49;
  if (v2 != 1)
  {
    v3 = 0x564953554C435845;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x4445525245464544;
  }

  if (v2)
  {
    v5 = 0xE900000000000045;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  v6 = 0x54414944454D4D49;
  if (*a2 != 1)
  {
    v6 = 0x564953554C435845;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x4445525245464544;
  }

  if (*a2)
  {
    v8 = 0xE900000000000045;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26C0ABC70();
  }

  return v9 & 1;
}

uint64_t sub_26C0963CC()
{
  sub_26C0ABD60();
  sub_26C0AB8D0();

  return sub_26C0ABD80();
}

uint64_t sub_26C096478(uint64_t a1)
{
  sub_26C0AB8D0();
}

uint64_t sub_26C096510(uint64_t a1)
{
  sub_26C0ABD60();
  sub_26C0AB8D0();

  return sub_26C0ABD80();
}

void sub_26C0965C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x54414944454D4D49;
  if (v2 != 1)
  {
    v4 = 0x564953554C435845;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x4445525245464544;
  }

  if (!v5)
  {
    v3 = 0xE900000000000045;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t Connection.savepoint(_:block:)(uint64_t a1, unint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = sub_26C067104(39, 0xE100000000000000, a1, a2);
  strcpy(v17, "SAVEPOINT ");
  BYTE3(v17[1]) = 0;
  HIDWORD(v17[1]) = -369098752;
  MEMORY[0x26D69A890](v7);

  v9 = v17[0];
  v8 = v17[1];
  strcpy(v17, "RELEASE ");
  BYTE1(v17[1]) = 0;
  WORD1(v17[1]) = 0;
  HIDWORD(v17[1]) = -402653184;
  MEMORY[0x26D69A890](v9, v8);
  v10 = v17[0];
  v11 = v17[1];
  strcpy(v17, "ROLLBACK TO ");
  HIWORD(v17[1]) = -5120;
  MEMORY[0x26D69A890](v9, v8);
  sub_26C06CD30();
  if (qword_280B5AF70 != -1)
  {
    swift_once();
  }

  sub_26C0ABAA0();
  v12 = sub_26C06CD98();
  if ((v17[1] & 1) != 0 || v17[0] != v12)
  {
    v14 = *(v4 + 88);
    sub_26C0ABAD0();
  }

  else
  {
    type metadata accessor for Statement();
    swift_initStackObject();

    sub_26C066FF0(v13, v9, v8);
    if (!v5)
    {

      Statement.run(_:)(MEMORY[0x277D84F90]);

      a3(v16);
      swift_initStackObject();

      sub_26C066FF0(v4, v10, v11);

      Statement.run(_:)(MEMORY[0x277D84F90]);
    }
  }
}

Swift::Void __swiftcall Connection.interrupt()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    sqlite3_interrupt(v1);
  }

  else
  {
    __break(1u);
  }
}

sqlite3 *Connection.busyTimeout.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  swift_beginAccess();
  result = *(v1 + 16);
  if (!result)
  {
    goto LABEL_9;
  }

  v4 = a1 * 1000.0;
  if (COERCE__INT64(fabs(a1 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v4 > -2147483650.0)
  {
    if (v4 < 2147483650.0)
    {
      return sqlite3_busy_timeout(result, v4);
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

sqlite3 *(*Connection.busyTimeout.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_26C096BC0;
}

sqlite3 *sub_26C096BC0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if (a2)
  {
    return result;
  }

  v5 = *(a1 + 24);
  swift_beginAccess();
  result = *(v5 + 16);
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v6 = *(*(a1 + 24) + 24) * 1000.0;
  if (COERCE__INT64(fabs(v6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v6 <= -2147483650.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v6 >= 2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  return sqlite3_busy_timeout(result, v6);
}

void Connection.busyHandler(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v10[4] = sub_26C099258;
    v10[5] = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_26C096DEC;
    v10[3] = &block_descriptor_7;
    v6 = _Block_copy(v10);
    sub_26C0732F4(a1);

    swift_beginAccess();
    v7 = *(v2 + 16);
    if (v7)
    {
      sqlite3_busy_handler(v7, sub_26C096E3C, v6);
      sub_26C073304(a1, a2);
LABEL_6:
      v9 = *(v2 + 32);
      *(v2 + 32) = v6;
      _Block_release(v9);
      return;
    }

    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v8 = *(v2 + 16);
    if (v8)
    {
      sqlite3_busy_handler(v8, 0, 0);
      v6 = 0;
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_26C096DEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

void sub_26C096E4C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v10[4] = sub_26C09971C;
    v10[5] = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_26C096FB4;
    v10[3] = &block_descriptor_54;
    v6 = _Block_copy(v10);
    sub_26C0732F4(a1);

    swift_beginAccess();
    v7 = *(v2 + 16);
    if (v7)
    {
      sqlite3_trace_v2(v7, 1u, sub_26C097008, v6);
      sub_26C073304(a1, a2);
LABEL_6:
      v9 = *(v2 + 40);
      *(v2 + 40) = v6;
      _Block_release(v9);
      return;
    }

    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v8 = *(v2 + 16);
    if (v8)
    {
      sqlite3_trace_v2(v8, 0, 0, 0);
      v6 = 0;
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_26C096FB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_26C097008(int a1, uint64_t a2, sqlite3_stmt *pStmt)
{
  if (pStmt)
  {
    v4 = sqlite3_expanded_sql(pStmt);
    if (v4)
    {
      v5 = v4;
      (*(a2 + 16))(a2, v4);
      sqlite3_free(v5);
    }
  }

  return 0;
}

void Connection.updateHook(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v10[4] = sub_26C099288;
    v10[5] = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_26C097268;
    v10[3] = &block_descriptor_13;
    v6 = _Block_copy(v10);
    sub_26C0732F4(a1);

    swift_beginAccess();
    v7 = *(v2 + 16);
    if (v7)
    {
      sqlite3_update_hook(v7, sub_26C0972E0, v6);
      sub_26C073304(a1, a2);
LABEL_6:
      v9 = *(v2 + 48);
      *(v2 + 48) = v6;
      _Block_release(v9);
      return;
    }

    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v8 = *(v2 + 16);
    if (v8)
    {
      sqlite3_update_hook(v8, 0, 0);
      v6 = 0;
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_26C0971C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_26C0950CC(a1, &v13);
  v7 = sub_26C0AB910();
  v9 = v8;
  v10 = sub_26C0AB910();
  a5(&v13, v7, v9, v10, v11, a4);
}

uint64_t sub_26C097268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);
}

uint64_t sub_26C0972E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (a4)
    {
      return (*(result + 16))(result, a2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void Connection.commitHook(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v10[4] = sub_26C099290;
    v10[5] = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_26C09745C;
    v10[3] = &block_descriptor_19;
    v6 = _Block_copy(v10);
    sub_26C0732F4(a1);

    swift_beginAccess();
    v7 = *(v2 + 16);
    if (v7)
    {
      sqlite3_commit_hook(v7, sub_26C09749C, v6);
      sub_26C073304(a1, a2);
LABEL_6:
      v9 = *(v2 + 56);
      *(v2 + 56) = v6;
      _Block_release(v9);
      return;
    }

    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v8 = *(v2 + 16);
    if (v8)
    {
      sqlite3_commit_hook(v8, 0, 0);
      v6 = 0;
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_26C09745C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void Connection.rollbackHook(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v10[4] = sub_26C0992E4;
    v10[5] = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_26C097608;
    v10[3] = &block_descriptor_25;
    v6 = _Block_copy(v10);
    sub_26C0732F4(a1);

    swift_beginAccess();
    v7 = *(v2 + 16);
    if (v7)
    {
      sqlite3_rollback_hook(v7, sub_26C09764C, v6);
      sub_26C073304(a1, a2);
LABEL_6:
      v9 = *(v2 + 64);
      *(v2 + 64) = v6;
      _Block_release(v9);
      return;
    }

    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v8 = *(v2 + 16);
    if (v8)
    {
      sqlite3_rollback_hook(v8, 0, 0);
      v6 = 0;
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_26C097608(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_26C097658(uint64_t a1, int a2, uint64_t a3, void (*a4)(void *__return_ptr, void), int a5)
{
  if (a2 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v5 = a1;
  v8 = MEMORY[0x277D84F90];
  if (a2)
  {
    v23 = a4;
    v10 = a2;
    v26[0] = MEMORY[0x277D84F90];
    v6 = v26;
    sub_26C088980(0, a2, 0);
    v11 = 0;
    v8 = v26[0];
    v5 = 40;
    while (v10 != v11)
    {
      v25[0] = v11;
      sub_26C097AB0(v25, a3, &v28);
      v26[0] = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        v6 = v26;
        sub_26C088980((v12 > 1), v13 + 1, 1);
        v8 = v26[0];
      }

      ++v11;
      *(v8 + 16) = v13 + 1;
      v14 = v8 + 40 * v13;
      v15 = v28;
      v16 = v29;
      *(v14 + 64) = v30;
      *(v14 + 32) = v15;
      *(v14 + 48) = v16;
      if (v10 == v11)
      {
        a4 = v23;
        v5 = a1;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_9:
  LODWORD(v6) = a5;
  a4(&v28, v8);
  sub_26C06DF6C(&v28, v26);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
    if (swift_dynamicCast())
    {

      LODWORD(v6) = v25[0];
      v17 = *(v25[0] + 16);
      if (v17 >> 31)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      sqlite3_result_blob(v5, (v25[0] + 32), v17, 0);

      return sub_26C071BDC(&v28);
    }
  }

  else
  {
    sub_26C071BDC(v26);
  }

  sub_26C06DF6C(&v28, v26);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
    if (swift_dynamicCast())
    {

      sqlite3_result_double(v5, *v25);
      return sub_26C071BDC(&v28);
    }
  }

  else
  {
    sub_26C071BDC(v26);
  }

  sub_26C06DF6C(&v28, v26);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
    if (swift_dynamicCast())
    {

      sqlite3_result_int64(v5, v25[0]);
      return sub_26C071BDC(&v28);
    }
  }

  else
  {
    sub_26C071BDC(v26);
  }

  sub_26C06DF6C(&v28, v26);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
    if (swift_dynamicCast())
    {

      v18 = sub_26C0AB8E0();
      if (v18 >= 0xFFFFFFFF80000000)
      {
        LODWORD(v6) = v18;
        if (v18 <= 0x7FFFFFFF)
        {
          if (qword_280B5AF20 == -1)
          {
LABEL_27:
            v19 = qword_280B5B228;
            v20 = sub_26C0AB8B0();

            sqlite3_result_text(v5, (v20 + 32), v6, v19);

            return sub_26C071BDC(&v28);
          }

LABEL_37:
          swift_once();
          goto LABEL_27;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }
  }

  else
  {
    sub_26C071BDC(v26);
  }

  if (!*(&v29 + 1))
  {

    sqlite3_result_null(v5);
    return sub_26C071BDC(&v28);
  }

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_26C0ABB30();

  v25[0] = 0xD000000000000019;
  v25[1] = 0x800000026C0AE470;
  sub_26C06DF6C(&v28, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
  v22 = sub_26C0AB890();
  MEMORY[0x26D69A890](v22);

  result = sub_26C0ABBE0();
  __break(1u);
  return result;
}

void sub_26C097AB0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(a2 + 8 * *a1);
  v5 = sqlite3_value_type(v4);
  if (v5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 == 5)
      {
        *(a3 + 32) = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        return;
      }

      if (v5 != 4)
      {
        goto LABEL_19;
      }

      v9 = sqlite3_value_blob(v4);
      if (v9)
      {
        v10 = v9;
        v11 = sqlite3_value_bytes(v4);
        *(a3 + 24) = &type metadata for Blob;
        *(a3 + 32) = &protocol witness table for Blob;
        Blob.init(bytes:length:)(v10, v11, a3);
        return;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      sub_26C0ABB30();

      v13 = sub_26C0ABC60();
      MEMORY[0x26D69A890](v13);

      sub_26C0ABBE0();
      __break(1u);
      return;
    }

    if (sqlite3_value_text(v4))
    {
      v7 = sub_26C0AB920();
      *(a3 + 24) = MEMORY[0x277D837D0];
      *(a3 + 32) = &protocol witness table for String;
      *a3 = v7;
      *(a3 + 8) = v8;
      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 == 1)
  {
    v6 = sqlite3_value_int64(v4);
    *(a3 + 24) = MEMORY[0x277D84A28];
    *(a3 + 32) = &protocol witness table for Int64;
    *a3 = v6;
    return;
  }

  if (v5 != 2)
  {
    goto LABEL_19;
  }

  v12 = sqlite3_value_double(v4);
  *(a3 + 24) = MEMORY[0x277D839F8];
  *(a3 + 32) = &protocol witness table for Double;
  *a3 = v12;
}

uint64_t sub_26C097C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26C097D24(sqlite3_context *a1)
{
  v1 = *(sqlite3_user_data(a1) + 2);

  return v1();
}

uint64_t (*sub_26C097D7C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_26C098510(v6, a2, a3);
  return sub_26C097E04;
}

void sub_26C097E04(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void Connection.createCollation(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  aBlock[4] = sub_26C09930C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26C0980CC;
  aBlock[3] = &block_descriptor_31;
  v12 = _Block_copy(aBlock);

  swift_beginAccess();
  v13 = *(v6 + 16);
  if (v13)
  {
    v14 = sub_26C0AB8B0();
    collation_v2 = sqlite3_create_collation_v2(v13, (v14 + 32), 1, v12, sub_26C098128, 0);

    sub_26C0678E0(collation_v2, 0);
    if (!v5)
    {
      swift_beginAccess();

      _Block_copy(v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *(v6 + 80);
      *(v6 + 80) = 0x8000000000000000;
      sub_26C098DD0(v12, a1, a2, isUniquelyReferenced_nonNull_native);

      *(v6 + 80) = v18;
      swift_endAccess();
    }

    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26C09802C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = sub_26C0AB920();
  v6 = v5;
  v7 = sub_26C0AB920();
  v9 = a3(v4, v6, v7, v8);

  if (v9 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v9 <= 0x7FFFFFFF)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0980CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

uint64_t sub_26C098128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 && a5)
  {
    v6 = *(a1 + 16);

    return v6();
  }

  else
  {
    result = sub_26C0ABBE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_26C0981AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479500, &qword_26C0AD368);
  swift_allocObject();
  result = sub_26C0AB7B0();
  qword_280B5AF78 = result;
  return result;
}

sqlite3 *Connection.description.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    result = sqlite3_db_filename(result, 0);
    if (result)
    {
      return sub_26C0AB910();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

sqlite3 *sub_26C098248()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 16);
  if (result)
  {
    result = sqlite3_db_filename(result, 0);
    if (result)
    {
      return sub_26C0AB910();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0982A4()
{
  v1 = v0[1];
  if (v1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *v0;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x3A79726F6D656D3ALL;
  }

  sub_26C099224(*v0, v1);
  return v3;
}

void *sub_26C098300()
{
  result = sub_26C098F4C(&unk_287CC7940);
  off_280B5B0A8 = result;
  return result;
}

const char *Result.description.getter()
{
  v1 = *v0;
  v2 = v0[3];
  if (v2)
  {

    sub_26C0ABB30();

    MEMORY[0x26D69A890](10272, 0xE200000000000000);
    swift_beginAccess();
    result = sqlite3_sql(*(v2 + 16));
    if (result)
    {
      v4 = sub_26C0AB910();
      MEMORY[0x26D69A890](v4);

      MEMORY[0x26D69A890](0x3A65646F63282029, 0xE900000000000020);
      v5 = sub_26C0ABC60();
      MEMORY[0x26D69A890](v5);

      MEMORY[0x26D69A890](41, 0xE100000000000000);

      return v1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v7 = *v0;

    MEMORY[0x26D69A890](0x203A65646F632820, 0xE800000000000000);
    v6 = sub_26C0ABC60();
    MEMORY[0x26D69A890](v6);

    MEMORY[0x26D69A890](41, 0xE100000000000000);
    return v7;
  }

  return result;
}

unint64_t sub_26C0984CC(uint64_t a1)
{
  v2 = sub_26C0ABD50();

  return sub_26C098A9C(a1, v2);
}

void (*sub_26C098510(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_26C0988B8(v7);
  v7[9] = sub_26C09861C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_26C0985BC;
}

void sub_26C0985BC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_26C09861C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_26C06772C(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_26C0A9680();
      v13 = v21;
      goto LABEL_11;
    }

    sub_26C0A8FD4(v18, a4 & 1);
    v13 = sub_26C06772C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_26C0ABCF0();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_26C098774;
}

void sub_26C098774(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_26C099768(*(v13 + 48) + 16 * v12);
      sub_26C0988EC(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_26C0988B8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_26C0988E0;
}

uint64_t sub_26C0988EC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C0ABB10() + 1) & ~v5;
    do
    {
      sub_26C0ABD60();

      sub_26C0AB8D0();
      v9 = sub_26C0ABD80();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_26C098A9C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_26C098B08(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_26C0984CC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_26C0A8D64(v14, a3 & 1);
      v9 = sub_26C0984CC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_26C0ABCF0();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_26C0A9524();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v9);
  *(v20 + 8 * v9) = a1;

  _Block_release(v21);
}

uint64_t sub_26C098C54(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26C06772C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26C0A8FD4(v16, a4 & 1);
      v11 = sub_26C06772C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_26C0ABCF0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_26C0A9680();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void sub_26C098DD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26C06772C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26C0A927C(v16, a4 & 1);
      v11 = sub_26C06772C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_26C0ABCF0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_26C0A97F0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    _Block_release(v23);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

unint64_t sub_26C098F4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804794F8, &qword_26C0AD360);
    v3 = sub_26C0ABB20();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 4 * v4);
      result = MEMORY[0x26D69ACD0](v7, v12, 4);
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_26C099074(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479508, &unk_26C0AD370);
  v3 = sub_26C0ABC10();
  v5 = a1[4];
  v4 = a1[5];
  result = sub_26C0984CC(v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    *(v3[7] + 8 * result) = v4;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    _Block_copy(v4);
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v8 - 1);
    v4 = *v8;
    result = sub_26C0984CC(v5);
    v8 += 2;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26C099168()
{
  result = qword_280B5B048;
  if (!qword_280B5B048)
  {
    sub_26C0ABA90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B5B048);
  }

  return result;
}

unint64_t sub_26C0991C0()
{
  result = qword_280B5B090;
  if (!qword_280B5B090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804794E0, &qword_26C0AD050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B5B090);
  }

  return result;
}

uint64_t sub_26C099224(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_26C099318()
{
  result = qword_2804794E8;
  if (!qword_2804794E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804794E8);
  }

  return result;
}

unint64_t sub_26C099370()
{
  result = qword_2804794F0;
  if (!qword_2804794F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804794F0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11SwiftSQLite10ConnectionC8LocationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26C099440(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_26C099494(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_26C0994F0(void *result, int a2)
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

uint64_t getEnumTagSinglePayload for JoinType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JoinType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26C09967C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C0996C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C09971C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_26C0AB920();
  v2(v3);
}

uint64_t QueryType.insert(or:encodable:userInfo:otherSetters:)(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = type metadata accessor for SQLiteEncoder();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D84F90];
  v9[2] = MEMORY[0x277D84F90];
  v9[3] = v10;
  v9[4] = a3;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v14[3] = v8;
  v14[4] = sub_26C09FD70(&qword_280479510, type metadata accessor for SQLiteEncoder, &unk_26C0AD7F0);
  v14[0] = v9;

  sub_26C0AB7F0();
  if (v4)
  {

    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    v15 = v7;
    swift_beginAccess();
    v13._rawValue = v9[2];

    sub_26C06FE94(v12);
    QueryType.insert(or:_:)(&v15, v13);
  }
}

SwiftSQLite::Insert __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> QueryType.insertMany(_:userInfo:otherSetters:)(Swift::OpaquePointer _, Swift::OpaquePointer userInfo, Swift::OpaquePointer otherSetters)
{
  v4 = *(_._rawValue + 2);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    v8._rawValue = MEMORY[0x277D84F90];
LABEL_22:
    QueryType.insertMany(_:)(v8);

    goto LABEL_26;
  }

  v32 = MEMORY[0x277D84F90];
  sub_26C0889E0(0, v4, 0);
  v8._rawValue = v32;
  v9 = _._rawValue + 32;
  while (1)
  {
    v28 = v4;
    rawValue = v8._rawValue;
    v27 = v9;
    sub_26C06B6BC(v9, v31);
    v10 = type metadata accessor for SQLiteEncoder();
    v11 = swift_allocObject();
    v11[2]._rawValue = v5;
    v11[3]._rawValue = v5;
    v11[4]._rawValue = userInfo._rawValue;
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    v30[3] = v10;
    v30[4] = sub_26C09FD70(&qword_280479510, type metadata accessor for SQLiteEncoder, &unk_26C0AD7F0);
    v30[0] = v11;

    sub_26C0AB7F0();
    if (v3)
    {

      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_destroy_boxed_opaque_existential_1(v31);

      goto LABEL_26;
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
    isUniquelyReferenced_nonNull_native = swift_beginAccess();
    v15 = v11[2]._rawValue;
    v16 = *(otherSetters._rawValue + 2);
    v17 = *(v15 + 16);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v19 = *(v15 + 24) >> 1, v19 >= v18))
    {
      v8._rawValue = rawValue;
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v23 = v17 + v16;
      }

      else
      {
        v23 = v17;
      }

      isUniquelyReferenced_nonNull_native = sub_26C06FF8C(isUniquelyReferenced_nonNull_native, v23, 1, v15);
      v15 = isUniquelyReferenced_nonNull_native;
      v19 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      v8._rawValue = rawValue;
      if (!v16)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    if (v19 - *(v15 + 16) < v16)
    {
      goto LABEL_24;
    }

    swift_arrayInitWithCopy();

    v20 = *(v15 + 16);
    v21 = __OFADD__(v20, v16);
    v22 = v20 + v16;
    if (v21)
    {
      goto LABEL_25;
    }

    *(v15 + 16) = v22;
LABEL_16:

    __swift_destroy_boxed_opaque_existential_1(v31);
    v32 = v8._rawValue;
    v25 = *(v8._rawValue + 2);
    v24 = *(v8._rawValue + 3);
    if (v25 >= v24 >> 1)
    {
      sub_26C0889E0((v24 > 1), v25 + 1, 1);
      v8._rawValue = v32;
    }

    *(v8._rawValue + 2) = v25 + 1;
    *(v8._rawValue + v25 + 4) = v15;
    v9 = v27 + 40;
    v4 = v28 - 1;
    v5 = MEMORY[0x277D84F90];
    if (v28 == 1)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result.bindings._rawValue = v14;
  result.template._object = v13;
  result.template._countAndFlagsBits = isUniquelyReferenced_nonNull_native;
  return result;
}

uint64_t QueryType.upsert(_:userInfo:otherSetters:onConflictOf:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *x8_0@<X8>)
{
  v10 = type metadata accessor for SQLiteEncoder();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D84F90];
  v11[2] = MEMORY[0x277D84F90];
  v11[3] = v12;
  v11[4] = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19[3] = v10;
  v19[4] = sub_26C09FD70(&qword_280479510, type metadata accessor for SQLiteEncoder, &unk_26C0AD7F0);
  v19[0] = v11;

  sub_26C0AB7F0();
  if (v7)
  {

    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
    swift_beginAccess();
    v20 = v11[2];

    sub_26C06FE94(v14);
    QueryType.upsert(_:onConflictOf:)(v20, a4, a5, a6, x8_0);
  }
}

uint64_t sub_26C099F00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v9 = type metadata accessor for SQLiteEncoder();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D84F90];
  v10[2] = MEMORY[0x277D84F90];
  v10[3] = v11;
  v10[4] = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17[3] = v9;
  v17[4] = sub_26C09FD70(&qword_280479510, type metadata accessor for SQLiteEncoder, &unk_26C0AD7F0);
  v17[0] = v10;

  sub_26C0AB7F0();
  if (v6)
  {

    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    swift_beginAccess();
    v18 = v10[2];

    sub_26C06FE94(v13);
    a6(v18, a4, a5);
  }
}

uint64_t Row.decode<A>(userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v5 = v3[1];
  type metadata accessor for SQLiteDecoder();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84F90];
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v8;
  v7[5] = a1;
  sub_26C09FD70(qword_280479518, type metadata accessor for SQLiteDecoder, &unk_26C0AD7A8);

  return sub_26C0ABA30();
}

uint64_t Row.decoder(userInfo:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = type metadata accessor for SQLiteDecoder();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v9;
  v8[5] = a1;
  a2[3] = v7;
  a2[4] = sub_26C09FD70(qword_280479518, type metadata accessor for SQLiteDecoder, &unk_26C0AD7A8);
  *a2 = v8;
}

uint64_t sub_26C09A254(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(result + 16) = a1;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_26C09A348()
{
  v1 = *(v0 + 16);
  v2 = sub_26C0ABD90();
  v4 = sub_26C067104(34, 0xE100000000000000, v2, v3);
  v6 = v5;

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479430, &qword_26C0AC888);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26C0AC5C0;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0;
  swift_beginAccess();
  v9 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_26C06FF8C(0, *(v9 + 2) + 1, 1, v9);
    *(v1 + 16) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_26C06FF8C((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[80 * v12];
  *(v13 + 4) = v4;
  *(v13 + 5) = v6;
  *(v13 + 6) = MEMORY[0x277D84F90];
  *(v13 + 7) = v7;
  *(v13 + 8) = &protocol witness table for Expression<A>;
  *(v13 + 9) = 63;
  *(v13 + 10) = 0xE100000000000000;
  *(v13 + 11) = v8;
  *(v13 + 12) = v7;
  *(v13 + 13) = &protocol witness table for Expression<A>;
  *(v1 + 16) = v9;
  return swift_endAccess();
}

uint64_t sub_26C09A544(char a1)
{
  v3 = *(v1 + 16);
  v4 = sub_26C0ABD90();
  v6 = sub_26C067104(34, 0xE100000000000000, v4, v5);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
  swift_beginAccess();
  v10 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_26C06FF8C(0, *(v10 + 2) + 1, 1, v10);
    *(v3 + 16) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_26C06FF8C((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[80 * v13];
  v15 = MEMORY[0x277D84F90];
  *(v14 + 4) = v6;
  *(v14 + 5) = v8;
  *(v14 + 6) = v15;
  *(v14 + 7) = v9;
  *(v14 + 8) = &protocol witness table for Expression<A>;
  v14[72] = a1 & 1;
  v16 = MEMORY[0x277D839B0];
  *(v14 + 11) = *&v18[15];
  *(v14 + 12) = v16;
  *(v14 + 73) = *v18;
  *(v14 + 13) = &protocol witness table for Bool;
  *(v3 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_26C09A6EC(float a1)
{
  v3 = *(v1 + 16);
  v4 = sub_26C0ABD90();
  v6 = sub_26C067104(34, 0xE100000000000000, v4, v5);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479658, &qword_26C0AD878);
  swift_beginAccess();
  v10 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_26C06FF8C(0, *(v10 + 2) + 1, 1, v10);
    *(v3 + 16) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_26C06FF8C((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[80 * v13];
  *(v14 + 4) = v6;
  *(v14 + 5) = v8;
  *(v14 + 6) = MEMORY[0x277D84F90];
  *(v14 + 7) = v9;
  *(v14 + 8) = &protocol witness table for Expression<A>;
  *(v14 + 9) = a1;
  v15 = MEMORY[0x277D839F8];
  *(v14 + 5) = v17;
  *(v14 + 12) = v15;
  *(v14 + 13) = &protocol witness table for Double;
  *(v3 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_26C09A88C(double a1)
{
  v3 = *(v1 + 16);
  v4 = sub_26C0ABD90();
  v6 = sub_26C067104(34, 0xE100000000000000, v4, v5);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479658, &qword_26C0AD878);
  swift_beginAccess();
  v10 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_26C06FF8C(0, *(v10 + 2) + 1, 1, v10);
    *(v3 + 16) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_26C06FF8C((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[80 * v13];
  *(v14 + 4) = v6;
  *(v14 + 5) = v8;
  *(v14 + 6) = MEMORY[0x277D84F90];
  *(v14 + 7) = v9;
  *(v14 + 8) = &protocol witness table for Expression<A>;
  *(v14 + 9) = a1;
  v15 = MEMORY[0x277D839F8];
  *(v14 + 5) = v17;
  *(v14 + 12) = v15;
  *(v14 + 13) = &protocol witness table for Double;
  *(v3 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_26C09AA28(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = sub_26C0ABD90();
  v8 = sub_26C067104(34, 0xE100000000000000, v6, v7);
  v10 = v9;

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479410, &qword_26C0AC868);
  swift_beginAccess();
  v12 = *(v5 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_26C06FF8C(0, *(v12 + 2) + 1, 1, v12);
    *(v5 + 16) = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_26C06FF8C((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[80 * v15];
  *(v16 + 4) = v8;
  *(v16 + 5) = v10;
  *(v16 + 6) = MEMORY[0x277D84F90];
  *(v16 + 7) = v11;
  *(v16 + 8) = &protocol witness table for Expression<A>;
  *(v16 + 9) = a1;
  v17 = MEMORY[0x277D837D0];
  *(v16 + 10) = a2;
  *(v16 + 12) = v17;
  *(v16 + 13) = &protocol witness table for String;
  *(v5 + 16) = v12;
  return swift_endAccess();
}

uint64_t sub_26C09ABBC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84[2] = a4;
  v7 = *v4;
  v88 = a2;
  v89 = v7;
  v8 = sub_26C0AB880();
  MEMORY[0x28223BE20](v8 - 8);
  v84[1] = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479630, &qword_26C0AD850);
  MEMORY[0x28223BE20](v10 - 8);
  v85 = v84 - v11;
  v12 = sub_26C0AB710();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v86 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = *(v16 + 16);
  v87 = a1;
  v20(v84 - v21, a1, a3);
  if (swift_dynamicCast())
  {
    v22 = v90;
    v23 = v91;
    v24 = v4[2];
    v25 = sub_26C0ABD90();
    v27 = sub_26C067104(34, 0xE100000000000000, v25, v26);
    v29 = v28;

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479650, &qword_26C0AD870);
    swift_beginAccess();
    v31 = *(v24 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v24 + 16) = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = sub_26C06FF8C(0, *(v31 + 2) + 1, 1, v31);
      *(v24 + 16) = v31;
    }

    v34 = *(v31 + 2);
    v33 = *(v31 + 3);
    if (v34 >= v33 >> 1)
    {
      v31 = sub_26C06FF8C((v33 > 1), v34 + 1, 1, v31);
    }

    *(v31 + 2) = v34 + 1;
    v35 = &v31[80 * v34];
    *(v35 + 4) = v27;
    *(v35 + 5) = v29;
    *(v35 + 6) = MEMORY[0x277D84F90];
    *(v35 + 7) = v30;
    *(v35 + 8) = &protocol witness table for Expression<A>;
    *(v35 + 9) = v22;
    *(v35 + 10) = v23;
    *(v35 + 12) = MEMORY[0x277CC9318];
    *(v35 + 13) = &protocol witness table for Data;
    *(v24 + 16) = v31;
    return swift_endAccess();
  }

  else
  {
    v37 = v4;
    v20(v19, v87, a3);
    v38 = v85;
    v39 = swift_dynamicCast();
    v40 = *(v13 + 56);
    v41 = v12;
    if (v39)
    {
      v40(v38, 0, 1, v12);
      v87 = v13;
      (*(v13 + 32))(v86, v38, v12);
      v42 = v37[2];
      v43 = sub_26C0ABD90();
      v89 = sub_26C067104(34, 0xE100000000000000, v43, v44);
      v46 = v45;

      if (qword_280B5A8E8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v47 = qword_280B5A8F0;
      v48 = sub_26C0AB6F0();
      v49 = [v47 stringFromDate_];

      v50 = sub_26C0AB840();
      v52 = v51;

      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479410, &qword_26C0AC868);
      swift_beginAccess();
      v54 = *(v42 + 16);
      v55 = swift_isUniquelyReferenced_nonNull_native();
      *(v42 + 16) = v54;
      v56 = v41;
      if ((v55 & 1) == 0)
      {
        v54 = sub_26C06FF8C(0, *(v54 + 2) + 1, 1, v54);
        *(v42 + 16) = v54;
      }

      v58 = *(v54 + 2);
      v57 = *(v54 + 3);
      if (v58 >= v57 >> 1)
      {
        v54 = sub_26C06FF8C((v57 > 1), v58 + 1, 1, v54);
      }

      *(v54 + 2) = v58 + 1;
      v59 = &v54[80 * v58];
      *(v59 + 4) = v89;
      *(v59 + 5) = v46;
      *(v59 + 6) = MEMORY[0x277D84F90];
      *(v59 + 7) = v53;
      *(v59 + 8) = &protocol witness table for Expression<A>;
      *(v59 + 9) = v50;
      v60 = MEMORY[0x277D837D0];
      *(v59 + 10) = v52;
      *(v59 + 12) = v60;
      *(v59 + 13) = &protocol witness table for String;
      *(v42 + 16) = v54;
      swift_endAccess();
      return (*(v87 + 8))(v86, v56);
    }

    else
    {
      v40(v38, 1, 1, v12);
      sub_26C0A0CEC(v38);
      sub_26C0AB680();
      swift_allocObject();
      sub_26C0AB670();
      v61 = v92;
      v62 = sub_26C0AB660();
      v64 = v63;

      if (!v61)
      {
        v92 = 0;
        sub_26C0AB870();
        v87 = v64;
        v65 = sub_26C0AB860();
        v67 = v66;
        v68 = v37[2];
        v69 = sub_26C0ABD90();
        v71 = sub_26C067104(34, 0xE100000000000000, v69, v70);
        v89 = v72;

        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479430, &qword_26C0AC888);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
        v74 = swift_allocObject();
        v75 = v74;
        *(v74 + 16) = xmmword_26C0AC5C0;
        if (v67)
        {
          v76 = &protocol witness table for String;
          v77 = MEMORY[0x277D837D0];
        }

        else
        {
          v65 = 0;
          v77 = 0;
          v76 = 0;
          *(v74 + 48) = 0;
        }

        *(v74 + 32) = v65;
        *(v74 + 40) = v67;
        *(v74 + 56) = v77;
        *(v74 + 64) = v76;
        swift_beginAccess();
        v78 = *(v68 + 16);
        v79 = swift_isUniquelyReferenced_nonNull_native();
        *(v68 + 16) = v78;
        if ((v79 & 1) == 0)
        {
          v78 = sub_26C06FF8C(0, *(v78 + 2) + 1, 1, v78);
          *(v68 + 16) = v78;
        }

        v81 = *(v78 + 2);
        v80 = *(v78 + 3);
        if (v81 >= v80 >> 1)
        {
          v78 = sub_26C06FF8C((v80 > 1), v81 + 1, 1, v78);
        }

        *(v78 + 2) = v81 + 1;
        v82 = &v78[80 * v81];
        v83 = v89;
        *(v82 + 4) = v71;
        *(v82 + 5) = v83;
        *(v82 + 6) = MEMORY[0x277D84F90];
        *(v82 + 7) = v73;
        *(v82 + 8) = &protocol witness table for Expression<A>;
        *(v82 + 9) = 63;
        *(v82 + 10) = 0xE100000000000000;
        *(v82 + 11) = v75;
        *(v82 + 12) = v73;
        *(v82 + 13) = &protocol witness table for Expression<A>;
        *(v68 + 16) = v78;
        swift_endAccess();
        return sub_26C0710CC(v62, v87);
      }
    }
  }

  return result;
}

uint64_t sub_26C09B3FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v6 + 16);
  v12 = sub_26C0ABD90();
  v14 = sub_26C067104(34, 0xE100000000000000, v12, v13);
  v16 = v15;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_beginAccess();
  v18 = *(v11 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + 16) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_26C06FF8C(0, *(v18 + 2) + 1, 1, v18);
    *(v11 + 16) = v18;
  }

  v21 = *(v18 + 2);
  v20 = *(v18 + 3);
  if (v21 >= v20 >> 1)
  {
    v18 = sub_26C06FF8C((v20 > 1), v21 + 1, 1, v18);
  }

  *(v18 + 2) = v21 + 1;
  v22 = &v18[80 * v21];
  v23 = MEMORY[0x277D84F90];
  *(v22 + 4) = v14;
  *(v22 + 5) = v16;
  *(v22 + 6) = v23;
  *(v22 + 7) = v17;
  *(v22 + 8) = &protocol witness table for Expression<A>;
  *(v22 + 9) = a1;
  *(v22 + 5) = v26;
  *(v22 + 12) = a5;
  *(v22 + 13) = a6;
  *(v11 + 16) = v18;
  return swift_endAccess();
}

uint64_t sub_26C09B640()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26C09C050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer(0, a2, a3, a4);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D84F90];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;

  swift_getWitnessTable();
  return sub_26C0ABC40();
}

uint64_t sub_26C09C0F4()
{

  return swift_deallocClassInstance();
}

__n128 sub_26C09C228(__n128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84F90];
  result = *a1;
  *(v2 + 24) = *a1;
  return result;
}

uint64_t sub_26C09C26C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479638, &qword_26C0AD858);
  sub_26C0A0DB8();
  v0 = sub_26C0AB990();

  return v0;
}

uint64_t sub_26C09C338()
{

  v0 = sub_26C0ABD90();
  v2 = sub_26C0A1B18(v0, v1);

  return v2 & 1;
}

unint64_t sub_26C09C41C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_26C0ABD90();
  v5 = sub_26C067104(34, 0xE100000000000000, v3, v4);
  v7 = v6;

  v8 = sub_26C09C4F4(v5, v7, MEMORY[0x277D84F90], v1, v2);

  return v8 & 1;
}

uint64_t sub_26C09C4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();

  v11 = sub_26C09D478(a1, a2, a3, a4, a5);

  if (v5 || v11 != 2)
  {
  }

  else
  {
    sub_26C072E10();
    swift_allocError();
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = 0;
    *(v12 + 24) = 3;
    swift_willThrow();
  }

  return v11 & 1;
}

char *sub_26C09C5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();

  v11 = sub_26C09D8D0(a1, a2, a3, a4, a5, MEMORY[0x277D84A28]);
  v13 = v12;

  if (v5 || (v13 & 1) == 0)
  {
  }

  else
  {
    sub_26C072E10();
    swift_allocError();
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = 0;
    *(v14 + 24) = 3;
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_26C09C6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();

  sub_26C09D8D0(a1, a2, a3, a4, a5, MEMORY[0x277D839F8]);
  v12 = v11;

  if (v5 || (v12 & 1) == 0)
  {
  }

  sub_26C072E10();
  swift_allocError();
  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 16) = 0;
  *(v13 + 24) = 3;
  return swift_willThrow();
}

void *sub_26C09C7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();

  v11 = sub_26C09DD70(a1, a2, a3, a4, a5);
  v13 = v12;

  if (v5 || v13)
  {
  }

  else
  {
    sub_26C072E10();
    swift_allocError();
    *v15 = a1;
    *(v15 + 8) = a2;
    *(v15 + 16) = 0;
    *(v15 + 24) = 3;
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_26C09C8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  swift_bridgeObjectRetain_n();

  sub_26C09E668(a1, a2, a4, a5, &v15);

  if (v6)
  {
  }

  v13 = v16;
  if (v16 >> 60 == 15)
  {
    sub_26C0A0CD8(v15, v16);
    sub_26C072E10();
    swift_allocError();
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = 0;
    *(v14 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    *a6 = v15;
    a6[1] = v13;
  }

  return result;
}

uint64_t sub_26C09C9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479630, &qword_26C0AD850);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  swift_bridgeObjectRetain_n();

  sub_26C09E1FC(a1, a2, a4, a5, v14);

  if (v6)
  {
  }

  v16 = sub_26C0AB710();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_26C0A0CEC(v14);
    sub_26C072E10();
    swift_allocError();
    *v18 = a1;
    *(v18 + 8) = a2;
    *(v18 + 16) = 0;
    *(v18 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    return (*(v17 + 32))(a6, v14, v16);
  }
}

char *sub_26C09CBB4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_26C0ABD90();
  v5 = sub_26C067104(34, 0xE100000000000000, v3, v4);
  v7 = v6;

  v8 = sub_26C09C5E8(v5, v7, MEMORY[0x277D84F90], v1, v2);

  return v8;
}

uint64_t sub_26C09CC8C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_26C0ABD90();
  v5 = sub_26C067104(34, 0xE100000000000000, v3, v4);
  v7 = v6;

  sub_26C09C6D4(v5, v7, MEMORY[0x277D84F90], v1, v2);
}

double sub_26C09CD88()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_26C0ABD90();
  v5 = sub_26C067104(34, 0xE100000000000000, v3, v4);
  v7 = v6;

  sub_26C09C6D4(v5, v7, MEMORY[0x277D84F90], v1, v2);
  v9 = v8;

  return v9;
}

void *sub_26C09CE68()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_26C0ABD90();
  v5 = sub_26C067104(34, 0xE100000000000000, v3, v4);
  v7 = v6;

  v8 = sub_26C09C7CC(v5, v7, MEMORY[0x277D84F90], v1, v2);

  return v8;
}

uint64_t sub_26C09CF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v45[3] = a3;
  v8 = sub_26C0AB880();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v46 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C0AB710();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v16 = v45 - v15;
  if (a1 == MEMORY[0x277CC9318])
  {
    v34 = *(v4 + 24);
    v35 = *(v4 + 32);
    v36 = sub_26C0ABD90();
    v38 = sub_26C067104(34, 0xE100000000000000, v36, v37);
    v40 = v39;

    v41 = v51;
    sub_26C09C8C0(v38, v40, v34, v35, &v50);
    if (v41)
    {
      goto LABEL_10;
    }

    return swift_dynamicCast();
  }

  v45[0] = v14;
  v45[1] = a4;
  v45[2] = a2;
  v17 = *(v4 + 32);
  v49 = *(v4 + 24);
  v18 = sub_26C0ABD90();
  v20 = sub_26C067104(34, 0xE100000000000000, v18, v19);
  v22 = v21;

  if (v10 == a1)
  {
    v42 = v51;
    sub_26C09C9DC(v20, v22, v49, v17, v16);
    if (v42)
    {
      goto LABEL_10;
    }

    (*(v45[0] + 32))(v13, v16, v10);
    return swift_dynamicCast();
  }

  v23 = v51;
  sub_26C09DD70(v20, v22, MEMORY[0x277D84F90], v49, v17);
  if (v23)
  {
LABEL_10:
  }

  v25 = v24;

  if (!v25)
  {
    v30 = sub_26C0ABB60();
    swift_allocError();
    v32 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479628, &unk_26C0AD840);
    *v32 = a1;

    sub_26C0ABB50();
    v33 = MEMORY[0x277D84160];
    goto LABEL_15;
  }

  v26 = v46;
  sub_26C0AB870();
  v27 = sub_26C0AB850();
  v29 = v28;

  (*(v47 + 8))(v26, v48);
  if (v29 >> 60 == 15)
  {
    v30 = sub_26C0ABB60();
    swift_allocError();
    v32 = v31;

    sub_26C0ABB50();
    v33 = MEMORY[0x277D84168];
LABEL_15:
    (*(*(v30 - 8) + 104))(v32, *v33, v30);
    return swift_willThrow();
  }

  sub_26C0AB650();
  swift_allocObject();
  sub_26C0AB640();
  sub_26C0AB630();

  return sub_26C0A0CD8(v27, v29);
}

uint64_t sub_26C09D478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 + 16);
  swift_bridgeObjectRetain_n();
  if (!v10)
  {
    v48 = v5;
LABEL_8:
    v16 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v11 = sub_26C06772C(a1, a2);
  if (v12)
  {
    v13 = v11;
    swift_bridgeObjectRelease_n();
    return sub_26C09FA5C(*(*(a4 + 56) + 8 * v13), a4, a5);
  }

  v15 = *(a4 + 16);
  v48 = v5;
  if (!v15)
  {
    goto LABEL_8;
  }

  v52 = sub_26C072BB4(v15, 0);
  v50 = sub_26C072C38(v55, v52 + 4, v15, a4);
  v5 = v55[0];

  sub_26C072D90(v5);
  if (v50 != v15)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v16 = v52;
LABEL_9:
  v46 = a5;
  v47 = a4;
  v17 = v16[2];
  if (v17)
  {
    v18 = 0;
    v19 = v16 + 5;
    v51 = v16[2];
    v44 = v17 - 1;
    v20 = MEMORY[0x277D84F90];
    v53 = v16;
    v45 = v16 + 5;
    do
    {
      v49 = v20;
      v21 = &v19[2 * v18];
      v22 = v18;
      while (1)
      {
        if (v22 >= v16[2])
        {
          __break(1u);
          goto LABEL_38;
        }

        v23 = *(v21 - 1);
        v24 = *v21;
        v18 = v22 + 1;
        v55[0] = 46;
        v55[1] = 0xE100000000000000;

        v25 = a1;
        v26 = a1;
        v27 = a2;
        MEMORY[0x26D69A890](v26, a2);
        v28 = sub_26C0AB940();

        if (v28)
        {
          break;
        }

        v21 += 2;
        ++v22;
        v16 = v53;
        a2 = v27;
        a1 = v25;
        if (v51 == v18)
        {
          v20 = v49;
          goto LABEL_23;
        }
      }

      v29 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26C06B938(0, *(v49 + 2) + 1, 1);
        v29 = v56;
      }

      v32 = *(v29 + 2);
      v31 = *(v29 + 3);
      if (v32 >= v31 >> 1)
      {
        sub_26C06B938((v31 > 1), v32 + 1, 1);
        v29 = v56;
      }

      *(v29 + 2) = v32 + 1;
      v33 = &v29[16 * v32];
      *(v33 + 4) = v23;
      *(v33 + 5) = v24;
      v19 = v45;
      a2 = v27;
      a1 = v25;
      v16 = v53;
      v20 = v29;
    }

    while (v44 != v22);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

LABEL_23:

  v34 = *(v20 + 2);

  if (v34)
  {
    if (v34 == 1)
    {

      if (*(v20 + 2))
      {
        if (*(v47 + 16))
        {
          v5 = v20;
          v35 = *(v20 + 5);
          v36 = *(v5 + 4);

          v37 = sub_26C06772C(v36, v35);
          v39 = v38;

          if (v39)
          {
            return sub_26C09FA5C(*(*(v47 + 56) + 8 * v37), v47, v46);
          }

          goto LABEL_40;
        }
      }

      else
      {
LABEL_38:
        __break(1u);
      }

      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v42 = 2;
LABEL_36:
    sub_26C072E10();
    swift_allocError();
    *v43 = a1;
    *(v43 + 8) = a2;
    *(v43 + 16) = v20;
    *(v43 + 24) = v42;
    return swift_willThrow();
  }

  v40 = *(v47 + 16);
  if (v40)
  {
    v41 = sub_26C072BB4(*(v47 + 16), 0);
    v54 = sub_26C072C38(v55, v41 + 4, v40, v47);
    v5 = v55[0];

    sub_26C072D90(v5);
    if (v54 != v40)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v55[0] = v41;
  v5 = v48;
  sub_26C0AA298(v55);
  if (!v48)
  {
    v20 = v55[0];
    v42 = 1;
    goto LABEL_36;
  }

LABEL_43:
  MEMORY[0x26D69B350](v5);

  __break(1u);
  return result;
}

char *sub_26C09D8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 + 16);
  swift_bridgeObjectRetain_n();
  if (!v10)
  {
LABEL_6:
    v54 = a1;
    v51 = a2;
    v46 = v6;
LABEL_10:
    v17 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v11 = sub_26C06772C(a1, a2);
  if (v12)
  {
    v13 = v11;
    swift_bridgeObjectRelease_n();
    v14 = *(*(a4 + 56) + 8 * v13);
    if ((v14 & 0x8000000000000000) != 0)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v15 = a5;
    if (v14 < *(a5 + 16))
    {
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_6;
  }

  v46 = v6;
  v16 = *(a4 + 16);
  v54 = a1;
  v51 = a2;
  if (!v16)
  {
    goto LABEL_10;
  }

  v45 = sub_26C072BB4(v16, 0);
  v49 = sub_26C072C38(v53, v45 + 4, v16, a4);
  v6 = v53[0];

  sub_26C072D90(v6);
  if (v49 != v16)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v17 = v45;
LABEL_11:
  v47 = a4;
  v18 = v17[2];
  if (v18)
  {
    v19 = 0;
    v20 = v17 + 5;
    v21 = MEMORY[0x277D84F90];
    do
    {
      v50 = v21;
      v22 = &v20[2 * v19];
      v23 = v19;
      while (1)
      {
        if (v23 >= v17[2])
        {
          __break(1u);
          goto LABEL_44;
        }

        v25 = *(v22 - 1);
        v24 = *v22;
        v19 = v23 + 1;
        v53[0] = 46;
        v53[1] = 0xE100000000000000;

        MEMORY[0x26D69A890](v54, v51);
        v26 = sub_26C0AB940();

        if (v26)
        {
          break;
        }

        v22 += 2;
        ++v23;
        if (v18 == v19)
        {
          v21 = v50;
          goto LABEL_25;
        }
      }

      v21 = v50;
      v52 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26C06B938(0, *(v50 + 2) + 1, 1);
        v21 = v50;
      }

      v28 = *(v21 + 2);
      v27 = *(v21 + 3);
      if (v28 >= v27 >> 1)
      {
        sub_26C06B938((v27 > 1), v28 + 1, 1);
        v21 = v50;
      }

      *(v21 + 2) = v28 + 1;
      v29 = &v21[16 * v28];
      *(v29 + 4) = v25;
      *(v29 + 5) = v24;
      v20 = v17 + 5;
    }

    while (v18 - 1 != v23);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

LABEL_25:

  v30 = *(v21 + 2);

  if (!v30)
  {

    v31 = *(v47 + 16);
    v32 = v54;
    if (v31)
    {
      v39 = sub_26C072BB4(*(v47 + 16), 0);
      v40 = sub_26C072C38(v53, v39 + 4, v31, v47);
      v41 = v53[0];

      sub_26C072D90(v41);
      if (v40 != v31)
      {
        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
      v39 = MEMORY[0x277D84F90];
    }

    v6 = v46;
    v53[0] = v39;
    sub_26C0AA298(v53);
    if (v46)
    {
LABEL_51:
      MEMORY[0x26D69B350](v6);

      __break(1u);
      return result;
    }

    v43 = v53[0];
    v42 = 1;
LABEL_42:
    sub_26C072E10();
    swift_allocError();
    *v44 = v32;
    *(v44 + 8) = v51;
    *(v44 + 16) = v43;
    *(v44 + 24) = v42;
    return swift_willThrow();
  }

  v31 = v21;
  v32 = v54;
  if (v30 != 1)
  {
LABEL_38:
    v42 = 2;
    v43 = v31;
    goto LABEL_42;
  }

  if (!*(v21 + 2))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!*(v47 + 16))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v6 = v21;
  v33 = *(v21 + 5);
  v34 = *(v21 + 4);

  v35 = sub_26C06772C(v34, v33);
  v37 = v36;

  if ((v37 & 1) == 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = *(*(v47 + 56) + 8 * v35);
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v15 = a5;
  if (v14 >= *(a5 + 16))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_32:
  sub_26C06DF6C(v15 + 40 * v14 + 32, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
  if (swift_dynamicCast())
  {
    return v52;
  }

  else
  {
    return 0;
  }
}

void *sub_26C09DD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 + 16);
  swift_bridgeObjectRetain_n();
  if (!v10)
  {
LABEL_6:
    v47 = a4;
    v53 = a2;
    v45 = v5;
LABEL_10:
    v17 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v11 = sub_26C06772C(a1, a2);
  if (v12)
  {
    v13 = v11;
    swift_bridgeObjectRelease_n();
    v14 = *(*(a4 + 56) + 8 * v13);
    if ((v14 & 0x8000000000000000) != 0)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v14 < *(a5 + 16))
    {
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_6;
  }

  v45 = v5;
  v15 = *(a4 + 16);
  v47 = a4;
  v53 = a2;
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = sub_26C072BB4(v15, 0);
  v49 = sub_26C072C38(v52, v16 + 4, v15, a4);
  v5 = v52[0];

  sub_26C072D90(v5);
  if (v49 != v15)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v17 = v16;
LABEL_11:
  v46 = a5;
  v50 = a1;
  v18 = v17[2];
  if (v18)
  {
    v19 = 0;
    v20 = v17 + 5;
    v21 = MEMORY[0x277D84F90];
    do
    {
      v48 = v21;
      v22 = &v20[2 * v19];
      v23 = v19;
      while (1)
      {
        if (v23 >= v17[2])
        {
          __break(1u);
          goto LABEL_44;
        }

        v24 = *(v22 - 1);
        v25 = *v22;
        v19 = v23 + 1;
        v52[0] = 46;
        v52[1] = 0xE100000000000000;

        MEMORY[0x26D69A890](v50, v53);
        v26 = sub_26C0AB940();

        if (v26)
        {
          break;
        }

        v22 += 2;
        ++v23;
        if (v18 == v19)
        {
          v21 = v48;
          goto LABEL_25;
        }
      }

      v21 = v48;
      v51 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26C06B938(0, v48[2] + 1, 1);
        v21 = v48;
      }

      v28 = v21[2];
      v27 = v21[3];
      if (v28 >= v27 >> 1)
      {
        sub_26C06B938((v27 > 1), v28 + 1, 1);
        v21 = v48;
      }

      v21[2] = v28 + 1;
      v29 = &v21[2 * v28];
      v29[4] = v24;
      v29[5] = v25;
      v20 = v17 + 5;
    }

    while (v18 - 1 != v23);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

LABEL_25:

  v30 = v21[2];
  v31 = v53;

  if (!v30)
  {

    v39 = *(v47 + 16);
    if (v39)
    {
      v40 = sub_26C072BB4(*(v47 + 16), 0);
      v32 = sub_26C072C38(v52, v40 + 4, v39, v47);
      v41 = v52[0];

      sub_26C072D90(v41);
      if (v32 != v39)
      {
        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
      v40 = MEMORY[0x277D84F90];
    }

    v5 = v45;
    v52[0] = v40;
    sub_26C0AA298(v52);
    if (v45)
    {
LABEL_51:
      MEMORY[0x26D69B350](v5);

      __break(1u);
      return result;
    }

    v43 = v52[0];
    v42 = 1;
LABEL_42:
    sub_26C072E10();
    swift_allocError();
    *v44 = v50;
    *(v44 + 8) = v31;
    *(v44 + 16) = v43;
    *(v44 + 24) = v42;
    return swift_willThrow();
  }

  v32 = v21;
  if (v30 != 1)
  {
LABEL_38:
    v42 = 2;
    v43 = v32;
    goto LABEL_42;
  }

  if (!v21[2])
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  a5 = v46;
  if (!*(v47 + 16))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v33 = v21[4];
  v34 = v21[5];

  v35 = sub_26C06772C(v33, v34);
  v37 = v36;

  if ((v37 & 1) == 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = *(*(v47 + 56) + 8 * v35);
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v14 >= *(v46 + 16))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_32:
  sub_26C06DF6C(a5 + 40 * v14 + 32, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
  if (swift_dynamicCast())
  {
    return v51;
  }

  else
  {
    return 0;
  }
}

void sub_26C09E1FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v12 = *(a4 + 16);
  swift_bridgeObjectRetain_n();
  if (!v12)
  {
    v50 = v6;
LABEL_8:
    v17 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v13 = sub_26C06772C(a1, a2);
  if (v14)
  {
    v15 = v13;
    swift_bridgeObjectRelease_n();
    sub_26C09FAEC(*(*(a4 + 56) + 8 * v15), a5, x8_0);
    return;
  }

  v16 = *(a4 + 16);
  v50 = v6;
  if (!v16)
  {
    goto LABEL_8;
  }

  v54 = sub_26C072BB4(v16, 0);
  v52 = sub_26C072C38(v57, v54 + 4, v16, a4);
  v6 = v57[0];

  sub_26C072D90(v6);
  if (v52 != v16)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v17 = v54;
LABEL_9:
  v47 = a5;
  v48 = x8_0;
  v49 = a4;
  v18 = v17[2];
  if (v18)
  {
    v19 = 0;
    v20 = v17 + 5;
    v53 = v17[2];
    v45 = v18 - 1;
    v21 = MEMORY[0x277D84F90];
    v55 = v17;
    v46 = v17 + 5;
    do
    {
      v51 = v21;
      v22 = &v20[2 * v19];
      v23 = v19;
      while (1)
      {
        if (v23 >= v17[2])
        {
          __break(1u);
          goto LABEL_38;
        }

        v25 = *(v22 - 1);
        v24 = *v22;
        v19 = v23 + 1;
        v57[0] = 46;
        v57[1] = 0xE100000000000000;

        v26 = a1;
        v27 = a1;
        v28 = a2;
        MEMORY[0x26D69A890](v27, a2);
        v29 = sub_26C0AB940();

        if (v29)
        {
          break;
        }

        v22 += 2;
        ++v23;
        v17 = v55;
        a2 = v28;
        a1 = v26;
        if (v53 == v19)
        {
          v21 = v51;
          goto LABEL_23;
        }
      }

      v30 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26C06B938(0, *(v51 + 2) + 1, 1);
        v30 = v58;
      }

      v33 = *(v30 + 2);
      v32 = *(v30 + 3);
      if (v33 >= v32 >> 1)
      {
        sub_26C06B938((v32 > 1), v33 + 1, 1);
        v30 = v58;
      }

      *(v30 + 2) = v33 + 1;
      v34 = &v30[16 * v33];
      *(v34 + 4) = v25;
      *(v34 + 5) = v24;
      v20 = v46;
      a2 = v28;
      a1 = v26;
      v17 = v55;
      v21 = v30;
    }

    while (v45 != v23);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

LABEL_23:

  v35 = *(v21 + 2);

  if (v35)
  {
    if (v35 == 1)
    {

      if (*(v21 + 2))
      {
        if (*(v49 + 16))
        {
          v6 = v21;
          v36 = *(v21 + 5);
          v37 = *(v6 + 4);

          v38 = sub_26C06772C(v37, v36);
          v40 = v39;

          if (v40)
          {
            sub_26C09FAEC(*(*(v49 + 56) + 8 * v38), v47, v48);
            return;
          }

          goto LABEL_40;
        }
      }

      else
      {
LABEL_38:
        __break(1u);
      }

      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v43 = 2;
LABEL_36:
    sub_26C072E10();
    swift_allocError();
    *v44 = a1;
    *(v44 + 8) = a2;
    *(v44 + 16) = v21;
    *(v44 + 24) = v43;
    swift_willThrow();
    return;
  }

  v41 = *(v49 + 16);
  if (v41)
  {
    v42 = sub_26C072BB4(*(v49 + 16), 0);
    v56 = sub_26C072C38(v57, v42 + 4, v41, v49);
    v6 = v57[0];

    sub_26C072D90(v6);
    if (v56 != v41)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  v57[0] = v42;
  v6 = v50;
  sub_26C0AA298(v57);
  if (!v50)
  {
    v21 = v57[0];
    v43 = 1;
    goto LABEL_36;
  }

LABEL_43:
  MEMORY[0x26D69B350](v6);

  __break(1u);
}

uint64_t sub_26C09E668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *x8_0@<X8>)
{
  v12 = *(a4 + 16);
  swift_bridgeObjectRetain_n();
  if (!v12)
  {
    v51 = v6;
LABEL_8:
    v18 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v13 = sub_26C06772C(a1, a2);
  if (v14)
  {
    v15 = v13;
    swift_bridgeObjectRelease_n();
    return sub_26C09FC84(*(*(a4 + 56) + 8 * v15), a5, x8_0);
  }

  v17 = *(a4 + 16);
  v51 = v6;
  if (!v17)
  {
    goto LABEL_8;
  }

  v55 = sub_26C072BB4(v17, 0);
  v53 = sub_26C072C38(v58, v55 + 4, v17, a4);
  v6 = v58[0];

  sub_26C072D90(v6);
  if (v53 != v17)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v18 = v55;
LABEL_9:
  v48 = a5;
  v49 = x8_0;
  v50 = a4;
  v19 = v18[2];
  if (v19)
  {
    v20 = 0;
    v21 = v18 + 5;
    v54 = v18[2];
    v46 = v19 - 1;
    v22 = MEMORY[0x277D84F90];
    v56 = v18;
    v47 = v18 + 5;
    do
    {
      v52 = v22;
      v23 = &v21[2 * v20];
      v24 = v20;
      while (1)
      {
        if (v24 >= v18[2])
        {
          __break(1u);
          goto LABEL_38;
        }

        v26 = *(v23 - 1);
        v25 = *v23;
        v20 = v24 + 1;
        v58[0] = 46;
        v58[1] = 0xE100000000000000;

        v27 = a1;
        v28 = a1;
        v29 = a2;
        MEMORY[0x26D69A890](v28, a2);
        v30 = sub_26C0AB940();

        if (v30)
        {
          break;
        }

        v23 += 2;
        ++v24;
        v18 = v56;
        a2 = v29;
        a1 = v27;
        if (v54 == v20)
        {
          v22 = v52;
          goto LABEL_23;
        }
      }

      v31 = v52;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v52;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26C06B938(0, *(v52 + 2) + 1, 1);
        v31 = v59;
      }

      v34 = *(v31 + 2);
      v33 = *(v31 + 3);
      if (v34 >= v33 >> 1)
      {
        sub_26C06B938((v33 > 1), v34 + 1, 1);
        v31 = v59;
      }

      *(v31 + 2) = v34 + 1;
      v35 = &v31[16 * v34];
      *(v35 + 4) = v26;
      *(v35 + 5) = v25;
      v21 = v47;
      a2 = v29;
      a1 = v27;
      v18 = v56;
      v22 = v31;
    }

    while (v46 != v24);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

LABEL_23:

  v36 = *(v22 + 2);

  if (v36)
  {
    if (v36 == 1)
    {

      if (*(v22 + 2))
      {
        if (*(v50 + 16))
        {
          v6 = v22;
          v37 = *(v22 + 5);
          v38 = *(v6 + 4);

          v39 = sub_26C06772C(v38, v37);
          v41 = v40;

          if (v41)
          {
            return sub_26C09FC84(*(*(v50 + 56) + 8 * v39), v48, v49);
          }

          goto LABEL_40;
        }
      }

      else
      {
LABEL_38:
        __break(1u);
      }

      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v44 = 2;
LABEL_36:
    sub_26C072E10();
    swift_allocError();
    *v45 = a1;
    *(v45 + 8) = a2;
    *(v45 + 16) = v22;
    *(v45 + 24) = v44;
    return swift_willThrow();
  }

  v42 = *(v50 + 16);
  if (v42)
  {
    v43 = sub_26C072BB4(*(v50 + 16), 0);
    v57 = sub_26C072C38(v58, v43 + 4, v42, v50);
    v6 = v58[0];

    sub_26C072D90(v6);
    if (v57 != v42)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
  }

  v58[0] = v43;
  v6 = v51;
  sub_26C0AA298(v58);
  if (!v51)
  {
    v22 = v58[0];
    v44 = 1;
    goto LABEL_36;
  }

LABEL_43:
  MEMORY[0x26D69B350](v6);

  __break(1u);
  return result;
}

uint64_t sub_26C09EAD4()
{
  v0 = sub_26C0ABB60();
  swift_allocError();
  v2 = v1;

  sub_26C0ABB50();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D84168], v0);
  return swift_willThrow();
}

uint64_t sub_26C09EB94()
{
  v0 = sub_26C0ABB60();
  swift_allocError();
  v2 = v1;

  sub_26C0ABB50();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D84168], v0);
  return swift_willThrow();
}

uint64_t sub_26C09EC54()
{
  v0 = sub_26C0ABB60();
  swift_allocError();
  v2 = v1;

  sub_26C0ABB50();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D84168], v0);
  return swift_willThrow();
}

uint64_t sub_26C09ED14()
{
  v0 = sub_26C0ABB60();
  swift_allocError();
  v2 = v1;

  sub_26C0ABB50();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D84168], v0);
  return swift_willThrow();
}

void *sub_26C09EDD4()
{

  return v0;
}

uint64_t sub_26C09EE0C()
{
  sub_26C09EDD4();

  return swift_deallocClassInstance();
}

unint64_t sub_26C09F4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer(0, *(a2 + 80), *(a2 + 88), a4);
  v8 = a4(a1, v7, a3);
  return v8 | ((HIDWORD(v8) & 1) << 32);
}

uint64_t sub_26C09F584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer(0, *(a2 + 80), *(a2 + 88), a4);
  result = a4(a1, v8, a3);
  if (v4)
  {
    return v10;
  }

  return result;
}

uint64_t sub_26C09F618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer(0, *(a2 + 80), *(a2 + 88), a4);
  result = a4(a1, v8, a3);
  if (v4)
  {
    return v10;
  }

  return result;
}

uint64_t sub_26C09F794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer(0, a2, a3, a4);
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = swift_allocObject();
  v7[2] = MEMORY[0x277D84F90];
  v7[3] = v6;
  v7[4] = v5;

  swift_getWitnessTable();
  return sub_26C0ABC30();
}

uint64_t sub_26C09F84C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26C09F8D4()
{
  v0 = sub_26C0ABB60();
  swift_allocError();
  v2 = v1;

  sub_26C0ABB50();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D84168], v0);
  return swift_willThrow();
}

uint64_t sub_26C09F998()
{
  v0 = sub_26C0ABB60();
  swift_allocError();
  v2 = v1;

  sub_26C0ABB50();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D84168], v0);
  return swift_willThrow();
}

unint64_t sub_26C09FA5C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = v3;
  v8 = v4;
  sub_26C06DF6C(a3 + 40 * result + 32, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
  if (swift_dynamicCast())
  {
    return v5 != 0;
  }

  else
  {
    return 2;
  }
}

void sub_26C09FAEC(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = a3;
  if (*(a2 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  sub_26C06DF6C(a2 + 40 * a1 + 32, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
  if (!swift_dynamicCast())
  {
    v7 = 1;
    goto LABEL_8;
  }

  if (qword_280B5A8E8 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  swift_beginAccess();
  v4 = qword_280B5A8F0;
  v5 = sub_26C0AB830();
  v6 = [v4 dateFromString_];

  if (v6)
  {
    sub_26C0AB700();

    v7 = 0;
LABEL_8:
    v8 = sub_26C0AB710();
    (*(*(v8 - 8) + 56))(v3, v7, 1, v8);
    return;
  }

  __break(1u);
}

unint64_t sub_26C09FC84@<X0>(unint64_t result@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_26C06DF6C(a2 + 40 * result + 32, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
  if (swift_dynamicCast())
  {
    v4 = sub_26C06C7A0(v7);
    v6 = v5;
  }

  else
  {

    v4 = 0;
    v6 = 0xF000000000000000;
  }

  *a3 = v4;
  a3[1] = v6;
  return result;
}

uint64_t sub_26C09FD70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26C09FE58(char a1)
{
  v2 = sub_26C0ABB80();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479620, &qword_26C0AD838);
  *(v4 + 24) = MEMORY[0x277D84900];
  *v4 = a1;

  sub_26C0ABB50();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D841A8], v2);
  return swift_willThrow();
}

uint64_t sub_26C09FF44(__int16 a1)
{
  v2 = sub_26C0ABB80();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479620, &qword_26C0AD838);
  *(v4 + 24) = MEMORY[0x277D84958];
  *v4 = a1;

  sub_26C0ABB50();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D841A8], v2);
  return swift_willThrow();
}

uint64_t sub_26C0A0030(int a1)
{
  v2 = sub_26C0ABB80();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479620, &qword_26C0AD838);
  *(v4 + 24) = MEMORY[0x277D849A8];
  *v4 = a1;

  sub_26C0ABB50();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D841A8], v2);
  return swift_willThrow();
}

uint64_t sub_26C0A011C(uint64_t a1)
{
  v2 = sub_26C0ABB80();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479620, &qword_26C0AD838);
  v4[3] = MEMORY[0x277D83E88];
  *v4 = a1;

  sub_26C0ABB50();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D841A8], v2);
  return swift_willThrow();
}

uint64_t sub_26C0A0208(char a1)
{
  v2 = sub_26C0ABB80();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479620, &qword_26C0AD838);
  *(v4 + 24) = MEMORY[0x277D84B78];
  *v4 = a1;

  sub_26C0ABB50();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D841A8], v2);
  return swift_willThrow();
}

uint64_t sub_26C0A02F4(__int16 a1)
{
  v2 = sub_26C0ABB80();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479620, &qword_26C0AD838);
  *(v4 + 24) = MEMORY[0x277D84C58];
  *v4 = a1;

  sub_26C0ABB50();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D841A8], v2);
  return swift_willThrow();
}

uint64_t sub_26C0A03E0(int a1)
{
  v2 = sub_26C0ABB80();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479620, &qword_26C0AD838);
  *(v4 + 24) = MEMORY[0x277D84CC0];
  *v4 = a1;

  sub_26C0ABB50();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D841A8], v2);
  return swift_willThrow();
}

uint64_t sub_26C0A04CC(uint64_t a1)
{
  v2 = sub_26C0ABB80();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479620, &qword_26C0AD838);
  v4[3] = MEMORY[0x277D84D38];
  *v4 = a1;

  sub_26C0ABB50();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D841A8], v2);
  return swift_willThrow();
}

uint64_t sub_26C0A05B8()
{
  v0 = sub_26C0ABB60();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479628, &unk_26C0AD840);
  *v2 = MEMORY[0x277D84900];

  sub_26C0ABB50();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D84160], v0);
  return swift_willThrow();
}

uint64_t sub_26C0A069C()
{
  v0 = sub_26C0ABB60();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479628, &unk_26C0AD840);
  *v2 = MEMORY[0x277D84958];

  sub_26C0ABB50();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D84160], v0);
  return swift_willThrow();
}

uint64_t sub_26C0A0780()
{
  v0 = sub_26C0ABB60();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479628, &unk_26C0AD840);
  *v2 = MEMORY[0x277D849A8];

  sub_26C0ABB50();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D84160], v0);
  return swift_willThrow();
}

uint64_t sub_26C0A0864()
{
  v0 = sub_26C0ABB60();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479628, &unk_26C0AD840);
  *v2 = MEMORY[0x277D83E88];

  sub_26C0ABB50();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D84160], v0);
  return swift_willThrow();
}

uint64_t sub_26C0A0948()
{
  v0 = sub_26C0ABB60();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479628, &unk_26C0AD840);
  *v2 = MEMORY[0x277D84B78];

  sub_26C0ABB50();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D84160], v0);
  return swift_willThrow();
}

uint64_t sub_26C0A0A2C()
{
  v0 = sub_26C0ABB60();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479628, &unk_26C0AD840);
  *v2 = MEMORY[0x277D84C58];

  sub_26C0ABB50();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D84160], v0);
  return swift_willThrow();
}

uint64_t sub_26C0A0B10()
{
  v0 = sub_26C0ABB60();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479628, &unk_26C0AD840);
  *v2 = MEMORY[0x277D84CC0];

  sub_26C0ABB50();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D84160], v0);
  return swift_willThrow();
}

uint64_t sub_26C0A0BF4()
{
  v0 = sub_26C0ABB60();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479628, &unk_26C0AD840);
  *v2 = MEMORY[0x277D84D38];

  sub_26C0ABB50();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D84160], v0);
  return swift_willThrow();
}

uint64_t sub_26C0A0CD8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26C0710CC(result, a2);
  }

  return result;
}

uint64_t sub_26C0A0CEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479630, &qword_26C0AD850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26C0A0DB8()
{
  result = qword_280479640;
  if (!qword_280479640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280479638, &qword_26C0AD858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280479640);
  }

  return result;
}

uint64_t sub_26C0A0E5C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1)
  {

    return sub_26C070730(0, a2, a3, a4);
  }

  else
  {
    v6 = *(a3 + 16);
    v6(v15, a2, a3);
    v10 = v15[4];
    v9 = v15[5];

    sub_26C06B68C(v15);
    if (!v9)
    {
      v6(v14, a2, a3);
      v10 = v14[2];
      v9 = v14[3];

      sub_26C06B68C(v14);
    }

    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    a4[4] = &protocol witness table for Expression<A>;
    v11 = sub_26C067104(34, 0xE100000000000000, v10, v9);
    v13 = v12;

    *a4 = v11;
    a4[1] = v13;
    a4[2] = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_26C0A0F9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000004ELL;
  v3 = 0x4F49544341204F4ELL;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x5443495254534552;
    }

    else
    {
      v5 = 0x4F49544341204F4ELL;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE90000000000004ELL;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE800000000000000;
    v5 = 0x4C4C554E20544553;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x4146454420544553;
    }

    else
    {
      v5 = 0x45444143534143;
    }

    if (v4 == 3)
    {
      v6 = 0xEB00000000544C55;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x4C4C554E20544553;
  v9 = 0x4146454420544553;
  v10 = 0xEB00000000544C55;
  if (a2 != 3)
  {
    v9 = 0x45444143534143;
    v10 = 0xE700000000000000;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x5443495254534552;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_26C0ABC70();
  }

  return v13 & 1;
}

uint64_t sub_26C0A1130(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x4B4341424C4C4F52;
    }

    else
    {
      v4 = 0x4543414C504552;
    }

    if (v2)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x54524F4241;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1279869254;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x45524F4E4749;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x4B4341424C4C4F52;
    }

    else
    {
      v9 = 0x4543414C504552;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1279869254;
    if (a2 != 3)
    {
      v6 = 0x45524F4E4749;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x54524F4241;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_26C0ABC70();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

SwiftSQLite::Insert __swiftcall QueryType.insert(_:)(Swift::OpaquePointer a1)
{
  v7 = 5;
  v4 = sub_26C0700AC(&v7, a1._rawValue, v1, v2, v3);
  result.bindings._rawValue = v6;
  result.template._object = v5;
  result.template._countAndFlagsBits = v4;
  return result;
}

SwiftSQLite::Insert __swiftcall QueryType.insertMany(_:)(Swift::OpaquePointer a1)
{
  v7 = 5;
  v4 = sub_26C0A3D04(&v7, a1._rawValue, v1, v2, v3);
  result.bindings._rawValue = v6;
  result.template._object = v5;
  result.template._countAndFlagsBits = v4;
  return result;
}

uint64_t QueryType.upsert(_:onConflictOf:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = a2;
  v33 = a2;

  v10 = sub_26C0A4D38(sub_26C0A4D18, v32, a1);
  v11 = *(v10 + 16);
  if (v11)
  {
    v29 = a5;
    v30 = v7;
    v31 = a3;
    v40 = MEMORY[0x277D84F90];
    sub_26C088A20(0, v11, 0);
    v12 = v40;
    v13 = v10 + 32;
    do
    {
      sub_26C06FE38(v13, v37);
      sub_26C06B6BC(v37, v34);
      v14 = sub_26C067104(34, 0xE100000000000000, 0x646564756C637865, 0xE800000000000000);
      v16 = v15;
      sub_26C06B6BC(v34, v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C0AC580;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
      *(inited + 56) = v18;
      *(inited + 64) = &protocol witness table for Expression<A>;
      *(inited + 32) = v14;
      *(inited + 40) = v16;
      *(inited + 48) = MEMORY[0x277D84F90];
      v20 = v35;
      v19 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v21 = *(v19 + 8);
      *(inited + 96) = v18;
      *(inited + 104) = &protocol witness table for Expression<A>;
      v21(v20, v19);
      sub_26C0688D8(inited, v39 + 1);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
      swift_arrayDestroy();
      sub_26C0717EC(v37);
      __swift_destroy_boxed_opaque_existential_1(v34);
      v40 = v12;
      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_26C088A20((v22 > 1), v23 + 1, 1);
        v12 = v40;
      }

      *(v12 + 16) = v23 + 1;
      v24 = (v12 + 80 * v23);
      v24[2] = v38[0];
      v25 = v38[1];
      v26 = v39[0];
      v27 = v39[2];
      v24[5] = v39[1];
      v24[6] = v27;
      v24[3] = v25;
      v24[4] = v26;
      v13 += 80;
      --v11;
    }

    while (v11);

    v7 = v30;
    a3 = v31;
    a5 = v29;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  QueryType.upsert(_:onConflictOf:set:)(a1, v7, v12, a3, a4, a5);
}

SwiftSQLite::Update __swiftcall QueryType.update(_:)(Swift::OpaquePointer a1)
{
  v5 = v2;
  v6 = v1;
  v41 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v59 = &protocol witness table for Expression<A>;
  v55 = 0x455441445055;
  v56 = 0xE600000000000000;
  v9 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
  v58 = v8;
  sub_26C070730(0, v6, v5, v60);
  v60[8] = v8;
  v60[9] = &protocol witness table for Expression<A>;
  v60[5] = 5522771;
  v60[6] = 0xE300000000000000;
  v60[7] = v9;
  v10 = *(a1._rawValue + 2);
  if (v10)
  {
    v38 = v6;
    v39 = v5;
    v40 = v4;
    *&v43[0] = v9;
    sub_26C07272C(0, v10, 0);
    v11 = a1._rawValue + 32;
    v42 = xmmword_26C0AC580;
    do
    {
      sub_26C06FE38(v11, &v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
      inited = swift_initStackObject();
      *(inited + 16) = v42;
      sub_26C06B6BC(&v46, inited + 32);
      sub_26C06B6BC(&v49, inited + 72);
      sub_26C0688D8(inited, &v50);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
      swift_arrayDestroy();
      sub_26C0717EC(&v46);
      *&v43[0] = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_26C07272C((v13 > 1), v14 + 1, 1);
      }

      v15 = v52;
      v16 = v53;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(&v50, v52);
      MEMORY[0x28223BE20](v17);
      v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v19);
      sub_26C072778(v14, v19, v43, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(&v50);
      v9 = *&v43[0];
      v11 += 80;
      --v10;
    }

    while (v10);
    v5 = v39;
    v6 = v38;
  }

  sub_26C0688D8(v9, v61);

  sub_26C071840(v5, &v62);
  sub_26C0A3164(v6, v5, &v63);
  sub_26C0A32FC(v5, &v64);
  v21 = MEMORY[0x277D84F90];
  for (i = 32; i != 312; i += 40)
  {
    sub_26C067878(&v54[i], &v46, &qword_280479360, &qword_26C0AC5D8);
    v43[0] = v46;
    v43[1] = v47;
    v44 = v48;
    if (*(&v47 + 1))
    {
      sub_26C06A3A8(v43, &v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45[0] = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_26C06A384(0, v21[2] + 1, 1, v21);
        v45[0] = v21;
      }

      v25 = v21[2];
      v24 = v21[3];
      if (v25 >= v24 >> 1)
      {
        v21 = sub_26C06A384((v24 > 1), v25 + 1, 1, v21);
        v45[0] = v21;
      }

      v26 = v52;
      v27 = v53;
      v28 = __swift_mutable_project_boxed_opaque_existential_1(&v50, v52);
      MEMORY[0x28223BE20](v28);
      v30 = &v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 16))(v30);
      sub_26C06A410(v25, v30, v45, v26, v27);
      __swift_destroy_boxed_opaque_existential_1(&v50);
    }

    else
    {
      sub_26C06A56C(v43, &qword_280479360, &qword_26C0AC5D8);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  sub_26C0688D8(v21, &v46);

  v32 = *(&v47 + 1);
  v33 = v48;
  __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
  (*(v33 + 8))(&v50, v32, v33);
  v34 = v41;
  *v41 = v50;
  *(v34 + 1) = v51;
  v35 = __swift_destroy_boxed_opaque_existential_1(&v46);
  result.bindings._rawValue = v37;
  result.template._object = v36;
  result.template._countAndFlagsBits = v35;
  return result;
}

uint64_t sub_26C0A1B18(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = v3[1];
  v6 = sub_26C067104(34, 0xE100000000000000, a1, a2);
  if (!*(v4 + 16))
  {

    return 0;
  }

  v8 = sub_26C06772C(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v12 = *(*(v4 + 56) + 8 * v8);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < *(v5 + 16))
  {
    sub_26C067878(v5 + 40 * v12 + 32, v14, &qword_2804793C0, &qword_26C0AC810);
    v13 = v15 != 0;
    sub_26C06A56C(v14, &qword_2804793C0, &qword_26C0AC810);
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0A1C5C(void (*a1)(void *, void *), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26C0AC5C0;
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v9 + 64) = &protocol witness table for Expression<A>;
  a1(v12, v11);
  sub_26C0714E8(a5, v9, a3, a3, *(a4 + 8), *(a4 + 8));
}

uint64_t SchemaType.select<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_26C0A1D78(a1, a2, a3, a4, a5, 0);
}

{
  return sub_26C0A1E84(a1, a2, a3, a4, a5, 0);
}

uint64_t SchemaType.select<A>(distinct:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_26C0A1D78(a1, a2, a3, a4, a5, 1);
}

{
  return sub_26C0A1E84(a1, a2, a3, a4, a5, 1);
}

uint64_t sub_26C0A1D78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26C0AC5C0;
  *(v13 + 56) = type metadata accessor for Expression(0, a3, v14, v15);
  *(v13 + 64) = &protocol witness table for Expression<A>;
  *(v13 + 32) = v11;
  *(v13 + 40) = v10;
  *(v13 + 48) = v12;
  v18 = type metadata accessor for ScalarQuery(0, a3, v16, v17);
  v19 = *(a4 + 8);

  sub_26C0714E8(a6, v13, a2, v18, v19, &protocol witness table for ScalarQuery<A>);
}

uint64_t sub_26C0A1E84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26C0AC5C0;
  v13 = sub_26C0ABAF0();
  *(v12 + 56) = type metadata accessor for Expression(0, v13, v14, v15);
  *(v12 + 64) = &protocol witness table for Expression<A>;
  *(v12 + 32) = v10;
  *(v12 + 40) = v9;
  *(v12 + 48) = v11;
  v18 = type metadata accessor for ScalarQuery(0, v13, v16, v17);
  v19 = *(a4 + 8);

  sub_26C0714E8(a6, v12, a2, v18, v19, &protocol witness table for ScalarQuery<A>);
}

uint64_t SchemaType.count.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v15 = &protocol witness table for Expression<A>;
  v11 = 42;
  v12 = 0xE100000000000000;
  v13 = MEMORY[0x277D84F90];
  v14 = v4;
  MEMORY[0x26D69A890](40, 0xE100000000000000);
  v5 = __swift_project_boxed_opaque_existential_1(&v11, v14);
  v6 = v11;
  v7 = v12;

  MEMORY[0x26D69A890](v6, v7);

  MEMORY[0x26D69A890](41, 0xE100000000000000);
  v8 = v5[2];

  __swift_destroy_boxed_opaque_existential_1(&v11);
  v11 = 0x746E756F63;
  v12 = 0xE500000000000000;
  v13 = v8;
  SchemaType.select<A>(_:)(&v11, a1, MEMORY[0x277D83B88], a2, v9);
}

uint64_t QueryType.union(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  sub_26C06B6BC(a1, v17);
  v8 = (*(a3 + 32))(v16, a2, a3);
  v10 = v9;
  v11 = *(v9 + 160);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 160) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_26C072810(0, v11[2] + 1, 1, v11);
    *(v10 + 160) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_26C072810((v13 > 1), v14 + 1, 1, v11);
    *(v10 + 160) = v11;
  }

  v11[2] = v14 + 1;
  sub_26C06A3A8(v17, &v11[5 * v14 + 4]);
  return v8(v16, 0);
}

uint64_t QueryType.join(_:on:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];

  v14 = 1;
  v13[0] = v10;
  v13[1] = v9;
  v13[2] = v11;
  QueryType.join(_:_:on:)(&v14, a1, v13, a3, a4, a5);
}

uint64_t QueryType.join(_:on:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v9 = 1;
  v7 = v5;
  v8 = *(a2 + 8);
  return QueryType.join(_:_:on:)(&v9, a1, &v7, a3, a4, a5);
}

uint64_t QueryType.where(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];

  v11[0] = v8;
  v11[1] = v7;
  v11[2] = v9;
  QueryType.filter(_:)(v11, a2, a3, a4);
}

uint64_t QueryType.where(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  return QueryType.filter(_:)(&v5, a2, a3, a4);
}

uint64_t sub_26C0A241C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  (*(*(a3 - 8) + 16))(a5, v5);
  v12 = *(a4 + 32);

  sub_26C06E874(v9, v10, v11);
  v13 = v12(v20, a3, a4);
  v15 = v14[12];
  v16 = v14[13];
  v17 = v14[14];
  v18 = v14[15];
  v14[12] = a1;
  v14[13] = v9;
  v14[14] = v10;
  v14[15] = v11;
  sub_26C0AB250(v15, v16, v17, v18);
  return v13(v20, 0);
}

uint64_t QueryType.group(_:having:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return sub_26C0A254C(a1, a2, a3, a4, QueryType.group(_:having:));
}

{
  return sub_26C0A254C(a1, a2, a3, a4, QueryType.group(_:having:));
}

uint64_t sub_26C0A254C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v10 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26C0AC5C0;
  sub_26C06B6BC(a1, v11 + 32);
  v13 = v10;
  v14 = *(a2 + 1);
  a5(v11, &v13, a3, a4);
}

void _s11SwiftSQLite9QueryTypePAAE5group_6havingxSayAA11Expressible_pG_AA10ExpressionVySbGtF_0(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a2[1];
  v10 = a2[2];
  v14 = *a2;
  v15 = v9;
  v16 = v10;

  sub_26C0A241C(a1, &v14, a3, a4, a5);
  v11 = v14;
  v12 = v15;
  v13 = v16;

  sub_26C06E9FC(v11, v12, v13);
}

uint64_t QueryType.order(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  v8 = *(a3 + 32);

  v9 = v8(v12, a2, a3);
  *(v10 + 128) = a1;

  return v9(v12, 0);
}

uint64_t QueryType.limit(_:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  v10 = (*(a4 + 32))(v13, a3, a4);
  *(v11 + 136) = a1;
  *(v11 + 144) = a2;
  *(v11 + 152) = 0;
  return v10(v13, 0);
}

uint64_t sub_26C0A2854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC590;
  v6 = *(a2 + 16);
  v6(v15, a1, a2);
  sub_26C06B68C(v15);
  if (LOBYTE(v15[0]))
  {
    v7 = 0x44205443454C4553;
  }

  else
  {
    v7 = 0x5443454C4553;
  }

  if (LOBYTE(v15[0]))
  {
    v8 = 0xEF54434E49545349;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(inited + 56) = v9;
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v7;
  v10 = MEMORY[0x277D84F90];
  *(inited + 40) = v8;
  *(inited + 48) = v10;
  v6(v14, a1, a2);
  v11 = v14[1];

  sub_26C06B68C(v14);
  sub_26C0688D8(v11, (inited + 72));

  *(inited + 136) = v9;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 1297044038;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = v10;
  sub_26C070730(1, a1, a2, (inited + 152));
  sub_26C0688D8(inited, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  return swift_arrayDestroy();
}

uint64_t sub_26C0A2A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(v50);
  v7 = v50[8];

  sub_26C06B68C(v50);
  v8 = *(v7 + 16);

  if (v8)
  {
    v34 = a3;
    (v6)(v49, a1, a2);
    v10 = v49[8];

    sub_26C06B68C(v49);
    v11 = *(v10 + 16);
    if (v11)
    {
      v48 = MEMORY[0x277D84F90];
      result = sub_26C07272C(0, v11, 0);
      v12 = 0;
      v13 = v10 + 32;
      v14 = v48;
      v35 = xmmword_26C0AC590;
      v36 = v11;
      v37 = v10;
      while (v12 < *(v10 + 16))
      {
        sub_26C067878(v13, v47, &qword_2804793E0, &qword_26C0AC830);
        sub_26C067878(v47, &v38, &qword_2804793E0, &qword_26C0AC830);
        v15 = v38;
        sub_26C06A3A8(&v39, v44);
        sub_26C06A3A8(&v42, v43);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
        v16 = swift_allocObject();
        *(v16 + 16) = v35;
        v38 = 0;
        *&v39 = 0xE000000000000000;
        if (v15)
        {
          if (v15 == 1)
          {
            v17 = 0x52454E4E49;
          }

          else
          {
            v17 = 0x54554F205446454CLL;
          }

          if (v15 == 1)
          {
            v18 = 0xE500000000000000;
          }

          else
          {
            v18 = 0xEA00000000005245;
          }
        }

        else
        {
          v18 = 0xE500000000000000;
          v17 = 0x53534F5243;
        }

        MEMORY[0x26D69A890](v17, v18);

        MEMORY[0x26D69A890](0x4E494F4A20, 0xE500000000000000);
        v19 = v38;
        v20 = v39;
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
        *(v16 + 56) = v21;
        *(v16 + 64) = &protocol witness table for Expression<A>;
        *(v16 + 32) = v19;
        *(v16 + 40) = v20;
        v22 = MEMORY[0x277D84F90];
        *(v16 + 48) = MEMORY[0x277D84F90];
        v23 = v45;
        v24 = v46;
        __swift_project_boxed_opaque_existential_1(v44, v45);
        sub_26C070730(1, v23, v24, (v16 + 72));
        *(v16 + 136) = v21;
        *(v16 + 144) = &protocol witness table for Expression<A>;
        *(v16 + 112) = 20047;
        *(v16 + 120) = 0xE200000000000000;
        *(v16 + 128) = v22;
        sub_26C06B6BC(v43, v16 + 152);
        sub_26C0688D8(v16, &v38);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        __swift_destroy_boxed_opaque_existential_1(v43);
        __swift_destroy_boxed_opaque_existential_1(v44);
        sub_26C06A56C(v47, &qword_2804793E0, &qword_26C0AC830);
        v48 = v14;
        v26 = *(v14 + 16);
        v25 = *(v14 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_26C07272C((v25 > 1), v26 + 1, 1);
        }

        ++v12;
        v27 = v40;
        v28 = v41;
        v29 = __swift_mutable_project_boxed_opaque_existential_1(&v38, v40);
        MEMORY[0x28223BE20](v29);
        v31 = &v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v32 + 16))(v31);
        sub_26C072778(v26, v31, &v48, v27, v28);
        result = __swift_destroy_boxed_opaque_existential_1(&v38);
        v14 = v48;
        v13 += 88;
        v10 = v37;
        if (v36 == v12)
        {

          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
LABEL_19:
      sub_26C0688D8(v14, v34);
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t JoinType.rawValue.getter()
{
  v1 = 0x52454E4E49;
  if (*v0 != 1)
  {
    v1 = 0x54554F205446454CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53534F5243;
  }
}

uint64_t sub_26C0A2EF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v14);
  v4 = v15;
  v3 = v16;
  v6 = v17;
  v5 = v18;
  sub_26C0AB1F8(v15, v16, v17, v18);
  result = sub_26C06B68C(v14);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    *(inited + 32) = 0x59422050554F5247;
    *(inited + 56) = v9;
    *(inited + 64) = &protocol witness table for Expression<A>;
    v10 = MEMORY[0x277D84F90];
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v10;
    sub_26C0688D8(v4, (inited + 72));
    sub_26C0688D8(inited, v13);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();

    if (v6)
    {
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_26C0AC580;
      sub_26C06B6BC(v13, v11 + 32);
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_26C0AC580;
      *(v12 + 56) = v9;
      *(v12 + 64) = &protocol witness table for Expression<A>;
      *(v12 + 32) = 0x474E49564148;
      *(v12 + 40) = 0xE600000000000000;
      *(v12 + 48) = MEMORY[0x277D84F90];
      *(v12 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
      *(v12 + 104) = &protocol witness table for Expression<A>;
      *(v12 + 72) = v3;
      *(v12 + 80) = v6;
      *(v12 + 88) = v5;
      sub_26C0688D8(v12, (v11 + 72));
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_26C0688D8(v11, a2);
      swift_setDeallocating();
      swift_arrayDestroy();
      return __swift_destroy_boxed_opaque_existential_1(v13);
    }

    else
    {
      return sub_26C06A3A8(v13, a2);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_26C0A3164@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(v15);
  v7 = v15[16];

  sub_26C06B68C(v15);
  v8 = *(v7 + 16);

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    *(inited + 32) = 0x594220524544524FLL;
    *(inited + 56) = v10;
    *(inited + 64) = &protocol witness table for Expression<A>;
    v11 = MEMORY[0x277D84F90];
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v11;
    (v6)(v14, a1, a2);
    v12 = v14[16];

    sub_26C06B68C(v14);
    sub_26C0688D8(v12, (inited + 72));

    sub_26C0688D8(inited, a3);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26C0A32FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v10);
  result = sub_26C06B68C(v10);
  if (v12)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v4 = v11;
    v5 = sub_26C0ABC60();
    MEMORY[0x26D69A890](v5);

    if (v4)
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
      *(a2 + 32) = &protocol witness table for Expression<A>;
      *a2 = 0x2054494D494CLL;
      *(a2 + 8) = 0xE600000000000000;
      *(a2 + 16) = MEMORY[0x277D84F90];
      *(a2 + 24) = result;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C0AC580;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
      *(inited + 56) = v7;
      *(inited + 64) = &protocol witness table for Expression<A>;
      *(inited + 32) = 0x2054494D494CLL;
      v8 = MEMORY[0x277D84F90];
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = v8;
      v9 = sub_26C0ABC60();
      MEMORY[0x26D69A890](v9);

      *(inited + 96) = v7;
      *(inited + 104) = &protocol witness table for Expression<A>;
      *(inited + 72) = 0x2054455346464FLL;
      *(inited + 80) = 0xE700000000000000;
      *(inited + 88) = v8;
      sub_26C0688D8(inited, a2);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
      return swift_arrayDestroy();
    }
  }

  return result;
}

void *sub_26C0A3500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(v86);
  v7 = v86[20];

  sub_26C06B68C(v86);
  v8 = *(v7 + 16);

  if (!v8)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  (v6)(v82, a1, a2);
  v84[8] = v82[8];
  v84[9] = v82[9];
  v85 = v83;
  v84[4] = v82[4];
  v84[5] = v82[5];
  v84[6] = v82[6];
  v84[7] = v82[7];
  v84[0] = v82[0];
  v84[1] = v82[1];
  v84[2] = v82[2];
  v84[3] = v82[3];
  v10 = v83;

  sub_26C06B68C(v84);
  v11 = *(v10 + 16);
  if (!v11)
  {

    v14 = MEMORY[0x277D84F90];
LABEL_33:
    sub_26C0688D8(v14, a3);
  }

  v12 = MEMORY[0x277D84F90];
  v81 = MEMORY[0x277D84F90];
  sub_26C07272C(0, v11, 0);
  v62[1] = v10;
  v13 = v10 + 32;
  v14 = v81;
  while (1)
  {
    v65 = v14;
    v66 = v13;
    sub_26C06B6BC(v13, v73);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    v69 = &protocol witness table for Expression<A>;
    v67[0] = 0x4E4F494E55;
    v67[1] = 0xE500000000000000;
    v67[2] = v12;
    v64 = v68;
    v15 = v74;
    v16 = v75;
    v17 = __swift_project_boxed_opaque_existential_1(v73, v74);
    v71 = v15;
    v72 = *(v16 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v17, v15);
    v19 = v68;
    v20 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    (v20[1])(&v76, v19, v20);
    v22 = v76;
    v21 = v77;
    v23 = v78;

    v24 = sub_26C068CD4(0, 1, 1, v12);
    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_26C068CD4((v25 > 1), v26 + 1, 1, v24);
    }

    *(v24 + 2) = v26 + 1;
    v27 = &v24[16 * v26];
    *(v27 + 4) = v22;
    *(v27 + 5) = v21;
    v28 = v23[2];

    result = sub_26C068DE4(0, v28, 1, v12);
    v29 = result;
    if (!v23[2])
    {
      break;
    }

    if ((result[3] >> 1) - result[2] < v28)
    {
      goto LABEL_37;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
    swift_arrayInitWithCopy();

    if (v28)
    {
      v30 = v29[2];
      v31 = __OFADD__(v30, v28);
      v32 = v30 + v28;
      if (v31)
      {
        goto LABEL_39;
      }

      v29[2] = v32;
    }

LABEL_12:
    v63 = v11;
    v33 = a3;

    v34 = v71;
    v35 = v72;
    __swift_project_boxed_opaque_existential_1(v70, v71);
    (*(v35 + 8))(&v76, v34, v35);
    v37 = v76;
    v36 = v77;
    v38 = v78;
    v39 = *(v24 + 2);
    v40 = *(v24 + 3);

    if (v39 >= v40 >> 1)
    {
      result = sub_26C068CD4((v40 > 1), v39 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 2) = v39 + 1;
    v41 = &v24[16 * v39];
    *(v41 + 4) = v37;
    *(v41 + 5) = v36;
    v42 = v38[2];
    v43 = v29[2];
    v44 = v43 + v42;
    if (__OFADD__(v43, v42))
    {
      goto LABEL_35;
    }

    v45 = v29[3] >> 1;

    if (v45 < v44)
    {
      if (v43 <= v44)
      {
        v61 = v43 + v42;
      }

      else
      {
        v61 = v43;
      }

      result = sub_26C068DE4(1, v61, 1, v29);
      v29 = result;
      v43 = result[2];
      v46 = v38[2];
      v45 = result[3] >> 1;
    }

    else
    {
      v46 = v42;
    }

    a3 = v33;
    v47 = v63;
    if (v46)
    {
      if ((v45 - v43) < v42)
      {
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
      swift_arrayInitWithCopy();

      if (v42)
      {
        v48 = v29[2];
        v31 = __OFADD__(v48, v42);
        v49 = v48 + v42;
        if (v31)
        {
          goto LABEL_40;
        }

        v29[2] = v49;
      }
    }

    else
    {

      if (v42)
      {
        goto LABEL_36;
      }
    }

    v76 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479408, &qword_26C0AC858);
    sub_26C068F2C(&qword_280B5B098, &qword_280479408, &qword_26C0AC858, MEMORY[0x277D83958]);
    v50 = sub_26C0AB810();
    v52 = v51;

    v79 = v64;
    v80 = &protocol witness table for Expression<A>;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    v76 = v50;
    v77 = v52;
    v78 = v29;
    __swift_destroy_boxed_opaque_existential_1(v73);
    v81 = v65;
    v54 = *(v65 + 16);
    v53 = *(v65 + 24);
    if (v54 >= v53 >> 1)
    {
      sub_26C07272C((v53 > 1), v54 + 1, 1);
    }

    v55 = v79;
    v56 = v80;
    v57 = __swift_mutable_project_boxed_opaque_existential_1(&v76, v79);
    MEMORY[0x28223BE20](v57);
    v59 = v62 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v60 + 16))(v59);
    sub_26C072778(v54, v59, &v81, v55, v56);
    __swift_destroy_boxed_opaque_existential_1(&v76);
    v14 = v81;
    v13 = v66 + 40;
    v11 = v47 - 1;
    v12 = MEMORY[0x277D84F90];
    if (!v11)
    {

      goto LABEL_33;
    }
  }

  if (!v28)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t QueryType.alias(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  v10 = *(a4 + 16);
  v10(v20, a3, a4);
  v12 = v20[2];
  v11 = v20[3];

  sub_26C06B68C(v20);
  v10(v21, a3, a4);
  v14 = v21[6];
  v13 = v21[7];

  sub_26C06B68C(v21);
  v15 = (*(a4 + 32))(v19, a3, a4);
  v17 = v16;
  v16[2] = v12;
  v16[3] = v11;

  v17[4] = a1;
  v17[5] = a2;

  v17[6] = v14;
  v17[7] = v13;

  return v15(v19, 0);
}

void *sub_26C0A3D04@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v77 = a3;
    v78 = a4;
    v76 = a5;
    v75 = *a1;
    v7 = a2 + 32;
    v6 = *(a2 + 32);
    v8 = *(v6 + 16);
    v9 = MEMORY[0x277D84F90];
    v80 = v5;
    if (v8)
    {
      *&v85[0] = MEMORY[0x277D84F90];

      sub_26C07272C(0, v8, 0);
      v10 = v9;
      v11 = v6 + 32;
      do
      {
        sub_26C06FE38(v11, &v88);
        sub_26C06B6BC(&v88, &v92);
        sub_26C0717EC(&v88);
        *&v85[0] = v10;
        v13 = *(v10 + 16);
        v12 = *(v10 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_26C07272C((v12 > 1), v13 + 1, 1);
        }

        v14 = v94;
        v15 = v95;
        v16 = __swift_mutable_project_boxed_opaque_existential_1(&v92, v94);
        MEMORY[0x28223BE20](v16);
        v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v19 + 16))(v18);
        sub_26C072778(v13, v18, v85, v14, v15);
        __swift_destroy_boxed_opaque_existential_1(&v92);
        v10 = *&v85[0];
        v11 += 80;
        --v8;
      }

      while (v8);
      v74 = *&v85[0];

      v9 = MEMORY[0x277D84F90];
    }

    else
    {
      v74 = MEMORY[0x277D84F90];
    }

    v92 = v9;
    result = sub_26C0889A0(0, v80, 0);
    v21 = v80;
    v22 = 0;
    v23 = v92;
    v84 = xmmword_26C0AC5C0;
    v79 = v7;
    do
    {
      if (v22 == v21)
      {
        goto LABEL_59;
      }

      result = *(v7 + 8 * v22);
      v24 = result[2];
      if (v24)
      {
        v82 = v22;
        v83 = v23;
        v25 = result + 4;
        v81 = result;

        v26 = v9;
        while (1)
        {
          sub_26C06FE38(v25, &v88);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
          inited = swift_initStackObject();
          *(inited + 16) = v84;
          sub_26C06B6BC(&v91, inited + 32);
          v28 = v26[2];

          result = swift_isUniquelyReferenced_nonNull_native();
          if (!result || (v29 = v26[3] >> 1, v30 = v26, v29 <= v28))
          {
            result = sub_26C06A384(result, v28 + 1, 1, v26);
            v30 = result;
            v29 = result[3] >> 1;
          }

          if (v29 <= v30[2])
          {
            break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
          swift_arrayInitWithCopy();

          sub_26C0717EC(&v88);

          ++v30[2];
          v25 += 10;
          v26 = v30;
          if (!--v24)
          {

            v9 = MEMORY[0x277D84F90];
            v23 = v83;
            v7 = v79;
            v21 = v80;
            v22 = v82;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_59:
        __break(1u);
        return result;
      }

      v30 = v9;
LABEL_23:
      v92 = v23;
      v32 = *(v23 + 16);
      v31 = *(v23 + 24);
      if (v32 >= v31 >> 1)
      {
        v82 = v22;
        result = sub_26C0889A0((v31 > 1), v32 + 1, 1);
        v22 = v82;
        v21 = v80;
        v23 = v92;
      }

      ++v22;
      *(v23 + 16) = v32 + 1;
      *(v23 + 8 * v32 + 32) = v30;
    }

    while (v22 != v21);
    v83 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
    v33 = swift_allocObject();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    *(v33 + 32) = 0x545245534E49;
    v80 = v33 + 32;
    *(v33 + 56) = v34;
    *(v33 + 64) = &protocol witness table for Expression<A>;
    *(v33 + 40) = 0xE600000000000000;
    *(v33 + 48) = v9;
    if (v75 == 5)
    {
      *(v33 + 104) = 0;
      *(v33 + 88) = 0u;
      *(v33 + 72) = 0u;
      v35 = v77;
    }

    else
    {
      v36 = 0xE600000000000000;
      v37 = 0x45524F4E4749;
      *&v88 = 2118223;
      *(&v88 + 1) = 0xE300000000000000;
      v38 = 0xE500000000000000;
      v39 = 0x54524F4241;
      if (v75 == 3)
      {
        v37 = 1279869254;
        v36 = 0xE400000000000000;
      }

      if (v75 != 2)
      {
        v39 = v37;
        v38 = v36;
      }

      v40 = 0xE700000000000000;
      v41 = 0x4543414C504552;
      if (v75)
      {
        v41 = 0x4B4341424C4C4F52;
        v40 = 0xE800000000000000;
      }

      if (v75 <= 1)
      {
        v42 = v41;
      }

      else
      {
        v42 = v39;
      }

      if (v75 <= 1)
      {
        v43 = v40;
      }

      else
      {
        v43 = v38;
      }

      v35 = v77;
      MEMORY[0x26D69A890](v42, v43);

      v44 = v88;
      *(v33 + 96) = v34;
      *(v33 + 104) = &protocol witness table for Expression<A>;
      *(v33 + 72) = v44;
      *(v33 + 88) = v9;
    }

    *(v33 + 136) = v34;
    *(v33 + 144) = &protocol witness table for Expression<A>;
    *(v33 + 112) = 1330925129;
    *(v33 + 120) = 0xE400000000000000;
    *(v33 + 128) = v9;
    v45 = v78;
    sub_26C070730(0, v35, v78, (v33 + 152));
    *(v33 + 216) = v34;
    *(v33 + 224) = &protocol witness table for Expression<A>;
    sub_26C0688D8(v74, &v88);

    sub_26C06E24C(&v88, (v33 + 192), 0, 0xE000000000000000);
    __swift_destroy_boxed_opaque_existential_1(&v88);
    *(v33 + 256) = v34;
    *(v33 + 264) = &protocol witness table for Expression<A>;
    *(v33 + 232) = 0x5345554C4156;
    *(v33 + 240) = 0xE600000000000000;
    *(v33 + 248) = v9;
    v46 = *(v83 + 16);
    if (v46)
    {
      v79 = v33;
      v87 = v9;
      sub_26C07272C(0, v46, 0);
      v47 = 32;
      v48 = v87;
      v81 = v34;
      do
      {
        v82 = v48;
        *&v84 = v46;

        sub_26C0688D8(v49, &v88);
        *&v85[0] = 40;
        *(&v85[0] + 1) = 0xE100000000000000;
        v51 = *(&v89 + 1);
        v50 = v90;
        __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
        v52 = v50[1];
        v52(&v92, v51, v50);
        v53 = v92;
        v54 = v93;

        MEMORY[0x26D69A890](v53, v54);

        MEMORY[0x26D69A890](41, 0xE100000000000000);
        v55 = v85[0];
        v48 = v82;
        v52(&v92, v51, v50);
        v56 = *(&v93 + 1);

        __swift_destroy_boxed_opaque_existential_1(&v88);
        v87 = v48;
        v58 = *(v48 + 16);
        v57 = *(v48 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_26C07272C((v57 > 1), v58 + 1, 1);
          v48 = v87;
        }

        v88 = v55;
        *(&v89 + 1) = v81;
        v90 = &protocol witness table for Expression<A>;
        *&v89 = v56;
        *(v48 + 16) = v58 + 1;
        sub_26C06A3A8(&v88, v48 + 40 * v58 + 32);
        v47 += 8;
        v46 = v84 - 1;
      }

      while (v84 != 1);

      v45 = v78;
      v33 = v79;
    }

    else
    {

      v48 = MEMORY[0x277D84F90];
    }

    sub_26C0688D8(v48, (v33 + 272));

    sub_26C071840(v45, v33 + 312);
    v59 = MEMORY[0x277D84F90];
    for (i = 32; i != 352; i += 40)
    {
      sub_26C067878(v33 + i, &v88, &qword_280479360, &qword_26C0AC5D8);
      v85[1] = v89;
      v85[0] = v88;
      v86 = v90;
      if (*(&v89 + 1))
      {
        sub_26C06A3A8(v85, &v92);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v87 = v59;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v59 = sub_26C06A384(0, v59[2] + 1, 1, v59);
          v87 = v59;
        }

        v63 = v59[2];
        v62 = v59[3];
        if (v63 >= v62 >> 1)
        {
          v59 = sub_26C06A384((v62 > 1), v63 + 1, 1, v59);
          v87 = v59;
        }

        v64 = v94;
        v65 = v95;
        v66 = __swift_mutable_project_boxed_opaque_existential_1(&v92, v94);
        MEMORY[0x28223BE20](v66);
        v68 = &v73 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v69 + 16))(v68);
        sub_26C06A410(v63, v68, &v87, v64, v65);
        __swift_destroy_boxed_opaque_existential_1(&v92);
      }

      else
      {
        sub_26C06A56C(v85, &qword_280479360, &qword_26C0AC5D8);
      }
    }

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_26C0688D8(v59, &v88);

    v70 = *(&v89 + 1);
    v71 = v90;
    __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
    (v71[1])(&v92, v70, v71);
    v72 = v76;
    *v76 = v92;
    *(v72 + 1) = v93;
    return __swift_destroy_boxed_opaque_existential_1(&v88);
  }

  else
  {

    return QueryType.insert()();
  }
}

uint64_t OnConflict.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4543414C504552;
  v3 = 0x54524F4241;
  v4 = 1279869254;
  if (v1 != 3)
  {
    v4 = 0x45524F4E4749;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4B4341424C4C4F52;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

SwiftSQLite::Insert __swiftcall QueryType.insert()()
{
  v3 = v1;
  v4 = v0;
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC540;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(inited + 32) = 0x4920545245534E49;
  *(inited + 56) = v7;
  *(inited + 64) = &protocol witness table for Expression<A>;
  v8 = MEMORY[0x277D84F90];
  *(inited + 40) = 0xEB000000004F544ELL;
  *(inited + 48) = v8;
  sub_26C070730(0, v4, v3, (inited + 72));
  *(inited + 136) = v7;
  *(inited + 144) = &protocol witness table for Expression<A>;
  strcpy((inited + 112), "DEFAULT VALUES");
  *(inited + 127) = -18;
  *(inited + 128) = v8;
  sub_26C0688D8(inited, v16);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  v9 = v17;
  v10 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v10 + 8))(&v14, v9, v10);
  *v5 = v14;
  *(v5 + 8) = v15;
  v11 = __swift_destroy_boxed_opaque_existential_1(v16);
  result.bindings._rawValue = v13;
  result.template._object = v12;
  result.template._countAndFlagsBits = v11;
  return result;
}

uint64_t QueryType.insert(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC540;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(inited + 32) = 0x4920545245534E49;
  *(inited + 56) = v9;
  *(inited + 64) = &protocol witness table for Expression<A>;
  v10 = MEMORY[0x277D84F90];
  *(inited + 40) = 0xEB000000004F544ELL;
  *(inited + 48) = v10;
  sub_26C070730(0, a2, a3, (inited + 72));
  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v13 = *(*(v11 + 8) + 8);
  *(inited + 136) = v9;
  *(inited + 144) = &protocol witness table for Expression<A>;
  v13(v12);
  sub_26C0688D8(inited, v19);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  v14 = v20;
  v15 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v15 + 8))(&v17, v14, v15);
  *a4 = v17;
  *(a4 + 8) = v18;
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_26C0A4C38(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = Expressible.asSQL()();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v4 = Expressible.asSQL()();
  if (v3._countAndFlagsBits == v4._countAndFlagsBits && v3._object == v4._object)
  {

    v7 = 0;
  }

  else
  {
    v6 = sub_26C0ABC70();

    v7 = v6 ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_26C0A4D38(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x277D84F90];
    v22 = a2;
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_26C06FE38(v8, v20);
      v10 = v6(v20);
      if (v3)
      {
        sub_26C0717EC(v20);

        goto LABEL_15;
      }

      if (v10)
      {
        v17 = v20[2];
        v18 = v20[3];
        v19 = v20[4];
        v15 = v20[0];
        v16 = v20[1];
        result = swift_isUniquelyReferenced_nonNull_native();
        v21 = v9;
        if ((result & 1) == 0)
        {
          result = sub_26C088A20(0, *(v9 + 16) + 1, 1);
          v9 = v21;
        }

        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_26C088A20((v11 > 1), v12 + 1, 1);
          v9 = v21;
        }

        *(v9 + 16) = v12 + 1;
        v13 = (v9 + 80 * v12);
        v13[2] = v15;
        v13[5] = v18;
        v13[6] = v19;
        v13[3] = v16;
        v13[4] = v17;
        v6 = v14;
      }

      else
      {
        result = sub_26C0717EC(v20);
      }

      ++v7;
      v8 += 80;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    return v9;
  }

  return result;
}

void *QueryType.upsert(_:onConflictOf:set:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v47 = a5;
  v46 = a4;
  v49 = a6;
  *&v50 = a3;
  v48 = a2;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = a1 + 32;
    v9 = MEMORY[0x277D84F90];
    v51 = xmmword_26C0AC5C0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_26C06FE38(v8, v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
      inited = swift_initStackObject();
      *(inited + 16) = v51;
      sub_26C06B6BC(v59, inited + 32);
      v12 = v9[2];

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v14 = v9[3] >> 1, v15 = v9, v14 <= v12))
      {
        result = sub_26C06A384(result, v12 + 1, 1, v9);
        v15 = result;
        v14 = result[3] >> 1;
      }

      if (v14 <= v15[2])
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
      swift_arrayInitWithCopy();

      ++v15[2];
      v16 = swift_initStackObject();
      *(v16 + 16) = v51;
      sub_26C06B6BC(v61, v16 + 32);
      v17 = v10[2];

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v18 = v10[3] >> 1, v19 = v10, v18 <= v17))
      {
        result = sub_26C06A384(result, v17 + 1, 1, v10);
        v19 = result;
        v18 = result[3] >> 1;
      }

      if (v18 <= v19[2])
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      ++v19[2];

      sub_26C0717EC(v59);
      v8 += 80;
      v9 = v15;
      v10 = v19;
      --v6;
      v7 = MEMORY[0x277D84F90];
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F90];
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
    v20 = swift_allocObject();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    *(v20 + 32) = 0x545245534E49;
    v45 = v20 + 32;
    *(v20 + 56) = v21;
    *(v20 + 64) = &protocol witness table for Expression<A>;
    *(v20 + 40) = 0xE600000000000000;
    *(v20 + 48) = v7;
    *(v20 + 96) = v21;
    *(v20 + 104) = &protocol witness table for Expression<A>;
    *(v20 + 72) = 1330925129;
    *(v20 + 80) = 0xE400000000000000;
    *(v20 + 88) = v7;
    v22 = v47;
    sub_26C070730(0, v46, v47, (v20 + 112));
    *(v20 + 176) = v21;
    *(v20 + 184) = &protocol witness table for Expression<A>;
    sub_26C0688D8(v15, v59);
    sub_26C06E24C(v59, (v20 + 152), 0, 0xE000000000000000);
    __swift_destroy_boxed_opaque_existential_1(v59);
    *(v20 + 216) = v21;
    *(v20 + 224) = &protocol witness table for Expression<A>;
    *(v20 + 192) = 0x5345554C4156;
    *(v20 + 200) = 0xE600000000000000;
    *(v20 + 208) = v7;
    *(v20 + 256) = v21;
    *(v20 + 264) = &protocol witness table for Expression<A>;
    sub_26C0688D8(v19, v59);
    sub_26C06E24C(v59, (v20 + 232), 0, 0xE000000000000000);

    __swift_destroy_boxed_opaque_existential_1(v59);
    sub_26C071840(v22, v20 + 272);
    *(v20 + 336) = v21;
    *(v20 + 344) = &protocol witness table for Expression<A>;
    *(v20 + 312) = 0x4C464E4F43204E4FLL;
    *(v20 + 320) = 0xEB00000000544349;
    *(v20 + 328) = v7;
    *(v20 + 376) = v21;
    *(v20 + 384) = &protocol witness table for Expression<A>;
    sub_26C06E24C(v48, (v20 + 352), 0, 0xE000000000000000);
    *(v20 + 416) = v21;
    *(v20 + 424) = &protocol witness table for Expression<A>;
    strcpy((v20 + 392), "DO UPDATE SET");
    *(v20 + 406) = -4864;
    *(v20 + 408) = v7;
    v23 = *(v50 + 16);
    if (v23)
    {
      v58[0] = v7;
      sub_26C07272C(0, v23, 0);
      v24 = v50 + 32;
      v50 = xmmword_26C0AC580;
      do
      {
        sub_26C06FE38(v24, v59);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
        v25 = swift_initStackObject();
        *(v25 + 16) = v50;
        sub_26C06B6BC(v59, v25 + 32);
        sub_26C06B6BC(v61, v25 + 72);
        sub_26C0688D8(v25, &v54);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
        swift_arrayDestroy();
        v27 = v56;
        v26 = v57;
        __swift_project_boxed_opaque_existential_1(&v54, v56);
        (*(v26 + 8))(v52, v27, v26);
        v28 = *&v52[0];
        v51 = *(v52 + 8);
        __swift_destroy_boxed_opaque_existential_1(&v54);
        sub_26C0717EC(v59);
        v58[0] = v7;
        v30 = *(v7 + 16);
        v29 = *(v7 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_26C07272C((v29 > 1), v30 + 1, 1);
          v7 = v58[0];
        }

        *&v59[24] = v21;
        v60 = &protocol witness table for Expression<A>;
        *v59 = v28;
        *&v59[8] = v51;
        *(v7 + 16) = v30 + 1;
        sub_26C06A3A8(v59, v7 + 40 * v30 + 32);
        v24 += 80;
        --v23;
      }

      while (v23);
    }

    sub_26C0688D8(v7, (v20 + 432));

    v31 = MEMORY[0x277D84F90];
    for (i = 32; i != 472; i += 40)
    {
      sub_26C067878(v20 + i, v59, &qword_280479360, &qword_26C0AC5D8);
      v52[0] = *v59;
      v52[1] = *&v59[16];
      v53 = v60;
      if (*&v59[24])
      {
        sub_26C06A3A8(v52, &v54);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58[0] = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = sub_26C06A384(0, v31[2] + 1, 1, v31);
          v58[0] = v31;
        }

        v35 = v31[2];
        v34 = v31[3];
        if (v35 >= v34 >> 1)
        {
          v31 = sub_26C06A384((v34 > 1), v35 + 1, 1, v31);
          v58[0] = v31;
        }

        v36 = v56;
        v37 = v57;
        v38 = __swift_mutable_project_boxed_opaque_existential_1(&v54, v56);
        MEMORY[0x28223BE20](v38);
        v40 = &v45 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v41 + 16))(v40);
        sub_26C06A410(v35, v40, v58, v36, v37);
        __swift_destroy_boxed_opaque_existential_1(&v54);
      }

      else
      {
        sub_26C06A56C(v52, &qword_280479360, &qword_26C0AC5D8);
      }
    }

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_26C0688D8(v31, v59);

    v42 = *&v59[24];
    v43 = v60;
    __swift_project_boxed_opaque_existential_1(v59, *&v59[24]);
    (v43[1])(&v54, v42, v43);
    v44 = v49;
    *v49 = v54;
    *(v44 + 1) = v55;
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  return result;
}

SwiftSQLite::Delete __swiftcall QueryType.delete()()
{
  v3 = v1;
  v4 = v0;
  v24 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v40 = &protocol witness table for Expression<A>;
  v36 = 0x46204554454C4544;
  v37 = 0xEB000000004D4F52;
  v6 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D84F90];
  v39 = v5;
  sub_26C070730(0, v4, v3, v41);
  sub_26C071840(v3, &v42);
  sub_26C0A3164(v4, v3, &v43);
  sub_26C0A32FC(v3, &v44);
  for (i = 32; i != 232; i += 40)
  {
    sub_26C067878(&v35[i], &v32, &qword_280479360, &qword_26C0AC5D8);
    v25[0] = v32;
    v25[1] = v33;
    v26 = v34;
    if (*(&v33 + 1))
    {
      sub_26C06A3A8(v25, &v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_26C06A384(0, v6[2] + 1, 1, v6);
        v31 = v6;
      }

      v10 = v6[2];
      v9 = v6[3];
      if (v10 >= v9 >> 1)
      {
        v6 = sub_26C06A384((v9 > 1), v10 + 1, 1, v6);
        v31 = v6;
      }

      v11 = v29;
      v12 = v30;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(&v27, v29);
      MEMORY[0x28223BE20](v13);
      v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15);
      sub_26C06A410(v10, v15, &v31, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(&v27);
    }

    else
    {
      sub_26C06A56C(v25, &qword_280479360, &qword_26C0AC5D8);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  sub_26C0688D8(v6, &v32);

  v17 = *(&v33 + 1);
  v18 = v34;
  __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
  (*(v18 + 8))(&v27, v17, v18);
  v19 = v24;
  *v24 = v27;
  *(v19 + 1) = v28;
  v20 = __swift_destroy_boxed_opaque_existential_1(&v32);
  result.bindings._rawValue = v22;
  result.template._object = v21;
  result.template._countAndFlagsBits = v20;
  return result;
}