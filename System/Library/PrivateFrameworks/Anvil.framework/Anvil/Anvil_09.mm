void sub_1DD9DAB6C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x80000001DDA26870;
  v6 = 0xD000000000000020;
  if (v2 != 6)
  {
    v6 = 0x7463757274736E69;
    v5 = 0xEC000000736E6F69;
  }

  v7 = 0x736563696F6863;
  if (v2 != 4)
  {
    v7 = 0x73656369746F6ELL;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xD000000000000019;
  v9 = 0x80000001DDA26C10;
  if (v2 != 2)
  {
    v8 = 0x6C65646F6DLL;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x5F6E6F6973736573;
    v3 = 0xEA00000000006469;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_1DD9DAC74()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000020;
  if (v1 != 6)
  {
    v3 = 0x7463757274736E69;
  }

  v4 = 0x736563696F6863;
  if (v1 != 4)
  {
    v4 = 0x73656369746F6ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v1 != 2)
  {
    v5 = 0x6C65646F6DLL;
  }

  if (*v0)
  {
    v2 = 0x5F6E6F6973736573;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1DD9DAD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA035EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9DADA0(uint64_t a1)
{
  v2 = sub_1DDA0640C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DADDC(uint64_t a1)
{
  v2 = sub_1DDA0640C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD9DAE18@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DDA03638(a2, v8);
  if (!v2)
  {
    v5 = v12;
    *(a1 + 64) = v11;
    *(a1 + 80) = v5;
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_1DD9DAE80()
{
  sub_1DDA15570();
  sub_1DD9DA4D0(v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9DAEC4(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DD9DA4D0(v2);
  return sub_1DDA155B0();
}

BOOL sub_1DD9DAF00(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_1DD9FDAD4(v12, v14);
}

uint64_t sub_1DD9DAF84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = type metadata accessor for ChatChunk.Choice(0);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD840E8, &qword_1DDA1E2F8);
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ChatChunk.ChoiceResource(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA05D4C();
  sub_1DDA15620();
  if (!v2)
  {
    v17 = v8;
    v11 = v19;
    v23 = 0;
    v12 = v21;
    v13 = sub_1DDA152B0();
    v16 = v10;
    *v10 = v13;
    v22 = 1;
    sub_1DD9E4B98(&qword_1ECD840F8, type metadata accessor for ChatChunk.Choice, &unk_1DDA1D0EC);
    sub_1DDA152C0();
    (*(v11 + 8))(v7, v12);
    v14 = v16;
    sub_1DD9FEFD0(v5, v16 + *(v17 + 20), type metadata accessor for ChatChunk.Choice);
    sub_1DD9FEFD0(v14, v18, type metadata accessor for ChatChunk.ChoiceResource);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DD9DB254()
{
  if (*v0)
  {
    return 0x6563696F6863;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_1DD9DB288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6563696F6863 && a2 == 0xE600000000000000)
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

uint64_t sub_1DD9DB35C(uint64_t a1)
{
  v2 = sub_1DDA05D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DB398(uint64_t a1)
{
  v2 = sub_1DDA05D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9DB3EC()
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v0);
  sub_1DD9DB948(v2);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9DB49C(uint64_t a1)
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v1);
  sub_1DD9DB948(v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9DB524(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656C706D6F636E69;
  v4 = 0xEA00000000006574;
  if (v2 != 1)
  {
    v3 = 0x72676F72705F6E69;
    v4 = 0xEB00000000737365;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6574656C706D6F63;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0x656C706D6F636E69;
  v8 = 0xEA00000000006574;
  if (*a2 != 1)
  {
    v7 = 0x72676F72705F6E69;
    v8 = 0xEB00000000737365;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6574656C706D6F63;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000064;
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

unint64_t sub_1DD9DB640@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA03CEC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9DB670(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xEA00000000006574;
  v5 = 0x656C706D6F636E69;
  if (v2 != 1)
  {
    v5 = 0x72676F72705F6E69;
    v4 = 0xEB00000000737365;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6574656C706D6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9DB740()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DB7F4(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DB894(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DB948(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DDA134E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - v9;
  sub_1DDA14BC0();
  sub_1DDA14BC0();

  sub_1DD96BCC4(a1, v2[3]);
  v11 = v2[7];
  if (v11 == 1)
  {
    goto LABEL_16;
  }

  v13 = v2[4];
  v12 = v2[5];
  v14 = v2[6];
  sub_1DDA15590();
  v18[1] = v14;
  if (v12 <= 1)
  {
    if (!v12)
    {
      v15 = v13;
      goto LABEL_14;
    }

    if (v12 == 1)
    {
      v15 = v13;
      goto LABEL_14;
    }
  }

  else
  {
    switch(v12)
    {
      case 2:
        v15 = v13;
        goto LABEL_14;
      case 3:
        v15 = v13;
        goto LABEL_14;
      case 4:
        v15 = v13;
        goto LABEL_14;
    }
  }

  v15 = v13;
LABEL_14:
  sub_1DD928DC0(v15, v12);
  sub_1DDA14BC0();

  if (v11)
  {
    sub_1DDA15590();
    sub_1DDA14BC0();
    goto LABEL_17;
  }

LABEL_16:
  sub_1DDA15590();
LABEL_17:
  v16 = type metadata accessor for ChatChunk.Choice(0);
  sub_1DD90ADB4(v2 + *(v16 + 32), v10, &qword_1ECD82CE0, &qword_1DDA18700);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_1DDA15590();
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_1DDA15590();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DDA14AD0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DD9DBD18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84100, &qword_1DDA1E300);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - v7;
  v9 = type metadata accessor for ChatChunk.Choice(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 40);
  v14 = sub_1DDA134E0();
  v15 = *(*(v14 - 8) + 56);
  v33 = v13;
  v15(&v12[v13], 1, 1, v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA05DA0();
  v16 = v32;
  sub_1DDA15620();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1DD90D378(&v12[v33], &qword_1ECD82CE0, &qword_1DDA18700);
  }

  else
  {
    v32 = v5;
    v17 = a1;
    v19 = v30;
    v18 = v31;
    LOBYTE(v34) = 0;
    *v12 = sub_1DDA15280();
    *(v12 + 1) = v20;
    v28[4] = v20;
    v38 = 1;
    sub_1DDA05DF4();
    sub_1DDA152C0();
    v21 = v19;
    v12[16] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84118, &qword_1DDA1E308);
    v38 = 2;
    sub_1DDA05E48();
    sub_1DDA152C0();
    v22 = v12;
    *(v12 + 3) = v34;
    v38 = 3;
    sub_1DDA05ECC();
    sub_1DDA15260();
    v23 = v35;
    v24 = v36;
    v25 = v37;
    *(v12 + 4) = v34;
    *(v12 + 5) = v23;
    v28[2] = v24;
    v28[3] = v23;
    *(v12 + 6) = v24;
    *(v12 + 7) = v25;
    v28[1] = v25;
    LOBYTE(v34) = 4;
    sub_1DD9E4B98(&qword_1ECD83A30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v26 = v32;
    sub_1DDA15260();
    (*(v21 + 8))(v8, v18);
    sub_1DD90AE1C(v26, v22 + v33, &qword_1ECD82CE0, &qword_1DDA18700);
    sub_1DD9FF500(v22, v29, type metadata accessor for ChatChunk.Choice);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return sub_1DD9FF568(v22, type metadata accessor for ChatChunk.Choice);
  }
}

uint64_t sub_1DD9DC250@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for MessageContent(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84028, &qword_1DDA1E2A8);
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for ChatChunk.ChoiceItemMessageContent(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v20 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1DDA05B00();
  sub_1DDA15620();
  if (!v2)
  {
    v24 = 0;
    v14 = v18;
    *v12 = sub_1DDA152B0();
    v23 = 1;
    v12[1] = sub_1DDA152B0();
    v22 = 2;
    v12[2] = sub_1DDA152B0();
    v21 = 3;
    sub_1DD9E4B98(&qword_1ECD84038, type metadata accessor for MessageContent, &unk_1DDA1D4EC);
    v16 = v19;
    sub_1DDA152C0();
    (*(v14 + 8))(v9, v16);
    sub_1DD9FEFD0(v6, v12 + *(v10 + 28), type metadata accessor for MessageContent);
    sub_1DD9FEFD0(v12, v17, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
  }

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_1DD9DC58C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for TextAnnotation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83F28, &qword_1DDA1E220);
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for ChatChunk.TextValueAnnotation(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v20 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1DDA04968();
  sub_1DDA15620();
  if (!v2)
  {
    v25 = 0;
    v14 = v18;
    *v12 = sub_1DDA152B0();
    v24 = 1;
    v12[1] = sub_1DDA152B0();
    v23 = 2;
    v12[2] = sub_1DDA152B0();
    v22 = 3;
    v12[3] = sub_1DDA152B0();
    v21 = 4;
    sub_1DD9E4B98(&qword_1ECD83F38, type metadata accessor for TextAnnotation, &unk_1DDA1D97C);
    v16 = v19;
    sub_1DDA152C0();
    (*(v14 + 8))(v9, v16);
    sub_1DD9FEFD0(v6, v12 + *(v10 + 32), type metadata accessor for TextAnnotation);
    sub_1DD9FEFD0(v12, v17, type metadata accessor for ChatChunk.TextValueAnnotation);
  }

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_1DD9DC8E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for ImageGeneratorCall.Image(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83E90, &qword_1DDA1E1D8);
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v20 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1DD9FFC80();
  sub_1DDA15620();
  if (!v2)
  {
    v24 = 0;
    v14 = v18;
    *v12 = sub_1DDA152B0();
    v23 = 1;
    v12[1] = sub_1DDA152B0();
    v22 = 2;
    v12[2] = sub_1DDA152B0();
    v21 = 3;
    sub_1DD9E4B98(&qword_1ECD83EA0, type metadata accessor for ImageGeneratorCall.Image, &unk_1DDA1DE24);
    v16 = v19;
    sub_1DDA152C0();
    (*(v14 + 8))(v9, v16);
    sub_1DD9FEFD0(v6, v12 + *(v10 + 28), type metadata accessor for ImageGeneratorCall.Image);
    sub_1DD9FEFD0(v12, v17, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
  }

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_1DD9DCC2C()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DCD08(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DCDD0(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9DCEA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA03D38(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9DCED8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE600000000000000;
  v6 = 0x74757074756FLL;
  v7 = 0x80000001DDA26C60;
  v8 = 0xD000000000000012;
  if (v2 != 3)
  {
    v8 = 0x65756E69746E6F63;
    v7 = 0xEC0000006C72755FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x737574617473;
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

uint64_t sub_1DD9DCF70()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x74757074756FLL;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x65756E69746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x737574617473;
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

unint64_t sub_1DD9DD004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA03D38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9DD02C(uint64_t a1)
{
  v2 = sub_1DDA05DA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DD068(uint64_t a1)
{
  v2 = sub_1DDA05DA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9DD0F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7865646E69;
  if (v2 != 1)
  {
    v4 = 1835365481;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x695F6563696F6863;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC0000007865646ELL;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7865646E69;
  if (*a2 != 1)
  {
    v8 = 1835365481;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x695F6563696F6863;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC0000007865646ELL;
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

uint64_t sub_1DD9DD1E4()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DD284(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DD310(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9DD3AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA03D84(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9DD3DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007865646ELL;
  v4 = 0xE500000000000000;
  v5 = 0x7865646E69;
  if (v2 != 1)
  {
    v5 = 1835365481;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x695F6563696F6863;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9DD438()
{
  v1 = 0x7865646E69;
  if (*v0 != 1)
  {
    v1 = 1835365481;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x695F6563696F6863;
  }
}

unint64_t sub_1DD9DD490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA03D84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9DD4B8(uint64_t a1)
{
  v2 = sub_1DDA05CF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DD4F4(uint64_t a1)
{
  v2 = sub_1DDA05CF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL sub_1DD9DD574(unint64_t *a1, int8x16_t *a2)
{
  v3 = 0;
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 2);
  v11[0] = *(a1 + 1);
  v11[1] = v6;
  v11[2] = *(a1 + 3);
  v12 = *(a1 + 64);
  v14 = a2[4].i8[0];
  v8 = a2->i64[0];
  v7 = a2->i64[1];
  v9 = a2[3];
  v13[1] = a2[2];
  v13[2] = v9;
  v13[0] = a2[1];
  if (__PAIR128__(v4, v5) == __PAIR128__(v7, v8))
  {
    return sub_1DD9FAFE8(v11, v13);
  }

  return v3;
}

uint64_t sub_1DD9DD5FC()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DD6C8(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DD780(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9DD848@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA03DD0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9DD878(uint64_t *a1@<X8>)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = 0xE500000000000000;
  v5 = 0x7865646E69;
  if (*v1 != 2)
  {
    v5 = 0x746E65746E6F63;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD9DD900()
{
  v1 = 0x695F6563696F6863;
  v2 = 0x7865646E69;
  if (*v0 != 2)
  {
    v2 = 0x746E65746E6F63;
  }

  if (*v0)
  {
    v1 = 0x646E695F6D657469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DD9DD984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA03DD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9DD9AC(uint64_t a1)
{
  v2 = sub_1DDA05B00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DD9E8(uint64_t a1)
{
  v2 = sub_1DDA05B00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9DDA3C()
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v0);
  MEMORY[0x1E12B8440](v0[1]);
  MEMORY[0x1E12B8440](v0[2]);
  sub_1DD9E8BF8(v2);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9DDAB8(uint64_t a1)
{
  MEMORY[0x1E12B8440](*v1);
  MEMORY[0x1E12B8440](v1[1]);
  MEMORY[0x1E12B8440](v1[2]);
  return sub_1DD9E8BF8(a1);
}

uint64_t sub_1DD9DDB14(uint64_t a1)
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v1);
  MEMORY[0x1E12B8440](v1[1]);
  MEMORY[0x1E12B8440](v1[2]);
  sub_1DD9E8BF8(v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9DDBD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x646E695F6D657469;
  v4 = 0xEA00000000007865;
  if (v2 != 1)
  {
    v3 = 1835365481;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x695F6563696F6863;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC0000007865646ELL;
  }

  v7 = 0x646E695F6D657469;
  v8 = 0xEA00000000007865;
  if (*a2 != 1)
  {
    v7 = 1835365481;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x695F6563696F6863;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC0000007865646ELL;
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

uint64_t sub_1DD9DDCD0()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DDD78(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DDE0C(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9DDEB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA03E1C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9DDEE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007865646ELL;
  v4 = 0xEA00000000007865;
  v5 = 0x646E695F6D657469;
  if (v2 != 1)
  {
    v5 = 1835365481;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x695F6563696F6863;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9DDF44()
{
  v1 = 0x646E695F6D657469;
  if (*v0 != 1)
  {
    v1 = 1835365481;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x695F6563696F6863;
  }
}

unint64_t sub_1DD9DDFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA03E1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9DDFCC(uint64_t a1)
{
  v2 = sub_1DDA047C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DE008(uint64_t a1)
{
  v2 = sub_1DDA047C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1DD9DE088@<Q0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a6@<X8>)
{
  sub_1DDA03E68(a1, a2, a3, a4, v10);
  if (!v6)
  {
    v9 = v10[3];
    *(a6 + 32) = v10[2];
    *(a6 + 48) = v9;
    *(a6 + 64) = v11;
    result = v10[1];
    *a6 = v10[0];
    *(a6 + 16) = result;
  }

  return result;
}

uint64_t sub_1DD9DE0EC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  MEMORY[0x1E12B8440](v2);
  sub_1DD9D55C0(v4);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9DE158(uint64_t a1)
{
  v3 = v1[1];
  MEMORY[0x1E12B8440](*v1);
  MEMORY[0x1E12B8440](v3);
  return sub_1DD9D55C0(a1);
}

uint64_t sub_1DD9DE1A4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v2);
  MEMORY[0x1E12B8440](v3);
  sub_1DD9D55C0(v5);
  return sub_1DDA155B0();
}

BOOL sub_1DD9DE20C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1DD9FB378(v7, v9);
}

uint64_t sub_1DD9DE274()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DE350(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DE418(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9DE4F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA04080(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9DE520(uint64_t *a1@<X8>)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = 0xED00007865646E69;
  v5 = 0x5F746E65746E6F63;
  if (*v1 != 2)
  {
    v5 = 0x6C617375666572;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD9DE5B8()
{
  v1 = 0x695F6563696F6863;
  v2 = 0x5F746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x6C617375666572;
  }

  if (*v0)
  {
    v1 = 0x646E695F6D657469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DD9DE64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA04080(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9DE674(uint64_t a1)
{
  v2 = sub_1DDA04914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DE6B0(uint64_t a1)
{
  v2 = sub_1DDA04914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9DE73C()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DE814(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DE8D8(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9DE9AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA040CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9DE9DC(uint64_t *a1@<X8>)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = 0xED00007865646E69;
  v5 = 0x5F746E65746E6F63;
  if (*v1 != 2)
  {
    v5 = 0x61746C6564;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD9DEA70()
{
  v1 = 0x695F6563696F6863;
  v2 = 0x5F746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x61746C6564;
  }

  if (*v0)
  {
    v1 = 0x646E695F6D657469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DD9DEB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA040CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9DEB28(uint64_t a1)
{
  v2 = sub_1DDA05AAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DEB64(uint64_t a1)
{
  v2 = sub_1DDA05AAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9DEBF0()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DECC8(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DED8C(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9DEE60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA0435C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9DEE90(uint64_t *a1@<X8>)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = 0xED00007865646E69;
  v5 = 0x5F746E65746E6F63;
  if (*v1 != 2)
  {
    v5 = 0x65756C6176;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD9DEF24()
{
  v1 = 0x695F6563696F6863;
  v2 = 0x5F746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x65756C6176;
  }

  if (*v0)
  {
    v1 = 0x646E695F6D657469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DD9DEFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA0435C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9DEFDC(uint64_t a1)
{
  v2 = sub_1DDA05A58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DF018(uint64_t a1)
{
  v2 = sub_1DDA05A58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD9DF098@<D0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a6@<X8>)
{
  sub_1DDA04118(a1, a2, a3, a4, v10);
  if (!v6)
  {
    result = *v10;
    v9 = v10[1];
    *a6 = v10[0];
    *(a6 + 16) = v9;
    *(a6 + 32) = v11;
  }

  return result;
}

uint64_t sub_1DD9DF0F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  MEMORY[0x1E12B8440](v2);
  MEMORY[0x1E12B8440](v3);
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9DF178(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  MEMORY[0x1E12B8440](*v1);
  MEMORY[0x1E12B8440](v2);
  MEMORY[0x1E12B8440](v3);

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9DF1E8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v2);
  MEMORY[0x1E12B8440](v3);
  MEMORY[0x1E12B8440](v4);
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9DF26C(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    return 1;
  }

  else
  {
    return sub_1DDA15440();
  }
}

uint64_t sub_1DD9DF2CC()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DF3C4(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DF4A8(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9DF59C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA043A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9DF5CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007865646ELL;
  v4 = 0x695F6563696F6863;
  v5 = 0xED00007865646E69;
  v6 = 0x5F746E65746E6F63;
  v7 = 0xE500000000000000;
  v8 = 0x7865646E69;
  if (v2 != 3)
  {
    v8 = 0x697461746F6E6E61;
    v7 = 0xEA00000000006E6FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x646E695F6D657469;
    v3 = 0xEA00000000007865;
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

uint64_t sub_1DD9DF680()
{
  v1 = *v0;
  v2 = 0x695F6563696F6863;
  v3 = 0x5F746E65746E6F63;
  v4 = 0x7865646E69;
  if (v1 != 3)
  {
    v4 = 0x697461746F6E6E61;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x646E695F6D657469;
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

unint64_t sub_1DD9DF730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA043A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9DF758(uint64_t a1)
{
  v2 = sub_1DDA04968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DF794(uint64_t a1)
{
  v2 = sub_1DDA04968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9DF7E8()
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v0);
  MEMORY[0x1E12B8440](v0[1]);
  MEMORY[0x1E12B8440](v0[2]);
  MEMORY[0x1E12B8440](v0[3]);
  sub_1DD9E9C1C(v2);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9DF870(uint64_t a1)
{
  MEMORY[0x1E12B8440](*v1);
  MEMORY[0x1E12B8440](v1[1]);
  MEMORY[0x1E12B8440](v1[2]);
  MEMORY[0x1E12B8440](v1[3]);
  return sub_1DD9E9C1C(a1);
}

uint64_t sub_1DD9DF8D4(uint64_t a1)
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v1);
  MEMORY[0x1E12B8440](v1[1]);
  MEMORY[0x1E12B8440](v1[2]);
  MEMORY[0x1E12B8440](v1[3]);
  sub_1DD9E9C1C(v3);
  return sub_1DDA155B0();
}

unint64_t sub_1DD9DF95C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA043F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DD9DF98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA043F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9DF9B4(uint64_t a1)
{
  v2 = sub_1DDA048C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DF9F0(uint64_t a1)
{
  v2 = sub_1DDA048C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9DFA70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x646E695F6D657469;
  v4 = 0xEA00000000007865;
  if (v2 != 1)
  {
    v3 = 0x746E656D75677261;
    v4 = 0xE900000000000073;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x695F6563696F6863;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC0000007865646ELL;
  }

  v7 = 0x646E695F6D657469;
  v8 = 0xEA00000000007865;
  if (*a2 != 1)
  {
    v7 = 0x746E656D75677261;
    v8 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x695F6563696F6863;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC0000007865646ELL;
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

uint64_t sub_1DD9DFB88()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DFC3C(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DFCDC(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9DFD8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA04440(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9DFDBC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007865646ELL;
  v4 = 0xEA00000000007865;
  v5 = 0x646E695F6D657469;
  if (v2 != 1)
  {
    v5 = 0x746E656D75677261;
    v4 = 0xE900000000000073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x695F6563696F6863;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9DFE2C()
{
  v1 = 0x646E695F6D657469;
  if (*v0 != 1)
  {
    v1 = 0x746E656D75677261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x695F6563696F6863;
  }
}

unint64_t sub_1DD9DFE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA04440(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9DFEC0(uint64_t a1)
{
  v2 = sub_1DDA0486C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DFEFC(uint64_t a1)
{
  v2 = sub_1DDA0486C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9DFF7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x646E695F6D657469;
  v4 = 0xEA00000000007865;
  if (v2 != 1)
  {
    v3 = 0x61746C6564;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x695F6563696F6863;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC0000007865646ELL;
  }

  v7 = 0x646E695F6D657469;
  v8 = 0xEA00000000007865;
  if (*a2 != 1)
  {
    v7 = 0x61746C6564;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x695F6563696F6863;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC0000007865646ELL;
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

uint64_t sub_1DD9E0084()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E0130(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9E01C8(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9E0270@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA04684(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DD9E02A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA04684(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9E02C8(uint64_t a1)
{
  v2 = sub_1DDA04770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9E0304(uint64_t a1)
{
  v2 = sub_1DDA04770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9E0384(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x646E695F6D657469;
  v4 = 0xEA00000000007865;
  if (v2 != 1)
  {
    v3 = 0x74706D6F7270;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x695F6563696F6863;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC0000007865646ELL;
  }

  v7 = 0x646E695F6D657469;
  v8 = 0xEA00000000007865;
  if (*a2 != 1)
  {
    v7 = 0x74706D6F7270;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x695F6563696F6863;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC0000007865646ELL;
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

uint64_t sub_1DD9E048C()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E0538(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9E05D0(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9E0678@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA046D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9E06A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007865646ELL;
  v4 = 0xEA00000000007865;
  v5 = 0x646E695F6D657469;
  if (v2 != 1)
  {
    v5 = 0x74706D6F7270;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x695F6563696F6863;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9E0710()
{
  v1 = 0x646E695F6D657469;
  if (*v0 != 1)
  {
    v1 = 0x74706D6F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x695F6563696F6863;
  }
}

unint64_t sub_1DD9E0774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA046D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9E079C(uint64_t a1)
{
  v2 = sub_1DDA0471C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9E07D8(uint64_t a1)
{
  v2 = sub_1DDA0471C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9E0858@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  result = sub_1DDA0448C(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
    a6[2] = v10;
    a6[3] = v11;
  }

  return result;
}

uint64_t sub_1DD9E0898()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  MEMORY[0x1E12B8440](v2);
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9E0910(uint64_t a1)
{
  v2 = v1[1];
  MEMORY[0x1E12B8440](*v1);
  MEMORY[0x1E12B8440](v2);

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9E0974(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v2);
  MEMORY[0x1E12B8440](v3);
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9E09E8(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_1DDA15440();
  }
}

uint64_t sub_1DD9E0A40()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E0B08(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9E0BBC(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9E0C80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA04BB4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9E0CB0(uint64_t *a1@<X8>)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = 0x7865646E69;
  if (*v1 != 2)
  {
    v4 = 0x6567616D69;
  }

  if (*v1)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_1DD9E0D34()
{
  v1 = 0x695F6563696F6863;
  v2 = 0x7865646E69;
  if (*v0 != 2)
  {
    v2 = 0x6567616D69;
  }

  if (*v0)
  {
    v1 = 0x646E695F6D657469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DD9E0DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA04BB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9E0DDC(uint64_t a1)
{
  v2 = sub_1DD9FFC80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9E0E18(uint64_t a1)
{
  v2 = sub_1DD9FFC80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9E0E6C()
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v0);
  MEMORY[0x1E12B8440](v0[1]);
  MEMORY[0x1E12B8440](v0[2]);
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9E0F30(uint64_t a1)
{
  MEMORY[0x1E12B8440](*v1);
  MEMORY[0x1E12B8440](v1[1]);
  MEMORY[0x1E12B8440](v1[2]);
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  return sub_1DDA14AD0();
}

uint64_t sub_1DD9E0FD4(uint64_t a1)
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v1);
  MEMORY[0x1E12B8440](v1[1]);
  MEMORY[0x1E12B8440](v1[2]);
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9E10D8()
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v0);
  MEMORY[0x1E12B8440](*(v0 + 8));
  if (*(v0 + 24) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    v1 = *(v0 + 16);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](v1);
  }

  type metadata accessor for ChatChunk.FileGeneratorCallFileAdded(0);
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9E11CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for FileGeneratorCall.File(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83E60, &qword_1DDA1E1C0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for ChatChunk.FileGeneratorCallFileAdded(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1DD9FFBD8();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v25 = 0;
  v14 = v19;
  *v12 = sub_1DDA152B0();
  v24 = 1;
  *(v12 + 1) = sub_1DDA152B0();
  v23 = 2;
  *(v12 + 2) = sub_1DDA15250();
  v12[24] = v15 & 1;
  v22 = 3;
  sub_1DD9E4B98(&qword_1ECD83E70, type metadata accessor for FileGeneratorCall.File, &unk_1DDA1DF6C);
  v16 = v20;
  sub_1DDA152C0();
  (*(v14 + 8))(v9, v16);
  sub_1DD9FEFD0(v6, &v12[*(v10 + 28)], type metadata accessor for FileGeneratorCall.File);
  sub_1DD9FF500(v12, v18, type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_1DD9FF568(v12, type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
}

uint64_t sub_1DD9E1540()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E1604(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9E16B4(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9E1774@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA04C00(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9E17A4(uint64_t *a1@<X8>)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = 0xE500000000000000;
  v5 = 0x7865646E69;
  if (*v1 != 2)
  {
    v5 = 1701603686;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD9E1824()
{
  v1 = 0x695F6563696F6863;
  v2 = 0x7865646E69;
  if (*v0 != 2)
  {
    v2 = 1701603686;
  }

  if (*v0)
  {
    v1 = 0x646E695F6D657469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DD9E18A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA04C00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9E18C8(uint64_t a1)
{
  v2 = sub_1DD9FFBD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9E1904(uint64_t a1)
{
  v2 = sub_1DD9FFBD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9E195C(uint64_t a1)
{
  MEMORY[0x1E12B8440](*v1);
  MEMORY[0x1E12B8440](*(v1 + 8));
  if (*(v1 + 24) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    v2 = *(v1 + 16);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](v2);
  }

  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  return sub_1DDA14AD0();
}

uint64_t sub_1DD9E1A34(uint64_t a1)
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v1);
  MEMORY[0x1E12B8440](*(v1 + 8));
  if (*(v1 + 24) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    v2 = *(v1 + 16);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](v2);
  }

  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9E1B24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000023;
  }

  else
  {
    v3 = 0x6E6F73616572;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0x80000001DDA268A0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000023;
  }

  else
  {
    v5 = 0x6E6F73616572;
  }

  if (*a2)
  {
    v6 = 0x80000001DDA268A0;
  }

  else
  {
    v6 = 0xE600000000000000;
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

uint64_t sub_1DD9E1BCC()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E1C50(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9E1CC0(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

void sub_1DD9E1D4C(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DDA268A0;
  v3 = 0x6E6F73616572;
  if (*v1)
  {
    v3 = 0xD000000000000023;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1DD9E1D8C()
{
  if (*v0)
  {
    return 0xD000000000000023;
  }

  else
  {
    return 0x6E6F73616572;
  }
}

uint64_t sub_1DD9E1DD4(uint64_t a1)
{
  v2 = sub_1DDA05F20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9E1E10(uint64_t a1)
{
  v2 = sub_1DDA05F20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9E1E4C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DD928DC0(a2, a3);
  sub_1DDA14BC0();

  if (!a5)
  {
    return sub_1DDA15590();
  }

  sub_1DDA15590();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9E1FDC@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1DD9E2028@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DDA04C4C(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DD9E2058@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  if (v3 <= 1)
  {
    if (!v3)
    {
      *a1 = 0x6974617265646F6DLL;
      *(a1 + 8) = 0xEA00000000006E6FLL;
      return sub_1DD928DC0(v2, v3);
    }

    if (v3 == 1)
    {
      *a1 = 0x726568746FLL;
      *(a1 + 8) = 0xE500000000000000;
      return sub_1DD928DC0(v2, v3);
    }

LABEL_13:
    *a1 = v2;
    *(a1 + 8) = v3;
    return sub_1DD928DC0(v2, v3);
  }

  if (v3 == 2)
  {
    strcpy(a1, "content_filter");
    *(a1 + 15) = -18;
    return sub_1DD928DC0(v2, v3);
  }

  if (v3 == 3)
  {
    *a1 = 0xD00000000000001BLL;
    *(a1 + 8) = 0x80000001DDA28030;
    return sub_1DD928DC0(v2, v3);
  }

  if (v3 != 4)
  {
    goto LABEL_13;
  }

  *a1 = 0xD00000000000001CLL;
  *(a1 + 8) = 0x80000001DDA28010;
  return sub_1DD928DC0(v2, v3);
}

uint64_t sub_1DD9E2150@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DDA05194(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1DD9E2180()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DDA15570();
  sub_1DD9E1E4C(v6, v1, v2, v4, v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9E21EC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_1DDA15570();
  sub_1DD9E1E4C(v7, v2, v3, v5, v4);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9E2248(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if (sub_1DD9631B8(*a1, a1[1], *a2, a2[1]))
  {
    if (v2)
    {
      if (v4 && (v3 == v5 && v2 == v4 || (sub_1DDA15440() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1DD9E22D0()
{
  if (*v0)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1DD9E2300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
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

uint64_t sub_1DD9E23D4(uint64_t a1)
{
  v2 = sub_1DDA063B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9E2410(uint64_t a1)
{
  v2 = sub_1DDA063B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9E2490(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83D80, &unk_1DDA1E178);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9F3B38();
  sub_1DDA15650();
  v8[15] = 0;
  sub_1DDA15370();
  if (!v1)
  {
    type metadata accessor for ChatChunk.RateLimits.Limits(0);
    v8[14] = 1;
    sub_1DDA13680();
    sub_1DD9E4B98(&qword_1ECD829A0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DDA15330();
    v8[13] = 2;
    sub_1DDA15370();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DD9E2678(uint64_t a1)
{
  v2 = sub_1DDA13680();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  MEMORY[0x1E12B8440](*v1);
  v9 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  sub_1DD90ADB4(v1 + *(v9 + 20), v8, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1DDA15590();
    sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1DDA14AD0();
    (*(v3 + 8))(v5, v2);
  }

  return MEMORY[0x1E12B8440](*(v1 + *(v9 + 24)));
}

uint64_t sub_1DD9E2890()
{
  v1 = sub_1DDA13680();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v0);
  v8 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  sub_1DD90ADB4(v0 + *(v8 + 20), v7, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1DDA15590();
    sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1DDA14AD0();
    (*(v2 + 8))(v4, v1);
  }

  MEMORY[0x1E12B8440](*(v0 + *(v8 + 24)));
  return sub_1DDA155B0();
}

uint64_t sub_1DD9E2AB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83D70, &qword_1DDA1E170);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 20);
  v14 = sub_1DDA13680();
  v15 = *(*(v14 - 8) + 56);
  v29 = v13;
  v15(v12 + v13, 1, 1, v14);
  v16 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1DD9F3B38();
  v17 = v27;
  sub_1DDA15620();
  if (v17)
  {
    v21 = v29;
    __swift_destroy_boxed_opaque_existential_1(v28);
    return sub_1DD90D378(v12 + v21, &qword_1ECD82838, &unk_1DDA185F0);
  }

  else
  {
    v18 = v5;
    v20 = v25;
    v19 = v26;
    v32 = 0;
    *v12 = sub_1DDA152B0();
    v31 = 1;
    sub_1DD9E4B98(&qword_1ECD82990, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1DDA15260();
    sub_1DD90AE1C(v18, v12 + v29, &qword_1ECD82838, &unk_1DDA185F0);
    v30 = 2;
    v22 = sub_1DDA152B0();
    (*(v20 + 8))(v8, v19);
    *(v12 + *(v9 + 24)) = v22;
    sub_1DD9FF500(v12, v24, type metadata accessor for ChatChunk.RateLimits.Limits);
    __swift_destroy_boxed_opaque_existential_1(v28);
    return sub_1DD9FF568(v12, type metadata accessor for ChatChunk.RateLimits.Limits);
  }
}

uint64_t sub_1DD9E2E2C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84250, &qword_1DDA1E358);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA067B4();
  sub_1DDA15650();
  v12 = 0;
  type metadata accessor for ChatChunk.RateLimits.Limits(0);
  sub_1DD9E4B98(&qword_1ECD84258, type metadata accessor for ChatChunk.RateLimits.Limits, &unk_1DDA1E11C);
  sub_1DDA15330();
  if (!v1)
  {
    type metadata accessor for ChatChunk.RateLimits(0);
    v11 = 1;
    sub_1DDA15330();
    v10 = 2;
    sub_1DDA15330();
    v9 = 3;
    sub_1DDA15330();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DD9E3060(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1DDA13680();
  v4 = *(v3 - 8);
  v64 = v3;
  v65 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v62 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v61 = &v58 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v60 = &v58 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v58 - v13;
  v15 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v63 = (&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v17);
  v68 = (&v58 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v66 = (&v58 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v58 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D10, &qword_1DDA185E0);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v69 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v67 = &v58 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v58 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v58 - v33;
  v70 = v2;
  sub_1DD90ADB4(v2, &v58 - v33, &qword_1ECD82D10, &qword_1DDA185E0);
  v35 = *(v16 + 48);
  if (v35(v34, 1, v15) == 1)
  {
    sub_1DDA15590();
    v36 = v64;
    v37 = v65;
    v38 = v70;
  }

  else
  {
    sub_1DD9FEFD0(v34, v24, type metadata accessor for ChatChunk.RateLimits.Limits);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](*v24);
    sub_1DD90ADB4(v24 + *(v15 + 20), v14, &qword_1ECD82838, &unk_1DDA185F0);
    v36 = v64;
    v37 = v65;
    if ((*(v65 + 48))(v14, 1, v64) == 1)
    {
      sub_1DDA15590();
    }

    else
    {
      v39 = *(v37 + 32);
      v59 = v35;
      v40 = v37;
      v41 = v71;
      v39(v71, v14, v36);
      sub_1DDA15590();
      sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1DDA14AD0();
      (*(v40 + 8))(v41, v36);
      v37 = v40;
      v35 = v59;
    }

    v38 = v70;
    MEMORY[0x1E12B8440](*(v24 + *(v15 + 24)));
    sub_1DD9FF568(v24, type metadata accessor for ChatChunk.RateLimits.Limits);
  }

  v42 = type metadata accessor for ChatChunk.RateLimits(0);
  sub_1DD90ADB4(v38 + v42[5], v32, &qword_1ECD82D10, &qword_1DDA185E0);
  if (v35(v32, 1, v15) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    v43 = v32;
    v44 = v66;
    sub_1DD9FEFD0(v43, v66, type metadata accessor for ChatChunk.RateLimits.Limits);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](*v44);
    v45 = v60;
    sub_1DD90ADB4(v44 + *(v15 + 20), v60, &qword_1ECD82838, &unk_1DDA185F0);
    if ((*(v37 + 48))(v45, 1, v36) == 1)
    {
      sub_1DDA15590();
    }

    else
    {
      v46 = v71;
      (*(v37 + 32))(v71, v45, v36);
      sub_1DDA15590();
      sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1DDA14AD0();
      (*(v37 + 8))(v46, v36);
    }

    v47 = v66;
    MEMORY[0x1E12B8440](*(v66 + *(v15 + 24)));
    sub_1DD9FF568(v47, type metadata accessor for ChatChunk.RateLimits.Limits);
  }

  v48 = v67;
  sub_1DD90ADB4(v38 + v42[6], v67, &qword_1ECD82D10, &qword_1DDA185E0);
  if (v35(v48, 1, v15) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    v49 = v68;
    sub_1DD9FEFD0(v48, v68, type metadata accessor for ChatChunk.RateLimits.Limits);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](*v49);
    v50 = v61;
    sub_1DD90ADB4(v49 + *(v15 + 20), v61, &qword_1ECD82838, &unk_1DDA185F0);
    if ((*(v37 + 48))(v50, 1, v36) == 1)
    {
      sub_1DDA15590();
    }

    else
    {
      v51 = v71;
      (*(v37 + 32))(v71, v50, v36);
      sub_1DDA15590();
      sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1DDA14AD0();
      (*(v37 + 8))(v51, v36);
    }

    v52 = v68;
    MEMORY[0x1E12B8440](*(v68 + *(v15 + 24)));
    sub_1DD9FF568(v52, type metadata accessor for ChatChunk.RateLimits.Limits);
  }

  v53 = v69;
  sub_1DD90ADB4(v38 + v42[7], v69, &qword_1ECD82D10, &qword_1DDA185E0);
  if (v35(v53, 1, v15) == 1)
  {
    return sub_1DDA15590();
  }

  v55 = v63;
  sub_1DD9FEFD0(v53, v63, type metadata accessor for ChatChunk.RateLimits.Limits);
  sub_1DDA15590();
  MEMORY[0x1E12B8440](*v55);
  v56 = v62;
  sub_1DD90ADB4(v55 + *(v15 + 20), v62, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v37 + 48))(v56, 1, v36) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    v57 = v71;
    (*(v37 + 32))(v71, v56, v36);
    sub_1DDA15590();
    sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1DDA14AD0();
    (*(v37 + 8))(v57, v36);
  }

  MEMORY[0x1E12B8440](*(v55 + *(v15 + 24)));
  return sub_1DD9FF568(v55, type metadata accessor for ChatChunk.RateLimits.Limits);
}

uint64_t sub_1DD9E3A48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v32 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D10, &qword_1DDA185E0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v34 = &v30 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = &v30 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v30 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84238, &qword_1DDA1E350);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v11 = &v30 - v10;
  v12 = type metadata accessor for ChatChunk.RateLimits(0);
  v13 = (v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  v18 = v13[7];
  v17(&v15[v18], 1, 1, v16);
  v19 = v13[8];
  v17(&v15[v19], 1, 1, v16);
  v20 = v13[9];
  v39 = v15;
  v17(&v15[v20], 1, 1, v16);
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  sub_1DDA067B4();
  v21 = v40;
  sub_1DDA15620();
  if (v21)
  {
    v22 = v39;
  }

  else
  {
    v40 = v18;
    v30 = v20;
    v31 = v19;
    v24 = v35;
    v23 = v36;
    v45 = 0;
    sub_1DD9E4B98(&qword_1ECD84248, type metadata accessor for ChatChunk.RateLimits.Limits, &unk_1DDA1E144);
    v25 = v37;
    sub_1DDA15260();
    v22 = v39;
    sub_1DD90AE1C(v38, v39, &qword_1ECD82D10, &qword_1DDA185E0);
    v44 = 1;
    sub_1DDA15260();
    sub_1DD90AE1C(v23, v22 + v40, &qword_1ECD82D10, &qword_1DDA185E0);
    v43 = 2;
    v26 = v34;
    sub_1DDA15260();
    v27 = v24;
    sub_1DD90AE1C(v26, v22 + v31, &qword_1ECD82D10, &qword_1DDA185E0);
    v42 = 3;
    v28 = v33;
    sub_1DDA15260();
    (*(v27 + 8))(v11, v25);
    sub_1DD90AE1C(v28, v22 + v30, &qword_1ECD82D10, &qword_1DDA185E0);
    sub_1DD9FF500(v22, v32, type metadata accessor for ChatChunk.RateLimits);
  }

  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_1DD9FF568(v22, type metadata accessor for ChatChunk.RateLimits);
}

uint64_t sub_1DD9E3F5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x615F737465736572;
  v4 = 0xE900000000000074;
  if (v2 != 1)
  {
    v3 = 0x6567617375;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x74696D696CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x615F737465736572;
  v8 = 0xE900000000000074;
  if (*a2 != 1)
  {
    v7 = 0x6567617375;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x74696D696CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
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

uint64_t sub_1DD9E405C()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E40FC(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9E4188(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9E4224@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA05394(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9E4254(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE900000000000074;
  v5 = 0x615F737465736572;
  if (v2 != 1)
  {
    v5 = 0x6567617375;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74696D696CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9E42B0()
{
  v1 = 0x615F737465736572;
  if (*v0 != 1)
  {
    v1 = 0x6567617375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74696D696CLL;
  }
}

unint64_t sub_1DD9E4308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA05394(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9E4330(uint64_t a1)
{
  v2 = sub_1DD9F3B38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9E436C(uint64_t a1)
{
  v2 = sub_1DD9F3B38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9E43E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DDA13680();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v2);
  sub_1DD90ADB4(v2 + *(a2 + 20), v10, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1DDA15590();
    sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1DDA14AD0();
    (*(v5 + 8))(v7, v4);
  }

  MEMORY[0x1E12B8440](*(v2 + *(a2 + 24)));
  return sub_1DDA155B0();
}

uint64_t sub_1DD9E460C()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E46DC(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9E4798(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9E4864@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA053E0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9E4894(unint64_t *a1@<X8>)
{
  v2 = 0xEC0000007364616FLL;
  v3 = 0x6C70755F656C6966;
  v4 = 0x80000001DDA26D40;
  v5 = 0x65736E6F70736572;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000016;
    v2 = 0x80000001DDA26D10;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1DD9E4920()
{
  v1 = 0x6C70755F656C6966;
  v2 = 0x65736E6F70736572;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DD9E49A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA053E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9E49D0(uint64_t a1)
{
  v2 = sub_1DDA067B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9E4A0C(uint64_t a1)
{
  v2 = sub_1DDA067B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD9E4AFC()
{
  result = qword_1ECD83C50;
  if (!qword_1ECD83C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83C50);
  }

  return result;
}

uint64_t sub_1DD9E4B98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DD9E4BE4()
{
  result = qword_1ECD83C60;
  if (!qword_1ECD83C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83C60);
  }

  return result;
}

unint64_t sub_1DD9E4C84()
{
  result = qword_1ECD83C70;
  if (!qword_1ECD83C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83C70);
  }

  return result;
}

unint64_t sub_1DD9E4CDC()
{
  result = qword_1ECD83C78;
  if (!qword_1ECD83C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83C78);
  }

  return result;
}

unint64_t sub_1DD9E4D34()
{
  result = qword_1ECD83C80;
  if (!qword_1ECD83C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83C80);
  }

  return result;
}

unint64_t sub_1DD9E4D8C()
{
  result = qword_1ECD83C88;
  if (!qword_1ECD83C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83C88);
  }

  return result;
}

unint64_t sub_1DD9E4DE4()
{
  result = qword_1ECD83C90;
  if (!qword_1ECD83C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83C90);
  }

  return result;
}

unint64_t sub_1DD9E4ECC()
{
  result = qword_1ECD83CA8;
  if (!qword_1ECD83CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83CA8);
  }

  return result;
}

void sub_1DD9E4F20(uint64_t a1)
{
  v229 = a1;
  v219 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  v217 = *(v219 - 8);
  v1 = MEMORY[0x1EEE9AC00](v219);
  v193 = (&v190 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = MEMORY[0x1EEE9AC00](v1);
  v197 = &v190 - v4;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v196 = (&v190 - v6);
  MEMORY[0x1EEE9AC00](v5);
  v194 = (&v190 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D10, &qword_1DDA185E0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v198 = &v190 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v216 = &v190 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v195 = &v190 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v205 = &v190 - v15;
  v223 = type metadata accessor for ChatChunk.RateLimits(0);
  MEMORY[0x1EEE9AC00](v223);
  v218 = &v190 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for ChatChunk.FileGeneratorCallFileAdded(0);
  MEMORY[0x1EEE9AC00](v203);
  v204 = &v190 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded(0);
  MEMORY[0x1EEE9AC00](v201);
  v202 = (&v190 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v200 = type metadata accessor for ChatChunk.TextValueAnnotation(0);
  MEMORY[0x1EEE9AC00](v200);
  v199 = (&v190 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v222 = type metadata accessor for ChatChunk.ChoiceItemMessageContent(0);
  MEMORY[0x1EEE9AC00](v222);
  v21 = (&v190 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v227 = sub_1DDA134E0();
  v226 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v224 = &v190 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v214 = &v190 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v212 = &v190 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v210 = &v190 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v208 = &v190 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v206 = &v190 - v32;
  v33 = type metadata accessor for ChatChunk.ChoiceResource(0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v215 = (&v190 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x1EEE9AC00](v34);
  v213 = (&v190 - v37);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v211 = (&v190 - v39);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v209 = (&v190 - v41);
  MEMORY[0x1EEE9AC00](v40);
  v207 = (&v190 - v42);
  v43 = type metadata accessor for ChatChunk.FileUploadResponse(0);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v45 = &v190 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_1DDA13680();
  v225 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v220 = &v190 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v48 = MEMORY[0x1EEE9AC00](v47 - 8);
  v192 = &v190 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v191 = &v190 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v54 = &v190 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52);
  v57 = &v190 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v59 = &v190 - v58;
  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  MEMORY[0x1EEE9AC00](SessionResponse);
  v62 = (&v190 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = type metadata accessor for ChatChunk(0);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v190 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD9FF500(v228, v65, type metadata accessor for ChatChunk);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD9FEFD0(v65, v45, type metadata accessor for ChatChunk.FileUploadResponse);
      v110 = v229;
      MEMORY[0x1E12B8440](1);
      sub_1DD9D9418(v110);
      v111 = type metadata accessor for ChatChunk.FileUploadResponse;
      goto LABEL_97;
    case 2u:
      v100 = *(v65 + 5);
      v234 = *(v65 + 4);
      v235 = v100;
      v236 = *(v65 + 6);
      v237 = *(v65 + 14);
      v101 = *(v65 + 1);
      v230 = *v65;
      v102 = *(v65 + 2);
      v103 = *(v65 + 3);
      v231 = v101;
      v232 = v102;
      v233 = v103;
      v91 = 2;
      goto LABEL_19;
    case 3u:
      v105 = *v65;
      MEMORY[0x1E12B8440](3);
      MEMORY[0x1E12B8440](*(v105 + 16));
      v106 = *(v105 + 16);
      if (v106)
      {
        v107 = v105 + 56;
        do
        {

          sub_1DDA14BC0();

          sub_1DDA14BC0();
          swift_bridgeObjectRelease_n();

          v107 += 32;
          --v106;
        }

        while (v106);
      }

      goto LABEL_48;
    case 4u:
      v87 = *(v65 + 5);
      v234 = *(v65 + 4);
      v235 = v87;
      v236 = *(v65 + 6);
      v237 = *(v65 + 14);
      v88 = *(v65 + 1);
      v230 = *v65;
      v89 = *(v65 + 2);
      v90 = *(v65 + 3);
      v231 = v88;
      v232 = v89;
      v233 = v90;
      v91 = 4;
LABEL_19:
      v104 = v229;
      MEMORY[0x1E12B8440](v91);
      sub_1DD9DA4D0(v104);
      sub_1DD9B2CFC(&v230);
      return;
    case 5u:
      v93 = v207;
      sub_1DD9FEFD0(v65, v207, type metadata accessor for ChatChunk.ChoiceResource);
      v117 = v229;
      MEMORY[0x1E12B8440](5);
      MEMORY[0x1E12B8440](*v93);
      v118 = (v93 + *(v33 + 20));
      sub_1DDA14BC0();
      v96 = v226;
      sub_1DDA14BC0();

      sub_1DD96BCC4(v117, v118[3]);
      v157 = v118[7];
      if (v157 == 1 || (v158 = v118[4], v159 = v118[5], sub_1DDA15590(), sub_1DD928DC0(v158, v159), sub_1DDA14BC0(), , !v157))
      {
        sub_1DDA15590();
      }

      else
      {
        sub_1DDA15590();
        sub_1DDA14BC0();
      }

      v185 = v227;
      v186 = v118 + *(type metadata accessor for ChatChunk.Choice(0) + 32);
      v187 = &v234;
      goto LABEL_118;
    case 6u:
      v93 = v209;
      sub_1DD9FEFD0(v65, v209, type metadata accessor for ChatChunk.ChoiceResource);
      v124 = v229;
      MEMORY[0x1E12B8440](6);
      MEMORY[0x1E12B8440](*v93);
      v125 = (v93 + *(v33 + 20));
      sub_1DDA14BC0();
      v96 = v226;
      sub_1DDA14BC0();

      sub_1DD96BCC4(v124, v125[3]);
      v160 = v125[7];
      if (v160 == 1 || (v161 = v125[4], v162 = v125[5], sub_1DDA15590(), sub_1DD928DC0(v161, v162), sub_1DDA14BC0(), , !v160))
      {
        sub_1DDA15590();
      }

      else
      {
        sub_1DDA15590();
        sub_1DDA14BC0();
      }

      v185 = v227;
      v186 = v125 + *(type metadata accessor for ChatChunk.Choice(0) + 32);
      v187 = &v235;
      goto LABEL_118;
    case 7u:
      v93 = v211;
      sub_1DD9FEFD0(v65, v211, type metadata accessor for ChatChunk.ChoiceResource);
      v108 = v229;
      MEMORY[0x1E12B8440](7);
      MEMORY[0x1E12B8440](*v93);
      v109 = (v93 + *(v33 + 20));
      sub_1DDA14BC0();
      v96 = v226;
      sub_1DDA14BC0();

      sub_1DD96BCC4(v108, v109[3]);
      v154 = v109[7];
      if (v154 == 1 || (v155 = v109[4], v156 = v109[5], sub_1DDA15590(), sub_1DD928DC0(v155, v156), sub_1DDA14BC0(), , !v154))
      {
        sub_1DDA15590();
      }

      else
      {
        sub_1DDA15590();
        sub_1DDA14BC0();
      }

      v185 = v227;
      v186 = v109 + *(type metadata accessor for ChatChunk.Choice(0) + 32);
      v187 = &v236;
      goto LABEL_118;
    case 8u:
      v93 = v213;
      sub_1DD9FEFD0(v65, v213, type metadata accessor for ChatChunk.ChoiceResource);
      v127 = v229;
      MEMORY[0x1E12B8440](8);
      MEMORY[0x1E12B8440](*v93);
      v128 = (v93 + *(v33 + 20));
      sub_1DDA14BC0();
      v96 = v226;
      sub_1DDA14BC0();

      sub_1DD96BCC4(v127, v128[3]);
      v163 = v128[7];
      if (v163 == 1 || (v164 = v128[4], v165 = v128[5], sub_1DDA15590(), sub_1DD928DC0(v164, v165), sub_1DDA14BC0(), , !v163))
      {
        sub_1DDA15590();
      }

      else
      {
        sub_1DDA15590();
        sub_1DDA14BC0();
      }

      v185 = v227;
      v186 = v128 + *(type metadata accessor for ChatChunk.Choice(0) + 32);
      v187 = &v237;
      goto LABEL_118;
    case 9u:
      v93 = v215;
      sub_1DD9FEFD0(v65, v215, type metadata accessor for ChatChunk.ChoiceResource);
      v94 = v229;
      MEMORY[0x1E12B8440](9);
      MEMORY[0x1E12B8440](*v93);
      v95 = (v93 + *(v33 + 20));
      sub_1DDA14BC0();
      v96 = v226;
      sub_1DDA14BC0();

      sub_1DD96BCC4(v94, v95[3]);
      v151 = v95[7];
      if (v151 == 1 || (v152 = v95[4], v153 = v95[5], sub_1DDA15590(), sub_1DD928DC0(v152, v153), sub_1DDA14BC0(), , !v151))
      {
        sub_1DDA15590();
      }

      else
      {
        sub_1DDA15590();
        sub_1DDA14BC0();
      }

      v185 = v227;
      v186 = v95 + *(type metadata accessor for ChatChunk.Choice(0) + 32);
      v187 = v238;
LABEL_118:
      v188 = *(v187 - 32);
      sub_1DD90ADB4(v186, v188, &qword_1ECD82CE0, &qword_1DDA18700);
      if ((*(v96 + 48))(v188, 1, v185) == 1)
      {
        sub_1DDA15590();
      }

      else
      {
        v189 = v224;
        (*(v96 + 32))(v224, v188, v185);
        sub_1DDA15590();
        sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        sub_1DDA14AD0();
        (*(v96 + 8))(v189, v185);
      }

      v122 = type metadata accessor for ChatChunk.ChoiceResource;
      v123 = v93;
      goto LABEL_122;
    case 0xAu:
      v78 = *v65;
      v228 = *(v65 + 1);
      v79 = *(v65 + 2);
      v80 = *(v65 + 3);
      v81 = *(v65 + 4);
      v82 = *(v65 + 5);
      v83 = *(v65 + 6);
      v84 = *(v65 + 7);
      v85 = v65[64];
      v86 = 10;
      goto LABEL_39;
    case 0xBu:
      v78 = *v65;
      v228 = *(v65 + 1);
      v79 = *(v65 + 2);
      v80 = *(v65 + 3);
      v81 = *(v65 + 4);
      v82 = *(v65 + 5);
      v83 = *(v65 + 6);
      v84 = *(v65 + 7);
      v85 = v65[64];
      v86 = 11;
LABEL_39:
      v126 = v229;
      MEMORY[0x1E12B8440](v86);
      MEMORY[0x1E12B8440](v78);
      MEMORY[0x1E12B8440](v228);
      *&v230 = v79;
      *(&v230 + 1) = v80;
      *&v231 = v81;
      *(&v231 + 1) = v82;
      *&v232 = v83;
      *(&v232 + 1) = v84;
      LOBYTE(v233) = v85;
      sub_1DD9D55C0(v126);
      sub_1DD96E310(v79, v80, v81, v82, v83, v84, v85);
      return;
    case 0xCu:
      sub_1DD9FEFD0(v65, v21, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
      v92 = 12;
      goto LABEL_33;
    case 0xDu:
      sub_1DD9FEFD0(v65, v21, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
      v92 = 13;
LABEL_33:
      v121 = v229;
      MEMORY[0x1E12B8440](v92);
      MEMORY[0x1E12B8440](*v21);
      MEMORY[0x1E12B8440](v21[1]);
      MEMORY[0x1E12B8440](v21[2]);
      sub_1DD9E8BF8(v121);
      v97 = type metadata accessor for ChatChunk.ChoiceItemMessageContent;
      goto LABEL_34;
    case 0xEu:
      v74 = *v65;
      v75 = *(v65 + 1);
      v76 = *(v65 + 2);
      v77 = 14;
      goto LABEL_37;
    case 0xFu:
      v74 = *v65;
      v75 = *(v65 + 1);
      v76 = *(v65 + 2);
      v77 = 15;
      goto LABEL_37;
    case 0x10u:
      v62 = v199;
      sub_1DD9FEFD0(v65, v199, type metadata accessor for ChatChunk.TextValueAnnotation);
      v72 = v229;
      MEMORY[0x1E12B8440](16);
      MEMORY[0x1E12B8440](*v62);
      MEMORY[0x1E12B8440](v62[1]);
      MEMORY[0x1E12B8440](v62[2]);
      MEMORY[0x1E12B8440](v62[3]);
      sub_1DD9E9C1C(v72);
      v73 = type metadata accessor for ChatChunk.TextValueAnnotation;
      goto LABEL_61;
    case 0x11u:
      v74 = *v65;
      v75 = *(v65 + 1);
      v76 = *(v65 + 2);
      v77 = 17;
      goto LABEL_37;
    case 0x12u:
      v74 = *v65;
      v75 = *(v65 + 1);
      v76 = *(v65 + 2);
      v77 = 18;
LABEL_37:
      MEMORY[0x1E12B8440](v77);
      MEMORY[0x1E12B8440](v74);
      MEMORY[0x1E12B8440](v75);
      MEMORY[0x1E12B8440](v76);
      sub_1DDA14BC0();
      goto LABEL_48;
    case 0x13u:
      v114 = *v65;
      v115 = *(v65 + 1);
      v116 = 19;
      goto LABEL_47;
    case 0x14u:
      v114 = *v65;
      v115 = *(v65 + 1);
      v116 = 20;
      goto LABEL_47;
    case 0x15u:
      v119 = *(v65 + 3);
      v232 = *(v65 + 2);
      v233 = v119;
      LOBYTE(v234) = v65[64];
      v120 = *v65;
      v231 = *(v65 + 1);
      v230 = v120;
      v71 = 24;
      goto LABEL_55;
    case 0x16u:
      v114 = *v65;
      v115 = *(v65 + 1);
      v116 = 25;
      goto LABEL_47;
    case 0x17u:
      v114 = *v65;
      v115 = *(v65 + 1);
      v116 = 26;
LABEL_47:
      MEMORY[0x1E12B8440](v116);
      MEMORY[0x1E12B8440](v114);
      MEMORY[0x1E12B8440](v115);
      sub_1DDA14BC0();
LABEL_48:

      return;
    case 0x18u:
      v98 = *(v65 + 3);
      v232 = *(v65 + 2);
      v233 = v98;
      LOBYTE(v234) = v65[64];
      v99 = *v65;
      v231 = *(v65 + 1);
      v230 = v99;
      v71 = 27;
      goto LABEL_55;
    case 0x19u:
      v21 = v202;
      sub_1DD9FEFD0(v65, v202, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
      MEMORY[0x1E12B8440](28);
      MEMORY[0x1E12B8440](*v21);
      MEMORY[0x1E12B8440](v21[1]);
      MEMORY[0x1E12B8440](v21[2]);
      sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1DDA14AD0();
      v97 = type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded;
LABEL_34:
      v122 = v97;
      v123 = v21;
      goto LABEL_122;
    case 0x1Au:
      v142 = *(v65 + 3);
      v232 = *(v65 + 2);
      v233 = v142;
      LOBYTE(v234) = v65[64];
      v143 = *v65;
      v231 = *(v65 + 1);
      v230 = v143;
      v71 = 29;
      goto LABEL_55;
    case 0x1Bu:
      v69 = *(v65 + 3);
      v232 = *(v65 + 2);
      v233 = v69;
      LOBYTE(v234) = v65[64];
      v70 = *v65;
      v231 = *(v65 + 1);
      v230 = v70;
      v71 = 30;
      goto LABEL_55;
    case 0x1Cu:
      v139 = *(v65 + 3);
      v232 = *(v65 + 2);
      v233 = v139;
      LOBYTE(v234) = v65[64];
      v140 = *v65;
      v231 = *(v65 + 1);
      v230 = v140;
      v71 = 31;
      goto LABEL_55;
    case 0x1Du:
      v141 = v204;
      sub_1DD9FEFD0(v65, v204, type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
      MEMORY[0x1E12B8440](32);
      MEMORY[0x1E12B8440](*v141);
      MEMORY[0x1E12B8440](*(v141 + 8));
      if (*(v141 + 24) == 1)
      {
        sub_1DDA15590();
      }

      else
      {
        v150 = *(v141 + 16);
        sub_1DDA15590();
        MEMORY[0x1E12B8440](v150);
      }

      sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1DDA14AD0();
      v122 = type metadata accessor for ChatChunk.FileGeneratorCallFileAdded;
      v123 = v141;
      goto LABEL_122;
    case 0x1Eu:
      v129 = *(v65 + 3);
      v232 = *(v65 + 2);
      v233 = v129;
      LOBYTE(v234) = v65[64];
      v130 = *v65;
      v231 = *(v65 + 1);
      v230 = v130;
      v71 = 33;
      goto LABEL_55;
    case 0x1Fu:
      v112 = *(v65 + 3);
      v232 = *(v65 + 2);
      v233 = v112;
      LOBYTE(v234) = v65[64];
      v113 = *v65;
      v231 = *(v65 + 1);
      v230 = v113;
      v71 = 34;
LABEL_55:
      v144 = v229;
      MEMORY[0x1E12B8440](v71);
      MEMORY[0x1E12B8440](v230);
      MEMORY[0x1E12B8440](*(&v230 + 1));
      v238[0] = v231;
      v238[1] = v232;
      v238[2] = v233;
      v239 = v234;
      sub_1DD9D55C0(v144);
      sub_1DD9FF5C8(&v230);
      return;
    case 0x20u:
      v45 = v218;
      sub_1DD9FEFD0(v65, v218, type metadata accessor for ChatChunk.RateLimits);
      MEMORY[0x1E12B8440](38);
      v131 = v205;
      sub_1DD90ADB4(v45, v205, &qword_1ECD82D10, &qword_1DDA185E0);
      v132 = *(v217 + 48);
      v133 = v219;
      v134 = v132(v131, 1, v219);
      v228 = v132;
      if (v134 == 1)
      {
        sub_1DDA15590();
        v135 = v197;
        v136 = v223;
        v137 = v221;
        v138 = v195;
      }

      else
      {
        v148 = v194;
        sub_1DD9FEFD0(v131, v194, type metadata accessor for ChatChunk.RateLimits.Limits);
        sub_1DDA15590();
        MEMORY[0x1E12B8440](*v148);
        sub_1DD90ADB4(v148 + *(v133 + 20), v57, &qword_1ECD82838, &unk_1DDA185F0);
        v149 = v225;
        v137 = v221;
        if ((*(v225 + 48))(v57, 1, v221) == 1)
        {
          sub_1DDA15590();
        }

        else
        {
          v166 = v220;
          (*(v149 + 32))(v220, v57, v137);
          sub_1DDA15590();
          sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
          sub_1DDA14AD0();
          (*(v149 + 8))(v166, v137);
        }

        v135 = v197;
        v138 = v195;
        v167 = v194;
        MEMORY[0x1E12B8440](*(v194 + *(v133 + 24)));
        sub_1DD9FF568(v167, type metadata accessor for ChatChunk.RateLimits.Limits);
        v132 = v228;
        v136 = v223;
      }

      sub_1DD90ADB4(&v45[*(v136 + 20)], v138, &qword_1ECD82D10, &qword_1DDA185E0);
      if (v132(v138, 1, v133) == 1)
      {
        sub_1DDA15590();
        v168 = v198;
      }

      else
      {
        v169 = v138;
        v170 = v196;
        sub_1DD9FEFD0(v169, v196, type metadata accessor for ChatChunk.RateLimits.Limits);
        sub_1DDA15590();
        MEMORY[0x1E12B8440](*v170);
        sub_1DD90ADB4(v170 + *(v133 + 20), v54, &qword_1ECD82838, &unk_1DDA185F0);
        v171 = v225;
        if ((*(v225 + 48))(v54, 1, v137) == 1)
        {
          sub_1DDA15590();
        }

        else
        {
          v172 = v220;
          (*(v171 + 32))(v220, v54, v137);
          sub_1DDA15590();
          sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
          sub_1DDA14AD0();
          (*(v171 + 8))(v172, v137);
        }

        v168 = v198;
        v173 = v196;
        MEMORY[0x1E12B8440](*(v196 + *(v133 + 24)));
        sub_1DD9FF568(v173, type metadata accessor for ChatChunk.RateLimits.Limits);
        v132 = v228;
      }

      v174 = v223;
      v175 = v216;
      sub_1DD90ADB4(&v45[*(v223 + 24)], v216, &qword_1ECD82D10, &qword_1DDA185E0);
      if (v132(v175, 1, v133) == 1)
      {
        sub_1DDA15590();
      }

      else
      {
        sub_1DD9FEFD0(v175, v135, type metadata accessor for ChatChunk.RateLimits.Limits);
        sub_1DDA15590();
        MEMORY[0x1E12B8440](*v135);
        v176 = v191;
        sub_1DD90ADB4(v135 + *(v133 + 20), v191, &qword_1ECD82838, &unk_1DDA185F0);
        v177 = v225;
        if ((*(v225 + 48))(v176, 1, v137) == 1)
        {
          sub_1DDA15590();
        }

        else
        {
          v178 = v220;
          (*(v177 + 32))(v220, v176, v137);
          sub_1DDA15590();
          sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
          sub_1DDA14AD0();
          v179 = v178;
          v174 = v223;
          (*(v177 + 8))(v179, v137);
        }

        MEMORY[0x1E12B8440](*(v135 + *(v133 + 24)));
        sub_1DD9FF568(v135, type metadata accessor for ChatChunk.RateLimits.Limits);
        v132 = v228;
      }

      sub_1DD90ADB4(&v45[*(v174 + 28)], v168, &qword_1ECD82D10, &qword_1DDA185E0);
      if (v132(v168, 1, v133) == 1)
      {
        sub_1DDA15590();
      }

      else
      {
        v180 = v168;
        v181 = v193;
        sub_1DD9FEFD0(v180, v193, type metadata accessor for ChatChunk.RateLimits.Limits);
        sub_1DDA15590();
        MEMORY[0x1E12B8440](*v181);
        v182 = v192;
        sub_1DD90ADB4(v181 + *(v133 + 20), v192, &qword_1ECD82838, &unk_1DDA185F0);
        v183 = v225;
        if ((*(v225 + 48))(v182, 1, v137) == 1)
        {
          sub_1DDA15590();
        }

        else
        {
          v184 = v220;
          (*(v183 + 32))(v220, v182, v137);
          sub_1DDA15590();
          sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
          sub_1DDA14AD0();
          (*(v183 + 8))(v184, v137);
        }

        MEMORY[0x1E12B8440](*(v181 + *(v133 + 24)));
        sub_1DD9FF568(v181, type metadata accessor for ChatChunk.RateLimits.Limits);
      }

      v111 = type metadata accessor for ChatChunk.RateLimits;
LABEL_97:
      v122 = v111;
      v123 = v45;
      goto LABEL_122;
    case 0x21u:
      v68 = 21;
      goto LABEL_53;
    case 0x22u:
      v68 = 22;
      goto LABEL_53;
    case 0x23u:
      v68 = 23;
      goto LABEL_53;
    case 0x24u:
      v68 = 35;
      goto LABEL_53;
    case 0x25u:
      v68 = 36;
      goto LABEL_53;
    case 0x26u:
      v68 = 37;
LABEL_53:
      MEMORY[0x1E12B8440](v68);
      break;
    default:
      sub_1DD9FEFD0(v65, v62, type metadata accessor for CreateSessionResponse);
      MEMORY[0x1E12B8440](0);
      sub_1DDA14BC0();
      sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      v66 = v221;
      sub_1DDA14AD0();
      sub_1DDA14AD0();
      sub_1DD90ADB4(v62 + *(SessionResponse + 28), v59, &qword_1ECD82838, &unk_1DDA185F0);
      v67 = v225;
      if ((*(v225 + 48))(v59, 1, v66) == 1)
      {
        sub_1DDA15590();
      }

      else
      {
        v145 = v220;
        (*(v67 + 32))(v220, v59, v66);
        sub_1DDA15590();
        sub_1DDA14AD0();
        (*(v67 + 8))(v145, v66);
      }

      v146 = v62 + *(SessionResponse + 32);
      if (*v146 == 2)
      {
        v147 = 0;
      }

      else
      {
        v147 = *(v146 + 1);
        MEMORY[0x1E12B8440](1);
        sub_1DDA14BC0();
      }

      MEMORY[0x1E12B8440](v147);
      v73 = type metadata accessor for CreateSessionResponse;
LABEL_61:
      v122 = v73;
      v123 = v62;
LABEL_122:
      sub_1DD9FF568(v123, v122);
      break;
  }
}

uint64_t sub_1DD9E7640(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E61747369737361;
  v4 = 0xE900000000000074;
  if (v2 != 1)
  {
    v3 = 1919251317;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6D6574737973;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6E61747369737361;
  v8 = 0xE900000000000074;
  if (*a2 != 1)
  {
    v7 = 1919251317;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6D6574737973;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
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

uint64_t sub_1DD9E7738()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E77D4(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9E785C(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9E78F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA0542C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9E7924(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE900000000000074;
  v5 = 0x6E61747369737361;
  if (v2 != 1)
  {
    v5 = 1919251317;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D6574737973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9E7A2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v51 = type metadata accessor for FileGeneratorFile(0);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for ImageGeneratorImage(0);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageURLItem(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83D88, &qword_1DDA1E188);
  v55 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - v9;
  v11 = type metadata accessor for MessageContent(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1DD9FEF7C();
  v15 = v56;
  sub_1DDA15620();
  if (!v15)
  {
    v49 = v13;
    v56 = v11;
    v16 = v55;
    v60 = 1701869940;
    v61 = 0xE400000000000000;
    v62 = 0;
    v63 = 1;
    v18 = sub_1DDA15280();
    v19 = v17;
    v20 = v18 == 1954047348 && v17 == 0xE400000000000000;
    if (v20 || (sub_1DDA15440() & 1) != 0)
    {
      v60 = v18;
      v61 = v19;
      v62 = 0;
      v63 = 1;
      sub_1DDA05BA8();
      sub_1DDA152C0();
      (*(v16 + 8))(v10, v8);

      v21 = v58;
      v22 = v59;

      v23 = v49;
      *v49 = v21;
      v23[1] = v22;
LABEL_8:
      v24 = v54;
LABEL_9:
      swift_storeEnumTagMultiPayload();
      sub_1DD9FEFD0(v23, v24, type metadata accessor for MessageContent);
      return __swift_destroy_boxed_opaque_existential_1(v57);
    }

    v26 = v18 == 0x72755F6567616D69 && v19 == 0xE90000000000006CLL;
    if (v26 || (sub_1DDA15440() & 1) != 0)
    {
      v60 = v18;
      v61 = v19;
      v62 = 0;
      v63 = 1;
      sub_1DD9E4B98(&qword_1ECD84060, type metadata accessor for ImageURLItem, &unk_1DDA1D2C4);
      sub_1DDA152C0();
      (*(v16 + 8))(v10, v8);

      v23 = v49;
      sub_1DD9FEFD0(v7, v49, type metadata accessor for ImageURLItem);
      goto LABEL_8;
    }

    if (v18 == 0xD000000000000015 && 0x80000001DDA29B90 == v19 || (sub_1DDA15440() & 1) != 0)
    {
      v60 = v18;
      v61 = v19;
      v62 = 0;
      v63 = 1;
      sub_1DD9E4B98(&qword_1ECD84058, type metadata accessor for ImageGeneratorImage, &unk_1DDA1D37C);
      v27 = v52;
      sub_1DDA152C0();
      v24 = v54;
      (*(v16 + 8))(v10, v8);

      v28 = v27;
      v23 = v49;
      sub_1DD9FEFD0(v28, v49, type metadata accessor for ImageGeneratorImage);
      goto LABEL_9;
    }

    v24 = v54;
    if (v18 == 0xD000000000000013 && 0x80000001DDA29BB0 == v19 || (sub_1DDA15440() & 1) != 0)
    {
      v60 = v18;
      v61 = v19;
      v62 = 0;
      v63 = 1;
      sub_1DD9E4B98(&qword_1ECD84050, type metadata accessor for FileGeneratorFile, &unk_1DDA1D434);
      v29 = v50;
      sub_1DDA152C0();
      (*(v16 + 8))(v10, v8);

      v23 = v49;
      sub_1DD9FEFD0(v29, v49, type metadata accessor for FileGeneratorFile);
      goto LABEL_9;
    }

    if (v18 == 0x6C617375666572 && v19 == 0xE700000000000000 || (sub_1DDA15440() & 1) != 0)
    {
      v60 = v18;
      v61 = v19;
      v62 = 0;
      v63 = 1;
      v30 = sub_1DDA15280();
      v32 = v31;
      (*(v16 + 8))(v10, v8);

      v23 = v49;
      *v49 = v30;
      v23[1] = v32;
      goto LABEL_8;
    }

    v54 = v18;
    v33 = qword_1ECD827A8;

    if (v33 != -1)
    {
      swift_once();
    }

    v51 = v10;
    v52 = v8;
    v34 = sub_1DDA14810();
    __swift_project_value_buffer(v34, qword_1ECDA20E0);

    v35 = sub_1DDA147F0();
    v36 = sub_1DDA14EE0();
    v53 = v19;

    v37 = os_log_type_enabled(v35, v36);
    v38 = v56;
    if (v37)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v60 = v40;
      *v39 = 136315394;
      v58 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84040, &qword_1DDA1E2B0);
      v41 = sub_1DDA14B70();
      v43 = sub_1DD93FA54(v41, v42, &v60);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_1DD93FA54(v54, v53, &v60);
      _os_log_impl(&dword_1DD8F8000, v35, v36, "Failed to decode %s. Unknown type identifier: %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v40, -1, -1);
      MEMORY[0x1E12B8CE0](v39, -1, -1);
    }

    v45 = v53;
    v44 = v54;
    v60 = v54;
    v61 = v53;
    v62 = 0;
    v63 = 1;
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_1DDA15070();

    v58 = 0xD000000000000011;
    v59 = 0x80000001DDA29B20;
    v64 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84040, &qword_1DDA1E2B0);
    v46 = sub_1DDA14B70();
    MEMORY[0x1E12B7AB0](v46);

    MEMORY[0x1E12B7AB0](0xD00000000000001BLL, 0x80000001DDA29B40);
    MEMORY[0x1E12B7AB0](v44, v45);

    sub_1DDA150D0();
    swift_allocError();
    sub_1DDA05B54(&qword_1ECD84048, &qword_1ECD83D88, &qword_1DDA1E188);
    v47 = v51;
    v48 = v52;
    sub_1DDA150A0();

    swift_willThrow();
    (*(v16 + 8))(v47, v48);
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_1DD9E8484(void *a1)
{
  v2 = v1;
  v34 = type metadata accessor for FileGeneratorFile(0);
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ImageGeneratorImage(0);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ImageURLItem(0);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MessageContent(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84070, &qword_1DDA1E2B8);
  v42 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9FEF7C();
  sub_1DDA15650();
  sub_1DD9FF500(v2, v14, type metadata accessor for MessageContent);
  swift_getEnumCaseMultiPayload();
  sub_1DD9FF568(v14, type metadata accessor for MessageContent);
  v18 = v37;
  v38 = 1701869940;
  v39 = 0xE400000000000000;
  v40 = 0;
  v41 = 1;
  sub_1DDA15340();
  if (v18)
  {

    return (*(v42 + 8))(v17, v15);
  }

  sub_1DD9FF500(v2, v12, type metadata accessor for MessageContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1DD9FF568(v12, type metadata accessor for MessageContent);
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v21 = 0x72755F6567616D69;
      v22 = 0xE90000000000006CLL;
    }

    else
    {
      v22 = 0xE400000000000000;
      v21 = 1954047348;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v22 = 0x80000001DDA29B90;
    v21 = 0xD000000000000015;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v21 = 0xD000000000000013;
    v22 = 0x80000001DDA29BB0;
  }

  else
  {
    v22 = 0xE700000000000000;
    v21 = 0x6C617375666572;
  }

  v23 = v36;
  sub_1DD9FF500(v2, v36, type metadata accessor for MessageContent);
  v24 = swift_getEnumCaseMultiPayload();
  if (v24 <= 1)
  {
    if (v24)
    {
      v29 = v23;
      v26 = v30;
      sub_1DD9FEFD0(v29, v30, type metadata accessor for ImageURLItem);
      v38 = v21;
      v39 = v22;
      v40 = 0;
      v41 = 1;
      sub_1DD9E4B98(&qword_1ECD84088, type metadata accessor for ImageURLItem, &unk_1DDA1D29C);
      sub_1DDA15380();
      v27 = type metadata accessor for ImageURLItem;
      goto LABEL_20;
    }
  }

  else
  {
    if (v24 == 2)
    {
      v28 = v23;
      v26 = v32;
      sub_1DD9FEFD0(v28, v32, type metadata accessor for ImageGeneratorImage);
      v38 = v21;
      v39 = v22;
      v40 = 0;
      v41 = 1;
      sub_1DD9E4B98(&qword_1ECD84080, type metadata accessor for ImageGeneratorImage, &unk_1DDA1D354);
      sub_1DDA15380();
      v27 = type metadata accessor for ImageGeneratorImage;
      goto LABEL_20;
    }

    if (v24 == 3)
    {
      v25 = v23;
      v26 = v35;
      sub_1DD9FEFD0(v25, v35, type metadata accessor for FileGeneratorFile);
      v38 = v21;
      v39 = v22;
      v40 = 0;
      v41 = 1;
      sub_1DD9E4B98(&qword_1ECD84078, type metadata accessor for FileGeneratorFile, &unk_1DDA1D40C);
      sub_1DDA15380();
      v27 = type metadata accessor for FileGeneratorFile;
LABEL_20:
      sub_1DD9FF568(v26, v27);
      (*(v42 + 8))(v17, v15);
    }
  }

  v38 = v21;
  v39 = v22;
  v40 = 0;
  v41 = 1;
  sub_1DDA15340();
  (*(v42 + 8))(v17, v15);
}

uint64_t sub_1DD9E8BF8(uint64_t a1)
{
  v2 = type metadata accessor for FileGeneratorFile(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageGeneratorImage(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImageURLItem(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MessageContent(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD9FF500(v1, v13, type metadata accessor for MessageContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1DD9FEFD0(v13, v10, type metadata accessor for ImageURLItem);
      MEMORY[0x1E12B8440](1);
      sub_1DDA134E0();
      sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1DDA14AD0();
      v15 = type metadata accessor for ImageURLItem;
      v16 = v10;
      return sub_1DD9FF568(v16, v15);
    }

    v17 = 0;
LABEL_9:
    MEMORY[0x1E12B8440](v17);
    sub_1DDA14BC0();
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1DD9FEFD0(v13, v7, type metadata accessor for ImageGeneratorImage);
    MEMORY[0x1E12B8440](2);
    sub_1DDA14BC0();
    MEMORY[0x1E12B8440](*(v7 + 2));
    MEMORY[0x1E12B8440](*(v7 + 3));
    sub_1DDA134E0();
    sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1DDA14AD0();
    v15 = type metadata accessor for ImageGeneratorImage;
    v16 = v7;
    return sub_1DD9FF568(v16, v15);
  }

  if (EnumCaseMultiPayload != 3)
  {
    v17 = 4;
    goto LABEL_9;
  }

  sub_1DD9FEFD0(v13, v4, type metadata accessor for FileGeneratorFile);
  MEMORY[0x1E12B8440](3);
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DDA14AD0();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8460](*&v4[*(v2 + 28)]);
  v15 = type metadata accessor for FileGeneratorFile;
  v16 = v4;
  return sub_1DD9FF568(v16, v15);
}

uint64_t sub_1DD9E9078@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1DDA134E0();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD840C0, &qword_1DDA1E2E0);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ImageURLItem(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA05CA4();
  sub_1DDA15620();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1DD9E4B98(&qword_1ECD83A30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1DDA152C0();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1DD9FEFD0(v11, v13, type metadata accessor for ImageURLItem);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DD9E9314()
{
  if (*v0)
  {
    return 0x697461746F6E6E61;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1DD9E9354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEB00000000736E6FLL)
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

uint64_t sub_1DD9E9430(uint64_t a1)
{
  v2 = sub_1DDA0A340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9E946C(uint64_t a1)
{
  v2 = sub_1DDA0A340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9E94A8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DDA05478(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1DD9E94D8()
{
  v1 = *(v0 + 16);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA15590();
  if (v1)
  {
    sub_1DD96C3F4(v3, v1);
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E9558(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1DDA14BC0();
  if (!v3)
  {
    return sub_1DDA15590();
  }

  sub_1DDA15590();

  return sub_1DD96C3F4(a1, v3);
}

uint64_t sub_1DD9E95D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA15590();
  if (v2)
  {
    sub_1DD96C3F4(v4, v2);
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E9678(uint64_t a1)
{
  v2 = sub_1DDA05CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9E96B4(uint64_t a1)
{
  v2 = sub_1DDA05CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9E9794(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83FC0, &qword_1DDA1E260);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v22 - v3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83FC8, &qword_1DDA1E268);
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v24 = &v22 - v4;
  v23 = type metadata accessor for TextAnnotation.URLCitation(0);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TextAnnotation.Type(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83FD0, &qword_1DDA1E270);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA04AB8();
  sub_1DDA15650();
  sub_1DD9FF500(v30, v9, type metadata accessor for TextAnnotation.Type);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v9;
    v14 = v9[1];
    v16 = v9[2];
    LOBYTE(v31) = 1;
    sub_1DDA04B0C();
    v17 = v26;
    sub_1DDA152F0();
    v31 = v15;
    v32 = v14;
    v33 = v16;
    sub_1DDA04A64();
    v18 = v29;
    sub_1DDA15380();
    (*(v28 + 8))(v17, v18);
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_1DD9FEFD0(v9, v6, type metadata accessor for TextAnnotation.URLCitation);
    LOBYTE(v31) = 0;
    sub_1DDA04B60();
    v20 = v24;
    sub_1DDA152F0();
    sub_1DD9E4B98(&qword_1ECD83F80, type metadata accessor for TextAnnotation.URLCitation, &unk_1DDA1D72C);
    v21 = v27;
    sub_1DDA15380();
    (*(v25 + 8))(v20, v21);
    sub_1DD9FF568(v6, type metadata accessor for TextAnnotation.URLCitation);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1DD9E9C1C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for TextAnnotation.URLCitation(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TextAnnotation.Type(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD9FF500(v2, v8, type metadata accessor for TextAnnotation.Type);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(v8 + 2);
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
    MEMORY[0x1E12B8440](v9);
  }

  else
  {
    sub_1DD9FEFD0(v8, v5, type metadata accessor for TextAnnotation.URLCitation);
    MEMORY[0x1E12B8440](0);
    sub_1DDA134E0();
    sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1DDA14AD0();
    sub_1DDA14BC0();
    MEMORY[0x1E12B8440](*&v5[*(v3 + 24)]);
    return sub_1DD9FF568(v5, type metadata accessor for TextAnnotation.URLCitation);
  }
}

uint64_t sub_1DD9E9E18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83F88, &qword_1DDA1E240);
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v50 = &v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83F90, &qword_1DDA1E248);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83F98, &qword_1DDA1E250);
  v52 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - v7;
  v9 = type metadata accessor for TextAnnotation.Type(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v41 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - v16;
  v18 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1DDA04AB8();
  v19 = v53;
  sub_1DDA15620();
  if (!v19)
  {
    v42 = v12;
    v43 = v17;
    v44 = v15;
    v20 = v49;
    v21 = v50;
    v53 = v9;
    v22 = v51;
    v23 = sub_1DDA152E0();
    v24 = v6;
    if (*(v23 + 16) == 1)
    {
      v25 = v52;
      if (*(v23 + 32))
      {
        LOBYTE(v54) = 1;
        sub_1DDA04B0C();
        v26 = v8;
        sub_1DDA15200();
        v27 = v22;
        sub_1DDA04A10();
        v28 = v45;
        sub_1DDA152C0();
        (*(v48 + 8))(v21, v28);
        (*(v25 + 8))(v26, v24);
        swift_unknownObjectRelease();
        v29 = v55;
        v30 = v42;
        *v42 = v54;
        *(v30 + 2) = v29;
        swift_storeEnumTagMultiPayload();
        v31 = v30;
      }

      else
      {
        LOBYTE(v54) = 0;
        sub_1DDA04B60();
        v35 = v20;
        v36 = v8;
        sub_1DDA15200();
        v27 = v22;
        type metadata accessor for TextAnnotation.URLCitation(0);
        v50 = v24;
        sub_1DD9E4B98(&qword_1ECD83F68, type metadata accessor for TextAnnotation.URLCitation, &unk_1DDA1D754);
        v38 = v44;
        v39 = v47;
        sub_1DDA152C0();
        (*(v46 + 8))(v35, v39);
        (*(v25 + 8))(v36, v50);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v31 = v38;
      }

      v40 = v43;
      sub_1DD9FEFD0(v31, v43, type metadata accessor for TextAnnotation.Type);
      sub_1DD9FEFD0(v40, v27, type metadata accessor for TextAnnotation.Type);
    }

    else
    {
      v32 = sub_1DDA150D0();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83FA8, &qword_1DDA1E258);
      *v34 = v53;
      sub_1DDA15210();
      sub_1DDA150B0();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
      (*(v52 + 8))(v8, v6);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_1DD9EA454()
{
  if (*v0)
  {
    return 0x61746943656C6966;
  }

  else
  {
    return 0x74617469436C7275;
  }
}

uint64_t sub_1DD9EA4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74617469436C7275 && a2 == 0xEB000000006E6F69;
  if (v6 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61746943656C6966 && a2 == 0xEC0000006E6F6974)
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

uint64_t sub_1DD9EA584(uint64_t a1)
{
  v2 = sub_1DDA04AB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9EA5C0(uint64_t a1)
{
  v2 = sub_1DDA04AB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9EA608(uint64_t a1)
{
  v2 = sub_1DDA04B0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9EA644(uint64_t a1)
{
  v2 = sub_1DDA04B0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9EA680(uint64_t a1)
{
  v2 = sub_1DDA04B60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9EA6BC(uint64_t a1)
{
  v2 = sub_1DDA04B60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9EA728(void *a1)
{
  v2 = v1;
  v24 = type metadata accessor for TextAnnotation.URLCitation(0);
  MEMORY[0x1EEE9AC00](v24);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TextAnnotation.Type(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v25 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83F70, &qword_1DDA1E238);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA049BC();
  sub_1DDA15650();
  v14 = v2;
  sub_1DD9FF500(v2, v9, type metadata accessor for TextAnnotation.Type);
  swift_getEnumCaseMultiPayload();
  sub_1DD9FF568(v9, type metadata accessor for TextAnnotation.Type);
  LOBYTE(v27) = 0;
  v15 = v26;
  sub_1DDA15340();
  if (v15)
  {
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v16 = v10;
    v26 = v11;
    v17 = v23;

    v18 = v25;
    sub_1DD9FF500(v14, v25, type metadata accessor for TextAnnotation.Type);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1DD9FEFD0(v18, v17, type metadata accessor for TextAnnotation.URLCitation);
      LOBYTE(v27) = 1;
      sub_1DD9E4B98(&qword_1ECD83F80, type metadata accessor for TextAnnotation.URLCitation, &unk_1DDA1D72C);
      sub_1DDA15380();
      sub_1DD9FF568(v17, type metadata accessor for TextAnnotation.URLCitation);
      return (*(v26 + 8))(v13, v16);
    }

    v19 = v18[1];
    v20 = v18[2];
    v27 = *v18;
    v28 = v19;
    v29 = v20;
    v30 = 2;
    sub_1DDA04A64();
    sub_1DDA15380();
    (*(v26 + 8))(v13, v16);
  }
}

uint64_t sub_1DD9EAB3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for TextAnnotation.URLCitation(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83F40, &qword_1DDA1E228);
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  v9 = type metadata accessor for TextAnnotation(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1DDA049BC();
  v13 = v44;
  sub_1DDA15620();
  if (!v13)
  {
    v44 = v3;
    v14 = v5;
    v41 = v11;
    v15 = v42;
    LOBYTE(v46) = 0;
    v16 = v6;
    v18 = sub_1DDA15280();
    v19 = v17;
    v20 = v18 == 0x617469635F6C7275 && v17 == 0xEC0000006E6F6974;
    if (v20 || (sub_1DDA15440() & 1) != 0)
    {

      LOBYTE(v46) = 1;
      sub_1DD9E4B98(&qword_1ECD83F68, type metadata accessor for TextAnnotation.URLCitation, &unk_1DDA1D754);
      sub_1DDA152C0();
      (*(v43 + 8))(v8, v6);
      v21 = v41;
      sub_1DD9FEFD0(v14, v41, type metadata accessor for TextAnnotation.URLCitation);
      v22 = v15;
LABEL_8:
      type metadata accessor for TextAnnotation.Type(0);
      swift_storeEnumTagMultiPayload();
      sub_1DD9FEFD0(v21, v22, type metadata accessor for TextAnnotation);
      return __swift_destroy_boxed_opaque_existential_1(v45);
    }

    if (v18 == 0x7469635F656C6966 && v19 == 0xED00006E6F697461)
    {

      v22 = v15;
      goto LABEL_16;
    }

    if (sub_1DDA15440())
    {
      v22 = v15;

LABEL_16:
      LOBYTE(v48) = 2;
      sub_1DDA04A10();
      sub_1DDA152C0();
      (*(v43 + 8))(v8, v16);
      v24 = v47;
      v21 = v41;
      *v41 = v46;
      *(v21 + 2) = v24;
      goto LABEL_8;
    }

    v42 = v18;
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v44 = v6;
    v25 = sub_1DDA14810();
    __swift_project_value_buffer(v25, qword_1ECDA20E0);

    v26 = sub_1DDA147F0();
    v27 = sub_1DDA14EE0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v19;
      v30 = v29;
      *&v46 = v29;
      *v28 = 136315394;
      v48 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83F50, &qword_1DDA1E230);
      v31 = sub_1DDA14B70();
      v33 = sub_1DD93FA54(v31, v32, &v46);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2080;
      v34 = v42;
      *(v28 + 14) = sub_1DD93FA54(v42, v41, &v46);
      _os_log_impl(&dword_1DD8F8000, v26, v27, "Failed to decode %s. Unknown type identifier: %s", v28, 0x16u);
      swift_arrayDestroy();
      v35 = v30;
      v19 = v41;
      MEMORY[0x1E12B8CE0](v35, -1, -1);
      MEMORY[0x1E12B8CE0](v28, -1, -1);
    }

    else
    {

      v34 = v42;
    }

    v36 = v43;
    v49 = 0;
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DDA15070();

    *&v46 = 0xD000000000000011;
    *(&v46 + 1) = 0x80000001DDA29B20;
    v48 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83F50, &qword_1DDA1E230);
    v37 = sub_1DDA14B70();
    MEMORY[0x1E12B7AB0](v37);

    MEMORY[0x1E12B7AB0](0xD00000000000001BLL, 0x80000001DDA29B40);
    MEMORY[0x1E12B7AB0](v34, v19);

    sub_1DDA150D0();
    swift_allocError();
    sub_1DDA05B54(&qword_1ECD83F58, &qword_1ECD83F40, &qword_1DDA1E228);
    v38 = v44;
    sub_1DDA150A0();

    swift_willThrow();
    (*(v36 + 8))(v8, v38);
  }

  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t sub_1DD9EB20C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84000, &qword_1DDA1E290);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA05A04();
  sub_1DDA15650();
  v8[15] = 0;
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83A20, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1DDA15380();
  if (!v1)
  {
    type metadata accessor for TextAnnotation.URLCitation(0);
    v8[14] = 1;
    sub_1DDA15340();
    v8[13] = 2;
    sub_1DDA15370();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DD9EB3F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1DDA134E0();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83FF0, &qword_1DDA1E288);
  v25 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v21 - v6;
  v8 = type metadata accessor for TextAnnotation.URLCitation(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA05A04();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v25;
  v11 = v26;
  v22 = v8;
  v23 = v10;
  v31 = 0;
  sub_1DD9E4B98(&qword_1ECD83A30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v14 = v27;
  v13 = v28;
  sub_1DDA152C0();
  (*(v11 + 32))(v23, v14, v4);
  v30 = 1;
  v15 = sub_1DDA15280();
  v16 = &v23[*(v22 + 20)];
  *v16 = v15;
  v16[1] = v17;
  v29 = 2;
  v18 = sub_1DDA152B0();
  (*(v12 + 8))(v7, v13);
  v19 = v23;
  *&v23[*(v22 + 24)] = v18;
  sub_1DD9FF500(v19, v24, type metadata accessor for TextAnnotation.URLCitation);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DD9FF568(v19, type metadata accessor for TextAnnotation.URLCitation);
}

uint64_t sub_1DD9EB7C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83FE8, &qword_1DDA1E280);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA059B0();
  sub_1DDA15650();
  v13 = 0;
  sub_1DDA15340();
  if (!v4)
  {
    v12 = 1;
    sub_1DDA15370();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DD9EB95C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x617469635F6C7275;
  v4 = 0xEC0000006E6F6974;
  if (v2 != 1)
  {
    v3 = 0x7469635F656C6966;
    v4 = 0xED00006E6F697461;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701869940;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x617469635F6C7275;
  v8 = 0xEC0000006E6F6974;
  if (*a2 != 1)
  {
    v7 = 0x7469635F656C6966;
    v8 = 0xED00006E6F697461;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v8;
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

uint64_t sub_1DD9EBA80()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9EBB30(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9EBBCC(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9EBC78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA0567C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9EBCA8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEC0000006E6F6974;
  v5 = 0x617469635F6C7275;
  if (v2 != 1)
  {
    v5 = 0x7469635F656C6966;
    v4 = 0xED00006E6F697461;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9EBD14()
{
  v1 = 0x617469635F6C7275;
  if (*v0 != 1)
  {
    v1 = 0x7469635F656C6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

unint64_t sub_1DD9EBD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA0567C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9EBDA4(uint64_t a1)
{
  v2 = sub_1DDA049BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9EBDE0(uint64_t a1)
{
  v2 = sub_1DDA049BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9EBE1C()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x7865646E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1DD9EBE68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DDA056C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DD9EBE90(uint64_t a1)
{
  v2 = sub_1DDA05A04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9EBECC(uint64_t a1)
{
  v2 = sub_1DDA05A04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9EBF38(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DDA14AD0();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v1 + *(a1 + 24)));
  return sub_1DDA155B0();
}

uint64_t sub_1DD9EBFF0(uint64_t a1, uint64_t a2)
{
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DDA14AD0();
  sub_1DDA14BC0();
  return MEMORY[0x1E12B8440](*(v2 + *(a2 + 24)));
}

uint64_t sub_1DD9EC090(uint64_t a1, uint64_t a2)
{
  sub_1DDA15570();
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DDA14AD0();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v2 + *(a2 + 24)));
  return sub_1DDA155B0();
}

BOOL sub_1DD9EC144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1DDA13490() & 1) != 0 && ((v6 = *(a3 + 20), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), v10 || (sub_1DDA15440()))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD9EC1C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7865646E69;
  }

  else
  {
    v3 = 0x64695F656C6966;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7865646E69;
  }

  else
  {
    v5 = 0x64695F656C6966;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
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

uint64_t sub_1DD9EC268()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9EC2E8(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9EC354(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

void sub_1DD9EC3DC(uint64_t *a1@<X8>)
{
  v2 = 0x64695F656C6966;
  if (*v1)
  {
    v2 = 0x7865646E69;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DD9EC418()
{
  if (*v0)
  {
    return 0x7865646E69;
  }

  else
  {
    return 0x64695F656C6966;
  }
}

uint64_t sub_1DD9EC45C(uint64_t a1)
{
  v2 = sub_1DDA059B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9EC498(uint64_t a1)
{
  v2 = sub_1DDA059B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9EC4D4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DDA057D8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1DD9EC524()
{
  v1 = *(v0 + 16);
  sub_1DDA15570();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9EC588(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1DDA14BC0();
  return MEMORY[0x1E12B8440](v2);
}

uint64_t sub_1DD9EC5C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1DDA15570();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](v2);
  return sub_1DDA155B0();
}

BOOL sub_1DD9EC620(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1DDA15440();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1DD9EC6AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84D60, &qword_1DDA24C78);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA11798();
  sub_1DDA15650();
  LOBYTE(v14) = 0;
  sub_1DDA15340();
  if (!v5)
  {
    v14 = v12;
    v15 = v13;
    v16 = 1;
    sub_1DDA117EC();
    sub_1DDA15380();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1DD9EC83C()
{
  if (*v0)
  {
    return 0x6E6F6974636E7566;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1DD9EC870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000)
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

uint64_t sub_1DD9EC94C(uint64_t a1)
{
  v2 = sub_1DDA11798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9EC988(uint64_t a1)
{
  v2 = sub_1DDA11798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9EC9C4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DDA0A448(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1DD9ECA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DDA15440();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DD9ECAAC(uint64_t a1)
{
  v2 = sub_1DDA1275C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9ECAE8(uint64_t a1)
{
  v2 = sub_1DDA1275C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9ECBAC(void *a1, uint64_t a2, unint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA15640();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  if (a3 > 2)
  {
    sub_1DDA0EF00();
    sub_1DDA154A0();
  }

  else
  {
    sub_1DDA15470();
  }

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1DD9ECD14()
{
  v1 = *(v0 + 8);
  sub_1DDA15570();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1E12B8440](3);
        sub_1DDA14BC0();
        return sub_1DDA155B0();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1E12B8440](v2);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9ECDA4(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 0:
      v3 = 0;
      return MEMORY[0x1E12B8440](v3);
    case 1:
      v3 = 1;
      return MEMORY[0x1E12B8440](v3);
    case 2:
      v3 = 2;
      return MEMORY[0x1E12B8440](v3);
  }

  MEMORY[0x1E12B8440](3);

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9ECE3C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1DDA15570();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x1E12B8440](3);
        sub_1DDA14BC0();
        return sub_1DDA155B0();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1E12B8440](v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9ECEC8(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 0:
      return !v4;
    case 1:
      return v4 == 1;
    case 2:
      return v4 == 2;
  }

  if (v4 < 3)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  return sub_1DDA15440();
}

uint64_t sub_1DD9ECF4C()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9ED020(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9ED0E0(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9ED1B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA0A618(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9ED1E0(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701869940;
  v4 = 0xEF726F746172656ELL;
  v5 = 0x65675F6567616D69;
  if (*v1 != 2)
  {
    v5 = 0x6E65675F656C6966;
    v4 = 0xEE00726F74617265;
  }

  if (*v1)
  {
    v3 = 0x6E6F6974636E7566;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD9ED270()
{
  v1 = 1701869940;
  v2 = 0x65675F6567616D69;
  if (*v0 != 2)
  {
    v2 = 0x6E65675F656C6966;
  }

  if (*v0)
  {
    v1 = 0x6E6F6974636E7566;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DD9ED2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA0A618(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9ED324(uint64_t a1)
{
  v2 = sub_1DDA0E9BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9ED360(uint64_t a1)
{
  v2 = sub_1DDA0E9BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9ED39C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84948, &qword_1DDA22838);
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0E9BC();
  sub_1DDA15650();
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[4];
  v12 = *(v2 + 40);
  if (!(v12 >> 6))
  {
    v18 = v7;
    LOBYTE(v21) = 0;
    v15 = v19;
    sub_1DDA15340();
    if (!v15)
    {
      v21 = v18;
      v22 = v8;
      v23 = v9;
      v24 = v10;
      v25 = v11;
      v26 = v12 & 0x3F;
      v27 = 1;
      sub_1DDA0EA10();
      sub_1DDA15380();
    }

    return (*(v20 + 8))(v6, v4);
  }

  if (v12 >> 6 == 1)
  {
    LOBYTE(v21) = 0;
    v13 = v19;
    sub_1DDA15340();
    if (!v13)
    {
      v21 = v7;
      v22 = v8;
      v23 = v9;
      v24 = v10;
      v25 = v11;
      v27 = 2;
      sub_1DDA0EA64();
      sub_1DDA15380();
    }

    return (*(v20 + 8))(v6, v4);
  }

  if (v9 | v8 | v7 | v10 | v11 || v12 != 128)
  {
    v16 = v9 | v8 | v10 | v11;
    if (v12 == 128 && v7 == 1 && !v16)
    {
      LOBYTE(v21) = 0;
    }

    else if (v12 == 128 && v7 == 2 && !v16)
    {
      LOBYTE(v21) = 0;
    }

    else
    {
      LOBYTE(v21) = 0;
    }
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  sub_1DDA15340();
  return (*(v20 + 8))(v6, v4);
}

uint64_t sub_1DD9ED710(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 40);
  if (v8 >> 6)
  {
    if (v8 >> 6 == 1)
    {
      MEMORY[0x1E12B8440](4);
      return sub_1DD9EEB6C(a1);
    }

    else
    {
      if (v6 | v4 | v3 | v5 | v7 || v8 != 128)
      {
        v11 = v6 | v4 | v5 | v7;
        if (v8 == 128 && v3 == 1 && v11 == 0)
        {
          v10 = 1;
        }

        else if (v8 == 128 && v3 == 2 && !v11)
        {
          v10 = 2;
        }

        else
        {
          v10 = 5;
        }
      }

      else
      {
        v10 = 0;
      }

      return MEMORY[0x1E12B8440](v10);
    }
  }

  else
  {
    MEMORY[0x1E12B8440](3);
    sub_1DDA14BC0();
    sub_1DDA14BC0();
    sub_1DD965608(a1);
    return sub_1DDA15590();
  }
}

uint64_t sub_1DD9ED864()
{
  sub_1DDA15570();
  sub_1DD9ED710(v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9ED8A8(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DD9ED710(v2);
  return sub_1DDA155B0();
}

BOOL sub_1DD9ED8E4(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1DD9FA58C(&v5, &v7);
}

uint64_t sub_1DD9ED930(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84D10, &qword_1DDA24C58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA115A0();
  sub_1DDA15650();
  v13 = 0;
  sub_1DDA15340();
  if (!v2)
  {
    v12 = 1;
    sub_1DDA15340();
    v11 = *(v3 + 32);
    v10[15] = 2;
    type metadata accessor for JSONSchema();
    sub_1DD9E4B98(&qword_1ECD83450, type metadata accessor for JSONSchema, &unk_1DDA1A530);
    sub_1DDA15380();
    v10[14] = 3;
    sub_1DDA15350();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DD9EDB68()
{
  v1 = 1701667182;
  v2 = 0x6574656D61726170;
  if (*v0 != 2)
  {
    v2 = 0x746369727473;
  }

  if (*v0)
  {
    v1 = 0x7470697263736564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD9EDBE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DDA0A664(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DD9EDC0C(uint64_t a1)
{
  v2 = sub_1DDA115A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9EDC48(uint64_t a1)
{
  v2 = sub_1DDA115A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD9EDC84@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DDA0A7D0(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1DD9EDCE0()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DD965608(v1);
  sub_1DDA15590();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9EDD78(uint64_t a1)
{
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DD965608(a1);
  return sub_1DDA15590();
}

uint64_t sub_1DD9EDDE4(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DD965608(v2);
  sub_1DDA15590();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9EDE78(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1DDA15440() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if (sub_1DD96D458(v3, v8))
  {
    return v5 ^ v9 ^ 1u;
  }

  return 0;
}

uint64_t sub_1DD9EDF4C(uint64_t a1)
{
  v2 = sub_1DDA11894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9EDF88(uint64_t a1)
{
  v2 = sub_1DDA11894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9EE014()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9EE0E8(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9EE1A8(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9EE278@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA0AAD4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9EE2A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6465727265666E69;
  v5 = 0xE600000000000000;
  v6 = 0x6D756964656DLL;
  v7 = 0xE500000000000000;
  v8 = 0x656772616CLL;
  if (v2 != 3)
  {
    v8 = 0x656772616C78;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C6C616D73;
    v3 = 0xE500000000000000;
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

uint64_t sub_1DD9EE394()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9EE444(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9EE4E0(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9EE58C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA0AB20(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9EE5BC(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6465727265666E69;
  v4 = 1819042164;
  if (*v1 != 2)
  {
    v4 = 1701079415;
  }

  if (*v1)
  {
    v3 = 0x657261757173;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_1DD9EE684()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9EE734(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9EE7D0(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9EE87C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA0AB6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9EE8AC(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7827308;
  v4 = 0xE400000000000000;
  v5 = 1751607656;
  if (*v1 != 2)
  {
    v5 = 0x6465727265666E69;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x6D756964656DLL;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD9EE968(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84D20, &qword_1DDA24C60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA115F4();
  sub_1DDA15650();
  LOBYTE(v10) = *(v3 + 1);
  v12 = 0;
  sub_1DDA11648();
  sub_1DDA15330();
  if (!v2)
  {
    v10 = *(v3 + 8);
    v11 = *(v3 + 16);
    v12 = 1;
    sub_1DDA1169C();
    sub_1DDA15330();
    LOBYTE(v10) = 2;
    sub_1DDA15300();
    LOBYTE(v10) = *(v3 + 2);
    v12 = 3;
    sub_1DDA116F0();
    sub_1DDA15330();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DD9EEB6C(uint64_t a1)
{
  v2 = *v1;
  sub_1DDA15590();
  if (v2 != 5)
  {
    sub_1DDA14BC0();
  }

  if (v1[1] == 4)
  {
    sub_1DDA15590();
  }

  else
  {
    sub_1DDA15590();
    sub_1DDA14BC0();
  }

  v3 = v1[2];
  if (v3 == 4)
  {
    sub_1DDA15590();
    if ((v1[17] & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1DDA15590();
    sub_1DDA14BC0();

    if ((v1[17] & 1) == 0)
    {
LABEL_8:
      v4 = *(v1 + 1);
      v5 = v1[16];
      sub_1DDA15590();
      if (v5)
      {
        v6 = 0;
      }

      else
      {
        MEMORY[0x1E12B8440](1);
        v6 = v4;
      }

      MEMORY[0x1E12B8440](v6);
      if (!*(v1 + 4))
      {
        return sub_1DDA15590();
      }

      goto LABEL_12;
    }
  }

  sub_1DDA15590();
  if (!*(v1 + 4))
  {
    return sub_1DDA15590();
  }

LABEL_12:
  sub_1DDA15590();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9EEDE8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84770, &qword_1DDA22788);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0BF30();
  sub_1DDA15650();
  v8[15] = 0;
  sub_1DDA15340();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1DDA15340();
  v8[13] = 2;
  sub_1DDA15340();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DD9EEF88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1DDA134E0();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83EA8, &qword_1DDA1E1E0);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ImageGeneratorCall.Image(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9FFCD4();
  sub_1DDA15620();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1DD9E4B98(&qword_1ECD83A30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1DDA152C0();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1DD9FEFD0(v11, v13, type metadata accessor for ImageGeneratorCall.Image);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DD9EF224(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84738, &qword_1DDA22770);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0BE28();
  sub_1DDA15650();
  v13 = 0;
  sub_1DDA15340();
  if (!v2)
  {
    v12 = 1;
    sub_1DDA15340();
    v11 = *(v3 + 32);
    v10[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD846E0, &qword_1DDA22750);
    sub_1DDA0C134();
    sub_1DDA15380();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DD9EF418(uint64_t a1)
{
  v2 = type metadata accessor for ImageGeneratorCall.Image(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  v6 = *(v1 + 32);
  v7 = *(v6 + 16);
  result = MEMORY[0x1E12B8440](v7);
  if (v7)
  {
    v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1DD9FF500(v9, v5, type metadata accessor for ImageGeneratorCall.Image);
      sub_1DDA134E0();
      sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1DDA14AD0();
      result = sub_1DD9FF568(v5, type metadata accessor for ImageGeneratorCall.Image);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1DD9EF5A8()
{
  v1 = type metadata accessor for ImageGeneratorCall.Image(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 32);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  v6 = *(v5 + 16);
  MEMORY[0x1E12B8440](v6);
  if (v6)
  {
    v7 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v8 = *(v2 + 72);
    do
    {
      sub_1DD9FF500(v7, v4, type metadata accessor for ImageGeneratorCall.Image);
      sub_1DDA134E0();
      sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1DDA14AD0();
      sub_1DD9FF568(v4, type metadata accessor for ImageGeneratorCall.Image);
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9EF75C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1DDA134E0();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83E78, &qword_1DDA1E1C8);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for FileGeneratorCall.File(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9FFC2C();
  sub_1DDA15620();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1DD9E4B98(&qword_1ECD83A30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1DDA152C0();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1DD9FEFD0(v11, v13, type metadata accessor for FileGeneratorCall.File);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DD9EF9F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84720, &qword_1DDA22768);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0BD20();
  sub_1DDA15650();
  v13 = 0;
  sub_1DDA15340();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD846C0, &qword_1DDA22740);
    sub_1DDA0C080();
    sub_1DDA15380();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DD9EFB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FileGeneratorCall.File(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DDA14BC0();
  v9 = *(a4 + 16);
  result = MEMORY[0x1E12B8440](v9);
  if (v9)
  {
    v11 = a4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = *(v6 + 72);
    do
    {
      sub_1DD9FF500(v11, v8, type metadata accessor for FileGeneratorCall.File);
      sub_1DDA134E0();
      sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1DDA14AD0();
      result = sub_1DD9FF568(v8, type metadata accessor for FileGeneratorCall.File);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_1DD9EFD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for FileGeneratorCall.File(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DDA15570();
  sub_1DDA14BC0();
  v8 = *(a3 + 16);
  MEMORY[0x1E12B8440](v8);
  if (v8)
  {
    v9 = a3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v5 + 72);
    do
    {
      sub_1DD9FF500(v9, v7, type metadata accessor for FileGeneratorCall.File);
      sub_1DDA134E0();
      sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1DDA14AD0();
      sub_1DD9FF568(v7, type metadata accessor for FileGeneratorCall.File);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9EFED0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD840A0, &qword_1DDA1E2C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA05BFC();
  sub_1DDA15650();
  v8[15] = 0;
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83A20, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1DDA15380();
  if (!v1)
  {
    type metadata accessor for FileGeneratorFile(0);
    v8[14] = 1;
    sub_1DDA15340();
    v8[13] = 2;
    sub_1DDA15340();
    v8[12] = 3;
    sub_1DDA15390();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DD9F00EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_1DDA134E0();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84090, &qword_1DDA1E2C0);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v20 - v6;
  v8 = type metadata accessor for FileGeneratorFile(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA05BFC();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v22;
  v29 = 0;
  sub_1DD9E4B98(&qword_1ECD83A30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1DDA152C0();
  (*(v11 + 32))(v10, v24, v4);
  v28 = 1;
  v12 = sub_1DDA15280();
  v13 = &v10[v8[5]];
  *v13 = v12;
  v13[1] = v14;
  v27 = 2;
  v15 = sub_1DDA15280();
  v16 = &v10[v8[6]];
  *v16 = v15;
  v16[1] = v17;
  v26 = 3;
  v18 = sub_1DDA152D0();
  (*(v23 + 8))(v7, v25);
  *&v10[v8[7]] = v18;
  sub_1DD9FF500(v10, v21, type metadata accessor for FileGeneratorFile);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DD9FF568(v10, type metadata accessor for FileGeneratorFile);
}

uint64_t sub_1DD9F0528(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD840B8, &qword_1DDA1E2D8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA05C50();
  sub_1DDA15650();
  v8[15] = 0;
  sub_1DDA15340();
  if (!v1)
  {
    v8[14] = 1;
    sub_1DDA15370();
    v8[13] = 2;
    sub_1DDA15370();
    type metadata accessor for ImageGeneratorImage(0);
    v8[12] = 3;
    sub_1DDA134E0();
    sub_1DD9E4B98(&qword_1ECD83A20, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1DDA15380();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DD9F0764@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1DDA134E0();
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD840A8, &qword_1DDA1E2D0);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ImageGeneratorImage(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA05C50();
  v23 = v8;
  v12 = v24;
  sub_1DDA15620();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v14 = v5;
  v15 = v21;
  v16 = v22;
  v28 = 0;
  *v11 = sub_1DDA15280();
  v11[1] = v17;
  v24 = v17;
  v27 = 1;
  v11[2] = sub_1DDA152B0();
  v26 = 2;
  v11[3] = sub_1DDA152B0();
  v25 = 3;
  sub_1DD9E4B98(&qword_1ECD83A30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1DDA152C0();
  (*(v15 + 8))(v23, v16);
  (*(v19 + 32))(v11 + *(v9 + 28), v14, v3);
  sub_1DD9FF500(v11, v20, type metadata accessor for ImageGeneratorImage);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_1DD9FF568(v11, type metadata accessor for ImageGeneratorImage);
}

uint64_t sub_1DD9F0B00(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84840, &qword_1DDA227D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0C908();
  sub_1DDA15650();
  v8 = *(v2 + 16);
  v10[0] = *v2;
  v10[1] = v8;
  v10[2] = *(v2 + 32);
  v11 = *(v2 + 48);
  sub_1DDA0C95C();
  sub_1DDA15380();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DD9F0C5C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  sub_1DDA15570();
  if (v2)
  {
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
    sub_1DDA14BC0();
  }

  else
  {
    MEMORY[0x1E12B8440](0);
    sub_1DDA14BC0();
    if (!v1)
    {
      sub_1DDA15590();
      return sub_1DDA155B0();
    }

    sub_1DDA15590();
  }

  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F0D44()
{
  if (*v0)
  {
    return 0x746E756F63;
  }

  else
  {
    return 0x7265666E69;
  }
}

uint64_t sub_1DD9F0D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265666E69 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
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

uint64_t sub_1DD9F0E44(uint64_t a1)
{
  v2 = sub_1DDA127B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F0E80(uint64_t a1)
{
  v2 = sub_1DDA127B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F0EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DDA15440();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DD9F0F3C(uint64_t a1)
{
  v2 = sub_1DDA12804();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F0F78(uint64_t a1)
{
  v2 = sub_1DDA12804();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F0FB4(uint64_t a1)
{
  v2 = sub_1DDA12858();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F0FF0(uint64_t a1)
{
  v2 = sub_1DDA12858();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DD9F102C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1DDA0ABB8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_1DD9F1060(void *a1)
{
  v2 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA15640();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  if (v2 == 1)
  {
    sub_1DDA15470();
  }

  else
  {
    sub_1DDA15490();
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1DD9F1124()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1DDA15570();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x1E12B8440](1);
    v3 = v1;
  }

  MEMORY[0x1E12B8440](v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F1184()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x1E12B8440](1);
  }

  return MEMORY[0x1E12B8440](v1);
}

uint64_t sub_1DD9F11CC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1DDA15570();
  if (v3)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x1E12B8440](1);
  }

  MEMORY[0x1E12B8440](v2);
  return sub_1DDA155B0();
}

BOOL sub_1DD9F122C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1DD9F1274()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F133C(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9F13F0(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9F14B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA0B058(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9F14E4(uint64_t *a1@<X8>)
{
  v2 = 0xEC0000006F697461;
  v3 = 0x725F746365707361;
  v4 = 0xE500000000000000;
  v5 = 0x6C65646F6DLL;
  if (*v1 != 2)
  {
    v5 = 0x6C6961746564;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x67616D695F6D756ELL;
    v2 = 0xEA00000000007365;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD9F1568()
{
  v1 = 0x725F746365707361;
  v2 = 0x6C65646F6DLL;
  if (*v0 != 2)
  {
    v2 = 0x6C6961746564;
  }

  if (*v0)
  {
    v1 = 0x67616D695F6D756ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DD9F15E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA0B058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9F1610(uint64_t a1)
{
  v2 = sub_1DDA115F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F164C(uint64_t a1)
{
  v2 = sub_1DDA115F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F16A0()
{
  sub_1DDA15570();
  sub_1DD9EEB6C(v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F16E4(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DD9EEB6C(v2);
  return sub_1DDA155B0();
}

BOOL sub_1DD9F1720(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1DD9FA314(v5, v7);
}

uint64_t sub_1DD9F176C()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x746E656D75677261;
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

uint64_t sub_1DD9F17B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DDA0B0A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DD9F17E0(uint64_t a1)
{
  v2 = sub_1DDA0BF30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F181C(uint64_t a1)
{
  v2 = sub_1DDA0BF30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD9F1858@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DDA0B1BC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1DD9F18B4()
{
  if (*v0)
  {
    return 0x74757074756FLL;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1DD9F18E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000)
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

uint64_t sub_1DD9F19B0(uint64_t a1)
{
  v2 = sub_1DDA0E968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F19EC(uint64_t a1)
{
  v2 = sub_1DDA0E968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F1AC4(uint64_t a1)
{
  v2 = sub_1DDA0C23C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F1B00(uint64_t a1)
{
  v2 = sub_1DDA0C23C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F1B80(uint64_t a1)
{
  v2 = sub_1DDA0F01C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F1BBC(uint64_t a1)
{
  v2 = sub_1DDA0F01C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F1C3C(uint64_t a1)
{
  v2 = sub_1DDA0C1E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F1C78(uint64_t a1)
{
  v2 = sub_1DDA0C1E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F1CF8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1DDA15650();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1DD9F1E18(uint64_t a1)
{
  v2 = sub_1DD9FFCD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F1E54(uint64_t a1)
{
  v2 = sub_1DD9FFCD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F1F04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DDA0B5F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DD9F1F2C(uint64_t a1)
{
  v2 = sub_1DDA0BE28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F1F68(uint64_t a1)
{
  v2 = sub_1DDA0BE28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD9F1FA4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DDA0B704(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1DD9F200C(uint64_t a1)
{
  v2 = type metadata accessor for ImageGeneratorCall.Image(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 32);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1DD9FF500(v8, v5, type metadata accessor for ImageGeneratorCall.Image);
      sub_1DDA134E0();
      sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1DDA14AD0();
      sub_1DD9FF568(v5, type metadata accessor for ImageGeneratorCall.Image);
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F21CC(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  return sub_1DD966610(v3, v7);
}

uint64_t sub_1DD9F2288(uint64_t a1)
{
  v2 = sub_1DD9FFC2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F22C4(uint64_t a1)
{
  v2 = sub_1DD9FFC2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F235C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1DDA15650();
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83A20, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1DDA15380();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1DD9F24DC()
{
  sub_1DDA15570();
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F2564(uint64_t a1)
{
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);

  return sub_1DDA14AD0();
}

uint64_t sub_1DD9F25E8(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F266C()
{
  if (*v0)
  {
    return 0x73656C6966;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_1DD9F26A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v6 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656C6966 && a2 == 0xE500000000000000)
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

uint64_t sub_1DD9F2774(uint64_t a1)
{
  v2 = sub_1DDA0BD20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F27B0(uint64_t a1)
{
  v2 = sub_1DDA0BD20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F27EC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DDA0B978(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1DD9F2854(uint64_t a1)
{
  v2 = type metadata accessor for FileGeneratorCall.File(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  sub_1DDA15570();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1DD9FF500(v8, v5, type metadata accessor for FileGeneratorCall.File);
      sub_1DDA134E0();
      sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1DDA14AD0();
      sub_1DD9FF568(v5, type metadata accessor for FileGeneratorCall.File);
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F29F8(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  return sub_1DD966804(v2, v3);
}

uint64_t sub_1DD9F2A78()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F2B34(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9F2BDC(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9F2C94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA0BB7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9F2CC4(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7107189;
  v4 = 0x7079745F656D696DLL;
  v5 = 0xE900000000000065;
  if (*v1 != 2)
  {
    v4 = 1702521203;
    v5 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x6D616E5F656C6966;
    v2 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD9F2D3C()
{
  v1 = 7107189;
  v2 = 0x7079745F656D696DLL;
  if (*v0 != 2)
  {
    v2 = 1702521203;
  }

  if (*v0)
  {
    v1 = 0x6D616E5F656C6966;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DD9F2DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA0BB7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9F2DD8(uint64_t a1)
{
  v2 = sub_1DDA05BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F2E14(uint64_t a1)
{
  v2 = sub_1DDA05BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F2E80(int *a1)
{
  sub_1DDA15570();
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DDA14AD0();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8460](*(v1 + a1[7]));
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F2F4C(uint64_t a1, int *a2)
{
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DDA14AD0();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  return MEMORY[0x1E12B8460](*(v2 + a2[7]));
}

uint64_t sub_1DD9F3000(uint64_t a1, int *a2)
{
  sub_1DDA15570();
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DDA14AD0();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8460](*(v2 + a2[7]));
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F30CC()
{
  v1 = 0x74706D6F7270;
  v2 = 0x6874646977;
  if (*v0 != 2)
  {
    v2 = 7107189;
  }

  if (*v0)
  {
    v1 = 0x746867696568;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD9F3134@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DDA0BBC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DD9F315C(uint64_t a1)
{
  v2 = sub_1DDA05C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F3198(uint64_t a1)
{
  v2 = sub_1DDA05C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F3204()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v0 + 16));
  MEMORY[0x1E12B8440](*(v0 + 24));
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F32C8(uint64_t a1)
{
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v1 + 16));
  MEMORY[0x1E12B8440](*(v1 + 24));
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  return sub_1DDA14AD0();
}

uint64_t sub_1DD9F336C(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v1 + 16));
  MEMORY[0x1E12B8440](*(v1 + 24));
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

unint64_t sub_1DD9F3554()
{
  result = qword_1ECD83CD8;
  if (!qword_1ECD83CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83CD8);
  }

  return result;
}

unint64_t sub_1DD9F35AC()
{
  result = qword_1ECD83CE0;
  if (!qword_1ECD83CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83CE0);
  }

  return result;
}

unint64_t sub_1DD9F364C()
{
  result = qword_1ECD83CF0;
  if (!qword_1ECD83CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83CF0);
  }

  return result;
}

unint64_t sub_1DD9F377C()
{
  result = qword_1ECD83D10;
  if (!qword_1ECD83D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83D10);
  }

  return result;
}

unint64_t sub_1DD9F37D4()
{
  result = qword_1ECD83D18;
  if (!qword_1ECD83D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83D18);
  }

  return result;
}

unint64_t sub_1DD9F382C()
{
  result = qword_1ECD83D20;
  if (!qword_1ECD83D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83D20);
  }

  return result;
}

unint64_t sub_1DD9F3884()
{
  result = qword_1ECD83D28;
  if (!qword_1ECD83D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83D28);
  }

  return result;
}

unint64_t sub_1DD9F38DC()
{
  result = qword_1ECD83D30;
  if (!qword_1ECD83D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83D30);
  }

  return result;
}

unint64_t sub_1DD9F3934()
{
  result = qword_1ECD83D38;
  if (!qword_1ECD83D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83D38);
  }

  return result;
}

unint64_t sub_1DD9F3B38()
{
  result = qword_1ECD83D78;
  if (!qword_1ECD83D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83D78);
  }

  return result;
}

uint64_t sub_1DD9F3BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DDA15440();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DD9F3C24(uint64_t a1)
{
  v2 = sub_1DDA0C908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F3C60(uint64_t a1)
{
  v2 = sub_1DDA0C908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL sub_1DD9F3CB8(uint64_t a1, uint64_t a2)
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
  return sub_1DD9F9E10(v5, v7);
}

uint64_t sub_1DD9F3D14(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84CF0, &qword_1DDA24C48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA113A8();
  sub_1DDA15650();
  LOBYTE(v12) = 0;
  sub_1DDA15340();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v12 = *(v3 + 16);
    v13 = v9;
    v11[15] = 1;
    sub_1DDA114F8();
    sub_1DDA15380();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DD9F3E90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void), uint64_t a9)
{
  v20[2] = a3;
  v20[0] = a4;
  v20[1] = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (a8)(v15, v16, v17);
  sub_1DDA15650();
  v22 = 0;
  v18 = v20[3];
  sub_1DDA15340();
  if (!v18)
  {
    v21 = 1;
    sub_1DDA15340();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1DD9F4020()
{
  if (*v0)
  {
    return 1701603686;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1DD9F4044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701603686 && a2 == 0xE400000000000000)
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

uint64_t sub_1DD9F4120(uint64_t a1)
{
  v2 = sub_1DDA113A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F415C(uint64_t a1)
{
  v2 = sub_1DDA113A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD9F4198@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DDA0CA58(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

BOOL sub_1DD9F41F4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return (v2 == v6 && v4 == v7 || (sub_1DDA15440() & 1) != 0) && (v3 == v8 && v5 == v9 || (sub_1DDA15440() & 1) != 0);
  }

  v10 = sub_1DDA15440();
  result = 0;
  if (v10)
  {
    return (v2 == v6 && v4 == v7 || (sub_1DDA15440() & 1) != 0) && (v3 == v8 && v5 == v9 || (sub_1DDA15440() & 1) != 0);
  }

  return result;
}

uint64_t sub_1DD9F42D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7079745F656D696DLL;
  }

  else
  {
    v3 = 1701667182;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x7079745F656D696DLL;
  }

  else
  {
    v5 = 1701667182;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
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
    v8 = sub_1DDA15440();
  }

  return v8 & 1;
}

uint64_t sub_1DD9F4378()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F43F8(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9F4464(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

void sub_1DD9F44EC(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (*v1)
  {
    v2 = 0x7079745F656D696DLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DD9F4528()
{
  if (*v0)
  {
    return 0x7079745F656D696DLL;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1DD9F456C@<X0>(char *a4@<X8>)
{
  v5 = sub_1DDA151E0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_1DD9F45CC(uint64_t a1)
{
  v2 = sub_1DDA1260C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F4608(uint64_t a1)
{
  v2 = sub_1DDA1260C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F4688@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  result = sub_1DDA0B408(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
    a6[2] = v10;
    a6[3] = v11;
  }

  return result;
}

uint64_t sub_1DD9F4720(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84D00, &qword_1DDA24C50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA11450();
  sub_1DDA15650();
  LOBYTE(v14) = 0;
  sub_1DDA15340();
  if (!v5)
  {
    v14 = v12;
    v15 = v13;
    v16 = 1;
    sub_1DDA1154C();
    sub_1DDA15330();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1DD9F48B0()
{
  if (*v0)
  {
    return 0x65746973626577;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1DD9F48E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746973626577 && a2 == 0xE700000000000000)
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

uint64_t sub_1DD9F49C0(uint64_t a1)
{
  v2 = sub_1DDA11450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F49FC(uint64_t a1)
{
  v2 = sub_1DDA11450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F4A38@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DDA0CC3C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1DD9F4A88()
{
  v1 = *(v0 + 24);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA15590();
  if (v1)
  {
    sub_1DDA14BC0();
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F4B14(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1DDA14BC0();
  if (!v2)
  {
    return sub_1DDA15590();
  }

  sub_1DDA15590();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9F4B90(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA15590();
  if (v2)
  {
    sub_1DDA14BC0();
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F4C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DDA15440();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DD9F4CBC(uint64_t a1)
{
  v2 = sub_1DDA12660();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F4CF8(uint64_t a1)
{
  v2 = sub_1DDA12660();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F4D78@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DDA15620();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v19;
  v13 = v20;
  v14 = sub_1DDA15280();
  v16 = v15;
  (*(v12 + 8))(v11, v9);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v13 = v14;
  v13[1] = v16;
  return result;
}

uint64_t sub_1DD9F4F44(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v15 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  v14 = *v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_1DDA15650();
  sub_1DDA15340();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1DD9F508C()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F50E0(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F5128(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DDA15440();
  }
}

uint64_t sub_1DD9F5158(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA15640();
  if (*(v1 + 48))
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    sub_1DDA0E6C4();
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    sub_1DDA0E718();
  }

  sub_1DDA154A0();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_1DD9F5244()
{
  sub_1DDA15570();
  v1 = *(v0 + 24);
  if (*(v0 + 48))
  {
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
    sub_1DDA14BC0();
  }

  else
  {
    MEMORY[0x1E12B8440](0);
    sub_1DDA14BC0();
    if (!v1)
    {
      sub_1DDA15590();
      return sub_1DDA155B0();
    }

    sub_1DDA15590();
  }

  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F532C(uint64_t a1)
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
  v9 = v1 + *(type metadata accessor for UploadDocumentResponse(0) + 24);
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