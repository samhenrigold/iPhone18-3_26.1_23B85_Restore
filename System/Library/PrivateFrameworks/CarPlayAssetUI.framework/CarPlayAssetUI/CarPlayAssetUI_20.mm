uint64_t CarouselConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  v3 = v0[5];
  v4 = *(v0 + 7);
  v5 = *(v0 + 64);
  v6 = v0[9];
  sub_242F06390();
  if (v2 == 255)
  {
    MEMORY[0x245D279A0](0);
  }

  else
  {
    MEMORY[0x245D279A0](1);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v1;
    }

    else
    {
      v7 = 0.0;
    }

    MEMORY[0x245D279D0](*&v7);
    CarouselConfiguration.PageControlPosition.hash(into:)();
  }

  v8 = 0.0;
  if (v3 != 0.0)
  {
    v8 = v3;
  }

  MEMORY[0x245D279D0](*&v8);
  sub_242F063B0();
  if (v5)
  {
    MEMORY[0x245D279A0](1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v4;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x245D279D0](v9);
  }

  v10 = 0.0;
  if (v6 != 0.0)
  {
    v10 = v6;
  }

  MEMORY[0x245D279D0](*&v10);
  return sub_242F063E0();
}

uint64_t CarouselConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7860, &qword_242F33DE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DFC0EC(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v37 = 0;
    sub_242DFC1E8(v12, v13, v14);
    v15 = sub_242F05E00();
    v31 = v33;
    v32 = v34;
    v16 = v35;
    v37 = 1;
    sub_242C7DBD0(v15, v17, v18);
    sub_242F05E00();
    v19 = v33;
    LOBYTE(v33) = 2;
    v20 = sub_242F05DB0();
    v21 = v20;
    v37 = 3;
    sub_242DFC23C(v20, v22, v23);
    sub_242F05E00();
    v30 = v33;
    v36 = BYTE8(v33);
    LOBYTE(v33) = 4;
    sub_242F05DC0();
    v26 = v25;
    (*(v6 + 8))(v8, v5);
    v27 = v36;
    v28 = v32;
    *a2 = v31;
    *(a2 + 16) = v28;
    *(a2 + 32) = v16;
    *(a2 + 40) = v19;
    *(a2 + 48) = v21 & 1;
    *(a2 + 56) = v30;
    *(a2 + 64) = v27;
    *(a2 + 72) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242DED5B4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 32);
  v4 = v1[5];
  v5 = *(v1 + 7);
  v6 = *(v1 + 64);
  v7 = v1[9];
  sub_242F06390();
  if (v3 == 255)
  {
    MEMORY[0x245D279A0](0);
  }

  else
  {
    MEMORY[0x245D279A0](1);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = 0.0;
    }

    MEMORY[0x245D279D0](*&v8);
    CarouselConfiguration.PageControlPosition.hash(into:)();
  }

  v9 = 0.0;
  if (v4 != 0.0)
  {
    v9 = v4;
  }

  MEMORY[0x245D279D0](*&v9);
  sub_242F063B0();
  if (v6)
  {
    MEMORY[0x245D279A0](1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x245D279D0](v10);
  }

  v11 = 0.0;
  if (v7 != 0.0)
  {
    v11 = v7;
  }

  MEMORY[0x245D279D0](*&v11);
  return sub_242F063E0();
}

uint64_t static CarouselModel.Direction.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v32[0] = v32 - v11;
  v32[1] = a3;
  v32[2] = a5;
  v12 = type metadata accessor for CarouselModel.Direction(0, a3, a4, a5);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v36 = v32 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v18 = v32 - v17;
  v33 = v13;
  v34 = v19;
  v20 = *(v19 + 48);
  v21 = *(v13 + 16);
  v21(v32 - v17, a1, v12, v16);
  (v21)(&v18[v20], v37, v12);
  v22 = *(v10 + 48);
  v23 = v22(v18, 2, AssociatedTypeWitness);
  if (!v23)
  {
    v37 = v10;
    (v21)(v36, v18, v12);
    if (!v22(&v18[v20], 2, AssociatedTypeWitness))
    {
      v27 = v37;
      v28 = &v18[v20];
      v29 = v32[0];
      (*(v37 + 32))(v32[0], v28, AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v30 = v36;
      v24 = sub_242F04EE0();
      v31 = *(v27 + 8);
      v31(v29, AssociatedTypeWitness);
      v31(v30, AssociatedTypeWitness);
      v25 = v33;
      goto LABEL_10;
    }

    (*(v37 + 8))(v36, AssociatedTypeWitness);
    goto LABEL_9;
  }

  if (v23 == 1)
  {
    if (v22(&v18[v20], 2, AssociatedTypeWitness) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v22(&v18[v20], 2, AssociatedTypeWitness) != 2)
  {
LABEL_9:
    v24 = 0;
    v12 = v34;
    v25 = v35;
    goto LABEL_10;
  }

  v24 = 1;
  v25 = v33;
LABEL_10:
  (*(v25 + 8))(v18, v12);
  return v24 & 1;
}

uint64_t sub_242DEDAD0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, a2, v5);
  sub_242DFB0C0(v7, a2);
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_242DEDBD0(uint64_t a1)
{
  v2 = v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v11 - v5;
  sub_242DEDDE0();
  v7 = *(*v1 + 144);
  swift_beginAccess();
  v8 = *(v2 + v7);

  v9 = sub_242DEDD34(v6, v8);

  (*(v4 + 8))(v6, v3);
  return sub_242DEEBA8(v9);
}

uint64_t sub_242DEDD34(uint64_t a1, uint64_t a2)
{
  sub_242F053E0();
  swift_getWitnessTable();
  sub_242F055D0();
  if (v4)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_242DEDDE0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();
}

uint64_t sub_242DEDEB8()
{
  swift_beginAccess();
  sub_242F03AB0();
  sub_242F03A50();
  return swift_endAccess();
}

uint64_t sub_242DEDF44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v13 = *(a1 + a2 - 24);
  v4 = *(a1 + a2 - 8);
  v5 = sub_242DFC868();
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    v9 = swift_allocObject();
    v6 = v8;
    v10 = v9;
    v5 = v7;
    *(v10 + 16) = v13;
    *(v10 + 32) = v4;
    *(v10 + 40) = v7;
    *(v10 + 48) = v8;
    v11 = sub_242DFF870;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  *a3 = v11;
  a3[1] = v10;

  return sub_242C5573C(v5, v6);
}

uint64_t sub_242DEDFFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = *(a3 + a4 - 8);
    v8 = swift_allocObject();
    *(v8 + 16) = *(v6 - 24);
    *(v8 + 32) = v7;
    *(v8 + 40) = v4;
    *(v8 + 48) = v5;
    v9 = sub_242DFF8AC;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  sub_242C5573C(v4, v5);
  return sub_242DEE0D4(v9, v8);
}

uint64_t sub_242DEE0A0()
{
  v0 = sub_242DFC868();
  sub_242C5573C(v0, v1);
  return v0;
}

uint64_t (*sub_242DEE0D8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = (v1 + *(*v1 + 112));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  sub_242C5573C(v4, v5);
  return sub_242DEE13C;
}

uint64_t sub_242DEE13C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_242C5573C(*a1, v2);
    v5 = (v4 + *(*v4 + 112));
    v6 = *v5;
    v7 = v5[1];
    *v5 = v3;
    v5[1] = v2;
    sub_242C655DC(v6, v7);
    v8 = v3;
    v9 = v2;
  }

  else
  {
    v10 = (v4 + *(*v4 + 112));
    v8 = *v10;
    v9 = v10[1];
    *v10 = v3;
    v10[1] = v2;
  }

  return sub_242C655DC(v8, v9);
}

uint64_t sub_242DEE1D8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 112));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_242C655DC(v4, v5);
}

uint64_t sub_242DEE204@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v13 = *(a1 + a2 - 24);
  v4 = *(a1 + a2 - 8);
  v5 = sub_242DFC888();
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    v9 = swift_allocObject();
    v6 = v8;
    v10 = v9;
    v5 = v7;
    *(v10 + 16) = v13;
    *(v10 + 32) = v4;
    *(v10 + 40) = v7;
    *(v10 + 48) = v8;
    v11 = sub_242DFF870;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  *a3 = v11;
  a3[1] = v10;

  return sub_242C5573C(v5, v6);
}

uint64_t sub_242DEE2BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = *(a3 + a4 - 8);
    v8 = swift_allocObject();
    *(v8 + 16) = *(v6 - 24);
    *(v8 + 32) = v7;
    *(v8 + 40) = v4;
    *(v8 + 48) = v5;
    v9 = sub_242DFF8AC;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  sub_242C5573C(v4, v5);
  return sub_242DEE394(v9, v8);
}

uint64_t sub_242DEE360()
{
  v0 = sub_242DFC888();
  sub_242C5573C(v0, v1);
  return v0;
}

uint64_t (*sub_242DEE398(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = (v1 + *(*v1 + 120));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  sub_242C5573C(v4, v5);
  return sub_242DEE3FC;
}

uint64_t sub_242DEE3FC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_242C5573C(*a1, v2);
    v5 = (v4 + *(*v4 + 120));
    v6 = *v5;
    v7 = v5[1];
    *v5 = v3;
    v5[1] = v2;
    sub_242C655DC(v6, v7);
    v8 = v3;
    v9 = v2;
  }

  else
  {
    v10 = (v4 + *(*v4 + 120));
    v8 = *v10;
    v9 = v10[1];
    *v10 = v3;
    v10[1] = v2;
  }

  return sub_242C655DC(v8, v9);
}

uint64_t sub_242DEE498(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 120));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_242C655DC(v4, v5);
}

uint64_t sub_242DEE4C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v13 = *(a1 + a2 - 24);
  v4 = *(a1 + a2 - 8);
  v5 = sub_242DFC8A8();
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    v9 = swift_allocObject();
    v6 = v8;
    v10 = v9;
    v5 = v7;
    *(v10 + 16) = v13;
    *(v10 + 32) = v4;
    *(v10 + 40) = v7;
    *(v10 + 48) = v8;
    v11 = sub_242DFF870;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  *a3 = v11;
  a3[1] = v10;

  return sub_242C5573C(v5, v6);
}

uint64_t sub_242DEE57C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = *(a3 + a4 - 8);
    v8 = swift_allocObject();
    *(v8 + 16) = *(v6 - 24);
    *(v8 + 32) = v7;
    *(v8 + 40) = v4;
    *(v8 + 48) = v5;
    v9 = sub_242DFF8AC;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  sub_242C5573C(v4, v5);
  return sub_242DEE654(v9, v8);
}

uint64_t sub_242DEE620()
{
  v0 = sub_242DFC8A8();
  sub_242C5573C(v0, v1);
  return v0;
}

uint64_t sub_242DEE654(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 128));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_242C655DC(v6, v7);
}

uint64_t sub_242DEE72C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v13 = *(a1 + a2 - 24);
  v4 = *(a1 + a2 - 8);
  v5 = sub_242DFC8FC();
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    v9 = swift_allocObject();
    v6 = v8;
    v10 = v9;
    v5 = v7;
    *(v10 + 16) = v13;
    *(v10 + 32) = v4;
    *(v10 + 40) = v7;
    *(v10 + 48) = v8;
    v11 = sub_242DFEF48;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  *a3 = v11;
  a3[1] = v10;

  return sub_242C5573C(v5, v6);
}

uint64_t sub_242DEE7E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = *(a3 + a4 - 8);
    v8 = swift_allocObject();
    *(v8 + 16) = *(v6 - 24);
    *(v8 + 32) = v7;
    *(v8 + 40) = v4;
    *(v8 + 48) = v5;
    v9 = sub_242DFEF20;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  sub_242C5573C(v4, v5);
  return sub_242DEE8BC(v9, v8);
}

uint64_t sub_242DEE888()
{
  v0 = sub_242DFC8FC();
  sub_242C5573C(v0, v1);
  return v0;
}

uint64_t sub_242DEE8BC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 136));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_242C655DC(v6, v7);
}

double sub_242DEE994()
{
  sub_242DFC598();

  return result;
}

uint64_t sub_242DEE9BC(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_242DEDBD0(v4);
}

__n128 CarouselModel.configuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + *(*v1 + 160);
  v3 = *(v2 + 48);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v2 + 64);
  result = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_242DEEA7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242DEEAD0();
  *a1 = result;
  return result;
}

uint64_t sub_242DEEAD0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  return v1;
}

uint64_t sub_242DEEBA8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_242F03A90();
}

uint64_t sub_242DEEC7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7C18, &qword_242F35470);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return sub_242DEEDD0(v5);
}

uint64_t sub_242DEED50()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31C0, &unk_242F17F20);
  sub_242F03A50();
  return swift_endAccess();
}

uint64_t sub_242DEEDD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7C18, &qword_242F35470);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31C0, &unk_242F17F20);
  sub_242F03A60();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_242DEEF14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  return v1;
}

uint64_t sub_242DEEFEC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_242F03A90();
}

uint64_t sub_242DEF0FC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  return v3;
}

uint64_t sub_242DEF1E0(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_242F03A90();
}

char *CarouselModel.init(items:activeItem:configuration:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = sub_242DFB478(a1, a2, a3);
  v5 = sub_242F05860();
  (*(*(v5 - 8) + 8))(a2, v5);
  return v4;
}

uint64_t sub_242DEF340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a2;
  v21 = sub_242F05860();
  v6 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v8 = &v20 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  sub_242F05AA0();
  (*(v6 + 16))(v8, v22, v21);
  v16 = *(a3 - 8);
  result = (*(v16 + 48))(v8, 1, a3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_242F05AA0();
    (*(v16 + 8))(v8, a3);
    swift_getAssociatedConformanceWitness();
    v18 = sub_242F04EE0();
    v19 = *(v10 + 8);
    v19(v12, AssociatedTypeWitness);
    v19(v15, AssociatedTypeWitness);
    return v18 & 1;
  }

  return result;
}

void sub_242DEF5DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v34 = *v2;
  v35 = a1;
  v3 = v34[12];
  v4 = v34[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v31 = &v28 - v6;
  v29 = v34[11];
  v30 = v3;
  v7 = type metadata accessor for CarouselModel.Direction(0, v4, v29, v3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  sub_242DEDDE0();
  v15 = sub_242DEEF14();
  v16 = sub_242DEDD34(v14, v15);

  v17 = v14;
  v18 = AssociatedTypeWitness;
  v19 = v33;
  (*(v11 + 8))(v17, v4);
  (*(v8 + 16))(v10, v35, v7);
  v20 = (*(v19 + 48))(v10, 2, v18);
  if (!v20)
  {
    v22 = v31;
    (*(v19 + 32))(v31, v10, v18);
    v36 = sub_242DEEF14();
    MEMORY[0x28223BE20](v36);
    v24 = v29;
    v23 = v30;
    *(&v28 - 4) = v4;
    *(&v28 - 3) = v24;
    *(&v28 - 2) = v23;
    *(&v28 - 1) = v22;
    sub_242F053E0();
    swift_getWitnessTable();
    sub_242F05180();

    (*(v19 + 8))(v22, v18);
    return;
  }

  if (v20 != 1)
  {
    if (!__OFADD__(v16, 1))
    {
      sub_242DEEF14();
      v25 = sub_242F05380();

      v26 = sub_242DEEF14();
      if (v16 + 1 >= v25)
      {
        v36 = v26;
        sub_242F053E0();
        swift_getWitnessTable();
        sub_242F05600();
        goto LABEL_11;
      }

LABEL_9:
      v27 = v32;
      sub_242F05400();

      (*(v11 + 56))(v27, 0, 1, v4);
      return;
    }

LABEL_14:
    __break(1u);
    return;
  }

  if (__OFSUB__(v16, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = sub_242DEEF14();
  if (((v16 - 1) & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

  v36 = v21;
  sub_242F053E0();
  swift_getWitnessTable();
  sub_242F04E10();
LABEL_11:
}

uint64_t sub_242DEFABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v65 = a1;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = sub_242F05860();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v63 = &v59 - v17;
  (*(v8 + 16))(v10, a2, v7, v16);
  v18 = (*(v11 + 48))(v10, 1, v6);
  v64 = v11;
  if (v18 == 1)
  {
    (*(v8 + 8))(v10, v7);
    v19 = v5;
  }

  else
  {
    v20 = v63;
    (*(v11 + 32))(v63, v10, v6);
    v21 = *(*v3 + 144);
    v22 = swift_beginAccess();
    v61 = &v59;
    v68[0] = *(v3 + v21);
    MEMORY[0x28223BE20](v22);
    v23 = *(v5 + 88);
    v24 = *(v5 + 96);
    v62 = v5;
    *(&v59 - 4) = v6;
    *(&v59 - 3) = v23;
    v59 = v24;
    v60 = v23;
    *(&v59 - 2) = v24;
    *(&v59 - 1) = v20;
    sub_242F053E0();

    swift_getWitnessTable();
    sub_242F055D0();

    if (v67 != 1)
    {
      v68[0] = sub_242DEEF14();
      MEMORY[0x28223BE20](v68[0]);
      v26 = v59;
      v25 = v60;
      *(&v59 - 4) = v6;
      *(&v59 - 3) = v25;
      v27 = v63;
      *(&v59 - 2) = v26;
      *(&v59 - 1) = v27;
      sub_242F055D0();

      if (v67 != 1)
      {
        v61 = v66;
        v50 = v64;
        v51 = *(v64 + 16);
        v52 = v65;
        v51(v14, v65, v6);
        swift_beginAccess();
        sub_242F053B0();
        v53 = swift_endAccess();
        sub_242DEDBD0(v53);
        v54 = (v51)(v14, v52, v6);
        MEMORY[0x28223BE20](v54);
        v56 = v59;
        v55 = v60;
        *(&v59 - 4) = v6;
        *(&v59 - 3) = v55;
        *(&v59 - 2) = v56;
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v59 - 4) = v6;
        *(&v59 - 3) = v55;
        *(&v59 - 2) = v56;
        swift_getKeyPath();
        v58 = sub_242F03A70();
        sub_242F053B0();
        v58(&v66, 0);

        (*(v50 + 8))(v63, v6);
        goto LABEL_11;
      }
    }

    v11 = v64;
    (*(v64 + 8))(v63, v6);
    v19 = v62;
  }

  v68[0] = sub_242DEEF14();
  sub_242F053E0();
  swift_getWitnessTable();
  sub_242F055D0();

  if (v67)
  {
    v28 = *(v11 + 16);
    v29 = v65;
    v28(v14, v65, v6);
    swift_beginAccess();
    sub_242F053A0();
    v30 = swift_endAccess();
    sub_242DEDBD0(v30);
    v31 = (v28)(v14, v29, v6);
    MEMORY[0x28223BE20](v31);
    v32 = *(v19 + 88);
    v33 = *(v19 + 96);
    *(&v59 - 4) = v6;
    *(&v59 - 3) = v32;
    *(&v59 - 2) = v33;
    v34 = swift_getKeyPath();
    MEMORY[0x28223BE20](v34);
    *(&v59 - 4) = v6;
    *(&v59 - 3) = v32;
    *(&v59 - 2) = v33;
    swift_getKeyPath();
    v35 = sub_242F03A70();
    sub_242F053A0();
    v35(&v66, 0);
  }

  else
  {
    v37 = v65;
    v36 = v66;
    v38 = *(v11 + 16);
    v38(v14, v65, v6);
    swift_beginAccess();
    sub_242F053A0();
    v39 = swift_endAccess();
    sub_242DEDBD0(v39);
    result = (v38)(v14, v37, v6);
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      return result;
    }

    MEMORY[0x28223BE20](result);
    v63 = v41;
    v42 = *(v19 + 88);
    v43 = *(v19 + 96);
    *(&v59 - 4) = v6;
    *(&v59 - 3) = v42;
    *(&v59 - 2) = v43;
    v44 = swift_getKeyPath();
    MEMORY[0x28223BE20](v44);
    *(&v59 - 4) = v6;
    *(&v59 - 3) = v42;
    *(&v59 - 2) = v43;
    swift_getKeyPath();
    v45 = sub_242F03A70();
    sub_242F053B0();
    v45(&v66, 0);
  }

LABEL_11:
  swift_beginAccess();

  v46 = sub_242F05380();

  if (v46 == 1)
  {
    sub_242DFC5E8(v65);
  }

  sub_242DEDDE0();
  v47 = *(*v3 + 144);
  swift_beginAccess();
  v48 = *(v3 + v47);

  v49 = sub_242DEDD34(v14, v48);

  (*(v64 + 8))(v14, v6);
  return sub_242DEEBA8(v49);
}

uint64_t sub_242DF0430(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 96);
  v4 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v47 = &v46 - v6;
  v7 = sub_242F05860();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v50 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v54 = &v46 - v8;
  v52 = sub_242F05860();
  v48 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v10 = &v46 - v9;
  v53 = v7;
  v11 = v7;
  v12 = v4;
  v56 = *(v11 - 8);
  MEMORY[0x28223BE20](v13);
  v49 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  v51 = v3;
  sub_242F05AA0();
  v21 = *(v59 + 56);
  v55 = v20;
  v21(v20, 0, 1, AssociatedTypeWitness);
  v22 = *(*a2 + 144);
  swift_beginAccess();
  v60 = *(a2 + v22);
  sub_242F053E0();
  swift_getWitnessTable();
  sub_242F04E10();
  v23 = *(v12 - 8);
  v24 = (*(v23 + 48))(v10, 1, v12);
  v46 = v12;
  v58 = AssociatedTypeWitness;
  if (v24 == 1)
  {
    v48[1](v10, v52);
    v25 = v17;
    v26 = 1;
  }

  else
  {
    sub_242F05AA0();
    (*(v23 + 8))(v10, v12);
    v25 = v17;
    v26 = 0;
  }

  v21(v25, v26, 1, AssociatedTypeWitness);
  v27 = v17;
  v28 = v56;
  v29 = *(TupleTypeMetadata2 + 48);
  v30 = *(v56 + 16);
  v31 = v53;
  v32 = v54;
  v33 = v55;
  v30(v54, v55, v53);
  v52 = v29;
  v30(&v32[v29], v27, v31);
  v34 = *(v59 + 48);
  if (v34(v32, 1, v58) != 1)
  {
    v48 = v27;
    v37 = v49;
    v30(v49, v32, v31);
    v38 = v52;
    v39 = v58;
    if (v34(&v32[v52], 1, v58) != 1)
    {
      v41 = v59;
      v42 = v47;
      (*(v59 + 32))(v47, &v32[v38], v39);
      swift_getAssociatedConformanceWitness();
      v36 = sub_242F04EE0();
      v43 = *(v41 + 8);
      v43(v42, v39);
      v44 = *(v56 + 8);
      v44(v48, v31);
      v44(v55, v31);
      v43(v37, v39);
      v44(v32, v31);
      return v36 & 1;
    }

    v40 = *(v56 + 8);
    v40(v48, v31);
    v40(v55, v31);
    (*(v59 + 8))(v37, v39);
    goto LABEL_9;
  }

  v35 = *(v28 + 8);
  v35(v27, v31);
  v35(v33, v31);
  if (v34(&v32[v52], 1, v58) != 1)
  {
LABEL_9:
    (*(v50 + 8))(v32, TupleTypeMetadata2);
    v36 = 0;
    return v36 & 1;
  }

  v35(v32, v31);
  v36 = 1;
  return v36 & 1;
}

uint64_t sub_242DF0AF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *v3;
  v8 = *(*v3 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v46 = &v41[-v10];
  v50 = sub_242F05860();
  v11 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v49 = &v41[-v14];
  v15 = *(v6 + 144);
  swift_beginAccess();
  v57[0] = *(v3 + v15);
  v51 = v8;
  v52 = a2;
  v45 = *(v7 + 88);
  v53 = v45;
  v54 = a1;
  sub_242F053E0();

  swift_getWitnessTable();
  sub_242F055D0();

  if (v59 == 1)
  {
    swift_beginAccess();

    v16 = sub_242F05380();
  }

  else
  {
    v16 = v58;
  }

  v17 = *(*v3 + 144);
  swift_beginAccess();
  v58 = *(v3 + v17);
  v44 = v16;
  v56[0] = v16;
  v18 = v49;
  sub_242DF1174(v49);
  v19 = v46;
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v20 = sub_242F039D0();
  __swift_project_value_buffer(v20, qword_27ED5D2E0);
  v21 = *(v9 + 16);
  v48 = a1;
  v21(v19, a1, v8);
  v22 = v47;
  v23 = v50;
  (*(v11 + 16))(v47, v18, v50);
  swift_retain_n();
  v24 = sub_242F039B0();
  v25 = sub_242F056E0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v56[0] = v43;
    *v26 = 136315906;
    v42 = v25;
    v27 = sub_242F05F60();
    v29 = v28;
    (*(v9 + 8))(v19, v8);
    v30 = sub_242C8FD38(v27, v29, v56);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2048;
    swift_beginAccess();

    v31 = sub_242F05380();

    *(v26 + 14) = v31;

    *(v26 + 22) = 2048;
    *(v26 + 24) = v44;
    *(v26 + 32) = 2080;
    v55 = v45;
    swift_getWitnessTable();
    v32 = sub_242F05F60();
    v34 = v33;
    v35 = *(v11 + 8);
    v35(v22, v50);
    v36 = sub_242C8FD38(v32, v34, v56);
    v18 = v49;

    *(v26 + 34) = v36;
    _os_log_impl(&dword_242C53000, v24, v42, "[sortedInsert] item=%s items.count=%ld itemsIndex=%ld sibling=%s", v26, 0x2Au);
    v37 = v43;
    swift_arrayDestroy();
    MEMORY[0x245D287D0](v37, -1, -1);
    v38 = v26;
    v23 = v50;
    MEMORY[0x245D287D0](v38, -1, -1);
  }

  else
  {

    v39 = v19;
    v35 = *(v11 + 8);
    v35(v22, v23);
    (*(v9 + 8))(v39, v8);
  }

  sub_242DEFABC(v48, v18);
  return (v35)(v18, v23);
}

uint64_t sub_242DF1174@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v17[-v7];
  sub_242F05590();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = sub_242F051E0();
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  if (v9)
  {
    v10 = sub_242F05650();
    v12 = v11;
    v13 = swift_getAssociatedTypeWitness();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a4, v12, v13);
    v10(v17, 0);
    return (*(v14 + 56))(a4, 0, 1, v13);
  }

  else
  {
    v16 = swift_getAssociatedTypeWitness();
    return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
  }
}

void sub_242DF141C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v58 = a3;
  WitnessTable = a2;
  v72 = a1;
  v5 = *v3;
  v61 = sub_242F042C0();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v5[10];
  v57 = sub_242F05860();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v62 = v52 - v8;
  v65 = *(v7 - 8);
  MEMORY[0x28223BE20](v9);
  v63 = v52 - v10;
  v11 = v5[11];
  v12 = v5[12];
  v13 = type metadata accessor for CarouselModel.Direction(0, v7, v11, v12);
  v69 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v64 = v52 - v14;
  v15 = sub_242F05860();
  v71 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v52 - v19;
  v21 = v5[18];
  swift_beginAccess();
  v77[0] = *(v4 + v21);
  v73 = v7;
  v74 = v11;
  v67 = v11;
  v66 = v12;
  v75 = v12;
  v22 = v72;
  v76 = v72;
  v70 = v7;
  v23 = sub_242F053E0();

  swift_getWitnessTable();
  LOBYTE(v21) = sub_242F051C0();

  if (v21)
  {
    v52[1] = v23;
    v55 = 0;
    v24 = v22;
    sub_242DF1E14(WitnessTable, v4, v22, v20);
    v25 = v71;
    (*(v71 + 16))(v17, v20, v15);
    v26 = v69;
    v27 = v20;
    if ((v69[6])(v17, 1, v13) == 1)
    {
      v28 = *(v25 + 8);
      v71 = v25 + 8;
      v69 = v28;
      v29 = (v28)(v17, v15);
      MEMORY[0x28223BE20](v29);
      v54 = v15;
      v53 = v20;
      v30 = v70;
      v31 = v67;
      v52[-4] = v70;
      v52[-3] = v31;
      v32 = v66;
      v52[-2] = v66;
      v52[-1] = v24;
      swift_beginAccess();
      WitnessTable = swift_getWitnessTable();
      swift_getWitnessTable();
      sub_242F05690();
      v33 = swift_endAccess();
      v34 = sub_242DEDBD0(v33);
      v65 = v52;
      MEMORY[0x28223BE20](v34);
      v52[-4] = v30;
      v52[-3] = v31;
      v35 = v72;
      v52[-2] = v32;
      v52[-1] = v35;
      MEMORY[0x28223BE20](v36);
      v52[-4] = v30;
      v52[-3] = v31;
      v52[-2] = v32;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v52[-4] = v30;
      v52[-3] = v31;
      v52[-2] = v32;
      swift_getKeyPath();
      v38 = sub_242F03A70();
      sub_242F05690();
      v38(v77, 0);

      (v69)(v53, v54);
    }

    else
    {
      v39 = v64;
      (v26[4])(v64, v17, v13);
      v40 = v62;
      sub_242DF5074(v39, v62);
      v41 = v65;
      v42 = v70;
      if ((v65[6])(v40, 1, v70) == 1)
      {
        v26[1](v39, v13);
        (*(v25 + 8))(v27, v15);
        (*(v56 + 8))(v40, v57);
      }

      else
      {
        v43 = (v41[4])(v63, v40, v42);
        if (*(v4 + *(*v4 + 152)))
        {

          sub_242F04BD0();
        }

        v44 = v58;
        v54 = v15;
        v53 = v27;
        if (v58)
        {
        }

        MEMORY[0x28223BE20](v43);
        v52[-4] = v72;
        v45 = v44 & 1;
        LOBYTE(v52[-3]) = v44 & 1;
        v46 = v63;
        v52[-2] = v4;
        v52[-1] = v46;
        v47 = swift_allocObject();
        swift_weakInit();
        v48 = swift_allocObject();
        v49 = v70;
        v50 = v67;
        *(v48 + 16) = v70;
        *(v48 + 24) = v50;
        *(v48 + 32) = v66;
        *(v48 + 40) = v47;
        *(v48 + 48) = v45;

        v51 = v59;
        sub_242F042A0();
        sub_242F03D40();

        (*(v60 + 8))(v51, v61);
        v69[1](v64, v13);
        (*(v71 + 8))(v53, v54);

        (v65[1])(v46, v49);
      }
    }
  }
}

uint64_t sub_242DF1E14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a4;
  v7 = *a2;
  v8 = *(*a2 + 80);
  v65 = *(*a2 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v61 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v60 = v53 - v12;
  v13 = sub_242F05860();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v53 - v18;
  MEMORY[0x28223BE20](v20);
  v57 = v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v64 = v53 - v24;
  v25 = *(v14 + 16);
  v26 = a1;
  v28 = v27;
  v59 = v29;
  v25(v19, v26, v23);
  v56 = *(v28 + 48);
  v30 = v56(v19, 1, v8);
  v58 = v7;
  if (v30 == 1)
  {
    (*(v14 + 8))(v19, v59);
    v31 = v65;
    v33 = v61;
    v32 = v62;
    v34 = v60;
    v35 = v28;
  }

  else
  {
    v54 = v28;
    v55 = a3;
    v36 = *(v28 + 32);
    v37 = v64;
    v36(v64, v19, v8);
    v38 = *(*a2 + 144);
    v39 = swift_beginAccess();
    v53[1] = v53;
    v66 = *(a2 + v38);
    MEMORY[0x28223BE20](v39);
    v40 = *(v7 + 88);
    v53[-4] = v8;
    v53[-3] = v40;
    v53[0] = v40;
    v53[-2] = v65;
    v53[-1] = v37;
    sub_242F053E0();

    swift_getWitnessTable();
    sub_242F05180();

    LODWORD(v38) = v56(v16, 1, v8);
    (*(v14 + 8))(v16, v59);
    if (v38 == 1)
    {
      v35 = v54;
      (*(v54 + 8))(v64, v8);
      v31 = v65;
      v33 = v61;
      v32 = v62;
      v34 = v60;
    }

    else
    {
      v34 = v60;
      v31 = v65;
      sub_242F05AA0();
      v33 = v61;
      sub_242F05AA0();
      swift_getAssociatedConformanceWitness();
      v41 = sub_242F04EE0();
      v32 = v62;
      v42 = *(v62 + 8);
      v42(v33, AssociatedTypeWitness);
      v42(v34, AssociatedTypeWitness);
      if ((v41 & 1) == 0)
      {
        v50 = v63;
        v51 = v64;
        sub_242F05AA0();
        (*(v32 + 56))(v50, 0, 2, AssociatedTypeWitness);
        v52 = type metadata accessor for CarouselModel.Direction(0, v8, v53[0], v31);
        (*(*(v52 - 8) + 56))(v50, 0, 1, v52);
        return (*(v54 + 8))(v51, v8);
      }

      v35 = v54;
      (*(v54 + 8))(v64, v8);
    }
  }

  sub_242F05AA0();
  v43 = v57;
  sub_242DEDDE0();
  sub_242F05AA0();
  (*(v35 + 8))(v43, v8);
  swift_getAssociatedConformanceWitness();
  LOBYTE(v43) = sub_242F04EE0();
  v44 = *(v32 + 8);
  v44(v33, AssociatedTypeWitness);
  v44(v34, AssociatedTypeWitness);
  v45 = v58;
  if (v43)
  {
    v46 = v63;
    (*(v32 + 56))(v63, 2, 2, AssociatedTypeWitness);
    v47 = type metadata accessor for CarouselModel.Direction(0, v8, *(v45 + 88), v31);
    return (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  }

  else
  {
    v49 = type metadata accessor for CarouselModel.Direction(0, v8, *(v58 + 88), v31);
    return (*(*(v49 - 8) + 56))(v63, 1, 1, v49);
  }
}

uint64_t sub_242DF2580(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v57 = a2;
  v7 = *a3;
  v8 = *(*a3 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v54 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  WitnessTable = v7;
  v14 = sub_242F039D0();
  __swift_project_value_buffer(v14, qword_27ED5D2E0);
  v15 = *(v9 + 16);
  v52 = a1;
  v15(v13, a1, v8);
  v16 = sub_242F039B0();
  v17 = sub_242F056E0();
  v18 = os_log_type_enabled(v16, v17);
  v53 = v9;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v48 = a4;
    v20 = v19;
    v47 = swift_slowAlloc();
    v55[0] = v47;
    *v20 = 136446466;
    v46 = v16;
    v21 = v54;
    v15(v54, v13, v8);
    v22 = *(v9 + 8);
    v22(v13, v8);
    v56 = v17;
    v23 = WitnessTable;
    v24 = sub_242F05F60();
    v26 = v25;
    v51 = v22;
    v22(v21, v8);
    v27 = sub_242C8FD38(v24, v26, v55);

    *(v20 + 4) = v27;
    *(v20 + 12) = 1026;
    *(v20 + 14) = v57 & 1;
    v28 = v46;
    _os_log_impl(&dword_242C53000, v46, v56, "Removing carousel item with id %{public}s. Animated: %{BOOL,public}d", v20, 0x12u);
    v29 = v47;
    __swift_destroy_boxed_opaque_existential_2Tm(v47);
    MEMORY[0x245D287D0](v29, -1, -1);
    v30 = v20;
    a4 = v48;
    MEMORY[0x245D287D0](v30, -1, -1);
  }

  else
  {
    v51 = *(v9 + 8);
    v51(v13, v8);

    v23 = WitnessTable;
  }

  v31 = sub_242DFC5E8(a4);
  v48 = &v45;
  MEMORY[0x28223BE20](v31);
  v32 = *(v23 + 88);
  v33 = *(v23 + 96);
  *(&v45 - 4) = v8;
  *(&v45 - 3) = v32;
  v34 = v52;
  *(&v45 - 2) = v33;
  *(&v45 - 1) = v34;
  swift_beginAccess();
  sub_242F053E0();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v35 = v50;
  sub_242F05690();
  v50 = v35;
  v36 = swift_endAccess();
  v37 = sub_242DEDBD0(v36);
  v48 = &v45;
  MEMORY[0x28223BE20](v37);
  *(&v45 - 4) = v8;
  *(&v45 - 3) = v32;
  *(&v45 - 2) = v33;
  *(&v45 - 1) = v34;
  MEMORY[0x28223BE20](v38);
  *(&v45 - 4) = v8;
  *(&v45 - 3) = v32;
  *(&v45 - 2) = v33;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v45 - 4) = v8;
  *(&v45 - 3) = v32;
  *(&v45 - 2) = v33;
  swift_getKeyPath();
  v40 = sub_242F03A70();
  sub_242F05690();
  v40(v55, 0);

  v41 = 0;
  v42 = v57;
  if (v57)
  {
    v41 = *(a3 + *(*a3 + 160) + 48) ^ 1;
  }

  sub_242DEF0D4(v41 & 1);
  sub_242DEF1CC(v42 & 1);
  v43 = v54;
  sub_242DEDDE0();
  sub_242DF5E04(v43);
  return (v51)(v43, v8);
}

BOOL sub_242DF2B4C(uint64_t a1)
{
  sub_242DEEF14();
  sub_242F053E0();
  swift_getWitnessTable();
  sub_242F055D0();

  return (v2 & 1) == 0;
}

uint64_t sub_242DF2C4C(uint64_t a1, int a2)
{
  v77 = a2;
  v4 = *v2;
  v5 = sub_242F042C0();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  v65 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v4[12];
  v8 = v4[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = *(AssociatedTypeWitness - 8);
  v74 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v72 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v71 = &v61 - v12;
  v70 = sub_242F05860();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v76 = &v61 - v13;
  v81 = *(v8 - 8);
  MEMORY[0x28223BE20](v14);
  v69 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v80 = &v61 - v17;
  v78 = v2;
  v18 = v4[11];
  v79 = v8;
  v64 = v18;
  v75 = v7;
  v19 = type metadata accessor for CarouselModel.Direction(0, v8, v18, v7);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v61 - v24;
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v26 = sub_242F039D0();
  __swift_project_value_buffer(v26, qword_27ED5D2E0);
  v27 = *(v20 + 16);
  v27(v25, a1, v19);
  v28 = sub_242F039B0();
  v29 = sub_242F056E0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v63 = a1;
    v31 = v30;
    v62 = swift_slowAlloc();
    v82[0] = v62;
    *v31 = 136446466;
    v27(v22, v25, v19);
    v32 = *(v20 + 8);
    v32(v25, v19);
    v33 = CarouselModel.Direction.description.getter(v19);
    v35 = v34;
    v32(v22, v19);
    v36 = sub_242C8FD38(v33, v35, v82);

    *(v31 + 4) = v36;
    *(v31 + 12) = 1026;
    *(v31 + 14) = v77 & 1;
    _os_log_impl(&dword_242C53000, v28, v29, "Rotating carousel item with direction %{public}s. Animated: %{BOOL,public}d", v31, 0x12u);
    v37 = v62;
    __swift_destroy_boxed_opaque_existential_2Tm(v62);
    MEMORY[0x245D287D0](v37, -1, -1);
    v38 = v31;
    a1 = v63;
    MEMORY[0x245D287D0](v38, -1, -1);
  }

  else
  {
    (*(v20 + 8))(v25, v19);
  }

  v39 = v76;
  v40 = v78;
  sub_242DF5074(a1, v76);
  v41 = v81;
  v42 = v79;
  if ((*(v81 + 48))(v39, 1, v79) == 1)
  {
    return (*(v68 + 8))(v39, v70);
  }

  (*(v41 + 32))(v80, v39, v42);
  v44 = v71;
  sub_242F05AA0();
  v45 = v69;
  sub_242DEDDE0();
  v46 = v72;
  sub_242F05AA0();
  v49 = *(v41 + 8);
  v47 = v41 + 8;
  v48 = v49;
  v49(v45, v42);
  v50 = v74;
  swift_getAssociatedConformanceWitness();
  v51 = sub_242F04EE0();
  v52 = *(v73 + 8);
  v52(v46, v50);
  v52(v44, v50);
  if (v51)
  {
    return v48(v80, v42);
  }

  v53 = v80;
  if (*(v40 + *(*v40 + 152)))
  {

    sub_242F04BD0();
  }

  v54 = v48;
  v81 = v47;
  if (v77)
  {
  }

  v55 = v65;
  v56 = sub_242F042B0();
  MEMORY[0x28223BE20](v56);
  *(&v61 - 4) = v53;
  v57 = v77 & 1;
  *(&v61 - 24) = v77 & 1;
  *(&v61 - 2) = v40;
  v58 = swift_allocObject();
  swift_weakInit();
  v59 = swift_allocObject();
  v60 = v64;
  *(v59 + 16) = v42;
  *(v59 + 24) = v60;
  *(v59 + 32) = v75;
  *(v59 + 40) = v58;
  *(v59 + 48) = v57;

  sub_242F03D40();
  (*(v66 + 8))(v55, v67);

  return v54(v53, v42);
}

uint64_t sub_242DF3498(uint64_t a1, int a2, uint64_t a3)
{
  v38 = a2;
  v35 = *a3;
  isa = v35[10].isa;
  v7 = *(isa - 1);
  MEMORY[0x28223BE20](a1);
  v37 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v31[-v10];
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v12 = sub_242F039D0();
  __swift_project_value_buffer(v12, qword_27ED5D2E0);
  v13 = *(v7 + 16);
  v36 = a1;
  v13(v11, a1, isa);
  v14 = sub_242F039B0();
  v15 = sub_242F056E0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v3;
    v17 = v16;
    v33 = swift_slowAlloc();
    v39 = v33;
    *v17 = 136446466;
    v32 = v15;
    v18 = v37;
    v13(v37, v11, isa);
    v19 = *(v7 + 8);
    v19(v11, isa);
    v20 = sub_242F05F60();
    v35 = v14;
    v21 = v20;
    v23 = v22;
    v19(v18, isa);
    v24 = sub_242C8FD38(v21, v23, &v39);

    *(v17 + 4) = v24;
    *(v17 + 12) = 1026;
    v25 = v38;
    *(v17 + 14) = v38 & 1;
    v26 = v35;
    _os_log_impl(&dword_242C53000, v35, v32, "Starting carousel rotation to %{public}s. Animated: %{BOOL,public}d", v17, 0x12u);
    v27 = v33;
    __swift_destroy_boxed_opaque_existential_2Tm(v33);
    MEMORY[0x245D287D0](v27, -1, -1);
    MEMORY[0x245D287D0](v17, -1, -1);
  }

  else
  {
    v19 = *(v7 + 8);
    v19(v11, isa);

    v25 = v38;
  }

  sub_242DFC5E8(v36);
  if (v25)
  {
    v28 = *(a3 + *(*a3 + 160) + 48) ^ 1;
  }

  else
  {
    v28 = 0;
  }

  sub_242DEF0D4(v28 & 1);
  result = sub_242DEF1CC(v25 & 1);
  if (*(a3 + *(*a3 + 160) + 64) == 1)
  {
    v30 = v37;
    sub_242DEDDE0();
    sub_242DF5E04(v30);
    return v19(v30, isa);
  }

  return result;
}

uint64_t sub_242DF3848(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_242DEDDE0();
    v10 = 0.0;
    if (a2)
    {
      v10 = *(v9 + *(*v9 + 160) + 72);
    }

    sub_242DF5E90(v7, v10);

    return (*(v5 + 8))(v7, a3);
  }

  return result;
}

void *sub_242DF396C(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_242F04B60();
  MEMORY[0x28223BE20](v5);
  v17[0] = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v7 = sub_242F039D0();
  __swift_project_value_buffer(v7, qword_27ED5D2E0);
  v8 = sub_242F039B0();
  v9 = sub_242F056E0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67240192;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_242C53000, v8, v9, "Showing carousel decorations. Animated: %{BOOL,public}d", v10, 8u);
    MEMORY[0x245D287D0](v10, -1, -1);
  }

  if (*(v2 + *(*v2 + 152)))
  {

    sub_242F04BD0();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = *(v4 + 80);
  *(v13 + 32) = *(v4 + 96);
  *(v13 + 40) = v12;
  *(v13 + 48) = a1 & 1;
  *(v13 + 56) = v11;
  aBlock[4] = sub_242DFCA3C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_242DEA248;
  aBlock[3] = &block_descriptor_1;
  _Block_copy(aBlock);
  v17[1] = MEMORY[0x277D84F90];
  sub_242DFCA68();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECFC610, &qword_242F48C80);
  sub_242C7E000(&qword_27ECFC060, &unk_27ECFC610, &qword_242F48C80, MEMORY[0x277D83970]);
  sub_242F05930();
  sub_242F04BE0();
  swift_allocObject();
  v14 = sub_242F04BC0();

  swift_beginAccess();
  *(v11 + 16) = v14;

  *(v2 + *(*v2 + 152)) = v14;

  sub_242D3DCD0();
  result = sub_242F05750();
  if (*(v2 + *(*v2 + 152)))
  {
    v16 = result;

    sub_242F05770();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242DF3D68(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_242F042C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = a3;
    v28 = v12;
    v30 = v11;
    v16 = a4;
    if (a2)
    {
      v29 = *(result + *(*result + 200));
    }

    else
    {
      v29 = 0;
    }

    v17 = swift_allocObject();
    v18 = swift_weakInit();
    v26[2] = v26;
    MEMORY[0x28223BE20](v18);
    v26[1] = &v26[-8];
    v26[-6] = v16;
    v26[-5] = a5;
    v19 = a5;
    v20 = a6;
    v26[-4] = a6;
    v26[-3] = v17;
    v21 = a2 & 1;
    LOBYTE(v26[-2]) = a2 & 1;
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = v27;
    swift_beginAccess();
    v24 = *(v23 + 16);
    v25 = swift_allocObject();
    *(v25 + 16) = v16;
    *(v25 + 24) = v19;
    *(v25 + 32) = v20;
    *(v25 + 40) = v22;
    *(v25 + 48) = v24;
    *(v25 + 56) = v21;
    swift_retain_n();

    sub_242F042A0();
    sub_242F03D40();
    (*(v28 + 8))(v14, v30);
  }

  return result;
}

uint64_t sub_242DF4028(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if (a2)
    {
      v10 = *(result + *(*result + 160) + 48) ^ 1;
    }

    else
    {
      v10 = 0;
    }

    sub_242DEF0D4(v10 & 1);
    sub_242DEF1CC(a2 & 1);
    if (*(v9 + *(*v9 + 160) + 64) == 1)
    {
    }

    v11 = (v9 + *(*v9 + 112));
    v12 = *v11;
    if (!*v11)
    {
    }

    else
    {
      v13 = v11[1];
      sub_242C5573C(*v11, v13);
      sub_242DEDDE0();
      v12(v7);
      sub_242C655DC(v12, v13);

      return (*(v5 + 8))(v7, a3);
    }
  }

  return result;
}

uint64_t sub_242DF420C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (a2)
    {

      if (sub_242F04BB0())
      {
        if (qword_27ECEF4C0 != -1)
        {
          swift_once();
        }

        v8 = sub_242F039D0();
        __swift_project_value_buffer(v8, qword_27ED5D2E0);
        v9 = sub_242F039B0();
        v10 = sub_242F056E0();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 67240192;
          *(v11 + 4) = a3 & 1;
          _os_log_impl(&dword_242C53000, v9, v10, "Previous carousel decorations showing was cancelled. Animated: %{BOOL,public}d", v11, 8u);
          MEMORY[0x245D287D0](v11, -1, -1);
        }
      }

      else
      {
        if (qword_27ECEF4C0 != -1)
        {
          swift_once();
        }

        v12 = sub_242F039D0();
        __swift_project_value_buffer(v12, qword_27ED5D2E0);
        v13 = sub_242F039B0();
        v14 = sub_242F056E0();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 67240192;
          *(v15 + 4) = a3 & 1;
          _os_log_impl(&dword_242C53000, v13, v14, "Finished showing carousel decorations. Animated: %{BOOL,public}d", v15, 8u);
          MEMORY[0x245D287D0](v15, -1, -1);
        }

        swift_beginAccess();
        sub_242F053E0();
        swift_getWitnessTable();
        v16 = sub_242F05610();
        v17 = 0.0;
        if ((v16 & 1) == 0)
        {
          v17 = *(v7 + *(*v7 + 160) + 72);
        }

        sub_242DF44C0(v17);
      }
    }
  }

  return result;
}

uint64_t sub_242DF44C0(double a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_242F04BA0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v28 = &v26 - v9;
  v10 = sub_242F04B60();
  MEMORY[0x28223BE20](v10);
  v26 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v12 = sub_242F039D0();
  __swift_project_value_buffer(v12, qword_27ED5D2E0);
  v13 = sub_242F039B0();
  v14 = sub_242F056E0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134349056;
    *(v15 + 4) = a1;
    _os_log_impl(&dword_242C53000, v13, v14, "Hiding carousel decorations. Delay: %{public}f", v15, 0xCu);
    MEMORY[0x245D287D0](v15, -1, -1);
  }

  v29 = v6;
  v30 = v5;

  if (*(v2 + *(*v2 + 152)))
  {

    sub_242F04BD0();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = *(v4 + 80);
  *(v18 + 32) = *(v4 + 96);
  *(v18 + 40) = v17;
  *(v18 + 48) = v16;
  *(v18 + 56) = a1;
  aBlock[4] = sub_242DFCAC0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_242DEA248;
  aBlock[3] = &block_descriptor_38;
  _Block_copy(aBlock);
  v31 = MEMORY[0x277D84F90];
  sub_242DFCA68();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECFC610, &qword_242F48C80);
  sub_242C7E000(&qword_27ECFC060, &unk_27ECFC610, &qword_242F48C80, MEMORY[0x277D83970]);
  sub_242F05930();
  sub_242F04BE0();
  swift_allocObject();
  v19 = sub_242F04BC0();

  swift_beginAccess();
  *(v16 + 16) = v19;

  *(v2 + *(*v2 + 152)) = v19;

  sub_242D3DCD0();
  v20 = sub_242F05750();
  v21 = v27;
  sub_242F04B90();
  v22 = v28;
  sub_242F04BF0();
  v23 = v30;
  v24 = *(v29 + 8);
  result = v24(v21, v30);
  if (*(v2 + *(*v2 + 152)))
  {

    sub_242F05740();

    v24(v22, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242DF49B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = sub_242F042C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(*result + 200);
    v24 = v11;
    v23[1] = *(result + v16);
    v17 = swift_allocObject();
    v18 = swift_weakInit();
    v25 = v23;
    MEMORY[0x28223BE20](v18);
    v23[2] = &v23[-6];
    v23[-4] = a3;
    v23[-3] = a4;
    v23[-2] = a5;
    v23[-1] = v17;
    v19 = a5;
    v20 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    v21 = *(a2 + 16);
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    *(v22 + 24) = a4;
    *(v22 + 32) = v19;
    *(v22 + 40) = v20;
    *(v22 + 48) = v21;
    *(v22 + 56) = a6;
    swift_retain_n();

    sub_242F042A0();
    sub_242F03D40();
    (*(v12 + 8))(v14, v24);
  }

  return result;
}

uint64_t sub_242DF4C5C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_242DEF0D4(0);
    sub_242DEF1CC(0);
  }

  return result;
}

uint64_t sub_242DF4CC8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v11 = result;

      if (sub_242F04BB0())
      {
        if (qword_27ECEF4C0 != -1)
        {
          swift_once();
        }

        v12 = sub_242F039D0();
        __swift_project_value_buffer(v12, qword_27ED5D2E0);
        v13 = sub_242F039B0();
        v14 = sub_242F056E0();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_242C53000, v13, v14, "Previous carousel decorations hiding was cancelled", v15, 2u);
          MEMORY[0x245D287D0](v15, -1, -1);
        }
      }

      else
      {
        if (qword_27ECEF4C0 != -1)
        {
          swift_once();
        }

        v16 = sub_242F039D0();
        __swift_project_value_buffer(v16, qword_27ED5D2E0);
        v17 = sub_242F039B0();
        v18 = sub_242F056E0();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 134349056;
          *(v19 + 4) = a4;
          _os_log_impl(&dword_242C53000, v17, v18, "Finished hiding carousel decorations. Delay: %{public}f", v19, 0xCu);
          MEMORY[0x245D287D0](v19, -1, -1);
        }

        if (*(v11 + *(*v11 + 160) + 64) != 1)
        {
          v20 = sub_242F039B0();
          v21 = sub_242F056E0();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 134349056;
            *(v22 + 4) = a4;
            _os_log_impl(&dword_242C53000, v20, v21, "Animation settled after %{public}f.", v22, 0xCu);
            MEMORY[0x245D287D0](v22, -1, -1);
          }

          v23 = (v11 + *(*v11 + 120));
          v24 = *v23;
          if (*v23)
          {
            v25 = v23[1];
            sub_242C5573C(*v23, v25);
            sub_242DEDDE0();
            v24(v9);

            sub_242C655DC(v24, v25);

            return (*(v7 + 8))(v9, a3);
          }
        }
      }
    }
  }

  return result;
}

void sub_242DF5074(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v79 = a1;
  v83 = *v2;
  v5 = v83[12];
  v6 = v83[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v74 = &v69 - v8;
  v73 = v83[11];
  v80 = v5;
  v9 = type metadata accessor for CarouselModel.Direction(0, v6, v73, v5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v69 - v11;
  v72 = *(v6 - 8);
  MEMORY[0x28223BE20](v13);
  v78 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v69 - v16;
  sub_242DEEF14();
  v82 = v6;
  v18 = sub_242F05380();

  if (v18 >= 2)
  {
    v71 = a2;
    sub_242DEDDE0();
    v19 = sub_242DEEF14();
    v20 = sub_242DEDD34(v17, v19);

    v21 = *(v72 + 8);
    v83 = v17;
    v76 = v21;
    v77 = v72 + 8;
    v21(v17, v82);
    (*(v10 + 16))(v12, v79, v9);
    v22 = v75;
    v23 = v75[6](v12, 2, AssociatedTypeWitness);
    v81 = v3;
    if (v23)
    {
      v24 = v73;
      if (v23 == 1)
      {
        v25 = -1;
      }

      else
      {
        v25 = 1;
      }

      goto LABEL_11;
    }

    v28 = v74;
    (v22)[4](v74, v12, AssociatedTypeWitness);
    v86 = sub_242DEEF14();
    MEMORY[0x28223BE20](v86);
    v29 = AssociatedTypeWitness;
    v24 = v73;
    *(&v69 - 4) = v82;
    *(&v69 - 3) = v24;
    *(&v69 - 2) = v80;
    *(&v69 - 1) = v28;
    sub_242F053E0();
    swift_getWitnessTable();
    sub_242F055D0();

    if (v85)
    {
      (v22[1])(v28, v29);
      v25 = 0;
LABEL_11:
      v30 = v72;
      goto LABEL_12;
    }

    v60 = v84;
    v61 = v84 - v20;
    v62 = __OFSUB__(v84, v20);
    if (v84 >= v20)
    {
      if (v62)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      sub_242DEEF14();
      v67 = sub_242F05380();

      v66 = v61 - v67;
      if (__OFSUB__(v61, v67))
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v65 = v60 - v20;
      v61 -= v67;
      if ((v66 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v62)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      sub_242DEEF14();
      v63 = sub_242F05380();

      v64 = v60 + v63;
      if (__OFADD__(v60, v63))
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v32 = __OFSUB__(v64, v20);
      v65 = v64 - v20;
      if (v32)
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v66 = v60 - v20;
      if ((v61 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }
    }

    v66 = -v61;
    if (__OFSUB__(0, v61))
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return;
    }

LABEL_46:
    v68 = v65;
    if (v65 < 0)
    {
      v68 = -v65;
      if (__OFSUB__(0, v65))
      {
        goto LABEL_64;
      }
    }

    if (v66 >= v68)
    {
      v25 = v65;
    }

    else
    {
      v25 = v61;
    }

    (v22[1])(v74, v29);
    v30 = v72;
LABEL_12:
    v31 = v20;
    v32 = __OFADD__(v20, v25);
    v33 = v20 + v25;
    v34 = __OFADD__(v20, v25);
    if (v32)
    {
LABEL_54:
      __break(1u);
    }

    else
    {
      v70 = v25;
      v35 = v33;
      if (v33 < 0)
      {
        goto LABEL_21;
      }

      sub_242DEEF14();
      v36 = sub_242F05380();

      if (v33 >= v36)
      {
        v37 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        sub_242DEEF14();
        v38 = sub_242F05380();

        v32 = __OFSUB__(v37, v38);
        v35 = v37 - v38;
        if (v32)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v30 = v72;
        if (v35)
        {
LABEL_21:
          v75 = (v30 + 16);
          do
          {
            v79 = v31;
            MEMORY[0x28223BE20](v30);
            v39 = v82;
            *(&v69 - 4) = v82;
            *(&v69 - 3) = v24;
            v40 = v80;
            *(&v69 - 2) = v80;
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            *(&v69 - 4) = v39;
            *(&v69 - 3) = v24;
            *(&v69 - 2) = v40;
            swift_getKeyPath();
            if (v35 < 0)
            {
              v74 = sub_242F03A70();
              v50 = v82;
              sub_242F053E0();
              swift_getWitnessTable();
              swift_getWitnessTable();
              v51 = v80;
              v52 = v73;
              sub_242F05680();
              (v74)(&v84, 0);

              v53 = (*v75)(v78, v83, v50);
              MEMORY[0x28223BE20](v53);
              *(&v69 - 4) = v50;
              *(&v69 - 3) = v52;
              *(&v69 - 2) = v51;
              v54 = swift_getKeyPath();
              MEMORY[0x28223BE20](v54);
              *(&v69 - 4) = v50;
              *(&v69 - 3) = v52;
              v55 = v52;
              *(&v69 - 2) = v51;
              swift_getKeyPath();
              v56 = sub_242F03A70();
              v57 = v83;
              sub_242F053B0();
              v56(&v84, 0);

              v30 = v76(v57, v50);
              v31 = v79 + 1;
              if (__OFADD__(v79, 1))
              {
                goto LABEL_53;
              }

              v49 = 1;
              v24 = v55;
            }

            else
            {
              v42 = sub_242F03A70();
              v43 = v82;
              sub_242F053E0();
              swift_getWitnessTable();
              sub_242F05660();
              v42(&v84, 0);

              v44 = (*v75)(v78, v83, v43);
              MEMORY[0x28223BE20](v44);
              *(&v69 - 4) = v43;
              *(&v69 - 3) = v24;
              v45 = v80;
              *(&v69 - 2) = v80;
              v46 = swift_getKeyPath();
              MEMORY[0x28223BE20](v46);
              *(&v69 - 4) = v43;
              *(&v69 - 3) = v24;
              *(&v69 - 2) = v45;
              swift_getKeyPath();
              v47 = sub_242F03A70();
              v48 = v83;
              sub_242F053A0();
              v47(&v84, 0);

              v30 = v76(v48, v43);
              v31 = v79 - 1;
              if (__OFSUB__(v79, 1))
              {
                __break(1u);
LABEL_53:
                __break(1u);
                goto LABEL_54;
              }

              v49 = -1;
            }

            v35 += v49;
          }

          while (v35);
          v34 = __OFADD__(v31, v70);
        }
      }

      if (!v34)
      {
        sub_242DEEF14();
        v58 = v71;
        v59 = v82;
        sub_242F05400();

        (*(v72 + 56))(v58, 0, 1, v59);
        return;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  v26 = *(v72 + 56);
  v27 = v82;

  v26(a2, 1, 1, v27);
}

uint64_t sub_242DF5B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v11 - v7;
  sub_242F05AA0();
  swift_getAssociatedConformanceWitness();
  v9 = sub_242F04EE0();
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return v9 & 1;
}

uint64_t sub_242DF5C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_242F05AA0();
  sub_242F05AA0();
  swift_getAssociatedConformanceWitness();
  v12 = sub_242F04EE0();
  v13 = *(v6 + 8);
  v13(v8, AssociatedTypeWitness);
  v13(v11, AssociatedTypeWitness);
  return v12 & 1;
}

uint64_t sub_242DF5E04(uint64_t result)
{
  v2 = (v1 + *(*v1 + 112));
  v3 = *v2;
  if (*v2)
  {
    v4 = result;
    v5 = v2[1];
    sub_242C5573C(*v2, v5);
    v3(v4);

    return sub_242C655DC(v3, v5);
  }

  return result;
}

uint64_t sub_242DF5E90(uint64_t a1, double a2)
{
  v3 = v2;
  if (*(v2 + *(*v2 + 160) + 64) == 1)
  {
    if (qword_27ECEF4C0 != -1)
    {
      swift_once();
    }

    v6 = sub_242F039D0();
    __swift_project_value_buffer(v6, qword_27ED5D2E0);
    v7 = sub_242F039B0();
    v8 = sub_242F056E0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_242C53000, v7, v8, "Animation settled immidiately.", v9, 2u);
      MEMORY[0x245D287D0](v9, -1, -1);
    }

    v10 = (v3 + *(*v3 + 120));
    v11 = *v10;
    if (*v10)
    {
      v12 = v10[1];
      sub_242C5573C(*v10, v12);
      v11(a1);
      sub_242C655DC(v11, v12);
    }
  }

  swift_beginAccess();
  sub_242F053E0();
  swift_getWitnessTable();
  v13 = sub_242F05610();
  v14 = 0.0;
  if ((v13 & 1) == 0)
  {
    v14 = a2;
  }

  return sub_242DF44C0(v14);
}

uint64_t CarouselModel.deinit()
{
  v1 = *(*v0 + 104);
  v2 = sub_242F03AB0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_242C655DC(*(v0 + *(*v0 + 112)), *(v0 + *(*v0 + 112) + 8));
  sub_242C655DC(*(v0 + *(*v0 + 120)), *(v0 + *(*v0 + 120) + 8));
  sub_242C655DC(*(v0 + *(*v0 + 128)), *(v0 + *(*v0 + 128) + 8));
  sub_242C655DC(*(v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 8));

  v3 = *(*v0 + 168);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31C0, &unk_242F17F20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 176);
  sub_242F053E0();
  v6 = sub_242F03AB0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 184);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2ED8, &qword_242F17610);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + *(*v0 + 192), v8);

  return v0;
}

uint64_t CarouselModel.__deallocating_deinit()
{
  CarouselModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_242DF63A8@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  type metadata accessor for CarouselModel(0, a1[10], a1[11], a1[12]);
  result = sub_242F03A10();
  *a3 = result;
  return result;
}

double sub_242DF63F0(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v9 - v4;
  sub_242DEDDE0();
  v6 = sub_242DEEF14();
  v7 = sub_242DEDD34(v5, v6);

  (*(v3 + 8))(v5, v2);
  return -v7;
}

uint64_t sub_242DF6514(uint64_t a1)
{
  v17[1] = a1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  v11 = *(v3 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v17 - v13;
  if ((*(v1 + *(v2 + 160) + 64) & 1) == 0)
  {
    return sub_242DEF0E8();
  }

  sub_242DEDDE0();
  sub_242F05AA0();
  (*(v11 + 8))(v14, v3);
  sub_242F05AA0();
  swift_getAssociatedConformanceWitness();
  sub_242F04EE0();
  v15 = *(v5 + 8);
  v15(v7, AssociatedTypeWitness);
  return (v15)(v10, AssociatedTypeWitness);
}

double sub_242DF67A8()
{
  v1 = v0 + *(*v0 + 160);
  v2 = *(v1 + 32);
  if (v2 == 255)
  {
    v3 = 11.0;
  }

  else
  {
    v3 = *(v1 + 8);
    if (v2)
    {
      return v3;
    }
  }

  v4 = sub_242DEF0E8();
  v5 = 0.0;
  if (v4)
  {
    v5 = *(v0 + *(*v0 + 160) + 40);
  }

  return v5 + v3;
}

uint64_t CarouselModel.Direction.description.getter(uint64_t a1)
{
  v2 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = v16 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v2, a1, v9);
  v13 = (*(v5 + 48))(v11, 2, AssociatedTypeWitness);
  if (v13)
  {
    if (v13 == 1)
    {
      return 28789;
    }

    else
    {
      return 1853321060;
    }
  }

  else
  {
    (*(v5 + 32))(v7, v11, AssociatedTypeWitness);
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    MEMORY[0x245D26660](0x2874736574736166, 0xE800000000000000);
    sub_242F060F0();
    MEMORY[0x245D26660](41, 0xE100000000000000);
    v15 = v16[0];
    (*(v5 + 8))(v7, AssociatedTypeWitness);
    return v15;
  }
}

double sub_242DF6A44@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_242DF6A50(_OWORD *a1, void (*a2)(_OWORD *__return_ptr))
{
  a2(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

uint64_t sub_242DF6A98(uint64_t a1)
{
  type metadata accessor for CarouselModel(0, *(*a1 + 80), *(*a1 + 88), *(*a1 + 96));
  swift_getWitnessTable();

  return sub_242F03DA0();
}

uint64_t Carousel.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7878, &qword_242F33EF8);
  *&v54 = a1 + 5;
  v3 = a1[3];
  v4 = sub_242F053E0();
  v5 = a1[6];
  v51 = v3;
  v52 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = a1[2];
  sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7880, &qword_242F33F00);
  sub_242F03E00();
  v47 = sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7888, &qword_242F33F08);
  v48 = sub_242F03E00();
  v49 = sub_242F03E00();
  *&v91 = v4;
  *(&v91 + 1) = AssociatedTypeWitness;
  *&v92 = sub_242F03E00();
  *(&v92 + 1) = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_242F049B0();
  v89 = a1[4];
  v7 = v89;
  v90 = MEMORY[0x277CDF678];
  v8 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v88 = sub_242C7E000(&qword_27ECF7890, &qword_27ECF7880, &qword_242F33F00, MEMORY[0x277CDF4F0]);
  v85 = swift_getWitnessTable();
  v86 = MEMORY[0x277CDF690];
  v83 = swift_getWitnessTable();
  v84 = sub_242C7E000(&qword_27ECF7898, &qword_27ECF7888, &qword_242F33F08, MEMORY[0x277CE04A0]);
  v81 = swift_getWitnessTable();
  v82 = sub_242DFCAD8(v81, v9, v10);
  v79 = swift_getWitnessTable();
  v80 = sub_242DFCB2C(v79, v11, v12);
  v50 = v8;
  v78 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_242F04910();
  sub_242F03E00();
  v76 = swift_getWitnessTable();
  v77 = MEMORY[0x277CDF748];
  swift_getWitnessTable();
  sub_242F03D90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF78B0, &qword_242F33F10);
  sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF78B8, &qword_242F33F18);
  sub_242F03E00();
  swift_getTupleTypeMetadata2();
  sub_242F04AF0();
  v43[1] = swift_getWitnessTable();
  v13 = sub_242F04930();
  v46 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v43 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF78C0, &qword_242F33F20);
  v44 = sub_242F03E00();
  v48 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v57 = v43 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF78C8, &qword_242F33F28);
  v17 = sub_242F03E00();
  v49 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v45 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v47 = v43 - v20;
  v22 = *v55;
  v21 = *(v55 + 8);
  v23 = *(v55 + 16);
  v24 = *(v55 + 24);
  *&v25 = v7;
  *(&v25 + 1) = *v54;
  *&v26 = v53;
  v27 = v52;
  *(&v26 + 1) = v51;
  v54 = v25;
  v55 = v26;
  v65 = v26;
  v66 = v25;
  v67 = v52;
  v68 = v22;
  v69 = v21;
  v70 = v23;
  v71 = v24;
  sub_242F04A70();
  sub_242F04920();
  v28 = (v21 + *(*v21 + 160));
  v29 = *(v28 + 32);
  v30 = v28[1];
  v91 = *v28;
  v92 = v30;
  LOBYTE(AssociatedConformanceWitness) = v29;
  v31 = swift_getWitnessTable();
  sub_242DFCBB8(v31, v32, v33);
  sub_242F04630();
  (*(v46 + 8))(v15, v13);
  v58 = v55;
  v59 = v54;
  v60 = v27;
  v61 = v22;
  v62 = v21;
  v63 = v23;
  v64 = v24;
  sub_242F04A70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF78D8, &qword_242F33F30);
  v34 = sub_242C7E000(&qword_27ECF78E0, &qword_27ECF78C0, &qword_242F33F20, MEMORY[0x277CE0698]);
  v74 = v31;
  v75 = v34;
  v35 = v44;
  v36 = swift_getWitnessTable();
  sub_242C7E000(&qword_27ECF78E8, &qword_27ECF78D8, &qword_242F33F30, MEMORY[0x277CDF7D8]);
  v37 = v45;
  v38 = v57;
  sub_242F04690();
  (*(v48 + 8))(v38, v35);
  v39 = sub_242C7E000(&qword_27ECF78F0, &qword_27ECF78C8, &qword_242F33F28, MEMORY[0x277CDFC88]);
  v72 = v36;
  v73 = v39;
  swift_getWitnessTable();
  v40 = v47;
  sub_242CA32B4();
  v41 = *(v49 + 8);
  v41(v37, v17);
  sub_242CA32B4();
  return (v41)(v40, v17);
}

uint64_t sub_242DF73C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v81 = a8;
  v87 = a4;
  v84 = a1;
  v85 = a3;
  v91 = a9;
  v83 = sub_242F04A30();
  v14 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7C20, &qword_242F35478);
  MEMORY[0x28223BE20](v82);
  v18 = (&v78 - v17);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7878, &qword_242F33EF8);
  MEMORY[0x28223BE20](v93);
  v90 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v78 - v21;
  MEMORY[0x28223BE20](v23);
  v94 = &v78 - v24;
  v80 = sub_242F04740();
  sub_242F049D0();
  v86 = a5;
  *&v146 = a5;
  *(&v146 + 1) = a6;
  v25 = v81;
  v88 = a10;
  *&v89 = a6;
  *&v92 = a7;
  *&v147 = a7;
  *(&v147 + 1) = v81;
  *&v148 = a10;
  type metadata accessor for Carousel(0, &v146);
  v26 = (a2 + *(*a2 + 160));
  v27 = *v26;
  v78 = v26[1];
  v79 = v27;
  v28 = *(v26 + 32);

  LOBYTE(a7) = sub_242DEF0C0();

  v29 = 0.0;
  v30 = 0.0;
  if (a7)
  {
    v30 = -*(a2 + *(*a2 + 160) + 40);
  }

  v31 = v18 + *(v82 + 36);
  (*(v14 + 32))(v31, v16, v83);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7C28, &qword_242F35480);
  v33 = &v31[*(v32 + 52)];
  v34 = v78;
  *v33 = v79;
  *(v33 + 1) = v34;
  v33[32] = v28;
  *(v33 + 5) = v30;
  *&v31[*(v32 + 56)] = 256;
  *v18 = v80;

  LOBYTE(v31) = sub_242DEF0C0();

  if (v31)
  {
    v35 = 1.0;
  }

  else
  {
    v35 = 0.0;
  }

  sub_242CF6B3C(v18, v22, &qword_27ECF7C20, &qword_242F35478);
  v36 = v94;
  *&v22[*(v93 + 36)] = v35;
  sub_242CF6B3C(v22, v36, &qword_27ECF7878, &qword_242F33EF8);
  v37 = swift_allocObject();
  v38 = v87;
  v40 = v88;
  v39 = v89;
  v37[2] = v86;
  v37[3] = v39;
  v37[4] = v92;
  v37[5] = v25;
  v42 = v84;
  v41 = v85;
  v37[6] = v40;
  v37[7] = v42;
  v37[8] = a2;
  v37[9] = v41;
  v37[10] = v38;
  v43 = sub_242F053E0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_242F03E00();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7880, &qword_242F33F00);
  v85 = sub_242F03E00();
  v84 = sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7888, &qword_242F33F08);
  v86 = sub_242F03E00();
  v87 = sub_242F03E00();
  v45 = sub_242F03E00();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v146 = v43;
  *(&v146 + 1) = AssociatedTypeWitness;
  *&v147 = v45;
  *(&v147 + 1) = WitnessTable;
  *&v148 = AssociatedConformanceWitness;
  sub_242F049B0();
  v134 = v92;
  v135 = MEMORY[0x277CDF678];
  v48 = swift_getWitnessTable();
  v49 = sub_242C7E000(&qword_27ECF7890, &qword_27ECF7880, &qword_242F33F00, MEMORY[0x277CDF4F0]);
  v132 = v48;
  v133 = v49;
  v130 = swift_getWitnessTable();
  v131 = MEMORY[0x277CDF690];
  v50 = swift_getWitnessTable();
  v51 = sub_242C7E000(&qword_27ECF7898, &qword_27ECF7888, &qword_242F33F08, MEMORY[0x277CE04A0]);
  v128 = v50;
  v129 = v51;
  v52 = swift_getWitnessTable();
  v55 = sub_242DFCAD8(v52, v53, v54);
  v126 = v52;
  v127 = v55;
  v56 = swift_getWitnessTable();
  v59 = sub_242DFCB2C(v56, v57, v58);
  v124 = v56;
  v125 = v59;
  v123 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_242F04910();
  sub_242F03E00();
  v121 = swift_getWitnessTable();
  v122 = MEMORY[0x277CDF748];
  swift_getWitnessTable();
  *&v146 = sub_242F03D80();
  *(&v146 + 1) = v60;
  *&v140 = 0x6B63617473;
  *(&v140 + 1) = 0xE500000000000000;
  sub_242F03D90();
  v61 = swift_getWitnessTable();
  sub_242F04640();

  v117 = v136;
  v118 = v137;
  v119 = v138;
  v120 = v139;
  v62 = (a2 + *(*a2 + 160));
  v63 = *v62;
  v89 = v62[1];
  v92 = v63;
  v64 = *(v62 + 32);

  v65 = sub_242DEF0C0();

  if (v65)
  {
    v29 = -*(a2 + *(*a2 + 160) + 40);
  }

  v146 = v92;
  v147 = v89;
  LOBYTE(v148) = v64;
  *(&v148 + 1) = v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF78B0, &qword_242F33F10);
  sub_242F03E00();
  v66 = sub_242C7E000(&qword_27ECF7C30, &qword_27ECF78B0, &qword_242F33F10, MEMORY[0x277CDE2D0]);
  v104[4] = v61;
  v104[5] = v66;
  v67 = swift_getWitnessTable();
  sub_242DFE3E4(v67, v68, v69);
  sub_242F046D0();

  v113 = v142;
  v114 = v143;
  v115 = v144;
  v116 = v145;
  v111 = v140;
  v112 = v141;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF78B8, &qword_242F33F18);
  v70 = sub_242F03E00();
  v71 = sub_242C7E000(&qword_27ECF7C38, &qword_27ECF78B8, &qword_242F33F18, MEMORY[0x277CDF4F0]);
  v104[2] = v67;
  v104[3] = v71;
  v72 = swift_getWitnessTable();
  sub_242CA32B4();
  v105[2] = v113;
  v105[3] = v114;
  v105[4] = v115;
  v106 = v116;
  v105[0] = v111;
  v105[1] = v112;
  v73 = *(v70 - 8);
  v74 = *(v73 + 8);
  v74(v105, v70);
  v75 = v94;
  v76 = v90;
  sub_242DFF020(v94, v90);
  v107[2] = v148;
  v107[3] = v149;
  v107[4] = v150;
  v108 = v151;
  v107[0] = v146;
  v107[1] = v147;
  v100 = v148;
  v101 = v149;
  v102 = v150;
  v103 = v151;
  v98 = v146;
  v99 = v147;
  v104[0] = v76;
  v104[1] = &v98;
  (*(v73 + 16))(&v111, v107, v70);
  v97[0] = v93;
  v97[1] = v70;
  v95 = sub_242DFF090();
  v96 = v72;
  sub_242DE9FD8(v104, 2uLL, v97);
  v109[2] = v148;
  v109[3] = v149;
  v109[4] = v150;
  v110 = v151;
  v109[0] = v146;
  v109[1] = v147;
  v74(v109, v70);
  sub_242DFF1D4(v75);
  v113 = v100;
  v114 = v101;
  v115 = v102;
  v116 = v103;
  v111 = v98;
  v112 = v99;
  v74(&v111, v70);
  return sub_242DFF1D4(v76);
}

uint64_t sub_242DF7E98(uint64_t a1)
{
  v1 = sub_242F03BB0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x277CDF3D0], v1, v3);
  sub_242F03BA0();
  (*(v2 + 8))(v5, v1);
  return 0x7372657474616C70;
}

uint64_t sub_242DF7FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v43 = a8;
  v49 = a6;
  v54 = a4;
  v55 = a5;
  v51 = a2;
  v52 = a3;
  v53 = a1;
  v56 = a9;
  v50 = a10;
  v12 = sub_242F053E0();
  v47 = a7;
  v48 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7880, &qword_242F33F00);
  sub_242F03E00();
  sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7888, &qword_242F33F08);
  v45 = sub_242F03E00();
  v57 = sub_242F03E00();
  v83 = v12;
  v84 = AssociatedTypeWitness;
  v85 = sub_242F03E00();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_242F049B0();
  v15 = v43;
  v81 = v43;
  v82 = MEMORY[0x277CDF678];
  v16 = MEMORY[0x277CDFAD8];
  v79 = swift_getWitnessTable();
  v80 = sub_242C7E000(&qword_27ECF7890, &qword_27ECF7880, &qword_242F33F00, MEMORY[0x277CDF4F0]);
  v77 = swift_getWitnessTable();
  v78 = MEMORY[0x277CDF690];
  v46 = v16;
  v75 = swift_getWitnessTable();
  v76 = sub_242C7E000(&qword_27ECF7898, &qword_27ECF7888, &qword_242F33F08, MEMORY[0x277CE04A0]);
  v73 = swift_getWitnessTable();
  v74 = sub_242DFCAD8(v73, v17, v18);
  v71 = swift_getWitnessTable();
  v72 = sub_242DFCB2C(v71, v19, v20);
  v70 = swift_getWitnessTable();
  v41 = v14;
  v40 = swift_getWitnessTable();
  v21 = sub_242F04910();
  v44 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v57 = &v38 - v22;
  v23 = sub_242F03E00();
  v45 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v39 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v42 = &v38 - v26;
  v27 = v49;
  v28 = v50;
  v30 = v47;
  v29 = v48;
  v58 = v49;
  v59 = v47;
  v60 = v15;
  v61 = v50;
  v62 = v48;
  v63 = v51;
  v64 = v52;
  v65 = v54;
  v66 = v55;
  v67 = v53;
  sub_242F04080();
  sub_242F04900();
  v83 = v27;
  v84 = v30;
  v85 = v15;
  WitnessTable = v28;
  AssociatedConformanceWitness = v29;
  type metadata accessor for Carousel(0, &v83);

  sub_242DF63F0(v31);

  sub_242F03CF0();
  v32 = swift_getWitnessTable();
  v33 = v39;
  v34 = v57;
  sub_242F04680();
  (*(v44 + 8))(v34, v21);
  v68 = v32;
  v69 = MEMORY[0x277CDF748];
  swift_getWitnessTable();
  v35 = v42;
  sub_242CA32B4();
  v36 = *(v45 + 8);
  v36(v33, v23);
  sub_242CA32B4();
  return (v36)(v35, v23);
}

uint64_t sub_242DF8554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v56 = a8;
  v76 = a6;
  v60 = a5;
  v70 = a4;
  v69 = a3;
  v53 = a2;
  v67 = a1;
  v75 = a9;
  v54 = a10;
  v58 = sub_242F03D10();
  v12 = *(v58 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v58);
  v55 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_242F053E0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = AssociatedTypeWitness;
  v57 = sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7880, &qword_242F33F00);
  v63 = sub_242F03E00();
  v61 = sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7888, &qword_242F33F08);
  v66 = sub_242F03E00();
  v71 = sub_242F03E00();
  v16 = sub_242F03E00();
  v64 = v16;
  v74 = v14;
  WitnessTable = swift_getWitnessTable();
  v72 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v90 = v14;
  v91 = AssociatedTypeWitness;
  v92 = v16;
  v93 = WitnessTable;
  v94 = AssociatedConformanceWitness;
  v59 = sub_242F049B0();
  v68 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v62 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v65 = &v52 - v21;
  v90 = v76;
  v91 = a7;
  v22 = a7;
  v23 = v56;
  v24 = v54;
  v92 = v56;
  v93 = v54;
  v94 = a11;
  type metadata accessor for Carousel(0, &v90);
  v25 = v53;

  v26 = sub_242DEEF14();

  v90 = v26;
  v27 = v12;
  v28 = v55;
  v29 = v58;
  (*(v12 + 16))(v55, v60, v58);
  v30 = (*(v12 + 80) + 88) & ~*(v12 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = v76;
  *(v31 + 3) = v22;
  *(v31 + 4) = v23;
  *(v31 + 5) = v24;
  v32 = v67;
  *(v31 + 6) = a11;
  *(v31 + 7) = v32;
  v33 = v69;
  *(v31 + 8) = v25;
  *(v31 + 9) = v33;
  *(v31 + 10) = v70;
  (*(v27 + 32))(&v31[v30], v28, v29);
  v88 = v23;
  v89 = MEMORY[0x277CDF678];

  v34 = swift_getWitnessTable();
  v35 = sub_242C7E000(&qword_27ECF7890, &qword_27ECF7880, &qword_242F33F00, MEMORY[0x277CDF4F0]);
  v86 = v34;
  v87 = v35;
  v84 = swift_getWitnessTable();
  v85 = MEMORY[0x277CDF690];
  v36 = swift_getWitnessTable();
  v37 = sub_242C7E000(&qword_27ECF7898, &qword_27ECF7888, &qword_242F33F08, MEMORY[0x277CE04A0]);
  v82 = v36;
  v83 = v37;
  v38 = swift_getWitnessTable();
  v41 = sub_242DFCAD8(v38, v39, v40);
  v80 = v38;
  v81 = v41;
  v42 = swift_getWitnessTable();
  v45 = sub_242DFCB2C(v42, v43, v44);
  v78 = v42;
  v79 = v45;
  v46 = swift_getWitnessTable();
  v47 = v62;
  sub_242F049A0();
  v77 = v46;
  v48 = v59;
  swift_getWitnessTable();
  v49 = v65;
  sub_242CA32B4();
  v50 = *(v68 + 8);
  v50(v47, v48);
  sub_242CA32B4();
  return (v50)(v49, v48);
}

uint64_t sub_242DF8BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v111 = a7;
  v118 = a5;
  v113 = a4;
  v122 = a3;
  v117 = a2;
  v108 = a1;
  v107 = a8;
  v112 = a11;
  v105 = *(a7 - 8);
  v119 = *(v105 + 64);
  v121 = a10;
  v120 = a9;
  MEMORY[0x28223BE20](a1);
  v116 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_242F03E00();
  v94 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v91 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7880, &qword_242F33F00);
  v23 = sub_242F03E00();
  v96 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v92 = &v91 - v24;
  v95 = sub_242F03E00();
  v97 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v91 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7888, &qword_242F33F08);
  v98 = sub_242F03E00();
  v99 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v114 = &v91 - v26;
  v101 = sub_242F03E00();
  v104 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v115 = &v91 - v27;
  v103 = sub_242F03E00();
  v106 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v100 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v29);
  v102 = &v91 - v31;
  (a4)(a1, v30);
  sub_242F03CF0();
  sub_242F03CF0();
  sub_242F04A70();
  v32 = v120;
  sub_242F04670();
  v33 = *(v16 + 8);
  v110 = a6;
  v33(v19, a6);
  v133[5] = v32;
  v133[6] = MEMORY[0x277CDF678];
  v34 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  sub_242DFF324(WitnessTable, v36, v37);
  v38 = v92;
  sub_242F046D0();
  (*(v94 + 8))(v22, v20);
  v133[0] = a6;
  v133[1] = v111;
  v133[2] = v32;
  v133[3] = v121;
  v39 = v112;
  v133[4] = v112;
  type metadata accessor for Carousel(0, v133);

  v40 = v108;
  sub_242DF6514(v108);
  v42 = v41;
  v44 = v43;

  sub_242F04B50();
  v46 = v45;
  v48 = v47;
  v49 = sub_242C7E000(&qword_27ECF7890, &qword_27ECF7880, &qword_242F33F00, MEMORY[0x277CDF4F0]);
  v131 = WitnessTable;
  v132 = v49;
  v109 = v34;
  v50 = swift_getWitnessTable();
  v51 = v93;
  MEMORY[0x245D25BF0](v23, v50, v42, v44, v46, v48);
  (*(v96 + 8))(v38, v23);
  sub_242F04B50();
  sub_242F03CA0();
  sub_242F03CB0();
  sub_242F03CC0();

  v129 = v50;
  v130 = MEMORY[0x277CDF690];
  v52 = v95;
  v53 = swift_getWitnessTable();
  sub_242F045B0();

  (*(v97 + 8))(v51, v52);
  v54 = v105;
  v97 = *(v105 + 16);
  v55 = v116;
  v56 = v40;
  v57 = v111;
  (v97)(v116, v56, v111);
  v58 = (*(v54 + 80) + 88) & ~*(v54 + 80);
  v59 = swift_allocObject();
  v59[2] = v110;
  v59[3] = v57;
  v60 = v121;
  v59[4] = v120;
  v59[5] = v60;
  v61 = v117;
  v59[6] = v39;
  v59[7] = v61;
  v62 = v113;
  v59[8] = v122;
  v59[9] = v62;
  v63 = v118;
  v59[10] = v118;
  v105 = *(v54 + 32);
  v64 = v55;
  v65 = v57;
  (v105)(v59 + v58, v64, v57);
  v66 = sub_242C7E000(&qword_27ECF7898, &qword_27ECF7888, &qword_242F33F08, MEMORY[0x277CE04A0]);
  v127 = v53;
  v128 = v66;

  v67 = v98;
  v68 = swift_getWitnessTable();
  v69 = v114;
  sub_242DF98AC(sub_242DFF378, v59, v67, v68, &type metadata for OnScrollIn);

  (*(v99 + 8))(v69, v67);
  v70 = v116;
  (v97)(v116, v108, v65);
  v71 = swift_allocObject();
  v71[2] = v110;
  v71[3] = v65;
  v72 = v121;
  v71[4] = v120;
  v71[5] = v72;
  v73 = v117;
  v71[6] = v112;
  v71[7] = v73;
  v74 = v113;
  v71[8] = v122;
  v71[9] = v74;
  v71[10] = v63;
  v75 = (v105)(v71 + v58, v70, v65);
  v78 = sub_242DFCAD8(v75, v76, v77);
  v125 = v68;
  v126 = v78;

  v79 = v101;
  v80 = swift_getWitnessTable();
  v81 = v100;
  v82 = v115;
  sub_242DF98AC(sub_242DFF454, v71, v79, v80, &type metadata for OnScrollOut);

  v83 = (*(v104 + 8))(v82, v79);
  v86 = sub_242DFCB2C(v83, v84, v85);
  v123 = v80;
  v124 = v86;
  v87 = v103;
  swift_getWitnessTable();
  v88 = v102;
  sub_242CA32B4();
  v89 = *(v106 + 8);
  v89(v81, v87);
  sub_242CA32B4();
  return (v89)(v88, v87);
}

uint64_t sub_242DF9754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16[0] = a6;
  v16[1] = a7;
  v16[2] = a8;
  v16[3] = a9;
  v16[4] = a10;
  type metadata accessor for Carousel(0, v16);
  v12 = a2 + *(*a2 + 128);
  result = swift_beginAccess();
  v14 = *v12;
  if (*v12)
  {
    v15 = *(v12 + 8);
    sub_242C5573C(v14, v15);
    v14(a5);
    return sub_242C655DC(v14, v15);
  }

  return result;
}

uint64_t sub_242DF9800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16[0] = a6;
  v16[1] = a7;
  v16[2] = a8;
  v16[3] = a9;
  v16[4] = a10;
  type metadata accessor for Carousel(0, v16);
  v12 = a2 + *(*a2 + 136);
  result = swift_beginAccess();
  v14 = *v12;
  if (*v12)
  {
    v15 = *(v12 + 8);
    sub_242C5573C(v14, v15);
    v14(a5);
    return sub_242C655DC(v14, v15);
  }

  return result;
}

uint64_t sub_242DF98AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  sub_242F048A0();
  v10 = v13;
  v11 = v14;
  v13 = a1;
  v14 = a2;
  v15 = v10;
  v16 = v11;
  MEMORY[0x245D25CB0](&v13, a3, a5, a4);
}

uint64_t sub_242DF994C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)@<X0>(uint64_t a2@<X8>)@<X8>, uint64_t a10)
{
  v19 = swift_allocObject();
  *(v19 + 2) = a5;
  *(v19 + 3) = a6;
  *(v19 + 4) = a7;
  *(v19 + 5) = a8;
  *(v19 + 6) = a10;
  *(v19 + 7) = a1;
  *(v19 + 8) = a2;
  *(v19 + 9) = a3;
  *(v19 + 10) = a4;
  *a9 = sub_242DFEF70;
  a9[1] = v19;
}

uint64_t sub_242DF9A08@<X0>(uint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v13 = sub_242F04740();
  v30[0] = a3;
  v30[1] = a4;
  v30[2] = a5;
  v30[3] = a7;
  v30[4] = a8;
  type metadata accessor for Carousel(0, v30);
  swift_beginAccess();

  v14 = sub_242F05380();

  v15 = sub_242DEEAD0();

  v16 = a2 + *(*a2 + 160);
  if (*(v16 + 32) == 255)
  {
    v17 = 0x3FF3333333333333;
  }

  else
  {
    v17 = *(v16 + 24);
  }

  v18 = sub_242F04A70();
  v20 = v19;
  sub_242F03CF0();
  v22 = v21;

  v23 = sub_242DF67A8();

  v24 = a2 + *(*a2 + 160);
  v25 = 0;
  if (*(v24 + 32) != 255)
  {
    v25 = *(v24 + 16);
  }

  v26 = v22 * 0.5 + v23;

  v27 = sub_242DEF0E8();

  v29 = 1.0;
  if ((v27 & 1) == 0)
  {
    v29 = 0.0;
  }

  *a6 = v13;
  *(a6 + 8) = v14;
  *(a6 + 16) = v15;
  *(a6 + 24) = v17;
  *(a6 + 32) = v18;
  *(a6 + 40) = v20;
  *(a6 + 48) = v26;
  *(a6 + 56) = v25;
  *(a6 + 64) = v29;
  return result;
}

double sub_242DF9BF0@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *(v1 + 40);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = result;
  return result;
}

double sub_242DF9C0C@<D0>(double *a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = result;
  return result;
}

double sub_242DF9C18(double *a1)
{
  result = *a1;
  *(v1 + 40) = *a1;
  return result;
}

double (*sub_242DF9C24(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 40);
  return sub_242DF9C50;
}

double sub_242DF9C50(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 40) = *a1;
  return result;
}

void *sub_242DF9C64@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = sub_242F03E30();
  MEMORY[0x28223BE20](v11);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *v5;
  v15 = *(v5 + 32);
  v16 = *(v5 + 40);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  CGRectInset(v29, v16, v16);
  if (v15 == 255)
  {
    result = sub_242F048F0();
    v22 = v26;
    v23 = v27;
    v20 = v28;
  }

  else
  {
    v17 = *(v11 + 20);
    v18 = *MEMORY[0x277CE0118];
    v19 = sub_242F04070();
    (*(*(v19 - 8) + 104))(v13 + v17, v18, v19);
    *v13 = v14 - v16;
    v13[1] = v14 - v16;
    sub_242F03E10();
    v24 = v27;
    v25 = v26;
    v20 = v28;
    result = sub_242DFEEC4(v13);
    v23 = v24;
    v22 = v25;
  }

  *a1 = v22;
  *(a1 + 16) = v23;
  *(a1 + 32) = v20;
  return result;
}

uint64_t sub_242DF9E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242DFE3E4(a1, a2, a3);

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_242DF9E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242DFE3E4(a1, a2, a3);

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_242DF9ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFE3E4(a1, a2, a3);

  return MEMORY[0x282133738](a1, v4);
}

void sub_242DF9F24(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = a2;
}

void *sub_242DF9F3C@<X0>(uint64_t a1@<X8>)
{
  v7 = sub_242F03E30();
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + 32) == 255)
  {
    result = sub_242F048F0();
    v17 = v21;
    v18 = v22;
    v15 = v23;
  }

  else
  {
    v11 = *v5;
    v12 = *(v8 + 20);
    v13 = *MEMORY[0x277CE0118];
    v14 = sub_242F04070();
    (*(*(v14 - 8) + 104))(&v10[v12], v13, v14);
    *v10 = v11;
    *(v10 + 1) = v11;
    sub_242F03E10();
    v19 = v22;
    v20 = v21;
    v15 = v23;
    result = sub_242DFEEC4(v10);
    v18 = v19;
    v17 = v20;
  }

  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 32) = v15;
  return result;
}

uint64_t (*sub_242DFA09C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_242F03B10();
  return sub_242DFA124;
}

void sub_242DFA124(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_242DFA170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242DFE608(a1, a2, a3);

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_242DFA1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242DFE608(a1, a2, a3);

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_242DFA238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFE608(a1, a2, a3);

  return MEMORY[0x282133738](a1, v4);
}

uint64_t sub_242DFA284(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = sub_242F04B60();
  v26 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_242F04B80();
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 8);
  v18 = *(a1 + 24);
  if (v17 > -v18 && v17 < v18)
  {
    v25 = v14;
    LOBYTE(aBlock) = a4 & 1;
    v28 = a5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7BF8, &qword_242F353A8);
    sub_242F048B0();
    if (v33)
    {
    }

    else
    {
      LOBYTE(aBlock) = a4 & 1;
      v28 = a5;
      v33 = 1;
      sub_242F048C0();

      sub_242D3DCD0();
      v21 = sub_242F05750();
      v22 = swift_allocObject();
      *(v22 + 16) = a2;
      *(v22 + 24) = a3;
      *(v22 + 32) = a4 & 1;
      *(v22 + 40) = a5;
      v31 = sub_242CD5510;
      v32 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v28 = 1107296256;
      v29 = sub_242DEA248;
      v30 = &block_descriptor_184;
      v23 = _Block_copy(&aBlock);

      sub_242F04B70();
      aBlock = MEMORY[0x277D84F90];
      sub_242DFCA68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECFC610, &qword_242F48C80);
      sub_242C7E000(&qword_27ECFC060, &unk_27ECFC610, &qword_242F48C80, MEMORY[0x277D83970]);
      sub_242F05930();
      MEMORY[0x245D26D60](0, v16, v12, v23);
      _Block_release(v23);

      (*(v26 + 8))(v12, v10);
      return (*(v25 + 8))(v16, v13);
    }
  }

  else
  {
    LOBYTE(aBlock) = a4 & 1;
    v28 = a5;
    v33 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7BF8, &qword_242F353A8);
    return sub_242F048C0();
  }
}

uint64_t sub_242DFA620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = *(v2 + 16);
  v8 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;

  v10 = sub_242F04A70();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7BE8, &qword_242F35398);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7BF0, &qword_242F353A0);
  v15 = (a2 + *(result + 36));
  *v15 = sub_242DFED90;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v12;
  return result;
}

uint64_t sub_242DFA724@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v27 = a6;
  HIDWORD(v26) = a3;
  v11 = sub_242F041E0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_242F04740();
  v28 = 0x6B63617473;
  v29 = 0xE500000000000000;
  sub_242F04240();
  sub_242F03D00();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  (*(v12 + 8))(v14, v11);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  *(v24 + 32) = BYTE4(v26);
  *(v24 + 40) = a4;
  *a7 = v15;
  a7[1] = v17;
  a7[2] = v19;
  a7[3] = v21;
  a7[4] = v23;
  a7[5] = v27;
  a7[6] = v24;
}

uint64_t sub_242DFA8C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = sub_242F04B60();
  v26 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_242F04B80();
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 8);
  v18 = *(a1 + 24);
  if (v17 > -v18 && v17 < v18)
  {
    LOBYTE(aBlock) = a4 & 1;
    v28 = a5;
    v33 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7BF8, &qword_242F353A8);
    return sub_242F048C0();
  }

  else
  {
    v25 = v14;
    LOBYTE(aBlock) = a4 & 1;
    v28 = a5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7BF8, &qword_242F353A8);
    sub_242F048B0();
    if (v33 == 1)
    {
      LOBYTE(aBlock) = a4 & 1;
      v28 = a5;
      v33 = 0;
      sub_242F048C0();

      sub_242D3DCD0();
      v20 = sub_242F05750();
      v21 = swift_allocObject();
      *(v21 + 16) = a2;
      *(v21 + 24) = a3;
      *(v21 + 32) = a4 & 1;
      *(v21 + 40) = a5;
      v31 = sub_242CD607C;
      v32 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v28 = 1107296256;
      v29 = sub_242DEA248;
      v30 = &block_descriptor_196;
      v22 = _Block_copy(&aBlock);

      sub_242F04B70();
      aBlock = MEMORY[0x277D84F90];
      sub_242DFCA68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECFC610, &qword_242F48C80);
      sub_242C7E000(&qword_27ECFC060, &unk_27ECFC610, &qword_242F48C80, MEMORY[0x277D83970]);
      sub_242F05930();
      MEMORY[0x245D26D60](0, v16, v12, v22);
      _Block_release(v22);

      (*(v26 + 8))(v12, v10);
      return (*(v25 + 8))(v16, v13);
    }

    else
    {
    }
  }
}

uint64_t sub_242DFAC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = *(v2 + 16);
  v8 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;

  v10 = sub_242F04A70();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7C00, &qword_242F353B0);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7C08, &qword_242F353B8);
  v15 = (a2 + *(result + 36));
  *v15 = sub_242DFEDE0;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v12;
  return result;
}

id sub_242DFAD6C(CGFloat a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D757E0]) init];
  [v5 setNumberOfPages_];
  [v5 setHidesForSinglePage_];
  [v5 setDirection_];
  [v5 setAllowsContinuousInteraction_];
  CGAffineTransformMakeScale(&v11, a1, a1);
  [v5 setTransform_];
  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  [v5 setCurrentPageIndicatorTintColor_];

  v8 = [v6 labelColor];
  v9 = [v8 colorWithAlphaComponent_];

  [v5 setPageIndicatorTintColor_];
  return v5;
}

id sub_242DFAEEC(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  CGAffineTransformMakeScale(&v6, *(v1 + 2), *(v1 + 2));
  [a1 setTransform_];
  [a1 setNumberOfPages_];
  return [a1 setCurrentPage_];
}

uint64_t sub_242DFAFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242DFEE70(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_242DFB034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242DFEE70(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_242DFB098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_242DFEE70(a1, a2, a3);
  sub_242F04170();
  __break(1u);
}

uint64_t sub_242DFB0C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  sub_242F03A40();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_242DFB1B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242DEEF14();
  *a1 = result;
  return result;
}

uint64_t sub_242DFB208@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242DEF0C0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_242DFB260@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242DEF0E8();
  *a1 = result & 1;
  return result;
}

BOOL _s14CarPlayAssetUI21CarouselConfigurationV0E5StyleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (v2 == 255)
  {
    return v3 == 255;
  }

  if (v3 == 255 || *a1 != *a2)
  {
    return 0;
  }

  if ((v2 & 1) == 0)
  {
    if ((v3 & 1) == 0)
    {
      return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    }

    return 0;
  }

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
}

BOOL _s14CarPlayAssetUI21CarouselConfigurationV19PageControlPositionO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return *(a1 + 16) == *(a2 + 16);
}

BOOL _s14CarPlayAssetUI21CarouselConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v14;
  v22 = v2;
  v15 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v15;
  v20 = v8;
  v16 = _s14CarPlayAssetUI21CarouselConfigurationV0E5StyleO2eeoiySbAE_AEtFZ_0(v21, v19);
  result = 0;
  if (v16 && v3 == v9 && ((v4 ^ v10) & 1) == 0)
  {
    if (v6)
    {
      if (!v12)
      {
        return 0;
      }
    }

    else
    {
      if (v5 == v11)
      {
        v18 = v12;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        return 0;
      }
    }

    return v7 == v13;
  }

  return result;
}

char *sub_242DFB478(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v64 = a2;
  v63 = a1;
  v69 = *v3;
  v6 = v69;
  v7 = *(v69 + 80);
  v8 = sub_242F05860();
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = &v58 - v11;
  v68 = *(v7 - 8);
  MEMORY[0x28223BE20](v12);
  v62 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v61 = &v58 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2ED8, &qword_242F17610);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31C0, &unk_242F17F20);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v58 - v22;
  v24 = a3[3];
  v73 = a3[2];
  v74 = v24;
  v75 = a3[4];
  v25 = a3[1];
  v71 = *a3;
  v72 = v25;
  v26 = &v4[*(v6 + 112)];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v4[*(*v4 + 120)];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v4[*(*v4 + 128)];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v4[*(*v4 + 136)];
  *v29 = 0;
  *(v29 + 1) = 0;
  *&v4[*(*v4 + 152)] = 0;
  v30 = *(*v4 + 168);
  v58 = *(v69 + 88);
  v70 = 0;
  sub_242F03A40();
  (*(v21 + 32))(&v4[v30], v23, v20);
  v31 = *(*v4 + 184);
  LOBYTE(v70) = 0;
  sub_242F03A40();
  v32 = *(v17 + 32);
  v32(&v4[v31], v19, v16);
  v33 = *(*v4 + 192);
  LOBYTE(v70) = 0;
  v34 = v63;
  sub_242F03A40();
  v32(&v4[v33], v19, v16);
  v35 = *(*v4 + 200);
  *&v4[v35] = sub_242F04A90();
  v70 = v34;
  v36 = sub_242F053E0();
  WitnessTable = swift_getWitnessTable();
  if ((sub_242F05610() & 1) == 0)
  {
    v37 = *(v68 + 48);
    v38 = v64;
    v39 = v37(v64, 1, v7);
    if (v39 != 1)
    {
      v70 = v34;
      MEMORY[0x28223BE20](v39);
      *(&v58 - 4) = v7;
      *(&v58 - 24) = v58;
      v57 = v38;
      swift_getWitnessTable();
      if ((sub_242F051C0() & 1) == 0)
      {
        LODWORD(v57) = 0;
        v56 = 0;
        goto LABEL_13;
      }
    }

    *&v4[*(*v4 + 144)] = v34;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    v76 = v34;
    sub_242DFB0C0(&v76, v36);
    swift_endAccess();
    v41 = v65;
    v40 = v66;
    v42 = v67;
    (*(v65 + 16))(v67, v38, v66);
    if (v37(v42, 1, v7) != 1)
    {

      v45 = v68;
      v46 = v61;
      (*(v68 + 32))(v61, v42, v7);
LABEL_9:
      swift_beginAccess();
      sub_242DEDAD0(v46, v7);
      swift_endAccess();
      v48 = &v4[*(*v4 + 160)];
      v49 = v74;
      *(v48 + 2) = v73;
      *(v48 + 3) = v49;
      *(v48 + 4) = v75;
      v50 = v72;
      *v48 = v71;
      *(v48 + 1) = v50;
      v51 = v62;
      sub_242DEDDE0();
      v52 = *(*v4 + 144);
      swift_beginAccess();
      v53 = *&v4[v52];

      v54 = sub_242DEDD34(v51, v53);

      (*(v45 + 8))(v51, v7);
      sub_242DEEBA8(v54);
      return v4;
    }

    v70 = v34;
    v43 = v60;
    sub_242F05600();
    v44 = v43;
    if (v37(v43, 1, v7) != 1)
    {

      v45 = v68;
      v46 = v61;
      (*(v68 + 32))(v61, v44, v7);
      v47 = v67;
      if (v37(v67, 1, v7) != 1)
      {
        (*(v41 + 8))(v47, v40);
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  LODWORD(v57) = 0;
  v56 = 0;
LABEL_13:
  result = sub_242F05C60();
  __break(1u);
  return result;
}

unint64_t sub_242DFBD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7770;
  if (!qword_27ECF7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7770);
  }

  return result;
}

unint64_t sub_242DFBDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7778;
  if (!qword_27ECF7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7778);
  }

  return result;
}

unint64_t sub_242DFBDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7780;
  if (!qword_27ECF7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7780);
  }

  return result;
}

unint64_t sub_242DFBE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF77B8;
  if (!qword_27ECF77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF77B8);
  }

  return result;
}

unint64_t sub_242DFBEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF77C0;
  if (!qword_27ECF77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF77C0);
  }

  return result;
}

unint64_t sub_242DFBEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF77C8;
  if (!qword_27ECF77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF77C8);
  }

  return result;
}

unint64_t sub_242DFBF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7800;
  if (!qword_27ECF7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7800);
  }

  return result;
}

unint64_t sub_242DFBF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7808;
  if (!qword_27ECF7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7808);
  }

  return result;
}

unint64_t sub_242DFBFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7810;
  if (!qword_27ECF7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7810);
  }

  return result;
}

unint64_t sub_242DFC044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7818;
  if (!qword_27ECF7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7818);
  }

  return result;
}

unint64_t sub_242DFC098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7838;
  if (!qword_27ECF7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7838);
  }

  return result;
}

unint64_t sub_242DFC0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7848;
  if (!qword_27ECF7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7848);
  }

  return result;
}

unint64_t sub_242DFC140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7850;
  if (!qword_27ECF7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7850);
  }

  return result;
}

unint64_t sub_242DFC194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7858;
  if (!qword_27ECF7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7858);
  }

  return result;
}

unint64_t sub_242DFC1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7868;
  if (!qword_27ECF7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7868);
  }

  return result;
}

unint64_t sub_242DFC23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7870;
  if (!qword_27ECF7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7870);
  }

  return result;
}

uint64_t sub_242DFC2A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000242F5BA40 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5BA60 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5BA80 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_242F06110();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_242DFC3D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5072657474616C70 && a2 == 0xEE00676E69646461 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5BAC0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6974616D696E61 && a2 == 0xEE00656C7974536ELL || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000242F5BAE0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_242DFC598()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_242DFC5E8(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v12 - v5;
  v12[4] = v3;
  v13 = *(v7 + 88);
  v8 = v13;
  v14 = *(v7 + 96);
  v9 = v14;
  swift_getKeyPath();
  v12[0] = v3;
  v12[1] = v8;
  v12[2] = v9;
  swift_getKeyPath();
  (*(v4 + 16))(v6, a1, v3);

  v10 = sub_242F03A90();
  return sub_242DEDBD0(v10);
}

uint64_t sub_242DFC748(uint64_t a1)
{
  v2 = sub_242F03AA0();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  swift_beginAccess();
  sub_242F03AB0();
  sub_242F03A60();
  return swift_endAccess();
}

uint64_t sub_242DFC8A8()
{
  v1 = v0 + *(*v0 + 128);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_242DFC8FC()
{
  v1 = v0 + *(*v0 + 136);
  swift_beginAccess();
  return *v1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_242DFCA68()
{
  result = qword_27ECFC050;
  if (!qword_27ECFC050)
  {
    sub_242F04B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC050);
  }

  return result;
}

unint64_t sub_242DFCAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF78A0;
  if (!qword_27ECF78A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF78A0);
  }

  return result;
}

unint64_t sub_242DFCB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF78A8;
  if (!qword_27ECF78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF78A8);
  }

  return result;
}

unint64_t sub_242DFCBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF78D0;
  if (!qword_27ECF78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF78D0);
  }

  return result;
}

unint64_t sub_242DFCC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF78F8;
  if (!qword_27ECF78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF78F8);
  }

  return result;
}

unint64_t sub_242DFCCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7900;
  if (!qword_27ECF7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7900);
  }

  return result;
}

unint64_t sub_242DFCCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7908;
  if (!qword_27ECF7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7908);
  }

  return result;
}

unint64_t sub_242DFCD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7910[0];
  if (!qword_27ECF7910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ECF7910);
  }

  return result;
}

uint64_t sub_242DFCE24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 80))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_242DFCE78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarouselConfiguration.PageControlPosition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for CarouselConfiguration.PageControlPosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t getEnumTagSinglePayload for CarouselConfiguration.CarouselStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CarouselConfiguration.CarouselStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

uint64_t sub_242DFD038(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242DFD04C(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 32) = -a2;
  }

  return result;
}

void sub_242DFD088(uint64_t a1)
{
  sub_242F03AB0();
  if (v1 <= 0x3F)
  {
    sub_242DFD6C0(319, qword_27ECF7998, MEMORY[0x277D83B88]);
    if (v2 <= 0x3F)
    {
      sub_242F053E0();
      sub_242F03AB0();
      if (v3 <= 0x3F)
      {
        sub_242DFD6C0(319, &qword_27ECF3080, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

void sub_242DFD6C0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_242F03AB0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_242DFD70C(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return AssociatedTypeWitness;
}

uint64_t sub_242DFD77C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 2;
  v9 = *(v6 + 64);
  if (v7 <= 1)
  {
    v8 = 0;
    if (v9 <= 3)
    {
      v11 = (~(-1 << (8 * v9)) - v7 + 2) >> (8 * v9);
      if (v11 > 0xFFFE)
      {
        v10 = 4;
      }

      else
      {
        v12 = 1;
        if (v11 >= 0xFF)
        {
          v12 = 2;
        }

        if (v11)
        {
          v10 = v12;
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

    v9 += v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v13 = 8 * v9;
    if (v9 <= 3)
    {
      v15 = ((a2 - v8 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v15))
      {
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_33;
        }

        goto LABEL_22;
      }

      if (v15 > 0xFF)
      {
        v14 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_33;
        }

        goto LABEL_22;
      }

      if (v15 < 2)
      {
LABEL_33:
        if (!v8)
        {
          return 0;
        }

        goto LABEL_34;
      }
    }

    v14 = *(a1 + v9);
    if (!*(a1 + v9))
    {
      goto LABEL_33;
    }

LABEL_22:
    v16 = (v14 - 1) << v13;
    if (v9 > 3)
    {
      v16 = 0;
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

    return v8 + (v9 | v16) + 1;
  }

LABEL_34:
  if (!v7)
  {
    return 0;
  }

  v17 = (*(v6 + 48))(a1, v7, AssociatedTypeWitness);
  v18 = v17 >= 2;
  result = v17 - 2;
  if (result == 0 || !v18)
  {
    return 0;
  }

  return result;
}

void sub_242DFD970(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 2;
  v10 = *(v7 + 64);
  v11 = v10;
  if (v8 <= 1)
  {
    v9 = 0;
    if (v10 <= 3)
    {
      v13 = (~(-1 << (8 * v10)) - v8 + 2) >> (8 * v10);
      if (v13 > 0xFFFE)
      {
        v12 = 4;
      }

      else
      {
        v14 = 1;
        if (v13 >= 0xFF)
        {
          v14 = 2;
        }

        if (v13)
        {
          v12 = v14;
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

    v11 = v12 + v10;
  }

  v15 = a3 - v9;
  if (a3 <= v9)
  {
    v16 = 0;
    if (v9 < a2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v16 = 1;
    if (v11 <= 3)
    {
      v17 = ((v15 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      v18 = HIWORD(v17);
      if (v17 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v17 >= 2)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (v18)
      {
        v16 = 4;
      }

      else
      {
        v16 = v20;
      }
    }

    if (v9 < a2)
    {
LABEL_24:
      v21 = ~v9 + a2;
      if (v11 < 4)
      {
        v22 = (v21 >> (8 * v11)) + 1;
        if (v11)
        {
          v23 = v21 & ~(-1 << (8 * v11));
          bzero(a1, v11);
          if (v11 != 3)
          {
            if (v11 == 2)
            {
              *a1 = v23;
              if (v16 > 1)
              {
LABEL_61:
                if (v16 == 2)
                {
                  *&a1[v11] = v22;
                }

                else
                {
                  *&a1[v11] = v22;
                }

                return;
              }
            }

            else
            {
              *a1 = v21;
              if (v16 > 1)
              {
                goto LABEL_61;
              }
            }

            goto LABEL_58;
          }

          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        if (v16 > 1)
        {
          goto LABEL_61;
        }
      }

      else
      {
        bzero(a1, v11);
        *a1 = v21;
        v22 = 1;
        if (v16 > 1)
        {
          goto LABEL_61;
        }
      }

LABEL_58:
      if (v16)
      {
        a1[v11] = v22;
      }

      return;
    }
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v11] = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v16)
  {
    goto LABEL_39;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (a2 + 2 <= v8)
  {
    v27 = *(v7 + 56);

    v27(a1, a2 + 2);
  }

  else
  {
    if (v10 <= 3)
    {
      v24 = ~(-1 << (8 * v10));
    }

    else
    {
      v24 = -1;
    }

    if (v10)
    {
      v25 = v24 & (a2 - v8 + 1);
      if (v10 <= 3)
      {
        v26 = v10;
      }

      else
      {
        v26 = 4;
      }

      bzero(a1, v10);
      if (v26 > 2)
      {
        if (v26 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else
        {
          *a1 = v25;
        }
      }

      else if (v26 == 1)
      {
        *a1 = v25;
      }

      else
      {
        *a1 = v25;
      }
    }
  }
}

uint64_t sub_242DFDC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for PageControl(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PageControl(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_242DFDD4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_242DFDD94(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_242DFDDE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_242DFDE30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

uint64_t sub_242DFDE88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 48))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_242DFDED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

unint64_t sub_242DFDFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7AA0;
  if (!qword_27ECF7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7AA0);
  }

  return result;
}

unint64_t sub_242DFE030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7AA8;
  if (!qword_27ECF7AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7AA8);
  }

  return result;
}

unint64_t sub_242DFE088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7AB0;
  if (!qword_27ECF7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7AB0);
  }

  return result;
}

unint64_t sub_242DFE0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7AB8;
  if (!qword_27ECF7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7AB8);
  }

  return result;
}

unint64_t sub_242DFE138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7AC0;
  if (!qword_27ECF7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7AC0);
  }

  return result;
}

unint64_t sub_242DFE190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7AC8;
  if (!qword_27ECF7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7AC8);
  }

  return result;
}

unint64_t sub_242DFE1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7AD0;
  if (!qword_27ECF7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7AD0);
  }

  return result;
}

unint64_t sub_242DFE240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7AD8;
  if (!qword_27ECF7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7AD8);
  }

  return result;
}

unint64_t sub_242DFE2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7AF0;
  if (!qword_27ECF7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7AF0);
  }

  return result;
}

unint64_t sub_242DFE334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7AF8;
  if (!qword_27ECF7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7AF8);
  }

  return result;
}

unint64_t sub_242DFE38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7B00;
  if (!qword_27ECF7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B00);
  }

  return result;
}

unint64_t sub_242DFE3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7B08;
  if (!qword_27ECF7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B08);
  }

  return result;
}

unint64_t sub_242DFE49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7B20;
  if (!qword_27ECF7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B20);
  }

  return result;
}

unint64_t sub_242DFE4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7B28;
  if (!qword_27ECF7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B28);
  }

  return result;
}

unint64_t sub_242DFE54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7B30;
  if (!qword_27ECF7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B30);
  }

  return result;
}

unint64_t sub_242DFE5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7B38;
  if (!qword_27ECF7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B38);
  }

  return result;
}

unint64_t sub_242DFE608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7B40;
  if (!qword_27ECF7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B40);
  }

  return result;
}

unint64_t sub_242DFE6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7B48;
  if (!qword_27ECF7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B48);
  }

  return result;
}

unint64_t sub_242DFE70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7B50;
  if (!qword_27ECF7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B50);
  }

  return result;
}

unint64_t sub_242DFE764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7B58;
  if (!qword_27ECF7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B58);
  }

  return result;
}

unint64_t sub_242DFE7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7B60;
  if (!qword_27ECF7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B60);
  }

  return result;
}

unint64_t sub_242DFE814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7B68;
  if (!qword_27ECF7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B68);
  }

  return result;
}

unint64_t sub_242DFE86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7B70;
  if (!qword_27ECF7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B70);
  }

  return result;
}

unint64_t sub_242DFE8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7B78;
  if (!qword_27ECF7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B78);
  }

  return result;
}

unint64_t sub_242DFE91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7B80;
  if (!qword_27ECF7B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B80);
  }

  return result;
}

unint64_t sub_242DFE974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7B88;
  if (!qword_27ECF7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B88);
  }

  return result;
}

unint64_t sub_242DFE9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7B90;
  if (!qword_27ECF7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B90);
  }

  return result;
}

unint64_t sub_242DFEA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7B98;
  if (!qword_27ECF7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B98);
  }

  return result;
}

unint64_t sub_242DFEA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7BA0;
  if (!qword_27ECF7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7BA0);
  }

  return result;
}

unint64_t sub_242DFEAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7BA8;
  if (!qword_27ECF7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7BA8);
  }

  return result;
}

unint64_t sub_242DFEB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7BB0;
  if (!qword_27ECF7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7BB0);
  }

  return result;
}

unint64_t sub_242DFEB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7BB8;
  if (!qword_27ECF7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7BB8);
  }

  return result;
}

unint64_t sub_242DFEBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7BC0;
  if (!qword_27ECF7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7BC0);
  }

  return result;
}

unint64_t sub_242DFEC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7BC8;
  if (!qword_27ECF7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7BC8);
  }

  return result;
}

unint64_t sub_242DFEC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7BD0;
  if (!qword_27ECF7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7BD0);
  }

  return result;
}

unint64_t sub_242DFECE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7BD8;
  if (!qword_27ECF7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7BD8);
  }

  return result;
}

unint64_t sub_242DFED3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7BE0;
  if (!qword_27ECF7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7BE0);
  }

  return result;
}

uint64_t objectdestroy_174Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_242DFEE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7C10;
  if (!qword_27ECF7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7C10);
  }

  return result;
}

uint64_t sub_242DFEEC4(uint64_t a1)
{
  v2 = sub_242F03E30();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_240Tm()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_242DFF020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7878, &qword_242F33EF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_242DFF090()
{
  result = qword_27ECF7C40;
  if (!qword_27ECF7C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7878, &qword_242F33EF8);
    sub_242DFF11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7C40);
  }

  return result;
}

unint64_t sub_242DFF11C()
{
  result = qword_27ECF7C48;
  if (!qword_27ECF7C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7C20, &qword_242F35478);
    sub_242C7E000(&qword_27ECF7C50, &qword_27ECF7C28, &qword_242F35480, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7C48);
  }

  return result;
}

uint64_t sub_242DFF1D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7878, &qword_242F33EF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242DFF274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v9 = *(v2 + 32);
  v7 = *(v2 + 48);
  sub_242F03D10();
  return sub_242DF8BB4(a1, *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), v5, v6, a2, v9, *(&v9 + 1), v7);
}

unint64_t sub_242DFF324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7C58;
  if (!qword_27ECF7C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7C58);
  }

  return result;
}

uint64_t objectdestroy_249Tm()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_34Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_242DFF610()
{
  result = qword_27ECF7C60;
  if (!qword_27ECF7C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7BF0, &qword_242F353A0);
    sub_242C7E000(&qword_27ECF7C68, &qword_27ECF7BE8, &qword_242F35398, MEMORY[0x277CE04B0]);
    sub_242C7E000(&qword_27ECF7C70, &qword_27ECF7C78, qword_242F35498, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7C60);
  }

  return result;
}

unint64_t sub_242DFF6F4()
{
  result = qword_27ECF7C80;
  if (!qword_27ECF7C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7C08, &qword_242F353B8);
    sub_242C7E000(&qword_27ECF7C88, &qword_27ECF7C00, &qword_242F353B0, MEMORY[0x277CE04B0]);
    sub_242C7E000(&qword_27ECF7C70, &qword_27ECF7C78, qword_242F35498, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7C80);
  }

  return result;
}

unint64_t sub_242DFF7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7C90;
  if (!qword_27ECF7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7C90);
  }

  return result;
}

uint64_t sub_242DFF8F4(uint64_t a1)
{
  v2 = type metadata accessor for ActionConfiguration(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_242E02634(a1, &v12 - v6, type metadata accessor for ActionConfiguration);
  v8 = sub_242E02634(v7, v4, type metadata accessor for ActionConfiguration);
  sub_242D59520(v8, v9, v10);
  sub_242F04020();
  return sub_242E0269C(v7, type metadata accessor for ActionConfiguration);
}

__n128 IconNotificationButtonConfiguration.init(imageSize:imageScale:style:buttonPadding:verticalAlignment:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>)
{
  v18 = a2[2].n128_u8[0];
  v19 = type metadata accessor for IconNotificationButtonConfiguration(0);
  v20 = v19[5];
  v21 = sub_242F04820();
  v25 = *a2;
  v26 = a2[1];
  (*(*(v21 - 8) + 32))(a4 + v20, a1, v21);
  *a4 = a5;
  v22 = (a4 + v19[6]);
  result = v26;
  *v22 = v25;
  v22[1] = v26;
  v22[2].n128_u8[0] = v18;
  v24 = (a4 + v19[7]);
  *v24 = a6;
  v24[1] = a7;
  v24[2] = a8;
  v24[3] = a9;
  *(a4 + v19[8]) = a3;
  return result;
}

void *sub_242DFFB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_242D97D74(a1, a2, a3);
  result = sub_242F04010();
  *a4 = v6;
  return result;
}

uint64_t IconNotificationButton.init(image:configuration:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a3;
  a5[2] = a4;
  v6 = a5 + *(type metadata accessor for IconNotificationButton(0) + 24);

  return sub_242DFFC28(a2, v6);
}

uint64_t sub_242DFFC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconNotificationButtonConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static IconNotificationButtonConfiguration.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF6C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IconNotificationButtonConfiguration(0);
  v3 = __swift_project_value_buffer(v2, qword_27ECF7C98);
  return sub_242E02634(v3, a1, type metadata accessor for IconNotificationButtonConfiguration);
}

uint64_t IconNotificationButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for IconNotificationButtonStyle(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7CB0, &qword_242F35520);
  v6 = *(v5 - 8);
  v27 = v5;
  v28 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7CB8, &qword_242F35528);
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v13 = v1[1];
  v12 = v1[2];
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    v15 = sub_242D5A6E0;
  }

  else
  {
    v15 = nullsub_2;
    v14 = 0;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  sub_242CA0064(v13, v12);
  sub_242F048E0();
  v17 = *v1;
  v18 = type metadata accessor for IconNotificationButton(0);
  sub_242E02634(v1 + *(v18 + 24), v4 + v2[8], type metadata accessor for IconNotificationButtonConfiguration);
  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7CC0, &qword_242F3D2F0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *(v4 + v2[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0, &qword_242F0D080);
  swift_storeEnumTagMultiPayload();
  v20 = v4 + v2[5];
  *v20 = KeyPath;
  v20[8] = 0;
  *(v4 + v2[7]) = v17;
  v21 = sub_242C7E000(&qword_27ECF7CC8, &qword_27ECF7CB0, &qword_242F35520, MEMORY[0x277CDF028]);
  v22 = sub_242E02844(&qword_27ECF7CD0, type metadata accessor for IconNotificationButtonStyle, &unk_242F3580C);

  v23 = v27;
  sub_242F045D0();
  sub_242E0269C(v4, type metadata accessor for IconNotificationButtonStyle);
  (*(v28 + 8))(v8, v23);
  v32 = v23;
  v33 = v2;
  v34 = v21;
  v35 = v22;
  swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_242F04610();
  return (*(v29 + 8))(v11, v24);
}

uint64_t IconNotificationButtonContent.init(image:forceFocusedState:configuration:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  *(a4 + 32) = a1;
  *(a4 + 25) = a2;
  v8 = a4 + *(type metadata accessor for IconNotificationButtonContent(0) + 32);

  return sub_242DFFC28(a3, v8);
}

__n128 IconNotificationButtonContent.body.getter@<Q0>(uint64_t a1@<X8>)
{
  sub_242E00270(v1, a1);
  v3 = v1 + *(type metadata accessor for IconNotificationButtonContent(0) + 32);
  v4 = (v3 + *(type metadata accessor for IconNotificationButtonConfiguration(0) + 28));
  v7 = v4[1];
  v8 = *v4;
  LOBYTE(v3) = sub_242F043B0();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7CD8, &qword_242F355F0) + 36);
  *v5 = v3;
  result = v8;
  *(v5 + 24) = v7;
  *(v5 + 8) = v8;
  *(v5 + 40) = 0;
  return result;
}

uint64_t sub_242E00270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E88, &unk_242F48850);
  MEMORY[0x28223BE20](v3 - 8);
  v132 = &v123 - v4;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E00, &qword_242F357A8);
  MEMORY[0x28223BE20](v131);
  v6 = (&v123 - v5);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7DF0, &qword_242F357A0);
  MEMORY[0x28223BE20](v134);
  v135 = &v123 - v7;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7DE0, &qword_242F35798);
  MEMORY[0x28223BE20](v133);
  v137 = &v123 - v8;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7DD0, &qword_242F35790);
  MEMORY[0x28223BE20](v143);
  v136 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v139 = &v123 - v11;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E90, &unk_242F35860);
  MEMORY[0x28223BE20](v141);
  v142 = &v123 - v12;
  v130 = sub_242F04700();
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v129 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IconNotificationButtonConfiguration(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3F48, &qword_242F23098);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v123 - v18;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7D60, &qword_242F35750);
  MEMORY[0x28223BE20](v138);
  v21 = &v123 - v20;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7D50, &qword_242F35748);
  MEMORY[0x28223BE20](v140);
  v23 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v123 - v25;
  v27 = a1;
  v28 = a1 + *(type metadata accessor for IconNotificationButtonContent(0) + 32);
  v29 = v28 + *(v14 + 24);
  if (*(v29 + 32))
  {
    v138 = v16;
    v30 = *(v27 + 32);

    if (sub_242E0117C())
    {
      v31 = [objc_opt_self() _carSystemFocusLabelColor];
      v32 = sub_242F047D0();
    }

    else
    {
      v32 = sub_242F04790();
    }

    v130 = v32;
    v60 = v14;
    v61 = v132;
    v62 = [objc_opt_self() _carSystemFocusColor];
    v63 = sub_242F047D0();
    if (sub_242E0117C())
    {
      sub_242F040C0();
    }

    else
    {
      sub_242F040A0();
    }

    v98 = sub_242F040D0();
    (*(*(v98 - 8) + 56))(v61, 0, 1, v98);
    KeyPath = swift_getKeyPath();
    v100 = (v6 + *(v131 + 36));
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E30, &unk_242F357C0);
    sub_242CF6B3C(v61, v100 + *(v101 + 28), &qword_27ECF7E88, &unk_242F48850);
    *v100 = KeyPath;
    v102 = v130;
    *v6 = v30;
    v6[1] = v102;
    v6[2] = v63;
    sub_242F04450();
    v103 = sub_242F04430();
    (*(*(v103 - 8) + 56))(v19, 1, 1, v103);
    v104 = sub_242F04460();
    sub_242C6D138(v19, &qword_27ECF3F48, &qword_242F23098);
    v105 = v28;
    v106 = swift_getKeyPath();
    v107 = v135;
    sub_242CF6B3C(v6, v135, &qword_27ECF7E00, &qword_242F357A8);
    v108 = (v107 + *(v134 + 36));
    *v108 = v106;
    v108[1] = v104;
    v109 = v138;
    sub_242E02634(v105, v138, type metadata accessor for IconNotificationButtonConfiguration);
    v110 = *(v60 + 20);
    v111 = swift_getKeyPath();
    v112 = v137;
    v113 = &v137[*(v133 + 36)];
    v114 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E50, &unk_242F357D0) + 28);
    v115 = sub_242F04820();
    v116 = *(v115 - 8);
    (*(v116 + 16))(v113 + v114, v109 + v110, v115);
    *v113 = v111;
    sub_242CF6B3C(v107, v112, &qword_27ECF7DF0, &qword_242F357A0);
    (*(v116 + 8))(v109 + v110, v115);
    v117 = swift_getKeyPath();
    v118 = v136;
    v119 = &v136[*(v143 + 36)];
    v120 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BC8, &unk_242F57790) + 28);
    sub_242F04A10();
    v121 = sub_242F04A30();
    (*(*(v121 - 8) + 56))(v119 + v120, 0, 1, v121);
    *v119 = v117;
    sub_242CF6B3C(v112, v118, &qword_27ECF7DE0, &qword_242F35798);
    v96 = &qword_27ECF7DD0;
    v97 = &qword_242F35790;
    v94 = v139;
    sub_242CF6B3C(v118, v139, &qword_27ECF7DD0, &qword_242F35790);
    sub_242CA321C(v94, v142, &qword_27ECF7DD0, &qword_242F35790);
    swift_storeEnumTagMultiPayload();
    sub_242E01DAC(&qword_27ECF7D48, &qword_27ECF7D50, &qword_242F35748, sub_242E01E30);
    sub_242E02110();
  }

  else
  {
    v135 = v28 + *(v14 + 24);
    v136 = v23;
    v139 = v26;
    v33 = *v29;
    v133 = *(v29 + 8);
    v134 = v33;
    v34 = sub_242F04220();
    v35 = swift_getKeyPath();
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7D90, &qword_242F35768) + 36);
    v124 = v28;
    v37 = &v21[v36];
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BC8, &unk_242F57790) + 28);
    sub_242F04A10();
    v39 = sub_242F04A30();
    (*(*(v39 - 8) + 56))(v37 + v38, 0, 1, v39);
    *v37 = v35;
    *v21 = v34;
    *(v21 + 2) = 256;
    v40 = sub_242F04A70();
    v131 = v41;
    v132 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7D80, &qword_242F35760) + 36);
    v137 = v21;
    v43 = &v21[v42];
    v44 = v27;
    v127 = *(v27 + 32);

    v126 = sub_242F04230();
    v45 = v124;
    sub_242F04450();
    v46 = sub_242F04430();
    (*(*(v46 - 8) + 56))(v19, 1, 1, v46);
    v125 = sub_242F04460();
    sub_242C6D138(v19, &qword_27ECF3F48, &qword_242F23098);
    v123 = swift_getKeyPath();
    sub_242E02634(v45, v16, type metadata accessor for IconNotificationButtonConfiguration);
    v47 = *(v14 + 20);
    v48 = swift_getKeyPath();
    v49 = v44;
    v50 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E98, &unk_242F35930) + 36)];
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E50, &unk_242F357D0) + 28);
    v52 = sub_242F04820();
    v53 = *(v52 - 8);
    (*(v53 + 16))(v50 + v51, &v16[v47], v52);
    *v50 = v48;
    *v43 = v127;
    *(v43 + 2) = v126;
    v54 = v125;
    *(v43 + 2) = v123;
    *(v43 + 3) = v54;
    (*(v53 + 8))(&v16[v47], v52);
    v55 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7DB0, &qword_242F35780) + 36)];
    v56 = v131;
    *v55 = v132;
    *(v55 + 1) = v56;
    v57 = sub_242F04A70();
    v131 = v58;
    v132 = v57;
    v127 = v49;
    if (sub_242E0117C())
    {
      (*(v128 + 104))(v129, *MEMORY[0x277CE0EE0], v130);
      sub_242F047A0();
      v59 = sub_242F04770();
    }

    else
    {
      v59 = sub_242F04740();
    }

    sub_242F03BF0();
    v64 = v174;
    v65 = v175;
    v66 = v176;
    v67 = v177;
    v68 = v178;
    v69 = v179;
    v70 = sub_242F04A70();
    v72 = v71;
    sub_242F04A70();
    sub_242F03C70();
    *(&v150[2] + 8) = v173;
    *(&v150[1] + 8) = v172;
    *&v146 = v64;
    *(&v146 + 1) = __PAIR64__(v66, v65);
    *&v147 = v67;
    *(&v147 + 1) = v68;
    *&v148 = v69;
    *(&v148 + 1) = v59;
    LOWORD(v149) = 256;
    *(&v149 + 2) = v169;
    WORD3(v149) = v170;
    *(&v149 + 1) = v70;
    *&v150[0] = v72;
    *(v150 + 8) = v171;
    v73 = v131;
    v74 = v132;
    *(&v150[3] + 1) = v132;
    v151 = v131;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7D70, &qword_242F35758);
    v76 = v137;
    v77 = &v137[*(v75 + 36)];
    v78 = v150[3];
    *(v77 + 6) = v150[2];
    *(v77 + 7) = v78;
    *(v77 + 16) = v151;
    v79 = v149;
    *(v77 + 2) = v148;
    *(v77 + 3) = v79;
    v80 = v150[1];
    *(v77 + 4) = v150[0];
    *(v77 + 5) = v80;
    v81 = v147;
    *v77 = v146;
    *(v77 + 1) = v81;
    v152 = v64;
    v153 = v65;
    v154 = v66;
    v155 = v67;
    v156 = v68;
    v157 = v69;
    v158 = v59;
    v159 = 256;
    v82 = v76;
    v160 = v169;
    v161 = v170;
    v162 = v70;
    v163 = v72;
    v165 = v172;
    v166 = v173;
    v164 = v171;
    v167 = v74;
    v168 = v73;
    sub_242CA321C(&v146, v145, &qword_27ECF7DC0, &qword_242F35788);
    sub_242C6D138(&v152, &qword_27ECF7DC0, &qword_242F35788);
    sub_242F04A70();
    sub_242F03C70();
    v83 = (v82 + *(v138 + 9));
    v84 = v145[1];
    *v83 = v145[0];
    v83[1] = v84;
    v83[2] = v145[2];
    LOBYTE(v73) = sub_242F043B0();
    sub_242F03B50();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = v136;
    sub_242CF6B3C(v82, v136, &qword_27ECF7D60, &qword_242F35750);
    v94 = v139;
    v95 = v93 + *(v140 + 36);
    *v95 = v73;
    *(v95 + 8) = v86;
    *(v95 + 16) = v88;
    *(v95 + 24) = v90;
    *(v95 + 32) = v92;
    *(v95 + 40) = 0;
    v96 = &qword_27ECF7D50;
    v97 = &qword_242F35748;
    sub_242CF6B3C(v93, v94, &qword_27ECF7D50, &qword_242F35748);
    sub_242CA321C(v94, v142, &qword_27ECF7D50, &qword_242F35748);
    swift_storeEnumTagMultiPayload();
    sub_242E01DAC(&qword_27ECF7D48, &qword_27ECF7D50, &qword_242F35748, sub_242E01E30);
    sub_242E02110();
  }

  sub_242F041C0();
  return sub_242C6D138(v94, v96, v97);
}

uint64_t sub_242E0117C()
{
  v1 = sub_242F04000();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 25);
  if (v5)
  {
    goto LABEL_2;
  }

  v9 = *v0;
  if (*(v0 + 8) == 1)
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_242F05710();
    v10 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242CA31A0(v9, 0);
    (*(v2 + 8))(v4, v1);
    if (v12[15] != 1)
    {
LABEL_9:
      v8 = 0;
      return v8 & 1;
    }
  }

LABEL_2:
  v6 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {

    sub_242F05710();
    v7 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242CA31A0(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v12[14];
  }

  v8 = v5 | v6;
  return v8 & 1;
}

__n128 sub_242E0138C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_242E00270(v2, a2);
  v5 = v2 + *(a1 + 32);
  v6 = (v5 + *(type metadata accessor for IconNotificationButtonConfiguration(0) + 28));
  v9 = v6[1];
  v10 = *v6;
  LOBYTE(v5) = sub_242F043B0();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7CD8, &qword_242F355F0) + 36);
  *v7 = v5;
  result = v10;
  *(v7 + 24) = v9;
  *(v7 + 8) = v10;
  *(v7 + 40) = 0;
  return result;
}

uint64_t sub_242E01420@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E78, &qword_242F35848);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = type metadata accessor for IconNotificationButtonContent(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IconNotificationButtonStyle(0);
  v12 = *(v1 + *(v11 + 28));
  sub_242E02634(v1 + *(v11 + 32), &v10[*(v8 + 40)], type metadata accessor for IconNotificationButtonConfiguration);
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  *(v10 + 2) = swift_getKeyPath();
  *(v10 + 12) = 0;
  *(v10 + 4) = v12;

  v13 = sub_242F04270();
  sub_242E02634(v10, v6, type metadata accessor for IconNotificationButtonContent);
  v14 = 0.5;
  if (v13)
  {
    v15 = 0.96;
  }

  else
  {
    v14 = 1.0;
    v15 = 1.0;
  }

  *&v6[*(v4 + 44)] = v14;
  sub_242F04B50();
  v17 = v16;
  v19 = v18;
  sub_242E0269C(v10, type metadata accessor for IconNotificationButtonContent);
  sub_242CF6B3C(v6, a1, &qword_27ECF7E78, &qword_242F35848);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E80, &unk_242F35850);
  v21 = a1 + *(result + 36);
  *v21 = v15;
  *(v21 + 8) = v15;
  *(v21 + 16) = v17;
  *(v21 + 24) = v19;
  return result;
}

uint64_t IconNotificationButtonConfiguration.imageScale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IconNotificationButtonConfiguration(0) + 20);
  v4 = sub_242F04820();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 IconNotificationButtonConfiguration.style.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IconNotificationButtonConfiguration(0) + 24);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

double sub_242E01748()
{
  v0 = sub_242F04820();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IconNotificationButtonConfiguration(0);
  __swift_allocate_value_buffer(v4, qword_27ECF7C98);
  v5 = __swift_project_value_buffer(v4, qword_27ECF7C98);
  (*(v1 + 104))(v3, *MEMORY[0x277CE1048], v0);
  v6 = sub_242F04030();
  (*(v1 + 32))(&v5[v4[5]], v3, v0);
  *v5 = 0x4036000000000000;
  v7 = &v5[v4[6]];
  __asm { FMOV            V1.2D, #4.0 }

  *v7 = vdupq_n_s64(0x4046000000000000uLL);
  *(v7 + 1) = _Q1;
  v7[32] = 0;
  v13 = &v5[v4[7]];
  result = 20.0;
  *v13 = xmmword_242F35500;
  *(v13 + 1) = xmmword_242F35510;
  *&v5[v4[8]] = v6;
  return result;
}

void sub_242E01954(uint64_t a1)
{
  sub_242E019E8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for IconNotificationButtonConfiguration(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_242E019E8(uint64_t a1)
{
  if (!qword_27ECF7CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7CF8, &qword_242F356D8);
    v1 = sub_242F05860();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECF7CF0);
    }
  }
}

void sub_242E01A74(uint64_t a1)
{
  sub_242CA30EC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for IconNotificationButtonConfiguration(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_242E01B34(uint64_t a1)
{
  result = sub_242F04820();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IconNotificationButtonConfiguration.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IconNotificationButtonConfiguration.Style(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_242E01C20(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242E01C3C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

unint64_t sub_242E01C70()
{
  result = qword_27ECF7D28;
  if (!qword_27ECF7D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7D30, &qword_242F35738);
    sub_242E01CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7D28);
  }

  return result;
}

unint64_t sub_242E01CF4()
{
  result = qword_27ECF7D38;
  if (!qword_27ECF7D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7D40, &qword_242F35740);
    sub_242E01DAC(&qword_27ECF7D48, &qword_27ECF7D50, &qword_242F35748, sub_242E01E30);
    sub_242E02110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7D38);
  }

  return result;
}

uint64_t sub_242E01DAC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242E01E30()
{
  result = qword_27ECF7D58;
  if (!qword_27ECF7D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7D60, &qword_242F35750);
    sub_242E01EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7D58);
  }

  return result;
}

unint64_t sub_242E01EBC()
{
  result = qword_27ECF7D68;
  if (!qword_27ECF7D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7D70, &qword_242F35758);
    sub_242E01F74();
    sub_242C7E000(&qword_27ECF7DB8, &qword_27ECF7DC0, &qword_242F35788, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7D68);
  }

  return result;
}

unint64_t sub_242E01F74()
{
  result = qword_27ECF7D78;
  if (!qword_27ECF7D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7D80, &qword_242F35760);
    sub_242E0202C();
    sub_242C7E000(&qword_27ECF7DA8, &qword_27ECF7DB0, &qword_242F35780, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7D78);
  }

  return result;
}

unint64_t sub_242E0202C()
{
  result = qword_27ECF7D88;
  if (!qword_27ECF7D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7D90, &qword_242F35768);
    sub_242C7E000(&qword_27ECF7D98, &qword_27ECF7DA0, &unk_242F35770, MEMORY[0x277CDF3A0]);
    sub_242C7E000(qword_27ECF0C18, &qword_27ECF0BC8, &unk_242F57790, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7D88);
  }

  return result;
}

unint64_t sub_242E02110()
{
  result = qword_27ECF7DC8;
  if (!qword_27ECF7DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7DD0, &qword_242F35790);
    sub_242E021C8();
    sub_242C7E000(qword_27ECF0C18, &qword_27ECF0BC8, &unk_242F57790, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7DC8);
  }

  return result;
}

unint64_t sub_242E021C8()
{
  result = qword_27ECF7DD8;
  if (!qword_27ECF7DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7DE0, &qword_242F35798);
    sub_242E02280();
    sub_242C7E000(&qword_27ECF7E48, &qword_27ECF7E50, &unk_242F357D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7DD8);
  }

  return result;
}

unint64_t sub_242E02280()
{
  result = qword_27ECF7DE8;
  if (!qword_27ECF7DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7DF0, &qword_242F357A0);
    sub_242E02338();
    sub_242C7E000(&qword_27ECF7E38, &qword_27ECF7E40, &unk_242F48C50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7DE8);
  }

  return result;
}

unint64_t sub_242E02338()
{
  result = qword_27ECF7DF8;
  if (!qword_27ECF7DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7E00, &qword_242F357A8);
    sub_242E023F0();
    sub_242C7E000(&qword_27ECF7E28, &qword_27ECF7E30, &unk_242F357C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7DF8);
  }

  return result;
}

unint64_t sub_242E023F0()
{
  result = qword_27ECF7E08;
  if (!qword_27ECF7E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7E10, &qword_242F357B0);
    sub_242C7E000(&qword_27ECF7E18, &qword_27ECF7E20, &qword_242F357B8, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7E08);
  }

  return result;
}

void sub_242E024D0(uint64_t a1)
{
  sub_242E025C4(319, &qword_27ECF7E70, type metadata accessor for ActionConfiguration);
  if (v1 <= 0x3F)
  {
    sub_242CA30EC();
    if (v2 <= 0x3F)
    {
      sub_242E025C4(319, &qword_27ECF0CA0, MEMORY[0x277CDF3E0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for IconNotificationButtonConfiguration(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_242E025C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_242F03BC0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_242E02634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242E0269C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_242E026FC()
{
  result = qword_27ECF7EA0;
  if (!qword_27ECF7EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7E80, &unk_242F35850);
    sub_242E02788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7EA0);
  }

  return result;
}

unint64_t sub_242E02788()
{
  result = qword_27ECF7EA8;
  if (!qword_27ECF7EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7E78, &qword_242F35848);
    sub_242E02844(&qword_27ECF7EB0, type metadata accessor for IconNotificationButtonContent, &protocol conformance descriptor for IconNotificationButtonContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7EA8);
  }

  return result;
}

uint64_t sub_242E02844(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_242E028D4(uint64_t a1)
{
  sub_242E02998(319, &qword_27ECF7ED8, type metadata accessor for BannerConfiguration);
  if (v1 <= 0x3F)
  {
    sub_242E02998(319, &qword_27ECF7EE0, type metadata accessor for NoticeConfiguration);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_242E02998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_242F03BC0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_242E02A08@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_242F04000();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F08, &qword_242F359F0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_242CA321C(v2, &v13 - v9, &qword_27ECF7F08, &qword_242F359F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_242E07838(v10, a1, type metadata accessor for BannerConfiguration);
  }

  sub_242F05710();
  v12 = sub_242F04360();
  sub_242F03930();

  sub_242F03FF0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_242E02BEC@<X0>(void *a1@<X8>)
{
  v3 = sub_242F04000();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F00, &qword_242F359E8);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = _s23MinimalNotificationViewVMa(0);
  sub_242CA321C(v1 + *(v10 + 20), v9, &qword_27ECF7F00, &qword_242F359E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_242E07838(v9, a1, type metadata accessor for NoticeConfiguration);
  }

  sub_242F05710();
  v12 = sub_242F04360();
  sub_242F03930();

  sub_242F03FF0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_242E02DD8@<X0>(uint64_t a1@<X8>)
{
  v33[1] = a1;
  v2 = _s10NoticeViewVMa(0);
  MEMORY[0x28223BE20](v2);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7EE8, &qword_242F359B8);
  MEMORY[0x28223BE20](v5);
  v7 = v33 - v6;
  v8 = _s10BannerViewVMa(0);
  MEMORY[0x28223BE20](v8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BannerConfiguration(0);
  MEMORY[0x28223BE20](v11);
  v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (v1 + *(_s23MinimalNotificationViewVMa(0) + 24));
  if (*(v14 + 9) || (sub_242E02A08(v13), v15 = *(v13 + *(v11 + 24)), sub_242E03328(v13, type metadata accessor for BannerConfiguration), v15 == 1))
  {
    sub_242E02A08(&v10[*(v8 + 20)]);
    v16 = v14[5];
    v39 = v14[4];
    v40 = v16;
    v41 = v14[6];
    v17 = v14[1];
    v35 = *v14;
    v36 = v17;
    v18 = v14[3];
    v37 = v14[2];
    v38 = v18;
    *v10 = swift_getKeyPath();
    *(v10 + 1) = 0;
    v10[16] = 0;
    v19 = &v10[*(v8 + 24)];
    v20 = v36;
    *v19 = v35;
    *(v19 + 1) = v20;
    v21 = v41;
    *(v19 + 5) = v40;
    *(v19 + 6) = v21;
    v22 = v39;
    *(v19 + 3) = v38;
    *(v19 + 4) = v22;
    *(v19 + 2) = v37;
    sub_242E03388(v10, v7, _s10BannerViewVMa);
    swift_storeEnumTagMultiPayload();
    sub_242E03284(&v35, v34);
    sub_242E032E0(&qword_27ECF7EF0, _s10BannerViewVMa, &unk_242F35A68);
    sub_242E032E0(&qword_27ECF7EF8, _s10NoticeViewVMa, &unk_242F35A18);
    sub_242F041C0();
    v23 = _s10BannerViewVMa;
    v24 = v10;
  }

  else
  {
    sub_242E02BEC(&v4[*(v2 + 20)]);
    v26 = v14[5];
    v39 = v14[4];
    v40 = v26;
    v41 = v14[6];
    v27 = v14[1];
    v35 = *v14;
    v36 = v27;
    v28 = v14[3];
    v37 = v14[2];
    v38 = v28;
    *v4 = swift_getKeyPath();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v29 = &v4[*(v2 + 24)];
    v30 = v36;
    *v29 = v35;
    *(v29 + 1) = v30;
    v31 = v41;
    *(v29 + 5) = v40;
    *(v29 + 6) = v31;
    v32 = v39;
    *(v29 + 3) = v38;
    *(v29 + 4) = v32;
    *(v29 + 2) = v37;
    sub_242E03388(v4, v7, _s10NoticeViewVMa);
    swift_storeEnumTagMultiPayload();
    sub_242E03284(&v35, v34);
    sub_242E032E0(&qword_27ECF7EF0, _s10BannerViewVMa, &unk_242F35A68);
    sub_242E032E0(&qword_27ECF7EF8, _s10NoticeViewVMa, &unk_242F35A18);
    sub_242F041C0();
    v23 = _s10NoticeViewVMa;
    v24 = v4;
  }

  return sub_242E03328(v24, v23);
}

uint64_t sub_242E032E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242E03328(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_242E03388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_242E03430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_242DCD3D8();
  if (v5 <= 0x3F)
  {
    a4(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }

  else
  {
    v13 = *(a1 + *(a3 + 24) + 96);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = *(v10 + 56);
    v13 = a1 + *(a4 + 20);

    return v12(v13, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 24) + 96) = (a2 - 1);
  }

  return result;
}

unint64_t sub_242E03690()
{
  result = qword_27ECF7F30;
  if (!qword_27ECF7F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7F38, &qword_242F35A10);
    sub_242E032E0(&qword_27ECF7EF0, _s10BannerViewVMa, &unk_242F35A68);
    sub_242E032E0(&qword_27ECF7EF8, _s10NoticeViewVMa, &unk_242F35A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7F30);
  }

  return result;
}

uint64_t sub_242E03798@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6C38, &unk_242F30A20);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  sub_242E03964(&v22 - v5);
  v7 = v1 + *(_s10BannerViewVMa(0) + 20);
  v8 = type metadata accessor for BannerConfiguration(0);
  v9 = *(v7 + v8[5]);
  v10 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F40, &qword_242F35AC0) + 36)];
  v11 = type metadata accessor for PlatterView(0);
  _s7SwiftUI10ShapeStyleP012CarPlayAssetB0AA8MaterialVRszrlE07platterH0AFvgZ_0();
  v12 = (v7 + v8[14]);
  v14 = *v12;
  v13 = v12[1];
  v15 = v12[2];
  *v10 = swift_getKeyPath();
  *(v10 + 1) = 0;
  v10[16] = 0;
  *(v10 + 3) = swift_getKeyPath();
  v10[32] = 0;
  *(v10 + 5) = v9;
  v16 = &v10[*(v11 + 32)];
  *v16 = v14;
  *(v16 + 1) = v13;
  *(v16 + 2) = v15;

  v17 = sub_242F04A70();
  v19 = v18;
  v20 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6960, &qword_242F30638) + 36)];
  *v20 = v17;
  v20[1] = v19;
  v6[*(v4 + 44)] = *(v7 + v8[13]);
  sub_242DCDA2C(*(v7 + v8[12]), *(v7 + v8[12] + 8), *(v7 + v8[12] + 16), *(v7 + v8[11]), *(v7 + v8[11] + 8), *(v7 + v8[11] + 16), a1);
  return sub_242C6D138(v6, &qword_27ECF6C38, &unk_242F30A20);
}

uint64_t sub_242E03964@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F48, &qword_242F35B20);
  MEMORY[0x28223BE20](v32);
  v30 = (&v29 - v2);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F50, &qword_242F35B28);
  MEMORY[0x28223BE20](v34);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F58, &qword_242F35B30);
  MEMORY[0x28223BE20](v5);
  v31 = &v29 - v6;
  v7 = sub_242F04000();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v11 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
    v35[0] = *v1;
    v35[1] = v11;
  }

  else
  {

    sub_242F05710();
    v13 = sub_242F04360();
    v29 = v5;
    v14 = v13;
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242DD16BC(v12, v11, 0);
    (*(v8 + 8))(v10, v7);
    v12 = v35[0];
  }

  v15 = _s10BannerViewVMa(0);
  v16 = v1 + *(v15 + 24);
  v17 = *(v16 + 48);
  if (v17)
  {
    v18 = *(v16 + 40);
  }

  else
  {
    v18 = 0;
  }

  v12(&v36, v18, v17);

  if (v36)
  {
    LOBYTE(v35[0]) = v37;

    v20 = v31;
    sub_242E03DDC(v19, v35);

    sub_242CA321C(v20, v4, &qword_27ECF7F58, &qword_242F35B30);
    swift_storeEnumTagMultiPayload();
    sub_242E0761C();
    sub_242C7E000(&qword_27ECF7F90, &qword_27ECF7F48, &qword_242F35B20, MEMORY[0x277CE1138]);
    sub_242F041C0();

    v21 = v20;
    v22 = &qword_27ECF7F58;
    v23 = &qword_242F35B30;
  }

  else
  {
    v24 = v1 + *(v15 + 20);
    v25 = type metadata accessor for IconNotificationButtonConfiguration(0);
    v26 = v30;
    *v30 = *(v24 + *(v25 + 32));
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F60, &qword_242F35B38);
    sub_242E04134(v1, v26 + *(v27 + 44));
    sub_242CA321C(v26, v4, &qword_27ECF7F48, &qword_242F35B20);
    swift_storeEnumTagMultiPayload();
    sub_242E0761C();
    sub_242C7E000(&qword_27ECF7F90, &qword_27ECF7F48, &qword_242F35B20, MEMORY[0x277CE1138]);
    sub_242F041C0();
    v21 = v26;
    v22 = &qword_27ECF7F48;
    v23 = &qword_242F35B20;
  }

  return sub_242C6D138(v21, v22, v23);
}

uint64_t sub_242E03DDC(uint64_t a1, unsigned __int8 *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F88, &qword_242F35B48);
  MEMORY[0x28223BE20](v5);
  v7 = (&v23 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F98, &qword_242F35B50);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F78, &qword_242F35B40);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = *a2;
  if (v14 == 2)
  {
    *v7 = sub_242F04A40();
    v7[1] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FA8, &unk_242F35B60);
    sub_242E050A4(a1, 2, v2, v7 + *(v16 + 44));
    sub_242CA321C(v7, v10, &qword_27ECF7F88, &qword_242F35B48);
    swift_storeEnumTagMultiPayload();
    sub_242C7E000(&qword_27ECF7F70, &qword_27ECF7F78, &qword_242F35B40, MEMORY[0x277CE1138]);
    sub_242C7E000(&qword_27ECF7F80, &qword_27ECF7F88, &qword_242F35B48, MEMORY[0x277CE11A8]);
    sub_242F041C0();
    v17 = v7;
    v18 = &qword_27ECF7F88;
    v19 = &qword_242F35B48;
  }

  else
  {
    v20 = v2 + *(_s10BannerViewVMa(0) + 20);
    *v13 = *(v20 + *(type metadata accessor for IconNotificationButtonConfiguration(0) + 32));
    *(v13 + 1) = 0;
    v13[16] = 0;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FA0, &qword_242F35B58);
    sub_242E049F8(a1, v14, v2, &v13[*(v21 + 44)]);
    sub_242CA321C(v13, v10, &qword_27ECF7F78, &qword_242F35B40);
    swift_storeEnumTagMultiPayload();
    sub_242C7E000(&qword_27ECF7F70, &qword_27ECF7F78, &qword_242F35B40, MEMORY[0x277CE1138]);
    sub_242C7E000(&qword_27ECF7F80, &qword_27ECF7F88, &qword_242F35B48, MEMORY[0x277CE11A8]);
    sub_242F041C0();
    v17 = v13;
    v18 = &qword_27ECF7F78;
    v19 = &qword_242F35B40;
  }

  return sub_242C6D138(v17, v18, v19);
}

uint64_t sub_242E04134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FB0, &qword_242F489A0);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8038, &qword_242F35C18);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  *v12 = sub_242F04040();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v13 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8040, &unk_242F35C20) + 44)];
  v14 = _s10BannerViewVMa(0);
  v16 = *(v14 + 20);
  v15 = *(v14 + 24);
  v17 = a1;
  v59 = a1;
  v18 = a1 + v15;
  v19 = *v18;
  v20 = *(v18 + 8);
  v22 = *(v18 + 16);
  v21 = *(v18 + 24);
  v23 = *(v18 + 32);
  v24 = v17 + v16 + *(type metadata accessor for BannerConfiguration(0) + 36);
  v25 = type metadata accessor for TextContentView(0);
  sub_242D575E8(v24, v13 + *(v25 + 24));
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0, &qword_242F0D080);
  swift_storeEnumTagMultiPayload();
  v26 = v13 + *(v25 + 20);
  *v26 = v19;
  *(v26 + 1) = v20;
  *(v26 + 2) = v22;
  *(v26 + 3) = v21;
  v26[32] = v23;
  sub_242CD52B8(v19, v20, v22, v21, v23);
  LOBYTE(v21) = sub_242F043C0();
  sub_242F03B50();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A88, &qword_242F30760) + 36);
  *v35 = v21;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  LOBYTE(v21) = sub_242F043D0();
  sub_242F03B50();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A80, &qword_242F30720) + 36);
  *v44 = v21;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  LOBYTE(v21) = sub_242F043E0();
  sub_242F03B50();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8048, &unk_242F42E40) + 36);
  *v53 = v21;
  *(v53 + 1) = v46;
  *(v53 + 2) = v48;
  *(v53 + 3) = v50;
  *(v53 + 4) = v52;
  v53[40] = 0;
  v54 = v60;
  sub_242E04514(v60);
  sub_242CA321C(v12, v9, &qword_27ECF8038, &qword_242F35C18);
  v55 = v61;
  sub_242CA321C(v54, v61, &qword_27ECF7FB0, &qword_242F489A0);
  v56 = v62;
  sub_242CA321C(v9, v62, &qword_27ECF8038, &qword_242F35C18);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8050, &unk_242F35C30);
  sub_242CA321C(v55, v56 + *(v57 + 48), &qword_27ECF7FB0, &qword_242F489A0);
  sub_242C6D138(v54, &qword_27ECF7FB0, &qword_242F489A0);
  sub_242C6D138(v12, &qword_27ECF8038, &qword_242F35C18);
  sub_242C6D138(v55, &qword_27ECF7FB0, &qword_242F489A0);
  return sub_242C6D138(v9, &qword_27ECF8038, &qword_242F35C18);
}

uint64_t sub_242E04514@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FD0, &unk_242F489C0);
  MEMORY[0x28223BE20](v3);
  v5 = (v33 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FD8, &unk_242F35B90);
  MEMORY[0x28223BE20](v6);
  v8 = v33 - v7;
  v9 = type metadata accessor for IconNotificationButton(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = _s10BannerViewVMa(0);
  v13 = v12;
  v14 = (v1 + *(v12 + 24));
  v15 = v14[9];
  if (v15)
  {
    v33[1] = v6;
    v16 = v14[10];
    v17 = v14[11];
    v34 = a1;
    v18 = v14[8];
    sub_242D5A520(v18, v15, v16, v17);

    v19 = sub_242F047F0();
    v33[2] = v3;
    v20 = v19;
    sub_242E03388(v1 + *(v13 + 20), v11 + *(v9 + 24), type metadata accessor for IconNotificationButtonConfiguration);
    v21 = swift_allocObject();
    v21[2] = v18;
    v21[3] = v15;
    v21[4] = v16;
    v21[5] = v17;
    *v11 = v20;
    v11[1] = sub_242E07810;
    v11[2] = v21;
    sub_242E03388(v11, v8, type metadata accessor for IconNotificationButton);
    swift_storeEnumTagMultiPayload();
    sub_242E032E0(&qword_27ECF7FE8, type metadata accessor for IconNotificationButton, &protocol conformance descriptor for IconNotificationButton);
    sub_242E07700();
    v22 = v34;
    sub_242F041C0();
    sub_242E03328(v11, type metadata accessor for IconNotificationButton);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FE0, &unk_242F489D0);
    return (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  }

  else
  {
    v25 = v1 + *(v12 + 20);
    if (*(v25 + *(type metadata accessor for BannerConfiguration(0) + 24)) == 1)
    {
      v26 = sub_242F047F0();
      v27 = *(v9 + 24);
      if (qword_27ECEF6C0 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for IconNotificationButtonConfiguration(0);
      v29 = __swift_project_value_buffer(v28, qword_27ECF7C98);
      sub_242E03388(v29, v5 + v27, type metadata accessor for IconNotificationButtonConfiguration);
      v5[1] = 0;
      v5[2] = 0;
      *v5 = v26;
      sub_242CA321C(v5, v8, &qword_27ECF7FD0, &unk_242F489C0);
      swift_storeEnumTagMultiPayload();
      sub_242E032E0(&qword_27ECF7FE8, type metadata accessor for IconNotificationButton, &protocol conformance descriptor for IconNotificationButton);
      sub_242E07700();
      sub_242F041C0();
      sub_242C6D138(v5, &qword_27ECF7FD0, &unk_242F489C0);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FE0, &unk_242F489D0);
      return (*(*(v30 - 8) + 56))(a1, 0, 1, v30);
    }

    else
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FE0, &unk_242F489D0);
      v32 = *(*(v31 - 8) + 56);

      return v32(a1, 1, 1, v31);
    }
  }
}

uint64_t sub_242E049F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FB0, &qword_242F489A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A98, &unk_242F30770);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - v18;
  *v19 = sub_242F04040();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6AA0, &qword_242F35C00);
  sub_242E04C28(a1, v5, a3, &v19[*(v20 + 44)]);
  sub_242E04514(v13);
  sub_242CA321C(v19, v16, &qword_27ECF6A98, &unk_242F30770);
  sub_242CA321C(v13, v10, &qword_27ECF7FB0, &qword_242F489A0);
  sub_242CA321C(v16, a4, &qword_27ECF6A98, &unk_242F30770);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8030, &qword_242F35C08);
  sub_242CA321C(v10, a4 + *(v21 + 48), &qword_27ECF7FB0, &qword_242F489A0);
  sub_242C6D138(v13, &qword_27ECF7FB0, &qword_242F489A0);
  sub_242C6D138(v19, &qword_27ECF6A98, &unk_242F30770);
  sub_242C6D138(v10, &qword_27ECF7FB0, &qword_242F489A0);
  return sub_242C6D138(v16, &qword_27ECF6A98, &unk_242F30770);
}

uint64_t sub_242E04C28@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a2;
  v54 = a1;
  v57 = a4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A80, &qword_242F30720);
  MEMORY[0x28223BE20](v55);
  v58 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v52[-v7];
  v9 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v52[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for SymbolView(0);
  MEMORY[0x28223BE20](v12);
  v56 = &v52[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v52[-v15];
  MEMORY[0x28223BE20](v17);
  v59 = &v52[-v18];
  v19 = _s10BannerViewVMa(0);
  v20 = a3 + *(v19 + 20);
  v21 = type metadata accessor for BannerConfiguration(0);
  sub_242E03388(v20 + *(v21 + 28), v11, type metadata accessor for NotificationSymbolConfiguration);
  v22 = a3 + *(v19 + 24);
  if (*(v22 + 48))
  {
    v23 = *(v22 + 56);
  }

  else
  {
    v23 = 0;
  }

  *v16 = swift_getKeyPath();
  *(v16 + 1) = 0;
  v16[16] = 0;
  *(v16 + 3) = v54;
  v16[32] = v53;
  sub_242E07838(v11, &v16[*(v12 + 24)], type metadata accessor for NotificationSymbolConfiguration);
  *&v16[*(v12 + 28)] = v23;
  sub_242E07838(v16, v59, type metadata accessor for SymbolView);
  v24 = *v22;
  v25 = *(v22 + 8);
  v26 = *(v22 + 16);
  v27 = *(v22 + 24);
  v28 = v20 + *(v21 + 36);
  v29 = *(v22 + 32);
  v30 = type metadata accessor for TextContentView(0);
  sub_242D575E8(v28, v8 + *(v30 + 24));
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0, &qword_242F0D080);
  swift_storeEnumTagMultiPayload();
  v31 = v8 + *(v30 + 20);
  *v31 = v24;
  *(v31 + 1) = v25;
  *(v31 + 2) = v26;
  *(v31 + 3) = v27;
  v31[32] = v29;

  sub_242CD52B8(v24, v25, v26, v27, v29);
  LOBYTE(v30) = sub_242F043C0();
  sub_242F03B50();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A88, &qword_242F30760) + 36);
  *v40 = v30;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  LOBYTE(v30) = sub_242F043D0();
  sub_242F03B50();
  v41 = v56;
  v42 = v8 + *(v55 + 36);
  *v42 = v30;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  v47 = v59;
  sub_242E03388(v59, v41, type metadata accessor for SymbolView);
  v48 = v58;
  sub_242CA321C(v8, v58, &qword_27ECF6A80, &qword_242F30720);
  v49 = v57;
  sub_242E03388(v41, v57, type metadata accessor for SymbolView);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6AB0, &qword_242F35C10);
  sub_242CA321C(v48, v49 + *(v50 + 48), &qword_27ECF6A80, &qword_242F30720);
  sub_242C6D138(v8, &qword_27ECF6A80, &qword_242F30720);
  sub_242E03328(v47, type metadata accessor for SymbolView);
  sub_242C6D138(v48, &qword_27ECF6A80, &qword_242F30720);
  return sub_242E03328(v41, type metadata accessor for SymbolView);
}

uint64_t sub_242E050A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FB0, &qword_242F489A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FB8, &qword_242F35B70);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - v18;
  *v19 = sub_242F04080();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FC0, &qword_242F35B78);
  sub_242E052D4(a1, v5, a3, &v19[*(v20 + 44)]);
  sub_242E04514(v13);
  sub_242CA321C(v19, v16, &qword_27ECF7FB8, &qword_242F35B70);
  sub_242CA321C(v13, v10, &qword_27ECF7FB0, &qword_242F489A0);
  sub_242CA321C(v16, a4, &qword_27ECF7FB8, &qword_242F35B70);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FC8, &unk_242F35B80);
  sub_242CA321C(v10, a4 + *(v21 + 48), &qword_27ECF7FB0, &qword_242F489A0);
  sub_242C6D138(v13, &qword_27ECF7FB0, &qword_242F489A0);
  sub_242C6D138(v19, &qword_27ECF7FB8, &qword_242F35B70);
  sub_242C6D138(v10, &qword_27ECF7FB0, &qword_242F489A0);
  return sub_242C6D138(v16, &qword_27ECF7FB8, &qword_242F35B70);
}

uint64_t sub_242E052D4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a2;
  v40 = a1;
  v43 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8000, &qword_242F35BA0);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v41 = &v38[-v8];
  v9 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for SymbolView(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8008, &qword_242F35BA8);
  MEMORY[0x28223BE20](v15);
  v17 = &v38[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v38[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v38[-v22];
  v24 = _s10BannerViewVMa(0);
  v25 = a3 + *(v24 + 20);
  v26 = type metadata accessor for BannerConfiguration(0);
  sub_242E03388(v25 + *(v26 + 32), v11, type metadata accessor for NotificationSymbolConfiguration);
  v27 = a3 + *(v24 + 24);
  if (*(v27 + 48))
  {
    v28 = *(v27 + 56);
  }

  else
  {
    v28 = 0;
  }

  *v14 = swift_getKeyPath();
  *(v14 + 1) = 0;
  v14[16] = 0;
  *(v14 + 3) = v40;
  v14[32] = v39;
  sub_242E07838(v11, &v14[*(v12 + 24)], type metadata accessor for NotificationSymbolConfiguration);
  *&v14[*(v12 + 28)] = v28;

  sub_242F04A70();
  sub_242F03E40();
  sub_242E07838(v14, v20, type metadata accessor for SymbolView);
  v29 = &v20[*(v15 + 36)];
  v30 = v49;
  v29[4] = v48;
  v29[5] = v30;
  v29[6] = v50;
  v31 = v45;
  *v29 = v44;
  v29[1] = v31;
  v32 = v47;
  v29[2] = v46;
  v29[3] = v32;
  sub_242CF6B3C(v20, v23, &qword_27ECF8008, &qword_242F35BA8);
  v33 = v41;
  sub_242E05718(v41);
  sub_242CA321C(v23, v17, &qword_27ECF8008, &qword_242F35BA8);
  v34 = v42;
  sub_242CA321C(v33, v42, &qword_27ECF8000, &qword_242F35BA0);
  v35 = v43;
  sub_242CA321C(v17, v43, &qword_27ECF8008, &qword_242F35BA8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8010, &qword_242F35BB0);
  sub_242CA321C(v34, v35 + *(v36 + 48), &qword_27ECF8000, &qword_242F35BA0);
  sub_242C6D138(v33, &qword_27ECF8000, &qword_242F35BA0);
  sub_242C6D138(v23, &qword_27ECF8008, &qword_242F35BA8);
  sub_242C6D138(v34, &qword_27ECF8000, &qword_242F35BA0);
  return sub_242C6D138(v17, &qword_27ECF8008, &qword_242F35BA8);
}

uint64_t sub_242E05718@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = type metadata accessor for TextContentView(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = (&v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8018, &qword_242F35BB8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v62 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8020, &qword_242F35BC0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v63 = &v62 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8028, &qword_242F35BC8) - 8;
  MEMORY[0x28223BE20](v65);
  v64 = &v62 - v12;
  v13 = _s10BannerViewVMa(0);
  v14 = v1 + *(v13 + 24);
  v15 = *v14;
  v16 = *(v14 + 8);
  v18 = *(v14 + 16);
  v17 = *(v14 + 24);
  v19 = v1 + *(v13 + 20);
  v20 = *(v14 + 32);
  v21 = type metadata accessor for BannerConfiguration(0);
  sub_242D575E8(v19 + *(v21 + 40), v5 + *(v3 + 32));
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0, &qword_242F0D080);
  swift_storeEnumTagMultiPayload();
  v22 = v5 + *(v3 + 28);
  *v22 = v15;
  *(v22 + 1) = v16;
  *(v22 + 2) = v18;
  *(v22 + 3) = v17;
  v22[32] = v20;
  sub_242CD52B8(v15, v16, v18, v17, v20);
  sub_242F04A70();
  sub_242F03E40();
  v23 = v62;
  sub_242E07838(v5, v62, type metadata accessor for TextContentView);
  v24 = (v23 + *(v7 + 44));
  v25 = v72;
  v24[4] = v71;
  v24[5] = v25;
  v24[6] = v73;
  v26 = v68;
  *v24 = v67;
  v24[1] = v26;
  v27 = v70;
  v24[2] = v69;
  v24[3] = v27;
  LOBYTE(v17) = sub_242F043E0();
  sub_242F03B50();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v23;
  v37 = v63;
  sub_242CF6B3C(v36, v63, &qword_27ECF8018, &qword_242F35BB8);
  v38 = v37 + *(v10 + 44);
  *v38 = v17;
  *(v38 + 8) = v29;
  *(v38 + 16) = v31;
  *(v38 + 24) = v33;
  *(v38 + 32) = v35;
  *(v38 + 40) = 0;
  LOBYTE(v17) = sub_242F04400();
  sub_242F03B50();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v37;
  v48 = v64;
  sub_242CF6B3C(v47, v64, &qword_27ECF8020, &qword_242F35BC0);
  v49 = v48 + *(v65 + 44);
  *v49 = v17;
  *(v49 + 8) = v40;
  *(v49 + 16) = v42;
  *(v49 + 24) = v44;
  *(v49 + 32) = v46;
  *(v49 + 40) = 0;
  LOBYTE(v17) = sub_242F043D0();
  sub_242F03B50();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v48;
  v59 = v66;
  sub_242CF6B3C(v58, v66, &qword_27ECF8028, &qword_242F35BC8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8000, &qword_242F35BA0);
  v61 = v59 + *(result + 36);
  *v61 = v17;
  *(v61 + 8) = v51;
  *(v61 + 16) = v53;
  *(v61 + 24) = v55;
  *(v61 + 32) = v57;
  *(v61 + 40) = 0;
  return result;
}

uint64_t sub_242E05B2C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6C48, &unk_242F30A30);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  sub_242E05CF4(&v22 - v5);
  v7 = (v1 + *(_s10NoticeViewVMa(0) + 20));
  v8 = *v7;
  v9 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8058, &unk_242F35C40) + 36)];
  v10 = type metadata accessor for PlatterView(0);
  _s7SwiftUI10ShapeStyleP012CarPlayAssetB0AA8MaterialVRszrlE07platterH0AFvgZ_0();
  v11 = type metadata accessor for NoticeConfiguration(0);
  v12 = (v7 + v11[12]);
  v14 = *v12;
  v13 = v12[1];
  v15 = v12[2];
  *v9 = swift_getKeyPath();
  *(v9 + 1) = 0;
  v9[16] = 0;
  *(v9 + 3) = swift_getKeyPath();
  v9[32] = 0;
  *(v9 + 5) = v8;
  v16 = &v9[*(v10 + 32)];
  *v16 = v14;
  *(v16 + 1) = v13;
  *(v16 + 2) = v15;

  v17 = sub_242F04A70();
  v19 = v18;
  v20 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6960, &qword_242F30638) + 36)];
  *v20 = v17;
  v20[1] = v19;
  v6[*(v4 + 44)] = *(v7 + v11[11]);
  sub_242DCDC4C(*(v7 + v11[10]), *(v7 + v11[10] + 8), *(v7 + v11[10] + 16), *(v7 + v11[9]), *(v7 + v11[9] + 8), *(v7 + v11[9] + 16), a1);
  return sub_242C6D138(v6, &qword_27ECF6C48, &unk_242F30A30);
}

uint64_t sub_242E05CF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8060, &qword_242F488D0);
  MEMORY[0x28223BE20](v29);
  v4 = (&v26 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8068, &qword_242F35C50);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8070, &qword_242F35C58);
  MEMORY[0x28223BE20](v31);
  v28 = &v26 - v8;
  v9 = sub_242F04000();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v13 = *(v1 + 8);
  if (*(v2 + 16) == 1)
  {
    v32[0] = v14;
    v32[1] = v13;
  }

  else
  {

    sub_242F05710();
    v15 = sub_242F04360();
    v27 = v7;
    v16 = v15;
    sub_242F03930();

    v7 = v27;
    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242DD16BC(v14, v13, 0);
    (*(v10 + 8))(v12, v9);
    v14 = v32[0];
  }

  v17 = v2 + *(_s10NoticeViewVMa(0) + 24);
  v18 = *(v17 + 48);
  if (v18)
  {
    v19 = *(v17 + 40);
  }

  else
  {
    v19 = 0;
  }

  v14(&v33, v19, v18);

  if (v33)
  {
    LOBYTE(v32[0]) = v34;

    v21 = v28;
    sub_242E0613C(v20, v32, v28);

    sub_242CA321C(v21, v7, &qword_27ECF8070, &qword_242F35C58);
    swift_storeEnumTagMultiPayload();
    sub_242E078A0();
    sub_242E07A70(&qword_27ECF80A8, &qword_27ECF8060, &qword_242F488D0, sub_242E07A10);
    sub_242F041C0();

    v22 = v21;
    v23 = &qword_27ECF8070;
    v24 = &qword_242F35C58;
  }

  else
  {
    sub_242E06568(v4);
    sub_242CA321C(v4, v7, &qword_27ECF8060, &qword_242F488D0);
    swift_storeEnumTagMultiPayload();
    sub_242E078A0();
    sub_242E07A70(&qword_27ECF80A8, &qword_27ECF8060, &qword_242F488D0, sub_242E07A10);
    sub_242F041C0();
    v22 = v4;
    v23 = &qword_27ECF8060;
    v24 = &qword_242F488D0;
  }

  return sub_242C6D138(v22, v23, v24);
}

uint64_t sub_242E0613C@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v40 = a1;
  v41 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FB8, &qword_242F35B70);
  MEMORY[0x28223BE20](v6);
  v8 = v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80F8, &qword_242F35C98);
  MEMORY[0x28223BE20](v9);
  v11 = v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8098, &unk_242F488E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8088, &unk_242F35C60);
  MEMORY[0x28223BE20](v15);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v39 - v19;
  v21 = *a2;
  if (v21 == 2)
  {
    *v8 = sub_242F04080();
    *(v8 + 1) = 0;
    v8[16] = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FC0, &qword_242F35B78);
    sub_242E06DA8(v40, 2, v4, &v8[*(v22 + 44)]);
    sub_242CA321C(v8, v11, &qword_27ECF7FB8, &qword_242F35B70);
    swift_storeEnumTagMultiPayload();
    sub_242E07958();
    sub_242C7E000(&qword_27ECF80A0, &qword_27ECF7FB8, &qword_242F35B70, MEMORY[0x277CE1198]);
    sub_242F041C0();
    v23 = v8;
    v24 = &qword_27ECF7FB8;
    v25 = &qword_242F35B70;
  }

  else
  {
    v39[1] = v6;
    *v14 = sub_242F04040();
    *(v14 + 1) = 0;
    v14[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8100, &qword_242F35CA0);
    sub_242E067C4(v40, v21, v4, &v14[*(v26 + 44)]);
    v27 = sub_242F04400();
    v28 = v4 + *(_s10NoticeViewVMa(0) + 20);
    if ((*(v28 + *(type metadata accessor for NoticeConfiguration(0) + 28) + 144) & 1) == 0)
    {
      type metadata accessor for NotificationSymbolConfiguration(0);
    }

    sub_242F03B50();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    sub_242CF6B3C(v14, v17, &qword_27ECF8098, &unk_242F488E0);
    v37 = &v17[*(v15 + 36)];
    *v37 = v27;
    *(v37 + 1) = v30;
    *(v37 + 2) = v32;
    *(v37 + 3) = v34;
    *(v37 + 4) = v36;
    v37[40] = 0;
    sub_242CF6B3C(v17, v20, &qword_27ECF8088, &unk_242F35C60);
    sub_242CA321C(v20, v11, &qword_27ECF8088, &unk_242F35C60);
    swift_storeEnumTagMultiPayload();
    sub_242E07958();
    sub_242C7E000(&qword_27ECF80A0, &qword_27ECF7FB8, &qword_242F35B70, MEMORY[0x277CE1198]);
    sub_242F041C0();
    v23 = v20;
    v24 = &qword_27ECF8088;
    v25 = &unk_242F35C60;
  }

  return sub_242C6D138(v23, v24, v25);
}

uint64_t sub_242E06568@<X0>(uint64_t *a1@<X8>)
{
  v3 = _s10NoticeViewVMa(0);
  v4 = v1 + *(v3 + 24);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = v1 + *(v3 + 20);
  v10 = *(v4 + 32);
  v11 = v9 + *(type metadata accessor for NoticeConfiguration(0) + 28);
  v12 = type metadata accessor for TextContentView(0);
  sub_242D575E8(v11, a1 + *(v12 + 24));
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0, &qword_242F0D080);
  swift_storeEnumTagMultiPayload();
  v13 = a1 + *(v12 + 20);
  *v13 = v5;
  *(v13 + 1) = v6;
  *(v13 + 2) = v7;
  *(v13 + 3) = v8;
  v13[32] = v10;
  v14 = *(v11 + 152);
  KeyPath = swift_getKeyPath();
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80E8, &qword_242F35C88) + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  sub_242CD52B8(v5, v6, v7, v8, v10);
  LOBYTE(v5) = sub_242F043C0();
  sub_242F03B50();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80D8, &qword_242F35C80) + 36);
  *v25 = v5;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  LOBYTE(v5) = sub_242F043D0();
  sub_242F03B50();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80C8, &qword_242F35C78) + 36);
  *v34 = v5;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  LOBYTE(v5) = sub_242F043E0();
  sub_242F03B50();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80B8, &qword_242F35C70) + 36);
  *v43 = v5;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  LOBYTE(v5) = sub_242F04400();
  sub_242F03B50();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8060, &qword_242F488D0);
  v53 = a1 + *(result + 36);
  *v53 = v5;
  *(v53 + 1) = v45;
  *(v53 + 2) = v47;
  *(v53 + 3) = v49;
  *(v53 + 4) = v51;
  v53[40] = 0;
  return result;
}

uint64_t sub_242E067C4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a2;
  *&v72 = a1;
  v79 = a4;
  *&v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80C8, &qword_242F35C78);
  MEMORY[0x28223BE20](v73);
  v6 = (&v70 - v5);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80B8, &qword_242F35C70);
  MEMORY[0x28223BE20](v75);
  v78 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v70 - v9;
  MEMORY[0x28223BE20](v10);
  v77 = &v70 - v11;
  v12 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SymbolView(0);
  MEMORY[0x28223BE20](v15);
  v76 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v70 - v18;
  MEMORY[0x28223BE20](v20);
  v80 = &v70 - v21;
  v22 = _s10NoticeViewVMa(0);
  v23 = a3 + *(v22 + 20);
  v24 = type metadata accessor for NoticeConfiguration(0);
  v70 = v23 + *(v24 + 20);
  sub_242E03388(v70, v14, type metadata accessor for NotificationSymbolConfiguration);
  v25 = a3 + *(v22 + 24);
  if (*(v25 + 48))
  {
    v26 = *(v25 + 56);
  }

  else
  {
    v26 = 0;
  }

  *v19 = swift_getKeyPath();
  *(v19 + 1) = 0;
  v19[16] = 0;
  *(v19 + 3) = v72;
  v19[32] = v71;
  sub_242E07838(v14, &v19[*(v15 + 24)], type metadata accessor for NotificationSymbolConfiguration);
  *&v19[*(v15 + 28)] = v26;
  sub_242E07838(v19, v80, type metadata accessor for SymbolView);
  v27 = *v25;
  v28 = *(v25 + 8);
  v30 = *(v25 + 16);
  v29 = *(v25 + 24);
  v31 = v23 + *(v24 + 28);
  v32 = *(v25 + 32);
  v33 = type metadata accessor for TextContentView(0);
  sub_242D575E8(v31, v6 + *(v33 + 24));
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0, &qword_242F0D080);
  swift_storeEnumTagMultiPayload();
  v34 = v6 + *(v33 + 20);
  *v34 = v27;
  *(v34 + 1) = v28;
  *(v34 + 2) = v30;
  *(v34 + 3) = v29;
  v34[32] = v32;
  v35 = *(v31 + 152);
  KeyPath = swift_getKeyPath();
  v37 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80E8, &qword_242F35C88) + 36));
  *v37 = KeyPath;
  v37[1] = v35;

  sub_242CD52B8(v27, v28, v30, v29, v32);
  v38 = sub_242F043C0();
  sub_242F03B50();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80D8, &qword_242F35C80) + 36);
  *v47 = v38;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  v48 = sub_242F043D0();
  sub_242F03B50();
  v49 = v6 + *(v73 + 36);
  *v49 = v48;
  *(v49 + 1) = v50;
  *(v49 + 2) = v51;
  *(v49 + 3) = v52;
  *(v49 + 4) = v53;
  v49[40] = 0;
  v54 = sub_242F04400();
  if (*(v31 + 144) == 1 || (*(v70 + 24) & 1) == 0)
  {
    sub_242F03B50();
    v55 = 0;
    *(&v57 + 1) = v56;
    *(&v59 + 1) = v58;
    v72 = v57;
    v73 = v59;
  }

  else
  {
    v72 = 0u;
    v73 = 0u;
    v55 = 1;
  }

  v60 = v74;
  sub_242CF6B3C(v6, v74, &qword_27ECF80C8, &qword_242F35C78);
  v61 = v60 + *(v75 + 36);
  *v61 = v54;
  v62 = v73;
  *(v61 + 24) = v72;
  *(v61 + 8) = v62;
  *(v61 + 40) = v55;
  v63 = v77;
  sub_242CF6B3C(v60, v77, &qword_27ECF80B8, &qword_242F35C70);
  v64 = v80;
  v65 = v76;
  sub_242E03388(v80, v76, type metadata accessor for SymbolView);
  v66 = v78;
  sub_242CA321C(v63, v78, &qword_27ECF80B8, &qword_242F35C70);
  v67 = v79;
  sub_242E03388(v65, v79, type metadata accessor for SymbolView);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8108, &qword_242F35CD8);
  sub_242CA321C(v66, v67 + *(v68 + 48), &qword_27ECF80B8, &qword_242F35C70);
  sub_242C6D138(v63, &qword_27ECF80B8, &qword_242F35C70);
  sub_242E03328(v64, type metadata accessor for SymbolView);
  sub_242C6D138(v66, &qword_27ECF80B8, &qword_242F35C70);
  return sub_242E03328(v65, type metadata accessor for SymbolView);
}

uint64_t sub_242E06DA8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a2;
  v40 = a1;
  v43 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8000, &qword_242F35BA0);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v41 = &v38[-v8];
  v9 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for SymbolView(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8008, &qword_242F35BA8);
  MEMORY[0x28223BE20](v15);
  v17 = &v38[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v38[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v38[-v22];
  v24 = _s10NoticeViewVMa(0);
  v25 = a3 + *(v24 + 20);
  v26 = type metadata accessor for NoticeConfiguration(0);
  sub_242E03388(v25 + *(v26 + 24), v11, type metadata accessor for NotificationSymbolConfiguration);
  v27 = a3 + *(v24 + 24);
  if (*(v27 + 48))
  {
    v28 = *(v27 + 56);
  }

  else
  {
    v28 = 0;
  }

  *v14 = swift_getKeyPath();
  *(v14 + 1) = 0;
  v14[16] = 0;
  *(v14 + 3) = v40;
  v14[32] = v39;
  sub_242E07838(v11, &v14[*(v12 + 24)], type metadata accessor for NotificationSymbolConfiguration);
  *&v14[*(v12 + 28)] = v28;

  sub_242F04A70();
  sub_242F03E40();
  sub_242E07838(v14, v20, type metadata accessor for SymbolView);
  v29 = &v20[*(v15 + 36)];
  v30 = v49;
  v29[4] = v48;
  v29[5] = v30;
  v29[6] = v50;
  v31 = v45;
  *v29 = v44;
  v29[1] = v31;
  v32 = v47;
  v29[2] = v46;
  v29[3] = v32;
  sub_242CF6B3C(v20, v23, &qword_27ECF8008, &qword_242F35BA8);
  v33 = v41;
  sub_242E071EC(v41);
  sub_242CA321C(v23, v17, &qword_27ECF8008, &qword_242F35BA8);
  v34 = v42;
  sub_242CA321C(v33, v42, &qword_27ECF8000, &qword_242F35BA0);
  v35 = v43;
  sub_242CA321C(v17, v43, &qword_27ECF8008, &qword_242F35BA8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8010, &qword_242F35BB0);
  sub_242CA321C(v34, v35 + *(v36 + 48), &qword_27ECF8000, &qword_242F35BA0);
  sub_242C6D138(v33, &qword_27ECF8000, &qword_242F35BA0);
  sub_242C6D138(v23, &qword_27ECF8008, &qword_242F35BA8);
  sub_242C6D138(v34, &qword_27ECF8000, &qword_242F35BA0);
  return sub_242C6D138(v17, &qword_27ECF8008, &qword_242F35BA8);
}

uint64_t sub_242E071EC@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = type metadata accessor for TextContentView(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = (&v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8018, &qword_242F35BB8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v62 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8020, &qword_242F35BC0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v63 = &v62 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8028, &qword_242F35BC8) - 8;
  MEMORY[0x28223BE20](v65);
  v64 = &v62 - v12;
  v13 = _s10NoticeViewVMa(0);
  v14 = v1 + *(v13 + 24);
  v15 = *v14;
  v16 = *(v14 + 8);
  v18 = *(v14 + 16);
  v17 = *(v14 + 24);
  v19 = v1 + *(v13 + 20);
  v20 = *(v14 + 32);
  v21 = type metadata accessor for NoticeConfiguration(0);
  sub_242D575E8(v19 + *(v21 + 32), v5 + *(v3 + 32));
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0, &qword_242F0D080);
  swift_storeEnumTagMultiPayload();
  v22 = v5 + *(v3 + 28);
  *v22 = v15;
  *(v22 + 1) = v16;
  *(v22 + 2) = v18;
  *(v22 + 3) = v17;
  v22[32] = v20;
  sub_242CD52B8(v15, v16, v18, v17, v20);
  sub_242F04A70();
  sub_242F03E40();
  v23 = v62;
  sub_242E07838(v5, v62, type metadata accessor for TextContentView);
  v24 = (v23 + *(v7 + 44));
  v25 = v72;
  v24[4] = v71;
  v24[5] = v25;
  v24[6] = v73;
  v26 = v68;
  *v24 = v67;
  v24[1] = v26;
  v27 = v70;
  v24[2] = v69;
  v24[3] = v27;
  LOBYTE(v17) = sub_242F043E0();
  sub_242F03B50();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v23;
  v37 = v63;
  sub_242CF6B3C(v36, v63, &qword_27ECF8018, &qword_242F35BB8);
  v38 = v37 + *(v10 + 44);
  *v38 = v17;
  *(v38 + 8) = v29;
  *(v38 + 16) = v31;
  *(v38 + 24) = v33;
  *(v38 + 32) = v35;
  *(v38 + 40) = 0;
  LOBYTE(v17) = sub_242F04400();
  sub_242F03B50();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v37;
  v48 = v64;
  sub_242CF6B3C(v47, v64, &qword_27ECF8020, &qword_242F35BC0);
  v49 = v48 + *(v65 + 44);
  *v49 = v17;
  *(v49 + 8) = v40;
  *(v49 + 16) = v42;
  *(v49 + 24) = v44;
  *(v49 + 32) = v46;
  *(v49 + 40) = 0;
  LOBYTE(v17) = sub_242F043D0();
  sub_242F03B50();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v48;
  v59 = v66;
  sub_242CF6B3C(v58, v66, &qword_27ECF8028, &qword_242F35BC8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8000, &qword_242F35BA0);
  v61 = v59 + *(result + 36);
  *v61 = v17;
  *(v61 + 8) = v51;
  *(v61 + 16) = v53;
  *(v61 + 24) = v55;
  *(v61 + 32) = v57;
  *(v61 + 40) = 0;
  return result;
}

unint64_t sub_242E0761C()
{
  result = qword_27ECF7F68;
  if (!qword_27ECF7F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7F58, &qword_242F35B30);
    sub_242C7E000(&qword_27ECF7F70, &qword_27ECF7F78, &qword_242F35B40, MEMORY[0x277CE1138]);
    sub_242C7E000(&qword_27ECF7F80, &qword_27ECF7F88, &qword_242F35B48, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7F68);
  }

  return result;
}

unint64_t sub_242E07700()
{
  result = qword_27ECF7FF0;
  if (!qword_27ECF7FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7FD0, &unk_242F489C0);
    v3 = sub_242E032E0(&qword_27ECF7FE8, type metadata accessor for IconNotificationButton, &protocol conformance descriptor for IconNotificationButton);
    sub_242E077BC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7FF0);
  }

  return result;
}

unint64_t sub_242E077BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7FF8;
  if (!qword_27ECF7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7FF8);
  }

  return result;
}

uint64_t sub_242E07838(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_242E078A0()
{
  result = qword_27ECF8078;
  if (!qword_27ECF8078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF8070, &qword_242F35C58);
    sub_242E07958();
    sub_242C7E000(&qword_27ECF80A0, &qword_27ECF7FB8, &qword_242F35B70, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8078);
  }

  return result;
}

unint64_t sub_242E07958()
{
  result = qword_27ECF8080;
  if (!qword_27ECF8080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF8088, &unk_242F35C60);
    sub_242C7E000(&qword_27ECF8090, &qword_27ECF8098, &unk_242F488E0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8080);
  }

  return result;
}

uint64_t sub_242E07A70(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242E07B24()
{
  result = qword_27ECF80E0;
  if (!qword_27ECF80E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF80E8, &qword_242F35C88);
    sub_242E032E0(&qword_27ECF80F0, type metadata accessor for TextContentView, &protocol conformance descriptor for TextContentView);
    sub_242C7E000(&qword_27ECF6BD0, &qword_27ECF6BD8, &qword_242F35C90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF80E0);
  }

  return result;
}

unint64_t sub_242E07C0C()
{
  result = qword_27ECF8110;
  if (!qword_27ECF8110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6C40, &qword_242F35CE0);
    sub_242E07EEC(&qword_27ECF8118, &qword_27ECF6C38, &unk_242F30A20, sub_242E07CC4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8110);
  }

  return result;
}

unint64_t sub_242E07CC4()
{
  result = qword_27ECF8120;
  if (!qword_27ECF8120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7F40, &qword_242F35AC0);
    sub_242E07D7C();
    sub_242C7E000(&qword_27ECF6B70, &qword_27ECF6960, &qword_242F30638, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8120);
  }

  return result;
}

unint64_t sub_242E07D7C()
{
  result = qword_27ECF8128;
  if (!qword_27ECF8128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF8130, &qword_242F35CE8);
    sub_242E0761C();
    sub_242C7E000(&qword_27ECF7F90, &qword_27ECF7F48, &qword_242F35B20, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8128);
  }

  return result;
}

unint64_t sub_242E07E34()
{
  result = qword_27ECF8138;
  if (!qword_27ECF8138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6C50, &qword_242F35CF0);
    sub_242E07EEC(&qword_27ECF8140, &qword_27ECF6C48, &unk_242F30A30, sub_242E07F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8138);
  }

  return result;
}

uint64_t sub_242E07EEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v9 = a4();
    sub_242DD1FE0(v9, v7, v8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242E07F70()
{
  result = qword_27ECF8148;
  if (!qword_27ECF8148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF8058, &unk_242F35C40);
    sub_242E08028();
    sub_242C7E000(&qword_27ECF6B70, &qword_27ECF6960, &qword_242F30638, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8148);
  }

  return result;
}

unint64_t sub_242E08028()
{
  result = qword_27ECF8150;
  if (!qword_27ECF8150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF8158, &qword_242F35CF8);
    sub_242E078A0();
    sub_242E07A70(&qword_27ECF80A8, &qword_27ECF8060, &qword_242F488D0, sub_242E07A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8150);
  }

  return result;
}

uint64_t sub_242E080E0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8, &qword_242F175C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for RequestContentModel(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_242C6D138(a1, &qword_27ECF2EC8, &qword_242F175C0);
    sub_242D37BAC(a2, v7);
    sub_242C6D138(a2, &qword_27ECFC780, &qword_242F17930);
    return sub_242C6D138(v7, &qword_27ECF2EC8, &qword_242F175C0);
  }

  else
  {
    sub_242E0F138(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_242CDEC1C(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_242C6D138(a2, &qword_27ECFC780, &qword_242F17930);
    *v2 = v16;
  }

  return result;
}

void sub_242E082AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_242CDF54C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v9 = sub_242CE519C(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v15 = *v4;
      if (!v12)
      {
        sub_242D0332C();
        v13 = v15;
      }

      sub_242ED0DF0(v9, v13);
      *v4 = v13;
    }
  }
}

void sub_242E083A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v1, 0);
    v3 = a1 + 64;
    v4 = sub_242F05940();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_242E3BC70((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 16 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 64;
      v13 = *(a1 + 64 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 72 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_242C9E060(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_242C9E060(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_242E08670@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t, uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v8 = v4;
  sub_242E0EF90(v8, a4, a2);
  result = a3(a4, a1);
  if (v5)
  {
    return sub_242E0EFF8(a4, a2);
  }

  return result;
}

void sub_242E0870C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (*(*v3 + 16) && (a1 = sub_242CE519C(a1, a2), (a2 & 1) != 0))
  {
  }

  else
  {
    a3(a1, a2);
  }
}