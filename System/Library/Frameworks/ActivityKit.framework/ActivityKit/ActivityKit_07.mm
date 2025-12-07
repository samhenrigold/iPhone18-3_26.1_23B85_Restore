unint64_t sub_1A2CFCEB4()
{
  result = qword_1EB0A1CC8;
  if (!qword_1EB0A1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1CC8);
  }

  return result;
}

unint64_t sub_1A2CFCF08()
{
  result = qword_1EB0A1CD0;
  if (!qword_1EB0A1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1CD0);
  }

  return result;
}

unint64_t sub_1A2CFCF5C()
{
  result = qword_1EB0A1CD8;
  if (!qword_1EB0A1CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1CD8);
  }

  return result;
}

uint64_t ActivityPresentationState.DisplacementReason.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1CE0, &qword_1A2D160F0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1CE8, &qword_1A2D160F8);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1CF0, &qword_1A2D16100);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFCEB4();
  v12 = v31;
  sub_1A2D08C64();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1A2D08A64();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1A2C6D870();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1A2D088A4();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0);
      *v22 = &type metadata for ActivityPresentationState.DisplacementReason;
      sub_1A2D089E4();
      sub_1A2D08894();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1A2CFCF08();
        sub_1A2D089D4();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1A2CFCF5C();
        sub_1A2D089D4();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1A2CFD4D0(uint64_t a1)
{
  v2 = sub_1A2CFF3C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFD50C(uint64_t a1)
{
  v2 = sub_1A2CFF3C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFD548()
{
  v1 = 0x756F72676B636162;
  if (*v0 != 1)
  {
    v1 = 0x6563616C70736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756F726765726F66;
  }
}

uint64_t sub_1A2CFD5A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A2CFF56C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A2CFD5D0(uint64_t a1)
{
  v2 = sub_1A2CFF2CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFD60C(uint64_t a1)
{
  v2 = sub_1A2CFF2CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFD65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CFD6E0(uint64_t a1)
{
  v2 = sub_1A2CFF320();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFD71C(uint64_t a1)
{
  v2 = sub_1A2CFF320();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFD770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7265696669646F6DLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CFD7F8(uint64_t a1)
{
  v2 = sub_1A2CFF41C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFD834(uint64_t a1)
{
  v2 = sub_1A2CFF41C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityPresentationState.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1CF8, &qword_1A2D16108);
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D00, &qword_1A2D16110);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D08, &qword_1A2D16118);
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D10, &qword_1A2D16120);
  v12 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v14 = &v21 - v13;
  v28 = *v2;
  v15 = v2[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFF2CC();
  sub_1A2D08C74();
  if (!v15)
  {
    v31 = 0;
    sub_1A2CFF41C();
    v17 = v29;
    sub_1A2D08A84();
    v30 = v28;
    sub_1A2CFF470();
    sub_1A2D08AA4();
    (*(v22 + 8))(v11, v9);
    return (*(v12 + 8))(v14, v17);
  }

  if (v15 == 1)
  {
    v34 = 2;
    sub_1A2CFF320();
    v16 = v25;
    v17 = v29;
    sub_1A2D08A84();
    v33 = v28 & 1;
    sub_1A2CFF374();
    v18 = v27;
    sub_1A2D08AE4();
    (*(v26 + 8))(v16, v18);
    return (*(v12 + 8))(v14, v17);
  }

  v32 = 1;
  sub_1A2CFF3C8();
  v20 = v29;
  sub_1A2D08A84();
  (*(v23 + 8))(v8, v24);
  return (*(v12 + 8))(v14, v20);
}

uint64_t ActivityPresentationState.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D30, &qword_1A2D16128);
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v35 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D38, &qword_1A2D16130);
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D40, &qword_1A2D16138);
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D48, &qword_1A2D16140);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1A2CFF2CC();
  v14 = v45;
  sub_1A2D08C64();
  if (!v14)
  {
    v36 = v6;
    v37 = 0;
    v15 = v42;
    v45 = v10;
    v16 = v44;
    v17 = sub_1A2D08A64();
    v18 = (2 * *(v17 + 16)) | 1;
    v47 = v17;
    v48 = v17 + 32;
    v49 = 0;
    v50 = v18;
    v19 = sub_1A2C6D930();
    if (v19 != 3 && v49 == v50 >> 1)
    {
      if (v19)
      {
        if (v19 == 1)
        {
          v51 = 1;
          sub_1A2CFF3C8();
          v20 = v12;
          v21 = v37;
          sub_1A2D089D4();
          v22 = v45;
          if (!v21)
          {
            (*(v40 + 8))(v5, v15);
            (*(v22 + 8))(v12, v9);
            swift_unknownObjectRelease();
            v23 = 0;
            v24 = 2;
LABEL_18:
            *v16 = v23;
            v16[1] = v24;
            return __swift_destroy_boxed_opaque_existential_1(v46);
          }

          goto LABEL_9;
        }

        v51 = 2;
        sub_1A2CFF320();
        v31 = v37;
        sub_1A2D089D4();
        v32 = v45;
        if (!v31)
        {
          sub_1A2CFF4C4();
          v34 = v39;
          sub_1A2D08A54();
          (*(v41 + 8))(0, v34);
          (*(v32 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v23 = v51;
          v24 = 1;
          goto LABEL_18;
        }
      }

      else
      {
        v51 = 0;
        sub_1A2CFF41C();
        v29 = v12;
        v30 = v37;
        sub_1A2D089D4();
        if (!v30)
        {
          sub_1A2CFF518();
          v33 = v36;
          sub_1A2D08A14();
          (*(v38 + 8))(v8, v33);
          (*(v45 + 8))(v29, v9);
          swift_unknownObjectRelease();
          v24 = 0;
          v23 = v51;
          goto LABEL_18;
        }
      }

      (*(v45 + 8))(v12, v9);
      goto LABEL_10;
    }

    v25 = sub_1A2D088A4();
    swift_allocError();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0);
    *v27 = &type metadata for ActivityPresentationState;
    v20 = v12;
    sub_1A2D089E4();
    sub_1A2D08894();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    v22 = v45;
LABEL_9:
    (*(v22 + 8))(v20, v9);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

unint64_t sub_1A2CFE34C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A2CFF69C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unsigned __int8 *ActivityPresentationState.resolving(state:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v2[1];
  if (v2[1])
  {
    if (!result[1])
    {
      *a2 = v3;
      return result;
    }

    if (result[1] == 1)
    {
      if (v5 != 1)
      {
LABEL_8:
        *a2 = v3;
LABEL_14:
        *(a2 + 1) = 1;
        return result;
      }

      if (v4 & 1) != 0 && (v3)
      {
        LOBYTE(v3) = v3 & 1;
        goto LABEL_8;
      }

      *a2 = 256;
    }

    else
    {
      if (v5 == 1)
      {
        *a2 = v4;
        goto LABEL_14;
      }

      *a2 = 512;
    }
  }

  else if (result[1])
  {
    *a2 = v4;
  }

  else if ((v4 == 2 || (v4 & 1) == 0) && (v3 == 2 || (v3 & 1) == 0))
  {
    if (v4 == 2 || (v4) && (v3 == 2 || (v3))
    {
      *a2 = 2;
    }

    else
    {
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 1;
  }

  return result;
}

uint64_t ActivityPresentation.activityIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActivityPresentation.init(activityIdentifier:state:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

BOOL static ActivityPresentation.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_1A2D08B34(), v8 = 0, (v7 & 1) != 0))
  {
    v11[0] = v2;
    v11[1] = v3;
    v10[0] = v4;
    v10[1] = v5;
    return _s11ActivityKit0A17PresentationStateO2eeoiySbAC_ACtFZ_0(v11, v10);
  }

  return v8;
}

uint64_t sub_1A2CFE534()
{
  if (*v0)
  {
    return 0x6574617473;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1A2CFE570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001A2D1B440 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A2D08B34();

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
  return result;
}

uint64_t sub_1A2CFE654(uint64_t a1)
{
  v2 = sub_1A2CFF6AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFE690(uint64_t a1)
{
  v2 = sub_1A2CFF6AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityPresentation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D58, &qword_1A2D16148);
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v10 = *(v1 + 16);
  HIDWORD(v8) = *(v1 + 17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFF6AC();
  sub_1A2D08C74();
  v14 = 0;
  sub_1A2D08AB4();
  if (!v2)
  {
    v12 = v10;
    v13 = BYTE4(v8);
    v11 = 1;
    sub_1A2CFF700();
    sub_1A2D08AE4();
  }

  return (*(v9 + 8))(v6, v4);
}

uint64_t ActivityPresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D70, &qword_1A2D16150);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFF6AC();
  sub_1A2D08C64();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v9 = sub_1A2D08A24();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  sub_1A2CFF754();
  sub_1A2D08A54();
  (*(v6 + 8))(v8, v5);
  v13 = v17;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL sub_1A2CFEA94(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_1A2D08B34(), v8 = 0, (v7 & 1) != 0))
  {
    v11[0] = v2;
    v11[1] = v3;
    v10[0] = v4;
    v10[1] = v5;
    return _s11ActivityKit0A17PresentationStateO2eeoiySbAC_ACtFZ_0(v11, v10);
  }

  return v8;
}

uint64_t ActivityPresenter.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static ActivityPresenter.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1A2D08B34() & 1) == 0)
  {
    return 0;
  }

  return sub_1A2CC2E40(v2, v3);
}

uint64_t sub_1A2CFEBD0()
{
  if (*v0)
  {
    return 0x61746E6573657270;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1A2CFEC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A2D196E0 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x61746E6573657270 && a2 == 0xED0000736E6F6974)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A2D08B34();

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
  return result;
}

uint64_t sub_1A2CFED0C(uint64_t a1)
{
  v2 = sub_1A2CFF7A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFED48(uint64_t a1)
{
  v2 = sub_1A2CFF7A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityPresenter.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D80, &qword_1A2D16158);
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFF7A8();
  sub_1A2D08C74();
  v13 = 0;
  sub_1A2D08AB4();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D90, &qword_1A2D16160);
    sub_1A2CFF850(&qword_1EB0A1D98, sub_1A2CFF7FC, MEMORY[0x1E69E6300]);
    sub_1A2D08AE4();
  }

  return (*(v10 + 8))(v6, v4);
}

uint64_t ActivityPresenter.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1DA8, &qword_1A2D16168);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFF7A8();
  sub_1A2D08C64();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_1A2D08A24();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D90, &qword_1A2D16160);
  v16 = 1;
  sub_1A2CFF850(&qword_1EB0A1DB0, sub_1A2CFF8C8, MEMORY[0x1E69E6330]);
  sub_1A2D08A54();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A2CFF1E0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1A2D08B34() & 1) == 0)
  {
    return 0;
  }

  return sub_1A2CC2E40(v2, v3);
}

BOOL _s11ActivityKit0A17PresentationStateO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  if (a1[1])
  {
    if (a1[1] == 1)
    {
      if (v4 == 1)
      {
        return ((v3 ^ v2) & 1) == 0;
      }

      return 0;
    }

    if (v4 != 2 || v3 != 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[1])
    {
      return 0;
    }

    if (v2 == 2)
    {
      if (v3 != 2)
      {
        return 0;
      }
    }

    else if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1A2CFF2CC()
{
  result = qword_1ED7088C0;
  if (!qword_1ED7088C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7088C0);
  }

  return result;
}

unint64_t sub_1A2CFF320()
{
  result = qword_1EB0A1D18;
  if (!qword_1EB0A1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1D18);
  }

  return result;
}

unint64_t sub_1A2CFF374()
{
  result = qword_1EB0A1D20;
  if (!qword_1EB0A1D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1D20);
  }

  return result;
}

unint64_t sub_1A2CFF3C8()
{
  result = qword_1EB0A1D28;
  if (!qword_1EB0A1D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1D28);
  }

  return result;
}

unint64_t sub_1A2CFF41C()
{
  result = qword_1ED708880;
  if (!qword_1ED708880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708880);
  }

  return result;
}

unint64_t sub_1A2CFF470()
{
  result = qword_1ED7088A8;
  if (!qword_1ED7088A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7088A8);
  }

  return result;
}

unint64_t sub_1A2CFF4C4()
{
  result = qword_1EB0A1D50;
  if (!qword_1EB0A1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1D50);
  }

  return result;
}

unint64_t sub_1A2CFF518()
{
  result = qword_1EB09F098;
  if (!qword_1EB09F098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F098);
  }

  return result;
}

uint64_t sub_1A2CFF56C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F726765726F66 && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6563616C70736964 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

unint64_t sub_1A2CFF69C(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1A2CFF6AC()
{
  result = qword_1EB0A1D60;
  if (!qword_1EB0A1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1D60);
  }

  return result;
}

unint64_t sub_1A2CFF700()
{
  result = qword_1EB0A1D68;
  if (!qword_1EB0A1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1D68);
  }

  return result;
}

unint64_t sub_1A2CFF754()
{
  result = qword_1EB0A1D78;
  if (!qword_1EB0A1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1D78);
  }

  return result;
}

unint64_t sub_1A2CFF7A8()
{
  result = qword_1EB0A1D88;
  if (!qword_1EB0A1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1D88);
  }

  return result;
}

unint64_t sub_1A2CFF7FC()
{
  result = qword_1EB0A1DA0;
  if (!qword_1EB0A1DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1DA0);
  }

  return result;
}

uint64_t sub_1A2CFF850(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A1D90, &qword_1A2D16160);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A2CFF8C8()
{
  result = qword_1EB0A1DB8;
  if (!qword_1EB0A1DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1DB8);
  }

  return result;
}

unint64_t sub_1A2CFF920()
{
  result = qword_1EB0A1DC0;
  if (!qword_1EB0A1DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1DC0);
  }

  return result;
}

unint64_t sub_1A2CFF978()
{
  result = qword_1EB0A1DC8;
  if (!qword_1EB0A1DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1DC8);
  }

  return result;
}

unint64_t sub_1A2CFF9D0()
{
  result = qword_1EB0A1DD0;
  if (!qword_1EB0A1DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1DD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityPresentationState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityPresentationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A2CFFB6C(unsigned __int8 *a1)
{
  if (a1[1] <= 1u)
  {
    return a1[1];
  }

  else
  {
    return *a1 + 2;
  }
}

_BYTE *sub_1A2CFFB84(_BYTE *result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  result[1] = a2;
  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A2CFFBF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1A2CFFC38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A2CFFD5C()
{
  result = qword_1EB0A1DD8;
  if (!qword_1EB0A1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1DD8);
  }

  return result;
}

unint64_t sub_1A2CFFDB4()
{
  result = qword_1EB0A1DE0;
  if (!qword_1EB0A1DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1DE0);
  }

  return result;
}

unint64_t sub_1A2CFFE0C()
{
  result = qword_1EB0A1DE8;
  if (!qword_1EB0A1DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1DE8);
  }

  return result;
}

unint64_t sub_1A2CFFE64()
{
  result = qword_1EB0A1DF0;
  if (!qword_1EB0A1DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1DF0);
  }

  return result;
}

unint64_t sub_1A2CFFEBC()
{
  result = qword_1EB0A1DF8;
  if (!qword_1EB0A1DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1DF8);
  }

  return result;
}

unint64_t sub_1A2CFFF14()
{
  result = qword_1EB0A1E00;
  if (!qword_1EB0A1E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E00);
  }

  return result;
}

unint64_t sub_1A2CFFF6C()
{
  result = qword_1EB0A1E08;
  if (!qword_1EB0A1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E08);
  }

  return result;
}

unint64_t sub_1A2CFFFC4()
{
  result = qword_1EB0A1E10;
  if (!qword_1EB0A1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E10);
  }

  return result;
}

unint64_t sub_1A2D0001C()
{
  result = qword_1EB0A1E18;
  if (!qword_1EB0A1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E18);
  }

  return result;
}

unint64_t sub_1A2D00074()
{
  result = qword_1EB0A1E20;
  if (!qword_1EB0A1E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E20);
  }

  return result;
}

unint64_t sub_1A2D000CC()
{
  result = qword_1EB0A1E28;
  if (!qword_1EB0A1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E28);
  }

  return result;
}

unint64_t sub_1A2D00124()
{
  result = qword_1ED708870;
  if (!qword_1ED708870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708870);
  }

  return result;
}

unint64_t sub_1A2D0017C()
{
  result = qword_1ED708878;
  if (!qword_1ED708878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708878);
  }

  return result;
}

unint64_t sub_1A2D001D4()
{
  result = qword_1ED708888;
  if (!qword_1ED708888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708888);
  }

  return result;
}

unint64_t sub_1A2D0022C()
{
  result = qword_1ED708890;
  if (!qword_1ED708890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708890);
  }

  return result;
}

unint64_t sub_1A2D00284()
{
  result = qword_1ED708898;
  if (!qword_1ED708898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708898);
  }

  return result;
}

unint64_t sub_1A2D002DC()
{
  result = qword_1ED7088A0;
  if (!qword_1ED7088A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7088A0);
  }

  return result;
}

unint64_t sub_1A2D00334()
{
  result = qword_1ED7088B0;
  if (!qword_1ED7088B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7088B0);
  }

  return result;
}

unint64_t sub_1A2D0038C()
{
  result = qword_1ED7088B8;
  if (!qword_1ED7088B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7088B8);
  }

  return result;
}

unint64_t sub_1A2D003E4()
{
  result = qword_1EB0A1E30;
  if (!qword_1EB0A1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E30);
  }

  return result;
}

unint64_t sub_1A2D0043C()
{
  result = qword_1EB0A1E38;
  if (!qword_1EB0A1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E38);
  }

  return result;
}

unint64_t sub_1A2D00494()
{
  result = qword_1EB0A1E40;
  if (!qword_1EB0A1E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E40);
  }

  return result;
}

unint64_t sub_1A2D004EC()
{
  result = qword_1EB0A1E48;
  if (!qword_1EB0A1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E48);
  }

  return result;
}

unint64_t sub_1A2D00544()
{
  result = qword_1EB0A1E50;
  if (!qword_1EB0A1E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E50);
  }

  return result;
}

unint64_t sub_1A2D0059C()
{
  result = qword_1EB0A1E58;
  if (!qword_1EB0A1E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E58);
  }

  return result;
}

unint64_t sub_1A2D005F4()
{
  result = qword_1EB0A1E60;
  if (!qword_1EB0A1E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E60);
  }

  return result;
}

unint64_t sub_1A2D0064C()
{
  result = qword_1EB0A1E68;
  if (!qword_1EB0A1E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E68);
  }

  return result;
}

unint64_t sub_1A2D006A4()
{
  result = qword_1EB0A1E70;
  if (!qword_1EB0A1E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E70);
  }

  return result;
}

unint64_t sub_1A2D006FC()
{
  result = qword_1EB0A1E78;
  if (!qword_1EB0A1E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E78);
  }

  return result;
}

unint64_t sub_1A2D00754()
{
  result = qword_1EB0A1E80;
  if (!qword_1EB0A1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E80);
  }

  return result;
}

unint64_t sub_1A2D007AC()
{
  result = qword_1EB0A1E88;
  if (!qword_1EB0A1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E88);
  }

  return result;
}

uint64_t sub_1A2D0080C()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1EB0B2580);
  __swift_project_value_buffer(v0, qword_1EB0B2580);
  return sub_1A2D08084();
}

uint64_t sub_1A2D0088C()
{
  v1 = sub_1A2D082D4();
  v55 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v52 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1A2D08314();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1A2D08334();
  v54 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v42 - v6;
  v50 = sub_1A2D082C4();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v56 = (&v42 - v12);
  v13 = sub_1A2D08734();
  v45 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A2D08344();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v0 + 16);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16, v18);
  v22 = v21;
  v23 = sub_1A2D08364();
  result = (*(v17 + 8))(v20, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v25 = *(v0 + 104) * 1000000.0;
  if (COERCE__INT64(fabs(v25)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v26 = v25;
  if (v25 >= 0x7FFFFFFF)
  {
    v26 = 0x7FFFFFFFLL;
  }

  v42 = v26;
  sub_1A2C569A0(0, &qword_1ED708B50, 0x1E69E9630);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C88F64(&qword_1ED708B60, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  v44 = v1;
  v43 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0840, qword_1A2D0C0A8);
  sub_1A2C88FAC(&qword_1ED708B70, &qword_1EB0A0840, qword_1A2D0C0A8);
  sub_1A2D08804();
  v27 = sub_1A2D08744();
  (*(v45 + 8))(v15, v13);
  v28 = v56;
  *v56 = v42;
  v29 = v48;
  v30 = v48[13];
  v31 = v50;
  v30(v28, *MEMORY[0x1E69E7F30], v50);
  v32 = v46;
  sub_1A2D08324();
  v33 = v57;
  MEMORY[0x1A58E4010](v32, v28);
  v54 = *(v54 + 8);
  (v54)(v32, v58);
  ObjectType = swift_getObjectType();
  v35 = v47;
  v30(v47, *MEMORY[0x1E69E7F40], v31);
  *v8 = 0;
  v30(v8, *MEMORY[0x1E69E7F28], v31);
  MEMORY[0x1A58E4450](v33, v35, v8, ObjectType);
  v36 = v29[1];
  v48 = v36;
  (v36)(v8, v31);
  (v36)(v35, v31);
  v37 = swift_allocObject();
  v38 = v43;
  swift_weakInit();
  aBlock[4] = sub_1A2D01598;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C5E5B8;
  aBlock[3] = &block_descriptor_14;
  v39 = _Block_copy(aBlock);

  v40 = v49;
  sub_1A2D082E4();
  v41 = v52;
  sub_1A2C8C670();
  sub_1A2D08754();
  _Block_release(v39);
  (*(v55 + 8))(v41, v44);
  (*(v51 + 8))(v40, v53);

  *(v38 + 56) = v27;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  sub_1A2D08774();
  swift_unknownObjectRelease_n();
  (v54)(v57, v58);
  return (v48)(v56, v31);
}

void *sub_1A2D0106C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v4 = result + 3;
    v3 = result[3];
    if (v3)
    {
      v5 = result[4];

      v3(&v24, v2);
      if (v25)
      {
        sub_1A2C5E3C4(&v24, v26);
        sub_1A2C53CD8(v26, &v24);
        swift_beginAccess();
        sub_1A2C8BA60(&v24, (v2 + 8));
        swift_endAccess();
        *(v2 + 120) = 1;
        if (qword_1EB09EC60 != -1)
        {
          swift_once();
        }

        v6 = sub_1A2D08094();
        __swift_project_value_buffer(v6, qword_1EB0B2580);

        v7 = sub_1A2D08074();
        v8 = sub_1A2D086A4();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 134349056;
          *(v9 + 4) = v2[16];

          _os_log_impl(&dword_1A2C51000, v7, v8, "Created inner cancellable after %{public}ld attempts", v9, 0xCu);
          MEMORY[0x1A58E5180](v9, -1, -1);

          if (v2[7])
          {
LABEL_8:
            swift_getObjectType();
            swift_unknownObjectRetain();
            sub_1A2D08764();
            sub_1A2C80A04(v3, v5);
            swift_unknownObjectRelease();
LABEL_22:
            __swift_destroy_boxed_opaque_existential_1(v26);
            v2[7] = 0;
            swift_unknownObjectRelease();
            v18 = v2[3];
            v19 = v2[4];
            *v4 = 0;
            v4[1] = 0;
LABEL_25:
            sub_1A2C80A04(v18, v19);
          }
        }

        else
        {

          if (v2[7])
          {
            goto LABEL_8;
          }
        }

        sub_1A2C80A04(v3, v5);
        goto LABEL_22;
      }

      sub_1A2C96970(&v24);
      v10 = v2[16];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        __break(1u);
      }

      else
      {
        v2[16] = v12;
        v13 = *(v2 + 13) + *(v2 + 13);
        if (*(v2 + 14) < v13)
        {
          v13 = *(v2 + 14);
        }

        *(v2 + 13) = v13;
        if ((v2[6] & 1) == 0 && v12 >= v2[5])
        {
          if (qword_1EB09EC60 != -1)
          {
            swift_once();
          }

          v20 = sub_1A2D08094();
          __swift_project_value_buffer(v20, qword_1EB0B2580);

          v21 = sub_1A2D08074();
          v22 = sub_1A2D08684();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            *v23 = 134349056;
            *(v23 + 4) = v2[16];

            _os_log_impl(&dword_1A2C51000, v21, v22, "Failed to create inner cancellable after %{public}ld attempts; giving up as maximum reached", v23, 0xCu);
            MEMORY[0x1A58E5180](v23, -1, -1);
          }

          else
          {
          }

          sub_1A2C80A04(v3, v5);

          *(v2 + 120) = 2;
        }

        if (qword_1EB09EC60 == -1)
        {
          goto LABEL_18;
        }
      }

      swift_once();
LABEL_18:
      v14 = sub_1A2D08094();
      __swift_project_value_buffer(v14, qword_1EB0B2580);

      v15 = sub_1A2D08074();
      v16 = sub_1A2D086A4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134349312;
        *(v17 + 4) = v2[16];

        *(v17 + 12) = 2050;
        *(v17 + 14) = v2[13];
        _os_log_impl(&dword_1A2C51000, v15, v16, "Failed to create inner cancellable after %{public}ld attempts; trying again in %{public}fs", v17, 0x16u);
        MEMORY[0x1A58E5180](v17, -1, -1);
      }

      else
      {
      }

      sub_1A2D0088C();
      v18 = v3;
      v19 = v5;
      goto LABEL_25;
    }

    if (result[7])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1A2D08764();
      swift_unknownObjectRelease();
    }

    v2[7] = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1A2D01544()
{
  result = qword_1EB0A1E90;
  if (!qword_1EB0A1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E90);
  }

  return result;
}

void *sub_1A2D015A0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1A2D015C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_1A2D01618(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t ActivityDescriptorContentState.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ActivityDescriptorContentState(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ActivityDescriptorContentState.contentState.getter()
{
  v1 = v0 + *(type metadata accessor for ActivityDescriptorContentState(0) + 24);
  v2 = *v1;
  sub_1A2C5E63C(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1A2D01760@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A2D0203C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A2D01788(uint64_t a1)
{
  v2 = sub_1A2C843DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D017C4(uint64_t a1)
{
  v2 = sub_1A2C843DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2D01800(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C60E50(&unk_1EB09F050, type metadata accessor for ActivityDescriptorContentState, &protocol conformance descriptor for ActivityDescriptorContentState);
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

uint64_t sub_1A2D018E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A68, &unk_1A2D0D240);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v8 = sub_1A2D07F44();
  v10 = v9;
  sub_1A2C60E50(qword_1ED7090F0, type metadata accessor for ActivityDescriptorContentState, &protocol conformance descriptor for ActivityDescriptorContentState);
  sub_1A2D07E64();
  sub_1A2D021A8(a2);
  sub_1A2C55840(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1A2D02210(v7, a2);
}

uint64_t sub_1A2D01AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001A2D1B520 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A2D08B34();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A2D01B38(uint64_t a1)
{
  v2 = sub_1A2C55468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D01B74(uint64_t a1)
{
  v2 = sub_1A2C55468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2D01BB0(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2D01E14();
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

uint64_t sub_1A2D01C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1A2D07DF4();
  v11 = result;
  if (result)
  {
    result = sub_1A2D07E14();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1A2D07E04();
  sub_1A2C8D8A4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1A2D01D30(void *a1)
{
  a1[1] = sub_1A2C60E50(qword_1ED7090F0, type metadata accessor for ActivityDescriptorContentState, &protocol conformance descriptor for ActivityDescriptorContentState);
  a1[2] = sub_1A2C60E50(&unk_1EB09F050, type metadata accessor for ActivityDescriptorContentState, &protocol conformance descriptor for ActivityDescriptorContentState);
  result = sub_1A2C60E50(&qword_1EB0A1EC8, type metadata accessor for ActivityDescriptorContentState, &protocol conformance descriptor for ActivityDescriptorContentState);
  a1[3] = result;
  return result;
}

unint64_t sub_1A2D01DDC(void *a1)
{
  a1[1] = sub_1A2C55894();
  a1[2] = sub_1A2D01E14();
  result = sub_1A2D01E68();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2D01E14()
{
  result = qword_1EB09F268;
  if (!qword_1EB09F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F268);
  }

  return result;
}

unint64_t sub_1A2D01E68()
{
  result = qword_1EB09F260;
  if (!qword_1EB09F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F260);
  }

  return result;
}

unint64_t sub_1A2D01EE0()
{
  result = qword_1EB0A1ED0;
  if (!qword_1EB0A1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1ED0);
  }

  return result;
}

unint64_t sub_1A2D01F38()
{
  result = qword_1EB0A1ED8;
  if (!qword_1EB0A1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1ED8);
  }

  return result;
}

unint64_t sub_1A2D01F90()
{
  result = qword_1EB09F5B8;
  if (!qword_1EB09F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F5B8);
  }

  return result;
}

unint64_t sub_1A2D01FE8()
{
  result = qword_1EB09F5C0;
  if (!qword_1EB09F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F5C0);
  }

  return result;
}

uint64_t sub_1A2D0203C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53746E65746E6F63 && a2 == 0xEC00000065746174 || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A2D08B34();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A2D021A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A68, &unk_1A2D0D240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A2D02210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A68, &unk_1A2D0D240);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

ActivityKit::ActivityAuthorizationOptionsType __swiftcall ActivityAuthorizationOptionsType.init(authorizationCount:)(Swift::Int authorizationCount)
{
  if (authorizationCount == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  if (authorizationCount == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return authorizationCount;
}

unint64_t ActivityAuthorizationOptionsType.description.getter()
{
  v1 = 0x6F6974704F206F4ELL;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000015;
  }

  v2 = 0xD000000000000010;
  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t ActivityAuthorizationOptionsType.authorizationCount.getter()
{
  if (*v0)
  {
    return 2 * (*v0 == 1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1A2D0235C(uint64_t a1)
{
  v2 = sub_1A2C6BBF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D02398(uint64_t a1)
{
  v2 = sub_1A2C6BBF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2D023D4(uint64_t a1)
{
  v2 = sub_1A2D0265C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D02410(uint64_t a1)
{
  v2 = sub_1A2D0265C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2D0244C(uint64_t a1)
{
  v2 = sub_1A2D025B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D02488(uint64_t a1)
{
  v2 = sub_1A2D025B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2D024C4(uint64_t a1)
{
  v2 = sub_1A2C6BC4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D02500(uint64_t a1)
{
  v2 = sub_1A2C6BC4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2D0253C(uint64_t a1)
{
  v2 = sub_1A2D02608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D02578(uint64_t a1)
{
  v2 = sub_1A2D02608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A2D025B4()
{
  result = qword_1EB0A1F08;
  if (!qword_1EB0A1F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1F08);
  }

  return result;
}

unint64_t sub_1A2D02608()
{
  result = qword_1EB0A1F10;
  if (!qword_1EB0A1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1F10);
  }

  return result;
}

unint64_t sub_1A2D0265C()
{
  result = qword_1ED708EB8;
  if (!qword_1ED708EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708EB8);
  }

  return result;
}

uint64_t ActivityAuthorizationOptionsType.hashValue.getter()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

unint64_t sub_1A2D02728()
{
  result = qword_1EB0A1F40;
  if (!qword_1EB0A1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1F40);
  }

  return result;
}

unint64_t sub_1A2D0277C()
{
  v1 = 0x6F6974704F206F4ELL;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000015;
  }

  v2 = 0xD000000000000010;
  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1A2D02870()
{
  result = qword_1EB0A1F48;
  if (!qword_1EB0A1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1F48);
  }

  return result;
}

unint64_t sub_1A2D028C8()
{
  result = qword_1ED709600;
  if (!qword_1ED709600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709600);
  }

  return result;
}

unint64_t sub_1A2D02920()
{
  result = qword_1ED709608;
  if (!qword_1ED709608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709608);
  }

  return result;
}

unint64_t sub_1A2D02978()
{
  result = qword_1ED7095F0;
  if (!qword_1ED7095F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7095F0);
  }

  return result;
}

unint64_t sub_1A2D029D0()
{
  result = qword_1ED7095F8;
  if (!qword_1ED7095F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7095F8);
  }

  return result;
}

unint64_t sub_1A2D02A28()
{
  result = qword_1ED7095E0;
  if (!qword_1ED7095E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7095E0);
  }

  return result;
}

unint64_t sub_1A2D02A80()
{
  result = qword_1ED7095E8;
  if (!qword_1ED7095E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7095E8);
  }

  return result;
}

unint64_t sub_1A2D02AD8()
{
  result = qword_1ED709628;
  if (!qword_1ED709628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709628);
  }

  return result;
}

unint64_t sub_1A2D02B30()
{
  result = qword_1ED709630;
  if (!qword_1ED709630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709630);
  }

  return result;
}

unint64_t sub_1A2D02B88()
{
  result = qword_1ED709610;
  if (!qword_1ED709610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709610);
  }

  return result;
}

unint64_t sub_1A2D02BE0()
{
  result = qword_1ED709618;
  if (!qword_1ED709618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709618);
  }

  return result;
}

uint64_t static ActivityPushTokenServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED709D18 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED709D20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

BOOL sub_1A2D02D08(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  sub_1A2C54E38(a2, &unk_1EB0A0AC0, &qword_1A2D0A810);
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v9 = type metadata accessor for ActivityEndingOptions(0);
  v10 = sub_1A2D07F44();
  v12 = v11;
  sub_1A2C60E98(&qword_1EB09F0D0, type metadata accessor for ActivityEndingOptions, &protocol conformance descriptor for ActivityEndingOptions);
  sub_1A2D07E64();

  sub_1A2C55840(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_1A2C639DC(v8, a2, &unk_1EB0A0AC0, &qword_1A2D0A810);
  sub_1A2C6BD18(a2, v5, &unk_1EB0A0AC0, &qword_1A2D0A810);
  v14 = (*(v13 + 48))(v5, 1, v9) != 1;
  sub_1A2C54E38(v5, &unk_1EB0A0AC0, &qword_1A2D0A810);
  return v14;
}

BOOL sub_1A2D02F84(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AA0, &unk_1A2D10000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  sub_1A2C54E38(a2, &unk_1EB0A0AA0, &unk_1A2D10000);
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v9 = type metadata accessor for OpaqueActivityContent(0);
  v10 = sub_1A2D07F44();
  v12 = v11;
  sub_1A2C60E98(&qword_1ED709098, type metadata accessor for OpaqueActivityContent, &protocol conformance descriptor for OpaqueActivityContent);
  sub_1A2D07E64();

  sub_1A2C55840(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_1A2C639DC(v8, a2, &unk_1EB0A0AA0, &unk_1A2D10000);
  sub_1A2C6BD18(a2, v5, &unk_1EB0A0AA0, &unk_1A2D10000);
  v14 = (*(v13 + 48))(v5, 1, v9) != 1;
  sub_1A2C54E38(v5, &unk_1EB0A0AA0, &unk_1A2D10000);
  return v14;
}

BOOL sub_1A2D031C0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  sub_1A2C54E38(a2, &qword_1EB0A02E0, &qword_1A2D0AA50);
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v9 = type metadata accessor for OpaqueActivityPayload(0);
  v10 = sub_1A2D07F44();
  v12 = v11;
  sub_1A2C60E98(&qword_1ED709070, type metadata accessor for OpaqueActivityPayload, &protocol conformance descriptor for OpaqueActivityPayload);
  sub_1A2D07E64();

  sub_1A2C55840(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_1A2C639DC(v8, a2, &qword_1EB0A02E0, &qword_1A2D0AA50);
  sub_1A2C6BD18(a2, v5, &qword_1EB0A02E0, &qword_1A2D0AA50);
  v14 = (*(v13 + 48))(v5, 1, v9) != 1;
  sub_1A2C54E38(v5, &qword_1EB0A02E0, &qword_1A2D0AA50);
  return v14;
}

BOOL sub_1A2D033FC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0210, &unk_1A2D0ACA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  sub_1A2C54E38(a2, &qword_1EB0A0210, &unk_1A2D0ACA0);
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v9 = type metadata accessor for ActivityDescriptor(0);
  v10 = sub_1A2D07F44();
  v12 = v11;
  sub_1A2C60E98(&qword_1ED709430, type metadata accessor for ActivityDescriptor, &protocol conformance descriptor for ActivityDescriptor);
  sub_1A2D07E64();

  sub_1A2C55840(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_1A2C639DC(v8, a2, &qword_1EB0A0210, &unk_1A2D0ACA0);
  sub_1A2C6BD18(a2, v5, &qword_1EB0A0210, &unk_1A2D0ACA0);
  v14 = (*(v13 + 48))(v5, 1, v9) != 1;
  sub_1A2C54E38(v5, &qword_1EB0A0210, &unk_1A2D0ACA0);
  return v14;
}

BOOL sub_1A2D0368C(uint64_t a1, void *a2)
{

  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v3 = sub_1A2D07F44();
  v5 = v4;
  sub_1A2C6CDD0();
  sub_1A2D07E64();

  sub_1A2C55840(v3, v5);
  *a2 = v7;
  a2[1] = v8;
  return v8 != 0;
}

BOOL sub_1A2D03798(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0A90, &unk_1A2D0D260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  sub_1A2C54E38(a2, &unk_1EB0A0A90, &unk_1A2D0D260);
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v9 = type metadata accessor for ActivityUIDismissalPolicy(0);
  v10 = sub_1A2D07F44();
  v12 = v11;
  sub_1A2C60E98(&qword_1EB09F090, type metadata accessor for ActivityUIDismissalPolicy, &protocol conformance descriptor for ActivityUIDismissalPolicy);
  sub_1A2D07E64();

  sub_1A2C55840(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_1A2C639DC(v8, a2, &unk_1EB0A0A90, &unk_1A2D0D260);
  sub_1A2C6BD18(a2, v5, &unk_1EB0A0A90, &unk_1A2D0D260);
  v14 = (*(v13 + 48))(v5, 1, v9) != 1;
  sub_1A2C54E38(v5, &unk_1EB0A0A90, &unk_1A2D0D260);
  return v14;
}

BOOL sub_1A2D03A08(uint64_t a1, void *a2, void (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  a3(*a2);
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v7 = sub_1A2D07F44();
  v9 = v8;
  a4();
  sub_1A2D07E64();

  sub_1A2C55840(v7, v9);
  *a2 = v11;
  return v11 != 1;
}

BOOL sub_1A2D03B1C(uint64_t a1, _WORD *a2)
{
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v3 = sub_1A2D07F44();
  v5 = v4;
  sub_1A2CA7000();
  sub_1A2D07E64();

  sub_1A2C55840(v3, v5);
  *a2 = v7;
  return v7 != 2;
}

BOOL sub_1A2D03C00(uint64_t a1, uint64_t *a2)
{
  sub_1A2CFA6C8(*a2, a2[1]);
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v3 = sub_1A2D07F44();
  v5 = v4;
  sub_1A2CB47D4();
  sub_1A2D07E64();

  sub_1A2C55840(v3, v5);
  *a2 = v7;
  return v7 != 1;
}

BOOL sub_1A2D03CF0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A68, &unk_1A2D0D240);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  sub_1A2C54E38(a2, &qword_1EB0A0A68, &unk_1A2D0D240);
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v9 = type metadata accessor for ActivityDescriptorContentState(0);
  v10 = sub_1A2D07F44();
  v12 = v11;
  sub_1A2C60E98(qword_1ED7090F0, type metadata accessor for ActivityDescriptorContentState, &protocol conformance descriptor for ActivityDescriptorContentState);
  sub_1A2D07E64();

  sub_1A2C55840(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_1A2C639DC(v8, a2, &qword_1EB0A0A68, &unk_1A2D0D240);
  sub_1A2C6BD18(a2, v5, &qword_1EB0A0A68, &unk_1A2D0D240);
  v14 = (*(v13 + 48))(v5, 1, v9) != 1;
  sub_1A2C54E38(v5, &qword_1EB0A0A68, &unk_1A2D0D240);
  return v14;
}

BOOL sub_1A2D03F2C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A70, &unk_1A2D0D250);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  sub_1A2C54E38(a2, &qword_1EB0A0A70, &unk_1A2D0D250);
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v9 = type metadata accessor for ActivityPlatterDismissalPolicy(0);
  v10 = sub_1A2D07F44();
  v12 = v11;
  sub_1A2C60E98(&qword_1EB0A0A78, type metadata accessor for ActivityPlatterDismissalPolicy, &protocol conformance descriptor for ActivityPlatterDismissalPolicy);
  sub_1A2D07E64();

  sub_1A2C55840(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_1A2C639DC(v8, a2, &qword_1EB0A0A70, &unk_1A2D0D250);
  sub_1A2C6BD18(a2, v5, &qword_1EB0A0A70, &unk_1A2D0D250);
  v14 = (*(v13 + 48))(v5, 1, v9) != 1;
  sub_1A2C54E38(v5, &qword_1EB0A0A70, &unk_1A2D0D250);
  return v14;
}

BOOL sub_1A2D04188(uint64_t a1, _BYTE *a2, uint64_t (*a3)(void), uint64_t a4)
{
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v6 = sub_1A2D07F44();
  v8 = v7;
  a3();
  sub_1A2D07E64();

  sub_1A2C55840(v6, v8);
  *a2 = v10;
  return v10 != 2;
}

BOOL sub_1A2D04270(uint64_t a1, _BYTE *a2)
{
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v3 = sub_1A2D07F44();
  v5 = v4;
  sub_1A2C78A64();
  sub_1A2D07E64();

  sub_1A2C55840(v3, v5);
  *a2 = v7;
  return v7 != 5;
}

BOOL sub_1A2D04370(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{

  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v6 = sub_1A2D07F44();
  v8 = v7;
  a3();
  sub_1A2D07E64();

  sub_1A2C55840(v6, v8);
  *a2 = v10;
  return v10 != 0;
}

BOOL sub_1A2D04460(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A04F0, &qword_1A2D0AC98);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  sub_1A2C54E38(a2, &unk_1EB0A04F0, &qword_1A2D0AC98);
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v9 = type metadata accessor for ActivityRequest(0);
  v10 = sub_1A2D07F44();
  v12 = v11;
  sub_1A2C60E98(&qword_1EB09EFD8, type metadata accessor for ActivityRequest, &protocol conformance descriptor for ActivityRequest);
  sub_1A2D07E64();

  sub_1A2C55840(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_1A2C639DC(v8, a2, &unk_1EB0A04F0, &qword_1A2D0AC98);
  sub_1A2C6BD18(a2, v5, &unk_1EB0A04F0, &qword_1A2D0AC98);
  v14 = (*(v13 + 48))(v5, 1, v9) != 1;
  sub_1A2C54E38(v5, &unk_1EB0A04F0, &qword_1A2D0AC98);
  return v14;
}

BOOL sub_1A2D0469C(uint64_t a1, uint64_t *a2)
{
  sub_1A2CFA650(*a2, a2[1], a2[2], a2[3], a2[4], a2[5], a2[6]);
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v3 = sub_1A2D07F44();
  v5 = v4;
  sub_1A2CBBB98();
  sub_1A2D07E64();

  sub_1A2C55840(v3, v5);
  *a2 = v7;
  *(a2 + 1) = v8;
  *(a2 + 3) = v9;
  *(a2 + 5) = v10;
  return v8 != 1;
}

BOOL sub_1A2D047B8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0790, &unk_1A2D0D270);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  sub_1A2C54E38(a2, &qword_1EB0A0790, &unk_1A2D0D270);
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v9 = type metadata accessor for AlertPayload(0);
  v10 = sub_1A2D07F44();
  v12 = v11;
  sub_1A2C60E98(&qword_1EB09EFA0, type metadata accessor for AlertPayload, &protocol conformance descriptor for AlertPayload);
  sub_1A2D07E64();

  sub_1A2C55840(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_1A2C639DC(v8, a2, &qword_1EB0A0790, &unk_1A2D0D270);
  sub_1A2C6BD18(a2, v5, &qword_1EB0A0790, &unk_1A2D0D270);
  v14 = (*(v13 + 48))(v5, 1, v9) != 1;
  sub_1A2C54E38(v5, &qword_1EB0A0790, &unk_1A2D0D270);
  return v14;
}

id ActivityDescriptor.acActivityDescriptor.getter()
{
  v1 = type metadata accessor for ActivityDescriptor(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2C569A0(0, &qword_1ED7088D8, off_1E76B6500);
  sub_1A2C789A4(v0, v3);
  return ACActivityDescriptor.init(descriptor:)(v3);
}

uint64_t static DeviceIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_1A2D08B34();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

uint64_t sub_1A2D04ACC(uint64_t a1)
{
  v2 = sub_1A2C73E74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D04B08(uint64_t a1)
{
  v2 = sub_1A2C73E74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2D04B44(uint64_t a1)
{
  v2 = sub_1A2C73EC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D04B80(uint64_t a1)
{
  v2 = sub_1A2C73EC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2D04BBC(uint64_t a1)
{
  v2 = sub_1A2D06AE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D04BF8(uint64_t a1)
{
  v2 = sub_1A2D06AE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityDescriptor.id.getter()
{
  v1 = *v0;

  return v1;
}

double ActivityDescriptor.attributesType.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t ActivityDescriptor.attributesData.getter()
{
  v1 = *(v0 + 32);
  sub_1A2C5E63C(v1, *(v0 + 40));
  return v1;
}

uint64_t ActivityDescriptor.presentationOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 112);
  v6 = *(v1 + 128);
  v2 = v6;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_1A2C66F58(&v5, v4);
}

uint64_t ActivityDescriptor.createdDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityDescriptor(0) + 60);
  v4 = sub_1A2D07F94();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActivityDescriptor.deviceIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityDescriptor(0) + 64));

  return v1;
}

uint64_t ActivityDescriptor.localizedAppName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityDescriptor(0) + 68));

  return v1;
}

uint64_t ActivityDescriptor.createdBySessionRequest.getter()
{
  if (*(v0 + 16) == 0x7474417972746E45 && *(v0 + 24) == 0xEF73657475626972)
  {
    return 1;
  }

  else
  {
    return sub_1A2D08B34();
  }
}

uint64_t ActivityDescriptor.hashValue.getter()
{
  sub_1A2D08C14();
  sub_1A2D08484();
  return sub_1A2D08C54();
}

uint64_t sub_1A2D04ED8()
{
  sub_1A2D08C14();
  sub_1A2D08484();
  return sub_1A2D08C54();
}

uint64_t sub_1A2D04F1C(uint64_t a1)
{
  sub_1A2D08C14();
  sub_1A2D08484();
  return sub_1A2D08C54();
}

uint64_t ActivityDescriptor.init(id:attributesType:attributesData:platterTarget:presentationOptions:contentSources:isEphemeral:isMomentary:createdDate:deviceIdentifier:localizedAppName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v33 = a3[1];
  v34 = *a3;
  v18 = *a6;
  v19 = *(a6 + 8);
  v21 = *(a6 + 16);
  v20 = *(a6 + 24);
  v22 = *(a6 + 32);
  v23 = *(a6 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0720, &unk_1A2D17D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A2D0AD20;
  *(inited + 32) = 0;
  *(inited + 40) = v18;
  *(inited + 48) = v19;
  *(inited + 56) = v21;
  *(inited + 64) = v20;
  *(inited + 72) = v22;
  *(inited + 80) = v23;
  sub_1A2C72A00(v18, v19, v21, v20, v22);
  v25 = sub_1A2CAA8B0(inited);
  swift_setDeallocating();
  sub_1A2C54E38(inited + 32, &qword_1EB0A0728, &qword_1A2D0BB50);
  v26 = sub_1A2CAA8B0(MEMORY[0x1E69E7CC0]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v34;
  *(a9 + 24) = v33;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 88) = v25;
  *(a9 + 96) = v26;
  *(a9 + 112) = *a7;
  *(a9 + 128) = *(a7 + 16);
  *(a9 + 104) = a8;
  *(a9 + 136) = a10;
  *(a9 + 137) = a11;
  v27 = type metadata accessor for ActivityDescriptor(0);
  v28 = v27[15];
  v29 = sub_1A2D07F94();
  result = (*(*(v29 - 8) + 32))(a9 + v28, a12, v29);
  v31 = (a9 + v27[16]);
  *v31 = a13;
  v31[1] = a14;
  v32 = (a9 + v27[17]);
  *v32 = a15;
  v32[1] = a16;
  *(a9 + v27[18]) = 4;
  *(a9 + 48) = v18;
  *(a9 + 56) = v19;
  *(a9 + 64) = v21 & 1;
  *(a9 + 65) = BYTE1(v21) & 1;
  *(a9 + 66) = BYTE2(v21) & 1;
  *(a9 + 67) = BYTE3(v21) & 1;
  *(a9 + 72) = v20;
  *(a9 + 80) = v22;
  return result;
}

uint64_t ActivityDescriptor.init(id:attributesType:attributesData:platterTarget:presentationOptions:contentSources:isEphemeral:createdDate:deviceIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v30 = a3[1];
  v31 = *a3;
  v15 = *a6;
  v16 = *(a6 + 8);
  v18 = *(a6 + 16);
  v17 = *(a6 + 24);
  v19 = *(a6 + 32);
  v20 = *(a6 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0720, &unk_1A2D17D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A2D0AD20;
  *(inited + 32) = 0;
  *(inited + 40) = v15;
  *(inited + 48) = v16;
  *(inited + 56) = v18;
  *(inited + 64) = v17;
  *(inited + 72) = v19;
  *(inited + 80) = v20;
  sub_1A2C72A00(v15, v16, v18, v17, v19);
  v22 = sub_1A2CAA8B0(inited);
  swift_setDeallocating();
  sub_1A2C54E38(inited + 32, &qword_1EB0A0728, &qword_1A2D0BB50);
  v23 = sub_1A2CAA8B0(MEMORY[0x1E69E7CC0]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v31;
  *(a9 + 24) = v30;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 88) = v22;
  *(a9 + 96) = v23;
  *(a9 + 112) = *a7;
  *(a9 + 128) = *(a7 + 16);
  *(a9 + 104) = a8;
  *(a9 + 136) = a10;
  *(a9 + 137) = 0;
  v24 = type metadata accessor for ActivityDescriptor(0);
  v25 = v24[15];
  v26 = sub_1A2D07F94();
  result = (*(*(v26 - 8) + 32))(a9 + v25, a11, v26);
  v28 = (a9 + v24[16]);
  *v28 = a12;
  v28[1] = a13;
  v29 = (a9 + v24[17]);
  *v29 = 0;
  v29[1] = 0;
  *(a9 + v24[18]) = 4;
  *(a9 + 48) = v15;
  *(a9 + 56) = v16;
  *(a9 + 64) = v18 & 1;
  *(a9 + 65) = BYTE1(v18) & 1;
  *(a9 + 66) = BYTE2(v18) & 1;
  *(a9 + 67) = BYTE3(v18) & 1;
  *(a9 + 72) = v17;
  *(a9 + 80) = v19;
  return result;
}

uint64_t ActivityDescriptor.init(id:attributesType:attributesData:platterTarget:presentationOptions:contentSources:isEphemeral:createdDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v28 = a3[1];
  v29 = *a3;
  v13 = *a6;
  v14 = *(a6 + 8);
  v16 = *(a6 + 16);
  v15 = *(a6 + 24);
  v17 = *(a6 + 32);
  v18 = *(a6 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0720, &unk_1A2D17D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A2D0AD20;
  *(inited + 32) = 0;
  *(inited + 40) = v13;
  *(inited + 48) = v14;
  *(inited + 56) = v16;
  *(inited + 64) = v15;
  *(inited + 72) = v17;
  *(inited + 80) = v18;
  sub_1A2C72A00(v13, v14, v16, v15, v17);
  v20 = sub_1A2CAA8B0(inited);
  swift_setDeallocating();
  sub_1A2C54E38(inited + 32, &qword_1EB0A0728, &qword_1A2D0BB50);
  v21 = sub_1A2CAA8B0(MEMORY[0x1E69E7CC0]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v29;
  *(a9 + 24) = v28;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 88) = v20;
  *(a9 + 96) = v21;
  *(a9 + 112) = *a7;
  *(a9 + 128) = *(a7 + 16);
  *(a9 + 104) = a8;
  *(a9 + 136) = a10;
  *(a9 + 137) = 0;
  v22 = type metadata accessor for ActivityDescriptor(0);
  v23 = v22[15];
  v24 = sub_1A2D07F94();
  result = (*(*(v24 - 8) + 32))(a9 + v23, a11, v24);
  v26 = (a9 + v22[16]);
  *v26 = 0;
  v26[1] = 0;
  v27 = (a9 + v22[17]);
  *v27 = 0;
  v27[1] = 0;
  *(a9 + v22[18]) = 4;
  *(a9 + 48) = v13;
  *(a9 + 56) = v14;
  *(a9 + 64) = v16 & 1;
  *(a9 + 65) = BYTE1(v16) & 1;
  *(a9 + 66) = BYTE2(v16) & 1;
  *(a9 + 67) = BYTE3(v16) & 1;
  *(a9 + 72) = v15;
  *(a9 + 80) = v17;
  return result;
}

uint64_t ActivityDescriptor.init(id:attributesType:attributesData:platterTarget:presentationOptions:contentSources:isEphemeral:isMomentary:createdDate:deviceIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v31 = a3[1];
  v32 = *a3;
  v16 = *a6;
  v17 = *(a6 + 8);
  v19 = *(a6 + 16);
  v18 = *(a6 + 24);
  v20 = *(a6 + 32);
  v21 = *(a6 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0720, &unk_1A2D17D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A2D0AD20;
  *(inited + 32) = 0;
  *(inited + 40) = v16;
  *(inited + 48) = v17;
  *(inited + 56) = v19;
  *(inited + 64) = v18;
  *(inited + 72) = v20;
  *(inited + 80) = v21;
  sub_1A2C72A00(v16, v17, v19, v18, v20);
  v23 = sub_1A2CAA8B0(inited);
  swift_setDeallocating();
  sub_1A2C54E38(inited + 32, &qword_1EB0A0728, &qword_1A2D0BB50);
  v24 = sub_1A2CAA8B0(MEMORY[0x1E69E7CC0]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v32;
  *(a9 + 24) = v31;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 88) = v23;
  *(a9 + 96) = v24;
  *(a9 + 112) = *a7;
  *(a9 + 128) = *(a7 + 16);
  *(a9 + 104) = a8;
  *(a9 + 136) = a10;
  *(a9 + 137) = a11;
  v25 = type metadata accessor for ActivityDescriptor(0);
  v26 = v25[15];
  v27 = sub_1A2D07F94();
  result = (*(*(v27 - 8) + 32))(a9 + v26, a12, v27);
  v29 = (a9 + v25[16]);
  *v29 = a13;
  v29[1] = a14;
  v30 = (a9 + v25[17]);
  *v30 = 0;
  v30[1] = 0;
  *(a9 + v25[18]) = 4;
  *(a9 + 48) = v16;
  *(a9 + 56) = v17;
  *(a9 + 64) = v19 & 1;
  *(a9 + 65) = BYTE1(v19) & 1;
  *(a9 + 66) = BYTE2(v19) & 1;
  *(a9 + 67) = BYTE3(v19) & 1;
  *(a9 + 72) = v18;
  *(a9 + 80) = v20;
  return result;
}

uint64_t ActivityDescriptor.init(id:attributesType:attributesData:platterTarget:presentationOptions:contentSources:isEphemeral:isMomentary:createdDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, unsigned __int8 a11, uint64_t a12)
{
  v29 = a3[1];
  v30 = *a3;
  v14 = *a6;
  v15 = *(a6 + 8);
  v17 = *(a6 + 16);
  v16 = *(a6 + 24);
  v18 = *(a6 + 32);
  v19 = *(a6 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0720, &unk_1A2D17D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A2D0AD20;
  *(inited + 32) = 0;
  *(inited + 40) = v14;
  *(inited + 48) = v15;
  *(inited + 56) = v17;
  *(inited + 64) = v16;
  *(inited + 72) = v18;
  *(inited + 80) = v19;
  sub_1A2C72A00(v14, v15, v17, v16, v18);
  v21 = sub_1A2CAA8B0(inited);
  swift_setDeallocating();
  sub_1A2C54E38(inited + 32, &qword_1EB0A0728, &qword_1A2D0BB50);
  v22 = sub_1A2CAA8B0(MEMORY[0x1E69E7CC0]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v30;
  *(a9 + 24) = v29;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 88) = v21;
  *(a9 + 96) = v22;
  *(a9 + 112) = *a7;
  *(a9 + 128) = *(a7 + 16);
  *(a9 + 104) = a8;
  *(a9 + 136) = a10;
  *(a9 + 137) = a11;
  v23 = type metadata accessor for ActivityDescriptor(0);
  v24 = v23[15];
  v25 = sub_1A2D07F94();
  result = (*(*(v25 - 8) + 32))(a9 + v24, a12, v25);
  v27 = (a9 + v23[16]);
  *v27 = 0;
  v27[1] = 0;
  v28 = (a9 + v23[17]);
  *v28 = 0;
  v28[1] = 0;
  *(a9 + v23[18]) = 4;
  *(a9 + 48) = v14;
  *(a9 + 56) = v15;
  *(a9 + 64) = v17 & 1;
  *(a9 + 65) = BYTE1(v17) & 1;
  *(a9 + 66) = BYTE2(v17) & 1;
  *(a9 + 67) = BYTE3(v17) & 1;
  *(a9 + 72) = v16;
  *(a9 + 80) = v18;
  return result;
}

uint64_t ActivityDescriptor.init(id:attributesType:attributesData:platterTarget:presentationOptions:contentSources:isEphemeral:isMomentary:createdDate:deviceIdentifier:protectionClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v31 = a3[1];
  v32 = *a3;
  v16 = *a6;
  v17 = *(a6 + 8);
  v19 = *(a6 + 16);
  v18 = *(a6 + 24);
  v20 = *(a6 + 32);
  v21 = *(a6 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0720, &unk_1A2D17D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A2D0AD20;
  *(inited + 32) = 0;
  *(inited + 40) = v16;
  *(inited + 48) = v17;
  *(inited + 56) = v19;
  *(inited + 64) = v18;
  *(inited + 72) = v20;
  *(inited + 80) = v21;
  sub_1A2C72A00(v16, v17, v19, v18, v20);
  v23 = sub_1A2CAA8B0(inited);
  swift_setDeallocating();
  sub_1A2C54E38(inited + 32, &qword_1EB0A0728, &qword_1A2D0BB50);
  v24 = sub_1A2CAA8B0(MEMORY[0x1E69E7CC0]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v32;
  *(a9 + 24) = v31;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 88) = v23;
  *(a9 + 96) = v24;
  *(a9 + 112) = *a7;
  *(a9 + 128) = *(a7 + 16);
  *(a9 + 104) = a8;
  *(a9 + 136) = a10;
  *(a9 + 137) = a11;
  v25 = type metadata accessor for ActivityDescriptor(0);
  v26 = v25[15];
  v27 = sub_1A2D07F94();
  result = (*(*(v27 - 8) + 32))(a9 + v26, a12, v27);
  v29 = (a9 + v25[16]);
  *v29 = a13;
  v29[1] = a14;
  v30 = (a9 + v25[17]);
  *v30 = 0;
  v30[1] = 0;
  *(a9 + v25[18]) = 4;
  *(a9 + 48) = v16;
  *(a9 + 56) = v17;
  *(a9 + 64) = v19 & 1;
  *(a9 + 65) = BYTE1(v19) & 1;
  *(a9 + 66) = BYTE2(v19) & 1;
  *(a9 + 67) = BYTE3(v19) & 1;
  *(a9 + 72) = v18;
  *(a9 + 80) = v20;
  return result;
}

uint64_t ActivityDescriptor.init(id:attributesType:attributesData:platterTarget:presentationOptions:contentSources:isEphemeral:isMomentary:isImportant:createdDate:deviceIdentifier:protectionClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v31 = a3[1];
  v32 = *a3;
  v16 = *a6;
  v17 = *(a6 + 8);
  v19 = *(a6 + 16);
  v18 = *(a6 + 24);
  v20 = *(a6 + 32);
  v21 = *(a6 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0720, &unk_1A2D17D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A2D0AD20;
  *(inited + 32) = 0;
  *(inited + 40) = v16;
  *(inited + 48) = v17;
  *(inited + 56) = v19;
  *(inited + 64) = v18;
  *(inited + 72) = v20;
  *(inited + 80) = v21;
  sub_1A2C72A00(v16, v17, v19, v18, v20);
  v23 = sub_1A2CAA8B0(inited);
  swift_setDeallocating();
  sub_1A2C54E38(inited + 32, &qword_1EB0A0728, &qword_1A2D0BB50);
  v24 = sub_1A2CAA8B0(MEMORY[0x1E69E7CC0]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v32;
  *(a9 + 24) = v31;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 88) = v23;
  *(a9 + 96) = v24;
  *(a9 + 112) = *a7;
  *(a9 + 128) = *(a7 + 16);
  *(a9 + 104) = a8;
  *(a9 + 136) = a10;
  *(a9 + 137) = a11;
  v25 = type metadata accessor for ActivityDescriptor(0);
  v26 = v25[15];
  v27 = sub_1A2D07F94();
  result = (*(*(v27 - 8) + 32))(a9 + v26, a12, v27);
  v29 = (a9 + v25[16]);
  *v29 = a13;
  v29[1] = a14;
  v30 = (a9 + v25[17]);
  *v30 = 0;
  v30[1] = 0;
  *(a9 + v25[18]) = 4;
  *(a9 + 48) = v16;
  *(a9 + 56) = v17;
  *(a9 + 64) = v19 & 1;
  *(a9 + 65) = BYTE1(v19) & 1;
  *(a9 + 66) = BYTE2(v19) & 1;
  *(a9 + 67) = BYTE3(v19) & 1;
  *(a9 + 72) = v18;
  *(a9 + 80) = v20;
  return result;
}

__n128 ActivityDescriptor.init(id:attributesType:attributesData:sceneTargets:requester:presentationOptions:contentSources:isEphemeral:isMomentary:isImportant:createdDate:deviceIdentifier:protectionClass:localizedAppName:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19)
{
  v25 = *a3;
  v24 = a3[1];
  v26 = sub_1A2CAA8B0(MEMORY[0x1E69E7CC0]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v25;
  *(a9 + 24) = v24;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 88) = a6;
  *(a9 + 96) = v26;
  *(a9 + 112) = *a8;
  *(a9 + 128) = *(a8 + 16);
  *(a9 + 104) = a10;
  *(a9 + 136) = a11;
  *(a9 + 137) = a12;
  *(a9 + 138) = a13;
  v27 = type metadata accessor for ActivityDescriptor(0);
  v28 = v27[15];
  v29 = sub_1A2D07F94();
  (*(*(v29 - 8) + 32))(a9 + v28, a14, v29);
  v30 = (a9 + v27[16]);
  *v30 = a15;
  v30[1] = a16;
  v31 = (a9 + v27[17]);
  *v31 = a18;
  v31[1] = a19;
  *(a9 + v27[18]) = a17;
  *(a9 + 80) = *(a7 + 32);
  result = *(a7 + 16);
  *(a9 + 48) = *a7;
  *(a9 + 64) = result;
  return result;
}

uint64_t sub_1A2D05F7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A2D073D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A2D05FA4(uint64_t a1)
{
  v2 = sub_1A2C6FCAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D05FE0(uint64_t a1)
{
  v2 = sub_1A2C6FCAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2D0601C(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C60E98(&qword_1ED708D60, type metadata accessor for ActivityDescriptor, &protocol conformance descriptor for ActivityDescriptor);
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

uint64_t sub_1A2D06104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0210, &unk_1A2D0ACA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v8 = sub_1A2D07F44();
  v10 = v9;
  sub_1A2C60E98(&qword_1ED709430, type metadata accessor for ActivityDescriptor, &protocol conformance descriptor for ActivityDescriptor);
  sub_1A2D07E64();
  sub_1A2C54E38(a2, &qword_1EB0A0210, &unk_1A2D0ACA0);
  sub_1A2C55840(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1A2C639DC(v7, a2, &qword_1EB0A0210, &unk_1A2D0ACA0);
}

uint64_t sub_1A2D06300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB0000000073726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2D0638C(uint64_t a1)
{
  v2 = sub_1A2D06BDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D063C8(uint64_t a1)
{
  v2 = sub_1A2D06BDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCCodableActivityDescriptors.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F88, &unk_1A2D17DC0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2D06BDC();

  sub_1A2D08C74();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0158, &qword_1A2D0A860);
  sub_1A2D06C30(&qword_1EB09EB28, &qword_1ED708D60, &protocol conformance descriptor for ActivityDescriptor, MEMORY[0x1E69E6300]);
  sub_1A2D08AE4();

  return (*(v4 + 8))(v6, v3);
}

uint64_t XPCCodableActivityDescriptors.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F90, &qword_1A2D17DD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2D06BDC();
  sub_1A2D08C64();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0158, &qword_1A2D0A860);
    sub_1A2D06C30(&qword_1EB09EB18, &qword_1ED709430, &protocol conformance descriptor for ActivityDescriptor, MEMORY[0x1E69E6330]);
    sub_1A2D08A54();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A2D06798(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2D06DF8();
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

uint64_t sub_1A2D06894(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A09A8, &unk_1A2D0D150);
    v2 = sub_1A2D08984();
    v19 = v2;
    sub_1A2D08914();
    v3 = sub_1A2D08934();
    if (v3)
    {
      v4 = v3;
      sub_1A2C569A0(0, &qword_1ED7088C8, off_1E76B6508);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1A2C569A0(0, &unk_1EB09F4F0, 0x1E696AD98);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1A2C82FF4(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1A2D087B4();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1A2D08934();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

unint64_t sub_1A2D06AE0()
{
  result = qword_1EB0A1F68;
  if (!qword_1EB0A1F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1F68);
  }

  return result;
}

unint64_t sub_1A2D06B34()
{
  result = qword_1ED708DF0[0];
  if (!qword_1ED708DF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED708DF0);
  }

  return result;
}

unint64_t sub_1A2D06B88()
{
  result = qword_1ED7094E0;
  if (!qword_1ED7094E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7094E0);
  }

  return result;
}

unint64_t sub_1A2D06BDC()
{
  result = qword_1EB09F290;
  if (!qword_1EB09F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F290);
  }

  return result;
}

uint64_t sub_1A2D06C30(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0158, &qword_1A2D0A860);
    sub_1A2C60E98(a2, type metadata accessor for ActivityDescriptor, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A2D06D14(void *a1)
{
  a1[1] = sub_1A2C60E98(&qword_1ED709430, type metadata accessor for ActivityDescriptor, &protocol conformance descriptor for ActivityDescriptor);
  a1[2] = sub_1A2C60E98(&qword_1ED708D60, type metadata accessor for ActivityDescriptor, &protocol conformance descriptor for ActivityDescriptor);
  result = sub_1A2C60E98(&qword_1ED708958, type metadata accessor for ActivityDescriptor, &protocol conformance descriptor for ActivityDescriptor);
  a1[3] = result;
  return result;
}

unint64_t sub_1A2D06DC0(void *a1)
{
  a1[1] = sub_1A2CA0420();
  a1[2] = sub_1A2D06DF8();
  result = sub_1A2D06E4C();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2D06DF8()
{
  result = qword_1EB09EE70;
  if (!qword_1EB09EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EE70);
  }

  return result;
}

unint64_t sub_1A2D06E4C()
{
  result = qword_1EB09EE68;
  if (!qword_1EB09EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EE68);
  }

  return result;
}

unint64_t sub_1A2D06F04()
{
  result = qword_1EB0A1F98;
  if (!qword_1EB0A1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1F98);
  }

  return result;
}

unint64_t sub_1A2D06F5C()
{
  result = qword_1EB0A1FA0;
  if (!qword_1EB0A1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1FA0);
  }

  return result;
}

unint64_t sub_1A2D06FB4()
{
  result = qword_1EB0A1FA8;
  if (!qword_1EB0A1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1FA8);
  }

  return result;
}

unint64_t sub_1A2D0700C()
{
  result = qword_1EB0A1FB0;
  if (!qword_1EB0A1FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1FB0);
  }

  return result;
}

unint64_t sub_1A2D07064()
{
  result = qword_1EB09F280;
  if (!qword_1EB09F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F280);
  }

  return result;
}

unint64_t sub_1A2D070BC()
{
  result = qword_1EB09F288;
  if (!qword_1EB09F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F288);
  }

  return result;
}

unint64_t sub_1A2D07114()
{
  result = qword_1ED7097B8;
  if (!qword_1ED7097B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7097B8);
  }

  return result;
}

unint64_t sub_1A2D0716C()
{
  result = qword_1ED7097C0;
  if (!qword_1ED7097C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7097C0);
  }

  return result;
}

unint64_t sub_1A2D071C4()
{
  result = qword_1ED709540;
  if (!qword_1ED709540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709540);
  }

  return result;
}

unint64_t sub_1A2D0721C()
{
  result = qword_1ED709548;
  if (!qword_1ED709548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709548);
  }

  return result;
}

unint64_t sub_1A2D07274()
{
  result = qword_1ED709530;
  if (!qword_1ED709530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709530);
  }

  return result;
}

unint64_t sub_1A2D072CC()
{
  result = qword_1ED709538;
  if (!qword_1ED709538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709538);
  }

  return result;
}

unint64_t sub_1A2D07324()
{
  result = qword_1ED709558;
  if (!qword_1ED709558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709558);
  }

  return result;
}

unint64_t sub_1A2D0737C()
{
  result = qword_1ED709560;
  if (!qword_1ED709560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709560);
  }

  return result;
}

uint64_t sub_1A2D073D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEE00657079547365 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEE00617461447365 || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5472657474616C70 && a2 == 0xED00007465677261 || (sub_1A2D08B34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xE900000000000072 || (sub_1A2D08B34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726154656E656373 && a2 == 0xEC00000073746567 || (sub_1A2D08B34() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A2D1B060 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x53746E65746E6F63 && a2 == 0xEE0073656372756FLL || (sub_1A2D08B34() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A2D1B020 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656D656870457369 && a2 == 0xEB000000006C6172 || (sub_1A2D08B34() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746E656D6F4D7369 && a2 == 0xEB00000000797261 || (sub_1A2D08B34() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x74726F706D497369 && a2 == 0xEB00000000746E61 || (sub_1A2D08B34() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4464657461657263 && a2 == 0xEB00000000657461 || (sub_1A2D08B34() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A2D19700 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A2D1B580 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x69746365746F7270 && a2 == 0xEF7373616C436E6FLL)
  {

    return 15;
  }

  else
  {
    v6 = sub_1A2D08B34();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t static OpaqueObjectiveCBridgable<>._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1A2D087E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v10 = sub_1A2D07F44();
  v12 = v11;
  sub_1A2D07E64();
  (*(v7 + 8))(a2, v6);
  sub_1A2C55840(v10, v12);

  (*(*(a3 - 8) + 56))(v9, 0, 1, a3);
  return (*(v7 + 32))(a2, v9, v6);
}

BOOL static OpaqueObjectiveCBridgable<>._conditionallyBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1A2D087E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v22 = *(v7 + 8);
  v23 = a2;
  v22(a2, v6, v11);
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v14 = sub_1A2D07F44();
  v16 = v15;
  sub_1A2D07E64();

  sub_1A2C55840(v14, v16);
  v17 = *(a3 - 8);
  (*(v17 + 56))(v13, 0, 1, a3);
  v18 = v23;
  (*(v7 + 32))(v23, v13, v6);
  (*(v7 + 16))(v9, v18, v6);
  v19 = (*(v17 + 48))(v9, 1, a3) != 1;
  (v22)(v9, v6);
  return v19;
}