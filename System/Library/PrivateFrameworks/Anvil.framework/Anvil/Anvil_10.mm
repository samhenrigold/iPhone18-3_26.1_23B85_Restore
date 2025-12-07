uint64_t sub_1DD9F561C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  MEMORY[0x1EEE9AC00](SessionResponse);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84830, &qword_1DDA227D0);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for UploadDocumentResponse(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0C8B4();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = a1;
  v12 = v23;
  v13 = v24;
  v27 = 0;
  *v11 = sub_1DDA15280();
  v11[1] = v14;
  v26 = 1;
  v11[2] = sub_1DDA15280();
  v11[3] = v15;
  v25 = 2;
  sub_1DD9E4B98(&qword_1ECD837F8, type metadata accessor for CreateSessionResponse, &unk_1DDA1CBD4);
  v19 = v11;
  sub_1DDA152C0();
  (*(v12 + 8))(v8, v13);
  v16 = *(v9 + 24);
  v17 = v19;
  sub_1DD9FEFD0(v5, v19 + v16, type metadata accessor for CreateSessionResponse);
  sub_1DD9FF500(v17, v21, type metadata accessor for UploadDocumentResponse);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_1DD9FF568(v17, type metadata accessor for UploadDocumentResponse);
}

double sub_1DD9F59D4@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1DD9F5A44(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (*(v1 + 48))
  {
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
    sub_1DDA14BC0();
  }

  else
  {
    MEMORY[0x1E12B8440](0);
    sub_1DDA14BC0();
    if (!v2)
    {
      return sub_1DDA15590();
    }

    sub_1DDA15590();
  }

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9F5B38(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 48);
  sub_1DDA15570();
  if (v3)
  {
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
    sub_1DDA14BC0();
  }

  else
  {
    MEMORY[0x1E12B8440](0);
    sub_1DDA14BC0();
    if (!v2)
    {
      sub_1DDA15590();
      return sub_1DDA155B0();
    }

    sub_1DDA15590();
  }

  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

BOOL sub_1DD9F5C1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1DD9F8AE4(v5, v7);
}

uint64_t sub_1DD9F5C78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5F6E6F6973736573;
  v4 = 0xEA00000000006469;
  if (v2 != 1)
  {
    v3 = 0x6E6F6973736573;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0x5F6E6F6973736573;
  v8 = 0xEA00000000006469;
  if (*a2 != 1)
  {
    v7 = 0x6E6F6973736573;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9F5D7C()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F5E18(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9F5EA0(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9F5F38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA0D3BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9F5F68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xEA00000000006469;
  v5 = 0x5F6E6F6973736573;
  if (v2 != 1)
  {
    v5 = 0x6E6F6973736573;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9F5FC0()
{
  v1 = 0x5F6E6F6973736573;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973736573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_1DD9F6014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA0D3BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9F603C(uint64_t a1)
{
  v2 = sub_1DDA0C8B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F6078(uint64_t a1)
{
  v2 = sub_1DDA0C8B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F6100(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  return sub_1DD9CF388();
}

uint64_t sub_1DD9F61A4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84858, &qword_1DDA227E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0C9B0();
  sub_1DDA15650();
  v8[15] = 0;
  sub_1DDA15340();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1DDA15370();
  v8[13] = 2;
  sub_1DDA15340();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DD9F6344(uint64_t a1)
{
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v1 + 16));
  sub_1DDA14BC0();
  v2 = *(v1 + 88);
  if (v2 == 255)
  {
    return sub_1DDA15590();
  }

  v3 = *(v1 + 64);
  sub_1DDA15590();
  if ((v2 & 1) == 0)
  {
    MEMORY[0x1E12B8440](0);
    sub_1DDA14BC0();
    if (v3)
    {
      sub_1DDA15590();
      goto LABEL_6;
    }

    return sub_1DDA15590();
  }

  MEMORY[0x1E12B8440](1);
  sub_1DDA14BC0();
  sub_1DDA14BC0();
LABEL_6:

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9F6458(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x755F64616F6C7075;
    v6 = 0x5F6E6F6973736573;
    if (a1 != 8)
    {
      v6 = 0x6E6F6973736573;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 1702521203;
    if (a1 != 5)
    {
      v7 = 0x7079745F656D696DLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x5F64657461657263;
    v3 = 0x737574617473;
    if (a1 != 3)
    {
      v3 = 1701667182;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7463656A626FLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DD9F6588(uint64_t a1)
{
  v2 = sub_1DDA13680();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v1 + 32));
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v1 + 72));
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  v9 = v1 + *(type metadata accessor for TwoPhaseUploadDocumentResponse(0) + 52);
  sub_1DDA14BC0();
  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DDA14AD0();
  sub_1DDA14AD0();
  sub_1DD90ADB4(v9 + *(SessionResponse + 28), v8, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1DDA15590();
    sub_1DDA14AD0();
    (*(v3 + 8))(v5, v2);
  }

  v11 = v9 + *(SessionResponse + 32);
  if (*v11 == 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v11 + 8);
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
  }

  return MEMORY[0x1E12B8440](v12);
}

uint64_t sub_1DD9F68CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  MEMORY[0x1EEE9AC00](SessionResponse);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84868, &qword_1DDA227E8);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v24 - v7;
  v9 = type metadata accessor for TwoPhaseUploadDocumentResponse(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1DDA0CA04();
  v30 = v8;
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v26 = v9;
  v27 = v6;
  v13 = v29;
  v42 = 0;
  *v11 = sub_1DDA15280();
  v11[1] = v15;
  v41 = 1;
  v11[2] = sub_1DDA15280();
  v11[3] = v16;
  v40 = 2;
  v11[4] = sub_1DDA152B0();
  v39 = 3;
  v11[5] = sub_1DDA15280();
  v11[6] = v17;
  v38 = 4;
  v11[7] = sub_1DDA15280();
  v11[8] = v18;
  v37 = 5;
  v11[9] = sub_1DDA152B0();
  v36 = 6;
  v11[10] = sub_1DDA15280();
  v11[11] = v19;
  v35 = 7;
  v11[12] = sub_1DDA15280();
  v11[13] = v20;
  v34 = 8;
  v21 = sub_1DDA15280();
  v25 = 0;
  v11[14] = v21;
  v11[15] = v22;
  v33 = 9;
  sub_1DD9E4B98(&qword_1ECD837F8, type metadata accessor for CreateSessionResponse, &unk_1DDA1CBD4);
  v23 = v25;
  sub_1DDA152C0();
  v25 = v23;
  (*(v13 + 8))(v30, v31);
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    sub_1DD9FEFD0(v27, v11 + *(v26 + 52), type metadata accessor for CreateSessionResponse);
    sub_1DD9FF500(v11, v28, type metadata accessor for TwoPhaseUploadDocumentResponse);
    __swift_destroy_boxed_opaque_existential_1(v32);
    return sub_1DD9FF568(v11, type metadata accessor for TwoPhaseUploadDocumentResponse);
  }
}

uint64_t sub_1DD9F6EA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1702521203;
  if (v2 != 1)
  {
    v5 = 0x7079745F656D696DLL;
    v4 = 0xE900000000000065;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701667182;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1702521203;
  if (*a2 != 1)
  {
    v8 = 0x7079745F656D696DLL;
    v3 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9F6F98()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F7030(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9F70B4(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9F7148@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA0D408(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9F7178(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1702521203;
  if (v2 != 1)
  {
    v5 = 0x7079745F656D696DLL;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9F71CC()
{
  v1 = 1702521203;
  if (*v0 != 1)
  {
    v1 = 0x7079745F656D696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

unint64_t sub_1DD9F721C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA0D408(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9F7244(uint64_t a1)
{
  v2 = sub_1DDA0C9B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F7280(uint64_t a1)
{
  v2 = sub_1DDA0C9B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F72D4()
{
  sub_1DDA15570();
  sub_1DD9F6344(v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F7318(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DD9F6344(v2);
  return sub_1DDA155B0();
}

BOOL sub_1DD9F7354(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8[0] = a1[4];
  *(v8 + 9) = *(a1 + 73);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10[0] = a2[4];
  *(v10 + 9) = *(a2 + 73);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1DD9FAB80(v7, v9);
}

uint64_t sub_1DD9F73D8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1DDA15440();
  }

  return v12 & 1;
}

uint64_t sub_1DD9F7484(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1DDA15570();
  a3(v5);
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F7508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_1DDA14BC0();
}

uint64_t sub_1DD9F7578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1DDA15570();
  a4(v6);
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9F75E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA0D454(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DD9F7610@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD9F6458(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DD9F7658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA0D454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9F7680(uint64_t a1)
{
  v2 = sub_1DDA0CA04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F76BC(uint64_t a1)
{
  v2 = sub_1DDA0CA04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F7728(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1DDA15570();
  a3(v5);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1DDA15570();
  a4(v6);
  return sub_1DDA155B0();
}

unint64_t sub_1DD9F77D4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7463656A626FLL;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x5F79616C70736964;
      break;
    case 4:
      result = 0x6E6F6973726576;
      break;
    case 5:
      result = 0x7470697263736564;
      break;
    case 6:
      result = 0x5F747865746E6F63;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x79726F6765746163;
      break;
    case 9:
      result = 0x7367616C665F7369;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x5F657361656C6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD9F7968()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F7A40(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9F7B04(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9F7BD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA0D4A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9F7C08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1635017060;
  v5 = 0xE800000000000000;
  v6 = 0x64695F7473726966;
  v7 = 0xE700000000000000;
  v8 = 0x64695F7473616CLL;
  if (v2 != 3)
  {
    v8 = 0x65726F6D5F736168;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7463656A626FLL;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DD9F7C9C()
{
  v1 = *v0;
  v2 = 1635017060;
  v3 = 0x64695F7473726966;
  v4 = 0x64695F7473616CLL;
  if (v1 != 3)
  {
    v4 = 0x65726F6D5F736168;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7463656A626FLL;
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

unint64_t sub_1DD9F7D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA0D4A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9F7D54(uint64_t a1)
{
  v2 = sub_1DDA0D884();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F7D90(uint64_t a1)
{
  v2 = sub_1DDA0D884();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD9F7DCC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DDA0D4EC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1DD9F7E18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E696E6F73616572;
  }

  else
  {
    v3 = 0x736165725F6E6F6ELL;
  }

  if (v2)
  {
    v4 = 0xED0000676E696E6FLL;
  }

  else
  {
    v4 = 0xE900000000000067;
  }

  if (*a2)
  {
    v5 = 0x6E696E6F73616572;
  }

  else
  {
    v5 = 0x736165725F6E6F6ELL;
  }

  if (*a2)
  {
    v6 = 0xE900000000000067;
  }

  else
  {
    v6 = 0xED0000676E696E6FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DDA15440();
  }

  return v8 & 1;
}

uint64_t sub_1DD9F7ED0()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F7F64(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9F7FE4(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F8080@<X0>(char *a3@<X8>)
{
  v4 = sub_1DDA151E0();

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

void sub_1DD9F80DC(uint64_t *a1@<X8>)
{
  v2 = 0x736165725F6E6F6ELL;
  if (*v1)
  {
    v2 = 0x6E696E6F73616572;
  }

  v3 = 0xED0000676E696E6FLL;
  if (*v1)
  {
    v3 = 0xE900000000000067;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DD9F818C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656C62617473;
  if (v2 != 1)
  {
    v4 = 0x656D697265707865;
    v3 = 0xEC0000006C61746ELL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1635018082;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C62617473;
  if (*a2 != 1)
  {
    v8 = 0x656D697265707865;
    v7 = 0xEC0000006C61746ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1635018082;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9F8290()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F8330(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9F83BC(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9F8458@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA0D9B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9F8488(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62617473;
  if (v2 != 1)
  {
    v5 = 0x656D697265707865;
    v4 = 0xEC0000006C61746ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1635018082;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9F8544()
{
  if (*v0)
  {
    return 0x746C7561666564;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1DD9F8578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DD9F8654(uint64_t a1)
{
  v2 = sub_1DDA11300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F8690(uint64_t a1)
{
  v2 = sub_1DDA11300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F86CC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1DDA0D9FC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_1DD9F8760@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA0DBD4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DD9F8790@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DD9F77D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DD9F87D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA0DBD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9F880C(uint64_t a1)
{
  v2 = sub_1DDA0E3D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F8848(uint64_t a1)
{
  v2 = sub_1DDA0E3D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1DD9F8884@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DDA0DC20(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9;
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

BOOL sub_1DD9F88F0(uint64_t a1, uint64_t a2)
{
  if (sub_1DDA13490() & 1) != 0 && ((v4 = type metadata accessor for FileGeneratorFile(0), v5 = v4[5], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_1DDA15440()) && ((v10 = v4[6], v11 = *(a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v11 == *v13) ? (v14 = v12 == v13[1]) : (v14 = 0), v14 || (sub_1DDA15440())))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD9F89A4(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DDA15440() & 1) == 0 || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  type metadata accessor for ImageGeneratorImage(0);

  return sub_1DDA13490();
}

uint64_t sub_1DD9F8A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_1DDA15440(), result = 0, (v12 & 1) != 0))
  {
    if (a4)
    {
      if (a8 && (a3 == a7 && a4 == a8 || (sub_1DDA15440() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL sub_1DD9F8AE4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  if (a1[6])
  {
    if ((a2[6] & 1) == 0)
    {
      return 0;
    }

    v11 = a1[4];
    v12 = a1[5];
    v14 = a2[3];
    v13 = a2[4];
    v15 = a2[5];
    if ((v4 != v8 || v5 != v9) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }

    if ((v6 != v10 || v7 != v14) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }

    if (v11 == v13 && v12 == v15)
    {
      return 1;
    }

    return (sub_1DDA15440() & 1) != 0;
  }

  if (a2[6])
  {
    return 0;
  }

  v17 = a2[3];
  if ((v4 != v8 || v5 != v9) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v17)
    {
      return 0;
    }

    if (v6 == v10 && v7 == v17)
    {
      return 1;
    }

    return (sub_1DDA15440() & 1) != 0;
  }

  return !v17;
}

uint64_t sub_1DD9F8C2C(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DDA15440() & 1) == 0 || (sub_1DD96A824(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = sub_1DD967BA4(v5, v6);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[4];
  v9 = a2[4];
  if (v8)
  {
    if (v9)
    {

      v10 = sub_1DD967DE0(v8, v9);

      if (v10)
      {
        return 1;
      }
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DD9F8D0C(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v55 = type metadata accessor for FileGeneratorFile(0);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for ImageGeneratorImage(0);
  MEMORY[0x1EEE9AC00](v53);
  v54 = (&v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ImageURLItem(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MessageContent(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v57 = &v53 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v53 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v53 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v53 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83E50, &qword_1DDA1E1A8);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v53 - v24;
  v26 = (&v53 + *(v23 + 56) - v24);
  sub_1DD9FF500(a1, &v53 - v24, type metadata accessor for MessageContent);
  sub_1DD9FF500(v58, v26, type metadata accessor for MessageContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1DD9FF500(v25, v16, type metadata accessor for MessageContent);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v44 = v54;
        sub_1DD9FEFD0(v26, v54, type metadata accessor for ImageGeneratorImage);
        if (*v16 == *v44 && v16[1] == v44[1] || (sub_1DDA15440()) && v16[2] == v44[2] && v16[3] == v44[3] && (sub_1DDA13490())
        {
          v40 = type metadata accessor for ImageGeneratorImage;
          sub_1DD9FF568(v44, type metadata accessor for ImageGeneratorImage);
          v41 = v16;
          goto LABEL_25;
        }

        v50 = type metadata accessor for ImageGeneratorImage;
        sub_1DD9FF568(v44, type metadata accessor for ImageGeneratorImage);
        v51 = v16;
        goto LABEL_44;
      }

      v48 = type metadata accessor for ImageGeneratorImage;
      v49 = v16;
      goto LABEL_38;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v28 = v57;
      sub_1DD9FF500(v25, v57, type metadata accessor for MessageContent);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v29 = v56;
        sub_1DD9FEFD0(v26, v56, type metadata accessor for FileGeneratorFile);
        v30 = sub_1DDA13490();
        v31 = v55;
        if (v30)
        {
          if (v32 = *(v55 + 20), v33 = *(v28 + v32), v34 = *(v28 + v32 + 8), v35 = (v29 + v32), v33 == *v35) && v34 == v35[1] || (sub_1DDA15440())
          {
            if (v36 = *(v31 + 24), v37 = *(v28 + v36), v38 = *(v28 + v36 + 8), v39 = (v29 + v36), v37 == *v39) && v38 == v39[1] || (sub_1DDA15440())
            {
              if (*(v28 + *(v31 + 28)) == *(v29 + *(v31 + 28)))
              {
                v40 = type metadata accessor for FileGeneratorFile;
                sub_1DD9FF568(v29, type metadata accessor for FileGeneratorFile);
                v41 = v28;
LABEL_25:
                sub_1DD9FF568(v41, v40);
                goto LABEL_42;
              }
            }
          }
        }

        v50 = type metadata accessor for FileGeneratorFile;
        sub_1DD9FF568(v29, type metadata accessor for FileGeneratorFile);
        v51 = v28;
LABEL_44:
        sub_1DD9FF568(v51, v50);
LABEL_45:
        sub_1DD9FF568(v25, type metadata accessor for MessageContent);
        goto LABEL_46;
      }

      v48 = type metadata accessor for FileGeneratorFile;
      v49 = v28;
      goto LABEL_38;
    }

    sub_1DD9FF500(v25, v11, type metadata accessor for MessageContent);
    v43 = *v11;
    v42 = v11[1];
    if (swift_getEnumCaseMultiPayload() == 4)
    {
LABEL_27:
      if (v43 == *v26 && v42 == v26[1])
      {

        goto LABEL_42;
      }

      v46 = sub_1DDA15440();

      if (v46)
      {
LABEL_42:
        sub_1DD9FF568(v25, type metadata accessor for MessageContent);
        v47 = 1;
        return v47 & 1;
      }

      goto LABEL_45;
    }

LABEL_16:

LABEL_39:
    sub_1DD90D378(v25, &qword_1ECD83E50, &qword_1DDA1E1A8);
LABEL_46:
    v47 = 0;
    return v47 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1DD9FF500(v25, v21, type metadata accessor for MessageContent);
    v43 = *v21;
    v42 = v21[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  sub_1DD9FF500(v25, v19, type metadata accessor for MessageContent);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v48 = type metadata accessor for ImageURLItem;
    v49 = v19;
LABEL_38:
    sub_1DD9FF568(v49, v48);
    goto LABEL_39;
  }

  sub_1DD9FEFD0(v26, v7, type metadata accessor for ImageURLItem);
  v47 = sub_1DDA13490();
  sub_1DD9FF568(v7, type metadata accessor for ImageURLItem);
  sub_1DD9FF568(v19, type metadata accessor for ImageURLItem);
  sub_1DD9FF568(v25, type metadata accessor for MessageContent);
  return v47 & 1;
}

BOOL sub_1DD9F9430(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[2];
  v7 = a1[3];
  v10 = a1[4];
  v9 = a1[5];
  v63 = a1;
  v64 = a2;
  v11 = a1[6];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  if (!v7)
  {
    if (!v13)
    {
      goto LABEL_17;
    }

LABEL_15:
    sub_1DDA0EF54(v12, v13, v14, v15, v16);
    sub_1DDA0EF54(v8, v7, v10, v9, v11);
    sub_1DDA0EFB8(v8, v7, v10, v9, v11);
    sub_1DDA0EFB8(v12, v13, v14, v15, v16);
    return 0;
  }

  if (!v13)
  {
    goto LABEL_15;
  }

  v82[0] = v12;
  v82[1] = v13;
  v82[2] = v14;
  v82[3] = v15;
  v82[4] = v16;
  v81[0] = v8;
  v81[1] = v7;
  v81[2] = v10;
  v81[3] = v9;
  v81[4] = v11;
  sub_1DDA0EF54(v12, v13, v14, v15, v16);
  sub_1DDA0EF54(v8, v7, v10, v9, v11);
  v17 = sub_1DD9F8C2C(v81, v82);

  sub_1DDA0EFB8(v8, v7, v10, v9, v11);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v19 = v63[8];
  v20 = v64[8];
  if (v19)
  {
    if (!v20 || (v63[7] != v64[7] || v19 != v20) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v21 = v63[10];
  v22 = v64[10];
  if (v21)
  {
    if (!v22 || (v63[9] != v64[9] || v21 != v22) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  sub_1DD9668AC(v63[11], v64[11]);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

  v24 = *(v63 + 96);
  v25 = *(v64 + 96);
  if (v24 == 3)
  {
    if (v25 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v25 == 3)
    {
      return 0;
    }

    v26 = 0xE900000000000065;
    v27 = 0x6764656C776F6E6BLL;
    if (*(v63 + 96))
    {
      if (v24 == 1)
      {
        v28 = 0xD000000000000010;
        v29 = 0x80000001DDA26AC0;
      }

      else
      {
        v28 = 0x74756374726F6873;
        v29 = 0xE900000000000073;
      }
    }

    else
    {
      v28 = 0x6764656C776F6E6BLL;
      v29 = 0xE900000000000065;
    }

    if (*(v64 + 96))
    {
      if (v25 == 1)
      {
        v27 = 0xD000000000000010;
        v26 = 0x80000001DDA26AC0;
      }

      else
      {
        v27 = 0x74756374726F6873;
        v26 = 0xE900000000000073;
      }
    }

    if (v28 == v27 && v29 == v26)
    {
    }

    else
    {
      v30 = sub_1DDA15440();

      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  sub_1DD96831C(v63[13], v64[13]);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

  sub_1DD96831C(v63[14], v64[14]);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

  v33 = v63[16];
  v34 = v64[16];
  if (v33 == 3)
  {
    if (v34 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v34 == 3)
    {
      return 0;
    }

    if (v33)
    {
      if (v33 == 1)
      {
        if (v34 != 1)
        {
          return 0;
        }
      }

      else if (v33 == 2)
      {
        if (v34 != 2)
        {
          return 0;
        }
      }

      else if (v34 < 3 || (v63[15] != v64[15] || v33 != v34) && (sub_1DDA15440() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v34)
    {
      return 0;
    }
  }

  v35 = v64[17];
  if (v63[17])
  {
    if (!v35 || (sub_1DD96EB60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  v36 = *(v64 + 152);
  if (v63[19])
  {
    if (!*(v64 + 152))
    {
      return 0;
    }
  }

  else
  {
    if (*(v63 + 18) != *(v64 + 18))
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  v38 = v63[20];
  v37 = v63[21];
  v40 = v63[22];
  v39 = v63[23];
  v42 = v64[20];
  v41 = v64[21];
  v44 = v64[22];
  v43 = v64[23];
  if (!v37)
  {
    if (!v41)
    {
      goto LABEL_90;
    }

LABEL_88:
    sub_1DD9B33CC(v42, v41, v44, v43);
    sub_1DD9B33CC(v38, v37, v40, v39);
    sub_1DD9B3410(v38, v37, v40, v39);
    sub_1DD9B3410(v42, v41, v44, v43);
    return 0;
  }

  if (!v41)
  {
    goto LABEL_88;
  }

  if ((v38 != v42 || v37 != v41) && (sub_1DDA15440() & 1) == 0)
  {
    sub_1DD9B33CC(v42, v41, v44, v43);
    sub_1DD9B33CC(v38, v37, v40, v39);

    sub_1DD9B3410(v38, v37, v40, v39);
    return 0;
  }

  if (v40 == v44 && v39 == v43)
  {
    sub_1DD9B33CC(v42, v41, v40, v39);
    sub_1DD9B33CC(v38, v37, v40, v39);

    sub_1DD9B3410(v38, v37, v40, v39);
  }

  else
  {
    v45 = sub_1DDA15440();
    sub_1DD9B33CC(v42, v41, v44, v43);
    sub_1DD9B33CC(v38, v37, v40, v39);

    sub_1DD9B3410(v38, v37, v40, v39);
    if ((v45 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_90:
  v46 = *(v63 + 13);
  v78 = *(v63 + 12);
  v79 = v46;
  *v80 = *(v63 + 14);
  *&v80[9] = *(v63 + 233);
  v47 = *(v64 + 13);
  v76[0] = *(v64 + 12);
  v76[1] = v47;
  v77[0] = *(v64 + 14);
  *(v77 + 9) = *(v64 + 233);
  v48 = v78;
  v49 = v79;
  v50 = *v80;
  v51 = *&v80[16];
  v52 = v80[24];
  if (!*(&v78 + 1))
  {
    if (!*(&v76[0] + 1))
    {
      sub_1DD90ADB4(&v78, &v70, &qword_1ECD83748, &unk_1DDA227C0);
      sub_1DD90ADB4(v76, &v70, &qword_1ECD83748, &unk_1DDA227C0);
      goto LABEL_109;
    }

LABEL_100:
    v70 = v78;
    v71 = v79;
    *v72 = *v80;
    *&v72[16] = *&v80[16];
    v72[24] = v80[24];
    v73 = v76[0];
    v54 = *(v64 + 14);
    v74 = *(v64 + 13);
    v75[0] = v54;
    *(v75 + 9) = *(v64 + 233);
    sub_1DD90ADB4(&v78, &v65, &qword_1ECD83748, &unk_1DDA227C0);
    sub_1DD90ADB4(v76, &v65, &qword_1ECD83748, &unk_1DDA227C0);
    sub_1DD90D378(&v70, &qword_1ECD849F0, &qword_1DDA22870);
    return 0;
  }

  if (!*(&v76[0] + 1))
  {
    goto LABEL_100;
  }

  v70 = v76[0];
  v53 = *(v64 + 14);
  v71 = *(v64 + 13);
  *v72 = v53;
  *&v72[9] = *(v64 + 233);
  *(&v61 + 1) = *&v72[8];
  v62 = v53;
  *&v61 = *&v72[16];
  v60 = v72[24];
  if (v76[0] != v78 && (sub_1DDA15440() & 1) == 0)
  {
    sub_1DD90ADB4(&v78, &v65, &qword_1ECD83748, &unk_1DDA227C0);
    sub_1DD90ADB4(v76, &v65, &qword_1ECD83748, &unk_1DDA227C0);
    sub_1DD90D378(&v70, &qword_1ECD83748, &unk_1DDA227C0);
    v65 = v48;
    v66 = v49;
    v67 = v50;
    v68 = v51;
    v69 = v52;
    sub_1DD90D378(&v65, &qword_1ECD83748, &unk_1DDA227C0);
    return 0;
  }

  if (v79 != v71 && (sub_1DDA15440() & 1) == 0)
  {
    sub_1DD90ADB4(&v78, &v65, &qword_1ECD83748, &unk_1DDA227C0);
    sub_1DD90ADB4(v76, &v65, &qword_1ECD83748, &unk_1DDA227C0);
    goto LABEL_105;
  }

  sub_1DD90ADB4(&v78, &v65, &qword_1ECD83748, &unk_1DDA227C0);
  sub_1DD90ADB4(v76, &v65, &qword_1ECD83748, &unk_1DDA227C0);
  if ((sub_1DD96D458(v50, v62) & 1) == 0)
  {
LABEL_105:
    sub_1DD90D378(&v70, &qword_1ECD83748, &unk_1DDA227C0);
    goto LABEL_106;
  }

  if (__PAIR128__(*(&v50 + 1), v51) == v61)
  {
    sub_1DD90D378(&v70, &qword_1ECD83748, &unk_1DDA227C0);
    goto LABEL_108;
  }

  v55 = sub_1DDA15440();
  sub_1DD90D378(&v70, &qword_1ECD83748, &unk_1DDA227C0);
  if ((v55 & 1) == 0)
  {
LABEL_106:
    v65 = v48;
    v66 = v49;
    v67 = v50;
    v68 = v51;
    v69 = v52;
    sub_1DD90D378(&v65, &qword_1ECD83748, &unk_1DDA227C0);
    return 0;
  }

LABEL_108:
  if ((v60 ^ v52))
  {
    goto LABEL_106;
  }

LABEL_109:
  v70 = v48;
  v71 = v49;
  *v72 = v50;
  *&v72[16] = v51;
  v72[24] = v52;
  sub_1DD90D378(&v70, &qword_1ECD83748, &unk_1DDA227C0);
  if ((*(v63 + 249) ^ *(v64 + 249)))
  {
    return 0;
  }

  v56 = v63[32];
  v57 = v64[32];
  if (v56)
  {
    if (!v57 || (sub_1DD967B14(v56, v57) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v57)
  {
    return 0;
  }

  v58 = v63[34];
  v59 = v64[34];
  if (v58)
  {
    return v59 && (v63[33] == v64[33] && v58 == v59 || (sub_1DDA15440() & 1) != 0);
  }

  return !v59;
}

BOOL sub_1DD9F9E10(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  if (a1[6])
  {
    if ((a2[6] & 1) == 0)
    {
      return 0;
    }

    v12 = a1[4];
    v13 = a1[5];
    v14 = a2[4];
    v15 = a2[5];
    if ((v4 != v8 || v5 != v9) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }

    if ((v6 != v11 || v7 != v10) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }

    if (v12 == v14 && v13 == v15)
    {
      return 1;
    }

    return (sub_1DDA15440() & 1) != 0;
  }

  if ((a2[6] & 1) != 0 || (v4 != v8 || v5 != v9) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v10)
    {
      return 0;
    }

    if (v6 == v11 && v7 == v10)
    {
      return 1;
    }

    return (sub_1DDA15440() & 1) != 0;
  }

  return !v10;
}

uint64_t sub_1DD9F9F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextAnnotation.URLCitation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TextAnnotation.Type(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD834D0, &qword_1DDA1E1B0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v30 - v15;
  v17 = (&v30 + *(v14 + 56) - v15);
  sub_1DD9FF500(a1, &v30 - v15, type metadata accessor for TextAnnotation.Type);
  sub_1DD9FF500(a2, v17, type metadata accessor for TextAnnotation.Type);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DD9FF500(v16, v10, type metadata accessor for TextAnnotation.Type);
    v19 = *v10;
    v18 = v10[1];
    v20 = v10[2];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v17[2];
      if (v19 != *v17 || v18 != v17[1])
      {
        v23 = sub_1DDA15440();

        if ((v23 & 1) == 0 || v20 != v21)
        {
          goto LABEL_25;
        }

LABEL_24:
        sub_1DD9FF568(v16, type metadata accessor for TextAnnotation.Type);
        return 1;
      }

      if (v20 == v21)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }
  }

  else
  {
    sub_1DD9FF500(v16, v12, type metadata accessor for TextAnnotation.Type);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1DD9FEFD0(v17, v6, type metadata accessor for TextAnnotation.URLCitation);
      if (sub_1DDA13490())
      {
        v24 = *(v4 + 20);
        v25 = *&v12[v24];
        v26 = *&v12[v24 + 8];
        v27 = &v6[v24];
        v28 = v25 == *v27 && v26 == *(v27 + 1);
        if (v28 || (sub_1DDA15440()) && *&v12[*(v4 + 24)] == *&v6[*(v4 + 24)])
        {
          sub_1DD9FF568(v6, type metadata accessor for TextAnnotation.URLCitation);
          sub_1DD9FF568(v12, type metadata accessor for TextAnnotation.URLCitation);
          goto LABEL_24;
        }
      }

      sub_1DD9FF568(v6, type metadata accessor for TextAnnotation.URLCitation);
      sub_1DD9FF568(v12, type metadata accessor for TextAnnotation.URLCitation);
LABEL_25:
      sub_1DD9FF568(v16, type metadata accessor for TextAnnotation.Type);
      return 0;
    }

    sub_1DD9FF568(v12, type metadata accessor for TextAnnotation.URLCitation);
  }

  sub_1DD90D378(v16, &qword_1ECD834D0, &qword_1DDA1E1B0);
  return 0;
}

BOOL sub_1DD9FA314(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 5)
  {
    if (v5 != 5)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 5)
    {
      return 0;
    }

    v6 = 0x6465727265666E69;
    if (*a1 <= 1u)
    {
      if (*a1)
      {
        v7 = 0x6C6C616D73;
      }

      else
      {
        v7 = 0x6465727265666E69;
      }

      if (v4)
      {
        v8 = 0xE500000000000000;
      }

      else
      {
        v8 = 0xE800000000000000;
      }
    }

    else if (v4 == 2)
    {
      v8 = 0xE600000000000000;
      v7 = 0x6D756964656DLL;
    }

    else
    {
      if (v4 == 3)
      {
        v7 = 0x656772616CLL;
      }

      else
      {
        v7 = 0x656772616C78;
      }

      if (v4 == 3)
      {
        v8 = 0xE500000000000000;
      }

      else
      {
        v8 = 0xE600000000000000;
      }
    }

    v9 = 0xE800000000000000;
    v10 = 0xE600000000000000;
    v11 = 0x6D756964656DLL;
    v12 = 0xE500000000000000;
    v13 = 0x656772616CLL;
    if (v5 != 3)
    {
      v13 = 0x656772616C78;
      v12 = 0xE600000000000000;
    }

    if (v5 != 2)
    {
      v11 = v13;
      v10 = v12;
    }

    if (*a2)
    {
      v6 = 0x6C6C616D73;
      v9 = 0xE500000000000000;
    }

    if (*a2 <= 1u)
    {
      v14 = v6;
    }

    else
    {
      v14 = v11;
    }

    if (*a2 <= 1u)
    {
      v15 = v9;
    }

    else
    {
      v15 = v10;
    }

    if (v7 == v14 && v8 == v15)
    {
    }

    else
    {
      v16 = sub_1DDA15440();

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v17 = a1[1];
  v18 = a2[1];
  if (v17 == 4)
  {
    if (v18 != 4)
    {
      return 0;
    }
  }

  else if (v18 == 4 || (sub_1DD96495C(v17, v18) & 1) == 0)
  {
    return 0;
  }

  v19 = a1[2];
  v20 = a2[2];
  if (v19 == 4)
  {
    if (v20 != 4)
    {
      return 0;
    }
  }

  else if (v20 == 4 || (sub_1DD964838(v19, v20) & 1) == 0)
  {
    return 0;
  }

  v21 = a2[17];
  if (a1[17])
  {
    goto LABEL_47;
  }

  if (a2[17])
  {
    return 0;
  }

  v21 = a2[16];
  if (a1[16])
  {
LABEL_47:
    if ((v21 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_48;
  }

  result = 0;
  if ((a2[16] & 1) == 0 && *(a1 + 1) == *(a2 + 1))
  {
LABEL_48:
    v22 = *(a1 + 4);
    v23 = *(a2 + 4);
    if (v22)
    {
      return v23 && (*(a1 + 3) == *(a2 + 3) && v22 == v23 || (sub_1DDA15440() & 1) != 0);
    }

    return !v23;
  }

  return result;
}

BOOL sub_1DD9FA58C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v6 = a1[4];
  v8 = *(a1 + 40);
  if (!(v8 >> 6))
  {
    v12 = *(a2 + 40);
    if (v12 > 0x3F)
    {
      return 0;
    }

    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
    v15 = *(a2 + 32);
    if ((v3 != *a2 || v4 != *(a2 + 8)) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }

    return (v5 == v13 && v7 == v14 || (sub_1DDA15440() & 1) != 0) && (sub_1DD96D458(v6, v15) & 1) != 0 && ((v8 ^ v12) & 1) == 0;
  }

  if (v8 >> 6 != 1)
  {
    v16 = v5 | v4;
    if (v16 | v3 | v7 | v6 || v8 != 128)
    {
      v19 = v16 | v7 | v6;
      if (v8 == 128 && v3 == 1 && v19 == 0)
      {
        v23 = *(a2 + 40);
        if ((v23 & 0xC0) != 0x80 || v23 != 128 || *a2 != 1)
        {
          return 0;
        }
      }

      else if (v8 == 128 && v3 == 2 && !v19)
      {
        v22 = *(a2 + 40);
        if ((v22 & 0xC0) != 0x80 || v22 != 128 || *a2 != 2)
        {
          return 0;
        }
      }

      else
      {
        v24 = *(a2 + 40);
        if ((v24 & 0xC0) != 0x80 || v24 != 128 || *a2 != 3)
        {
          return 0;
        }
      }

      v25 = vorrq_s8(*(a2 + 8), *(a2 + 24));
      if (vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)))
      {
        return 0;
      }
    }

    else
    {
      v17 = *(a2 + 40);
      if ((v17 & 0xC0) != 0x80)
      {
        return 0;
      }

      if (v17 != 128)
      {
        return 0;
      }

      v18 = vorrq_s8(*(a2 + 8), *(a2 + 24));
      if (*&vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)) | *a2)
      {
        return 0;
      }
    }

    return 1;
  }

  v29[0] = v3;
  v29[1] = v4;
  v29[2] = v5;
  v29[3] = v7;
  v29[4] = v6;
  if ((*(a2 + 40) & 0xC0) != 0x40)
  {
    return 0;
  }

  v9 = *(a2 + 32);
  v10 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v10;
  v28 = v9;
  return sub_1DD9FA314(v29, v27);
}

BOOL sub_1DD9FA7D0(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = (a1 & 1) == 0;
  if (a1)
  {
    v7 = 0x7463615F7473616CLL;
  }

  else
  {
    v7 = 0x5F64657461657263;
  }

  if (v6)
  {
    v8 = 0xEA00000000007461;
  }

  else
  {
    v8 = 0xEE0074615F657669;
  }

  v9 = (a3 & 1) == 0;
  if (a3)
  {
    v10 = 0x7463615F7473616CLL;
  }

  else
  {
    v10 = 0x5F64657461657263;
  }

  if (v9)
  {
    v11 = 0xEA00000000007461;
  }

  else
  {
    v11 = 0xEE0074615F657669;
  }

  if (v7 == v10 && v8 == v11)
  {
  }

  else
  {
    v12 = sub_1DDA15440();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  return a2 == a4;
}

BOOL sub_1DD9FA8AC(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a1 == 2)
  {
    return a3 == 2;
  }

  if (a3 == 2)
  {
    return 0;
  }

  v7 = (a1 & 1) == 0;
  if (a1)
  {
    v8 = 0x7463615F7473616CLL;
  }

  else
  {
    v8 = 0x5F64657461657263;
  }

  if (v7)
  {
    v9 = 0xEA00000000007461;
  }

  else
  {
    v9 = 0xEE0074615F657669;
  }

  v10 = (a3 & 1) == 0;
  if (a3)
  {
    v11 = 0x7463615F7473616CLL;
  }

  else
  {
    v11 = 0x5F64657461657263;
  }

  if (v10)
  {
    v12 = 0xEA00000000007461;
  }

  else
  {
    v12 = 0xEE0074615F657669;
  }

  if (v8 == v11 && v9 == v12)
  {

    if (a2 == a4)
    {
      return 1;
    }
  }

  else
  {
    v13 = sub_1DDA15440();

    if ((v13 & 1) != 0 && a2 == a4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1DD9FA9CC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        else
        {
          return sub_1DDA15440();
        }
      }
    }

    else if (a6 == 3)
    {
      return sub_1DD967B14(a1, a4);
    }

    return 0;
  }

  v6 = a4 ^ a1 ^ 1;
  if (a6)
  {
    v6 = 0;
  }

  v8 = a6 == 1 && a1 == a4;
  if (a3)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1DD9FAA64(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    goto LABEL_18;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_1DDA15440() & 1) == 0)
  {
    goto LABEL_18;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = sub_1DD967A5C(v6, v7);

    if ((v8 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v7)
  {
    goto LABEL_18;
  }

  if ((*(a1 + 40) ^ *(a2 + 40)) & 1) != 0 || ((*(a1 + 41) ^ *(a2 + 41)))
  {
    goto LABEL_18;
  }

  v11 = *(a1 + 64);
  v12 = *(a2 + 64);
  if (v11 == 255)
  {
    if (v12 == 255)
    {
LABEL_25:
      v9 = *(a1 + 65) ^ *(a2 + 65) ^ 1;
      return v9 & 1;
    }
  }

  else if (v12 != 255 && (sub_1DD9FA9CC(a1[6], a1[7], v11, *(a2 + 48), *(a2 + 56), v12) & 1) != 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  v9 = 0;
  return v9 & 1;
}

BOOL sub_1DD9FAB80(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if (a1[2] != *(a2 + 16))
  {
    return 0;
  }

  v5 = a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32);
  if (!v5 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[5];
  v6 = a1[6];
  v9 = a1[7];
  v8 = a1[8];
  v11 = a1[9];
  v10 = a1[10];
  v12 = *(a1 + 88);
  v14 = *(a2 + 40);
  v13 = *(a2 + 48);
  v16 = *(a2 + 56);
  v15 = *(a2 + 64);
  v18 = *(a2 + 72);
  v17 = *(a2 + 80);
  v19 = *(a2 + 88);
  if (v12 == 255)
  {
    if (v19 == 255)
    {
      return 1;
    }

    goto LABEL_17;
  }

  if (v19 == 255)
  {
LABEL_17:
    v20 = v7;
    v26 = v7;
    v27 = v6;
    v21 = v6;
    v22 = v16;
    v23 = v15;
    v28 = v11;
    v25 = v10;
    sub_1DDA0E5A8(v20, v21, v9, v8, v11, v10, v12);
    sub_1DDA0E5A8(v14, v13, v22, v23, v18, v17, v19);
    sub_1DD9B412C(v26, v27, v9, v8, v28, v25, v12);
    sub_1DD9B412C(v14, v13, v22, v23, v18, v17, v19);
    return 0;
  }

  v31[0] = v14;
  v31[1] = v13;
  v31[2] = v16;
  v31[3] = v15;
  v31[4] = v18;
  v31[5] = v17;
  v32 = v19 & 1;
  v29[0] = v7;
  v29[1] = v6;
  v29[2] = v9;
  v29[3] = v8;
  v29[4] = v11;
  v29[5] = v10;
  v30 = v12 & 1;
  return sub_1DD9F8AE4(v29, v31);
}

BOOL sub_1DD9FAD30(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, char a8)
{
  v14 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v15 = 0x6E61747369737361;
    }

    else
    {
      v15 = 1919251317;
    }

    if (v14 == 1)
    {
      v16 = 0xE900000000000074;
    }

    else
    {
      v16 = 0xE400000000000000;
    }

    v17 = a5;
    if (a5)
    {
LABEL_9:
      if (v17 == 1)
      {
        v18 = 0x6E61747369737361;
      }

      else
      {
        v18 = 1919251317;
      }

      if (v17 == 1)
      {
        v19 = 0xE900000000000074;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      if (v15 != v18)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v16 = 0xE600000000000000;
    v15 = 0x6D6574737973;
    v17 = a5;
    if (a5)
    {
      goto LABEL_9;
    }
  }

  v19 = 0xE600000000000000;
  if (v15 != 0x6D6574737973)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (v16 == v19)
  {

    goto LABEL_22;
  }

LABEL_21:
  v20 = sub_1DDA15440();

  result = 0;
  if ((v20 & 1) == 0)
  {
    return result;
  }

LABEL_22:
  if ((a4 & 1) == 0)
  {
    return (a8 & 1) == 0 && (a2 == a6 && a3 == a7 || (sub_1DDA15440() & 1) != 0);
  }

  return (a8 & 1) != 0 && (sub_1DD966858(a2, a6) & 1) != 0;
}

uint64_t sub_1DD9FAEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5 || (v8 = sub_1DDA15440(), result = 0, (v8 & 1) != 0))
  {
    if (a3)
    {
      if (a6)
      {

        v10 = sub_1DD9674A4(a3, a6);

        if (v10)
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DD9FAF54(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  type metadata accessor for ChatChunk.FileGeneratorCallFileAdded(0);

  return sub_1DDA13490();
}

BOOL sub_1DD9FAFE8(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = *(a1 + 48);
  if (v9 <= 1)
  {
    if (v9)
    {
      if (a2[3].i8[0] != 1)
      {
        return 0;
      }

      v22 = a2[1].i64[0];
      v23 = a2[1].i64[1];
      v24 = a2[2].i64[0];
      v25 = a2[2].i64[1];
      if ((v3 != a2->i64[0] || v5 != a2->i64[1]) && (sub_1DDA15440() & 1) == 0)
      {
        return 0;
      }

      if ((v4 != v22 || v6 != v23) && (sub_1DDA15440() & 1) == 0)
      {
        return 0;
      }

      if (v7 == v24 && v8 == v25)
      {
        return 1;
      }
    }

    else
    {
      if (a2[3].i8[0])
      {
        return 0;
      }

      v11 = a2->i64[1];
      v12 = v3;
      if (v3)
      {
        if (v3 == 1)
        {
          v13 = 0x6E61747369737361;
        }

        else
        {
          v13 = 1919251317;
        }

        if (v12 == 1)
        {
          v14 = 0xE900000000000074;
        }

        else
        {
          v14 = 0xE400000000000000;
        }
      }

      else
      {
        v14 = 0xE600000000000000;
        v13 = 0x6D6574737973;
      }

      v27 = a2[1].i64[0];
      v28 = a2[1].i8[8];
      v29 = 0x6E61747369737361;
      v30 = 0xE900000000000074;
      if (a2->i8[0] != 1)
      {
        v29 = 1919251317;
        v30 = 0xE400000000000000;
      }

      if (a2->i8[0])
      {
        v31 = v29;
      }

      else
      {
        v31 = 0x6D6574737973;
      }

      if (a2->i8[0])
      {
        v32 = v30;
      }

      else
      {
        v32 = 0xE600000000000000;
      }

      if (v13 == v31 && v14 == v32)
      {
      }

      else
      {
        v33 = sub_1DDA15440();

        if ((v33 & 1) == 0)
        {
          return 0;
        }
      }

      if (v6)
      {
        return (v28 & 1) != 0 && (sub_1DD966858(v5, v11) & 1) != 0;
      }

      if (v28)
      {
        return 0;
      }

      if (v5 == v11 && v4 == v27)
      {
        return 1;
      }
    }

    return (sub_1DDA15440() & 1) != 0;
  }

  if (v9 == 2)
  {
    if (a2[3].i8[0] == 2)
    {
      if (v15 = a2[1].i64[0], v16 = a2[1].i64[1], v17 = a2[2].i64[0], v3 == a2->i64[0]) && v5 == a2->i64[1] || (sub_1DDA15440())
      {
        if (v4 == v15 && v6 == v16 || (sub_1DDA15440()) && (sub_1DD966610(v7, v17))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (v9 == 3)
  {
    if (a2[3].i8[0] == 3)
    {
      if (v10 = a2[1].i64[0], v3 == a2->i64[0]) && v5 == a2->i64[1] || (sub_1DDA15440())
      {
        if (sub_1DD966804(v4, v10))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (!(v4 | v5 | v3 | v6 | v7 | v8))
  {
    if (a2[3].i8[0] == 4)
    {
      v26 = vorrq_s8(a2[1], a2[2]);
      return (*&vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL)) | a2->i64[1] | a2->i64[0]) == 0;
    }

    return 0;
  }

  if (a2[3].i8[0] != 4)
  {
    return 0;
  }

  v18 = vorrq_s8(a2[1], a2[2]);
  v19 = *&vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)) | a2->i64[1];
  return a2->i64[0] == 1 && v19 == 0;
}

BOOL sub_1DD9FB378(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a2 + 16);
  v11 = *(a2 + 17) | ((*(a2 + 21) | (*(a2 + 23) << 16)) << 32);
  v13 = *(a2 + 24);
  v12 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 41) | ((*(a2 + 45) | (*(a2 + 47) << 16)) << 32);
  v16 = *(a2 + 48);
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v18 != 1)
      {
        return 0;
      }

      if (v3 != (v10 | (v11 << 8)) || v5 != v13)
      {
        v29 = *(a2 + 32);
        v30 = sub_1DDA15440();
        v12 = v29;
        if ((v30 & 1) == 0)
        {
          return 0;
        }
      }

      if ((v4 != v12 || v6 != (v14 | (v15 << 8))) && (sub_1DDA15440() & 1) == 0)
      {
        return 0;
      }

      if (v7 == v16 && v8 == v17)
      {
        return 1;
      }
    }

    else
    {
      if (*(a2 + 64))
      {
        return 0;
      }

      v22 = *(a2 + 32);
      v23 = v3;
      if (v3)
      {
        if (v3 == 1)
        {
          v24 = 0x6E61747369737361;
        }

        else
        {
          v24 = 1919251317;
        }

        if (v23 == 1)
        {
          v25 = 0xE900000000000074;
        }

        else
        {
          v25 = 0xE400000000000000;
        }
      }

      else
      {
        v25 = 0xE600000000000000;
        v24 = 0x6D6574737973;
      }

      v31 = 0x6E61747369737361;
      v32 = 0xE900000000000074;
      if (v10 != 1)
      {
        v31 = 1919251317;
        v32 = 0xE400000000000000;
      }

      if (*(a2 + 16))
      {
        v33 = v31;
      }

      else
      {
        v33 = 0x6D6574737973;
      }

      if (*(a2 + 16))
      {
        v34 = v32;
      }

      else
      {
        v34 = 0xE600000000000000;
      }

      if (v24 == v33 && v25 == v34)
      {

        v35 = v22;
      }

      else
      {
        v36 = sub_1DDA15440();

        v35 = v22;
        if ((v36 & 1) == 0)
        {
          return 0;
        }
      }

      if (v6)
      {
        return (v14 & 1) != 0 && (sub_1DD966858(v5, v13) & 1) != 0;
      }

      if (v14)
      {
        return 0;
      }

      if (v5 == v13 && v4 == v35)
      {
        return 1;
      }
    }

    if (sub_1DDA15440())
    {
      return 1;
    }
  }

  else
  {
    if (v9 == 2)
    {
      if (v18 != 2)
      {
        return 0;
      }

      if (v3 != (v10 | (v11 << 8)) || v5 != v13)
      {
        v26 = *(a2 + 32);
        v27 = sub_1DDA15440();
        v12 = v26;
        if ((v27 & 1) == 0)
        {
          return 0;
        }
      }

      return (v4 == v12 && v6 == (v14 | (v15 << 8)) || (sub_1DDA15440() & 1) != 0) && (sub_1DD966610(v7, v16) & 1) != 0;
    }

    if (v9 == 3)
    {
      if (v18 != 3)
      {
        return 0;
      }

      if (v3 != (v10 | (v11 << 8)) || v5 != v13)
      {
        v19 = *(a2 + 32);
        v20 = sub_1DDA15440();
        v12 = v19;
        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }

      return (sub_1DD966804(v4, v12) & 1) != 0;
    }

    if (v4 | v5 | v3 | v6 | v7 | v8)
    {
      if (v18 != 4 || (v10 | (v11 << 8)) != 1)
      {
        return 0;
      }

      v28 = v14 | (v15 << 8);
    }

    else
    {
      if (v18 != 4)
      {
        return 0;
      }

      v28 = v10 | (v11 << 8) | v14 | (v15 << 8);
    }

    if (!(v28 | v13 | v12 | v16 | v17))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1DD9FB738(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  v5 = *(type metadata accessor for ChatChunk.TextValueAnnotation(0) + 32);

  return sub_1DD9F9F4C(a1 + v5, a2 + v5);
}

uint64_t sub_1DD9FB7C8(char *a1, char *a2, uint64_t (*a3)(void), uint64_t (*a4)(char *, char *))
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    return 0;
  }

  v7 = *(a3(0) + 28);

  return a4(&a1[v7], &a2[v7]);
}

uint64_t sub_1DD9FB860(uint64_t a1, int8x16_t *a2)
{
  v238 = a1;
  v239 = a2;
  v2 = type metadata accessor for ChatChunk.RateLimits(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v208 = (&v194 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ChatChunk.FileGeneratorCallFileAdded(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v206 = (&v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v194 = type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded(0);
  MEMORY[0x1EEE9AC00](v194);
  v207 = (&v194 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ChatChunk.TextValueAnnotation(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v204 = (&v194 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v195 = type metadata accessor for ChatChunk.ChoiceItemMessageContent(0);
  v9 = MEMORY[0x1EEE9AC00](v195);
  v205 = &v194 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v203 = &v194 - v11;
  v236 = type metadata accessor for ChatChunk.ChoiceResource(0);
  v12 = MEMORY[0x1EEE9AC00](v236);
  v202 = &v194 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v201 = &v194 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v200 = &v194 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v199 = &v194 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v198 = &v194 - v20;
  v21 = type metadata accessor for ChatChunk.FileUploadResponse(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v197 = (&v194 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  MEMORY[0x1EEE9AC00](SessionResponse - 8);
  v196 = (&v194 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v237 = type metadata accessor for ChatChunk(0);
  v25 = MEMORY[0x1EEE9AC00](v237);
  v235 = (&v194 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v25);
  v232 = &v194 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v231 = &v194 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v233 = (&v194 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v230 = &v194 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v229 = &v194 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v228 = &v194 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v234 = (&v194 - v40);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v227 = &v194 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v226 = (&v194 - v44);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v225 = (&v194 - v46);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v223 = &v194 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v221 = (&v194 - v50);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v219 = (&v194 - v52);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v218 = (&v194 - v54);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v217 = (&v194 - v56);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v220 = (&v194 - v58);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v215 = (&v194 - v60);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v213 = (&v194 - v62);
  v63 = MEMORY[0x1EEE9AC00](v61);
  v224 = (&v194 - v64);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v222 = (&v194 - v66);
  v67 = MEMORY[0x1EEE9AC00](v65);
  v209 = &v194 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v71 = (&v194 - v70);
  v72 = MEMORY[0x1EEE9AC00](v69);
  v216 = (&v194 - v73);
  v74 = MEMORY[0x1EEE9AC00](v72);
  v214 = (&v194 - v75);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v212 = (&v194 - v77);
  v78 = MEMORY[0x1EEE9AC00](v76);
  v211 = (&v194 - v79);
  v80 = MEMORY[0x1EEE9AC00](v78);
  v210 = (&v194 - v81);
  v82 = MEMORY[0x1EEE9AC00](v80);
  v84 = &v194 - v83;
  v85 = MEMORY[0x1EEE9AC00](v82);
  v87 = &v194 - v86;
  v88 = MEMORY[0x1EEE9AC00](v85);
  v90 = &v194 - v89;
  v91 = MEMORY[0x1EEE9AC00](v88);
  v93 = (&v194 - v92);
  MEMORY[0x1EEE9AC00](v91);
  v95 = (&v194 - v94);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83E40, &qword_1DDA1E198);
  v97 = MEMORY[0x1EEE9AC00](v96 - 8);
  v99 = &v194 - v98;
  v100 = (&v194 + *(v97 + 56) - v98);
  sub_1DD9FF500(v238, &v194 - v98, type metadata accessor for ChatChunk);
  v101 = v239;
  v239 = v100;
  sub_1DD9FF500(v101, v100, type metadata accessor for ChatChunk);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD9FF500(v99, v93, type metadata accessor for ChatChunk);
      v154 = v239;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v155 = v197;
        sub_1DD9FEFD0(v154, v197, type metadata accessor for ChatChunk.FileUploadResponse);
        v115 = sub_1DD9FD390(v93, v155);
        v156 = type metadata accessor for ChatChunk.FileUploadResponse;
        sub_1DD9FF568(v155, type metadata accessor for ChatChunk.FileUploadResponse);
        v157 = v93;
        goto LABEL_109;
      }

      v170 = type metadata accessor for ChatChunk.FileUploadResponse;
      goto LABEL_85;
    case 2u:
      sub_1DD9FF500(v99, v90, type metadata accessor for ChatChunk);
      v150 = *(v90 + 5);
      v244 = *(v90 + 4);
      v245 = v150;
      v246 = *(v90 + 6);
      v247 = *(v90 + 14);
      v151 = *(v90 + 1);
      v240 = *v90;
      v241 = v151;
      v152 = *(v90 + 3);
      v242 = *(v90 + 2);
      v243 = v152;
      v133 = v239;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_42;
      }

      goto LABEL_28;
    case 3u:
      sub_1DD9FF500(v99, v87, type metadata accessor for ChatChunk);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_101;
      }

      v115 = sub_1DD96EB60();

      goto LABEL_110;
    case 4u:
      sub_1DD9FF500(v99, v84, type metadata accessor for ChatChunk);
      v130 = *(v84 + 5);
      v244 = *(v84 + 4);
      v245 = v130;
      v246 = *(v84 + 6);
      v247 = *(v84 + 14);
      v131 = *(v84 + 1);
      v240 = *v84;
      v241 = v131;
      v132 = *(v84 + 3);
      v242 = *(v84 + 2);
      v243 = v132;
      v133 = v239;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
LABEL_28:
        v134 = v133[5];
        v252 = v133[4];
        v253 = v134;
        v254 = v133[6];
        v255 = v133[7].i64[0];
        v135 = v133[1];
        v248 = *v133;
        v249 = v135;
        v136 = v133[3];
        v250 = v133[2];
        v251 = v136;
        v115 = sub_1DD9FDAD4(v240.i64, &v248);
        sub_1DD9B2CFC(&v240);
        sub_1DD9B2CFC(&v248);
        goto LABEL_110;
      }

LABEL_42:
      sub_1DD9B2CFC(&v240);
      goto LABEL_128;
    case 5u:
      v93 = v210;
      sub_1DD9FF500(v99, v210, type metadata accessor for ChatChunk);
      v164 = v239;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_84;
      }

      v141 = v164;
      v142 = v198;
      goto LABEL_80;
    case 6u:
      v93 = v211;
      sub_1DD9FF500(v99, v211, type metadata accessor for ChatChunk);
      v171 = v239;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_84;
      }

      v141 = v171;
      v142 = v199;
      goto LABEL_80;
    case 7u:
      v93 = v212;
      sub_1DD9FF500(v99, v212, type metadata accessor for ChatChunk);
      v153 = v239;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_84;
      }

      v141 = v153;
      v142 = v200;
      goto LABEL_80;
    case 8u:
      v93 = v214;
      sub_1DD9FF500(v99, v214, type metadata accessor for ChatChunk);
      v176 = v239;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_84;
      }

      v141 = v176;
      v142 = v201;
      goto LABEL_80;
    case 9u:
      v93 = v216;
      sub_1DD9FF500(v99, v216, type metadata accessor for ChatChunk);
      v140 = v239;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
LABEL_84:
        v170 = type metadata accessor for ChatChunk.ChoiceResource;
        goto LABEL_85;
      }

      v141 = v140;
      v142 = v202;
LABEL_80:
      sub_1DD9FEFD0(v141, v142, type metadata accessor for ChatChunk.ChoiceResource);
      if (*v93 == *v142)
      {
        v177 = sub_1DD9FDD08(v93 + *(v236 + 20), v142 + *(v236 + 20));
        sub_1DD9FF568(v142, type metadata accessor for ChatChunk.ChoiceResource);
        if (v177)
        {
          v146 = type metadata accessor for ChatChunk.ChoiceResource;
          goto LABEL_83;
        }
      }

      else
      {
        sub_1DD9FF568(v142, type metadata accessor for ChatChunk.ChoiceResource);
      }

      v178 = type metadata accessor for ChatChunk.ChoiceResource;
      goto LABEL_131;
    case 0xAu:
      sub_1DD9FF500(v99, v71, type metadata accessor for ChatChunk);
      v174 = v71[3];
      v250 = v71[2];
      v251 = v174;
      v252.i8[0] = v71[4].i8[0];
      v175 = v71[1];
      v248 = *v71;
      v249 = v175;
      v126 = v239;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_77;
      }

      goto LABEL_24;
    case 0xBu:
      v123 = v209;
      sub_1DD9FF500(v99, v209, type metadata accessor for ChatChunk);
      v124 = *(v123 + 48);
      v250 = *(v123 + 32);
      v251 = v124;
      v252.i8[0] = *(v123 + 64);
      v125 = *(v123 + 16);
      v248 = *v123;
      v249 = v125;
      v126 = v239;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
LABEL_77:
        sub_1DD9FF5F8(&v248);
        goto LABEL_128;
      }

LABEL_24:
      v127 = v126[1];
      v240 = *v126;
      v241 = v127;
      v128 = v126[3];
      v242 = v126[2];
      v243 = v128;
      LOBYTE(v244) = v126[4].i8[0];
      if (*&v248 == *&v240)
      {
        v256 = v249;
        v257 = v250;
        v258 = v251;
        v259 = v252.i8[0];
        v260 = v241;
        v261 = v242;
        v262 = v243;
        v263 = v244;
        v129 = sub_1DD9FAFE8(v256.i64, &v260);
        sub_1DD9FF5F8(&v240);
        sub_1DD9FF5F8(&v248);
        if (v129)
        {
          goto LABEL_123;
        }
      }

      else
      {
        sub_1DD9FF5F8(&v240);
        sub_1DD9FF5F8(&v248);
      }

      goto LABEL_132;
    case 0xCu:
      v93 = v222;
      sub_1DD9FF500(v99, v222, type metadata accessor for ChatChunk);
      v137 = v239;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_68;
      }

      v138 = v137;
      v139 = v203;
      goto LABEL_63;
    case 0xDu:
      v93 = v224;
      sub_1DD9FF500(v99, v224, type metadata accessor for ChatChunk);
      v168 = v239;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
LABEL_68:
        v170 = type metadata accessor for ChatChunk.ChoiceItemMessageContent;
        goto LABEL_85;
      }

      v138 = v168;
      v139 = v205;
LABEL_63:
      sub_1DD9FEFD0(v138, v139, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
      if (*v93 == *v139 && v93[1] == v139[1] && v93[2] == v139[2])
      {
        v169 = sub_1DD9F8D0C(v93 + *(v195 + 28), v139 + *(v195 + 28));
        sub_1DD9FF568(v139, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
        if (v169)
        {
          v146 = type metadata accessor for ChatChunk.ChoiceItemMessageContent;
          goto LABEL_83;
        }
      }

      else
      {
        sub_1DD9FF568(v139, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
      }

      v178 = type metadata accessor for ChatChunk.ChoiceItemMessageContent;
      goto LABEL_131;
    case 0xEu:
      v117 = v213;
      sub_1DD9FF500(v99, v213, type metadata accessor for ChatChunk);
      v119 = v117[1];
      v118 = v117[2];
      v121 = v117[3];
      v120 = v117[4];
      v122 = v239;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_101;
      }

      goto LABEL_72;
    case 0xFu:
      v117 = v215;
      sub_1DD9FF500(v99, v215, type metadata accessor for ChatChunk);
      v119 = v117[1];
      v118 = v117[2];
      v121 = v117[3];
      v120 = v117[4];
      v122 = v239;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_101;
      }

      goto LABEL_72;
    case 0x10u:
      v112 = v220;
      sub_1DD9FF500(v99, v220, type metadata accessor for ChatChunk);
      v113 = v239;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v114 = v204;
        sub_1DD9FEFD0(v113, v204, type metadata accessor for ChatChunk.TextValueAnnotation);
        v115 = sub_1DD9FB738(v112, v114);
        v116 = type metadata accessor for ChatChunk.TextValueAnnotation;
        goto LABEL_108;
      }

      v190 = type metadata accessor for ChatChunk.TextValueAnnotation;
      goto LABEL_126;
    case 0x11u:
      v117 = v217;
      sub_1DD9FF500(v99, v217, type metadata accessor for ChatChunk);
      v119 = v117[1];
      v118 = v117[2];
      v121 = v117[3];
      v120 = v117[4];
      v122 = v239;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_101;
      }

      goto LABEL_72;
    case 0x12u:
      v117 = v218;
      sub_1DD9FF500(v99, v218, type metadata accessor for ChatChunk);
      v119 = v117[1];
      v118 = v117[2];
      v121 = v117[3];
      v120 = v117[4];
      v122 = v239;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_101;
      }

LABEL_72:
      v172 = v122[4];
      if (*v117 != *v122 || v119 != v122[1] || v118 != v122[2])
      {
        goto LABEL_99;
      }

      v173 = v122[3];
      goto LABEL_96;
    case 0x13u:
      v161 = v219;
      sub_1DD9FF500(v99, v219, type metadata accessor for ChatChunk);
      v162 = v161[1];
      v121 = v161[2];
      v120 = v161[3];
      v163 = v239;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_101;
      }

      goto LABEL_93;
    case 0x14u:
      v161 = v221;
      sub_1DD9FF500(v99, v221, type metadata accessor for ChatChunk);
      v162 = v161[1];
      v121 = v161[2];
      v120 = v161[3];
      v163 = v239;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_101;
      }

      goto LABEL_93;
    case 0x15u:
      v165 = v223;
      sub_1DD9FF500(v99, v223, type metadata accessor for ChatChunk);
      v166 = *(v165 + 48);
      v250 = *(v165 + 32);
      v251 = v166;
      v252.i8[0] = *(v165 + 64);
      v167 = *(v165 + 16);
      v248 = *v165;
      v249 = v167;
      v108 = v239;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_40;
      }

      goto LABEL_11;
    case 0x16u:
      v161 = v225;
      sub_1DD9FF500(v99, v225, type metadata accessor for ChatChunk);
      v162 = v161[1];
      v121 = v161[2];
      v120 = v161[3];
      v163 = v239;
      if (swift_getEnumCaseMultiPayload() == 22)
      {
        goto LABEL_93;
      }

      goto LABEL_101;
    case 0x17u:
      v161 = v226;
      sub_1DD9FF500(v99, v226, type metadata accessor for ChatChunk);
      v162 = v161[1];
      v121 = v161[2];
      v120 = v161[3];
      v163 = v239;
      if (swift_getEnumCaseMultiPayload() != 23)
      {
LABEL_101:

        goto LABEL_128;
      }

LABEL_93:
      v172 = v163[3];
      if (*v161 != *v163 || v162 != v163[1])
      {
LABEL_99:

        goto LABEL_132;
      }

      v173 = v163[2];
LABEL_96:
      if (v121 == v173 && v120 == v172)
      {

        goto LABEL_123;
      }

      v191 = sub_1DDA15440();

      if (v191)
      {
        goto LABEL_123;
      }

      goto LABEL_132;
    case 0x18u:
      v147 = v227;
      sub_1DD9FF500(v99, v227, type metadata accessor for ChatChunk);
      v148 = *(v147 + 48);
      v250 = *(v147 + 32);
      v251 = v148;
      v252.i8[0] = *(v147 + 64);
      v149 = *(v147 + 16);
      v248 = *v147;
      v249 = v149;
      v108 = v239;
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        goto LABEL_40;
      }

      goto LABEL_11;
    case 0x19u:
      v93 = v234;
      sub_1DD9FF500(v99, v234, type metadata accessor for ChatChunk);
      v143 = v239;
      if (swift_getEnumCaseMultiPayload() != 25)
      {
        v170 = type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded;
LABEL_85:
        v103 = v170;
        v104 = v93;
        goto LABEL_127;
      }

      v144 = v207;
      sub_1DD9FEFD0(v143, v207, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
      if (*v93 == *v144 && v93[1] == v144[1] && v93[2] == v144[2])
      {
        v145 = sub_1DDA13490();
        sub_1DD9FF568(v144, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
        if (v145)
        {
          v146 = type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded;
LABEL_83:
          sub_1DD9FF568(v93, v146);
          goto LABEL_123;
        }
      }

      else
      {
        sub_1DD9FF568(v144, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
      }

      v178 = type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded;
LABEL_131:
      sub_1DD9FF568(v93, v178);
      goto LABEL_132;
    case 0x1Au:
      v187 = v228;
      sub_1DD9FF500(v99, v228, type metadata accessor for ChatChunk);
      v188 = *(v187 + 48);
      v250 = *(v187 + 32);
      v251 = v188;
      v252.i8[0] = *(v187 + 64);
      v189 = *(v187 + 16);
      v248 = *v187;
      v249 = v189;
      v108 = v239;
      if (swift_getEnumCaseMultiPayload() != 26)
      {
        goto LABEL_40;
      }

      goto LABEL_11;
    case 0x1Bu:
      v105 = v229;
      sub_1DD9FF500(v99, v229, type metadata accessor for ChatChunk);
      v106 = *(v105 + 48);
      v250 = *(v105 + 32);
      v251 = v106;
      v252.i8[0] = *(v105 + 64);
      v107 = *(v105 + 16);
      v248 = *v105;
      v249 = v107;
      v108 = v239;
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        goto LABEL_11;
      }

      goto LABEL_40;
    case 0x1Cu:
      v183 = v230;
      sub_1DD9FF500(v99, v230, type metadata accessor for ChatChunk);
      v184 = *(v183 + 48);
      v250 = *(v183 + 32);
      v251 = v184;
      v252.i8[0] = *(v183 + 64);
      v185 = *(v183 + 16);
      v248 = *v183;
      v249 = v185;
      v108 = v239;
      if (swift_getEnumCaseMultiPayload() != 28)
      {
        goto LABEL_40;
      }

      goto LABEL_11;
    case 0x1Du:
      v112 = v233;
      sub_1DD9FF500(v99, v233, type metadata accessor for ChatChunk);
      v186 = v239;
      if (swift_getEnumCaseMultiPayload() == 29)
      {
        v114 = v206;
        sub_1DD9FEFD0(v186, v206, type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
        v115 = sub_1DD9FAF54(v112, v114);
        v116 = type metadata accessor for ChatChunk.FileGeneratorCallFileAdded;
        goto LABEL_108;
      }

      v190 = type metadata accessor for ChatChunk.FileGeneratorCallFileAdded;
      goto LABEL_126;
    case 0x1Eu:
      v179 = v231;
      sub_1DD9FF500(v99, v231, type metadata accessor for ChatChunk);
      v180 = *(v179 + 48);
      v250 = *(v179 + 32);
      v251 = v180;
      v252.i8[0] = *(v179 + 64);
      v181 = *(v179 + 16);
      v248 = *v179;
      v249 = v181;
      v108 = v239;
      if (swift_getEnumCaseMultiPayload() != 30)
      {
        goto LABEL_40;
      }

      goto LABEL_11;
    case 0x1Fu:
      v158 = v232;
      sub_1DD9FF500(v99, v232, type metadata accessor for ChatChunk);
      v159 = *(v158 + 48);
      v250 = *(v158 + 32);
      v251 = v159;
      v252.i8[0] = *(v158 + 64);
      v160 = *(v158 + 16);
      v248 = *v158;
      v249 = v160;
      v108 = v239;
      if (swift_getEnumCaseMultiPayload() != 31)
      {
LABEL_40:
        sub_1DD9FF5C8(&v248);
        goto LABEL_128;
      }

LABEL_11:
      v109 = v108[1];
      v240 = *v108;
      v241 = v109;
      v110 = v108[3];
      v242 = v108[2];
      v243 = v110;
      LOBYTE(v244) = v108[4].i8[0];
      if (*&v248 == *&v240)
      {
        v256 = v249;
        v257 = v250;
        v258 = v251;
        v259 = v252.i8[0];
        v260 = v241;
        v261 = v242;
        v262 = v243;
        v263 = v244;
        v111 = sub_1DD9FAFE8(v256.i64, &v260);
        sub_1DD9FF5C8(&v240);
        sub_1DD9FF5C8(&v248);
        if (v111)
        {
LABEL_123:
          sub_1DD9FF568(v99, type metadata accessor for ChatChunk);
          v115 = 1;
          return v115 & 1;
        }
      }

      else
      {
        sub_1DD9FF5C8(&v240);
        sub_1DD9FF5C8(&v248);
      }

LABEL_132:
      sub_1DD9FF568(v99, type metadata accessor for ChatChunk);
      goto LABEL_133;
    case 0x20u:
      v112 = v235;
      sub_1DD9FF500(v99, v235, type metadata accessor for ChatChunk);
      v182 = v239;
      if (swift_getEnumCaseMultiPayload() == 32)
      {
        v114 = v208;
        sub_1DD9FEFD0(v182, v208, type metadata accessor for ChatChunk.RateLimits);
        v115 = sub_1DD9FE380(v112, v114);
        v116 = type metadata accessor for ChatChunk.RateLimits;
LABEL_108:
        v156 = v116;
        sub_1DD9FF568(v114, v116);
        v157 = v112;
        goto LABEL_109;
      }

      v190 = type metadata accessor for ChatChunk.RateLimits;
LABEL_126:
      v103 = v190;
      v104 = v112;
      goto LABEL_127;
    case 0x21u:
      if (swift_getEnumCaseMultiPayload() != 33)
      {
        goto LABEL_128;
      }

      goto LABEL_123;
    case 0x22u:
      if (swift_getEnumCaseMultiPayload() != 34)
      {
        goto LABEL_128;
      }

      goto LABEL_123;
    case 0x23u:
      if (swift_getEnumCaseMultiPayload() != 35)
      {
        goto LABEL_128;
      }

      goto LABEL_123;
    case 0x24u:
      if (swift_getEnumCaseMultiPayload() != 36)
      {
        goto LABEL_128;
      }

      goto LABEL_123;
    case 0x25u:
      if (swift_getEnumCaseMultiPayload() != 37)
      {
        goto LABEL_128;
      }

      goto LABEL_123;
    case 0x26u:
      if (swift_getEnumCaseMultiPayload() != 38)
      {
        goto LABEL_128;
      }

      goto LABEL_123;
    default:
      sub_1DD9FF500(v99, v95, type metadata accessor for ChatChunk);
      v102 = v239;
      if (swift_getEnumCaseMultiPayload())
      {
        v103 = type metadata accessor for CreateSessionResponse;
        v104 = v95;
LABEL_127:
        sub_1DD9FF568(v104, v103);
LABEL_128:
        sub_1DD90D378(v99, &qword_1ECD83E40, &qword_1DDA1E198);
LABEL_133:
        v115 = 0;
      }

      else
      {
        v193 = v196;
        sub_1DD9FEFD0(v102, v196, type metadata accessor for CreateSessionResponse);
        v115 = sub_1DD9FF798(v95, v193);
        v156 = type metadata accessor for CreateSessionResponse;
        sub_1DD9FF568(v193, type metadata accessor for CreateSessionResponse);
        v157 = v95;
LABEL_109:
        sub_1DD9FF568(v157, v156);
LABEL_110:
        sub_1DD9FF568(v99, type metadata accessor for ChatChunk);
      }

      return v115 & 1;
  }
}

BOOL sub_1DD9FD390(void *a1, void *a2)
{
  v4 = sub_1DDA13680();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v63[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v63[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A58, &qword_1DDA16E70);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v63[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v63[-v18];
  v20 = *a1;
  v21 = a1[1];
  v70 = a1;
  if ((v20 != *a2 || v21 != a2[1]) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v65 = v11;
  v66 = v7;
  v67 = type metadata accessor for ChatChunk.FileUploadResponse(0);
  v22 = *(v67 + 20);
  v23 = *(v14 + 48);
  v69 = v5;
  sub_1DD90ADB4(v70 + v22, v19, &qword_1ECD82838, &unk_1DDA185F0);
  v68 = a2;
  v24 = v69;
  sub_1DD90ADB4(a2 + v22, &v19[v23], &qword_1ECD82838, &unk_1DDA185F0);
  v25 = *(v24 + 48);
  if (v25(v19, 1, v4) == 1)
  {
    if (v25(&v19[v23], 1, v4) == 1)
    {
      sub_1DD90D378(v19, &qword_1ECD82838, &unk_1DDA185F0);
      goto LABEL_11;
    }

LABEL_9:
    v26 = v19;
LABEL_17:
    sub_1DD90D378(v26, &qword_1ECD82A58, &qword_1DDA16E70);
    return 0;
  }

  sub_1DD90ADB4(v19, v13, &qword_1ECD82838, &unk_1DDA185F0);
  if (v25(&v19[v23], 1, v4) == 1)
  {
    (*(v24 + 8))(v13, v4);
    goto LABEL_9;
  }

  v27 = v66;
  (*(v24 + 32))(v66, &v19[v23], v4);
  sub_1DD9E4B98(&qword_1ECD82A60, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v64 = sub_1DDA14AF0();
  v28 = *(v24 + 8);
  v28(v27, v4);
  v28(v13, v4);
  sub_1DD90D378(v19, &qword_1ECD82838, &unk_1DDA185F0);
  if ((v64 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v29 = v67;
  v30 = *(v67 + 24);
  v31 = *(v14 + 48);
  sub_1DD90ADB4(v70 + v30, v17, &qword_1ECD82838, &unk_1DDA185F0);
  sub_1DD90ADB4(v68 + v30, &v17[v31], &qword_1ECD82838, &unk_1DDA185F0);
  if (v25(v17, 1, v4) == 1)
  {
    if (v25(&v17[v31], 1, v4) == 1)
    {
      sub_1DD90D378(v17, &qword_1ECD82838, &unk_1DDA185F0);
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v32 = v65;
  sub_1DD90ADB4(v17, v65, &qword_1ECD82838, &unk_1DDA185F0);
  if (v25(&v17[v31], 1, v4) == 1)
  {
    (*(v69 + 8))(v32, v4);
LABEL_16:
    v26 = v17;
    goto LABEL_17;
  }

  v34 = v69;
  v35 = &v17[v31];
  v36 = v66;
  (*(v69 + 32))(v66, v35, v4);
  sub_1DD9E4B98(&qword_1ECD82A60, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v37 = sub_1DDA14AF0();
  v38 = *(v34 + 8);
  v38(v36, v4);
  v38(v32, v4);
  sub_1DD90D378(v17, &qword_1ECD82838, &unk_1DDA185F0);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v39 = v29[7];
  v40 = *(v70 + v39);
  v41 = v68;
  v42 = *(v68 + v39);
  if (v40 == 2)
  {
    if (v42 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v42 == 2)
    {
      return 0;
    }

    if (v40)
    {
      v43 = 0x69737365636F7270;
    }

    else
    {
      v43 = 0x6574656C706D6F63;
    }

    if (v40)
    {
      v44 = 0xEA0000000000676ELL;
    }

    else
    {
      v44 = 0xE900000000000064;
    }

    if (v42)
    {
      v45 = 0x69737365636F7270;
    }

    else
    {
      v45 = 0x6574656C706D6F63;
    }

    if (v42)
    {
      v46 = 0xEA0000000000676ELL;
    }

    else
    {
      v46 = 0xE900000000000064;
    }

    if (v43 == v45 && v44 == v46)
    {

      v41 = v68;
    }

    else
    {
      v47 = sub_1DDA15440();

      v41 = v68;
      if ((v47 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v48 = v29[8];
  v49 = (v70 + v48);
  v50 = *(v70 + v48 + 8);
  v51 = (v41 + v48);
  v52 = v51[1];
  if (v50)
  {
    if (!v52 || (*v49 != *v51 || v50 != v52) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v52)
  {
    return 0;
  }

  v53 = v29[9];
  v54 = (v70 + v53);
  v55 = *(v70 + v53 + 8);
  v56 = (v41 + v53);
  v57 = v56[1];
  if (v55)
  {
    if (!v57 || (*v54 != *v56 || v55 != v57) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v57)
  {
    return 0;
  }

  v58 = v29[10];
  v59 = (v70 + v58);
  v60 = *(v70 + v58 + 8);
  v61 = (v41 + v58);
  v62 = *(v41 + v58 + 8);
  if ((v60 & 1) == 0)
  {
    if (*v59 != *v61)
    {
      v62 = 1;
    }

    return (v62 & 1) == 0;
  }

  return (v62 & 1) != 0;
}

BOOL sub_1DD9FDAD4(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (!v7 || (a1[4] != a2[4] || v6 != v7) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v8 = a1[9];
  v9 = a2[9];
  if (v8)
  {
    if (!v9 || (a1[8] != a2[8] || v8 != v9) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[10];
  v11 = a2[10];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = sub_1DD9665BC(v10, v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = a2[11];
  if (a1[11])
  {
    if (!v13 || (sub_1DD96EB60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v14 = a1[12];
  v15 = a2[12];
  if (!v14)
  {
    return !v15;
  }

  if (!v15)
  {
    return 0;
  }

  v17 = a1[13];
  v16 = a1[14];
  v19 = a2[13];
  v18 = a2[14];

  if ((sub_1DD969360(v14, v15) & 1) == 0)
  {
LABEL_49:

    goto LABEL_50;
  }

  if (!v16)
  {
    if (!v18)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  if (!v18)
  {
LABEL_50:

    return 0;
  }

  if (v17 != v19 || v16 != v18)
  {
    v21 = sub_1DDA15440();

    return (v21 & 1) != 0;
  }

LABEL_52:

  return 1;
}

BOOL sub_1DD9FDD08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DDA134E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83E48, &qword_1DDA1E1A0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
  if (*a1 != *a2 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (v14 == 1)
    {
      v15 = 0x656C706D6F636E69;
    }

    else
    {
      v15 = 0x72676F72705F6E69;
    }

    if (v14 == 1)
    {
      v16 = 0xEA00000000006574;
    }

    else
    {
      v16 = 0xEB00000000737365;
    }
  }

  else
  {
    v15 = 0x6574656C706D6F63;
    v16 = 0xE900000000000064;
  }

  v17 = 0x656C706D6F636E69;
  v18 = 0xEA00000000006574;
  if (*(a2 + 16) != 1)
  {
    v17 = 0x72676F72705F6E69;
    v18 = 0xEB00000000737365;
  }

  if (*(a2 + 16))
  {
    v19 = v17;
  }

  else
  {
    v19 = 0x6574656C706D6F63;
  }

  if (*(a2 + 16))
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xE900000000000064;
  }

  v68 = v7;
  if (v15 == v19 && v16 == v20)
  {
  }

  else
  {
    v21 = sub_1DDA15440();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1DD9668AC(*(a1 + 24), *(a2 + 24));
  if ((v22 & 1) == 0)
  {
    return 0;
  }

  v66 = v5;
  v67 = v4;
  v24 = *(a1 + 32);
  v23 = *(a1 + 40);
  v25 = *(a1 + 48);
  v26 = *(a1 + 56);
  v27 = *(a2 + 32);
  v28 = *(a2 + 40);
  v29 = *(a2 + 48);
  v30 = *(a2 + 56);
  if (v26 == 1)
  {
    if (v30 == 1)
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  if (v30 == 1)
  {
LABEL_30:
    v36 = *(a1 + 32);
    v37 = *(a1 + 40);
    v38 = *(a1 + 48);
    v39 = v29;
    sub_1DD9FFB50(v27, v28, v29, v30);
    sub_1DD9FFB50(v36, v37, v38, v26);
    sub_1DD9FFB94(v36, v37, v38, v26);
    v40 = v27;
    v41 = v28;
    v42 = v39;
    v43 = v30;
LABEL_42:
    sub_1DD9FFB94(v40, v41, v42, v43);
    return 0;
  }

  v61 = *(a2 + 48);
  v62 = v10;
  v65 = v28;
  v44 = v23;
  v45 = v25;
  sub_1DD9FFB50(v27, v65, v29, v30);
  v46 = v24;
  v64 = v45;
  v47 = v45;
  v48 = v24;
  v49 = v65;
  sub_1DD9FFB50(v46, v44, v47, v26);
  v63 = v44;
  if ((sub_1DD9631B8(v48, v44, v27, v49) & 1) == 0)
  {
    sub_1DD928DE0(v27, v49);

    v40 = v48;
LABEL_41:
    v41 = v63;
    v42 = v64;
    v43 = v26;
    goto LABEL_42;
  }

  v60 = v48;
  if (!v26)
  {
    sub_1DD928DE0(v27, v49);
    v10 = v62;
    if (v30)
    {

      v40 = v60;
      v41 = v63;
      v42 = v64;
      v43 = 0;
      goto LABEL_42;
    }

    v26 = 0;
    goto LABEL_52;
  }

  v10 = v62;
  if (!v30)
  {
    sub_1DD928DE0(v27, v49);
    v40 = v60;
    goto LABEL_41;
  }

  v50 = v64;
  if (v64 == v61 && v26 == v30)
  {
    sub_1DD928DE0(v27, v49);

LABEL_52:
    sub_1DD9FFB94(v60, v63, v64, v26);
    goto LABEL_26;
  }

  v56 = sub_1DDA15440();
  v57 = v49;
  v58 = v56;
  sub_1DD928DE0(v27, v57);

  sub_1DD9FFB94(v60, v63, v50, v26);
  if ((v58 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v31 = *(type metadata accessor for ChatChunk.Choice(0) + 32);
  v32 = *(v11 + 48);
  sub_1DD90ADB4(a1 + v31, v13, &qword_1ECD82CE0, &qword_1DDA18700);
  sub_1DD90ADB4(a2 + v31, &v13[v32], &qword_1ECD82CE0, &qword_1DDA18700);
  v34 = v66;
  v33 = v67;
  v35 = *(v66 + 48);
  if (v35(v13, 1, v67) != 1)
  {
    sub_1DD90ADB4(v13, v10, &qword_1ECD82CE0, &qword_1DDA18700);
    if (v35(&v13[v32], 1, v33) == 1)
    {
      (*(v34 + 8))(v10, v33);
      goto LABEL_39;
    }

    v52 = &v13[v32];
    v53 = v68;
    (*(v34 + 32))(v68, v52, v33);
    sub_1DD9E4B98(&qword_1ECD834B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
    v54 = sub_1DDA14AF0();
    v55 = *(v34 + 8);
    v55(v53, v33);
    v55(v10, v33);
    sub_1DD90D378(v13, &qword_1ECD82CE0, &qword_1DDA18700);
    return (v54 & 1) != 0;
  }

  if (v35(&v13[v32], 1, v33) != 1)
  {
LABEL_39:
    sub_1DD90D378(v13, &qword_1ECD83E48, &qword_1DDA1E1A0);
    return 0;
  }

  sub_1DD90D378(v13, &qword_1ECD82CE0, &qword_1DDA18700);
  return 1;
}

BOOL sub_1DD9FE380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v63 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D10, &qword_1DDA185E0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v60 = (&v56 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v62 = (&v56 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v56 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83E58, &qword_1DDA1E1B8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v59 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v61 = &v56 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v56 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v56 - v25;
  v64 = v24;
  v65 = a1;
  v27 = *(v24 + 48);
  sub_1DD90ADB4(a1, &v56 - v25, &qword_1ECD82D10, &qword_1DDA185E0);
  v28 = a2;
  sub_1DD90ADB4(a2, &v26[v27], &qword_1ECD82D10, &qword_1DDA185E0);
  v29 = *(v5 + 48);
  if (v29(v26, 1, v4) == 1)
  {
    if (v29(&v26[v27], 1, v4) == 1)
    {
      sub_1DD90D378(v26, &qword_1ECD82D10, &qword_1DDA185E0);
      goto LABEL_8;
    }

LABEL_6:
    v30 = v26;
LABEL_28:
    sub_1DD90D378(v30, &qword_1ECD83E58, &qword_1DDA1E1B8);
    return 0;
  }

  sub_1DD90ADB4(v26, v15, &qword_1ECD82D10, &qword_1DDA185E0);
  if (v29(&v26[v27], 1, v4) == 1)
  {
    sub_1DD9FF568(v15, type metadata accessor for ChatChunk.RateLimits.Limits);
    goto LABEL_6;
  }

  v31 = &v26[v27];
  v32 = v63;
  sub_1DD9FEFD0(v31, v63, type metadata accessor for ChatChunk.RateLimits.Limits);
  v33 = sub_1DD9FEC08(v15, v32);
  sub_1DD9FF568(v32, type metadata accessor for ChatChunk.RateLimits.Limits);
  sub_1DD9FF568(v15, type metadata accessor for ChatChunk.RateLimits.Limits);
  sub_1DD90D378(v26, &qword_1ECD82D10, &qword_1DDA185E0);
  if (!v33)
  {
    return 0;
  }

LABEL_8:
  v57 = type metadata accessor for ChatChunk.RateLimits(0);
  v34 = *(v57 + 20);
  v35 = *(v64 + 48);
  sub_1DD90ADB4(v65 + v34, v23, &qword_1ECD82D10, &qword_1DDA185E0);
  v36 = v28;
  sub_1DD90ADB4(v28 + v34, &v23[v35], &qword_1ECD82D10, &qword_1DDA185E0);
  if (v29(v23, 1, v4) == 1)
  {
    if (v29(&v23[v35], 1, v4) == 1)
    {
      sub_1DD90D378(v23, &qword_1ECD82D10, &qword_1DDA185E0);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v37 = v62;
  sub_1DD90ADB4(v23, v62, &qword_1ECD82D10, &qword_1DDA185E0);
  if (v29(&v23[v35], 1, v4) == 1)
  {
    sub_1DD9FF568(v37, type metadata accessor for ChatChunk.RateLimits.Limits);
LABEL_13:
    v30 = v23;
    goto LABEL_28;
  }

  v38 = &v23[v35];
  v39 = v63;
  sub_1DD9FEFD0(v38, v63, type metadata accessor for ChatChunk.RateLimits.Limits);
  v40 = sub_1DD9FEC08(v37, v39);
  sub_1DD9FF568(v39, type metadata accessor for ChatChunk.RateLimits.Limits);
  sub_1DD9FF568(v37, type metadata accessor for ChatChunk.RateLimits.Limits);
  sub_1DD90D378(v23, &qword_1ECD82D10, &qword_1DDA185E0);
  if (!v40)
  {
    return 0;
  }

LABEL_15:
  v41 = v57;
  v42 = *(v57 + 24);
  v43 = *(v64 + 48);
  v44 = v61;
  sub_1DD90ADB4(v65 + v42, v61, &qword_1ECD82D10, &qword_1DDA185E0);
  sub_1DD90ADB4(v36 + v42, v44 + v43, &qword_1ECD82D10, &qword_1DDA185E0);
  if (v29(v44, 1, v4) == 1)
  {
    if (v29((v44 + v43), 1, v4) != 1)
    {
LABEL_27:
      v30 = v44;
      goto LABEL_28;
    }

    sub_1DD90D378(v44, &qword_1ECD82D10, &qword_1DDA185E0);
LABEL_21:
    v50 = *(v41 + 28);
    v51 = *(v64 + 48);
    v44 = v59;
    sub_1DD90ADB4(v65 + v50, v59, &qword_1ECD82D10, &qword_1DDA185E0);
    sub_1DD90ADB4(v36 + v50, v44 + v51, &qword_1ECD82D10, &qword_1DDA185E0);
    if (v29(v44, 1, v4) == 1)
    {
      if (v29((v44 + v51), 1, v4) == 1)
      {
        sub_1DD90D378(v44, &qword_1ECD82D10, &qword_1DDA185E0);
        return 1;
      }

      goto LABEL_27;
    }

    v52 = v58;
    sub_1DD90ADB4(v44, v58, &qword_1ECD82D10, &qword_1DDA185E0);
    if (v29((v44 + v51), 1, v4) == 1)
    {
      v46 = v52;
      goto LABEL_26;
    }

    v54 = v63;
    sub_1DD9FEFD0(v44 + v51, v63, type metadata accessor for ChatChunk.RateLimits.Limits);
    v55 = sub_1DD9FEC08(v52, v54);
    sub_1DD9FF568(v54, type metadata accessor for ChatChunk.RateLimits.Limits);
    sub_1DD9FF568(v52, type metadata accessor for ChatChunk.RateLimits.Limits);
    sub_1DD90D378(v44, &qword_1ECD82D10, &qword_1DDA185E0);
    return v55;
  }

  v45 = v60;
  sub_1DD90ADB4(v44, v60, &qword_1ECD82D10, &qword_1DDA185E0);
  if (v29((v44 + v43), 1, v4) == 1)
  {
    v46 = v45;
LABEL_26:
    sub_1DD9FF568(v46, type metadata accessor for ChatChunk.RateLimits.Limits);
    goto LABEL_27;
  }

  v47 = v44 + v43;
  v48 = v63;
  sub_1DD9FEFD0(v47, v63, type metadata accessor for ChatChunk.RateLimits.Limits);
  v49 = sub_1DD9FEC08(v45, v48);
  sub_1DD9FF568(v48, type metadata accessor for ChatChunk.RateLimits.Limits);
  sub_1DD9FF568(v45, type metadata accessor for ChatChunk.RateLimits.Limits);
  sub_1DD90D378(v44, &qword_1ECD82D10, &qword_1DDA185E0);
  if (v49)
  {
    goto LABEL_21;
  }

  return 0;
}

BOOL sub_1DD9FEC08(void *a1, void *a2)
{
  v4 = sub_1DDA13680();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A58, &qword_1DDA16E70);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  v14 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  v15 = a1;
  v16 = a2;
  v25 = v14;
  v26 = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_1DD90ADB4(v15 + v17, v13, &qword_1ECD82838, &unk_1DDA185F0);
  v19 = v16 + v17;
  v20 = v16;
  sub_1DD90ADB4(v19, &v13[v18], &qword_1ECD82838, &unk_1DDA185F0);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v18], 1, v4) == 1)
    {
      sub_1DD90D378(v13, &qword_1ECD82838, &unk_1DDA185F0);
      return *(v26 + *(v25 + 24)) == *(v20 + *(v25 + 24));
    }

    goto LABEL_7;
  }

  sub_1DD90ADB4(v13, v10, &qword_1ECD82838, &unk_1DDA185F0);
  if (v21(&v13[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1DD90D378(v13, &qword_1ECD82A58, &qword_1DDA16E70);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v18], v4);
  sub_1DD9E4B98(&qword_1ECD82A60, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v23 = sub_1DDA14AF0();
  v24 = *(v5 + 8);
  v24(v7, v4);
  v24(v10, v4);
  v20 = v16;
  sub_1DD90D378(v13, &qword_1ECD82838, &unk_1DDA185F0);
  if (v23)
  {
    return *(v26 + *(v25 + 24)) == *(v20 + *(v25 + 24));
  }

  return 0;
}

unint64_t sub_1DD9FEF7C()
{
  result = qword_1ECD83D90;
  if (!qword_1ECD83D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83D90);
  }

  return result;
}

uint64_t sub_1DD9FEFD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DD9FF038()
{
  result = qword_1ECD83D98;
  if (!qword_1ECD83D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83D98);
  }

  return result;
}

unint64_t sub_1DD9FF08C()
{
  result = qword_1ECD83DA0;
  if (!qword_1ECD83DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83DA0);
  }

  return result;
}

unint64_t sub_1DD9FF0E0()
{
  result = qword_1ECD83DB8;
  if (!qword_1ECD83DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83DB8);
  }

  return result;
}

unint64_t sub_1DD9FF134()
{
  result = qword_1ECD83DC0;
  if (!qword_1ECD83DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83DC0);
  }

  return result;
}

unint64_t sub_1DD9FF188()
{
  result = qword_1ECD83DC8;
  if (!qword_1ECD83DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83DC8);
  }

  return result;
}

unint64_t sub_1DD9FF1DC()
{
  result = qword_1ECD83DD0;
  if (!qword_1ECD83DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83DD0);
  }

  return result;
}

unint64_t sub_1DD9FF230()
{
  result = qword_1ECD83DD8;
  if (!qword_1ECD83DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83DD8);
  }

  return result;
}

unint64_t sub_1DD9FF284()
{
  result = qword_1ECD83DE0;
  if (!qword_1ECD83DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83DE0);
  }

  return result;
}

unint64_t sub_1DD9FF2D8()
{
  result = qword_1ECD83DE8;
  if (!qword_1ECD83DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83DE8);
  }

  return result;
}

unint64_t sub_1DD9FF32C()
{
  result = qword_1ECD83DF8;
  if (!qword_1ECD83DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83DF8);
  }

  return result;
}

unint64_t sub_1DD9FF380()
{
  result = qword_1ECD83E08;
  if (!qword_1ECD83E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83E08);
  }

  return result;
}

unint64_t sub_1DD9FF3D4()
{
  result = qword_1ECD83E18;
  if (!qword_1ECD83E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83E18);
  }

  return result;
}

unint64_t sub_1DD9FF428()
{
  result = qword_1ECD83E28;
  if (!qword_1ECD83E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83E20, &qword_1DDA1E190);
    sub_1DD9FF4AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83E28);
  }

  return result;
}

unint64_t sub_1DD9FF4AC()
{
  result = qword_1ECD83E30;
  if (!qword_1ECD83E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83E30);
  }

  return result;
}

uint64_t sub_1DD9FF500(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD9FF568(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1DD9FF628(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1DDA15440() & 1) == 0 || a1[4] != a2[4] || (a1[5] != a2[5] || a1[6] != a2[6]) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if ((a1[7] != a2[7] || a1[8] != a2[8]) && (sub_1DDA15440() & 1) == 0 || a1[9] != a2[9] || (a1[10] != a2[10] || a1[11] != a2[11]) && (sub_1DDA15440() & 1) == 0 || (a1[12] != a2[12] || a1[13] != a2[13]) && (sub_1DDA15440() & 1) == 0 || (a1[14] != a2[14] || a1[15] != a2[15]) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for TwoPhaseUploadDocumentResponse(0) + 52);

  return sub_1DD9FF798((a1 + v6), (a2 + v6));
}

BOOL sub_1DD9FF798(void *a1, void *a2)
{
  v4 = sub_1DDA13680();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A58, &qword_1DDA16E70);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  if (*a1 != *a2 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  if ((sub_1DDA13650() & 1) == 0 || (sub_1DDA13650() & 1) == 0)
  {
    return 0;
  }

  v15 = *(SessionResponse + 28);
  v16 = *(v11 + 48);
  sub_1DD90ADB4(a1 + v15, v13, &qword_1ECD82838, &unk_1DDA185F0);
  v17 = a2 + v15;
  v18 = v5;
  v25 = v16;
  sub_1DD90ADB4(v17, &v13[v16], &qword_1ECD82838, &unk_1DDA185F0);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v25], 1, v4) == 1)
    {
      sub_1DD90D378(v13, &qword_1ECD82838, &unk_1DDA185F0);
      return sub_1DD9FA8AC(*(a1 + *(SessionResponse + 32)), *(a1 + *(SessionResponse + 32) + 8), *(a2 + *(SessionResponse + 32)), *(a2 + *(SessionResponse + 32) + 8));
    }

    goto LABEL_10;
  }

  sub_1DD90ADB4(v13, v10, &qword_1ECD82838, &unk_1DDA185F0);
  if (v19(&v13[v25], 1, v4) == 1)
  {
    (*(v18 + 8))(v10, v4);
LABEL_10:
    sub_1DD90D378(v13, &qword_1ECD82A58, &qword_1DDA16E70);
    return 0;
  }

  (*(v18 + 32))(v7, &v13[v25], v4);
  sub_1DD9E4B98(&qword_1ECD82A60, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v22 = sub_1DDA14AF0();
  v23 = *(v18 + 8);
  v23(v7, v4);
  v23(v10, v4);
  sub_1DD90D378(v13, &qword_1ECD82838, &unk_1DDA185F0);
  if (v22)
  {
    return sub_1DD9FA8AC(*(a1 + *(SessionResponse + 32)), *(a1 + *(SessionResponse + 32) + 8), *(a2 + *(SessionResponse + 32)), *(a2 + *(SessionResponse + 32) + 8));
  }

  return 0;
}

uint64_t sub_1DD9FFB50(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_1DD928DC0(result, a2);
  }

  return result;
}

uint64_t sub_1DD9FFB94(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_1DD928DE0(result, a2);
  }

  return result;
}

unint64_t sub_1DD9FFBD8()
{
  result = qword_1ECD83E68;
  if (!qword_1ECD83E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83E68);
  }

  return result;
}

unint64_t sub_1DD9FFC2C()
{
  result = qword_1ECD83E80;
  if (!qword_1ECD83E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83E80);
  }

  return result;
}

unint64_t sub_1DD9FFC80()
{
  result = qword_1ECD83E98;
  if (!qword_1ECD83E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83E98);
  }

  return result;
}

unint64_t sub_1DD9FFCD4()
{
  result = qword_1ECD83EB0;
  if (!qword_1ECD83EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83EB0);
  }

  return result;
}

unint64_t sub_1DD9FFD28(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA154C0();

  if (v2 >= 0x27)
  {
    return 39;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD9FFD7C(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v10 = a2;
  v6[2] = &v9;
  if (sub_1DD9C32BC(sub_1DDA06808, v6, &unk_1F58EC480))
  {

    sub_1DD9311E4(&qword_1F58EC520);
    return 0;
  }

  else
  {
    sub_1DD9313D4();
    v9 = a1;
    v10 = a2;
    v7 = qword_1F58EC4E0;
    v8 = off_1F58EC4E8;
    if (sub_1DDA14FA0() & 1) != 0 || (v9 = a1, v10 = a2, v7 = qword_1F58EC4F0, v8 = off_1F58EC4F8, (sub_1DDA14FA0()))
    {

      sub_1DD9311E4(&qword_1F58EC520);
      return 1;
    }

    else
    {
      v9 = a1;
      v10 = a2;
      v7 = qword_1F58EC520;
      v8 = off_1F58EC528;
      v5 = sub_1DDA14FA0();

      sub_1DD9311E4(&qword_1F58EC520);
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
}

uint64_t sub_1DD9FFEF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DDA145F0();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1DDA14630();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DDA14600();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DDA145D0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DDA145E0();
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == *MEMORY[0x1E69A0D38])
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x1E69A0D28])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x1E69A0D30])
  {
    v17 = 2;
  }

  else if (v16 == *MEMORY[0x1E69A0D20])
  {
    v17 = 3;
  }

  else if (v16 == *MEMORY[0x1E69A0D18])
  {
    v17 = 4;
  }

  else
  {
    (*(v13 + 8))(v15, v12);
    v17 = 5;
  }

  sub_1DDA14620();
  v18 = (*(v9 + 88))(v11, v8);
  v19 = v36;
  if (v18 == *MEMORY[0x1E69A0D68])
  {
    v20 = 0;
  }

  else if (v18 == *MEMORY[0x1E69A0D60])
  {
    v20 = 1;
  }

  else if (v18 == *MEMORY[0x1E69A0D50])
  {
    v20 = 2;
  }

  else if (v18 == *MEMORY[0x1E69A0D58])
  {
    v20 = 3;
  }

  else
  {
    (*(v9 + 8))(v11, v8);
    v20 = 4;
  }

  sub_1DDA14640();
  v22 = v33;
  v21 = v34;
  v23 = (*(v33 + 88))(v7, v34);
  if (v23 == *MEMORY[0x1E69A0D70])
  {
    v24 = 0;
  }

  else if (v23 == *MEMORY[0x1E69A0D80])
  {
    v24 = 1;
  }

  else if (v23 == *MEMORY[0x1E69A0D78])
  {
    v24 = 2;
  }

  else if (v23 == *MEMORY[0x1E69A0D88])
  {
    v24 = 3;
  }

  else
  {
    (*(v22 + 8))(v7, v21);
    v24 = 4;
  }

  sub_1DDA14610();
  v25 = v35;
  v26 = (*(v35 + 88))(v4, v19);
  if (v26 == *MEMORY[0x1E69A0D40])
  {
    (*(v25 + 96))(v4, v19);
    v27 = 0;
    v28 = 0;
    v29 = *v4;
  }

  else if (v26 == *MEMORY[0x1E69A0D48])
  {
    v29 = 0;
    v28 = 0;
    v27 = 1;
  }

  else
  {
    (*(v25 + 8))(v4, v19);
    v29 = 0;
    v27 = 0;
    v28 = 1;
  }

  result = sub_1DDA14650();
  *a1 = v17;
  *(a1 + 1) = v20;
  *(a1 + 2) = v24;
  *(a1 + 8) = v29;
  *(a1 + 16) = v27;
  *(a1 + 17) = v28;
  *(a1 + 24) = result;
  *(a1 + 32) = v31;
  return result;
}

uint64_t sub_1DDA0041C(uint64_t a1)
{
  v33 = sub_1DDA14580();
  v2 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DDA14550();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x1E69A0CE0])
  {
    (*(v6 + 8))(a1, v5);
    (*(v6 + 96))(v8, v5);
    return *v8;
  }

  if (v9 == *MEMORY[0x1E69A0CD8])
  {
    (*(v6 + 8))(a1, v5);
    (*(v6 + 96))(v8, v5);
    return *v8;
  }

  if (v9 == *MEMORY[0x1E69A0CD0])
  {
    (*(v6 + 96))(v8, v5);
    v11 = *v8;
    v12 = *(*v8 + 16);
    if (v12)
    {
      v27 = v6;
      v28 = v5;
      v29 = a1;
      v34 = MEMORY[0x1E69E7CC0];
      sub_1DD9AF0BC(0, v12, 0);
      v10 = v34;
      v14 = *(v2 + 16);
      v13 = v2 + 16;
      v15 = *(v13 + 64);
      v26[1] = v11;
      v16 = v11 + ((v15 + 32) & ~v15);
      v30 = *(v13 + 56);
      v31 = v14;
      v32 = v13;
      v17 = (v13 - 8);
      do
      {
        v18 = v33;
        v31(v4, v16, v33);
        v19 = sub_1DDA14570();
        v21 = v20;
        (*v17)(v4, v18);
        v34 = v10;
        v23 = *(v10 + 16);
        v22 = *(v10 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1DD9AF0BC((v22 > 1), v23 + 1, 1);
          v10 = v34;
        }

        *(v10 + 16) = v23 + 1;
        v24 = v10 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        v16 += v30;
        --v12;
      }

      while (v12);
      (*(v27 + 8))(v29, v28);
    }

    else
    {

      (*(v6 + 8))(a1, v5);
      return MEMORY[0x1E69E7CC0];
    }

    return v10;
  }

  result = sub_1DDA15180();
  __break(1u);
  return result;
}

unint64_t sub_1DDA00814@<X0>(uint64_t *a1@<X8>)
{
  v136 = sub_1DDA14550();
  v135 = *(v136 - 8);
  v2 = MEMORY[0x1EEE9AC00](v136);
  v132 = &v125 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v133 = &v125 - v4;
  v144 = sub_1DDA144E0();
  v142 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v143 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84268, &qword_1DDA1E368);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v138 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v141 = &v125 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v139 = (&v125 - v12);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v140 = (&v125 - v14);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v134 = &v125 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v137 = &v125 - v17;
  v18 = sub_1DDA144F0();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84270, &unk_1DDA1E370);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v125 - v23;
  v25 = sub_1DDA14540();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DDA14560();
  v29 = v25;
  v30 = v26;
  if ((*(v26 + 48))(v24, 1, v29) == 1)
  {
    result = sub_1DD90D378(v24, &qword_1ECD84270, &unk_1DDA1E370);
LABEL_3:
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    a1[4] = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
LABEL_30:
    a1[5] = v36 | v32;
    a1[6] = v35;
    a1[7] = v34;
    *(a1 + 32) = v33;
    return result;
  }

  v37 = *(v26 + 32);
  v131 = v29;
  v37(v28, v24, v29);
  sub_1DDA14520();
  v38 = (*(v19 + 88))(v21, v18);
  v39 = v28;
  if (v38 != *MEMORY[0x1E69A0CB8])
  {
    if (v38 == *MEMORY[0x1E69A0CC8])
    {
      v130 = v30;
      v129 = a1;
      v72 = sub_1DDA14590();
      v74 = v73;
      v75 = sub_1DDA14530();
      v76 = v140;
      v77 = v39;
      sub_1DDA14500();
      v78 = v139;
      sub_1DD90ADB4(v76, v139, &qword_1ECD84268, &qword_1DDA1E368);
      v79 = v135;
      v80 = v136;
      if ((*(v135 + 48))(v78, 1, v136) == 1)
      {
        v35 = 0;
        v34 = 0;
        v81 = -1;
      }

      else
      {
        v106 = v74;
        v107 = v75;
        v108 = v72;
        v109 = v133;
        (*(v79 + 32))(v133, v78, v80);
        v110 = v132;
        (*(v79 + 16))(v132, v109, v80);
        v111 = sub_1DDA0041C(v110);
        v112 = v79;
        v35 = v111;
        v34 = v113;
        v81 = v114;
        v115 = v109;
        v72 = v108;
        v75 = v107;
        v74 = v106;
        (*(v112 + 8))(v115, v80);
      }

      sub_1DD90D378(v76, &qword_1ECD84268, &qword_1DDA1E368);
      result = (*(v130 + 8))(v77, v131);
      v32 = 0;
      v36 = 0;
      v33 = v81 | 0x100;
      a1 = v129;
      *v129 = v72;
      a1[1] = v74;
      *(a1 + 1) = xmmword_1DDA1C2A0;
      a1[4] = 0;
      if ((v75 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v38 != *MEMORY[0x1E69A0CC0])
      {
        (*(v30 + 8))(v28, v131);
        result = (*(v19 + 8))(v21, v18);
        goto LABEL_3;
      }

      v82 = v30;
      v129 = a1;
      v83 = sub_1DDA14590();
      v85 = v84;
      v86 = sub_1DDA14530();
      v87 = v141;
      sub_1DDA14500();
      v88 = v138;
      sub_1DD90ADB4(v87, v138, &qword_1ECD84268, &qword_1DDA1E368);
      v89 = v135;
      v90 = v136;
      if ((*(v135 + 48))(v88, 1, v136) == 1)
      {
        v35 = 0;
        v34 = 0;
        v91 = -1;
      }

      else
      {
        v116 = v86;
        v117 = v133;
        (*(v89 + 32))(v133, v88, v90);
        v118 = v132;
        (*(v89 + 16))(v132, v117, v90);
        v119 = sub_1DDA0041C(v118);
        v120 = v89;
        v35 = v119;
        v34 = v121;
        v91 = v122;
        v123 = v117;
        v86 = v116;
        (*(v120 + 8))(v123, v90);
      }

      sub_1DD90D378(v141, &qword_1ECD84268, &qword_1DDA1E368);
      result = (*(v82 + 8))(v39, v131);
      v32 = 0;
      v36 = 0;
      v33 = v91 | 0x100;
      v124 = v129;
      *v129 = v83;
      v124[1] = v85;
      a1 = v124;
      *(v124 + 1) = xmmword_1DDA1C290;
      v124[4] = 0;
      if ((v86 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

LABEL_29:
    v36 = 256;
    goto LABEL_30;
  }

  v130 = v30;
  (*(v19 + 96))(v21, v18);
  v40 = *v21;
  v128 = sub_1DDA14590();
  v127 = v41;
  v42 = *(v40 + 16);
  if (!v42)
  {

    v43 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v92 = sub_1DDA14510();
    v93 = sub_1DDA14530();
    v94 = v137;
    sub_1DDA14500();
    v95 = v134;
    sub_1DD90ADB4(v94, v134, &qword_1ECD84268, &qword_1DDA1E368);
    v96 = v135;
    v97 = v136;
    if ((*(v135 + 48))(v95, 1, v136) == 1)
    {
      v35 = 0;
      v34 = 0;
      v98 = -1;
    }

    else
    {
      v99 = v133;
      (*(v96 + 32))(v133, v95, v97);
      v100 = v132;
      (*(v96 + 16))(v132, v99, v97);
      v101 = sub_1DDA0041C(v100);
      v102 = v96;
      v35 = v101;
      v34 = v103;
      v98 = v104;
      (*(v102 + 8))(v99, v97);
    }

    sub_1DD90D378(v137, &qword_1ECD84268, &qword_1DDA1E368);
    result = (*(v130 + 8))(v39, v131);
    v33 = v98 | 0x100;
    v32 = v92 & 1;
    v105 = v127;
    *a1 = v128;
    a1[1] = v105;
    *(a1 + 1) = xmmword_1DDA1C2B0;
    a1[4] = v43;
    if ((v93 & 1) == 0)
    {
      v36 = 0;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v126 = v28;
  v129 = a1;
  v153 = MEMORY[0x1E69E7CC0];
  sub_1DD9AF17C(0, v42, 0);
  v43 = v153;
  v44 = v142;
  v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v125 = v40;
  v46 = v40 + v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830B0, &unk_1DDA18D30);
  v140 = *(v44 + 16);
  v141 = v47;
  v142 = v44 + 16;
  v138 = *(v44 + 72);
  v139 = (v44 + 8);
  while (1)
  {
    v140(v143, v46, v144);
    v145 = 1701667182;
    v146 = 0xE400000000000000;
    v147 = sub_1DDA144C0();
    v148 = v48;
    v149 = 0x65756C6176;
    v150 = 0xE500000000000000;
    v151 = sub_1DDA144D0();
    v152 = v49;
    v50 = sub_1DDA151C0();

    v52 = v145;
    v51 = v146;
    v54 = v147;
    v53 = v148;

    result = sub_1DD96AC38(v52, v51);
    if (v55)
    {
      break;
    }

    *(v50 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v56 = (v50[6] + 16 * result);
    *v56 = v52;
    v56[1] = v51;
    v57 = (v50[7] + 16 * result);
    *v57 = v54;
    v57[1] = v53;
    v58 = v50[2];
    v59 = __OFADD__(v58, 1);
    v60 = v58 + 1;
    if (v59)
    {
      goto LABEL_36;
    }

    v50[2] = v60;
    v61 = v149;
    v62 = v150;
    v64 = v151;
    v63 = v152;

    result = sub_1DD96AC38(v61, v62);
    if (v65)
    {
      break;
    }

    *(v50 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v66 = (v50[6] + 16 * result);
    *v66 = v61;
    v66[1] = v62;
    v67 = (v50[7] + 16 * result);
    *v67 = v64;
    v67[1] = v63;
    v68 = v50[2];
    v59 = __OFADD__(v68, 1);
    v69 = v68 + 1;
    if (v59)
    {
      goto LABEL_36;
    }

    v50[2] = v69;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829C8, &qword_1DDA1E380);
    swift_arrayDestroy();
    (*v139)(v143, v144);
    v153 = v43;
    v71 = *(v43 + 16);
    v70 = *(v43 + 24);
    if (v71 >= v70 >> 1)
    {
      sub_1DD9AF17C((v70 > 1), v71 + 1, 1);
      v43 = v153;
    }

    *(v43 + 16) = v71 + 1;
    *(v43 + 8 * v71 + 32) = v50;
    v46 += v138;
    if (!--v42)
    {

      a1 = v129;
      v39 = v126;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1DDA014D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= 9999)
  {
    v3 = 10000 * a1;
    if ((a1 * 10000) >> 64 != (10000 * a1) >> 63)
    {
      __break(1u);
      goto LABEL_11;
    }

    result = v3 + a2;
    if (!__OFADD__(v3, a2))
    {
      return result;
    }

    __break(1u);
  }

  if (qword_1ECD827A8 != -1)
  {
LABEL_11:
    swift_once();
  }

  v5 = sub_1DDA14810();
  __swift_project_value_buffer(v5, qword_1ECDA20E0);
  v6 = sub_1DDA147F0();
  v7 = sub_1DDA14EE0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = a2;
    *(v8 + 12) = 2048;
    *(v8 + 14) = 10000;
    _os_log_impl(&dword_1DD8F8000, v6, v7, "The content index is too large, %ld, The maximum we can support is: %ld", v8, 0x16u);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
  }

  return 0;
}

unint64_t sub_1DDA01600(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DDA0164C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84790, &qword_1DDA22798);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0C338();
  sub_1DDA15620();
  v8[14] = 0;
  sub_1DDA0C38C();
  sub_1DDA152C0();
  v6 = v8[15];
  v8[13] = 1;
  sub_1DDA152B0();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t sub_1DDA0180C(void *a1)
{
  v3 = sub_1DDA150C0();
  MEMORY[0x1EEE9AC00](v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA15610();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v4 = sub_1DDA15450();
    if (v4 == 0x726576656ELL && v5 == 0xE500000000000000)
    {
    }

    else
    {
      v7 = sub_1DDA15440();

      if ((v7 & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1(v10, v11);
        sub_1DDA0670C();
        sub_1DDA15460();
        v3 = v9;
LABEL_13:
        __swift_destroy_boxed_opaque_existential_1(v10);
        __swift_destroy_boxed_opaque_existential_1(a1);
        return v3;
      }
    }

    v3 = 2;
    goto LABEL_13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_1DDA01C74(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DDA01CC0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84DA0, &qword_1DDA24C98);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA11258();
  sub_1DDA15620();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_1DDA15280();
    v10 = 1;
    sub_1DDA15280();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1DDA01E8C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DDA01ED8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DDA01F24(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DDA01F70(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DDA01FBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84D48, &qword_1DDA24C68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA11744();
  sub_1DDA15620();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v27 = 0;
    v9 = sub_1DDA15280();
    v11 = v10;
    v12 = v9;
    type metadata accessor for JSONSchema();
    v26 = 1;
    sub_1DD9E4B98(&qword_1ECD83420, type metadata accessor for JSONSchema, &unk_1DDA1A558);
    sub_1DDA152C0();
    v21 = v12;
    v22 = v23;
    v25 = 2;
    v13 = sub_1DDA15280();
    v15 = v14;
    v20 = v13;
    v24 = 3;
    v16 = sub_1DDA15290();
    (*(v6 + 8))(v8, v5);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    v18 = v22;
    *a2 = v21;
    *(a2 + 8) = v11;
    v19 = v20;
    *(a2 + 16) = v18;
    *(a2 + 24) = v19;
    *(a2 + 32) = v15;
    *(a2 + 40) = v16 & 1;
  }

  return result;
}

uint64_t sub_1DDA022C0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD849C0, &qword_1DDA22860);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0ED9C();
  sub_1DDA15620();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v24[0]) = 0;
    v9 = sub_1DDA15280();
    v11 = v10;
    v20 = v9;
    v33 = 1;
    sub_1DDA0EDF0();
    sub_1DDA152C0();
    (*(v6 + 8))(v8, v5);
    v12 = *(&v28 + 1);
    v19 = v28;
    v13 = v29;
    v14 = v30;
    v32 = v31;
    v15 = v20;
    *&v21 = v20;
    *(&v21 + 1) = v11;
    v22 = v28;
    *v23 = v29;
    *&v23[16] = v30;
    v23[24] = v31;
    sub_1DDA0EE44(&v21, v24);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v24[0] = v15;
    v24[1] = v11;
    v24[2] = v19;
    v24[3] = v12;
    v25 = v13;
    v26 = v14;
    v27 = v32;
    result = sub_1DDA0EE7C(v24);
    v17 = v22;
    *a2 = v21;
    a2[1] = v17;
    a2[2] = *v23;
    *(a2 + 41) = *&v23[9];
  }

  return result;
}

uint64_t sub_1DDA02544@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83D88, &qword_1DDA1E188);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9FEF7C();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = 1701869940;
  v40 = 0xE400000000000000;
  v41 = 0;
  LOBYTE(v42) = 1;
  v10 = sub_1DDA15280();
  v11 = v9;
  v12 = v10 == 0x6567617373656DLL && v9 == 0xE700000000000000;
  if (!v12 && (sub_1DDA15440() & 1) == 0)
  {
    v21 = v10 == 0x6E6F6974636E7566 && v11 == 0xED00006C6C61635FLL;
    if (v21 || (sub_1DDA15440() & 1) != 0)
    {
      v45[0] = v10;
      v45[1] = v11;
      v46 = 0;
      v47 = 1;
      sub_1DDA060C4();
      sub_1DDA152C0();
      (*(v6 + 8))(v8, v5);

      v17 = v39;
      v38 = v40;
      v18 = v41;
      v19 = v42;
      v16 = 1;
      v14 = v43;
      v15 = v44;
      goto LABEL_9;
    }

    v22 = v10 == 0x5F726573776F7262 && v11 == 0xEC0000006C6C6163;
    if (v22 || (sub_1DDA15440() & 1) != 0)
    {
      v39 = v10;
      v40 = v11;
      v41 = 0;
      LOBYTE(v42) = 1;
      sub_1DDA06070();
      sub_1DDA152C0();
      (*(v6 + 8))(v8, v5);

      v17 = 0;
      v38 = 0;
      v18 = 0;
      v19 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 4;
      goto LABEL_9;
    }

    v23 = v10 == 0xD000000000000010 && 0x80000001DDA29BD0 == v11;
    if (v23 || (sub_1DDA15440() & 1) != 0)
    {
      v39 = v10;
      v40 = v11;
      v41 = 0;
      LOBYTE(v42) = 1;
      sub_1DD9FF188();
      sub_1DDA152C0();
      (*(v6 + 8))(v8, v5);

      v38 = 0;
      v18 = 0;
      v19 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 4;
      v17 = 1;
      goto LABEL_9;
    }

    if (v10 == 0xD000000000000014 && 0x80000001DDA29BF0 == v11 || (sub_1DDA15440() & 1) != 0)
    {
      v45[0] = v10;
      v45[1] = v11;
      v46 = 0;
      v47 = 1;
      sub_1DDA0601C();
      sub_1DDA152C0();
      (*(v6 + 8))(v8, v5);

      v15 = 0;
      v17 = v39;
      v38 = v40;
      v18 = v41;
      v19 = v42;
      v16 = 2;
      v14 = v43;
      goto LABEL_9;
    }

    if (v10 == 0xD000000000000013 && 0x80000001DDA29C10 == v11 || (sub_1DDA15440() & 1) != 0)
    {
      v39 = v10;
      v40 = v11;
      v41 = 0;
      LOBYTE(v42) = 1;
      sub_1DDA05FC8();
      sub_1DDA152C0();
      (*(v6 + 8))(v8, v5);

      v19 = 0;
      v14 = 0;
      v15 = 0;
      v17 = v45[0];
      v38 = v45[1];
      v16 = 3;
      v18 = v46;
      goto LABEL_9;
    }

    v24 = qword_1ECD827A8;

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = sub_1DDA14810();
    __swift_project_value_buffer(v25, qword_1ECDA20E0);

    v26 = sub_1DDA147F0();
    v27 = sub_1DDA14EE0();

    v37 = v27;
    v38 = v26;
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39 = v36;
      *v28 = 136315394;
      v45[0] = &type metadata for InputItem;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84148, &qword_1DDA1E318);
      v29 = sub_1DDA14B70();
      v31 = sub_1DD93FA54(v29, v30, &v39);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1DD93FA54(v10, v11, &v39);
      v32 = v38;
      _os_log_impl(&dword_1DD8F8000, v38, v37, "Unrecognized %s type identifier: %s", v28, 0x16u);
      v33 = v36;
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v33, -1, -1);
      MEMORY[0x1E12B8CE0](v28, -1, -1);
    }

    else
    {
    }

    v39 = v10;
    v40 = v11;
    v41 = 0;
    LOBYTE(v42) = 1;
    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    sub_1DDA15070();

    strcpy(v45, "Unrecognized ");
    HIWORD(v45[1]) = -4864;
    v48 = &type metadata for InputItem;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84148, &qword_1DDA1E318);
    v34 = sub_1DDA14B70();
    MEMORY[0x1E12B7AB0](v34);

    MEMORY[0x1E12B7AB0](0xD000000000000012, 0x80000001DDA29C30);
    MEMORY[0x1E12B7AB0](v10, v11);

    sub_1DDA150D0();
    swift_allocError();
    sub_1DDA05B54(&qword_1ECD84048, &qword_1ECD83D88, &qword_1DDA1E188);
    sub_1DDA150A0();

    swift_willThrow();
    (*(v6 + 8))(v8, v5);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v45[0] = v10;
  v45[1] = v11;
  v46 = 0;
  v47 = 1;
  sub_1DDA06118();
  sub_1DDA152C0();
  (*(v6 + 8))(v8, v5);

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v39;
  v18 = v41;
  v38 = v40;
  v19 = v42;
LABEL_9:
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v20 = v38;
  *a2 = v17;
  *(a2 + 8) = v20;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  return result;
}

void *sub_1DDA02E38(void *a1)
{
  v18 = sub_1DDA150D0();
  v16 = *(v18 - 8);
  v3 = MEMORY[0x1EEE9AC00](v18);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = sub_1DDA150C0();
  v17 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA15610();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14[3] = v5;
    v14[6] = v10;
    v15 = a1;
    v14[5] = v7;
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    v11 = sub_1DDA15450();
    v12 = v15;
    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return v11;
}

uint64_t sub_1DDA033BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84700, &qword_1DDA22760);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0BF84();
  sub_1DDA15620();
  v9 = 0;
  sub_1DDA0BFD8();
  sub_1DDA152C0();
  v6 = v8[8];
  v9 = 1;
  sub_1DDA0C02C();
  sub_1DDA152C0();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

unint64_t sub_1DDA035A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DDA035EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DDA03638@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD841C0, &qword_1DDA1E328);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0640C();
  sub_1DDA15620();
  if (v2)
  {
    v44 = v2;
    __swift_destroy_boxed_opaque_existential_1(a1);
LABEL_4:

    return sub_1DD940E20(0, 0, 0);
  }

  LOBYTE(v53) = 0;
  v9 = sub_1DDA15280();
  v12 = v11;
  v43 = v9;
  LOBYTE(v53) = 1;
  v13 = sub_1DDA15280();
  v15 = v14;
  *&v42 = v13;
  LOBYTE(v53) = 2;
  *&v41 = sub_1DDA15220();
  *(&v41 + 1) = v16;
  LOBYTE(v53) = 3;
  v17 = sub_1DDA15280();
  v44 = 0;
  *&v39 = v17;
  *(&v39 + 1) = v18;
  *(&v42 + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD841D0, &qword_1DDA1E330);
  LOBYTE(v45) = 4;
  sub_1DDA06460();
  v19 = v44;
  sub_1DDA15260();
  v44 = v19;
  v40 = v12;
  if (v19 || (v20 = v53, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83E20, &qword_1DDA1E190), LOBYTE(v45) = 5, sub_1DD9FF428(), v21 = v44, sub_1DDA15260(), (v44 = v21) != 0))
  {
    (*(v6 + 8))(v8, v5);
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(a1);

    goto LABEL_4;
  }

  v38 = v6;
  v22 = v53;
  LOBYTE(v45) = 6;
  sub_1DD9572A8();
  v23 = v44;
  sub_1DDA15260();
  if (v23)
  {
    v44 = v23;
    (*(v38 + 8))(v8, v5);
    goto LABEL_11;
  }

  v37 = a2;
  v24 = v53;
  v25 = v54;
  v26 = v55;
  v66 = 7;
  v27 = sub_1DDA15220();
  v44 = 0;
  v28 = v27;
  v29 = v8;
  v31 = v30;
  (*(v38 + 8))(v29, v5);
  *&v45 = v43;
  *(&v45 + 1) = v40;
  v46 = v42;
  v32 = *(&v42 + 1);
  v47 = v41;
  v48 = v39;
  *&v49 = v28;
  *(&v49 + 1) = v31;
  *&v50 = v20;
  *(&v50 + 1) = v22;
  *&v51 = v24;
  *(&v51 + 1) = v25;
  v52 = v26;
  sub_1DD9B2CA0(&v45, &v53);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v53 = v43;
  v54 = v40;
  v55 = v42;
  v56 = v32;
  v57 = v41;
  v58 = v39;
  v59 = v28;
  v60 = v31;
  v61 = v20;
  v62 = v22;
  v63 = v24;
  v64 = v25;
  v65 = v26;
  result = sub_1DD9B2CFC(&v53);
  v33 = v50;
  v34 = v37;
  *(v37 + 64) = v49;
  *(v34 + 80) = v33;
  *(v34 + 96) = v51;
  *(v34 + 112) = v52;
  v35 = v46;
  *v34 = v45;
  *(v34 + 16) = v35;
  v36 = v48;
  *(v34 + 32) = v47;
  *(v34 + 48) = v36;
  return result;
}

unint64_t sub_1DDA03CEC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DDA03D38(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DDA03D84(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DDA03DD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DDA03E1C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DDA03E68@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v22 = a6;
  *&v23 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v11 = &v21 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DDA15620();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v22;
  v13 = v23;
  LOBYTE(v24) = 0;
  v14 = sub_1DDA152B0();
  LOBYTE(v24) = 1;
  v15 = sub_1DDA152B0();
  v29 = 2;
  sub_1DDA04818();
  sub_1DDA152C0();
  (*(v9 + 8))(v11, v13);
  v16 = v26;
  v17 = v27;
  v18 = v28;
  v23 = v24;
  v21 = v25;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v12 = v14;
  *(v12 + 8) = v15;
  v20 = v21;
  *(v12 + 16) = v23;
  *(v12 + 32) = v20;
  *(v12 + 48) = v16;
  *(v12 + 56) = v17;
  *(v12 + 64) = v18;
  return result;
}

unint64_t sub_1DDA04080(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DDA040CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DDA04118@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v22 = a6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v11 = &v20 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DDA15620();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v22;
  v27 = 0;
  v13 = sub_1DDA152B0();
  v26 = 1;
  v21 = sub_1DDA152B0();
  v25 = 2;
  v20 = sub_1DDA152B0();
  v24 = 3;
  v14 = sub_1DDA15280();
  v16 = v15;
  (*(v9 + 8))(v11, v23);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v18 = v20;
  v19 = v21;
  *v12 = v13;
  v12[1] = v19;
  v12[2] = v18;
  v12[3] = v14;
  v12[4] = v16;
  return result;
}

unint64_t sub_1DDA0435C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DDA043A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DDA043F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DDA04440(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DDA0448C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = v5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DDA15620();
  if (!v5)
  {
    v17 = 0;
    v7 = sub_1DDA152B0();
    v16 = 1;
    sub_1DDA152B0();
    v15 = 2;
    sub_1DDA15280();
    (*(v9 + 8))(v11, v14);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1DDA04684(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DDA046D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DDA0471C()
{
  result = qword_1ECD83EC8;
  if (!qword_1ECD83EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83EC8);
  }

  return result;
}

unint64_t sub_1DDA04770()
{
  result = qword_1ECD83ED8;
  if (!qword_1ECD83ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83ED8);
  }

  return result;
}

unint64_t sub_1DDA047C4()
{
  result = qword_1ECD83EE8;
  if (!qword_1ECD83EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83EE8);
  }

  return result;
}

unint64_t sub_1DDA04818()
{
  result = qword_1ECD83EF0;
  if (!qword_1ECD83EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83EF0);
  }

  return result;
}

unint64_t sub_1DDA0486C()
{
  result = qword_1ECD83F00;
  if (!qword_1ECD83F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83F00);
  }

  return result;
}

unint64_t sub_1DDA048C0()
{
  result = qword_1ECD83F10;
  if (!qword_1ECD83F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83F10);
  }

  return result;
}

unint64_t sub_1DDA04914()
{
  result = qword_1ECD83F20;
  if (!qword_1ECD83F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83F20);
  }

  return result;
}

unint64_t sub_1DDA04968()
{
  result = qword_1ECD83F30;
  if (!qword_1ECD83F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83F30);
  }

  return result;
}

unint64_t sub_1DDA049BC()
{
  result = qword_1ECD83F48;
  if (!qword_1ECD83F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83F48);
  }

  return result;
}

unint64_t sub_1DDA04A10()
{
  result = qword_1ECD83F60;
  if (!qword_1ECD83F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83F60);
  }

  return result;
}

unint64_t sub_1DDA04A64()
{
  result = qword_1ECD83F78;
  if (!qword_1ECD83F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83F78);
  }

  return result;
}

unint64_t sub_1DDA04AB8()
{
  result = qword_1ECD83FA0;
  if (!qword_1ECD83FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83FA0);
  }

  return result;
}

unint64_t sub_1DDA04B0C()
{
  result = qword_1ECD83FB0;
  if (!qword_1ECD83FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83FB0);
  }

  return result;
}

unint64_t sub_1DDA04B60()
{
  result = qword_1ECD83FB8;
  if (!qword_1ECD83FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83FB8);
  }

  return result;
}

unint64_t sub_1DDA04BB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DDA04C00(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DDA04C4C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 == 0x6974617265646F6DLL && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1DDA15440() & 1) != 0 || v3 == 0x726568746FLL && a2 == 0xE500000000000000 || (sub_1DDA15440() & 1) != 0 || v3 == 0x5F746E65746E6F63 && a2 == 0xEE007265746C6966 || (sub_1DDA15440() & 1) != 0 || v3 == 0xD00000000000001BLL && 0x80000001DDA28030 == a2 || (sub_1DDA15440() & 1) != 0 || v3 == 0xD00000000000001CLL && 0x80000001DDA28010 == a2 || (sub_1DDA15440() & 1) != 0)
  {

    return 0;
  }

  return v3;
}

uint64_t sub_1DDA04E18(void *a1)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  sub_1DDA15610();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v4 = sub_1DDA15450();
    v3 = v4;
    v7 = v5;
    v8 = v4 == 0x6974617265646F6DLL && v5 == 0xEA00000000006E6FLL;
    if (v8 || (sub_1DDA15440() & 1) != 0 || v3 == 0x726568746FLL && v7 == 0xE500000000000000 || (sub_1DDA15440() & 1) != 0 || v3 == 0x5F746E65746E6F63 && v7 == 0xEE007265746C6966 || (sub_1DDA15440() & 1) != 0 || v3 == 0xD00000000000001BLL && 0x80000001DDA28030 == v7 || (sub_1DDA15440() & 1) != 0 || v3 == 0xD00000000000001CLL && 0x80000001DDA28010 == v7 || (sub_1DDA15440() & 1) != 0)
    {

      v3 = 0;
    }

    else
    {
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v9 = sub_1DDA14810();
      __swift_project_value_buffer(v9, qword_1ECDA20E0);

      v10 = sub_1DDA147F0();
      v11 = sub_1DDA14EE0();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v14 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_1DD93FA54(v3, v7, &v14);
        _os_log_impl(&dword_1DD8F8000, v10, v11, "Unrecognized IncompleteReason %s, decoding as unknown", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x1E12B8CE0](v13, -1, -1);
        MEMORY[0x1E12B8CE0](v12, -1, -1);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v15);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_1DDA05194(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84130, &qword_1DDA1E310);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1DDA05F20();
  sub_1DDA15620();
  if (!v1)
  {
    v10 = 0;
    sub_1DDA05F74();
    sub_1DDA152C0();
    v7 = v9;
    LOBYTE(v9) = 1;
    sub_1DDA15220();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1DDA05394(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DDA053E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DDA0542C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DDA05478(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84690, &qword_1DDA22728);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0A340();
  sub_1DDA15620();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_1DDA15280();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD846A0, &qword_1DDA22730);
    v9[15] = 1;
    sub_1DDA0A394();
    sub_1DDA15260();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1DDA0567C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DDA056C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DDA15440() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1DDA15440() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DDA15440();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DDA057D8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83FD8, &qword_1DDA1E278);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA059B0();
  sub_1DDA15620();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_1DDA15280();
    v9[14] = 1;
    sub_1DDA152B0();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1DDA059B0()
{
  result = qword_1ECD83FE0;
  if (!qword_1ECD83FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83FE0);
  }

  return result;
}

unint64_t sub_1DDA05A04()
{
  result = qword_1ECD83FF8;
  if (!qword_1ECD83FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83FF8);
  }

  return result;
}

unint64_t sub_1DDA05A58()
{
  result = qword_1ECD84010;
  if (!qword_1ECD84010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84010);
  }

  return result;
}

unint64_t sub_1DDA05AAC()
{
  result = qword_1ECD84020;
  if (!qword_1ECD84020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84020);
  }

  return result;
}

unint64_t sub_1DDA05B00()
{
  result = qword_1ECD84030;
  if (!qword_1ECD84030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84030);
  }

  return result;
}

uint64_t sub_1DDA05B54(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DDA05BA8()
{
  result = qword_1ECD84068;
  if (!qword_1ECD84068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84068);
  }

  return result;
}

unint64_t sub_1DDA05BFC()
{
  result = qword_1ECD84098;
  if (!qword_1ECD84098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84098);
  }

  return result;
}

unint64_t sub_1DDA05C50()
{
  result = qword_1ECD840B0;
  if (!qword_1ECD840B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD840B0);
  }

  return result;
}

unint64_t sub_1DDA05CA4()
{
  result = qword_1ECD840C8;
  if (!qword_1ECD840C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD840C8);
  }

  return result;
}

unint64_t sub_1DDA05CF8()
{
  result = qword_1ECD840E0;
  if (!qword_1ECD840E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD840E0);
  }

  return result;
}

unint64_t sub_1DDA05D4C()
{
  result = qword_1ECD840F0;
  if (!qword_1ECD840F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD840F0);
  }

  return result;
}

unint64_t sub_1DDA05DA0()
{
  result = qword_1ECD84108;
  if (!qword_1ECD84108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84108);
  }

  return result;
}

unint64_t sub_1DDA05DF4()
{
  result = qword_1ECD84110;
  if (!qword_1ECD84110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84110);
  }

  return result;
}

unint64_t sub_1DDA05E48()
{
  result = qword_1ECD84120;
  if (!qword_1ECD84120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD84118, &qword_1DDA1E308);
    sub_1DDA04818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84120);
  }

  return result;
}

unint64_t sub_1DDA05ECC()
{
  result = qword_1ECD84128;
  if (!qword_1ECD84128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84128);
  }

  return result;
}

unint64_t sub_1DDA05F20()
{
  result = qword_1ECD84138;
  if (!qword_1ECD84138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84138);
  }

  return result;
}

unint64_t sub_1DDA05F74()
{
  result = qword_1ECD84140;
  if (!qword_1ECD84140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84140);
  }

  return result;
}

unint64_t sub_1DDA05FC8()
{
  result = qword_1ECD84150;
  if (!qword_1ECD84150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84150);
  }

  return result;
}

unint64_t sub_1DDA0601C()
{
  result = qword_1ECD84158;
  if (!qword_1ECD84158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84158);
  }

  return result;
}

unint64_t sub_1DDA06070()
{
  result = qword_1ECD84160;
  if (!qword_1ECD84160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84160);
  }

  return result;
}

unint64_t sub_1DDA060C4()
{
  result = qword_1ECD84168;
  if (!qword_1ECD84168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84168);
  }

  return result;
}

unint64_t sub_1DDA06118()
{
  result = qword_1ECD84170;
  if (!qword_1ECD84170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84170);
  }

  return result;
}

unint64_t sub_1DDA0616C()
{
  result = qword_1ECD84178;
  if (!qword_1ECD84178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84178);
  }

  return result;
}

unint64_t sub_1DDA061C0()
{
  result = qword_1ECD84180;
  if (!qword_1ECD84180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84180);
  }

  return result;
}

unint64_t sub_1DDA06214()
{
  result = qword_1ECD84188;
  if (!qword_1ECD84188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84188);
  }

  return result;
}

unint64_t sub_1DDA06268()
{
  result = qword_1ECD84190;
  if (!qword_1ECD84190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84190);
  }

  return result;
}

unint64_t sub_1DDA062BC()
{
  result = qword_1ECD84198;
  if (!qword_1ECD84198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84198);
  }

  return result;
}

unint64_t sub_1DDA06310()
{
  result = qword_1ECD841A0;
  if (!qword_1ECD841A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD841A0);
  }

  return result;
}

unint64_t sub_1DDA06364()
{
  result = qword_1ECD841A8;
  if (!qword_1ECD841A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD841A8);
  }

  return result;
}

unint64_t sub_1DDA063B8()
{
  result = qword_1ECD841B8;
  if (!qword_1ECD841B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD841B8);
  }

  return result;
}

unint64_t sub_1DDA0640C()
{
  result = qword_1ECD841C8;
  if (!qword_1ECD841C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD841C8);
  }

  return result;
}

unint64_t sub_1DDA06460()
{
  result = qword_1ECD841D8;
  if (!qword_1ECD841D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD841D0, &qword_1DDA1E330);
    sub_1DD9E4B98(&qword_1ECD840F8, type metadata accessor for ChatChunk.Choice, &unk_1DDA1D0EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD841D8);
  }

  return result;
}

unint64_t sub_1DDA06514()
{
  result = qword_1ECD841E8;
  if (!qword_1ECD841E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD841E8);
  }

  return result;
}

unint64_t sub_1DDA06568()
{
  result = qword_1ECD841F0;
  if (!qword_1ECD841F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD841F0);
  }

  return result;
}

unint64_t sub_1DDA065BC()
{
  result = qword_1ECD841F8;
  if (!qword_1ECD841F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD841F8);
  }

  return result;
}

unint64_t sub_1DDA06610()
{
  result = qword_1ECD84208;
  if (!qword_1ECD84208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84208);
  }

  return result;
}

unint64_t sub_1DDA06664()
{
  result = qword_1ECD84210;
  if (!qword_1ECD84210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84210);
  }

  return result;
}

unint64_t sub_1DDA066B8()
{
  result = qword_1ECD84220;
  if (!qword_1ECD84220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84220);
  }

  return result;
}

unint64_t sub_1DDA0670C()
{
  result = qword_1ECD84228;
  if (!qword_1ECD84228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84228);
  }

  return result;
}

unint64_t sub_1DDA06760()
{
  result = qword_1ECD84230;
  if (!qword_1ECD84230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84230);
  }

  return result;
}

unint64_t sub_1DDA067B4()
{
  result = qword_1ECD84240;
  if (!qword_1ECD84240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84240);
  }

  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1DDA0685C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_1DDA068A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5Anvil10SourceInfoOSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1DDA0696C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1DDA069B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DDA06A64(uint64_t a1)
{
  result = type metadata accessor for CreateSessionResponse(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DDA06B10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1DDA06B58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DDA06C10(uint64_t a1)
{
  result = type metadata accessor for CreateSessionResponse(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5Anvil24PromptConfigurationGroupV5ValueOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DDA06CF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_1DDA06D38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DDA06D9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DDA06DE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5Anvil18ToolingDescriptionO(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1DDA06E70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 41))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 40) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 40) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DDA06EC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1DDA06F3C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 40) = *(result + 40) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0x80;
  }

  return result;
}

uint64_t sub_1DDA06FA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1DDA06FEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DDA0704C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DDA070A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5Anvil14ChatToolChoiceOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 3;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DDA07134(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DDA0717C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1DDA07438(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1DDA07480(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DDA074F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DDA0754C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_1DDA075DC(uint64_t a1, unsigned int a2)
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

uint64_t sub_1DDA07624(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SessionExpirationOption.Policy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
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

uint64_t storeEnumTagSinglePayload for SessionExpirationOption.Policy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DDA07720(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DDA07768(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DDA077BC()
{
  result = qword_1ECD84298;
  if (!qword_1ECD84298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84298);
  }

  return result;
}

unint64_t sub_1DDA07814()
{
  result = qword_1ECD842A0;
  if (!qword_1ECD842A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842A0);
  }

  return result;
}

unint64_t sub_1DDA0786C()
{
  result = qword_1ECD842A8;
  if (!qword_1ECD842A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842A8);
  }

  return result;
}

unint64_t sub_1DDA078C4()
{
  result = qword_1ECD842B0;
  if (!qword_1ECD842B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842B0);
  }

  return result;
}

unint64_t sub_1DDA0791C()
{
  result = qword_1ECD842B8;
  if (!qword_1ECD842B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842B8);
  }

  return result;
}

unint64_t sub_1DDA07974()
{
  result = qword_1ECD842C0;
  if (!qword_1ECD842C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842C0);
  }

  return result;
}

unint64_t sub_1DDA079CC()
{
  result = qword_1ECD842C8;
  if (!qword_1ECD842C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842C8);
  }

  return result;
}

unint64_t sub_1DDA07A24()
{
  result = qword_1ECD842D0;
  if (!qword_1ECD842D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842D0);
  }

  return result;
}

unint64_t sub_1DDA07A7C()
{
  result = qword_1ECD842D8;
  if (!qword_1ECD842D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842D8);
  }

  return result;
}

unint64_t sub_1DDA07AD4()
{
  result = qword_1ECD842E0;
  if (!qword_1ECD842E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842E0);
  }

  return result;
}

unint64_t sub_1DDA07B2C()
{
  result = qword_1ECD842E8;
  if (!qword_1ECD842E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842E8);
  }

  return result;
}

unint64_t sub_1DDA07B84()
{
  result = qword_1ECD842F0;
  if (!qword_1ECD842F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842F0);
  }

  return result;
}

unint64_t sub_1DDA07BDC()
{
  result = qword_1ECD842F8;
  if (!qword_1ECD842F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842F8);
  }

  return result;
}

unint64_t sub_1DDA07C34()
{
  result = qword_1ECD84300;
  if (!qword_1ECD84300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84300);
  }

  return result;
}

unint64_t sub_1DDA07C8C()
{
  result = qword_1ECD84308;
  if (!qword_1ECD84308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84308);
  }

  return result;
}

unint64_t sub_1DDA07CE4()
{
  result = qword_1ECD84310;
  if (!qword_1ECD84310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84310);
  }

  return result;
}

unint64_t sub_1DDA07D3C()
{
  result = qword_1ECD84318;
  if (!qword_1ECD84318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84318);
  }

  return result;
}

unint64_t sub_1DDA07D94()
{
  result = qword_1ECD84320;
  if (!qword_1ECD84320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84320);
  }

  return result;
}

unint64_t sub_1DDA07DEC()
{
  result = qword_1ECD84328;
  if (!qword_1ECD84328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84328);
  }

  return result;
}

unint64_t sub_1DDA07E44()
{
  result = qword_1ECD84330;
  if (!qword_1ECD84330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84330);
  }

  return result;
}

unint64_t sub_1DDA07E9C()
{
  result = qword_1ECD84338;
  if (!qword_1ECD84338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84338);
  }

  return result;
}

unint64_t sub_1DDA07EF4()
{
  result = qword_1ECD84340;
  if (!qword_1ECD84340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84340);
  }

  return result;
}

unint64_t sub_1DDA07F4C()
{
  result = qword_1ECD84348;
  if (!qword_1ECD84348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84348);
  }

  return result;
}

unint64_t sub_1DDA07FA4()
{
  result = qword_1ECD84350;
  if (!qword_1ECD84350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84350);
  }

  return result;
}

unint64_t sub_1DDA07FFC()
{
  result = qword_1ECD84358;
  if (!qword_1ECD84358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84358);
  }

  return result;
}

unint64_t sub_1DDA08054()
{
  result = qword_1ECD84360;
  if (!qword_1ECD84360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84360);
  }

  return result;
}

unint64_t sub_1DDA080AC()
{
  result = qword_1ECD84368;
  if (!qword_1ECD84368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84368);
  }

  return result;
}

unint64_t sub_1DDA08104()
{
  result = qword_1ECD84370;
  if (!qword_1ECD84370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84370);
  }

  return result;
}

unint64_t sub_1DDA0815C()
{
  result = qword_1ECD84378;
  if (!qword_1ECD84378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84378);
  }

  return result;
}

unint64_t sub_1DDA081B4()
{
  result = qword_1ECD84380;
  if (!qword_1ECD84380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84380);
  }

  return result;
}

unint64_t sub_1DDA0820C()
{
  result = qword_1ECD84388;
  if (!qword_1ECD84388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84388);
  }

  return result;
}

unint64_t sub_1DDA08264()
{
  result = qword_1ECD84390;
  if (!qword_1ECD84390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84390);
  }

  return result;
}

unint64_t sub_1DDA082BC()
{
  result = qword_1ECD84398;
  if (!qword_1ECD84398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84398);
  }

  return result;
}

unint64_t sub_1DDA08314()
{
  result = qword_1ECD843A0;
  if (!qword_1ECD843A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD843A0);
  }

  return result;
}

unint64_t sub_1DDA0836C()
{
  result = qword_1ECD843A8;
  if (!qword_1ECD843A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD843A8);
  }

  return result;
}