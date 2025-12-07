double sub_1C1E2D0C4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  *a2 = *(v3 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

  return result;
}

double sub_1C1E2D1A4(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
    sub_1C1E520AC();
  }

  return result;
}

uint64_t sub_1C1E2D340@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  v3 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

void sub_1C1E2D404(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
  swift_beginAccess();
  if (v2 == *(v1 + v3))
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
    sub_1C1E520AC();
  }
}

uint64_t (*sub_1C1E2D530(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI14CalculateGraph___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E2D2E0(v4);
  return sub_1C1E2D668;
}

double sub_1C1E2D6D4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  v4 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

double sub_1C1E2D7C8()
{
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  swift_beginAccess();

  return result;
}

double sub_1C1E2D888(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    if (a1)
    {

      v4 = sub_1C1E5390C();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
    sub_1C1E520AC();

    return result;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;

  return result;
}

void sub_1C1E2D9EC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*sub_1C1E2DA5C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI14CalculateGraph___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E2D674(v4);
  return sub_1C1E2DB94;
}

void (*sub_1C1E2DBF4(void *a1))(double *a1)
{
  a1[3] = v1;
  swift_getKeyPath();
  a1[2] = v1;
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  sub_1C1E24AC8();
  v4 = v3;
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return sub_1C1E2DCEC;
}

void (*sub_1C1E2DD68(void *a1))(double *a1)
{
  a1[3] = v1;
  swift_getKeyPath();
  a1[2] = v1;
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  sub_1C1E24CD4();
  v4 = v3;
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return sub_1C1E2DE60;
}

void sub_1C1E2DE88(double (*a2)(uint64_t)@<X3>, double *a3@<X8>)
{
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  v6 = a2(v5);
  v8 = v7;

  *a3 = v6;
  *(a3 + 1) = v8;
}

double sub_1C1E2DF84(double (*a1)(uint64_t))
{
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  v3 = a1(v2);

  return v3;
}

void sub_1C1E2E09C(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, double a5, double a6)
{
  sub_1C1E36158();

  sub_1C1E2473C(v10);

  v11 = (sub_1C1E36158() + *a1);
  swift_beginAccess();
  if (*v11 == a5 && v11[1] == a6)
  {
    *v11 = a5;
    v11[1] = a6;

    a2(v14);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);

    sub_1C1E520AC();
  }
}

void (*sub_1C1E2E234(void *a1))(double *a1)
{
  a1[3] = v1;
  swift_getKeyPath();
  a1[2] = v1;
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  sub_1C1E24EE0();
  v4 = v3;
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return sub_1C1E2E32C;
}

double sub_1C1E2E354@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  *a2 = *(v3 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__bounds);

  return result;
}

double sub_1C1E2E428(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520AC();

  return result;
}

double sub_1C1E2E4E4()
{
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  return result;
}

double sub_1C1E2E590@<D0>(uint64_t *a2@<X8>)
{
  *a2 = sub_1C1E36158();

  return result;
}

void sub_1C1E2E5C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1C1E36158();
  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);

  sub_1C1E520BC();

  v3 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = (v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  if (*v6 == v5 && v6[1] == v4)
  {
    *v6 = v5;
    v6[1] = v4;
    sub_1C1E1B224();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E520AC();
  }

  v9 = sub_1C1E36158();
  swift_getKeyPath();

  sub_1C1E520BC();

  v10 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  swift_beginAccess();
  v12 = *v10;
  v11 = v10[1];
  v13 = (v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  swift_beginAccess();
  if (*v13 == v12 && v13[1] == v11)
  {
    *v13 = v12;
    v13[1] = v11;
    sub_1C1E1B784();
  }

  else
  {
    v14 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v14);
    sub_1C1E520AC();
  }

  v15 = sub_1C1E36158();
  swift_getKeyPath();

  sub_1C1E520BC();

  v16 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  swift_beginAccess();
  v18 = *v16;
  v17 = v16[1];

  v19 = (v15 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  swift_beginAccess();
  if (*v19 == v18 && v19[1] == v17)
  {
    *v19 = v18;
    v19[1] = v17;
    sub_1C1E1BEA8();
  }

  else
  {
    v20 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v20);
    sub_1C1E520AC();
  }
}

void (*sub_1C1E2EA1C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1C1E36158();

  return sub_1C1E2EA6C;
}

void sub_1C1E2EA6C(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    sub_1C1E2E5C8(&v2);
  }

  else
  {
    v2 = *a1;
    sub_1C1E2E5C8(&v2);
  }
}

uint64_t sub_1C1E2EB3C()
{
  if (*v0)
  {
    return 0x74616E696C636E69;
  }

  else
  {
    return 0x6874756D697A61;
  }
}

void sub_1C1E2EB80(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874756D697A61 && a2 == 0xE700000000000000;
  if (v6 || (sub_1C1E54D2C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x74616E696C636E69 && a2 == 0xEB000000006E6F69)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1C1E54D2C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1C1E2EC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C1E36758(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C1E2EC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C1E36758(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t CalculateGraph.Pose.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D670, &qword_1C1E59788);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-v5];
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C1E36758(v7, v8, v9);
  sub_1C1E54DCC();
  v11[15] = 0;
  sub_1C1E54CDC();
  if (!v1)
  {
    v11[14] = 1;
    sub_1C1E54CDC();
  }

  return (*(v4 + 8))(v6, v3);
}

void CalculateGraph.Pose.init(from:)(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D680, &qword_1C1E59790);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C1E36758(v9, v10, v11);
  sub_1C1E54DBC();
  if (!v2)
  {
    v18 = 0;
    sub_1C1E54C8C();
    v13 = v12;
    v17 = 1;
    sub_1C1E54C8C();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    *a2 = v13;
    *(a2 + 1) = v15;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

void sub_1C1E2F038(double *a1)
{
  v2 = sub_1C1E5232C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *a1;
  v6 = a1[1];
  sub_1C1E36158();
  SPAngleMakeWithDegrees(v5);
  SPAngleMakeWithDegrees(v6);

  sub_1C1E522FC();
  sub_1C1E16220(v4);
}

void sub_1C1E2F104(double *a1@<X8>)
{
  v21 = a1;
  v1 = sub_1C1E5232C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1E36158();
  swift_getKeyPath();
  v23 = v5;
  v20 = sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);

  sub_1C1E520BC();

  v6 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v7(v4, v5 + v6, v1);
  sub_1C1E5230C();
  v9 = v8;
  v10 = *(v2 + 8);
  v10(v4, v1);

  v11.radians = v9;
  Degrees = SPAngleGetDegrees(v11);
  v13 = sub_1C1E36158();
  swift_getKeyPath();
  v22 = v13;

  sub_1C1E520BC();

  v14 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  swift_beginAccess();
  v7(v4, v13 + v14, v1);
  sub_1C1E522EC();
  v16 = v15;
  v10(v4, v1);

  v17.radians = v16;
  v18 = SPAngleGetDegrees(v17);
  v19 = v21;
  *v21 = Degrees;
  v19[1] = v18;
}

void sub_1C1E2F380(double *a1)
{
  v2 = sub_1C1E5232C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *a1;
  v6 = a1[1];
  sub_1C1E36158();
  SPAngleMakeWithDegrees(v5);
  SPAngleMakeWithDegrees(v6);

  sub_1C1E522FC();
  sub_1C1E16220(v4);
}

void (*sub_1C1E2F444(uint64_t a1))(double *a1)
{
  *(a1 + 16) = v1;
  v3 = *(*(sub_1C1E5232C() - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  *(a1 + 24) = v4;
  sub_1C1E2F104(a1);
  return sub_1C1E2F4C8;
}

void sub_1C1E2F4C8(double *a1)
{
  v1 = *(a1 + 3);
  v2 = *a1;
  v3 = a1[1];
  sub_1C1E36158();
  SPAngleMakeWithDegrees(v2);
  SPAngleMakeWithDegrees(v3);

  sub_1C1E522FC();
  sub_1C1E16220(v1);

  free(v1);
}

__n128 CalculateGraph.ViewState.pose.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[5].n128_u8[0];
  result = v1[4];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 CalculateGraph.ViewState.init(graphType:xAxisBounds:yAxisBounds:zAxisBounds:pose:)@<Q0>(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, __n128 *a5@<X4>, __n128 *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  v10 = a5[1].n128_u8[0];
  a6->n128_u8[0] = *a1;
  v11 = 0xC014000000000000;
  if ((a4 & 1) == 0)
  {
    v11 = a2;
  }

  v12 = 0x4014000000000000;
  if ((a4 & 1) == 0)
  {
    v12 = a3;
  }

  a6->n128_f64[1] = a7;
  a6[1].n128_f64[0] = a8;
  a6[1].n128_f64[1] = a9;
  a6[2].n128_f64[0] = a10;
  a6[2].n128_u64[1] = v11;
  a6[3].n128_u64[0] = v12;
  a6[3].n128_u8[8] = 0;
  result = *a5;
  a6[4] = *a5;
  a6[5].n128_u8[0] = v10;
  return result;
}

uint64_t sub_1C1E2F5DC()
{
  v1 = *v0;
  v2 = 0x7079546870617267;
  v3 = 0x756F42736978417ALL;
  if (v1 != 3)
  {
    v3 = 1702063984;
  }

  if (v1 == 2)
  {
    v3 = 0x756F427369784179;
  }

  if (*v0)
  {
    v2 = 0x756F427369784178;
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

uint64_t sub_1C1E2F684@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C1E369D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C1E2F6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C1E367C8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C1E2F6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C1E367C8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t CalculateGraph.ViewState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D688, &unk_1C1E597C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v10 = *(v1 + 2);
  v11 = *(v1 + 3);
  v12 = *(v1 + 4);
  v13 = *(v1 + 5);
  v29 = *(v1 + 6);
  v30 = v13;
  v34 = v1[56];
  v14 = *(v1 + 9);
  v26 = *(v1 + 8);
  v28 = v14;
  v27 = v1[80];
  v15 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C1E367C8(v15, v16, v17);
  v18 = sub_1C1E54DCC();
  LOBYTE(v31) = v8;
  v35 = 0;
  sub_1C1E3681C(v18, v19, v20);
  sub_1C1E54CEC();
  if (!v2)
  {
    v21 = v30;
    v31 = v9;
    v32 = v10;
    v35 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3F0, &qword_1C1E58AB8);
    sub_1C1E36918(&qword_1EBF1D6A0, MEMORY[0x1E69E63C0], MEMORY[0x1E69E5F98]);
    sub_1C1E54CEC();
    v31 = v11;
    v32 = v12;
    v35 = 2;
    sub_1C1E54CEC();
    v31 = v21;
    v32 = v29;
    v33 = v34;
    v35 = 3;
    v22 = sub_1C1E54CCC();
    v31 = v26;
    v32 = v28;
    v33 = v27;
    v35 = 4;
    sub_1C1E36870(v22, v23, v24);
    sub_1C1E54CCC();
  }

  return (*(v5 + 8))(v7, v4);
}

void CalculateGraph.ViewState.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D6B0, &qword_1C1E597D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C1E367C8(v9, v10, v11);
  v12 = sub_1C1E54DBC();
  if (!v2)
  {
    v29 = 0;
    sub_1C1E368C4(v12, v13, v14);
    sub_1C1E54C9C();
    v24 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3F0, &qword_1C1E58AB8);
    v29 = 1;
    sub_1C1E36918(&qword_1EBF1D6C0, MEMORY[0x1E69E63E8], MEMORY[0x1E69E5FC0]);
    sub_1C1E54C9C();
    v15 = v25;
    v29 = 2;
    sub_1C1E54C9C();
    v16 = v25;
    v29 = 3;
    v17 = sub_1C1E54C7C();
    v18 = v25;
    v28 = v26;
    v29 = 4;
    sub_1C1E36984(v17, v19, v20);
    sub_1C1E54C7C();
    (*(v6 + 8))(v8, v5);
    v21 = v26;
    v27 = v26;
    v22 = v28;
    *a2 = v24;
    *(a2 + 8) = v15;
    *(a2 + 24) = v16;
    *(a2 + 40) = v18;
    *(a2 + 56) = v22;
    *(a2 + 64) = v25;
    *(a2 + 80) = v21;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

double sub_1C1E2FD38@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  v20 = v1;
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  v4 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
  swift_beginAccess();
  v5 = *(*&v2 + v4);
  swift_getKeyPath();
  sub_1C1E520BC();

  sub_1C1E24AC8();
  v7 = v6;
  v9 = v8;

  swift_getKeyPath();
  sub_1C1E520BC();

  sub_1C1E24CD4();
  v11 = v10;
  v13 = v12;

  swift_getKeyPath();
  v19[0] = v2;
  sub_1C1E520BC();

  sub_1C1E24EE0();
  v15 = v14;
  v17 = v16;

  sub_1C1E2F104(v19);
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 24) = v11;
  *(a1 + 32) = v13;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17;
  *(a1 + 56) = 0;
  result = v19[0];
  *(a1 + 64) = *v19;
  *(a1 + 80) = 0;
  return result;
}

void sub_1C1E2FF58(double *a1)
{
  v2 = v1;
  v4 = sub_1C1E5232C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  v14 = *(a1 + 56);
  v16 = a1[8];
  v15 = a1[9];
  v17 = *(a1 + 80);
  v18 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
  swift_beginAccess();
  if (v7 == *(v2 + v18))
  {
    *(v2 + v18) = v7;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v22[-2] = v2;
    LOBYTE(v22[-1]) = v7;
    v22[2] = v2;
    sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
    sub_1C1E520AC();
  }

  sub_1C1E2DBB8(v8, v9);
  sub_1C1E2DD2C(v10, v11);
  if (v14)
  {
    v20 = 5.0;
  }

  else
  {
    v20 = v13;
  }

  v21 = -5.0;
  if (!v14)
  {
    v21 = v12;
  }

  sub_1C1E2E060(v21, v20);
  if ((v17 & 1) == 0)
  {
    sub_1C1E36158();
    SPAngleMakeWithDegrees(v16);
    SPAngleMakeWithDegrees(v15);

    sub_1C1E522FC();
    sub_1C1E16220(v6);
  }
}

void (*sub_1C1E3019C(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  *a1 = v3;
  *(v3 + 88) = v1;
  sub_1C1E2FD38(v3);
  return sub_1C1E30214;
}

void sub_1C1E30214(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v4[2] = *(*a1 + 32);
  v4[3] = v2;
  v4[4] = v1[4];
  v5 = *(v1 + 80);
  v3 = v1[1];
  v4[0] = *v1;
  v4[1] = v3;
  sub_1C1E2FF58(v4);

  free(v1);
}

uint64_t sub_1C1E3027C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v96 = a5;
  v93 = a4;
  LODWORD(v94) = a3;
  v98 = sub_1C1E51F9C();
  v7 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v91 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v85 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v85 - v12;
  v97 = type metadata accessor for Function(0);
  v90 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v85 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v85 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v85 - v23);
  v95 = *a1;
  sub_1C1E53C9C();
  v25 = *a2;
  if (*(*a2 + 16) && (v26 = sub_1C1E33C94(v13), (v27 & 1) != 0))
  {
    sub_1C1DE160C(*(v25 + 56) + *(v90 + 72) * v26, v21);
    (*(v7 + 8))(v13, v98);
    sub_1C1DF7E98(v21, v24);
    v28 = sub_1C1E53B0C();
    v30 = v29;

    *v24 = v28;
    v24[1] = v30;
    if (v94)
    {
      v31 = sub_1C1E53C2C();
      v33 = v32;
      sub_1C1DD0EB8(v24[10], v24[11]);
      v24[10] = v31;
      v24[11] = v33;

      v34 = 0xE100000000000000;
      v24[2] = 120;
      v24[3] = 0xE100000000000000;
      v35 = 122;
      v36 = 121;
      v37 = 0xE100000000000000;
    }

    else
    {
      v72 = sub_1C1E53C1C();
      v74 = v73;

      v24[8] = v72;
      v24[9] = v74;
      type metadata accessor for Function.FunctionSamplerWrapper();
      v75 = swift_allocObject();
      *(v75 + 24) = 0;
      *(v75 + 32) = 0;
      *(v75 + 40) = 1;
      *(v75 + 48) = 0;
      *(v75 + 56) = 0;
      *(v75 + 64) = 1;
      sub_1C1E5247C();
      swift_allocObject();
      *(v75 + 16) = sub_1C1E5248C();

      v24[12] = v75;
      v76 = sub_1C1E53BEC();
      if (v77)
      {
        v78 = v76;
      }

      else
      {
        v78 = 120;
      }

      if (v77)
      {
        v79 = v77;
      }

      else
      {
        v79 = 0xE100000000000000;
      }

      v24[2] = v78;
      v24[3] = v79;
      v80 = sub_1C1E53BAC();
      v35 = 0;
      if (v81)
      {
        v36 = v80;
      }

      else
      {
        v36 = 121;
      }

      if (v81)
      {
        v34 = v81;
      }

      else
      {
        v34 = 0xE100000000000000;
      }

      v37 = 0xE000000000000000;
    }

    v24[4] = v36;
    v24[5] = v34;

    v24[6] = v35;
    v24[7] = v37;
    v82 = sub_1C1E2A918();
    v83 = *(v97 + 52);

    *(v24 + v83) = v82;
  }

  else
  {
    v38 = v98;
    v89 = *(v7 + 8);
    v90 = v7 + 8;
    v89(v13, v98);
    if (v94)
    {
      v39 = v92;
      sub_1C1E53C9C();
      v40 = sub_1C1E53B0C();
      v42 = v41;
      v43 = sub_1C1E53C2C();
      v45 = v44;
      v46 = sub_1C1E2A918();
      v47 = *(v97 + 48);
      v94 = *(v97 + 52);
      v95 = v46;
      (*(v7 + 16))(v18 + v47, v39, v38);
      *v18 = v40;
      v18[1] = v42;
      v18[2] = 120;
      v18[3] = 0xE100000000000000;
      v18[4] = 121;
      v18[5] = 0xE100000000000000;
      v18[6] = 122;
      v18[7] = 0xE100000000000000;
      v18[8] = sub_1C1E28F40;
      v18[9] = 0;
      v18[10] = v43;
      v18[11] = v45;
      v48 = swift_allocObject();
      *(v48 + 16) = v43;
      *(v48 + 24) = v45;
      type metadata accessor for Function.FunctionSamplerWrapper();
      v49 = swift_allocObject();
      *(v49 + 24) = 0;
      *(v49 + 32) = 0;
      *(v49 + 40) = 1;
      *(v49 + 48) = 0;
      *(v49 + 56) = 0;
      *(v49 + 64) = 1;
      sub_1C1E5247C();
      swift_allocObject();
      swift_retain_n();
      *(v49 + 16) = sub_1C1E5248C();
      v18[12] = v49;
      v50 = swift_allocObject();
      *(v50 + 16) = v43;
      *(v50 + 24) = v45;
      v51 = swift_allocObject();
      *(v51 + 24) = 0;
      *(v51 + 32) = 0;
      *(v51 + 40) = 1;
      *(v51 + 48) = 0;
      *(v51 + 56) = 0;
      *(v51 + 64) = 1;
      swift_allocObject();
      *(v51 + 16) = sub_1C1E5248C();
      v18[13] = v51;
      *(v18 + v94) = v95;
      if (v93)
      {
        sub_1C1E51F3C();
      }

      else
      {
        sub_1C1E51EEC();
      }

      v89(v92, v98);
      v24 = v18;
    }

    else
    {
      v52 = v91;
      sub_1C1E53C9C();
      v92 = sub_1C1E53B0C();
      v88 = v53;
      v54 = sub_1C1E53BEC();
      if (v55)
      {
        v56 = v54;
      }

      else
      {
        v56 = 120;
      }

      v57 = 0xE100000000000000;
      if (v55)
      {
        v57 = v55;
      }

      v86 = v57;
      v87 = v56;
      v58 = sub_1C1E53BAC();
      if (v59)
      {
        v60 = v58;
      }

      else
      {
        v60 = 121;
      }

      if (v59)
      {
        v61 = v59;
      }

      else
      {
        v61 = 0xE100000000000000;
      }

      v85 = v61;
      v62 = sub_1C1E53C1C();
      v64 = v63;
      v65 = sub_1C1E2A918();
      *(v15 + 13) = 0;
      v66 = *(v97 + 48);
      v94 = *(v97 + 52);
      v95 = v65;
      (*(v7 + 16))(&v15[v66], v52, v38);
      v68 = v87;
      v67 = v88;
      *v15 = v92;
      *(v15 + 1) = v67;
      v69 = v85;
      v70 = v86;
      *(v15 + 2) = v68;
      *(v15 + 3) = v70;
      *(v15 + 4) = v60;
      *(v15 + 5) = v69;
      *(v15 + 6) = 122;
      *(v15 + 7) = 0xE100000000000000;
      *(v15 + 8) = v62;
      *(v15 + 9) = v64;
      type metadata accessor for Function.FunctionSamplerWrapper();
      *(v15 + 10) = 0;
      *(v15 + 11) = 0;
      v71 = swift_allocObject();
      *(v71 + 24) = 0;
      *(v71 + 32) = 0;
      *(v71 + 40) = 1;
      *(v71 + 48) = 0;
      *(v71 + 56) = 0;
      *(v71 + 64) = 1;
      sub_1C1E5247C();
      swift_allocObject();
      swift_retain_n();
      *(v71 + 16) = sub_1C1E5248C();
      *(v15 + 12) = v71;
      *&v15[v94] = v95;
      if (v93)
      {
        sub_1C1E51F3C();
      }

      else
      {
        sub_1C1E51EEC();
      }

      v89(v91, v98);
      v24 = v15;
    }
  }

  return sub_1C1DF7E98(v24, v96);
}

uint64_t CalculateGraph.__allocating_init(graphExpressions:graphType:xAxisBounds:yAxisBounds:zAxisBounds:pose:animation:isSelected:)(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v89 = a5;
  v85 = sub_1C1E53B6C();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1C1E5232C();
  v93 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v92 = &v83 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v83 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v83 - v30;
  v32 = swift_allocObject();
  v33 = *a2;
  v35 = *a3;
  v34 = *(a3 + 8);
  LODWORD(v87) = *(a3 + 16);
  sub_1C1E51F8C();
  v36 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions;
  v37 = MEMORY[0x1E69E7CC0];
  *(v32 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions) = MEMORY[0x1E69E7CC0];
  *(v32 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors) = sub_1C1DF7B9C(v37);
  *(v32 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate) = 1;
  *(v32 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType) = 0;
  v38 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation;
  *(v32 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation) = 0;
  *(v32 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__bounds) = 0;
  sub_1C1E520EC();

  *(v32 + v36) = a1;

  v91 = a4;
  *(v32 + v38) = a4;
  if (a1 >> 62)
  {
    result = sub_1C1E54ACC();
    if (!result)
    {
      goto LABEL_11;
    }

LABEL_3:
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6910730](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }
    }

    sub_1C1E53C6C();

    v40 = v84;
    v41 = v85;
    v42 = (*(v84 + 88))(v22, v85);
    if (v42 != *MEMORY[0x1E69920D0])
    {
      if (v42 == *MEMORY[0x1E69920D8])
      {
        v33 = 1;
        goto LABEL_11;
      }

      (*(v40 + 8))(v22, v41);
    }

    v33 = 0;
    goto LABEL_11;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    goto LABEL_3;
  }

LABEL_11:
  *(v32 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType) = v33;
  if (v87)
  {
    sub_1C1E5231C();
  }

  else
  {
    SPAngleMakeWithDegrees(v35);
    SPAngleMakeWithDegrees(v34);
    sub_1C1E522FC();
  }

  v43 = v93;
  v84 = *(v93 + 32);
  v44 = v31;
  v45 = v31;
  v86 = v31;
  v46 = v90;
  (v84)(v45, v28, v90);
  v95[0] = 2;
  v47 = MEMORY[0x1E69E7CC0];
  v85 = sub_1C1E35BDC(a1, MEMORY[0x1E69E7CC0], v95, 0);

  v87 = *(v43 + 16);
  v87(v92, v44, v46);
  type metadata accessor for GraphViewModel(0);
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  sub_1C1E51F3C();
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX) = 0;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY) = 0;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ) = 0;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX) = 0x4008000000000000;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY) = 0x4008000000000000;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakZ) = 0x4008000000000000;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = 0;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom) = 0x3FF0000000000000;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX) = 0;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY) = 0;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ) = 0;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio) = 0x3FE0000000000000;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioY) = 0x3FE0000000000000;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioZ) = 0x3FE0000000000000;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX) = 0x4008000000000000;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY) = 0x4008000000000000;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ) = 0x4008000000000000;
  v49 = v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__plotRect;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 1;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter) = 0;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes) = 0;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin) = 0;
  v50 = v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_xDragStartPlottable;
  *v50 = 0;
  *(v50 + 8) = 1;
  v51 = v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_yDragStartPlottable;
  *v51 = 0;
  *(v51 + 8) = 1;
  v52 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_lock;
  *(v48 + v52) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v53 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock;
  *(v48 + v53) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions) = v47;
  v54 = (v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel);
  *v54 = 0;
  v54[1] = 0;
  v55 = (v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel);
  *v55 = 0;
  v55[1] = 0;
  v56 = (v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel);
  *v56 = 0;
  v56[1] = 0;
  v57 = v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  *v57 = 0;
  *(v57 + 8) = 0;
  *(v57 + 16) = 1;
  v58 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartProxy;
  v59 = sub_1C1E522DC();
  (*(*(v59 - 8) + 56))(v48 + v58, 1, 1, v59);
  v60 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__selectedFunctionID3D;
  v61 = sub_1C1E51F9C();
  (*(*(v61 - 8) + 56))(v48 + v60, 1, 1, v61);
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_baseAxesIntervals) = &unk_1F41870E8;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction) = 0;
  v62 = v88;
  sub_1C1E5231C();
  v63 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  v64 = v84;
  (v84)(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose, v62, v46);
  sub_1C1E520EC();
  v65 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;

  *(v48 + v65) = v85;
  v66 = (v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  *v66 = a6;
  v66[1] = a7;
  v67 = (v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  *v67 = a8;
  v67[1] = a9;
  v68 = (v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  *v68 = a10;
  v68[1] = a11;
  v69 = v92;
  v87(v62, v92, v46);
  v70 = *(v93 + 8);
  v93 += 8;
  v70(v48 + v63, v46);
  v64(v48 + v63, v62, v46);
  *(v48 + 17) = v89 & 1;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType) = 1;
  v71 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  *(v48 + v71) = (a6 + a7) * 0.5;
  v72 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  *(v48 + v72) = (a8 + a9) * 0.5;
  v73 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  *(v48 + v73) = (a10 + a11) * 0.5;
  v74 = sqrt(a7 - a6);
  v75 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  swift_beginAccess();
  *(v48 + v75) = v74;
  v76 = sqrt(a9 - a8);
  v77 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  swift_beginAccess();
  *(v48 + v77) = v76;
  v78 = sqrt(a11 - a10);
  v79 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  swift_beginAccess();
  *(v48 + v79) = v78;
  sub_1C1E1A2C0();
  v70(v69, v46);
  *(v32 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel) = v48;
  type metadata accessor for CalculateGraph.Bounds();
  swift_allocObject();

  v81 = sub_1C1E03FC4(v80);

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v83 - 2) = v32;
  *(&v83 - 1) = v81;
  v94 = v32;
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520AC();

  sub_1C1E3205C(MEMORY[0x1E69E7CC0]);

  v70(v86, v46);

  return v32;
}

void (*CalculateGraph.init(graphExpressions:graphType:xAxisBounds:yAxisBounds:zAxisBounds:pose:animation:isSelected:)(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11))(char *, char *, uint64_t)
{
  v11 = sub_1C1E36B84(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);

  return v11;
}

void CalculateGraph.__allocating_init(graphExpressions:state:animation:isSelected:)(unint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = sub_1C1E53B6C();
  v75 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C1E5232C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = *a2 == 2;
  v81 = v16;
  v82 = &v72 - v17;
  v80 = v18;
  v79 = a4;
  v78 = v19;
  if (v15)
  {
    v20 = -5.0;
    v21 = 5.0;
    v22 = 5.0;
    v23 = -5.0;
    v24 = 5.0;
    v25 = -5.0;
  }

  else
  {
    if (*(a2 + 56))
    {
      goto LABEL_21;
    }

    v20 = *(a2 + 40);
    v21 = *(a2 + 48);
    v23 = *(a2 + 24);
    v22 = *(a2 + 32);
    v25 = *(a2 + 8);
    v24 = *(a2 + 16);
  }

  type metadata accessor for CalculateGraph(0);
  v26 = swift_allocObject();
  sub_1C1E51F8C();
  v27 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions;
  v28 = MEMORY[0x1E69E7CC0];
  *(v26 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions) = MEMORY[0x1E69E7CC0];
  *(v26 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors) = sub_1C1DF7B9C(v28);
  *(v26 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate) = 1;
  *(v26 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType) = 0;
  v29 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation;
  *(v26 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation) = 0;
  *(v26 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__bounds) = 0;
  sub_1C1E520EC();

  *(v26 + v27) = a1;

  *(v26 + v29) = a3;
  if (a1 >> 62)
  {
    v30 = sub_1C1E54ACC();
  }

  else
  {
    v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v77 = a3;
  if (!v30)
  {
    goto LABEL_16;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C6910730](0, a1);
LABEL_12:
    sub_1C1E53C6C();

    v31 = v75;
    v32 = (*(v75 + 88))(v10, v8);
    if (v32 != *MEMORY[0x1E69920D0])
    {
      if (v32 == *MEMORY[0x1E69920D8])
      {
        v33 = 1;
LABEL_17:
        *(v26 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType) = v33;
        v34 = v80;
        sub_1C1E5231C();
        v35 = v12;
        v76 = v12;
        v73 = *(v12 + 32);
        v36 = v82;
        v37 = v81;
        v73(v82, v34, v81);
        v84[0] = 2;
        v74 = sub_1C1E35BDC(a1, MEMORY[0x1E69E7CC0], v84, 0);

        v75 = *(v35 + 16);
        (v75)(v34, v36, v37);
        type metadata accessor for GraphViewModel(0);
        v38 = swift_allocObject();
        *(v38 + 16) = 0;
        sub_1C1E51F3C();
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX) = 0;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY) = 0;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ) = 0;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX) = 0x4008000000000000;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY) = 0x4008000000000000;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakZ) = 0x4008000000000000;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = 0;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom) = 0x3FF0000000000000;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX) = 0;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY) = 0;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ) = 0;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio) = 0x3FE0000000000000;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioY) = 0x3FE0000000000000;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioZ) = 0x3FE0000000000000;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX) = 0x4008000000000000;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY) = 0x4008000000000000;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ) = 0x4008000000000000;
        v39 = v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__plotRect;
        *v39 = 0u;
        *(v39 + 16) = 0u;
        *(v39 + 32) = 1;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter) = 0;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes) = 0;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin) = 0;
        v40 = v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_xDragStartPlottable;
        *v40 = 0;
        *(v40 + 8) = 1;
        v41 = v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_yDragStartPlottable;
        *v41 = 0;
        *(v41 + 8) = 1;
        v42 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_lock;
        *(v38 + v42) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
        v43 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock;
        *(v38 + v43) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions) = MEMORY[0x1E69E7CC0];
        v44 = (v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel);
        *v44 = 0;
        v44[1] = 0;
        v45 = (v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel);
        *v45 = 0;
        v45[1] = 0;
        v46 = (v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel);
        *v46 = 0;
        v46[1] = 0;
        v47 = v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
        *v47 = 0;
        *(v47 + 8) = 0;
        *(v47 + 16) = 1;
        v48 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartProxy;
        v49 = sub_1C1E522DC();
        (*(*(v49 - 8) + 56))(v38 + v48, 1, 1, v49);
        v50 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__selectedFunctionID3D;
        v51 = sub_1C1E51F9C();
        (*(*(v51 - 8) + 56))(v38 + v50, 1, 1, v51);
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_baseAxesIntervals) = &unk_1F41870E8;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction) = 0;
        v52 = v78;
        sub_1C1E5231C();
        v53 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
        v54 = v73;
        v73((v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose), v52, v37);
        sub_1C1E520EC();
        v55 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;

        *(v38 + v55) = v74;
        v56 = (v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
        *v56 = v25;
        v56[1] = v24;
        v57 = (v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
        *v57 = v23;
        v57[1] = v22;
        v58 = (v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
        *v58 = v20;
        v58[1] = v21;
        (v75)(v52, v34, v37);
        v59 = *(v76 + 8);
        v59(v38 + v53, v37);
        v54(v38 + v53, v52, v37);
        *(v38 + 17) = v79 & 1;
        *(v38 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType) = 1;
        v60 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
        swift_beginAccess();
        *(v38 + v60) = (v24 + v25) * 0.5;
        v61 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
        swift_beginAccess();
        *(v38 + v61) = (v22 + v23) * 0.5;
        v62 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
        swift_beginAccess();
        *(v38 + v62) = (v21 + v20) * 0.5;
        v63 = sqrt(v24 - v25);
        v64 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
        swift_beginAccess();
        *(v38 + v64) = v63;
        v65 = sqrt(v22 - v23);
        v66 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
        swift_beginAccess();
        *(v38 + v66) = v65;
        v67 = sqrt(v21 - v20);
        v68 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
        swift_beginAccess();
        *(v38 + v68) = v67;
        sub_1C1E1A2C0();
        v59(v34, v37);
        *(v26 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel) = v38;
        type metadata accessor for CalculateGraph.Bounds();
        swift_allocObject();

        v70 = sub_1C1E03FC4(v69);

        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v72 - 2) = v26;
        *(&v72 - 1) = v70;
        v83 = v26;
        sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
        sub_1C1E520AC();

        sub_1C1E3205C(MEMORY[0x1E69E7CC0]);

        v59(v82, v37);

        return;
      }

      (*(v31 + 8))(v10, v8);
    }

LABEL_16:
    v33 = 0;
    goto LABEL_17;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_12;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1C1E3205C(unint64_t a1)
{
  v2 = v1;
  v96 = sub_1C1E51F9C();
  v83 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v92 = &v77 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v77 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v77 - v11;
  v12 = sub_1C1DF7B9C(MEMORY[0x1E69E7CC0]);
  if (a1 >> 62)
  {
    v66 = v12;
    v13 = sub_1C1E54ACC();
    v12 = v66;
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v89 = v13;
  v88 = a1;
  v78 = v5;
  v93 = v2;
  v86 = v12;
  if (v13)
  {
    if (v13 >= 1)
    {
      v95 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph___observationRegistrar;
      v14 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors;
      v85 = a1 & 0xC000000000000001;
      swift_beginAccess();
      v15 = 0;
      v91 = (v83 + 8);
      v84 = (v83 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v90 = v14;
      while (1)
      {
        if (v85)
        {
          v17 = MEMORY[0x1C6910730](v15, a1);
        }

        else
        {
          v17 = *(a1 + 8 * v15 + 32);
        }

        v18 = v96;
        sub_1C1E53C9C();
        swift_getKeyPath();
        v99 = v2;
        sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
        sub_1C1E520BC();

        v19 = *(v2 + v14);
        if (!*(v19 + 16))
        {
          goto LABEL_15;
        }

        v20 = sub_1C1E33C94(v94);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v22 = *(*(v19 + 56) + 8 * v20);
        v23 = *v91;

        v23(v94, v18);

        v24 = v87;
        sub_1C1E53C9C();
        v25 = v86;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99 = v25;
        sub_1C1E343A0(v22, v24, isUniquelyReferenced_nonNull_native);
        v23(v24, v18);
        v86 = v99;
LABEL_16:
        v27 = v92;
        sub_1C1E53C9C();
        swift_getKeyPath();
        v2 = v93;
        v99 = v93;
        sub_1C1E520BC();

        v99 = v2;
        swift_getKeyPath();
        sub_1C1E520DC();

        v14 = v90;
        swift_beginAccess();
        v28 = sub_1C1E33C94(v27);
        if (v29)
        {
          v30 = v28;
          v31 = swift_isUniquelyReferenced_nonNull_native();
          v32 = *(v2 + v14);
          v98 = v32;
          *(v2 + v14) = 0x8000000000000000;
          v33 = v96;
          if (!v31)
          {
            v37 = v96;
            sub_1C1E50B9C();
            v33 = v37;
            v32 = v98;
          }

          v23(*(v32 + 48) + *(v83 + 72) * v30, v33);
          sub_1C1E34080(v30, v32);
          *(v2 + v14) = v32;
          v34 = v96;
        }

        else
        {
          v34 = v96;
        }

        v23(v92, v34);
        swift_endAccess();
        v99 = v2;
        swift_getKeyPath();
        sub_1C1E520CC();

        swift_getKeyPath();
        v99 = v17;
        sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression, &protocol conformance descriptor for CalculateGraphExpression);
        sub_1C1E520BC();

        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v36 = Strong;

          v16 = v36 == v2;
        }

        else
        {
          v16 = 0;
        }

        v13 = v89;
        a1 = v88;
        ++v15;
        *(v17 + 32) = v16;

        if (v13 == v15)
        {
          goto LABEL_23;
        }
      }

LABEL_15:
      v23 = *v91;
      (*v91)(v94, v18);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_69;
  }

LABEL_23:
  swift_getKeyPath();
  v38 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph___observationRegistrar;
  v99 = v2;
  v39 = sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  v85 = v38;
  v84 = v39;
  sub_1C1E520BC();

  v40 = *(v2 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);
  if (v40 >> 62)
  {
    v67 = *(v2 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);
    v68 = sub_1C1E54ACC();
    v40 = v67;
    v41 = v68;
    v42 = &unk_1EDE75000;
    if (v68)
    {
      goto LABEL_25;
    }

LABEL_51:
    v90 = 0;
    if (!v13)
    {
      goto LABEL_67;
    }

    goto LABEL_52;
  }

  v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v42 = &unk_1EDE75000;
  if (!v41)
  {
    goto LABEL_51;
  }

LABEL_25:
  if (v41 < 1)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    return;
  }

  v81 = v42[35];
  v77 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph_id;
  v80 = v40 & 0xC000000000000001;
  v79 = (v83 + 8);
  v43 = v40;

  v44 = v43;
  v45 = 0;
  v90 = 0;
  v83 = v43;
  v82 = v41;
  do
  {
    v95 = v45;
    if (v80)
    {
      v48 = MEMORY[0x1C6910730]();
    }

    else
    {
      v48 = *(v44 + 8 * v45 + 32);
    }

    *(v48 + 32) = 0;
    swift_getKeyPath();
    v49 = OBJC_IVAR____TtC11CalculateUI24CalculateGraphExpression___observationRegistrar;
    v98 = v48;
    v50 = sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression, &protocol conformance descriptor for CalculateGraphExpression);
    sub_1C1E520BC();

    swift_beginAccess();
    v51 = *(v48 + 24);
    v94 = v49;
    v92 = v50;
    if (!v51)
    {
      v54 = v78;
      sub_1C1E53C9C();
      if (*(v86 + 16))
      {
        v55 = v86;
        v56 = sub_1C1E33C94(v54);
        v53 = v79;
        v57 = *v79;
        if (v58)
        {
          v52 = *(*(v55 + 56) + 8 * v56);

          v57(v54, v96);
LABEL_39:

          goto LABEL_40;
        }
      }

      else
      {
        v53 = v79;
        v57 = *v79;
      }

      v57(v78, v96);
      v52 = sub_1C1E33088();
      goto LABEL_39;
    }

    v52 = v51;
    v53 = v79;
LABEL_40:
    swift_retain_n();
    v59 = v87;
    sub_1C1E53C9C();
    swift_getKeyPath();
    v60 = v93;
    v98 = v93;
    sub_1C1E520BC();

    v98 = v60;
    swift_getKeyPath();
    sub_1C1E520DC();

    v61 = v81;
    swift_beginAccess();
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v97 = *(v60 + v61);
    *(v60 + v61) = 0x8000000000000000;
    v91 = v52;
    sub_1C1E343A0(v52, v59, v62);
    (*v53)(v59, v96);
    *(v60 + v61) = v97;
    swift_endAccess();
    v98 = v60;
    swift_getKeyPath();
    sub_1C1E520CC();

    swift_getKeyPath();
    v98 = v48;
    sub_1C1E520BC();

    swift_beginAccess();
    v63 = swift_weakLoadStrong();
    if (v63 && (v64 = v63, , v64 == v60))
    {
    }

    else
    {
      if (!swift_weakLoadStrong() || (v65 = sub_1C1E51F7C(), , (v65 & 1) == 0))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v77 - 2) = v48;
        *(&v77 - 1) = v60;
        v98 = v48;
        v47 = v90;
        sub_1C1E520AC();
        v90 = v47;

        goto LABEL_28;
      }

      swift_weakAssign();
    }

LABEL_28:
    v45 = v95 + 1;
    v44 = v83;
  }

  while (v82 != v95 + 1);

  v13 = v89;
  if (!v89)
  {
    goto LABEL_67;
  }

LABEL_52:
  if (v13 < 1)
  {
    goto LABEL_70;
  }

  if ((v88 & 0xC000000000000001) != 0)
  {
    v69 = 0;
    while (1)
    {
      v70 = MEMORY[0x1C6910730](v69, v88);
      if (*(v70 + 32) == 1)
      {
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {

          v71 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v71);
          *(&v77 - 2) = v70;
          *(&v77 - 1) = 0;
          v97 = v70;
          sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression, &protocol conformance descriptor for CalculateGraphExpression);
          v72 = v90;
          sub_1C1E520AC();
          v90 = v72;
          swift_unknownObjectRelease();

          goto LABEL_57;
        }

        swift_weakAssign();
      }

      swift_unknownObjectRelease();
LABEL_57:
      if (v89 == ++v69)
      {
        goto LABEL_67;
      }
    }
  }

  v73 = v88 + 32;
  do
  {
    v74 = *v73;
    if (*(*v73 + 32) == 1)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        v75 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v75);
        *(&v77 - 2) = v74;
        *(&v77 - 1) = 0;
        v97 = v74;
        sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression, &protocol conformance descriptor for CalculateGraphExpression);
        v76 = v90;
        sub_1C1E520AC();
        v90 = v76;
      }

      else
      {
        swift_weakAssign();
      }
    }

    v73 += 8;
    --v13;
  }

  while (v13);
LABEL_67:
  sub_1C1E33630();
}

double sub_1C1E32F20(void (*a1)(void, __n128))
{
  sub_1C1E36158();

  (a1)(0);

  return result;
}

uint64_t sub_1C1E32FA8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C1E36158();
  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);

  sub_1C1E520BC();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v3 + v4);

  return v5;
}

uint64_t sub_1C1E33088()
{
  v1 = v0;
  v48 = *MEMORY[0x1E69E9840];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph___observationRegistrar;
  v47[0] = v0;
  v3 = sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  v4 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors;
  swift_beginAccess();

  sub_1C1E33518(v5, v6, v7);
  v9 = v8;
  if (qword_1EBF1C158 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v10 = qword_1EBF20D88;
    if (!*(qword_1EBF20D88 + 16))
    {
      break;
    }

    v11 = 0;
    v12 = qword_1EBF20D88 + 32;
    v43 = v9 + 56;
    v42 = v9;
    v36 = v2;
    v37 = v1;
    v34 = v4;
    v35 = v3;
    v39 = *(qword_1EBF20D88 + 16);
    v40 = qword_1EBF20D88;
    v38 = qword_1EBF20D88 + 32;
    while (1)
    {
      if (v11 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      v41 = v11;
      v13 = *(v12 + 8 * v11);
      if (!*(v9 + 16))
      {
        break;
      }

      sub_1C1E54D7C();

      sub_1C1E5359C();
      v14 = sub_1C1E54DAC();
      v15 = -1 << *(v9 + 32);
      v16 = v14 & ~v15;
      if (((*(v43 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_12;
      }

      v17 = ~v15;
      while (1)
      {

        v18 = sub_1C1E5354C();

        if (v18)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v43 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_26:
      v11 = v41 + 1;

      v10 = v40;
      v12 = v38;
      if (v41 + 1 == v39)
      {
        goto LABEL_27;
      }
    }

LABEL_12:
    swift_getKeyPath();
    v47[0] = v1;
    sub_1C1E520BC();

    v4 = *(v1 + v4);
    v19 = 1 << *(v4 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v4 + 64);
    v22 = (v19 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v1 = 0;
    while (v21)
    {
LABEL_21:
      v2 = *(*(v4 + 56) + ((v1 << 9) | (8 * __clz(__rbit64(v21)))));
      v46 = 0.0;
      v47[0] = 0;
      v21 &= v21 - 1;
      v44 = 0.0;
      v45 = 0.0;
      sub_1C1DF1D54();
      swift_retain_n();
      v3 = sub_1C1E5499C();
      [v3 getRed:v47 green:&v46 blue:&v45 alpha:&v44];

      v24 = v46;
      v25 = *v47;
      v26 = v44;
      v27 = v45;
      v46 = 0.0;
      v47[0] = 0;
      v44 = 0.0;
      v45 = 0.0;

      v28 = sub_1C1E5499C();
      [v28 getRed:v47 green:&v46 blue:&v45 alpha:&v44];

      v30 = v46;
      v29 = *v47;
      v31 = v44;
      v32 = v45;

      v9 = v42;
      if (vabdd_f64(v25, v29) <= 0.07 && vabdd_f64(v24, v30) <= 0.07 && vabdd_f64(v27, v32) <= 0.07 && vabdd_f64(v26, v31) <= 0.07)
      {

        v2 = v36;
        v1 = v37;
        v4 = v34;
        v3 = v35;
        goto LABEL_26;
      }
    }

    while (1)
    {
      v23 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v23 >= v22)
      {

        return v13;
      }

      v21 = *(v4 + 64 + 8 * v23);
      ++v1;
      if (v21)
      {
        v1 = v23;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

LABEL_27:

  if (qword_1EBF1C160 != -1)
  {
LABEL_34:
    swift_once();
  }

  v13 = qword_1EBF20D90;

  return v13;
}

void sub_1C1E33518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = sub_1C1E3872C(a1, a2, a3);
  v6 = 0;
  v14[1] = MEMORY[0x1C69104B0](v4, MEMORY[0x1E69815C0], v5);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = *(*(a1 + 56) + ((v11 << 9) | (8 * v12)));

    sub_1C1E34774(v14, v13);
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

double sub_1C1E33630()
{
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  v1 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel;
  swift_getKeyPath();
  v9 = v0;

  sub_1C1E520BC();

  v2 = *(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);
  swift_getKeyPath();

  sub_1C1E520BC();

  v3 = *(v0 + v1);
  v4 = *(v3 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);

  [v4 lock];
  swift_getKeyPath();
  v9 = v3;
  sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v5 = *(v3 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v4 unlock];

  LOBYTE(v9) = 2;
  v6 = sub_1C1E35BDC(v2, v5, &v9, 1);

  sub_1C1E235A0(v6, v7);

  return result;
}

uint64_t sub_1C1E33874(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1E51F9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1E53C9C();
  v6 = sub_1C1E51F7C();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t CalculateGraph.deinit()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph_id;
  v2 = sub_1C1E51F9C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph___observationRegistrar;
  v4 = sub_1C1E520FC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t CalculateGraph.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph_id;
  v2 = sub_1C1E51F9C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph___observationRegistrar;
  v4 = sub_1C1E520FC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1C1E33B84@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph_id;
  v5 = sub_1C1E51F9C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t sub_1C1E33C1C(uint64_t a1, uint64_t a2)
{
  sub_1C1E54D7C();
  sub_1C1E5468C();
  v4 = sub_1C1E54DAC();

  return sub_1C1E33D98(a1, a2, v4);
}

unint64_t sub_1C1E33C94(uint64_t a1)
{
  sub_1C1E51F9C();
  sub_1C1DC4DF8(&qword_1EDE750A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v2 = sub_1C1E5453C();

  return sub_1C1E33E50(a1, v2);
}

unint64_t sub_1C1E33D2C(uint64_t a1)
{
  v1 = a1;
  sub_1C1E54D7C();
  MEMORY[0x1C6910960](v1);
  v2 = sub_1C1E54DAC();

  return sub_1C1E34010(v1, v2);
}

unint64_t sub_1C1E33D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C1E54D2C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C1E33E50(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1C1E51F9C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1C1DC4DF8(&qword_1EBF1D610, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v16 = sub_1C1E545AC();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1C1E34010(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_1C1E34080(int64_t a1, uint64_t a2)
{
  v38 = sub_1C1E51F9C();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1C1E54A7C();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1C1DC4DF8(&qword_1EDE750A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = sub_1C1E5453C();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_1C1E343A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1C1E51F9C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1C1E33C94(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1C1E50B9C();
      goto LABEL_7;
    }

    sub_1C1E50318(v17, a3 & 1);
    v21 = sub_1C1E33C94(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1C1E3456C(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1C1E54D4C();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_1C1E3456C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1C1E51F9C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1C1E34624(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C1E54D7C();
  sub_1C1E5468C();
  v8 = sub_1C1E54DAC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1C1E54D2C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1C1E34D64(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C1E34774(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1C1E54D7C();
  sub_1C1E5359C();
  v6 = sub_1C1E54DAC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      v10 = sub_1C1E5354C();

      if (v10)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;

    sub_1C1E34EE4(v12, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    *a1 = a2;
    return 1;
  }
}

void sub_1C1E348B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D760, &qword_1C1E5AE10);
  v4 = sub_1C1E54B1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1C1E54D7C();
      sub_1C1E5468C();
      v21 = sub_1C1E54DAC();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1C1E34B14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D748, &qword_1C1E5A0B8);
  v4 = sub_1C1E54B1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1C1E54D7C();
      sub_1C1E5359C();
      v18 = sub_1C1E54DAC();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1C1E34D64(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1C1E348B4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1C1E35054();
      goto LABEL_16;
    }

    sub_1C1E35300(v8 + 1);
  }

  v10 = *v4;
  sub_1C1E54D7C();
  sub_1C1E5468C();
  v11 = sub_1C1E54DAC();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1C1E54D2C() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1C1E54D3C();
  __break(1u);
}

void sub_1C1E34EE4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C1E34B14(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1C1E351B0();
      goto LABEL_12;
    }

    sub_1C1E35538(v6 + 1);
  }

  v8 = *v3;
  sub_1C1E54D7C();
  sub_1C1E5359C();
  v9 = sub_1C1E54DAC();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {

      v12 = sub_1C1E5354C();

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C1E54D3C();
  __break(1u);
}

void sub_1C1E35054()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D760, &qword_1C1E5AE10);
  v2 = *v0;
  v3 = sub_1C1E54B0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C1E351B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D748, &qword_1C1E5A0B8);
  v2 = *v0;
  v3 = sub_1C1E54B0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C1E35300(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D760, &qword_1C1E5AE10);
  v4 = sub_1C1E54B1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1C1E54D7C();

      sub_1C1E5468C();
      v20 = sub_1C1E54DAC();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1C1E35538(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D748, &qword_1C1E5A0B8);
  v4 = sub_1C1E54B1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_1C1E54D7C();

      sub_1C1E5359C();
      v17 = sub_1C1E54DAC();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1C1E35760(uint64_t a1, uint64_t a2)
{
  v52 = sub_1C1E51F9C();
  v47 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v48 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D750, &qword_1C1E5A0E8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v45 = v42 - v10;
    v12 = 0;
    v43 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;
    v42[0] = v14;
    v42[1] = v47 + 16;
    v50 = (v47 + 32);
    v44 = (v47 + 8);
    while (v18)
    {
      v51 = (v18 - 1) & v18;
      v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_16:
      v25 = v43;
      v26 = v46;
      v27 = v47;
      v28 = v52;
      (*(v47 + 16))(v46, *(v43 + 48) + *(v47 + 72) * v20, v52, v11);
      v29 = *(*(v25 + 56) + 8 * v20);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D758, &qword_1C1E5A0F0);
      v31 = *(v30 + 48);
      v32 = *(v27 + 32);
      v33 = v49;
      v32(v49, v26, v28);
      *(v33 + v31) = v29;
      (*(*(v30 - 8) + 56))(v33, 0, 1, v30);

LABEL_17:
      v34 = v45;
      sub_1C1E387F8(v33, v45);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D758, &qword_1C1E5A0F0);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
      {
        return;
      }

      v36 = v48;
      v37 = v52;
      (*v50)(v48, v34, v52);
      sub_1C1E33C94(v36);
      v39 = v38;
      (*v44)(v36, v37);
      if ((v39 & 1) == 0)
      {

        return;
      }

      v40 = sub_1C1E5354C();

      v18 = v51;
      if ((v40 & 1) == 0)
      {
        return;
      }
    }

    if (v19 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21 - 1;
    while (1)
    {
      v23 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D758, &qword_1C1E5A0F0);
        v33 = v49;
        (*(*(v41 - 8) + 56))(v49, 1, 1, v41);
        v51 = 0;
        v12 = v22;
        goto LABEL_17;
      }

      v24 = *(v42[0] + 8 * v23);
      ++v12;
      if (v24)
      {
        v51 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) | (v23 << 6);
        v12 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C1E35BDC(unint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v53 = a4;
  v55 = a1;
  v6 = sub_1C1E53B6C();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v48 - v9;
  v61 = sub_1C1E51F9C();
  v10 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Function(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  v54 = *a3;
  v63 = sub_1C1DF7994(MEMORY[0x1E69E7CC0]);
  v19 = *(a2 + 16);
  if (v19)
  {
    v20 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v21 = *(v14 + 72);
    v58 = *(v13 + 48);
    v59 = (v10 + 16);
    v56 = v10;
    v57 = (v10 + 8);
    do
    {
      sub_1C1DE160C(v20, v18);
      v22 = *v59;
      (*v59)(v12, &v18[v58], v61);
      sub_1C1DF7E98(v18, v60);
      v23 = v63;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v23;
      v26 = sub_1C1E33C94(v12);
      v27 = *(v23 + 16);
      v28 = (v25 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v38 = sub_1C1E54ACC();
        goto LABEL_19;
      }

      v14 = v25;
      if (*(v23 + 24) >= v29)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v32 = v62;
          if (v25)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_1C1E50878();
          v32 = v62;
          if (v14)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_1C1E4FE78(v29, isUniquelyReferenced_nonNull_native);
        v30 = sub_1C1E33C94(v12);
        if ((v14 & 1) != (v31 & 1))
        {
          goto LABEL_37;
        }

        v26 = v30;
        v32 = v62;
        if (v14)
        {
LABEL_3:
          sub_1C1E388C0(v60, v32[7] + v26 * v21);
          (*v57)(v12, v61);
          goto LABEL_4;
        }
      }

      v32[(v26 >> 6) + 8] |= 1 << v26;
      v14 = v56;
      v33 = v61;
      v22((v32[6] + *(v56 + 72) * v26), v12, v61);
      sub_1C1DF7E98(v60, v32[7] + v26 * v21);
      (*(v14 + 8))(v12, v33);
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_33;
      }

      v32[2] = v36;
LABEL_4:
      v63 = v32;
      v20 += v21;
      --v19;
    }

    while (v19);
  }

  v37 = v54;
  if (v54 != 2)
  {
    v14 = v55;
LABEL_31:
    sub_1C1E28F4C(v14, &v63, v37 & 1, v53 & 1);
    v46 = v45;

    return v46;
  }

  v14 = v55;
  if (v55 >> 62)
  {
    goto LABEL_34;
  }

  v38 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
  v40 = v51;
  v39 = v52;
  v41 = v50;
  if (!v38)
  {
    v43 = *MEMORY[0x1E69920D0];
    (*(v51 + 104))(v50, *MEMORY[0x1E69920D0], v52);
LABEL_26:
    v44 = (*(v40 + 88))(v41, v39);
    if (v44 != v43)
    {
      if (v44 == *MEMORY[0x1E69920D8])
      {
        v37 = 1;
        goto LABEL_31;
      }

      (*(v40 + 8))(v41, v39);
    }

    v37 = 0;
    goto LABEL_31;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C6910730](0, v14);
    goto LABEL_23;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_23:
    v42 = v49;
    sub_1C1E53C6C();

    (*(v40 + 32))(v41, v42, v39);
    v43 = *MEMORY[0x1E69920D0];
    goto LABEL_26;
  }

  __break(1u);
LABEL_37:
  result = sub_1C1E54D4C();
  __break(1u);
  return result;
}

uint64_t sub_1C1E36158()
{
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  if (*(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E520AC();

    sub_1C1E33630();
  }

  swift_getKeyPath();
  sub_1C1E520BC();

  return *(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);
}

uint64_t sub_1C1E3637C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1E2A918();
  *a1 = result;
  return result;
}

void (*sub_1C1E363C0(uint64_t a1, uint64_t a2))(_BYTE *, void)
{
  v3 = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  swift_weakInit();
  sub_1C1E520EC();
  *(v3 + 16) = a1;

  result = sub_1C1E53C0C();
  if (!__OFADD__(*v7, 1))
  {
    ++*v7;
    result(v10, 0);
    swift_beginAccess();
    if (*(v3 + 24))
    {
      if (a2)
      {

        v8 = sub_1C1E5354C();

        if (v8)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      if (!a2)
      {
LABEL_9:
        sub_1C1E29AE8(a2);
        goto LABEL_10;
      }
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression, &protocol conformance descriptor for CalculateGraphExpression);
    sub_1C1E520AC();

LABEL_10:
    sub_1C1E5209C();
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1E365DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D638;
  if (!qword_1EBF1D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D638);
  }

  return result;
}

unint64_t sub_1C1E36630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D640;
  if (!qword_1EBF1D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D640);
  }

  return result;
}

unint64_t sub_1C1E36684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D648;
  if (!qword_1EBF1D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D648);
  }

  return result;
}

unint64_t sub_1C1E36758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D678;
  if (!qword_1EBF1D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D678);
  }

  return result;
}

unint64_t sub_1C1E367C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D690;
  if (!qword_1EBF1D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D690);
  }

  return result;
}

unint64_t sub_1C1E3681C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D698;
  if (!qword_1EBF1D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D698);
  }

  return result;
}

unint64_t sub_1C1E36870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D6A8;
  if (!qword_1EBF1D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D6A8);
  }

  return result;
}

unint64_t sub_1C1E368C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D6B8;
  if (!qword_1EBF1D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D6B8);
  }

  return result;
}

uint64_t sub_1C1E36918(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D3F0, &qword_1C1E58AB8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1E36984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D6C8;
  if (!qword_1EBF1D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D6C8);
  }

  return result;
}

uint64_t sub_1C1E369D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079546870617267 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C1E54D2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F427369784178 && a2 == 0xEB0000000073646ELL || (sub_1C1E54D2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F427369784179 && a2 == 0xEB0000000073646ELL || (sub_1C1E54D2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F42736978417ALL && a2 == 0xEB0000000073646ELL || (sub_1C1E54D2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1702063984 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1C1E54D2C();

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

void (*sub_1C1E36B84(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11))(char *, char *, uint64_t)
{
  v12 = v11;
  v87 = a5;
  v88 = sub_1C1E5232C();
  v91 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v89 = &v83 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v83 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v90 = &v83 - v30;
  v31 = sub_1C1E53B6C();
  v84 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a2;
  v36 = *a3;
  v35 = *(a3 + 8);
  LODWORD(v85) = *(a3 + 16);
  sub_1C1E51F8C();
  v37 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions;
  v38 = MEMORY[0x1E69E7CC0];
  *(v12 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions) = MEMORY[0x1E69E7CC0];
  *(v12 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors) = sub_1C1DF7B9C(v38);
  *(v12 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate) = 1;
  *(v12 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType) = 0;
  v39 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation;
  *(v12 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation) = 0;
  *(v12 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__bounds) = 0;
  sub_1C1E520EC();

  *(v12 + v37) = a1;

  *(v12 + v39) = a4;
  if (a1 >> 62)
  {
    result = sub_1C1E54ACC();
    if (!result)
    {
      goto LABEL_11;
    }

LABEL_3:
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6910730](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }
    }

    sub_1C1E53C6C();

    v41 = v84;
    v42 = (*(v84 + 88))(v33, v31);
    if (v42 != *MEMORY[0x1E69920D0])
    {
      if (v42 == *MEMORY[0x1E69920D8])
      {
        v34 = 1;
        goto LABEL_11;
      }

      (*(v41 + 8))(v33, v31);
    }

    v34 = 0;
    goto LABEL_11;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    goto LABEL_3;
  }

LABEL_11:
  *(v12 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType) = v34;
  if (v85)
  {
    sub_1C1E5231C();
  }

  else
  {
    SPAngleMakeWithDegrees(v36);
    SPAngleMakeWithDegrees(v35);
    sub_1C1E522FC();
  }

  v43 = v91;
  v83 = *(v91 + 32);
  v44 = v90;
  v45 = v28;
  v46 = v88;
  v83(v90, v45, v88);
  v93[0] = 2;
  v47 = MEMORY[0x1E69E7CC0];
  v84 = sub_1C1E35BDC(a1, MEMORY[0x1E69E7CC0], v93, 0);

  v85 = *(v43 + 16);
  v85(v89, v44, v46);
  type metadata accessor for GraphViewModel(0);
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  sub_1C1E51F3C();
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX) = 0;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY) = 0;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ) = 0;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX) = 0x4008000000000000;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY) = 0x4008000000000000;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakZ) = 0x4008000000000000;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = 0;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom) = 0x3FF0000000000000;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX) = 0;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY) = 0;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ) = 0;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio) = 0x3FE0000000000000;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioY) = 0x3FE0000000000000;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioZ) = 0x3FE0000000000000;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX) = 0x4008000000000000;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY) = 0x4008000000000000;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ) = 0x4008000000000000;
  v49 = v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__plotRect;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 1;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter) = 0;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes) = 0;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin) = 0;
  v50 = v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_xDragStartPlottable;
  *v50 = 0;
  *(v50 + 8) = 1;
  v51 = v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_yDragStartPlottable;
  *v51 = 0;
  *(v51 + 8) = 1;
  v52 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_lock;
  *(v48 + v52) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v53 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock;
  *(v48 + v53) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions) = v47;
  v54 = (v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel);
  *v54 = 0;
  v54[1] = 0;
  v55 = (v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel);
  *v55 = 0;
  v55[1] = 0;
  v56 = (v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel);
  *v56 = 0;
  v56[1] = 0;
  v57 = v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  *v57 = 0;
  *(v57 + 8) = 0;
  *(v57 + 16) = 1;
  v58 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartProxy;
  v59 = sub_1C1E522DC();
  (*(*(v59 - 8) + 56))(v48 + v58, 1, 1, v59);
  v60 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__selectedFunctionID3D;
  v61 = sub_1C1E51F9C();
  (*(*(v61 - 8) + 56))(v48 + v60, 1, 1, v61);
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_baseAxesIntervals) = &unk_1F41870E8;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction) = 0;
  v62 = v86;
  sub_1C1E5231C();
  v63 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  v64 = v83;
  v83((v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose), v62, v46);
  sub_1C1E520EC();
  v65 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;

  *(v48 + v65) = v84;
  v66 = (v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  *v66 = a6;
  v66[1] = a7;
  v67 = (v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  *v67 = a8;
  v67[1] = a9;
  v68 = (v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  *v68 = a10;
  v68[1] = a11;
  v69 = v89;
  v85(v62, v89, v46);
  v70 = *(v91 + 8);
  v70(v48 + v63, v46);
  v64(v48 + v63, v62, v46);
  *(v48 + 17) = v87 & 1;
  *(v48 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType) = 1;
  v71 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  *(v48 + v71) = (a6 + a7) * 0.5;
  v72 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  *(v48 + v72) = (a8 + a9) * 0.5;
  v73 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  *(v48 + v73) = (a10 + a11) * 0.5;
  v74 = sqrt(a7 - a6);
  v75 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  swift_beginAccess();
  *(v48 + v75) = v74;
  v76 = sqrt(a9 - a8);
  v77 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  swift_beginAccess();
  *(v48 + v77) = v76;
  v78 = sqrt(a11 - a10);
  v79 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  swift_beginAccess();
  *(v48 + v79) = v78;
  sub_1C1E1A2C0();
  v70(v69, v46);
  *(v12 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel) = v48;
  type metadata accessor for CalculateGraph.Bounds();
  swift_allocObject();

  v81 = sub_1C1E03FC4(v80);

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v83 - 2) = v12;
  *(&v83 - 1) = v81;
  v92 = v12;
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520AC();

  sub_1C1E3205C(MEMORY[0x1E69E7CC0]);

  v70(v90, v46);
  return v12;
}

unint64_t sub_1C1E376A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D6D0;
  if (!qword_1EBF1D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D6D0);
  }

  return result;
}

uint64_t sub_1C1E37714(uint64_t a1)
{
  result = sub_1C1E520FC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1C1E38018(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[81])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C1E3805C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalculateGraph.ViewState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CalculateGraph.ViewState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1E3825C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D6D8;
  if (!qword_1EBF1D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D6D8);
  }

  return result;
}

unint64_t sub_1C1E382B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D6E0;
  if (!qword_1EBF1D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D6E0);
  }

  return result;
}

unint64_t sub_1C1E3830C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D6E8;
  if (!qword_1EBF1D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D6E8);
  }

  return result;
}

unint64_t sub_1C1E38364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D6F0;
  if (!qword_1EBF1D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D6F0);
  }

  return result;
}

unint64_t sub_1C1E383BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D6F8;
  if (!qword_1EBF1D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D6F8);
  }

  return result;
}

unint64_t sub_1C1E38414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D700;
  if (!qword_1EBF1D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D700);
  }

  return result;
}

unint64_t sub_1C1E3846C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D708;
  if (!qword_1EBF1D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D708);
  }

  return result;
}

unint64_t sub_1C1E384C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D710;
  if (!qword_1EBF1D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D710);
  }

  return result;
}

unint64_t sub_1C1E3851C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D718;
  if (!qword_1EBF1D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D718);
  }

  return result;
}

unint64_t sub_1C1E38574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D720;
  if (!qword_1EBF1D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D720);
  }

  return result;
}

unint64_t sub_1C1E385CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D728;
  if (!qword_1EBF1D728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D728);
  }

  return result;
}

unint64_t sub_1C1E38624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D730;
  if (!qword_1EBF1D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D730);
  }

  return result;
}

unint64_t sub_1C1E3867C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D738;
  if (!qword_1EBF1D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D738);
  }

  return result;
}

uint64_t sub_1C1E386D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_1C1E3872C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D740;
  if (!qword_1EBF1D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D740);
  }

  return result;
}

void sub_1C1E38780()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel) = *(v0 + 24);
}

uint64_t sub_1C1E387F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D750, &qword_1C1E5A0E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E388C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Function(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C1E38934()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__bounds) = *(v0 + 24);
}

void sub_1C1E38978()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);
  *(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions) = *(v0 + 24);

  sub_1C1E2BD04(v2);
}

double (*sub_1C1E389F4())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C1E38A4C;
}

uint64_t CalculateExpressionTypesetImage(expression:fontSize:)(uint64_t a1, double a2)
{
  v4 = sub_1C1E53D7C();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 formattedResult];

    v7 = sub_1C1E545FC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = _s11CalculateUI0A22ExpressionTypesetImage10expression6result10showResult8fontSize05SwiftB00E0V0A00aC0C_SSSgSb12CoreGraphics7CGFloatVtF_0(a1, v7, v9, 1, a2);

  return v10;
}

uint64_t _s11CalculateUI0A22ExpressionTypesetImage10expression6result10showResult8fontSize05SwiftB00E0V0A00aC0C_SSSgSb12CoreGraphics7CGFloatVtF_0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v9 = a3;
  if (!a3)
  {
    v10 = sub_1C1E53D7C();
    if (v10)
    {
      v11 = v10;
      v12 = [v10 formattedResult];

      a2 = sub_1C1E545FC();
      v9 = v13;
    }

    else
    {
      a2 = 0;
      v9 = 0;
    }
  }

  LOBYTE(v21) = 1;
  LOBYTE(v18) = a4 & 1;
  LOBYTE(v19) = sub_1C1E5300C();
  LOBYTE(v20) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D768, &qword_1C1E5A0F8);
  sub_1C1E5289C();
  v14 = objc_opt_self();

  v15 = [v14 mainScreen];
  [v15 scale];

  sub_1C1E5288C();

  result = sub_1C1E5287C();
  if (result)
  {
    v17 = sub_1C1E5369C();

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for TypesetCanvasView(uint64_t a1)
{
  result = qword_1EBF1D770;
  if (!qword_1EBF1D770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1E38E30(uint64_t a1)
{
  result = sub_1C1E5226C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C1E38EC0(void *a1, double a2, double a3)
{
  v4 = sub_1C1E521BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  sub_1C1E521AC();
  sub_1C1E5221C();
  sub_1C1E5220C();
  sub_1C1E5224C();
  sub_1C1E521CC();
  return (*(v5 + 8))(v7, v4);
}

double sub_1C1E38FE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C1E52C1C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C1E13EE8(v2, v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_1C1E13E84(v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  (*(v6 + 104))(v8, *MEMORY[0x1E697F3A0], v5);
  sub_1C1E5374C();
  sub_1C1E5219C();
  CGRectGetWidth(v19);
  sub_1C1E5219C();
  CGRectGetHeight(v20);
  sub_1C1E538DC();
  sub_1C1E5281C();
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D780, &qword_1C1E5A168) + 36));
  v15 = v17[1];
  *v14 = v17[0];
  v14[1] = v15;
  result = *&v18;
  v14[2] = v18;
  return result;
}

unint64_t sub_1C1E392D0()
{
  result = qword_1EBF1D788;
  if (!qword_1EBF1D788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D780, &qword_1C1E5A168);
    sub_1C1E3935C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D788);
  }

  return result;
}

unint64_t sub_1C1E3935C()
{
  result = qword_1EBF1D790;
  if (!qword_1EBF1D790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D798, &unk_1C1E5A170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D790);
  }

  return result;
}

uint64_t sub_1C1E393C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C1E3941C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1C1E394A8@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D7A0, &qword_1C1E5A268);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D7A8, &qword_1C1E5A270);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = *v1;
  if (*(v1 + 16))
  {
    *v4 = sub_1C1E52CAC();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v9 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D7B0, &qword_1C1E5A278) + 44)];
    v10 = sub_1C1E538FC();
    v11 = *(v1 + 48) / 18.0;
    *v9 = v10;
    *(v9 + 1) = v12;
    *(v9 + 2) = round(v11 * 10.0);
    v9[24] = 0;
    *(v9 + 4) = round(v11 * 5.0);
    v9[40] = 0;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D7B8, &qword_1C1E5A280);
    sub_1C1E39B18(v8, v1, &v9[*(v13 + 44)]);
    sub_1C1E538FC();
    sub_1C1E5281C();
    v14 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D7C0, &qword_1C1E5A288) + 36)];
    v15 = v54;
    *v14 = v53;
    *(v14 + 1) = v15;
    *(v14 + 2) = v55;
    *&v4[*(v2 + 36)] = 257;
    sub_1C1DC1424(v4, v7, &qword_1EBF1D7A0, &qword_1C1E5A268);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D7C8, &qword_1C1E5A290);
    sub_1C1DC1124(&qword_1EBF1D7D0, &qword_1EBF1D7C8, &qword_1C1E5A290, MEMORY[0x1E69817F8]);
    sub_1C1E3A19C();
    sub_1C1E52CEC();
    return sub_1C1DC1870(v4, &qword_1EBF1D7A0, &qword_1C1E5A268);
  }

  else
  {
    v17 = *(v1 + 8);
    v18 = round(*(v1 + 48) / 18.0 * 7.0);
    v26 = sub_1C1E52C0C();
    v41 = 0;
    sub_1C1E39984(v8, v17, v1, &v29);
    v50 = v37;
    v51 = v38;
    v46 = v33;
    v47 = v34;
    v48 = v35;
    v49 = v36;
    v42 = v29;
    v43 = v30;
    v44 = v31;
    v45 = v32;
    v61 = v37;
    v62 = v38;
    v57 = v33;
    v58 = v34;
    v59 = v35;
    v60 = v36;
    v53 = v29;
    v54 = v30;
    v52 = v39;
    v63 = v39;
    v55 = v31;
    v56 = v32;
    sub_1C1DC1424(&v42, &v28, &qword_1EBF1D7F8, &qword_1C1E5A2A0);
    sub_1C1DC1870(&v53, &qword_1EBF1D7F8, &qword_1C1E5A2A0);
    *(&v40[7] + 7) = v49;
    *(&v40[8] + 7) = v50;
    *(&v40[9] + 7) = v51;
    *(&v40[3] + 7) = v45;
    *(&v40[4] + 7) = v46;
    *(&v40[10] + 7) = v52;
    *(&v40[5] + 7) = v47;
    *(&v40[6] + 7) = v48;
    *(v40 + 7) = v42;
    *(&v40[1] + 7) = v43;
    *(&v40[2] + 7) = v44;
    *(v7 + 1) = v18;
    v19 = v40[6];
    *(v7 + 129) = v40[7];
    v20 = v40[9];
    *(v7 + 145) = v40[8];
    *(v7 + 161) = v20;
    *(v7 + 11) = *(&v40[9] + 15);
    v21 = v40[2];
    *(v7 + 65) = v40[3];
    v22 = v40[5];
    *(v7 + 81) = v40[4];
    *(v7 + 97) = v22;
    *(v7 + 113) = v19;
    v23 = v40[1];
    *(v7 + 17) = v40[0];
    v24 = v41;
    *v7 = v26;
    v7[16] = v24;
    *(v7 + 33) = v23;
    *(v7 + 49) = v21;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D7C8, &qword_1C1E5A290);
    sub_1C1DC1124(&qword_1EBF1D7D0, &qword_1EBF1D7C8, &qword_1C1E5A290, MEMORY[0x1E69817F8]);
    sub_1C1E3A19C();
    return sub_1C1E52CEC();
  }
}

void sub_1C1E39984(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 48);

  if ((*(a3 + 40) & 1) == 0)
  {
    v15 = 0;
    v14 = 0;
    v11 = 0;
    v9 = 0;
LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  v9 = *(a3 + 32);
  if (!v9)
  {
    v15 = 0;
    v14 = 0;
    v11 = 0;
    goto LABEL_6;
  }

  v10 = *(a3 + 24);

  v11 = sub_1C1E09E10(v10, v9);
  v9 = v12;
  swift_bridgeObjectRelease_n();
  v13 = v8;
  v14 = 0xE100000000000000;
  v15 = 61;
LABEL_7:
  *&v21 = v15;
  *(&v21 + 1) = v14;
  v22 = 0uLL;
  *&v23 = 0;
  *(&v23 + 1) = v13;
  *&v24 = 0;
  *(&v24 + 1) = v11;
  v25 = v9;
  v26 = 0uLL;
  v27 = v13;
  *(a4 + 40) = v8;
  v16 = v24;
  *(a4 + 88) = v23;
  v17 = v22;
  *(a4 + 56) = v21;
  v18 = v26;
  *(a4 + 152) = v27;
  v19 = v25;
  *(a4 + 136) = v18;
  *(a4 + 120) = v19;
  *(a4 + 104) = v16;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 48) = 0;
  *(a4 + 72) = v17;
  v28[0] = v15;
  v28[1] = v14;
  memset(&v28[2], 0, 24);
  v28[5] = v13;
  v28[6] = 0;
  v28[7] = v11;
  v28[8] = v9;
  memset(&v28[9], 0, 24);
  v28[12] = v13;
  v28[13] = 0;

  sub_1C1DC1424(&v21, &v20, &qword_1EBF1D800, &qword_1C1E5A2A8);
  sub_1C1DC1870(v28, &qword_1EBF1D800, &qword_1C1E5A2A8);
}

uint64_t sub_1C1E39B18@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D808, &unk_1C1E5A2B0);
  v54 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  *&v58 = a1;
  v10 = *a2;
  v73 = *(a2 + 16);
  v71 = *(a2 + 24);
  v72 = v10;
  v11 = swift_allocObject();
  v12 = a2[1];
  *(v11 + 16) = *a2;
  *(v11 + 32) = v12;
  *(v11 + 48) = a2[2];
  *(v11 + 64) = *(a2 + 6);

  sub_1C1E3A380(&v72, v65);
  sub_1C1DC1424(&v71, v65, &qword_1EBF1C840, &qword_1C1E571F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D810, &qword_1C1E5A2C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D818, &qword_1C1E5A2C8);
  sub_1C1DC1124(&qword_1EBF1D820, &qword_1EBF1D810, &qword_1C1E5A2C0, MEMORY[0x1E69E6338]);
  v13 = sub_1C1E3A3DC();
  sub_1C1E3A494(v13, v14, v15);
  v16 = v9;
  sub_1C1E5380C();
  if ((*(a2 + 40) & 1) != 0 && (v17 = *(&v71 + 1)) != 0)
  {
    v18 = v71;
    v19 = *(a2 + 6);
    v20 = [objc_opt_self() labelColor];
    v21 = [v20 CGColor];

    v52 = sub_1C1E5351C();
    sub_1C1E538DC();
    sub_1C1E5281C();
    v56 = v65[14];
    v22 = v66;
    LOBYTE(v20) = v68;
    v50 = v69;
    v51 = v67;
    v49 = v70;
    v48 = sub_1C1E09E10(v18, v17);
    v55 = v23;

    LOBYTE(v65[0]) = v22;
    LOBYTE(v58) = v20;
    v24 = v22;
    v25 = v20;

    v47 = v19;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v55 = 0;
    v56 = 0;
    v49 = 0;
    v50 = 0;
    v47 = 0;
    v48 = 0;
    v25 = 0;
    v24 = 0;
  }

  v44 = v25;
  v45 = v24;
  v26 = v54;
  v27 = *(v54 + 16);
  v28 = v57;
  v46 = v16;
  v27(v57, v16, v5);
  v29 = v53;
  v27(v53, v28, v5);
  v30 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D848, &qword_1C1E5A2D8) + 48));
  v31 = v51;
  v32 = v52;
  *&v58 = v52;
  *(&v58 + 1) = v56;
  *&v59 = v24;
  *(&v59 + 1) = v51;
  v33 = v49;
  v34 = v50;
  *&v60 = v25;
  *(&v60 + 1) = v50;
  v35 = v47;
  v36 = v48;
  *&v61 = v49;
  *(&v61 + 1) = v48;
  v62 = v55;
  v63 = 0uLL;
  v64 = v47;
  v37 = v59;
  *v30 = v58;
  v30[1] = v37;
  v38 = v60;
  v39 = v61;
  v40 = v64;
  v30[5] = v63;
  v30[6] = v40;
  v41 = v62;
  v30[3] = v39;
  v30[4] = v41;
  v30[2] = v38;
  sub_1C1DC1424(&v58, v65, &qword_1EBF1D850, &unk_1C1E5A2E0);
  v42 = *(v26 + 8);
  v42(v46, v5);
  v65[0] = v32;
  v65[1] = v56;
  v65[2] = v45;
  v65[3] = v31;
  v65[4] = v44;
  v65[5] = v34;
  v65[6] = v33;
  v65[7] = v36;
  v65[8] = v55;
  memset(&v65[9], 0, 24);
  v65[12] = v35;
  v65[13] = 0;
  sub_1C1DC1870(v65, &qword_1EBF1D850, &unk_1C1E5A2E0);
  return (v42)(v57, v5);
}

uint64_t sub_1C1E39FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v17 = *(a1 + 32);
  v5 = *(a2 + 48);
  v16 = *(a1 + 48);
  v6 = v16;
  v7 = v17;
  sub_1C1E0839C(&v17, &v31);
  sub_1C1DC1424(&v16, &v31, &qword_1EBF1D260, &qword_1C1E58658);

  v8 = sub_1C1E52C9C();
  v15 = *(a1 + 16);
  v9 = v15;
  sub_1C1E0839C(&v15, &v31);

  v10 = sub_1C1E52CAC();
  v18[0] = v7;
  v18[1] = 0uLL;
  LOBYTE(v19) = 0;
  *(&v19 + 1) = v5;
  *&v20 = v6;
  *(&v20 + 1) = v8;
  v21[0] = v9;
  v21[1] = 0uLL;
  LOBYTE(v22) = 0;
  *(&v22 + 1) = v5;
  *&v23 = 0;
  *(&v23 + 1) = v10;
  v13 = v22;
  v14 = v23;
  v11 = v20;
  a3[2] = v19;
  a3[3] = v11;
  *a3 = v7;
  a3[1] = 0uLL;
  a3[6] = v13;
  a3[7] = v14;
  a3[4] = v9;
  a3[5] = 0uLL;
  v24 = v9;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = v5;
  v29 = 0;
  v30 = v10;
  sub_1C1DC1424(v18, &v31, &qword_1EBF1D858, &qword_1C1E5A2F0);
  sub_1C1DC1424(v21, &v31, &qword_1EBF1D858, &qword_1C1E5A2F0);
  sub_1C1DC1870(&v24, &qword_1EBF1D858, &qword_1C1E5A2F0);
  v31 = v7;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = v5;
  v36 = v6;
  v37 = v8;
  return sub_1C1DC1870(&v31, &qword_1EBF1D858, &qword_1C1E5A2F0);
}

unint64_t sub_1C1E3A19C()
{
  result = qword_1EBF1D7D8;
  if (!qword_1EBF1D7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D7A0, &qword_1C1E5A268);
    sub_1C1E3A228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D7D8);
  }

  return result;
}

unint64_t sub_1C1E3A228()
{
  result = qword_1EBF1D7E0;
  if (!qword_1EBF1D7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D7C0, &qword_1C1E5A288);
    sub_1C1DC1124(&qword_1EBF1D7E8, &qword_1EBF1D7F0, &qword_1C1E5A298, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D7E0);
  }

  return result;
}

__n128 sub_1C1E3A2EC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v11[2] = *(a1 + 32);
  v12 = *(a1 + 48);
  *&v9 = 0;
  BYTE8(v9) = 1;
  sub_1C1E39FB0(v11, v2 + 16, v10);
  v5 = v10[6];
  *(a2 + 96) = v10[5];
  *(a2 + 112) = v5;
  *(a2 + 128) = v10[7];
  v6 = v10[2];
  *(a2 + 32) = v10[1];
  *(a2 + 48) = v6;
  v7 = v10[4];
  *(a2 + 64) = v10[3];
  *(a2 + 80) = v7;
  result = v10[0];
  *a2 = v9;
  *(a2 + 16) = result;
  *(a2 + 144) = 1;
  return result;
}

unint64_t sub_1C1E3A3DC()
{
  result = qword_1EBF1D828;
  if (!qword_1EBF1D828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D818, &qword_1C1E5A2C8);
    sub_1C1DC1124(&qword_1EBF1D830, &qword_1EBF1D838, &qword_1C1E5A2D0, MEMORY[0x1E697D6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D828);
  }

  return result;
}

unint64_t sub_1C1E3A494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D840;
  if (!qword_1EBF1D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D840);
  }

  return result;
}

unint64_t sub_1C1E3A4E8()
{
  result = qword_1EBF1D860;
  if (!qword_1EBF1D860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D868, &qword_1C1E5A2F8);
    sub_1C1DC1124(&qword_1EBF1D7D0, &qword_1EBF1D7C8, &qword_1C1E5A290, MEMORY[0x1E69817F8]);
    sub_1C1E3A19C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D860);
  }

  return result;
}

uint64_t sub_1C1E3A5A0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1C1E549CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_1C1E3A60C(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1C1E5398C();
}

void sub_1C1E3A7DC(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  if (v6)
  {
    v10[1] = MEMORY[0x1E69E7CC0];
    sub_1C1E54BCC();
    for (i = (a3 + 32); ; ++i)
    {
      v9 = *i;
      a1(v10, &v9);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1C1E54BAC();
      sub_1C1E54BDC();
      sub_1C1E54BEC();
      sub_1C1E54BBC();
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C1E3A8CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C1E52B7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C770, &qword_1C1E57A30);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C1DC1424(v2 + *(a1 + 40), &v15 - v10, &qword_1EBF1C770, &qword_1C1E57A30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C1E526EC();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1E5490C();
    v14 = sub_1C1E52FBC();
    sub_1C1E5227C();

    sub_1C1E52B6C();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C1E3AAD0(uint64_t a1)
{
  v3 = sub_1C1E52B7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 44);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C1E5490C();
    v9 = sub_1C1E52FBC();
    sub_1C1E5227C();

    sub_1C1E52B6C();
    swift_getAtKeyPath();
    sub_1C1DDEC6C(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1C1E3AC24(uint64_t a1)
{
  v3 = sub_1C1E52B7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 48);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C1E5490C();
    v9 = sub_1C1E52FBC();
    sub_1C1E5227C();

    sub_1C1E52B6C();
    swift_getAtKeyPath();
    sub_1C1DDEC6C(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1C1E3AD78(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D0, &qword_1C1E58BC0);
  sub_1C1E536EC();
  return v2;
}

uint64_t sub_1C1E3AE58(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D0, &qword_1C1E58BC0);
  sub_1C1E536EC();
  return v2;
}

uint64_t sub_1C1E3AF38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C1DC1424(a1, &v5 - v3, &qword_1EBF1C758, &qword_1C1E579C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DA08, &qword_1C1E5A480);
  sub_1C1E536FC();
  return sub_1C1DC1870(a1, &qword_1EBF1C758, &qword_1C1E579C0);
}

uint64_t sub_1C1E3B010(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD30, &qword_1C1E5AA20);
  sub_1C1E536EC();
  return v2;
}

__n128 sub_1C1E3B07C@<Q0>(__n128 *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD30, &qword_1C1E5AA20);
  sub_1C1E5370C();
  result = v5;
  *a2 = v4;
  a2[1] = v5;
  a2[2].n128_u8[0] = v6;
  return result;
}

uint64_t sub_1C1E3B0FC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD18, &qword_1C1E5AA08);
  sub_1C1E536EC();
  return v2;
}

__n128 sub_1C1E3B168@<Q0>(__n128 *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD18, &qword_1C1E5AA08);
  sub_1C1E5370C();
  result = v5;
  *a2 = v4;
  a2[1] = v5;
  a2[2].n128_u8[0] = v6;
  return result;
}

uint64_t sub_1C1E3B1E8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD28, &qword_1C1E5AA18);
  sub_1C1E536EC();
  return v2;
}

__n128 sub_1C1E3B260@<Q0>(__n128 *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD28, &qword_1C1E5AA18);
  sub_1C1E5370C();
  result = v5;
  *a2 = v4;
  a2[1] = v5;
  a2[2].n128_u64[0] = v6;
  a2[2].n128_u8[8] = v7;
  return result;
}

double sub_1C1E3B2F0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD20, &qword_1C1E5AA10);
  sub_1C1E536EC();
  return v2;
}

double sub_1C1E3B350(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD20, &qword_1C1E5AA10);
  sub_1C1E5370C();
  return v2;
}

double sub_1C1E3B3B4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCB0, &qword_1C1E5A8F0);
  sub_1C1E536EC();
  return v2;
}

double sub_1C1E3B478(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCC0, &unk_1C1E5A900);
  sub_1C1E536EC();
  return v2;
}

double sub_1C1E3B544(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCC0, &unk_1C1E5A900);
  sub_1C1E536EC();
  return v2;
}

uint64_t GraphView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v119 = a1;
  v2 = a1 - 8;
  v118 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v116 = v3;
  v117 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1C1E52E1C();
  MEMORY[0x1EEE9AC00](v123);
  v120 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D878, &unk_1C1E5A320);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2A0, &qword_1C1E58810);
  v110 = v5;
  v7 = *(v2 + 32);
  v135 = *(v2 + 24);
  v6 = v135;
  v136 = v7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v109 = OpaqueTypeMetadata2;
  v9 = sub_1C1E0F2FC();
  v108 = v9;
  v115 = v6;
  v135 = v6;
  v136 = v7;
  v114 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v135 = v5;
  v136 = OpaqueTypeMetadata2;
  v137 = v9;
  v138 = OpaqueTypeConformance2;
  v106 = &unk_1C1E68C54;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D880, &qword_1C1E5A340);
  v111 = sub_1C1E5299C();
  v112 = sub_1C1E549CC();
  v105 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D888, &qword_1C1E5A348);
  v104 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D890, &qword_1C1E5A350);
  v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D898, &qword_1C1E5A358);
  v102 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8A0, &qword_1C1E5A360);
  v101 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8A8, &qword_1C1E5A368);
  v100 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8B0, &qword_1C1E5A370);
  v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8B8, &qword_1C1E5A378);
  v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8C0, &qword_1C1E5A380);
  v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8C8, &qword_1C1E5A388);
  v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8D0, &qword_1C1E5A390);
  v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8D8, &qword_1C1E5A398);
  v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8E0, &qword_1C1E5A3A0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8E8, &qword_1C1E5A3A8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8F0, &unk_1C1E5A3B0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D3F0, &qword_1C1E58AB8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8F8, &qword_1C1E5A3C0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D900, &qword_1C1E5A3C8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D908, &unk_1C1E5A3D0);
  v16 = sub_1C1DC1124(&qword_1EBF1D910, &qword_1EBF1D900, &qword_1C1E5A3C8, MEMORY[0x1E695B218]);
  v17 = sub_1C1DC1124(&qword_1EBF1D918, &qword_1EBF1D908, &unk_1C1E5A3D0, MEMORY[0x1E695B440]);
  v135 = v14;
  v136 = v15;
  v137 = v16;
  v138 = v17;
  v139 = MEMORY[0x1E6981568];
  v18 = swift_getOpaqueTypeConformance2();
  v19 = sub_1C1E0FB50();
  v135 = v13;
  v136 = v12;
  v137 = v18;
  v138 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  v135 = v11;
  v136 = v12;
  v137 = v20;
  v138 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v135 = v10;
  v136 = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v135 = v94;
  v136 = v22;
  v23 = swift_getOpaqueTypeConformance2();
  v135 = v95;
  v136 = v23;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = sub_1C1E3C4FC();
  v135 = v97;
  v136 = v96;
  v137 = v24;
  v138 = v25;
  v26 = swift_getOpaqueTypeConformance2();
  v29 = sub_1C1E3C5E4(v26, v27, v28);
  v135 = v98;
  v136 = &type metadata for MagnifyRepresentable;
  v137 = v26;
  v138 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  v33 = sub_1C1E3C638(v30, v31, v32);
  v135 = v99;
  v136 = &type metadata for TwoFingerDragRepresentable;
  v137 = v30;
  v138 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  v37 = sub_1C1E3C68C(v34, v35, v36);
  v135 = v100;
  v136 = &type metadata for TapRepresentable;
  v137 = v34;
  v138 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  v41 = sub_1C1E3C6E0(v38, v39, v40);
  v135 = v101;
  v136 = &type metadata for OneFingerDragRepresentable;
  v137 = v38;
  v138 = v41;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_1C1E3C734();
  v135 = v103;
  v136 = v102;
  v137 = v42;
  v138 = v43;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = sub_1C1E4D288(&qword_1EBF1D9A0, &qword_1EBF1D890, &qword_1C1E5A350, sub_1C1E3CAA8);
  v135 = v105;
  v136 = v104;
  v137 = v44;
  v138 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  v135 = v110;
  v136 = v109;
  v137 = v108;
  v138 = OpaqueTypeConformance2;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = sub_1C1DC1124(&qword_1EBF1D998, &qword_1EBF1D880, &qword_1C1E5A340, MEMORY[0x1E69802E0]);
  v133 = v47;
  v134 = v48;
  WitnessTable = swift_getWitnessTable();
  v49 = v112;
  v50 = swift_getWitnessTable();
  v51 = v113;
  v135 = v113;
  v136 = v49;
  v52 = v49;
  v137 = v46;
  v138 = v50;
  v53 = swift_getOpaqueTypeMetadata2();
  v135 = v51;
  v136 = v52;
  v137 = v46;
  v138 = v50;
  v54 = swift_getOpaqueTypeConformance2();
  v135 = v53;
  v136 = v54;
  v55 = swift_getOpaqueTypeMetadata2();
  v135 = v53;
  v136 = v54;
  v56 = swift_getOpaqueTypeConformance2();
  v59 = sub_1C1E3CC44(v56, v57, v58);
  v135 = v55;
  v136 = &type metadata for SparklineViewAccessibilityChartDescriptorRepresentable;
  v137 = v56;
  v138 = v59;
  swift_getOpaqueTypeMetadata2();
  sub_1C1E52F2C();
  v60 = sub_1C1E5299C();
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D9F0, &qword_1C1E5A428);
  v135 = v55;
  v136 = &type metadata for SparklineViewAccessibilityChartDescriptorRepresentable;
  v137 = v56;
  v138 = v59;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = sub_1C1E4D7A4(&qword_1EBF1C690, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v130 = v62;
  v131 = v63;
  v64 = swift_getWitnessTable();
  v65 = sub_1C1DC1124(&qword_1EBF1D9F8, &qword_1EBF1D9F0, &qword_1C1E5A428, MEMORY[0x1E6981F48]);
  v135 = v60;
  v136 = v61;
  v137 = v64;
  v138 = v65;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C248, &unk_1C1E5A430);
  sub_1C1E5299C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D298, &qword_1C1E58808);
  swift_getTupleTypeMetadata2();
  sub_1C1E5397C();
  swift_getWitnessTable();
  v66 = sub_1C1E5378C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CC60, &qword_1C1E5A440);
  v110 = v66;
  v67 = sub_1C1E5299C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DA00, &qword_1C1E5A448);
  v111 = v67;
  v68 = sub_1C1E5299C();
  v69 = sub_1C1E4D7A4(qword_1EBF1D2E0, MEMORY[0x1E697C998], MEMORY[0x1E697C990]);
  v113 = v68;
  v112 = v69;
  v70 = sub_1C1E5280C();
  v71 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v93 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v93 - v75;
  v77 = *v122;
  swift_getKeyPath();
  v135 = v77;
  sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  if (!*(v77 + 16))
  {
    swift_getKeyPath();
    v124 = v77;
    sub_1C1E520BC();

    swift_beginAccess();
  }

  v78 = v120;
  sub_1C1E52E0C();
  v79 = v118;
  v80 = v117;
  v81 = v119;
  (*(v118 + 16))(v117, v122, v119);
  v82 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v83 = swift_allocObject();
  v84 = v114;
  *(v83 + 16) = v115;
  *(v83 + 24) = v84;
  (*(v79 + 32))(v83 + v82, v80, v81);
  v85 = swift_getWitnessTable();
  v86 = sub_1C1DC1124(&qword_1EBF1CC58, &qword_1EBF1CC60, &qword_1C1E5A440, MEMORY[0x1E6980468]);
  v128 = v85;
  v129 = v86;
  v87 = swift_getWitnessTable();
  v88 = sub_1C1DC1124(&qword_1EBF1DA10, &qword_1EBF1DA00, &qword_1C1E5A448, MEMORY[0x1E697DDB0]);
  v126 = v87;
  v127 = v88;
  v89 = v113;
  v90 = swift_getWitnessTable();
  sub_1C1E0EFC0(v78, sub_1C1E3DB88, v83, v123, v89, v112, v90);
  v125 = v90;
  swift_getWitnessTable();
  sub_1C1E105BC();
  v91 = *(v71 + 8);
  v91(v73, v70);
  sub_1C1E105BC();
  return (v91)(v76, v70);
}

unint64_t sub_1C1E3C4FC()
{
  result = qword_1EBF1D920;
  if (!qword_1EBF1D920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8D0, &qword_1C1E5A390);
    sub_1C1E4D7A4(&qword_1EBF1D928, MEMORY[0x1E695B190], MEMORY[0x1E695B188]);
    sub_1C1DC1124(&qword_1EBF1CD40, &qword_1EBF1CD48, &qword_1C1E57818, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D920);
  }

  return result;
}

unint64_t sub_1C1E3C5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D930;
  if (!qword_1EBF1D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D930);
  }

  return result;
}

unint64_t sub_1C1E3C638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D938;
  if (!qword_1EBF1D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D938);
  }

  return result;
}

unint64_t sub_1C1E3C68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D940;
  if (!qword_1EBF1D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D940);
  }

  return result;
}

unint64_t sub_1C1E3C6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D948;
  if (!qword_1EBF1D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D948);
  }

  return result;
}

unint64_t sub_1C1E3C734()
{
  result = qword_1EBF1D950;
  if (!qword_1EBF1D950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8A0, &qword_1C1E5A360);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D958, &unk_1C1E5A3E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C778, &qword_1C1E56FC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D960, &qword_1C1E5A3F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D968, &qword_1C1E5A3F8);
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D970, &qword_1C1E5A400);
    sub_1C1E3C958(v1, v2, v3);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1C1E3C9AC(OpaqueTypeConformance2, v5, v6);
    v7 = swift_getOpaqueTypeConformance2();
    sub_1C1E3CA00(v7, v8, v9);
    v10 = swift_getOpaqueTypeConformance2();
    sub_1C1E3CA54(v10, v11, v12);
    swift_getOpaqueTypeConformance2();
    sub_1C1E0FD50();
    swift_getOpaqueTypeConformance2();
    sub_1C1DC1124(&qword_1EBF1D998, &qword_1EBF1D880, &qword_1C1E5A340, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D950);
  }

  return result;
}

unint64_t sub_1C1E3C958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D978;
  if (!qword_1EBF1D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D978);
  }

  return result;
}

unint64_t sub_1C1E3C9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D980;
  if (!qword_1EBF1D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D980);
  }

  return result;
}

unint64_t sub_1C1E3CA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D988;
  if (!qword_1EBF1D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D988);
  }

  return result;
}

unint64_t sub_1C1E3CA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D990;
  if (!qword_1EBF1D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D990);
  }

  return result;
}

unint64_t sub_1C1E3CAA8()
{
  result = qword_1EBF1D9A8;
  if (!qword_1EBF1D9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D9B0, &qword_1C1E5A408);
    sub_1C1E3CB60();
    sub_1C1DC1124(&qword_1EBF1D9D8, &qword_1EBF1D9E0, &qword_1C1E5A420, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D9A8);
  }

  return result;
}

unint64_t sub_1C1E3CB60()
{
  result = qword_1EBF1D9B8;
  if (!qword_1EBF1D9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D9C0, &qword_1C1E5A410);
    sub_1C1DC1124(&qword_1EBF1D9C8, &qword_1EBF1D9D0, &qword_1C1E5A418, MEMORY[0x1E6981880]);
    sub_1C1DC1124(&qword_1EBF1D9D8, &qword_1EBF1D9E0, &qword_1C1E5A420, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D9B8);
  }

  return result;
}

unint64_t sub_1C1E3CC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D9E8;
  if (!qword_1EBF1D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D9E8);
  }

  return result;
}

uint64_t sub_1C1E3CC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X8>)
{
  v116 = a4;
  v115 = a3;
  v117 = a2;
  v118 = a1;
  v121 = a5;
  v120 = sub_1C1E529CC();
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D878, &unk_1C1E5A320);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2A0, &qword_1C1E58810);
  v111 = v8;
  v135 = a3;
  v136 = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v110 = OpaqueTypeMetadata2;
  v10 = sub_1C1E0F2FC();
  v109 = v10;
  v135 = a3;
  v136 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v135 = v8;
  v136 = OpaqueTypeMetadata2;
  v137 = v10;
  v138 = OpaqueTypeConformance2;
  v107 = &unk_1C1E68C54;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D880, &qword_1C1E5A340);
  v112 = sub_1C1E5299C();
  v113 = sub_1C1E549CC();
  v106 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D888, &qword_1C1E5A348);
  v105 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D890, &qword_1C1E5A350);
  v104 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D898, &qword_1C1E5A358);
  v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8A0, &qword_1C1E5A360);
  v102 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8A8, &qword_1C1E5A368);
  v101 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8B0, &qword_1C1E5A370);
  v100 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8B8, &qword_1C1E5A378);
  v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8C0, &qword_1C1E5A380);
  v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8C8, &qword_1C1E5A388);
  v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8D0, &qword_1C1E5A390);
  v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8D8, &qword_1C1E5A398);
  v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8E0, &qword_1C1E5A3A0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8E8, &qword_1C1E5A3A8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8F0, &unk_1C1E5A3B0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D3F0, &qword_1C1E58AB8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8F8, &qword_1C1E5A3C0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D900, &qword_1C1E5A3C8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D908, &unk_1C1E5A3D0);
  v17 = sub_1C1DC1124(&qword_1EBF1D910, &qword_1EBF1D900, &qword_1C1E5A3C8, MEMORY[0x1E695B218]);
  v18 = sub_1C1DC1124(&qword_1EBF1D918, &qword_1EBF1D908, &unk_1C1E5A3D0, MEMORY[0x1E695B440]);
  v135 = v15;
  v136 = v16;
  v137 = v17;
  v138 = v18;
  v139 = MEMORY[0x1E6981568];
  v19 = swift_getOpaqueTypeConformance2();
  v20 = sub_1C1E0FB50();
  v135 = v14;
  v136 = v13;
  v137 = v19;
  v138 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v135 = v12;
  v136 = v13;
  v137 = v21;
  v138 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v135 = v11;
  v136 = v22;
  v23 = swift_getOpaqueTypeConformance2();
  v135 = v95;
  v136 = v23;
  v24 = swift_getOpaqueTypeConformance2();
  v135 = v96;
  v136 = v24;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = sub_1C1E3C4FC();
  v135 = v98;
  v136 = v97;
  v137 = v25;
  v138 = v26;
  v27 = swift_getOpaqueTypeConformance2();
  v30 = sub_1C1E3C5E4(v27, v28, v29);
  v135 = v99;
  v136 = &type metadata for MagnifyRepresentable;
  v137 = v27;
  v138 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v34 = sub_1C1E3C638(v31, v32, v33);
  v135 = v100;
  v136 = &type metadata for TwoFingerDragRepresentable;
  v137 = v31;
  v138 = v34;
  v35 = swift_getOpaqueTypeConformance2();
  v38 = sub_1C1E3C68C(v35, v36, v37);
  v135 = v101;
  v136 = &type metadata for TapRepresentable;
  v137 = v35;
  v138 = v38;
  v39 = swift_getOpaqueTypeConformance2();
  v42 = sub_1C1E3C6E0(v39, v40, v41);
  v135 = v102;
  v136 = &type metadata for OneFingerDragRepresentable;
  v137 = v39;
  v138 = v42;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = sub_1C1E3C734();
  v135 = v104;
  v136 = v103;
  v137 = v43;
  v138 = v44;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = sub_1C1E4D288(&qword_1EBF1D9A0, &qword_1EBF1D890, &qword_1C1E5A350, sub_1C1E3CAA8);
  v135 = v106;
  v136 = v105;
  v137 = v45;
  v138 = v46;
  v47 = swift_getOpaqueTypeConformance2();
  v135 = v111;
  v136 = v110;
  v137 = v109;
  v138 = OpaqueTypeConformance2;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = sub_1C1DC1124(&qword_1EBF1D998, &qword_1EBF1D880, &qword_1C1E5A340, MEMORY[0x1E69802E0]);
  v133 = v48;
  v134 = v49;
  WitnessTable = swift_getWitnessTable();
  v50 = v113;
  v51 = swift_getWitnessTable();
  v52 = v114;
  v135 = v114;
  v136 = v50;
  v53 = v50;
  v137 = v47;
  v138 = v51;
  v54 = swift_getOpaqueTypeMetadata2();
  v135 = v52;
  v136 = v53;
  v137 = v47;
  v138 = v51;
  v55 = swift_getOpaqueTypeConformance2();
  v135 = v54;
  v136 = v55;
  v56 = swift_getOpaqueTypeMetadata2();
  v135 = v54;
  v136 = v55;
  v57 = swift_getOpaqueTypeConformance2();
  v60 = sub_1C1E3CC44(v57, v58, v59);
  v135 = v56;
  v136 = &type metadata for SparklineViewAccessibilityChartDescriptorRepresentable;
  v137 = v57;
  v138 = v60;
  swift_getOpaqueTypeMetadata2();
  sub_1C1E52F2C();
  v61 = sub_1C1E5299C();
  v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D9F0, &qword_1C1E5A428);
  v135 = v56;
  v136 = &type metadata for SparklineViewAccessibilityChartDescriptorRepresentable;
  v137 = v57;
  v138 = v60;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = sub_1C1E4D7A4(&qword_1EBF1C690, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v130 = v63;
  v131 = v64;
  v65 = swift_getWitnessTable();
  v66 = sub_1C1DC1124(&qword_1EBF1D9F8, &qword_1EBF1D9F0, &qword_1C1E5A428, MEMORY[0x1E6981F48]);
  v135 = v61;
  v136 = v62;
  v137 = v65;
  v138 = v66;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C248, &unk_1C1E5A430);
  sub_1C1E5299C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D298, &qword_1C1E58808);
  swift_getTupleTypeMetadata2();
  sub_1C1E5397C();
  swift_getWitnessTable();
  v67 = sub_1C1E5378C();
  v112 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v94 - v68;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CC60, &qword_1C1E5A440);
  v70 = sub_1C1E5299C();
  v113 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v94 - v71;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DA00, &qword_1C1E5A448);
  v73 = sub_1C1E5299C();
  v114 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v94 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v94 - v77;
  sub_1C1E5389C();
  v122 = v115;
  v123 = v116;
  v124 = v117;
  v125 = v118;
  sub_1C1E5377C();
  if (qword_1EBF1C120 != -1)
  {
    swift_once();
  }

  v135 = qword_1EBF20D10;

  sub_1C1E5300C();
  v79 = swift_getWitnessTable();
  sub_1C1E532CC();

  (*(v112 + 8))(v69, v67);
  v80 = *(v120 + 20);
  v81 = *MEMORY[0x1E697F468];
  v82 = sub_1C1E52C8C();
  v83 = v119;
  (*(*(v82 - 8) + 104))(&v119[v80], v81, v82);
  __asm { FMOV            V0.2D, #8.0 }

  *v83 = _Q0;
  v89 = sub_1C1DC1124(&qword_1EBF1CC58, &qword_1EBF1CC60, &qword_1C1E5A440, MEMORY[0x1E6980468]);
  v128 = v79;
  v129 = v89;
  v90 = swift_getWitnessTable();
  sub_1C1E4D7A4(&qword_1EBF1DC00, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  sub_1C1E534DC();
  sub_1C1E4E154(v83, MEMORY[0x1E697EAF0]);
  (*(v113 + 8))(v72, v70);
  v91 = sub_1C1DC1124(&qword_1EBF1DA10, &qword_1EBF1DA00, &qword_1C1E5A448, MEMORY[0x1E697DDB0]);
  v126 = v90;
  v127 = v91;
  swift_getWitnessTable();
  sub_1C1E105BC();
  v92 = *(v114 + 8);
  v92(v75, v73);
  sub_1C1E105BC();
  return (v92)(v78, v73);
}

uint64_t sub_1C1E3DBE4@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v321 = a2;
  v359 = a1;
  v331 = a5;
  v8 = sub_1C1E5353C();
  v237 = *(v8 - 8);
  v238 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v236 = &v230 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1E52E7C();
  v234 = *(v10 - 8);
  v235 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v233 = &v230 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D378, &qword_1C1E58A48);
  MEMORY[0x1EEE9AC00](v231);
  v232 = &v230 - v12;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D380, &unk_1C1E5A730);
  MEMORY[0x1EEE9AC00](v240);
  v239 = &v230 - v13;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D298, &qword_1C1E58808);
  MEMORY[0x1EEE9AC00](v329);
  v330 = &v230 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v335 = &v230 - v16;
  v328 = sub_1C1E5296C();
  v327 = *(v328 - 8);
  MEMORY[0x1EEE9AC00](v328);
  v326 = &v230 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = sub_1C1E52E5C();
  v324 = *(v325 - 8);
  MEMORY[0x1EEE9AC00](v325);
  v323 = &v230 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v356 = type metadata accessor for GraphView(0, a3, a4, v19);
  v354 = *(v356 - 8);
  v355 = *(v354 + 64);
  MEMORY[0x1EEE9AC00](v356);
  v334 = &v230 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D390, &qword_1C1E58A58);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v315 = &v230 - v22;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D900, &qword_1C1E5A3C8);
  v305 = *(v337 - 8);
  MEMORY[0x1EEE9AC00](v337);
  v294 = &v230 - v23;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8F8, &qword_1C1E5A3C0);
  v311 = *(v345 - 8);
  MEMORY[0x1EEE9AC00](v345);
  v306 = &v230 - v24;
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8F0, &unk_1C1E5A3B0);
  v314 = *(v352 - 1);
  MEMORY[0x1EEE9AC00](v352);
  v310 = &v230 - v25;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8E8, &qword_1C1E5A3A8);
  v309 = *(v344 - 8);
  MEMORY[0x1EEE9AC00](v344);
  v304 = &v230 - v26;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8E0, &qword_1C1E5A3A0);
  v303 = *(v342 - 8);
  MEMORY[0x1EEE9AC00](v342);
  v300 = &v230 - v27;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8D8, &qword_1C1E5A398);
  v299 = *(v340 - 8);
  MEMORY[0x1EEE9AC00](v340);
  v296 = &v230 - v28;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8C8, &qword_1C1E5A388);
  v297 = *(v339 - 8);
  MEMORY[0x1EEE9AC00](v339);
  v295 = &v230 - v29;
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8C0, &qword_1C1E5A380);
  v301 = *(v341 - 8);
  MEMORY[0x1EEE9AC00](v341);
  v298 = &v230 - v30;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8B8, &qword_1C1E5A378);
  v308 = *(v343 - 8);
  MEMORY[0x1EEE9AC00](v343);
  v302 = &v230 - v31;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8B0, &qword_1C1E5A370);
  v313 = *(v346 - 8);
  MEMORY[0x1EEE9AC00](v346);
  v307 = &v230 - v32;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8A8, &qword_1C1E5A368);
  v317 = *(v353 - 1);
  MEMORY[0x1EEE9AC00](v353);
  v316 = &v230 - v33;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D898, &qword_1C1E5A358);
  v318 = *(v348 - 8);
  MEMORY[0x1EEE9AC00](v348);
  v347 = &v230 - v34;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D888, &qword_1C1E5A348);
  v319 = *(v350 - 8);
  MEMORY[0x1EEE9AC00](v350);
  v349 = &v230 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D878, &unk_1C1E5A320);
  v320 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v351 = &v230 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2A0, &qword_1C1E58810);
  v333 = v38;
  v358 = a3;
  *&v403 = a3;
  *(&v403 + 1) = a4;
  v357 = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v332 = OpaqueTypeMetadata2;
  v40 = sub_1C1E0F2FC();
  v322 = v40;
  *&v403 = a3;
  *(&v403 + 1) = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v403 = v38;
  *(&v403 + 1) = OpaqueTypeMetadata2;
  *&v404 = v40;
  *(&v404 + 1) = OpaqueTypeConformance2;
  v292 = &unk_1C1E68C54;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D880, &qword_1C1E5A340);
  v336 = sub_1C1E5299C();
  v41 = sub_1C1E549CC();
  v338 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D890, &qword_1C1E5A350);
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8A0, &qword_1C1E5A360);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8D0, &qword_1C1E5A390);
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D3F0, &qword_1C1E58AB8);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D908, &unk_1C1E5A3D0);
  v46 = sub_1C1DC1124(&qword_1EBF1D910, &qword_1EBF1D900, &qword_1C1E5A3C8, MEMORY[0x1E695B218]);
  v47 = sub_1C1DC1124(&qword_1EBF1D918, &qword_1EBF1D908, &unk_1C1E5A3D0, MEMORY[0x1E695B440]);
  *&v403 = v337;
  *(&v403 + 1) = v45;
  v243 = v46;
  v244 = v45;
  *&v404 = v46;
  *(&v404 + 1) = v47;
  v242 = v47;
  *&v405 = MEMORY[0x1E6981568];
  v48 = swift_getOpaqueTypeConformance2();
  v49 = sub_1C1E0FB50();
  *&v403 = v345;
  *(&v403 + 1) = v44;
  v245 = v48;
  *&v404 = v48;
  *(&v404 + 1) = v49;
  v50 = swift_getOpaqueTypeConformance2();
  *&v403 = v352;
  *(&v403 + 1) = v44;
  v260 = v44;
  v246 = v50;
  *&v404 = v50;
  *(&v404 + 1) = v49;
  v252 = v49;
  v51 = swift_getOpaqueTypeConformance2();
  *&v403 = v344;
  *(&v403 + 1) = v51;
  v249 = v51;
  v52 = swift_getOpaqueTypeConformance2();
  *&v403 = v342;
  *(&v403 + 1) = v52;
  v248 = v52;
  v53 = swift_getOpaqueTypeConformance2();
  *&v403 = v340;
  *(&v403 + 1) = v53;
  v247 = v53;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = sub_1C1E3C4FC();
  *&v403 = v339;
  *(&v403 + 1) = v43;
  v280 = v43;
  v250 = v55;
  v251 = v54;
  *&v404 = v54;
  *(&v404 + 1) = v55;
  v56 = swift_getOpaqueTypeConformance2();
  v59 = sub_1C1E3C5E4(v56, v57, v58);
  *&v403 = v341;
  *(&v403 + 1) = &type metadata for MagnifyRepresentable;
  v253 = v59;
  v254 = v56;
  *&v404 = v56;
  *(&v404 + 1) = v59;
  v60 = swift_getOpaqueTypeConformance2();
  v63 = sub_1C1E3C638(v60, v61, v62);
  *&v403 = v343;
  *(&v403 + 1) = &type metadata for TwoFingerDragRepresentable;
  v257 = v60;
  *&v404 = v60;
  *(&v404 + 1) = v63;
  v255 = v63;
  v64 = swift_getOpaqueTypeConformance2();
  v67 = sub_1C1E3C68C(v64, v65, v66);
  *&v403 = v346;
  *(&v403 + 1) = &type metadata for TapRepresentable;
  v258 = v67;
  v259 = v64;
  *&v404 = v64;
  *(&v404 + 1) = v67;
  v68 = swift_getOpaqueTypeConformance2();
  v71 = sub_1C1E3C6E0(v68, v69, v70);
  *&v403 = v353;
  *(&v403 + 1) = &type metadata for OneFingerDragRepresentable;
  v261 = v71;
  v262 = v68;
  *&v404 = v68;
  *(&v404 + 1) = v71;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = sub_1C1E3C734();
  *&v403 = v348;
  *(&v403 + 1) = v42;
  v293 = v42;
  v276 = v73;
  v277 = v72;
  *&v404 = v72;
  *(&v404 + 1) = v73;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = sub_1C1E4D288(&qword_1EBF1D9A0, &qword_1EBF1D890, &qword_1C1E5A350, sub_1C1E3CAA8);
  *&v403 = v350;
  *(&v403 + 1) = v338;
  v289 = v74;
  *&v404 = v74;
  *(&v404 + 1) = v75;
  v286 = v75;
  v76 = swift_getOpaqueTypeConformance2();
  *&v403 = v333;
  *(&v403 + 1) = v332;
  *&v404 = v322;
  *(&v404 + 1) = OpaqueTypeConformance2;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = sub_1C1DC1124(&qword_1EBF1D998, &qword_1EBF1D880, &qword_1C1E5A340, MEMORY[0x1E69802E0]);
  v394 = v77;
  v395 = v78;
  v333 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v79 = swift_getWitnessTable();
  *&v403 = v36;
  *(&v403 + 1) = v41;
  *&v404 = v76;
  *(&v404 + 1) = v79;
  v80 = swift_getOpaqueTypeMetadata2();
  v287 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v285 = &v230 - v81;
  v322 = v36;
  *&v403 = v36;
  *(&v403 + 1) = v41;
  OpaqueTypeConformance2 = v41;
  v292 = v76;
  *&v404 = v76;
  *(&v404 + 1) = v79;
  v283 = v79;
  v82 = swift_getOpaqueTypeConformance2();
  *&v403 = v80;
  *(&v403 + 1) = v82;
  v83 = swift_getOpaqueTypeMetadata2();
  v279 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v274 = &v230 - v84;
  v290 = v80;
  *&v403 = v80;
  *(&v403 + 1) = v82;
  v272 = v82;
  v85 = swift_getOpaqueTypeConformance2();
  v88 = sub_1C1E3CC44(v85, v86, v87);
  *&v403 = v83;
  *(&v403 + 1) = &type metadata for SparklineViewAccessibilityChartDescriptorRepresentable;
  *&v404 = v85;
  *(&v404 + 1) = v88;
  v89 = swift_getOpaqueTypeMetadata2();
  v271 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v269 = &v230 - v90;
  sub_1C1E52F2C();
  v273 = v89;
  v91 = sub_1C1E5299C();
  v284 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v268 = &v230 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v93);
  v275 = &v230 - v94;
  v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D9F0, &qword_1C1E5A428);
  v281 = v83;
  *&v403 = v83;
  *(&v403 + 1) = &type metadata for SparklineViewAccessibilityChartDescriptorRepresentable;
  v267 = v85;
  *&v404 = v85;
  *(&v404 + 1) = v88;
  v264 = v88;
  v96 = swift_getOpaqueTypeConformance2();
  v97 = sub_1C1E4D7A4(&qword_1EBF1C690, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v256 = v96;
  v391 = v96;
  v392 = v97;
  v98 = swift_getWitnessTable();
  v99 = sub_1C1DC1124(&qword_1EBF1D9F8, &qword_1EBF1D9F0, &qword_1C1E5A428, MEMORY[0x1E6981F48]);
  v291 = v91;
  *&v403 = v91;
  *(&v403 + 1) = v95;
  v278 = v95;
  v265 = v98;
  *&v404 = v98;
  *(&v404 + 1) = v99;
  v263 = v99;
  v100 = swift_getOpaqueTypeMetadata2();
  v266 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v336 = &v230 - v101;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C248, &unk_1C1E5A430);
  v270 = v100;
  v333 = sub_1C1E5299C();
  v288 = *(v333 - 8);
  MEMORY[0x1EEE9AC00](v333);
  v332 = &v230 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v103);
  v282 = &v230 - v104;
  v360 = v358;
  v361 = v357;
  v362 = v359;
  v363 = v321;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC08, &qword_1C1E5A740);
  sub_1C1E4CD28();
  v105 = v294;
  sub_1C1E5259C();
  if (qword_1EBF1C158 != -1)
  {
    swift_once();
  }

  v390 = qword_1EBF20D88;
  v106 = sub_1C1E5263C();
  v107 = *(v106 - 8);
  v108 = *(v107 + 56);
  v109 = v107 + 56;
  v110 = v315;
  v108(v315, 1, 1, v106);
  v241 = v109;
  v321 = v108;

  v111 = v306;
  v112 = v337;
  sub_1C1E5329C();
  sub_1C1DC1870(v110, &qword_1EBF1D390, &qword_1C1E58A58);

  (*(v305 + 8))(v105, v112);
  v113 = *v359;
  sub_1C1E24AC8();
  v388 = v114;
  v389 = v115;
  v108(v110, 1, 1, v106);
  v116 = v310;
  v117 = v345;
  sub_1C1E531BC();
  sub_1C1DC1870(v110, &qword_1EBF1D390, &qword_1C1E58A58);
  (*(v311 + 8))(v111, v117);
  sub_1C1E24CD4();
  v386 = v118;
  v387 = v119;
  v321(v110, 1, 1, v106);
  v120 = v304;
  v121 = v352;
  sub_1C1E531DC();
  sub_1C1DC1870(v110, &qword_1EBF1D390, &qword_1C1E58A58);
  (*(v314 + 8))(v116, v121);
  v122 = v300;
  v123 = v344;
  sub_1C1E5317C();
  (*(v309 + 8))(v120, v123);
  v124 = v296;
  v125 = v342;
  sub_1C1E5318C();
  (*(v303 + 8))(v122, v125);
  v126 = v295;
  v127 = v340;
  sub_1C1E531AC();
  (*(v299 + 8))(v124, v127);
  v128 = v298;
  v129 = v339;
  sub_1C1E5321C();
  (*(v297 + 8))(v126, v129);
  v130 = v356;
  v131 = v359;
  sub_1C1E3B260(v396);
  v412[0] = v396[0].n128_u64[0];
  v382 = v396[0];
  v383 = v396[1];
  v384 = v397;
  v385 = v398;
  v132 = v302;
  v133 = v341;
  sub_1C1E534AC();
  sub_1C1E4D130(v412);

  (*(v301 + 8))(v128, v133);
  v134 = v130;
  v135 = v131;
  sub_1C1E3B168(v399);
  v411 = v399[0].n128_u64[0];
  v379 = v399[0];
  v380 = v399[1];
  v381 = v400;
  v136 = v307;
  v137 = v343;
  sub_1C1E534AC();
  sub_1C1E4D130(&v411);

  (*(v308 + 8))(v132, v137);
  v138 = sub_1C1E3B350(v134);
  v375 = v139;
  v376 = v140;
  v377 = v138;
  v378 = v141;
  v142 = v316;
  v143 = v346;
  sub_1C1E534AC();

  (*(v313 + 8))(v136, v143);
  v144 = v134;
  sub_1C1E3B07C(v401);
  v410 = v401[0].n128_u64[0];
  v371 = v401[0];
  v372 = v401[1];
  v373 = v402;
  v374 = v113;
  v337 = v113;
  swift_retain_n();
  v145 = v353;
  sub_1C1E534AC();
  sub_1C1E4D130(&v410);

  (*(v317 + 8))(v142, v145);
  v146 = v354;
  v147 = v354 + 16;
  v353 = *(v354 + 16);
  v148 = v334;
  v149 = v135;
  v150 = v144;
  (v353)(v334, v135, v144);
  v151 = *(v146 + 80);
  v152 = (v151 + 32) & ~v151;
  v153 = swift_allocObject();
  v154 = v357;
  *(v153 + 16) = v358;
  *(v153 + 24) = v154;
  v352 = *(v146 + 32);
  (v352)(v153 + v152, v148, v150);
  sub_1C1E538DC();
  v155 = v348;
  v156 = v347;
  sub_1C1E5320C();

  (*(v318 + 8))(v156, v155);
  v157 = v356;
  (v353)(v148, v149, v356);
  v158 = swift_allocObject();
  v159 = v357;
  *(v158 + 16) = v358;
  *(v158 + 24) = v159;
  (v352)(v158 + v152, v148, v157);
  sub_1C1E538DC();
  v160 = v350;
  v161 = v349;
  sub_1C1E5320C();

  (*(v319 + 8))(v161, v160);
  v162 = v356;
  v346 = v147;
  (v353)(v148, v359, v356);
  v345 = v151;
  v163 = swift_allocObject();
  *(v163 + 16) = v358;
  *(v163 + 24) = v159;
  v347 = v152;
  v354 = v146 + 32;
  (v352)(v163 + v152, v148, v162);
  sub_1C1E538DC();
  swift_checkMetadataState();
  v164 = v285;
  v165 = v322;
  v166 = v351;
  sub_1C1E5320C();

  (*(v320 + 8))(v166, v165);
  v167 = v323;
  sub_1C1E52E4C();
  v168 = v274;
  v169 = v290;
  sub_1C1E5341C();
  (*(v324 + 8))(v167, v325);
  (*(v287 + 8))(v164, v169);
  v370 = v337;
  v170 = v269;
  v171 = v281;
  sub_1C1E5345C();

  (*(v279 + 8))(v168, v171);
  v368 = sub_1C1E461D8();
  v369 = v172;
  sub_1C1DC733C(v368, v172, v173);
  v174 = v268;
  v175 = v273;
  sub_1C1E533BC();

  (*(v271 + 8))(v170, v175);
  v367[7] = sub_1C1E465C0(v162);
  v367[8] = v176;
  v177 = v275;
  v178 = v291;
  sub_1C1E5297C();

  v179 = *(v284 + 8);
  v180 = v179(v174, v178);
  v351 = &v230;
  MEMORY[0x1EEE9AC00](v180);
  v181 = v278;
  v182 = v265;
  v183 = v263;
  sub_1C1E5340C();
  v179(v177, v178);
  swift_getKeyPath();
  v184 = v327;
  v185 = v326;
  v186 = v328;
  (*(v327 + 104))(v326, *MEMORY[0x1E697E7D0], v328);
  *&v403 = v178;
  *(&v403 + 1) = v181;
  *&v404 = v182;
  *(&v404 + 1) = v183;
  v187 = swift_getOpaqueTypeConformance2();
  v188 = v332;
  v189 = v270;
  v190 = v336;
  sub_1C1E5330C();

  (*(v184 + 8))(v185, v186);
  (*(v266 + 8))(v190, v189);
  v191 = sub_1C1DC1124(&qword_1EDE73B28, &qword_1EBF1C248, &unk_1C1E5A430, MEMORY[0x1E6980A18]);
  v367[5] = v187;
  v367[6] = v191;
  v192 = v333;
  v193 = swift_getWitnessTable();
  v194 = v282;
  v348 = v193;
  sub_1C1E105BC();
  v195 = v288;
  v196 = *(v288 + 8);
  v350 = v288 + 8;
  v349 = v196;
  (v196)(v188, v192);
  swift_getKeyPath();
  v197 = v337;
  *&v403 = v337;
  sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v198 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter;
  swift_beginAccess();
  v199 = *(v197 + v198);
  v200 = 1;
  if (v199 == 1)
  {
    swift_getKeyPath();
    *&v403 = v197;
    sub_1C1E520BC();

    swift_beginAccess();
    v200 = 1;
    if (*(v197 + 17) == 1)
    {
      v201 = v334;
      v202 = v356;
      (v353)(v334, v359, v356);
      v203 = v347;
      v204 = swift_allocObject();
      v205 = v357;
      *(v204 + 16) = v358;
      *(v204 + 24) = v205;
      (v352)(&v203[v204], v201, v202);
      v206 = v232;
      sub_1C1E5373C();
      v207 = &v206[*(v231 + 36)];
      v208 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4B0, &unk_1C1E5A800) + 28);
      v209 = *MEMORY[0x1E697DC20];
      v210 = sub_1C1E526FC();
      (*(*(v210 - 8) + 104))(v207 + v208, v209, v210);
      *v207 = swift_getKeyPath();
      v211 = v233;
      sub_1C1E52E6C();
      sub_1C1E102AC();
      sub_1C1E4D7A4(&qword_1EBF1D4B8, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
      v212 = v239;
      v213 = v235;
      sub_1C1E532EC();
      (*(v234 + 8))(v211, v213);
      v214 = v206;
      v188 = v332;
      sub_1C1DC1870(v214, &qword_1EBF1D378, &qword_1C1E58A48);
      (*(v237 + 104))(v236, *MEMORY[0x1E69814D8], v238);
      v215 = sub_1C1E5368C();
      KeyPath = swift_getKeyPath();
      *&v403 = v215;
      v217 = sub_1C1E5282C();
      v218 = &v212[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D498, &unk_1C1E5A7F0) + 36)];
      *v218 = KeyPath;
      v218[1] = v217;
      *&v212[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D488, &qword_1C1E58B28) + 36)] = 0x3FE6666666666666;
      LOBYTE(v217) = sub_1C1E5300C();
      v219 = &v212[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D478, &unk_1C1E5A7E0) + 36)];
      *v219 = v217;
      *(v219 + 8) = 0u;
      *(v219 + 24) = 0u;
      v219[40] = 1;
      sub_1C1E538DC();
      sub_1C1E529FC();
      v220 = &v212[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D468, &qword_1C1E58B20) + 36)];
      v221 = v408;
      *(v220 + 4) = v407;
      *(v220 + 5) = v221;
      *(v220 + 6) = v409;
      v222 = v404;
      *v220 = v403;
      *(v220 + 1) = v222;
      v223 = v406;
      *(v220 + 2) = v405;
      *(v220 + 3) = v223;
      *&v212[*(v240 + 36)] = 0;
      sub_1C1E3AAD0(v202);
      sub_1C1E0FF0C();
      sub_1C1E533CC();
      v224 = v212;
      v192 = v333;
      sub_1C1DC1870(v224, &qword_1EBF1D380, &unk_1C1E5A730);
      v200 = 0;
    }
  }

  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D440, &unk_1C1E5A7D0);
  v226 = v335;
  (*(*(v225 - 8) + 56))(v335, v200, 1, v225);
  (*(v195 + 16))(v188, v194, v192);
  v367[0] = v188;
  v227 = v330;
  sub_1C1DD3BE0(v226, v330);
  v367[1] = v227;
  v366[0] = v192;
  v366[1] = v329;
  v364 = v348;
  v365 = sub_1C1E4D288(&qword_1EBF1D448, &qword_1EBF1D298, &qword_1C1E58808, sub_1C1E0FE50);
  sub_1C1E3A60C(v367, 2uLL, v366);
  sub_1C1DC1870(v226, &qword_1EBF1D298, &qword_1C1E58808);
  v228 = v349;
  (v349)(v194, v192);
  sub_1C1DC1870(v227, &qword_1EBF1D298, &qword_1C1E58808);
  return v228(v188, v192);
}

uint64_t sub_1C1E403EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v91 = a4;
  v90 = a3;
  v94 = a2;
  v99 = a5;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD38, &qword_1C1E5AA28) - 8;
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v84 - v8;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D368, &qword_1C1E5AA30);
  v88 = *(v89 - 8);
  v92 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v84 - v9;
  v101 = type metadata accessor for GraphView(0, a3, a4, v10);
  v85 = *(v101 - 8);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v84 = &v84 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC28, &qword_1C1E5A748);
  v95 = *(v12 - 8);
  v96 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v105 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v103 = &v84 - v15;
  v16 = type metadata accessor for CenteredAxes(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD40, &qword_1C1E5AA38);
  v104 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v102 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v100 = &v84 - v21;
  v22 = *a1;
  sub_1C1E24AC8();
  v24 = v23;
  v26 = v25;
  sub_1C1E24CD4();
  v28 = v27;
  v30 = v29;
  v31 = sub_1C1E1CD1C();
  v33 = v32;
  v34 = sub_1C1E1D3D4();
  v36 = v35;
  sub_1C1E24AC8();
  v38 = v37;
  sub_1C1E24AC8();
  sub_1C1E25C2C(round(vabdd_f64(v38, v39)));
  v41 = v40;
  sub_1C1E24CD4();
  v43 = v42;
  sub_1C1E24CD4();
  sub_1C1E25C2C(round(vabdd_f64(v43, v44)));
  v46 = v45;
  sub_1C1E3A8CC(v101, (v18 + *(v16 + 40)));
  *v18 = v24;
  v18[1] = v26;
  v18[2] = v28;
  v18[3] = v30;
  v18[4] = v31;
  v18[5] = v33;
  v18[6] = v34;
  v18[7] = v36;
  v18[8] = v41;
  v18[9] = v46;
  sub_1C1E4D7A4(&qword_1EBF1DC18, type metadata accessor for CenteredAxes, &unk_1C1E5A5A4);
  sub_1C1E523EC();
  sub_1C1E4E154(v18, type metadata accessor for CenteredAxes);
  v47 = *(v22 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v47 lock];
  swift_getKeyPath();
  v106 = v22;
  sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v48 = *(v22 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v47 unlock];
  sub_1C1E4C054(v48);
  v50 = v49;

  v106 = v50;
  swift_getKeyPath();
  v51 = v85;
  v52 = v84;
  v53 = a1;
  v54 = v101;
  (*(v85 + 16))(v84, v53, v101);
  v55 = v88;
  v56 = v87;
  v57 = v89;
  (*(v88 + 16))(v87, v94, v89);
  v58 = v51;
  v59 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v60 = v55;
  v61 = (v86 + *(v55 + 80) + v59) & ~*(v55 + 80);
  v62 = swift_allocObject();
  v63 = v91;
  *(v62 + 16) = v90;
  *(v62 + 24) = v63;
  (*(v58 + 32))(v62 + v59, v52, v54);
  (*(v60 + 32))(v62 + v61, v56, v57);
  v64 = swift_allocObject();
  *(v64 + 16) = sub_1C1E4E1B4;
  *(v64 + 24) = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE48, &qword_1C1E5AA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC38, &qword_1C1E5A750);
  sub_1C1DC1124(&qword_1EBF1CE50, &qword_1EBF1CE48, &qword_1C1E5AA60, MEMORY[0x1E69E6338]);
  sub_1C1E4CEA0();
  v65 = v103;
  sub_1C1E537DC();
  v66 = *(v104 + 16);
  v67 = v102;
  v68 = v93;
  v66(v102, v100, v93);
  v69 = v95;
  v70 = *(v95 + 16);
  v71 = v105;
  v72 = v65;
  v73 = v96;
  v70(v105, v72, v96);
  v74 = v97;
  v75 = v67;
  v76 = v68;
  v66(v97, v75, v68);
  sub_1C1E4CE1C();
  v77 = v98;
  v78 = *(v98 + 56);
  v70(&v74[v78], v71, v73);
  v79 = v104;
  v80 = v99;
  (*(v104 + 32))(v99, v74, v76);
  (*(v69 + 32))(v80 + *(v77 + 56), &v74[v78], v73);
  v81 = *(v69 + 8);
  v81(v103, v73);
  v82 = *(v79 + 8);
  v82(v100, v76);
  v81(v105, v73);
  return (v82)(v102, v76);
}

uint64_t sub_1C1E40C7C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v26 = a3;
  v27 = a4;
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC48, &qword_1C1E5A758);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = sub_1C1E51F5C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1E24AC8();
  sub_1C1E24CD4();
  sub_1C1E5245C();
  if (v32)
  {
    v14 = *(v29 + 56);

    return v14(a5, 1, 1, v7);
  }

  else
  {
    v16 = v30;
    v17 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D368, &qword_1C1E5AA30);
    sub_1C1E527DC();
    type metadata accessor for Function(0);
    sub_1C1E51EFC();
    v19 = v18;
    result = (*(v11 + 8))(v13, v10);
    v21 = 0.0;
    if (v19 / 1.5 >= 0.0)
    {
      v21 = v19 / 1.5;
    }

    if (v19 / 1.5 >= 1.0)
    {
      v22 = 1.0;
    }

    else
    {
      v22 = v21;
    }

    v23 = (v17 - v16) * v22;
    v24 = v16 + v23;
    if (v16 > v16 + v23)
    {
      __break(1u);
    }

    else
    {
      type metadata accessor for GraphView(0, v26, v27, v20);
      sub_1C1E40F58(a1, v9, v16, v24);
      sub_1C1DD6788(v9, a5);
      return (*(v29 + 56))(a5, 0, 1, v7);
    }
  }

  return result;
}

uint64_t sub_1C1E40F58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v46 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD48, &qword_1C1E5AA68);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v37 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC68, &qword_1C1E5A770);
  v42 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD50, &qword_1C1E5AA70);
  v41 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC58, &qword_1C1E5A768);
  v45 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC50, &qword_1C1E5A760);
  v44 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD58, &qword_1C1E5AA78);
  v20 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v22 = &v37 - v21;
  result = type metadata accessor for Function(0);
  v24 = a1;
  v25 = *(a1 + *(result + 52));
  if (v25)
  {
    if (a3 <= a4)
    {

      sub_1C1E525BC();
      v51[0] = v25;
      v26 = sub_1C1E4D0B4();
      v27 = MEMORY[0x1E69815C0];
      sub_1C1E523DC();
      (*(v45 + 8))(v16, v14);
      sub_1C1E5276C();
      v47 = v14;
      v48 = v27;
      v49 = v26;
      v50 = MEMORY[0x1E6981568];
      swift_getOpaqueTypeConformance2();
      sub_1C1E5240C();
      sub_1C1E4C708(v51);

      (*(v44 + 8))(v19, v17);
      (*(v20 + 32))(v46, v22, v43);
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD60, &qword_1C1E5AA80);
      return swift_storeEnumTagMultiPayload();
    }

    __break(1u);
  }

  else
  {
    v43 = v13;
    v44 = v11;
    if (a3 <= a4)
    {
      v28 = v24;

      sub_1C1E525BC();
      sub_1C1E52C6C();
      v29 = *v28;
      v30 = v28[1];
      v51[0] = v29;
      v51[1] = v30;

      v31 = MEMORY[0x1E69E6158];
      v32 = MEMORY[0x1E695B438];
      v33 = v38;
      sub_1C1E5242C();

      v34 = sub_1C1E4D0B4();
      sub_1C1E523CC();
      (*(v39 + 8))(v33, v40);
      (*(v45 + 8))(v16, v14);
      sub_1C1E5276C();
      v47 = v14;
      v48 = v31;
      v49 = v34;
      v50 = v32;
      swift_getOpaqueTypeConformance2();
      v35 = v43;
      v36 = v37;
      sub_1C1E5240C();
      sub_1C1E4C708(v51);
      (*(v42 + 8))(v10, v36);
      (*(v41 + 32))(v46, v35, v44);
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1E41618@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DBC0, &qword_1C1E5A6F8);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB68, &qword_1C1E5A6A8);
  sub_1C1E525EC();
  sub_1C1E4C764();
  v8 = *a1;
  v9 = *(v7 - 8);
  v10 = *(v9 + 16);
  v30 = v7;
  v10(v6, v8, v7);
  v31 = v4[14];
  v10(&v6[v31], a1[1], v7);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB48, &qword_1C1E5A688);
  sub_1C1E4C7F0();
  v12 = v4[18];
  v29 = v12;
  v13 = *(v11 - 8);
  v14 = *(v13 + 16);
  v14(&v6[v12], a1[2], v11);
  v28 = v4[22];
  v14(&v6[v28], a1[3], v11);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB28, &qword_1C1E5A668);
  sub_1C1E4CBD8();
  v16 = v4[26];
  v27 = v16;
  v17 = *(v15 - 8);
  v18 = *(v17 + 16);
  v18(&v6[v16], a1[4], v15);
  v26 = v4[30];
  v18(&v6[v26], a1[5], v15);
  v19 = *(v9 + 32);
  v20 = v32;
  v21 = v30;
  v19(v32, v6, v30);
  v19(v20 + v4[14], &v6[v31], v21);
  v22 = *(v13 + 32);
  v22(v20 + v4[18], &v6[v29], v11);
  v22(v20 + v4[22], &v6[v28], v11);
  v23 = *(v17 + 32);
  v23(v20 + v4[26], &v6[v27], v15);
  return (v23)(v20 + v4[30], &v6[v26], v15);
}

uint64_t sub_1C1E41928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1E5249C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8D0, &qword_1C1E5A390);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1C1E419A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v119 = a3;
  v120 = a4;
  v114 = a1;
  v106 = a5;
  v9 = sub_1C1E522DC();
  v10 = *(v9 - 8);
  v123 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for GraphView(0, a3, a4, v12);
  v122 = *(v118 - 8);
  v117 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v108 = &v94 - v13;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D970, &qword_1C1E5A400);
  OpaqueTypeConformance2 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v109 = &v94 - v14;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D968, &qword_1C1E5A3F8);
  v101 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v111 = &v94 - v15;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D960, &qword_1C1E5A3F0);
  v103 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v110 = &v94 - v16;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D958, &unk_1C1E5A3E0);
  v105 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v112 = &v94 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D540, &qword_1C1E58F98);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v94 - v20;
  v22 = *a2;
  v97 = v10;
  v23 = *(v10 + 16);
  v95 = v9;
  v23(&v94 - v20, a1, v9, v19);
  (*(v10 + 56))(v21, 0, 1, v9);
  swift_getKeyPath();
  v124 = v22;
  v125 = v21;
  v126 = v22;
  sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520AC();

  sub_1C1DC1870(v21, &qword_1EBF1D540, &qword_1C1E58F98);
  v96 = COERCE_DOUBLE(sub_1C1E535FC());
  v130 = v96;
  v24 = v118;
  v121 = a2;
  v126 = sub_1C1E3B010(v118);
  v127 = v25;
  LOBYTE(v128) = v26;
  v27 = v122;
  v28 = *(v122 + 16);
  v115 = v122 + 16;
  v116 = v28;
  v29 = v108;
  v28(v108, a2, v24);
  v30 = v107;
  v31 = v95;
  (v23)(v107, v114, v95);
  v32 = *(v27 + 80);
  v33 = v27;
  v117 += (v32 + 32) & ~v32;
  v34 = (v32 + 32) & ~v32;
  v113 = v34;
  v114 = v32 | 7;
  v35 = v97;
  v36 = (v117 + *(v97 + 80)) & ~*(v97 + 80);
  v37 = swift_allocObject();
  v38 = v119;
  v39 = v120;
  *(v37 + 16) = v119;
  *(v37 + 24) = v39;
  v40 = *(v33 + 32);
  v122 = v33 + 32;
  v123 = v40;
  v41 = v37 + v34;
  v42 = v118;
  v40(v41, v29, v118);
  v43 = (*(v35 + 32))(v37 + v36, v30, v31);
  v107 = sub_1C1E3C958(v43, v44, v45);
  sub_1C1E534CC();

  v46 = v42;
  v47 = v121;
  v130 = COERCE_DOUBLE(sub_1C1E3B1E8(v42));
  v131 = v48;
  v132 = v49;
  v133 = v50;
  v51 = v116;
  v116(v29, v47, v42);
  v52 = swift_allocObject();
  *(v52 + 16) = v38;
  *(v52 + 24) = v39;
  v53 = v113;
  v123(v52 + v113, v29, v46);
  v126 = MEMORY[0x1E69815C0];
  v127 = &type metadata for SingleDragState;
  v128 = MEMORY[0x1E6981580];
  v129 = v107;
  v107 = MEMORY[0x1E6981448];
  v96 = COERCE_DOUBLE(swift_getOpaqueTypeConformance2());
  v97 = sub_1C1E3C9AC(*&v96, v54, v55);
  v56 = v98;
  v57 = v109;
  sub_1C1E534CC();

  (*(OpaqueTypeConformance2 + 8))(v57, v56);
  v58 = v121;
  v130 = sub_1C1E3B2F0(v46);
  v131 = v59;
  v51(v29, v58, v46);
  v60 = swift_allocObject();
  v61 = v120;
  *(v60 + 16) = v119;
  *(v60 + 24) = v61;
  v123(v60 + v53, v29, v46);
  v126 = v56;
  v127 = &type metadata for MagnifyState;
  v128 = *&v96;
  v129 = v97;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v109 = sub_1C1E3CA00(OpaqueTypeConformance2, v62, v63);
  v64 = v100;
  v65 = v111;
  sub_1C1E534CC();

  (*(v101 + 8))(v65, v64);
  v66 = v121;
  v130 = COERCE_DOUBLE(sub_1C1E3B0FC(v46));
  v131 = v67;
  LOBYTE(v132) = v68;
  v69 = v29;
  v70 = v116;
  v116(v29, v66, v46);
  v71 = swift_allocObject();
  v73 = v119;
  v72 = v120;
  *(v71 + 16) = v119;
  *(v71 + 24) = v72;
  v74 = v113;
  v123(v71 + v113, v69, v46);
  v126 = v64;
  v127 = &type metadata for TapState;
  v128 = OpaqueTypeConformance2;
  v129 = v109;
  v111 = swift_getOpaqueTypeConformance2();
  v77 = sub_1C1E3CA54(v111, v75, v76);
  v78 = v102;
  v79 = v110;
  sub_1C1E534CC();

  (*(v103 + 8))(v79, v78);
  v80 = v118;
  v81 = v121;
  v130 = COERCE_DOUBLE(sub_1C1E3AD78(v118));
  LOBYTE(v131) = v82 & 1;
  v83 = v108;
  v70(v108, v81, v80);
  v84 = swift_allocObject();
  v85 = v120;
  *(v84 + 16) = v73;
  *(v84 + 24) = v85;
  v86 = v83;
  v123(v84 + v74, v83, v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C778, &qword_1C1E56FC8);
  v126 = v78;
  v127 = &type metadata for DragState;
  v128 = v111;
  v129 = v77;
  swift_getOpaqueTypeConformance2();
  sub_1C1E0FD50();
  v87 = v106;
  v88 = v104;
  v89 = v112;
  sub_1C1E534CC();

  (*(v105 + 8))(v89, v88);
  v90 = v118;
  v116(v86, v121, v118);
  v91 = swift_allocObject();
  *(v91 + 16) = v119;
  *(v91 + 24) = v85;
  v123(v91 + v113, v86, v90);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8A0, &qword_1C1E5A360);
  v93 = (v87 + *(result + 36));
  *v93 = sub_1C1E4E510;
  v93[1] = 0;
  v93[2] = sub_1C1E4DECC;
  v93[3] = v91;
  return result;
}

void *sub_1C1E42648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for GraphView(0, a3, a4, a4);
  sub_1C1E3B010(v4);
  if (v5 >= 2u)
  {
    sub_1C1E3ADE4(0, 1, v4);
    v7 = 0;
    v8 = 1;
  }

  else
  {
    result = sub_1C1E522BC();
    if (v11)
    {
      return result;
    }

    sub_1C1E3ADE4(v9, 0, v4);
    v7 = v10;
    v8 = 0;
  }

  return sub_1C1E3AEC4(v7, v8, v4);
}

void sub_1C1E4271C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for GraphView(0, a2, a3, a4);
  v6 = sub_1C1E3B1E8(v5);
  if (v7)
  {
    if (v7 == 1)
    {
      v35 = *&v6;
      v8 = *a1;
      swift_getKeyPath();
      v36[0] = v8;
      sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
      sub_1C1E520BC();

      v9 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter;
      v10 = swift_beginAccess();
      if ((*(v8 + v9) & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](v10);
        sub_1C1E5395C();
        sub_1C1E5291C();
      }

      swift_getKeyPath();
      v39 = v8;
      sub_1C1E520BC();

      v30 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes;
      v31 = swift_beginAccess();
      if ((*(v8 + v30) & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](v31);
        sub_1C1E5395C();
        sub_1C1E5291C();
      }

      swift_getKeyPath();
      v38 = v8;
      sub_1C1E520BC();

      v32 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin;
      v33 = swift_beginAccess();
      if ((*(v8 + v32) & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](v33);
        sub_1C1E5395C();
        sub_1C1E5291C();
      }

      v34 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
      swift_beginAccess();
      *(v8 + v34) = 1.0 / v35;
      swift_getKeyPath();
      sub_1C1E520BC();

      v37 = v8;
      swift_getKeyPath();
      sub_1C1E520DC();

      *(v8 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = (*(v8 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) & 1) == 0;
      v37 = v8;
      swift_getKeyPath();
    }

    else
    {
      v11 = *a1;
      v12 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio;
      swift_beginAccess();
      v13 = 0.5 - *(v11 + v12);
      v14 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
      swift_beginAccess();
      v15 = *(v11 + v14);
      v16 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
      swift_beginAccess();
      v17 = v13 * (*(v11 + v16) * (v15 * *(v11 + v16)));
      v18 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
      swift_beginAccess();
      *(v11 + v18) = v17 + *(v11 + v18);
      v19 = sqrt(v15);
      v20 = sub_1C1E183D0(v36);
      *v21 = v19 * *v21;
      (v20)(v36, 0);
      v22 = 0.5 - *(v11 + v12);
      v23 = *(v11 + v14);
      v24 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
      swift_beginAccess();
      v25 = v22 * (*(v11 + v24) * (v23 * *(v11 + v24)));
      v26 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
      swift_beginAccess();
      *(v11 + v26) = v25 + *(v11 + v26);
      v27 = sqrt(v23);
      v28 = sub_1C1E184FC(v36);
      *v29 = v27 * *v29;
      (v28)(v36, 0);
      *(v11 + v14) = 0x3FF0000000000000;
      *(v11 + v12) = 0x3FE0000000000000;
      swift_getKeyPath();
      v36[0] = v11;
      sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
      sub_1C1E520BC();

      v36[0] = v11;
      swift_getKeyPath();
      sub_1C1E520DC();

      *(v11 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = (*(v11 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) & 1) == 0;
      v36[0] = v11;
      swift_getKeyPath();
    }

    sub_1C1E520CC();
  }
}

void sub_1C1E42D84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a4;
  swift_beginAccess();
  if (*(v6 + v7) == 1)
  {
    *(v6 + v7) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }
}

void sub_1C1E42EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for GraphView(0, a2, a3, a4);
  *&v5 = sub_1C1E3B2F0(v4);
  sub_1C1E215E8(v5, v6, 0);
}

void sub_1C1E42EF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for GraphView(0, a2, a3, a4);
  *&v6 = COERCE_DOUBLE(sub_1C1E3B0FC(v5));
  if (v8)
  {
    if (v8 != 1)
    {
      return;
    }

    v39 = v7;
    v40 = *&v6;
    v9 = *a1;
    swift_getKeyPath();
    sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520BC();

    v10 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter;
    v11 = swift_beginAccess();
    if ((*(v9 + v10) & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v11);
      sub_1C1E5395C();
      sub_1C1E5291C();
    }

    swift_getKeyPath();
    sub_1C1E520BC();

    v15 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes;
    v16 = swift_beginAccess();
    if ((*(v9 + v15) & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v16);
      sub_1C1E5395C();
      sub_1C1E5291C();
    }

    swift_getKeyPath();
    sub_1C1E520BC();

    v17 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin;
    v18 = swift_beginAccess();
    if ((*(v9 + v17) & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v18);
      sub_1C1E5395C();
      sub_1C1E5291C();
    }

    v19 = v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
    swift_beginAccess();
    if (*(v19 + 16) == 1)
    {
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C1E520AC();
    }

    v21 = v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_xDragStartPlottable;
    swift_beginAccess();
    if (*(v21 + 8))
    {
      v22 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
      swift_beginAccess();
      *v21 = *(v9 + v22);
      *(v21 + 8) = 0;
    }

    v23 = v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_yDragStartPlottable;
    swift_beginAccess();
    if (*(v23 + 8) == 1)
    {
      v24 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
      swift_beginAccess();
      *v23 = *(v9 + v24);
      *(v23 + 8) = 0;
    }

    v25 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
    swift_beginAccess();
    v26 = *(v9 + v25);
    v27 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
    swift_beginAccess();
    v28 = *(v9 + v27);
    v29 = sub_1C1E3B3B4(v5);
    v30 = *(v9 + v25);
    v31 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
    swift_beginAccess();
    v32 = *(v9 + v31);
    sub_1C1E3B3B4(v5);
    if (*(v21 + 8))
    {
      __break(1u);
    }

    else
    {
      v34 = v33;
      v35 = *v21 - v28 * (v26 * v28) / v29 * v40;
      v36 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
      swift_beginAccess();
      *(v9 + v36) = v35;
      if ((*(v23 + 8) & 1) == 0)
      {
        v37 = v32 * (v30 * v32) / v34 * v39 + *v23;
        v38 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
        swift_beginAccess();
        *(v9 + v38) = v37;
        swift_getKeyPath();
        sub_1C1E520BC();

        swift_getKeyPath();
        sub_1C1E520DC();

        *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = (*(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) & 1) == 0;
        swift_getKeyPath();
        goto LABEL_21;
      }
    }

    __break(1u);
    return;
  }

  v12 = *a1;
  v13 = *a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_xDragStartPlottable;
  swift_beginAccess();
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v12 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_yDragStartPlottable;
  swift_beginAccess();
  *v14 = 0;
  *(v14 + 8) = 1;
  swift_getKeyPath();
  sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  swift_getKeyPath();
  sub_1C1E520DC();

  *(v12 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = (*(v12 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) & 1) == 0;
  swift_getKeyPath();
LABEL_21:
  sub_1C1E520CC();
}

uint64_t sub_1C1E4367C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v12 = type metadata accessor for GraphView(0, a2, a3, v11);
  *&v13 = COERCE_DOUBLE(sub_1C1E3AD78(v12));
  if (v14 & 1) != 0 || (v15 = *&v13, *&v16 = COERCE_DOUBLE(sub_1C1E3AE58(v12)), (v17))
  {
    v18 = type metadata accessor for Function(0);
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    return sub_1C1E3AF38(v7);
  }

  v20 = *&v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DA08, &qword_1C1E5A480);
  sub_1C1E536EC();
  v21 = type metadata accessor for Function(0);
  if ((*(*(v21 - 8) + 48))(v10, 1, v21) == 1)
  {
    sub_1C1DC1870(v10, &qword_1EBF1C758, &qword_1C1E579C0);
    sub_1C1E24AC8();
    v23 = v22;
    sub_1C1E24AC8();
    sub_1C1E25C2C(round(vabdd_f64(v23, v24)));
    sub_1C1E24334(v7, v15, v20, v25);
    return sub_1C1E3AF38(v7);
  }

  return sub_1C1DC1870(v10, &qword_1EBF1C758, &qword_1C1E579C0);
}

void sub_1C1E438A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v105 = a3;
  v106 = a1;
  v108 = a5;
  v103 = a4;
  v6 = type metadata accessor for GraphView(0, a3, a4, a4);
  v101 = *(v6 - 8);
  v104 = *(v101 + 8);
  MEMORY[0x1EEE9AC00](v6);
  v100 = &v92 - v7;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D9B0, &qword_1C1E5A408);
  v8 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v102 = (&v92 - v9);
  v10 = sub_1C1E526EC();
  v98 = *(v10 - 8);
  v99 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v96 = (&v92 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v92 - v15;
  v17 = type metadata accessor for Function(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v21 = COERCE_DOUBLE(sub_1C1E3AD78(v6));
  if (v22)
  {
    goto LABEL_27;
  }

  v23 = *&v21;
  *&v24 = COERCE_DOUBLE(sub_1C1E3AE58(v6));
  if (v25)
  {
    goto LABEL_27;
  }

  v26 = *&v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DA08, &qword_1C1E5A480);
  sub_1C1E536EC();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1C1DC1870(v16, &qword_1EBF1C758, &qword_1C1E579C0);
LABEL_27:
    (*(v8 + 56))(v108, 1, 1, v107);
    return;
  }

  sub_1C1E4D6B4(v16, v20, type metadata accessor for Function);
  sub_1C1E24AC8();
  v28 = v27;
  v30 = v29;
  v31 = (v29 - v27) / 1000.0;
  if (v31 == 0.0)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v32 = a2;
  v33 = 0;
  v34 = 0;
  v35 = v23;
  v36 = 1;
  v95 = 0.0;
  v37 = 1.79769313e308;
  v94 = 0.0;
  v38 = v27;
  while (1)
  {
    v41 = v38;
    v42 = v38 <= v30;
    if (v31 > 0.0)
    {
      v42 = v30 <= v38;
    }

    if (v42)
    {
      break;
    }

    if (__OFADD__(v34++, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    v38 = v28 + v34 * v31;
LABEL_7:
    v39 = v20[8](v41);
    v40 = sqrt((v35 - v41) * (v35 - v41) + (v26 - v39) * (v26 - v39));
    if (v40 < v37)
    {
      v36 = 0;
      v95 = v41;
      v94 = v39;
      v37 = v40;
    }
  }

  if (!((v38 != v30) | v33 & 1))
  {
    v33 = 1;
    goto LABEL_7;
  }

  if (v36 & 1) != 0 || (v44 = v95, v45 = v94, v109 = v94, v110[0] = v95, *&v46 = COERCE_DOUBLE(sub_1C1E522CC()), (v48) || ((v49 = *&v46, v50 = v47, v111.origin.x = sub_1C1E3B478(v6), v119.origin.x = 0.0, v119.origin.y = 0.0, v119.size.width = 0.0, v119.size.height = 0.0, !CGRectEqualToRect(v111, v119)) || (v112.origin.x = sub_1C1E3B544(v6), v120.origin.x = 0.0, v120.origin.y = 0.0, v120.size.width = 0.0, v120.size.height = 0.0, !CGRectEqualToRect(v112, v120))) && ((v60 = sub_1C1E3B478(v6) + v49, v115.origin.x = sub_1C1E3B544(v6), CGRectGetMinX(v115) > v60) || (v61 = sub_1C1E3B478(v6) + v49, v116.origin.x = sub_1C1E3B544(v6), v61 > CGRectGetMaxX(v116)) || (sub_1C1E3B478(v6), v63 = v62 + v50, v117.origin.x = sub_1C1E3B544(v6), CGRectGetMinY(v117) > v63) || (sub_1C1E3B478(v6), v65 = v64 + v50, v118.origin.x = sub_1C1E3B544(v6), v65 > CGRectGetMaxY(v118))))
  {
    sub_1C1E4E154(v20, type metadata accessor for Function);
    goto LABEL_27;
  }

  v113.origin.x = sub_1C1E3B478(v6);
  v51 = CGRectGetMinX(v113) + v49;
  v114.origin.x = sub_1C1E3B478(v6);
  v52 = CGRectGetMinY(v114) + v50;
  v53 = v96;
  sub_1C1E3A8CC(v6, v96);
  v55 = v98;
  v54 = v99;
  v56 = v97;
  (*(v98 + 13))(v97, *MEMORY[0x1E697DBA8], v99);
  v57 = sub_1C1E526DC();
  v58 = *(v55 + 1);
  v58(v56, v54);
  v58(v53, v54);
  if (v57)
  {
    v59 = sub_1C1E535DC();
  }

  else
  {
    v59 = sub_1C1E5361C();
  }

  v66 = v59;
  v67 = sub_1C1E538DC();
  v68 = v102;
  *v102 = v67;
  v68[1] = v69;
  v70 = (v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCB8, &qword_1C1E5A8F8) + 44));
  v71 = v105;
  v72 = v103;
  sub_1C1E4424C(v32, v20, v66, v105, v103, v70, v51, v52, v44, v45);

  v73 = v101;
  v93 = v32;
  v74 = *(v101 + 2);
  v98 = v101 + 16;
  v99 = v74;
  v75 = v100;
  v74(v100, v32, v6);
  v106 = *(v73 + 80);
  v76 = (v106 + 32) & ~v106;
  v77 = swift_allocObject();
  *(v77 + 16) = v71;
  *(v77 + 24) = v72;
  v78 = *(v73 + 4);
  v78(v77 + v76, v75, v6);
  v101 = v78;
  v99(v75, v93, v6);
  v79 = swift_allocObject();
  *(v79 + 16) = v105;
  *(v79 + 24) = v72;
  v78(v79 + v76, v75, v6);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D9C0, &qword_1C1E5A410);
  v81 = (v102 + *(v80 + 36));
  *v81 = sub_1C1E4D7EC;
  v81[1] = v77;
  v81[2] = sub_1C1E4D804;
  v81[3] = v79;
  v82 = v93;
  v83 = v99;
  v99(v75, v93, v6);
  v84 = swift_allocObject();
  v85 = v103;
  *(v84 + 16) = v105;
  *(v84 + 24) = v85;
  v101(v84 + v76, v75, v6);
  v83(v75, v82, v6);
  v86 = swift_allocObject();
  v87 = v103;
  *(v86 + 16) = v105;
  *(v86 + 24) = v87;
  v101(v86 + v76, v75, v6);
  v88 = v107;
  v89 = v102;
  v90 = (v102 + *(v107 + 36));
  *v90 = sub_1C1E4D81C;
  v90[1] = v84;
  v90[2] = sub_1C1E4D8CC;
  v90[3] = v86;
  v91 = v108;
  sub_1C1DC18D0(v89, v108, &qword_1EBF1D9B0, &qword_1C1E5A408);
  (*(v8 + 56))(v91, 0, 1, v88);
  sub_1C1E4E154(v20, type metadata accessor for Function);
}

uint64_t sub_1C1E4424C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  v95 = a3;
  v101 = a6;
  v18 = sub_1C1E52C5C();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCC8, &qword_1C1E5A938);
  MEMORY[0x1EEE9AC00](v96);
  v20 = &v92 - v19;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCD0, &qword_1C1E5A940);
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v97 = &v92 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v99 = &v92 - v25;
  v27 = *(type metadata accessor for Function(0) + 52);
  if (*(a2 + v27))
  {
    v28 = *(a2 + v27);
  }

  else
  {
    if (qword_1EBF1C160 != -1)
    {
      swift_once();
    }

    v28 = qword_1EBF20D90;
  }

  v94 = type metadata accessor for GraphView(0, a4, a5, v26);

  sub_1C1E44ABC(v28, v130);

  v126 = v130[8];
  v127 = v130[9];
  v128 = v130[10];
  v129 = v130[11];
  v122 = v130[4];
  v123 = v130[5];
  v124 = v130[6];
  v125 = v130[7];
  v118 = v130[0];
  v119 = v130[1];
  v120 = v130[2];
  v121 = v130[3];
  sub_1C1E52C4C();
  sub_1C1E52C3C();
  v29 = a2[3];
  *&v115[0] = a2[2];
  *(&v115[0] + 1) = v29;

  MEMORY[0x1C69102A0](0x66322E253DLL, 0xE500000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC90, &qword_1C1E5A8B8);
  v30 = swift_allocObject();
  v92 = xmmword_1C1E57DD0;
  v31 = MEMORY[0x1E69E63B0];
  *(v30 + 16) = xmmword_1C1E57DD0;
  v93 = a1;
  v32 = MEMORY[0x1E69E6438];
  *(v30 + 56) = v31;
  *(v30 + 64) = v32;
  *(v30 + 32) = a9;
  sub_1C1E5461C();

  sub_1C1E52C2C();

  sub_1C1E52C3C();
  *&v115[0] = 32;
  *(&v115[0] + 1) = 0xE100000000000000;
  MEMORY[0x1C69102A0](a2[4], a2[5]);
  MEMORY[0x1C69102A0](0x66322E253DLL, 0xE500000000000000);
  v33 = swift_allocObject();
  *(v33 + 16) = v92;
  *(v33 + 56) = MEMORY[0x1E69E63B0];
  *(v33 + 64) = v32;
  *(v33 + 32) = a10;
  sub_1C1E5461C();

  sub_1C1E52C2C();

  sub_1C1E52C3C();
  sub_1C1E52C7C();
  v34 = sub_1C1E5314C();
  v36 = v35;
  v38 = v37;
  v39 = sub_1C1E5310C();
  v41 = v40;
  v43 = v42;
  sub_1C1DECF2C(v34, v36, v38 & 1);

  LODWORD(v115[0]) = sub_1C1E52D3C();
  v44 = sub_1C1E530FC();
  v46 = v45;
  LOBYTE(v34) = v47;
  sub_1C1DECF2C(v39, v41, v43 & 1);

  sub_1C1E5366C();
  v95 = sub_1C1E5312C();
  *&v92 = v48;
  LOBYTE(v32) = v49;
  v51 = v50;

  sub_1C1DECF2C(v44, v46, v34 & 1);

  LOBYTE(v44) = sub_1C1E5300C();
  sub_1C1E5264C();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  LOBYTE(v32) = v32 & 1;
  LOBYTE(v115[0]) = v32;
  LOBYTE(v102) = 0;
  v60 = sub_1C1E538DC();
  v62 = v61;
  v63 = &v20[*(v96 + 36)];
  v64 = *(sub_1C1E529CC() + 20);
  v65 = *MEMORY[0x1E697F468];
  v66 = sub_1C1E52C8C();
  (*(*(v66 - 8) + 104))(&v63[v64], v65, v66);
  __asm { FMOV            V0.2D, #12.0 }

  *v63 = _Q0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCD8, &qword_1C1E5A948);
  sub_1C1E5388C();
  *&v63[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCE0, &qword_1C1E5A950) + 36)] = 0x3FE0000000000000;
  v72 = &v63[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCE8, &qword_1C1E5A958) + 36)];
  *v72 = v60;
  v72[1] = v62;
  v73 = v92;
  *v20 = v95;
  *(v20 + 1) = v73;
  v20[16] = v32;
  *(v20 + 3) = v51;
  v20[32] = v44;
  *(v20 + 5) = v53;
  *(v20 + 6) = v55;
  *(v20 + 7) = v57;
  *(v20 + 8) = v59;
  v20[72] = 0;
  v74 = v94;
  v131.origin.x = sub_1C1E3B478(v94);
  v75 = CGRectGetMinY(v131) + 12.0;
  v132.origin.x = sub_1C1E3B478(v74);
  MaxY = CGRectGetMaxY(v132);
  if (a8 + -24.0 > v75)
  {
    v77 = a8 + -24.0;
  }

  else
  {
    v77 = v75;
  }

  if (MaxY >= v77)
  {
    v78 = v77;
  }

  else
  {
    v78 = MaxY;
  }

  v79 = v97;
  sub_1C1DC18D0(v20, v97, &qword_1EBF1DCC8, &qword_1C1E5A938);
  v80 = v99;
  v81 = (v79 + *(v98 + 36));
  *v81 = a7;
  v81[1] = v78;
  sub_1C1DC18D0(v79, v80, &qword_1EBF1DCD0, &qword_1C1E5A940);
  v82 = v100;
  sub_1C1DC1424(v80, v100, &qword_1EBF1DCD0, &qword_1C1E5A940);
  v110 = v126;
  v111 = v127;
  v112 = v128;
  v113 = v129;
  v106 = v122;
  v107 = v123;
  v108 = v124;
  v109 = v125;
  v102 = v118;
  v103 = v119;
  v104 = v120;
  v105 = v121;
  *&v114 = a7;
  *(&v114 + 1) = a8;
  v83 = v129;
  v84 = v101;
  v101[10] = v128;
  v84[11] = v83;
  v85 = v109;
  v84[6] = v108;
  v84[7] = v85;
  v86 = v111;
  v84[8] = v110;
  v84[9] = v86;
  v87 = v105;
  v84[2] = v104;
  v84[3] = v87;
  v88 = v107;
  v84[4] = v106;
  v84[5] = v88;
  v89 = v103;
  *v84 = v102;
  v84[1] = v89;
  v84[12] = v114;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCF0, &qword_1C1E5A960);
  sub_1C1DC1424(v82, v84 + *(v90 + 48), &qword_1EBF1DCD0, &qword_1C1E5A940);
  sub_1C1DC1424(&v102, v115, &qword_1EBF1DCF8, &qword_1C1E5A968);
  sub_1C1DC1870(v80, &qword_1EBF1DCD0, &qword_1C1E5A940);
  sub_1C1DC1870(v82, &qword_1EBF1DCD0, &qword_1C1E5A940);
  v115[8] = v126;
  v115[9] = v127;
  v115[10] = v128;
  v115[11] = v129;
  v115[4] = v122;
  v115[5] = v123;
  v115[6] = v124;
  v115[7] = v125;
  v115[0] = v118;
  v115[1] = v119;
  v115[2] = v120;
  v115[3] = v121;
  v116 = a7;
  v117 = a8;
  return sub_1C1DC1870(v115, &qword_1EBF1DCF8, &qword_1C1E5A968);
}

__n128 sub_1C1E44ABC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1E538DC();
  v6 = v5;
  sub_1C1E47F5C(a1, &v13);
  v32 = v21;
  v33 = v22;
  v34 = v23;
  v28 = v17;
  v29 = v18;
  v30 = v19;
  v31 = v20;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v35[8] = v21;
  v35[9] = v22;
  v35[10] = v23;
  v35[4] = v17;
  v35[5] = v18;
  v35[6] = v19;
  v35[7] = v20;
  v35[0] = v13;
  v35[1] = v14;
  v35[2] = v15;
  v35[3] = v16;
  sub_1C1DC1424(&v24, &v12, &qword_1EBF1DD00, &qword_1C1E5A970);
  sub_1C1DC1870(v35, &qword_1EBF1DD00, &qword_1C1E5A970);
  *a2 = v4;
  *(a2 + 8) = v6;
  v7 = v33;
  *(a2 + 144) = v32;
  *(a2 + 160) = v7;
  *(a2 + 176) = v34;
  v8 = v29;
  *(a2 + 80) = v28;
  *(a2 + 96) = v8;
  v9 = v31;
  *(a2 + 112) = v30;
  *(a2 + 128) = v9;
  v10 = v25;
  *(a2 + 16) = v24;
  *(a2 + 32) = v10;
  result = v27;
  *(a2 + 48) = v26;
  *(a2 + 64) = result;
  return result;
}

uint64_t sub_1C1E44BD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X4>, _OWORD *a4@<X8>)
{
  v17[1] = a1;
  v18 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D540, &qword_1C1E58F98);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - v7;
  v9 = sub_1C1E522DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  swift_getKeyPath();
  v19 = v13;
  sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v14 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartProxy;
  swift_beginAccess();
  sub_1C1DC1424(v13 + v14, v8, &qword_1EBF1D540, &qword_1C1E58F98);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_1C1DC1870(v8, &qword_1EBF1D540, &qword_1C1E58F98);
    *a4 = 0u;
    a4[1] = 0u;
  }

  else
  {
    v16 = (*(v10 + 32))(v12, v8, v9);
    result = v18(v16);
    if (result)
    {
      type metadata accessor for CGRect(0);
      sub_1C1E5286C();

      return (*(v10 + 8))(v12, v9);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C1E44E58(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, double, double, double, double))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = type metadata accessor for GraphView(0, a3, a4, a4);
  return a5(v10, v6, v7, v8, v9);
}

uint64_t sub_1C1E44EBC@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  WitnessTable = a2;
  v119 = a1;
  v121 = a5;
  v113 = type metadata accessor for GraphView(0, a3, a4, a4);
  v106 = *(v113 - 8);
  v104 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v105 = &v94 - v7;
  v110 = sub_1C1E52DBC();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v108 = (&v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2A0, &qword_1C1E58810);
  v131 = a3;
  v132 = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = sub_1C1E0F2FC();
  v114 = a3;
  v131 = a3;
  v115 = a4;
  v132 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v125 = v9;
  v131 = v9;
  v124 = OpaqueTypeMetadata2;
  v132 = OpaqueTypeMetadata2;
  v123 = v11;
  v133 = v11;
  v13 = OpaqueTypeConformance2;
  v134 = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeMetadata2();
  v101 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v111 = &v94 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D880, &qword_1C1E5A340);
  v102 = v14;
  v16 = sub_1C1E5299C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v112 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v94 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v94 - v22;
  v117 = type metadata accessor for Function(0);
  v118 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v100 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v116 = &v94 - v26;
  v27 = sub_1C1E549CC();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v120 = &v94 - v32;
  v33 = *WitnessTable;
  swift_getKeyPath();
  v131 = v33;
  sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v34 = v33 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  swift_beginAccess();
  if (*(v34 + 16))
  {
    goto LABEL_10;
  }

  v107 = v30;
  v96 = v28;
  v97 = v17;
  v98 = v27;
  v35 = v13;
  v36 = v123;
  v37 = v125;
  v39 = *v34;
  v38 = *(v34 + 8);
  sub_1C1E522BC();
  if (v133)
  {
LABEL_9:
    v27 = v98;
    v17 = v97;
    v28 = v96;
    v30 = v107;
LABEL_10:
    (*(v17 + 56))(v30, 1, 1, v16);
    v131 = v125;
    v86 = v124;
    v132 = v124;
    v87 = v123;
    v133 = v123;
    v134 = v13;
    v88 = swift_getOpaqueTypeConformance2();
    v89 = sub_1C1DC1124(&qword_1EBF1D998, &qword_1EBF1D880, &qword_1C1E5A340, MEMORY[0x1E69802E0]);
    v147 = v88;
    v148 = v89;
    swift_getWitnessTable();
    v90 = v120;
    (*(v28 + 16))(v120, v30, v27);
    v85 = *(v28 + 8);
    v85(v30, v27);
    v66 = v125;
    v76 = v86;
    v65 = v87;
    v84 = v90;
    goto LABEL_11;
  }

  v40 = *&v132;
  v41 = *&v131;
  sub_1C1E24AC8();
  v43 = v42;
  sub_1C1E24AC8();
  sub_1C1E25C2C(round(vabdd_f64(v43, v44)));
  sub_1C1E24334(v23, v41, v40, v45);
  if ((*(v118 + 48))(v23, 1, v117) == 1)
  {
    sub_1C1DC1870(v23, &qword_1EBF1C758, &qword_1C1E579C0);
    goto LABEL_9;
  }

  v46 = v23;
  v47 = v116;
  v48 = sub_1C1E4D6B4(v46, v116, type metadata accessor for Function);
  *&v131 = v41;
  v149 = (*(v47 + 64))(v48, v41);
  sub_1C1E522CC();
  if ((v49 & 1) != 0 || (v50 = *(WitnessTable + 1)) == 0)
  {
    sub_1C1E4E154(v47, type metadata accessor for Function);
    goto LABEL_9;
  }

  v117 = *(WitnessTable + 2);
  v119 = v50;

  v51 = v113;
  sub_1C1E3B3B4(v113);
  sub_1C1E3B3B4(v51);
  sub_1C1E3B3B4(v51);
  sub_1C1E538DC();
  sub_1C1E5281C();
  v141 = v150;
  v140 = v152;
  *&v131 = 0.0;
  *&v132 = v149;
  LOBYTE(v133) = v150;
  *(&v133 + 1) = *v143;
  HIDWORD(v133) = *&v143[3];
  v134 = v151;
  v135 = v152;
  *v136 = *v142;
  *&v136[3] = *&v142[3];
  v137 = v153;
  v138 = v39;
  v139 = v38;
  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = 0;
  v52[4] = v33;
  v53 = swift_allocObject();
  v53[2] = 0;
  v53[3] = 0;
  v53[4] = v33;
  swift_retain_n();
  sub_1C1E537BC();
  v95 = v128;
  v94 = v129;
  v54 = v130;
  v55 = sub_1C1E5372C();
  v56 = v108;
  *v108 = v55;
  (*(v109 + 104))(v56, *MEMORY[0x1E697C8C0], v110);
  v57 = v100;
  sub_1C1E4C8A0(v47, v100, type metadata accessor for Function);
  v58 = (*(v118 + 80) + 48) & ~*(v118 + 80);
  v59 = swift_allocObject();
  v60 = v115;
  v59[2] = v114;
  v59[3] = v60;
  v61 = v117;
  v59[4] = v119;
  v59[5] = v61;
  sub_1C1E4D6B4(v57, v59 + v58, type metadata accessor for Function);

  v118 = swift_checkMetadataState();
  v13 = v35;
  v62 = v54;
  v63 = v108;
  v64 = v37;
  sub_1C1DD73C0(v95, v94, v62, v108, 4, sub_1C1E4D71C, v59, v37, v118, v36, v35);

  v65 = v36;
  v66 = v64;

  (*(v109 + 8))(v63, v110);
  v67 = v106;
  v68 = v105;
  v69 = v113;
  (*(v106 + 16))(v105, WitnessTable, v113);
  v70 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v71 = swift_allocObject();
  v72 = v115;
  *(v71 + 16) = v114;
  *(v71 + 24) = v72;
  (*(v67 + 32))(v71 + v70, v68, v69);
  type metadata accessor for CGSize(0);
  v131 = v66;
  v132 = v118;
  v133 = v65;
  v134 = v35;
  v73 = swift_getOpaqueTypeConformance2();
  sub_1C1E4D7A4(&qword_1EBF1DCA8, type metadata accessor for CGSize, MEMORY[0x1E695EF98]);
  v74 = v102;
  v75 = v111;
  sub_1C1E5339C();
  v76 = v124;

  sub_1C1DD0EB8(v119, v117);
  (*(v101 + 8))(v75, v74);
  sub_1C1E4E154(v116, type metadata accessor for Function);
  v77 = sub_1C1DC1124(&qword_1EBF1D998, &qword_1EBF1D880, &qword_1C1E5A340, MEMORY[0x1E69802E0]);
  v126 = v73;
  v127 = v77;
  WitnessTable = swift_getWitnessTable();
  v78 = v103;
  v79 = v112;
  sub_1C1E105BC();
  v80 = v97;
  v81 = *(v97 + 8);
  v81(v79, v16);
  sub_1C1E105BC();
  v81(v78, v16);
  v82 = v107;
  (*(v80 + 32))(v107, v79, v16);
  (*(v80 + 56))(v82, 0, 1, v16);
  v83 = v96;
  v84 = v120;
  v27 = v98;
  (*(v96 + 16))(v120, v82, v98);
  v85 = *(v83 + 8);
  v85(v107, v27);
LABEL_11:
  v131 = v66;
  v132 = v76;
  v133 = v65;
  v134 = v13;
  v91 = swift_getOpaqueTypeConformance2();
  v92 = sub_1C1DC1124(&qword_1EBF1D998, &qword_1EBF1D880, &qword_1C1E5A340, MEMORY[0x1E69802E0]);
  v145 = v91;
  v146 = v92;
  v144 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C1E105BC();
  return (v85)(v84, v27);
}

uint64_t sub_1C1E45F9C@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24[1] = a2;
  v25 = a1;
  v26 = a6;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v12;
  v28 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v24 - v19;
  v21 = type metadata accessor for Function(0);
  v25(a3 + *(v21 + 48));
  sub_1C1E533DC();
  (*(v9 + 8))(v11, a4);
  v27 = a4;
  v28 = a5;
  swift_getOpaqueTypeConformance2();
  sub_1C1E105BC();
  v22 = *(v15 + 8);
  v22(v17, OpaqueTypeMetadata2);
  sub_1C1E105BC();
  return (v22)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_1C1E461D8()
{
  v1 = type metadata accessor for Function(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = (v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v5 = sub_1C1E51E8C(0x666F206870617247, 0xEB00000000402520, 0, 0, qword_1EDE75DC0, 0, 0xE000000000000000, 0xD00000000000006CLL, 0x80000001C1E5C9D0);
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC90, &qword_1C1E5A8B8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C1E57DD0;
  v9 = *v0;
  v10 = *(*v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v10 lock];
  swift_getKeyPath();
  v34 = v9;
  sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v11 = *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v10 unlock];
  v12 = *(v11 + 16);
  if (v12)
  {
    v31 = v8;
    v32 = v5;
    v33 = v7;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1C1E26720(0, v12, 0);
    v13 = v34;
    v14 = *(v2 + 80);
    v30[1] = v11;
    v15 = v11 + ((v14 + 32) & ~v14);
    v16 = *(v2 + 72);
    do
    {
      sub_1C1E4C8A0(v15, v4, type metadata accessor for Function);
      v17 = *v4;
      v18 = v4[1];

      sub_1C1E4E154(v4, type metadata accessor for Function);
      v34 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1C1E26720((v19 > 1), v20 + 1, 1);
        v13 = v34;
      }

      *(v13 + 16) = v20 + 1;
      v21 = v13 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v15 += v16;
      --v12;
    }

    while (v12);

    v8 = v31;
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v34 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5A8, &qword_1C1E5A8C0);
  sub_1C1DC1124(&qword_1EBF1DCA0, &qword_1EBF1D5A8, &qword_1C1E5A8C0, MEMORY[0x1E69E6310]);
  v22 = sub_1C1E5458C();
  v24 = v23;

  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1C1E4D660(v25, v26, v27);
  *(v8 + 32) = v22;
  *(v8 + 40) = v24;
  v28 = sub_1C1E545CC();

  return v28;
}

uint64_t sub_1C1E465C0(uint64_t a1)
{
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  sub_1C1E51E8C(0xD000000000000042, 0x80000001C1E5C840, 0, 0, qword_1EDE75DC0, 0, 0xE000000000000000, 0xD00000000000013ALL, 0x80000001C1E5C890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC90, &qword_1C1E5A8B8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C1E5A300;
  sub_1C1E24AC8();
  v3 = sub_1C1E4B9FC(v2);
  v5 = v4;
  v6 = MEMORY[0x1E69E6158];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1C1E4D660(v3, v4, v7);
  *(v1 + 64) = v8;
  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  sub_1C1E24AC8();
  v10 = sub_1C1E4B9FC(v9);
  *(v1 + 96) = v6;
  *(v1 + 104) = v8;
  *(v1 + 72) = v10;
  *(v1 + 80) = v11;
  sub_1C1E24CD4();
  v13 = sub_1C1E4B9FC(v12);
  *(v1 + 136) = v6;
  *(v1 + 144) = v8;
  *(v1 + 112) = v13;
  *(v1 + 120) = v14;
  sub_1C1E24CD4();
  v16 = sub_1C1E4B9FC(v15);
  *(v1 + 176) = v6;
  *(v1 + 184) = v8;
  *(v1 + 152) = v16;
  *(v1 + 160) = v17;
  v18 = sub_1C1E545CC();

  return v18;
}

uint64_t sub_1C1E46780@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a4;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC70, &qword_1C1E5A898);
  v92 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v103 = &v89 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v102 = &v89 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v89 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v113 = &v89 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v100 = &v89 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v99 = &v89 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v98 = &v89 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v112 = &v89 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v111 = &v89 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v110 = &v89 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v109 = &v89 - v29;
  v104 = a2;
  v117 = a3;
  v94 = type metadata accessor for GraphView(0, a2, a3, v30);
  v31 = *(v94 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v89 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D430, &qword_1C1E58AC8);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v89 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D418, &qword_1C1E5A8A0);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v97 = &v89 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v108 = &v89 - v41;
  v114 = a1;
  v42 = *a1;
  swift_getKeyPath();
  v119 = v42;
  sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v43 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter;
  swift_beginAccess();
  if (*(v42 + v43) == 1)
  {
    v44 = *(v31 + 16);
    v45 = v31;
    v116 = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v46 = v93;
    v115 = v34;
    v47 = v94;
    v118 = v44;
    v44(v93, v114, v94);
    v48 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v49 = swift_allocObject();
    v50 = v117;
    *(v49 + 16) = v104;
    *(v49 + 24) = v50;
    v51 = v45;
    (*(v45 + 32))(v49 + v48, v46, v47);
    sub_1C1E5373C();
    v52 = v108;
    v53 = v37;
    v54 = v115;
    (*(v35 + 32))(v108, v53, v115);
    (*(v35 + 56))(v52, 0, 1, v54);
    v55 = v50;
  }

  else
  {
    (*(v35 + 56))(v108, 1, 1, v34);
    v51 = v31;
    v118 = *(v31 + 16);
    v116 = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v55 = v117;
  }

  v56 = v104;
  v57 = v93;
  v58 = v114;
  v59 = v94;
  v118(v93, v114, v94);
  v96 = *(v51 + 80);
  v60 = (v96 + 32) & ~v96;
  v107 = v32;
  v61 = swift_allocObject();
  *(v61 + 16) = v56;
  *(v61 + 24) = v55;
  v95 = *(v51 + 32);
  v95(v61 + v60, v57, v59);
  v106 = v51 + 32;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC78, &qword_1C1E5A8A8);
  v115 = sub_1C1DC1124(&qword_1EBF1DC80, &qword_1EBF1DC78, &qword_1C1E5A8A8, MEMORY[0x1E6981F48]);
  sub_1C1E5373C();
  v62 = v118;
  v118(v57, v58, v59);
  v63 = swift_allocObject();
  v64 = v104;
  v65 = v117;
  *(v63 + 16) = v104;
  *(v63 + 24) = v65;
  v95(v63 + v60, v57, v59);
  sub_1C1E5373C();
  v62(v57, v58, v59);
  v66 = swift_allocObject();
  *(v66 + 16) = v64;
  *(v66 + 24) = v65;
  v67 = v95;
  v95(v66 + v60, v57, v59);
  sub_1C1E5373C();
  v68 = v114;
  v118(v57, v114, v59);
  v69 = swift_allocObject();
  v70 = v117;
  *(v69 + 16) = v64;
  *(v69 + 24) = v70;
  v67(v69 + v60, v57, v59);
  sub_1C1E5373C();
  v118(v57, v68, v59);
  v71 = swift_allocObject();
  v72 = v117;
  *(v71 + 16) = v64;
  *(v71 + 24) = v72;
  v67(v71 + v60, v57, v59);
  sub_1C1E5373C();
  v118(v57, v114, v59);
  v73 = swift_allocObject();
  *(v73 + 16) = v64;
  *(v73 + 24) = v72;
  v67(v73 + v60, v57, v59);
  v74 = v99;
  sub_1C1E5373C();
  v75 = v97;
  sub_1C1DC1424(v108, v97, &qword_1EBF1D418, &qword_1C1E5A8A0);
  v76 = v92;
  v77 = *(v92 + 16);
  v78 = v100;
  v79 = v89;
  v77(v100, v109, v89);
  v77(v113, v110, v79);
  v80 = v101;
  v77(v101, v111, v79);
  v77(v102, v112, v79);
  v81 = v98;
  v77(v103, v98, v79);
  v82 = v91;
  v77(v91, v74, v79);
  v83 = v90;
  sub_1C1DC1424(v75, v90, &qword_1EBF1D418, &qword_1C1E5A8A0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC88, &qword_1C1E5A8B0);
  v77((v83 + v84[12]), v78, v79);
  v77((v83 + v84[16]), v113, v79);
  v77((v83 + v84[20]), v80, v79);
  v85 = v102;
  v77((v83 + v84[24]), v102, v79);
  v86 = v103;
  v77((v83 + v84[28]), v103, v79);
  v77((v83 + v84[32]), v82, v79);
  v87 = *(v76 + 8);
  v87(v99, v79);
  v87(v81, v79);
  v87(v112, v79);
  v87(v111, v79);
  v87(v110, v79);
  v87(v109, v79);
  sub_1C1DC1870(v108, &qword_1EBF1D418, &qword_1C1E5A8A0);
  v87(v82, v79);
  v87(v86, v79);
  v87(v85, v79);
  v87(v101, v79);
  v87(v113, v79);
  v87(v100, v79);
  return sub_1C1DC1870(v97, &qword_1EBF1D418, &qword_1C1E5A8A0);
}

double sub_1C1E474DC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1E536AC();
  sub_1C1E52C6C();
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE75DC0;
  v4 = sub_1C1E5314C();
  v6 = v5;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v8 = v7 & 1;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = v9;

  sub_1C1E082A0(v4, v6, v8);

  sub_1C1DECF2C(v4, v6, v8);

  return result;
}

double sub_1C1E4763C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1E536AC();
  sub_1C1E52C6C();
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE75DC0;
  v4 = sub_1C1E5314C();
  v6 = v5;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v8 = v7 & 1;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = v9;

  sub_1C1E082A0(v4, v6, v8);

  sub_1C1DECF2C(v4, v6, v8);

  return result;
}

double sub_1C1E4779C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1E536AC();
  sub_1C1E52C6C();
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE75DC0;
  v4 = sub_1C1E5314C();
  v6 = v5;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v8 = v7 & 1;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = v9;

  sub_1C1E082A0(v4, v6, v8);

  sub_1C1DECF2C(v4, v6, v8);

  return result;
}

double sub_1C1E47904@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1E536AC();
  sub_1C1E52C6C();
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE75DC0;
  v4 = sub_1C1E5314C();
  v6 = v5;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v8 = v7 & 1;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = v9;

  sub_1C1E082A0(v4, v6, v8);

  sub_1C1DECF2C(v4, v6, v8);

  return result;
}

void sub_1C1E47A6C(uint64_t *a1, uint64_t a2, uint64_t a3, double (*a4)(uint64_t), uint64_t *a5)
{
  v7 = *a1;
  v8 = (a4)();
  v10 = v9 - a4(v8);
  v11 = *a5;
  swift_beginAccess();
  *(v7 + v11) = v10 + *(v7 + v11);
  sub_1C1E1A2C0();
}

double sub_1C1E47AF4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1E536AC();
  sub_1C1E52C6C();
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE75DC0;
  v4 = sub_1C1E5314C();
  v6 = v5;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v8 = v7 & 1;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = v9;

  sub_1C1E082A0(v4, v6, v8);

  sub_1C1DECF2C(v4, v6, v8);

  return result;
}

double sub_1C1E47C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C1E5395C();
  sub_1C1E5291C();

  return result;
}

void sub_1C1E47CBC(uint64_t *a1, uint64_t a2, uint64_t a3, double (*a4)(uint64_t), uint64_t *a5)
{
  v7 = *a1;
  v8 = (a4)();
  v10 = v9 - a4(v8);
  v11 = *a5;
  swift_beginAccess();
  *(v7 + v11) = *(v7 + v11) - v10;
  sub_1C1E1A2C0();
}

double sub_1C1E47D44@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1E536AC();
  sub_1C1E52C6C();
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE75DC0;
  v4 = sub_1C1E5314C();
  v6 = v5;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v8 = v7 & 1;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = v9;

  sub_1C1E082A0(v4, v6, v8);

  sub_1C1DECF2C(v4, v6, v8);

  return result;
}

double sub_1C1E47EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for GraphView(0, a2, a3, a4);
  v5 = sub_1C1E3AC24(v4);
  v6 = 0;
  if ((v5 & 1) == 0)
  {
    v6 = sub_1C1E5395C();
  }

  MEMORY[0x1EEE9AC00](v6);
  sub_1C1E5291C();

  return result;
}

uint64_t sub_1C1E47F5C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v36 = a1;
  v4 = sub_1C1E5353C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1E538DC();
  sub_1C1E5281C();
  v8 = v50;
  v9 = v51;
  v34 = v51;
  v10 = v52;
  v31 = v49;
  v32 = v53;
  v37 = v54;
  v11 = *MEMORY[0x1E69814C8];
  v12 = *(v5 + 104);
  v12(v7, v11, v4);
  v30 = sub_1C1E5368C();
  LOBYTE(v74) = v8;
  v35 = v8;
  LOBYTE(v69[0]) = v10;
  v33 = v10;
  v29 = sub_1C1E5361C();
  v12(v7, v11, v4);
  v13 = sub_1C1E5368C();
  sub_1C1E538DC();
  sub_1C1E5281C();
  v15 = v31;
  v14 = v32;
  *&v55 = v31;
  BYTE8(v55) = v8;
  HIDWORD(v55) = *&v48[3];
  *(&v55 + 9) = *v48;
  *&v56 = v9;
  BYTE8(v56) = v10;
  HIDWORD(v56) = *&v47[3];
  *(&v56 + 9) = *v47;
  *&v57 = v32;
  *(&v57 + 1) = v37;
  v16 = v29;
  v17 = v30;
  *&v58 = v30;
  *(&v58 + 1) = 0x4000000000000000;
  v59 = 0;
  v60 = 0;
  v61 = v29;
  *&v62 = v13;
  v38 = v55;
  v39 = v56;
  *&v43[0] = v29;
  v41 = v58;
  v42 = 0u;
  v40 = v57;
  *(&v62 + 1) = 0x3FF0000000000000;
  v63 = 0;
  v64 = 0;
  v67 = v46;
  v19 = v45;
  v18 = v46;
  v66 = v45;
  v20 = v44;
  v65 = v44;
  v21 = v36;
  v68 = v36;
  *(&v43[1] + 8) = 0u;
  *(v43 + 8) = v62;
  *(&v43[4] + 8) = v46;
  *(&v43[5] + 1) = v36;
  *(&v43[3] + 8) = v45;
  *(&v43[2] + 8) = v44;
  v22 = v56;
  *a2 = v55;
  a2[1] = v22;
  v23 = v43[0];
  a2[4] = v42;
  a2[5] = v23;
  v24 = v41;
  a2[2] = v40;
  a2[3] = v24;
  v25 = v43[5];
  a2[9] = v43[4];
  a2[10] = v25;
  v26 = v43[3];
  a2[7] = v43[2];
  a2[8] = v26;
  a2[6] = v43[1];
  v69[0] = v13;
  v69[1] = 0x3FF0000000000000;
  v69[3] = 0;
  v69[2] = 0;
  v70 = v20;
  v71 = v19;
  v72 = v18;
  v73 = v21;

  sub_1C1DC1424(&v55, &v74, &qword_1EBF1DD08, &qword_1C1E5A978);
  sub_1C1DC1424(&v62, &v74, &qword_1EBF1DD10, &unk_1C1E5A980);
  sub_1C1DC1870(v69, &qword_1EBF1DD10, &unk_1C1E5A980);
  v74 = v15;
  v75 = v35;
  *v76 = *v48;
  *&v76[3] = *&v48[3];
  v77 = v34;
  v78 = v33;
  *v79 = *v47;
  *&v79[3] = *&v47[3];
  v80 = v14;
  v81 = v37;
  v82 = v17;
  v83 = 0x4000000000000000;
  v84 = 0;
  v85 = 0;
  v86 = v16;
  return sub_1C1DC1870(&v74, &qword_1EBF1DD08, &qword_1C1E5A978);
}

void sub_1C1E48314(uint64_t a1)
{
  type metadata accessor for GraphViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1C1E486F4(319, &qword_1EDE750B8, &qword_1EBF1C1B8, "2E", MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C1E487A8(319, &qword_1EBF1DAA0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1C1E48758(319, &qword_1EBF1C518, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1C1E486F4(319, &qword_1EBF1DAA8, &qword_1EBF1C778, &qword_1C1E56FC8, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1C1E48758(319, &qword_1EBF1CA20, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
            if (v6 <= 0x3F)
            {
              sub_1C1E48758(319, &qword_1EBF1DAB0, MEMORY[0x1E69815C0], MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
              {
                sub_1C1E486F4(319, &qword_1EBF1DAB8, &qword_1EBF1C758, &qword_1C1E579C0, MEMORY[0x1E6981790]);
                if (v8 <= 0x3F)
                {
                  sub_1C1E48758(319, &qword_1EBF1DAC0, &type metadata for SingleDragState, MEMORY[0x1E6981790]);
                  if (v9 <= 0x3F)
                  {
                    sub_1C1E48758(319, &qword_1EBF1DAC8, &type metadata for DragState, MEMORY[0x1E6981790]);
                    if (v10 <= 0x3F)
                    {
                      sub_1C1E48758(319, &qword_1EBF1DAD0, &type metadata for MagnifyState, MEMORY[0x1E6981790]);
                      if (v11 <= 0x3F)
                      {
                        sub_1C1E48758(319, &qword_1EBF1DAD8, &type metadata for TapState, MEMORY[0x1E6981790]);
                        if (v12 <= 0x3F)
                        {
                          sub_1C1E487A8(319, &qword_1EBF1DAE0, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
                          if (v13 <= 0x3F)
                          {
                            sub_1C1E487A8(319, &qword_1EBF1DAE8, type metadata accessor for CGRect, MEMORY[0x1E6981790]);
                            if (v14 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C1E486F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C1E48758(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}