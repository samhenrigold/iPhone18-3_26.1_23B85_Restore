uint64_t sub_24B160794(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 280) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 288) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 288) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

unint64_t sub_24B160854()
{
  result = qword_27EFCD400;
  if (!qword_27EFCD400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD3E8, &qword_24B2ED988);
    sub_24B1608E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD400);
  }

  return result;
}

unint64_t sub_24B1608E0()
{
  result = qword_27EFCD408;
  if (!qword_27EFCD408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD3E0, &qword_24B2ED918);
    sub_24B16099C();
    sub_24B160A58(&qword_27EFCD420, type metadata accessor for PulseAnimation, &protocol conformance descriptor for PulseAnimation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD408);
  }

  return result;
}

unint64_t sub_24B16099C()
{
  result = qword_27EFCD410;
  if (!qword_27EFCD410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC200, &qword_24B2ED910);
    sub_24B160A58(&qword_27EFCD418, type metadata accessor for AnnotationPin, &protocol conformance descriptor for AnnotationPin);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD410);
  }

  return result;
}

uint64_t sub_24B160A58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

FindMyUICore::PinCircleShape __swiftcall PinCircleShape.init(showTail:)(Swift::Bool showTail)
{
  v2 = 0.0;
  v3 = 1.0;
  if (showTail)
  {
    v2 = 1.0;
  }

  *v1 = v2;
  v4 = 0.1485;
  *(v1 + 8) = xmmword_24B2E8220;
  *(v1 + 24) = 0x3FBE978D4FDF3B64;
  result.tipHeightMultiplier = v3;
  result.showTailPercentage = v4;
  return result;
}

double (*PinCircleShape.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_24B160B14;
}

double sub_24B160B14(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

double PinCircleShape.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CGRectGetWidth(*&a2);
  sub_24B2D4554();
  sub_24B2D4534();
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetWidth(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetHeight(v19);
  sub_24B2D4544();
  sub_24B2D4514();
  sub_24B160E44(v14);
  sub_24B160E44(v13);
  sub_24B160E44(v12);
  result = *&v15;
  v11 = v16;
  *a1 = v15;
  *(a1 + 16) = v11;
  *(a1 + 32) = v17;
  return result;
}

double PinCircleShape.sizeThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a4 & 1) != 0 || (result = *&a3 / (*v4 * v4[3] + 1.0), (a2 & 1) == 0) && result > *&a1)
  {
    result = *&a1;
    if (a2)
    {
      return 50.0;
    }
  }

  return result;
}

uint64_t sub_24B160D5C(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  sub_24B2D4504();
  sub_24B2D4524();
  sub_24B2D4524();
  return sub_24B2D44F4();
}

unint64_t sub_24B160E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD428;
  if (!qword_27EFCD428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD428);
  }

  return result;
}

unint64_t sub_24B160EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD430;
  if (!qword_27EFCD430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD430);
  }

  return result;
}

double sub_24B160F48@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  PinCircleShape.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

double (*sub_24B160FA8(void *a1))(uint64_t)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_24B161164;
}

unint64_t sub_24B160FDC()
{
  result = qword_27EFCD438;
  if (!qword_27EFCD438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD440, &qword_24B2EDBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD438);
  }

  return result;
}

uint64_t sub_24B161040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B0F6694(a1, a2, a3);

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24B1610A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B0F6694(a1, a2, a3);

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24B161108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24B0F6694(a1, a2, a3);

  return MEMORY[0x282133738](a1, v4);
}

double PinRectangleShape.init(showTail:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v2 = 0.0;
  if (a1)
  {
    v2 = 1.0;
  }

  *a2 = v2;
  result = 0.123;
  *(a2 + 8) = xmmword_24B2E8230;
  *(a2 + 24) = 0x3FD212878C50DBBBLL;
  return result;
}

double (*PinRectangleShape.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_24B160B14;
}

double PinRectangleShape.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = sub_24B2D3DC4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v16 = v5[1];
  v17 = v5[2];
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  Width = CGRectGetWidth(v36);
  v21[2] = 0;
  v21[3] = 0;
  v22 = v17 * Width * 0.5;
  v23 = v15 * (v16 * Width);
  v24 = (v15 * 0.2 + 0.6) * v22;
  v25 = v16 * Width * 0.0 + v15 * (v16 * Width * 0.09 - v16 * Width * 0.0);
  v26 = v17 * Width * 0.11024725;
  v27 = 0;
  v28 = v17 * Width;
  v29 = 0;
  sub_24B2D4554();
  sub_24B2D4534();
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  CGRectGetWidth(v37);
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetHeight(v38);
  (*(v12 + 104))(v14, *MEMORY[0x277CE0118], v11);
  sub_24B2D44E4();
  sub_24B2D4514();
  sub_24B160E44(&v32);
  sub_24B160E44(&v31);
  sub_24B160E44(&v30);
  result = *&v33;
  v20 = v34;
  *a1 = v33;
  *(a1 + 16) = v20;
  *(a1 + 32) = v35;
  return result;
}

double PinRectangleShape.sizeThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a4 & 1) != 0 || (result = *&a3 / (*v4 * v4[1] + 1.0), (a2 & 1) == 0) && result > *&a1)
  {
    result = *&a1;
    if (a2)
    {
      return 50.0;
    }
  }

  return result;
}

unint64_t sub_24B1614C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD448;
  if (!qword_27EFCD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD448);
  }

  return result;
}

unint64_t sub_24B16151C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD450;
  if (!qword_27EFCD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD450);
  }

  return result;
}

double sub_24B161570@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  PinRectangleShape.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

unint64_t sub_24B1615D0()
{
  result = qword_27EFCD458;
  if (!qword_27EFCD458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD460, &qword_24B2EDCE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD458);
  }

  return result;
}

uint64_t sub_24B161634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B0F6640(a1, a2, a3);

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24B161698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B0F6640(a1, a2, a3);

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24B1616FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24B0F6640(a1, a2, a3);

  return MEMORY[0x282133738](a1, v4);
}

uint64_t type metadata accessor for CustomMapCameraPosition(uint64_t a1)
{
  result = qword_27EFCD468;
  if (!qword_27EFCD468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B1617A4(uint64_t a1)
{
  result = sub_24B2D2DE4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24B161810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  v9 = v8;
  v62 = a2;
  v15 = type metadata accessor for Annotation(0);
  *&v63 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = &v61 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v61 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v61 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD480, &qword_24B2EDDB8);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v61 - v31;
  v33 = type metadata accessor for CustomMapCameraPosition(0);
  MEMORY[0x28223BE20](v33);
  v35 = (&v61 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B162338(v9, v35, type metadata accessor for CustomMapCameraPosition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v37 = sub_24B2D2DE4();
      return (*(*(v37 - 8) + 32))(v62, v35, v37);
    }

    else
    {
      v45 = *(a1 + 16);
      v46 = MEMORY[0x277D84F90];
      if (v45)
      {
        v64 = MEMORY[0x277D84F90];
        sub_24B007A0C(0, v45, 0);
        v46 = v64;
        v47 = a1 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
        v48 = *(v63 + 72);
        do
        {
          sub_24B162338(v47, v26, type metadata accessor for Annotation);
          v63 = *(v26 + 2);
          sub_24B1623A0(v26, type metadata accessor for Annotation);
          v64 = v46;
          v50 = *(v46 + 16);
          v49 = *(v46 + 24);
          if (v50 >= v49 >> 1)
          {
            sub_24B007A0C((v49 > 1), v50 + 1, 1);
            v46 = v64;
          }

          *(v46 + 16) = v50 + 1;
          *(v46 + 16 * v50 + 32) = v63;
          v47 += v48;
          --v45;
        }

        while (v45);
      }

      sub_24B163FD8(v46, &v64, a5, a6, a7, a8);
      if (v65)
      {
        v51 = sub_24B2D2DE4();
        v52 = *(v51 - 8);
        (*(v52 + 56))(v32, 1, 1, v51);
        sub_24B2D2DD4();
        result = (*(v52 + 48))(v32, 1, v51);
        if (result != 1)
        {
          return sub_24AFF8258(v32, &qword_27EFCD480, &qword_24B2EDDB8);
        }
      }

      else
      {
        sub_24B2D2DA4();
        v53 = sub_24B2D2DE4();
        v54 = *(v53 - 8);
        (*(v54 + 56))(v32, 0, 1, v53);
        return (*(v54 + 32))(v62, v32, v53);
      }
    }
  }

  else
  {
    v39 = v35[1];
    v40 = *(a1 + 16);
    if (v40)
    {
      v41 = *v35;
      v42 = a1 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
      v43 = *(v63 + 72);
      while (1)
      {
        sub_24B162338(v42, v17, type metadata accessor for Annotation);
        v44 = *v17 == v41 && v17[1] == v39;
        if (v44 || (sub_24B2D6004() & 1) != 0)
        {
          break;
        }

        sub_24B1623A0(v17, type metadata accessor for Annotation);
        v42 += v43;
        if (!--v40)
        {
          goto LABEL_12;
        }
      }

      sub_24B162400(v17, v20);
      sub_24B162400(v20, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80C0, &unk_24B2DFD20);
      v55 = swift_allocObject();
      v56 = *(v23 + 2);
      *(v55 + 16) = xmmword_24B2DE430;
      *(v55 + 32) = v56;
      sub_24B163FD8(v55, &v64, a5, a6, a7, a8);
      if (v65)
      {
        v57 = sub_24B2D2DE4();
        v58 = *(v57 - 8);
        (*(v58 + 56))(v29, 1, 1, v57);
        sub_24B2D2DD4();
        sub_24B1623A0(v23, type metadata accessor for Annotation);
        result = (*(v58 + 48))(v29, 1, v57);
        if (result != 1)
        {
          return sub_24AFF8258(v29, &qword_27EFCD480, &qword_24B2EDDB8);
        }
      }

      else
      {
        sub_24B2D2DA4();
        v59 = sub_24B2D2DE4();
        v60 = *(v59 - 8);
        (*(v60 + 56))(v29, 0, 1, v59);
        sub_24B1623A0(v23, type metadata accessor for Annotation);
        return (*(v60 + 32))(v62, v29, v59);
      }
    }

    else
    {
LABEL_12:

      return sub_24B2D2DD4();
    }
  }

  return result;
}

uint64_t sub_24B161F90(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D2DE4();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CustomMapCameraPosition(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v27 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD478, &qword_24B2EDDB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v27 - v14;
  v17 = (&v27 + *(v16 + 56) - v14);
  sub_24B162338(a1, &v27 - v14, type metadata accessor for CustomMapCameraPosition);
  sub_24B162338(a2, v17, type metadata accessor for CustomMapCameraPosition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_24B162338(v15, v12, type metadata accessor for CustomMapCameraPosition);
    v23 = *v12;
    v22 = v12[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v23 == *v17 && v22 == v17[1])
      {
      }

      else
      {
        v25 = sub_24B2D6004();

        if ((v25 & 1) == 0)
        {
          sub_24B1623A0(v15, type metadata accessor for CustomMapCameraPosition);
          goto LABEL_11;
        }
      }

LABEL_19:
      sub_24B1623A0(v15, type metadata accessor for CustomMapCameraPosition);
      v20 = 1;
      return v20 & 1;
    }

LABEL_10:
    sub_24AFF8258(v15, &qword_27EFCD478, &qword_24B2EDDB0);
LABEL_11:
    v20 = 0;
    return v20 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  sub_24B162338(v15, v9, type metadata accessor for CustomMapCameraPosition);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v28 + 8))(v9, v4);
    goto LABEL_10;
  }

  v19 = v28;
  (*(v28 + 32))(v6, v17, v4);
  v20 = sub_24B2D2D94();
  v21 = *(v19 + 8);
  v21(v6, v4);
  v21(v9, v4);
  sub_24B1623A0(v15, type metadata accessor for CustomMapCameraPosition);
  return v20 & 1;
}

uint64_t sub_24B162338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1623A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B162400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Annotation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B162484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD488;
  if (!qword_27EFCD488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD488);
  }

  return result;
}

uint64_t (*EnvironmentValues.customMapControlVisibility.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  *a1 = v3;
  a1[1] = sub_24B162484(a1, a2, a3);
  sub_24B2D3C74();
  return sub_24B162558;
}

uint64_t sub_24B162584(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_24B2D3C74();
  return v3;
}

unint64_t sub_24B1625CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD490;
  if (!qword_27EFCD490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD490);
  }

  return result;
}

uint64_t (*EnvironmentValues.customMapFocusButtonVisibility.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  *a1 = v3;
  a1[1] = sub_24B1625CC(a1, a2, a3);
  sub_24B2D3C74();
  return sub_24B1626E8;
}

unint64_t sub_24B162744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD498;
  if (!qword_27EFCD498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD498);
  }

  return result;
}

uint64_t static CustomMapIsFocusedPreferenceKey.reduce(value:nextValue:)(_BYTE *a1, uint64_t (*a2)(void))
{
  if (*a1 == 1)
  {
    result = a2();
  }

  else
  {
    result = 0;
  }

  *a1 = result & 1;
  return result;
}

_BYTE *sub_24B1627F0(_BYTE *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result == 1)
  {
    result = a2(&v4);
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

uint64_t EnvironmentValues.customMapIsFocused.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B162888(a1, a2, a3);
  sub_24B2D3C74();
  return v4;
}

unint64_t sub_24B162888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD4A0;
  if (!qword_27EFCD4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD4A0);
  }

  return result;
}

uint64_t (*EnvironmentValues.customMapIsFocused.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *a1 = v3;
  *(a1 + 8) = sub_24B162888(a1, a2, a3);
  sub_24B2D3C74();
  *(a1 + 16) = *(a1 + 17);
  return sub_24B162980;
}

uint64_t type metadata accessor for CustomMapFocusButton(uint64_t a1)
{
  result = qword_27EFCD4B0;
  if (!qword_27EFCD4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B162A3C(uint64_t a1)
{
  sub_24B07A804();
  if (v1 <= 0x3F)
  {
    sub_24B162AD0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B162AD0(uint64_t a1)
{
  if (!qword_27EFCD4C0)
  {
    sub_24B2D3364();
    v1 = sub_24B2D3374();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFCD4C0);
    }
  }
}

uint64_t sub_24B162B54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAA68, &qword_24B2E5D90);
  MEMORY[0x28223BE20](v4 - 8);
  v77 = &v64 - v5;
  v6 = sub_24B2D3364();
  v82 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v81 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v79 = (&v64 - v9);
  MEMORY[0x28223BE20](v10);
  v78 = &v64 - v11;
  MEMORY[0x28223BE20](v12);
  v76 = (&v64 - v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v64 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = (&v64 - v18);
  v20 = type metadata accessor for CustomMapFocusButton(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD4C8, &qword_24B2EDFE0);
  v74 = *(v23 - 8);
  v75 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v64 - v24;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD4D0, &qword_24B2EDFE8);
  MEMORY[0x28223BE20](v73);
  v83 = &v64 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD4D8, &unk_24B2EDFF0);
  MEMORY[0x28223BE20](v27);
  v33 = MEMORY[0x28223BE20](v28);
  if (*v2)
  {
    v34 = *(v30 + 56);

    return v34(a1, 1, 1, v33);
  }

  else
  {
    v64 = &v64 - v31;
    v65 = v32;
    v66 = v30;
    v67 = v29;
    v68 = a1;
    sub_24B163814(v2, &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v36 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v37 = swift_allocObject();
    sub_24B163878(&v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD4E8, &qword_24B2EE000);
    sub_24B16393C();
    sub_24B2D4D34();
    v38 = *(v20 + 24);
    v80 = v2;
    v72 = v38;
    sub_24B163AC8(&qword_27EFCD4E0, &qword_24B2EE4E0, MEMORY[0x277CDF450], v19);
    v39 = v82;
    v71 = *(v82 + 32);
    v71(v16, v19, v6);
    v40 = *(v39 + 88);
    v41 = v40(v16, v6);
    v42 = *MEMORY[0x277CDF418];
    v43 = *MEMORY[0x277CDF438];
    v44 = *MEMORY[0x277CDF440];
    v70 = *MEMORY[0x277CDF438];
    v69 = v44;
    if (v41 != v42 && v41 != v43 && v41 != v44 && v41 != *MEMORY[0x277CDF420] && v41 != *MEMORY[0x277CDF410])
    {
      (*(v39 + 8))(v16, v6);
    }

    sub_24B2D43D4();
    v45 = sub_24B2D43B4();
    v46 = v77;
    (*(*(v45 - 8) + 56))(v77, 1, 1, v45);
    v47 = sub_24B2D4404();
    sub_24B107AC8(v46);
    KeyPath = swift_getKeyPath();
    v49 = v83;
    (*(v74 + 32))(v83, v25, v75);
    v50 = (v49 + *(v73 + 36));
    *v50 = KeyPath;
    v50[1] = v47;
    v51 = v76;
    sub_24B163AC8(&qword_27EFCD4E0, &qword_24B2EE4E0, MEMORY[0x277CDF450], v76);
    v52 = v78;
    v71(v78, v51, v6);
    v53 = v40(v52, v6);
    if (v53 == v42)
    {
      v54 = v68;
      v55 = v81;
    }

    else
    {
      v54 = v68;
      v55 = v81;
      if (v53 != v70 && v53 != v69 && v53 != *MEMORY[0x277CDF420] && v53 != *MEMORY[0x277CDF410])
      {
        (*(v82 + 8))(v52, v6);
      }
    }

    v56 = v79;
    sub_24B163AC8(&qword_27EFCD4E0, &qword_24B2EE4E0, MEMORY[0x277CDF450], v79);
    v71(v55, v56, v6);
    v57 = v40(v55, v6);
    if (v57 != v42 && v57 != v70 && v57 != v69 && v57 != *MEMORY[0x277CDF420] && v57 != *MEMORY[0x277CDF410])
    {
      (*(v82 + 8))(v55, v6);
    }

    sub_24B2D5064();
    sub_24B2D3494();
    v58 = v65;
    sub_24B0391CC(v83, v65, &qword_27EFCD4D0, &qword_24B2EDFE8);
    v59 = v67;
    v60 = (v58 + *(v67 + 36));
    v61 = v85;
    *v60 = v84;
    v60[1] = v61;
    v60[2] = v86;
    v62 = v58;
    v63 = v64;
    sub_24B0391CC(v62, v64, &qword_27EFCD4D8, &unk_24B2EDFF0);
    sub_24B0391CC(v63, v54, &qword_27EFCD4D8, &unk_24B2EDFF0);
    return (*(v66 + 56))(v54, 0, 1, v59);
  }
}

double sub_24B1634AC()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_24B2D50E4();
  sub_24B2D35C4();

  return result;
}

double sub_24B16359C(uint64_t a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(a1 + 8))(isCurrentExecutor);

  return result;
}

double sub_24B163644@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD4E8, &qword_24B2EE000);
  MEMORY[0x28223BE20](v2);
  v4 = v11 - v3;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_24B2D4BE4();
  sub_24B2D5064();
  sub_24B2D3904();
  v6 = &v4[*(v2 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBC28, &qword_24B2EE010);
  sub_24B2D3994();
  *v6 = 0;
  v7 = v11[2];
  *(v4 + 56) = v11[3];
  v8 = v11[5];
  *(v4 + 72) = v11[4];
  *(v4 + 88) = v8;
  *(v4 + 104) = v11[6];
  v9 = v11[1];
  *(v4 + 8) = v11[0];
  *(v4 + 24) = v9;
  *v4 = v5;
  *(v4 + 40) = v7;
  sub_24B0391CC(v4, a1, &qword_27EFCD4E8, &qword_24B2EE000);

  return result;
}

uint64_t sub_24B163814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomMapFocusButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B163878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomMapFocusButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24B1638DC()
{
  type metadata accessor for CustomMapFocusButton(0);

  return sub_24B1634AC();
}

unint64_t sub_24B16393C()
{
  result = qword_27EFCD4F0;
  if (!qword_27EFCD4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD4E8, &qword_24B2EE000);
    sub_24B1639F4();
    sub_24B039184(&qword_27EFCBC20, &qword_27EFCBC28, &qword_24B2EE010, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD4F0);
  }

  return result;
}

unint64_t sub_24B1639F4()
{
  result = qword_27EFCD4F8;
  if (!qword_27EFCD4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD500, &qword_24B2EE008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD4F8);
  }

  return result;
}

uint64_t sub_24B163AC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_24B2D3C64();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_24B008890(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_24B2D5924();
    v19 = sub_24B2D42A4();
    sub_24B2D3154();

    sub_24B2D3C54();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

unint64_t sub_24B163D5C()
{
  result = qword_27EFCD508;
  if (!qword_27EFCD508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD510, &unk_24B2EE048);
    sub_24B163DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD508);
  }

  return result;
}

unint64_t sub_24B163DE0()
{
  result = qword_27EFCD518;
  if (!qword_27EFCD518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD4D8, &unk_24B2EDFF0);
    sub_24B163E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD518);
  }

  return result;
}

unint64_t sub_24B163E6C()
{
  result = qword_27EFCD520;
  if (!qword_27EFCD520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD4D0, &qword_24B2EDFE8);
    sub_24B039184(&qword_27EFCD528, &qword_27EFCD4C8, &qword_24B2EDFE0, MEMORY[0x277CDF028]);
    sub_24B039184(&qword_27EFC8E90, &qword_27EFC8E98, &unk_24B2E4B20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD520);
  }

  return result;
}

uint64_t sub_24B163F50()
{
  v0 = sub_24B2D3184();
  __swift_allocate_value_buffer(v0, qword_27EFCD538);
  __swift_project_value_buffer(v0, qword_27EFCD538);
  return sub_24B2D3174();
}

void sub_24B163FD8(uint64_t a1@<X0>, uint64_t a2@<X8>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  if (qword_27EFC76F8 != -1)
  {
    swift_once();
  }

  v15 = sub_24B2D3184();
  __swift_project_value_buffer(v15, qword_27EFCD538);
  v16 = sub_24B2D3164();
  v17 = sub_24B2D5904();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v130[0] = v19;
    *v18 = 136315394;
    type metadata accessor for CGSize(0);
    v20 = sub_24B2D53C4();
    v22 = sub_24AFF321C(v20, v21, v130);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v126 = a5;
    v127 = a6;
    v128 = a7;
    v129 = a8;
    v23 = sub_24B2D53C4();
    v25 = sub_24AFF321C(v23, v24, v130);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_24AFD2000, v16, v17, "MKMapRect: CustomInit\n- viewSize: %s\n- edgeInsets: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v19, -1, -1);
    MEMORY[0x24C23D530](v18, -1, -1);
  }

  v26 = *(a1 + 16);
  *&v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v28 = (a1 + 40);
    *&v29 = MEMORY[0x277D84F90];
    do
    {
      v33 = *(v28 - 1);
      v34 = *v28;
      v131.latitude = v33;
      v131.longitude = *v28;
      if (CLLocationCoordinate2DIsValid(v131))
      {
        v126 = *&v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24B007A0C(0, *(v29 + 16) + 1, 1);
          *&v29 = v126;
        }

        v31 = *(v29 + 16);
        v30 = *(v29 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_24B007A0C((v30 > 1), v31 + 1, 1);
          *&v29 = v126;
        }

        *(v29 + 16) = v31 + 1;
        v32 = v29 + 16 * v31;
        *(v32 + 32) = v33;
        *(v32 + 40) = v34;
      }

      v28 += 2;
      --v26;
    }

    while (v26);
    v35 = *(a1 + 16);
  }

  else
  {
    v35 = 0;
    *&v29 = MEMORY[0x277D84F90];
  }

  v36 = *(v29 + 16);
  if (v35 == v36)
  {

    v37 = *(v29 + 16);
    if (!v37)
    {
      goto LABEL_18;
    }
  }

  else
  {

    v43 = sub_24B2D3164();
    v44 = sub_24B2D5934();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v125 = a2;
      *&v120 = COERCE_DOUBLE(swift_slowAlloc());
      v126 = *&v120;
      *v45 = 136380931;
      type metadata accessor for CLLocationCoordinate2D(0);
      v47 = v46;
      v48 = MEMORY[0x24C23BD20](a1, v46);
      v49 = v36;
      v51 = v50;

      v52 = sub_24AFF321C(v48, v51, &v126);
      v36 = v49;

      *(v45 + 4) = v52;
      *(v45 + 12) = 2081;
      v53 = MEMORY[0x24C23BD20](v29, v47);
      v55 = sub_24AFF321C(v53, v54, &v126);

      *(v45 + 14) = v55;
      _os_log_impl(&dword_24AFD2000, v43, v44, "MKMapRect: CustomInit - Invalid Coordinates\nAll: %{private}s\nValid: %{private}s", v45, 0x16u);
      swift_arrayDestroy();
      a2 = v125;
      MEMORY[0x24C23D530](v120, -1, -1);
      MEMORY[0x24C23D530](v45, -1, -1);
    }

    else
    {
    }

    v37 = *(v29 + 16);
    if (!v37)
    {
LABEL_18:

      v38 = sub_24B2D3164();
      v39 = sub_24B2D5934();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_24AFD2000, v38, v39, "MKMapRect: CustomInit - No valid coordinates", v40, 2u);
        MEMORY[0x24C23D530](v40, -1, -1);
      }

      v41 = 0uLL;
      v42 = 0uLL;
      goto LABEL_56;
    }
  }

  if (v36)
  {
    v126 = *&v27;
    sub_24B0079DC(0, v36, 0);
    *&v27 = v126;
    v56 = v29 + 40;
    v57 = v36;
    do
    {
      v60 = MKMapPointForCoordinate(*(v56 - 8));
      y = v60.y;
      x = v60.x;
      v126 = *&v27;
      v62 = *(v27 + 16);
      v61 = *(v27 + 24);
      v63 = v62 + 1;
      if (v62 >= v61 >> 1)
      {
        sub_24B0079DC((v61 > 1), v62 + 1, 1);
        y = v60.y;
        x = v60.x;
        *&v27 = v126;
      }

      *(v27 + 16) = v63;
      v64 = v27 + 16 * v62;
      *(v64 + 32) = x;
      *(v64 + 40) = y;
      v56 += 16;
      --v57;
    }

    while (v57);
  }

  else
  {
    v63 = *(v27 + 16);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_24B006AD8(0, v63, 0, v27);
  }

  MKMapRectBoundingMapPoints();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = sub_24B2D3164();
  v74 = sub_24B2D5904();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v130[0] = v76;
    *v75 = 136315138;
    v126 = v66;
    v127 = v68;
    v128 = v70;
    v129 = v72;
    type metadata accessor for MKMapRect(0);
    v77 = sub_24B2D53C4();
    v79 = sub_24AFF321C(v77, v78, v130);

    *(v75 + 4) = v79;
    _os_log_impl(&dword_24AFD2000, v73, v74, "MKMapRect: CustomInit - coordinatesBoundingMapRect: %s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x24C23D530](v76, -1, -1);
    MEMORY[0x24C23D530](v75, -1, -1);
  }

  if (v37 == 1)
  {
    v80 = 0;
    v81 = 0uLL;
  }

  else
  {
    v80 = v37 & 0x7FFFFFFFFFFFFFFELL;
    v82 = (v29 + 48);
    v81 = 0uLL;
    v83 = v37 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v81 = vaddq_f64(vaddq_f64(v81, v82[-1]), *v82);
      v82 += 2;
      v83 -= 2;
    }

    while (v83);
    if (v37 == v80)
    {
      goto LABEL_43;
    }
  }

  v84 = v37 - v80;
  v85 = (v29 + 16 * v80 + 32);
  do
  {
    v86 = *v85++;
    v81 = vaddq_f64(v81, v86);
    --v84;
  }

  while (v84);
LABEL_43:

  MKMapRectMakeWithRadialDistance();
  v88 = v87;
  v90 = v89;
  width = v91;
  height = v93;
  v95 = sub_24B2D3164();
  v96 = sub_24B2D5904();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v130[0] = v98;
    *v97 = 136315138;
    v126 = v88;
    v127 = v90;
    v128 = width;
    v129 = height;
    type metadata accessor for MKMapRect(0);
    v99 = sub_24B2D53C4();
    v101 = sub_24AFF321C(v99, v100, v130);

    *(v97 + 4) = v101;
    _os_log_impl(&dword_24AFD2000, v95, v96, "MKMapRect: CustomInit - minRadialDistanceMapRect: %s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v98);
    MEMORY[0x24C23D530](v98, -1, -1);
    MEMORY[0x24C23D530](v97, -1, -1);
  }

  if (v66 == *MEMORY[0x277CD4BB0] && v68 == *(MEMORY[0x277CD4BB0] + 8))
  {
  }

  else
  {

    if (v70 != 0.0 && v72 != 0.0)
    {
      v132.origin.x = v66;
      v132.origin.y = v68;
      v132.size.width = v70;
      v132.size.height = v72;
      v134.origin.x = v88;
      v134.origin.y = v90;
      v134.size.width = width;
      v134.size.height = height;
      v133 = MKMapRectUnion(v132, v134);
      v88 = v133.origin.x;
      v90 = v133.origin.y;
      width = v133.size.width;
      height = v133.size.height;
    }
  }

  v102 = sub_24B2D3164();
  v103 = sub_24B2D5904();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v130[0] = v105;
    *v104 = 136315138;
    v126 = v88;
    v127 = v90;
    v128 = width;
    v129 = height;
    type metadata accessor for MKMapRect(0);
    v106 = sub_24B2D53C4();
    v108 = sub_24AFF321C(v106, v107, v130);

    *(v104 + 4) = v108;
    _os_log_impl(&dword_24AFD2000, v102, v103, "MKMapRect: CustomInit - adjustedMapRect: %s", v104, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v105);
    MEMORY[0x24C23D530](v105, -1, -1);
    MEMORY[0x24C23D530](v104, -1, -1);
  }

  _MKMapRectThatFits();
  v123 = v110;
  v124 = v109;
  v121 = v111;
  v122 = v112;
  v113 = sub_24B2D3164();
  v114 = sub_24B2D5904();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v130[0] = v116;
    *v115 = 136315138;
    v126 = v124;
    v127 = v121;
    v128 = v123;
    v129 = v122;
    type metadata accessor for MKMapRect(0);
    v117 = sub_24B2D53C4();
    v119 = sub_24AFF321C(v117, v118, v130);

    *(v115 + 4) = v119;
    _os_log_impl(&dword_24AFD2000, v113, v114, "MKMapRect: CustomInit - insetMapRect: %s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v116);
    MEMORY[0x24C23D530](v116, -1, -1);
    MEMORY[0x24C23D530](v115, -1, -1);
  }

  *&v41 = v124;
  *(&v41 + 1) = v121;
  *&v42 = v123;
  *(&v42 + 1) = v122;
LABEL_56:
  *a2 = v41;
  *(a2 + 16) = v42;
  *(a2 + 32) = v37 == 0;
}

void sub_24B164A6C(uint64_t a1@<X0>, uint64_t a2@<X8>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  if (qword_27EFC76F8 != -1)
  {
    swift_once();
  }

  v13 = sub_24B2D3184();
  __swift_project_value_buffer(v13, qword_27EFCD538);
  v14 = sub_24B2D3164();
  v15 = sub_24B2D5904();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v133[0] = v17;
    *v16 = 136315394;
    type metadata accessor for CGSize(0);
    v18 = sub_24B2D53C4();
    v20 = sub_24AFF321C(v18, v19, v133);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v129 = a5;
    v130 = a6;
    v131 = a7;
    v132 = a8;
    v21 = sub_24B2D53C4();
    v23 = sub_24AFF321C(v21, v22, v133);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_24AFD2000, v14, v15, "MKMapRect: CustomInit\n- viewSize: %s\n- edgePadding: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v17, -1, -1);
    MEMORY[0x24C23D530](v16, -1, -1);
  }

  v24 = *(a1 + 16);
  *&v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v26 = (a1 + 48);
    *&v27 = MEMORY[0x277D84F90];
    do
    {
      v31 = *(v26 - 2);
      v32 = *(v26 - 1);
      v33 = *v26;
      v134.latitude = v31;
      v134.longitude = v32;
      if (CLLocationCoordinate2DIsValid(v134))
      {
        v129 = *&v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24B007A3C(0, *(v27 + 16) + 1, 1);
          *&v27 = v129;
        }

        v29 = *(v27 + 16);
        v28 = *(v27 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_24B007A3C((v28 > 1), v29 + 1, 1);
          *&v27 = v129;
        }

        *(v27 + 16) = v29 + 1;
        v30 = (v27 + 24 * v29);
        v30[4] = v31;
        v30[5] = v32;
        v30[6] = v33;
      }

      v26 += 3;
      --v24;
    }

    while (v24);
    v34 = *(a1 + 16);
  }

  else
  {
    v34 = 0;
    *&v27 = MEMORY[0x277D84F90];
  }

  v35 = *(v27 + 16);
  if (v34 == v35)
  {

    v36 = *(v27 + 16);
    if (v36)
    {
LABEL_18:
      v121 = v36;
      if (v35)
      {
        v129 = *&v25;
        sub_24B0079DC(0, v35, 0);
        *&v25 = v129;
        v37 = v27 + 40;
        v38 = v35;
        do
        {
          v41 = MKMapPointForCoordinate(*(v37 - 8));
          y = v41.y;
          x = v41.x;
          v129 = *&v25;
          v43 = *(v25 + 16);
          v42 = *(v25 + 24);
          v44 = v43 + 1;
          if (v43 >= v42 >> 1)
          {
            sub_24B0079DC((v42 > 1), v43 + 1, 1);
            y = v41.y;
            x = v41.x;
            *&v25 = v129;
          }

          *(v25 + 16) = v44;
          v45 = v25 + 16 * v43;
          *(v45 + 32) = x;
          *(v45 + 40) = y;
          v37 += 24;
          --v38;
        }

        while (v38);
      }

      else
      {
        v44 = *(v25 + 16);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24B006AD8(0, v44, 0, v25);
      }

      MKMapRectBoundingMapPoints();
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v71 = sub_24B2D3164();
      v72 = sub_24B2D5904();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v133[0] = v74;
        *v73 = 136315138;
        v129 = v64;
        v130 = v66;
        v131 = v68;
        v132 = v70;
        type metadata accessor for MKMapRect(0);
        v75 = sub_24B2D53C4();
        v77 = sub_24AFF321C(v75, v76, v133);

        *(v73 + 4) = v77;
        _os_log_impl(&dword_24AFD2000, v71, v72, "MKMapRect: CustomInit - coordinatesBoundingMapRect: %s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v74);
        MEMORY[0x24C23D530](v74, -1, -1);
        MEMORY[0x24C23D530](v73, -1, -1);
      }

      v78 = (v27 + 48);
      v79 = 0.0;
      v36 = v121;
      v80 = v121;
      v81 = 0.0;
      v82 = 0.0;
      do
      {
        v83 = *(v78 - 2);
        v84 = *(v78 - 1);
        v85 = *v78;
        v78 += 3;
        v86 = v85;
        v82 = v82 + v83;
        v81 = v81 + v84;
        if (v85 > v79)
        {
          v79 = v86;
        }

        --v80;
      }

      while (v80);

      MKMapRectMakeWithRadialDistance();
      v88 = v87;
      v90 = v89;
      width = v91;
      height = v93;
      v95 = sub_24B2D3164();
      v96 = sub_24B2D5904();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v133[0] = v98;
        *v97 = 136315138;
        v129 = v88;
        v130 = v90;
        v131 = width;
        v132 = height;
        type metadata accessor for MKMapRect(0);
        v99 = sub_24B2D53C4();
        v101 = sub_24AFF321C(v99, v100, v133);

        *(v97 + 4) = v101;
        v36 = v121;
        _os_log_impl(&dword_24AFD2000, v95, v96, "MKMapRect: CustomInit - minRadialDistanceMapRect: %s", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v98);
        MEMORY[0x24C23D530](v98, -1, -1);
        MEMORY[0x24C23D530](v97, -1, -1);
      }

      if (v64 == *MEMORY[0x277CD4BB0] && v66 == *(MEMORY[0x277CD4BB0] + 8))
      {
      }

      else
      {

        if (v68 != 0.0 && v70 != 0.0)
        {
          v135.origin.x = v64;
          v135.origin.y = v66;
          v135.size.width = v68;
          v135.size.height = v70;
          v137.origin.x = v88;
          v137.origin.y = v90;
          v137.size.width = width;
          v137.size.height = height;
          v136 = MKMapRectUnion(v135, v137);
          v88 = v136.origin.x;
          v90 = v136.origin.y;
          width = v136.size.width;
          height = v136.size.height;
        }
      }

      v102 = sub_24B2D3164();
      v103 = sub_24B2D5904();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v133[0] = v105;
        *v104 = 136315138;
        v129 = v88;
        v130 = v90;
        v131 = width;
        v132 = height;
        type metadata accessor for MKMapRect(0);
        v106 = sub_24B2D53C4();
        v108 = sub_24AFF321C(v106, v107, v133);

        *(v104 + 4) = v108;
        _os_log_impl(&dword_24AFD2000, v102, v103, "MKMapRect: CustomInit - adjustedMapRect: %s", v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v105);
        MEMORY[0x24C23D530](v105, -1, -1);
        MEMORY[0x24C23D530](v104, -1, -1);
      }

      _MKMapRectThatFits();
      v127 = v110;
      v128 = v109;
      v123 = v111;
      v125 = v112;
      v113 = sub_24B2D3164();
      v114 = sub_24B2D5904();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v133[0] = v116;
        *v115 = 136315138;
        v129 = v128;
        v130 = v123;
        v131 = v127;
        v132 = v125;
        type metadata accessor for MKMapRect(0);
        v117 = sub_24B2D53C4();
        v119 = sub_24AFF321C(v117, v118, v133);

        *(v115 + 4) = v119;
        _os_log_impl(&dword_24AFD2000, v113, v114, "MKMapRect: CustomInit - insetMapRect: %s", v115, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v116);
        MEMORY[0x24C23D530](v116, -1, -1);
        MEMORY[0x24C23D530](v115, -1, -1);
      }

      *&v61 = v128;
      *(&v61 + 1) = v123;
      *&v62 = v127;
      *(&v62 + 1) = v125;
      goto LABEL_53;
    }
  }

  else
  {

    v46 = sub_24B2D3164();
    v47 = sub_24B2D5934();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v122 = a2;
      *&v120 = COERCE_DOUBLE(swift_slowAlloc());
      v129 = *&v120;
      *v48 = 136380931;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD550, &qword_24B2EE068);
      v50 = MEMORY[0x24C23BD20](a1, v49);
      v51 = v35;
      v53 = v52;

      v54 = sub_24AFF321C(v50, v53, &v129);
      v35 = v51;

      *(v48 + 4) = v54;
      *(v48 + 12) = 2081;
      v55 = MEMORY[0x24C23BD20](v27, v49);
      v57 = sub_24AFF321C(v55, v56, &v129);

      *(v48 + 14) = v57;
      _os_log_impl(&dword_24AFD2000, v46, v47, "MKMapRect: CustomInit - Invalid Coordinates\nAll: %{private}s\nValid: %{private}s", v48, 0x16u);
      swift_arrayDestroy();
      a2 = v122;
      MEMORY[0x24C23D530](v120, -1, -1);
      MEMORY[0x24C23D530](v48, -1, -1);
    }

    else
    {
    }

    v36 = *(v27 + 16);
    if (v36)
    {
      goto LABEL_18;
    }
  }

  v58 = sub_24B2D3164();
  v59 = sub_24B2D5934();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_24AFD2000, v58, v59, "MKMapRect: CustomInit - No valid coordinates", v60, 2u);
    MEMORY[0x24C23D530](v60, -1, -1);
  }

  v61 = 0uLL;
  v62 = 0uLL;
LABEL_53:
  *a2 = v61;
  *(a2 + 16) = v62;
  *(a2 + 32) = v36 == 0;
}

uint64_t sub_24B165514()
{
  swift_getKeyPath();
  sub_24B166D24();
  sub_24B2D2584();

  if (v0[18])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[17])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | v0[16] | v1;
}

double sub_24B1655AC(unsigned int a1)
{
  if (v1[18])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (v1[17])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = a1 & 1;
  v5 = (a1 >> 8) & 1;
  v6 = HIWORD(a1) & 1;
  if (sub_24B166ACC(v3 | v1[16] | v2, a1 & 0x10101))
  {
    v1[16] = v4;
    v1[17] = v5;
    v1[18] = v6;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B166D24();
    sub_24B2D2574();
  }

  return result;
}

uint64_t sub_24B1656E4()
{
  v1 = OBJC_IVAR____TtC12FindMyUICore20CustomMapStyleLoader___observationRegistrar;
  v2 = sub_24B2D25C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustomMapStyleLoader(uint64_t a1)
{
  result = qword_27EFCD578;
  if (!qword_27EFCD578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B1657D4(uint64_t a1)
{
  result = sub_24B2D25C4();
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

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CustomMapStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for CustomMapStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_24B165990@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_24B2D3054();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D2EB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B2D2F24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_24B2D2F14();
    if ((a1 & 0x10000) != 0)
    {
      sub_24B2D3044();
      sub_24B2D2EC4();
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      sub_24B2D2EE4();
    }
  }

  else
  {
    sub_24B2D2F14();
    sub_24B2D2EA4();
    sub_24B2D3044();
    sub_24B2D2EF4();
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  return (*(v12 + 8))(v14, v11);
}

void sub_24B165C20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24B2D2E94();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    *v2 = 0;
    v6 = [v5 showsTraffic];

    v7 = sub_24B2D2F34();
    (*(*(v7 - 8) + 8))(a1, v7);
    v2[1] = v6;
    v8 = 1;
  }

  else
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v8 = 1;
      *v2 = 1;
      v10 = [v9 showsTraffic];

      v11 = sub_24B2D2F34();
      (*(*(v11 - 8) + 8))(a1, v11);
      v2[1] = v10;
    }

    else
    {
      v12 = sub_24B2D2F34();
      (*(*(v12 - 8) + 8))(a1, v12);
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();

      if (!v13)
      {
        return;
      }

      v8 = 0;
      *v2 = 1;
    }
  }

  v2[2] = v8;
}

uint64_t sub_24B165DB4()
{
  v0 = sub_24B2D3184();
  __swift_allocate_value_buffer(v0, qword_27EFCD558);
  __swift_project_value_buffer(v0, qword_27EFCD558);
  return sub_24B2D3174();
}

uint64_t sub_24B165E44(char a1)
{
  v1 = sub_24B2D2534();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_24B2D2204();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D5344();
  MEMORY[0x28223BE20](v6 - 8);
  sub_24B2D52E4();
  if (qword_27EFC7708 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_27EFE4550);
  (*(v3 + 16))(v5, v7, v2);
  sub_24B2D2524();
  return sub_24B2D2224();
}

uint64_t sub_24B166078(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (a1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (a2[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_24B166ACC(v3 | *a1 | v2, v5 | *a2 | v4);
}

uint64_t sub_24B1660CC()
{
  sub_24B2D60E4();
  sub_24B2D5404();

  return sub_24B2D6124();
}

uint64_t sub_24B166154(uint64_t a1)
{
  sub_24B2D5404();
}

uint64_t sub_24B1661C8(uint64_t a1)
{
  sub_24B2D60E4();
  sub_24B2D5404();

  return sub_24B2D6124();
}

uint64_t sub_24B16624C@<X0>(char *a2@<X8>)
{
  v3 = sub_24B2D5E14();

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

void sub_24B1662AC(uint64_t *a1@<X8>)
{
  v2 = 0x65726F6C707865;
  if (*v1)
  {
    v2 = 0x74696C6C65746173;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24B1662F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74696C6C65746173;
  }

  else
  {
    v3 = 0x65726F6C707865;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x74696C6C65746173;
  }

  else
  {
    v5 = 0x65726F6C707865;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
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
    v8 = sub_24B2D6004();
  }

  return v8 & 1;
}

uint64_t sub_24B16644C(void *a1, unsigned int a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD5D0, &qword_24B2EE2F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-v6];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B1673E8(v8, v9, v10);
  sub_24B2D6144();
  v12[15] = 0;
  sub_24B2D5F04();
  if (!v2)
  {
    v12[14] = 1;
    sub_24B2D5F04();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24B1665CC()
{
  if (*v0)
  {
    return 0x62614C73776F6873;
  }

  else
  {
    return 0x61725473776F6873;
  }
}

uint64_t sub_24B166618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61725473776F6873 && a2 == 0xEC00000063696666;
  if (v6 || (sub_24B2D6004() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x62614C73776F6873 && a2 == 0xEB00000000736C65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B2D6004();

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

uint64_t sub_24B1666FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24B1673E8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_24B166738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24B1673E8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_24B16679C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B167238(a2);
  if (!v2)
  {
    *a1 = result & 1;
    a1[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_24B1667D4(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_24B16644C(a1, v2 | *v1);
}

uint64_t sub_24B166804(uint64_t a1, char a2)
{
  if (qword_27EFC7700 != -1)
  {
    swift_once();
  }

  v3 = sub_24B2D3184();
  __swift_project_value_buffer(v3, qword_27EFCD558);
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5934();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136446210;
    v8 = a2 & 1;
    v9 = sub_24B2D53C4();
    v11 = sub_24AFF321C(v9, v10, &v27);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_24AFD2000, v4, v5, "CustomMapStyle: Save to UserDefaults (%{public}s)", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C23D530](v7, -1, -1);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  else
  {

    v8 = a2 & 1;
  }

  LOBYTE(v27) = v8;
  v15 = sub_24B166BB4(v12, v13, v14);
  sub_24B166C08(v15, v16, v17);
  sub_24B2D5944();
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_24B2D5C34();

  v27 = 0xD000000000000017;
  v28 = 0x800000024B2DC090;
  if (a2)
  {
    v18 = 0x74696C6C65746173;
  }

  else
  {
    v18 = 0x65726F6C707865;
  }

  if (a2)
  {
    v19 = 0xE900000000000065;
  }

  else
  {
    v19 = 0xE700000000000000;
  }

  MEMORY[0x24C23BC10](v18, v19);

  v23 = sub_24B166C5C(v20, v21, v22);
  sub_24B166CB0(v23, v24, v25);
  sub_24B2D5944();
}

uint64_t sub_24B166ACC(unsigned int a1, int a2)
{
  v4 = (a1 & 1) == 0;
  if (a1)
  {
    v5 = 0x74696C6C65746173;
  }

  else
  {
    v5 = 0x65726F6C707865;
  }

  if (v4)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (a2)
  {
    v7 = 0x74696C6C65746173;
  }

  else
  {
    v7 = 0x65726F6C707865;
  }

  if (a2)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v9 = sub_24B2D6004();

    result = 0;
    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  return (((a2 & 0x100) == 0) ^ (a1 >> 8)) & (((a2 & 0x10000) == 0) ^ ((a1 & 0x10000) >> 16));
}

unint64_t sub_24B166BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD588;
  if (!qword_27EFCD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD588);
  }

  return result;
}

unint64_t sub_24B166C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD590;
  if (!qword_27EFCD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD590);
  }

  return result;
}

unint64_t sub_24B166C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD598;
  if (!qword_27EFCD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD598);
  }

  return result;
}

unint64_t sub_24B166CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD5A0;
  if (!qword_27EFCD5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD5A0);
  }

  return result;
}

void sub_24B166D04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 25);
  v3 = *(v0 + 26);
  v1[16] = *(v0 + 24);
  v1[17] = v2;
  v1[18] = v3;
}

unint64_t sub_24B166D24()
{
  result = qword_27EFCD5A8;
  if (!qword_27EFCD5A8)
  {
    type metadata accessor for CustomMapStyleLoader(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD5A8);
  }

  return result;
}

uint64_t sub_24B166D7C(char a1)
{
  if (qword_27EFC7700 != -1)
  {
    swift_once();
  }

  v2 = 0xE900000000000065;
  v3 = 0x74696C6C65746173;
  v4 = sub_24B2D3184();
  __swift_project_value_buffer(v4, qword_27EFCD558);
  v5 = sub_24B2D3164();
  v6 = sub_24B2D5934();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    if ((a1 & 1) == 0)
    {
      v3 = 0x65726F6C707865;
      v2 = 0xE700000000000000;
    }

    v9 = sub_24AFF321C(v3, v2, &v19);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_24AFD2000, v5, v6, "CustomMapStyle: Load with Mode (%{public}s) from UserDefaults", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  else
  {

    if ((a1 & 1) == 0)
    {
      v3 = 0x65726F6C707865;
      v2 = 0xE700000000000000;
    }
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_24B2D5C34();

  v19 = 0xD000000000000017;
  v20 = 0x800000024B2DC090;
  MEMORY[0x24C23BC10](v3, v2);

  v13 = sub_24B166C5C(v10, v11, v12);
  sub_24B166CB0(v13, v14, v15);
  sub_24B2D5954();

  if (v21 == 2)
  {
    v16 = 0;
    v17 = 0x10000;
  }

  else
  {
    v17 = (HIBYTE(v21) & 1) << 16;
    v16 = (v21 & 1) << 8;
  }

  return v16 | a1 & 1 | v17;
}

uint64_t sub_24B166FFC()
{
  if (qword_27EFC7700 != -1)
  {
    swift_once();
  }

  v0 = sub_24B2D3184();
  __swift_project_value_buffer(v0, qword_27EFCD558);
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24AFD2000, v1, v2, "CustomMapStyle: Load from UserDefaults", v3, 2u);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v7 = sub_24B166BB4(v4, v5, v6);
  sub_24B166C08(v7, v8, v9);
  sub_24B2D5954();
  if (v11 == 2)
  {
    return 2;
  }

  else
  {
    return sub_24B166D7C(v11 & 1) & 0x10101;
  }
}

unint64_t sub_24B167190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD5B0;
  if (!qword_27EFCD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD5B0);
  }

  return result;
}

unint64_t sub_24B1671E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD5B8;
  if (!qword_27EFCD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD5B8);
  }

  return result;
}

uint64_t sub_24B167238(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD5C0, &qword_24B2EE2E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-v5];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B1673E8(v7, v8, v9);
  sub_24B2D6134();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v14[15] = 0;
  v10 = sub_24B2D5E84();
  v14[14] = 1;
  v11 = sub_24B2D5E84();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_0(a1);
  if (v11)
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 0xFFFFFFFE | v10 & 1;
}

unint64_t sub_24B1673E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD5C8;
  if (!qword_27EFCD5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD5C8);
  }

  return result;
}

unint64_t sub_24B167450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD5D8;
  if (!qword_27EFCD5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD5D8);
  }

  return result;
}

unint64_t sub_24B1674A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD5E0;
  if (!qword_27EFCD5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD5E0);
  }

  return result;
}

unint64_t sub_24B167500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD5E8;
  if (!qword_27EFCD5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD5E8);
  }

  return result;
}

void sub_24B16759C(uint64_t a1)
{
  sub_24B1676A4(319, &qword_27EFCD600, &type metadata for CustomMapStyle, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_24B1676A4(319, &qword_27EFC98D8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_24B16B190(319, &qword_27EFCD4C0, MEMORY[0x277CDF450]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B1676A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24B167710@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v84 = a1;
  v87 = sub_24B2D4074();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = (&v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for CustomMapStyleToggle(0);
  v5 = v4 - 8;
  v81 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v82 = v6;
  v83 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAA68, &qword_24B2E5D90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v69 - v8;
  v10 = sub_24B2D3364();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v76 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v74 = (&v69 - v14);
  MEMORY[0x28223BE20](v15);
  v73 = &v69 - v16;
  MEMORY[0x28223BE20](v17);
  v72 = (&v69 - v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v69 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = (&v69 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD608, &qword_24B2EE480);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v69 - v26;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD610, &qword_24B2EE488);
  MEMORY[0x28223BE20](v71);
  v75 = &v69 - v28;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD618, &qword_24B2EE490);
  MEMORY[0x28223BE20](v78);
  v77 = &v69 - v29;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD620, &qword_24B2EE498);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v92 = &v69 - v30;
  sub_24B168230(v2, v27);
  v90 = *(v5 + 32);
  sub_24B163CF0(v24);
  v91 = *(v11 + 32);
  v91(v21, v24, v10);
  v70 = v11;
  v89 = *(v11 + 88);
  v31 = v89(v21, v10);
  v32 = *MEMORY[0x277CDF418];
  v33 = *MEMORY[0x277CDF438];
  v93 = *MEMORY[0x277CDF440];
  v88 = v33;
  if (v31 == v32)
  {
    v34 = v73;
  }

  else
  {
    v34 = v73;
    if (v31 != v33 && v31 != v93 && v31 != *MEMORY[0x277CDF420] && v31 != *MEMORY[0x277CDF410])
    {
      (*(v70 + 8))(v21, v10);
    }
  }

  sub_24B2D43D4();
  v35 = sub_24B2D43B4();
  (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
  v36 = sub_24B2D4404();
  sub_24AFF8258(v9, &qword_27EFCAA68, &qword_24B2E5D90);
  KeyPath = swift_getKeyPath();
  v38 = v75;
  sub_24B0391CC(v27, v75, &qword_27EFCD608, &qword_24B2EE480);
  v39 = (v38 + *(v71 + 36));
  *v39 = KeyPath;
  v39[1] = v36;
  v40 = v72;
  sub_24B163CF0(v72);
  v91(v34, v40, v10);
  v41 = v89(v34, v10);
  if (v41 == v32)
  {
    v42 = v76;
  }

  else
  {
    v42 = v76;
    if (v41 != v88 && v41 != v93 && v41 != *MEMORY[0x277CDF420] && v41 != *MEMORY[0x277CDF410])
    {
      (*(v70 + 8))(v34, v10);
    }
  }

  v43 = v74;
  sub_24B163CF0(v74);
  v91(v42, v43, v10);
  v44 = v89(v42, v10);
  if (v44 != v32 && v44 != v88 && v44 != v93 && v44 != *MEMORY[0x277CDF420] && v44 != *MEMORY[0x277CDF410])
  {
    (*(v70 + 8))(v42, v10);
  }

  sub_24B2D5064();
  sub_24B2D3494();
  v45 = v77;
  sub_24B0391CC(v38, v77, &qword_27EFCD610, &qword_24B2EE488);
  v46 = v78;
  v47 = (v45 + *(v78 + 36));
  v48 = v100;
  *v47 = v99;
  v47[1] = v48;
  v47[2] = v101;
  v49 = *(v2 + 8);
  v50 = *(v2 + 16);
  v51 = *(v2 + 17);
  v52 = *(v2 + 18);
  v94 = *v2;
  v95 = v49;
  LOBYTE(v96) = v50;
  BYTE1(v96) = v51;
  BYTE2(v96) = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD628, &qword_24B2EE4D0);
  MEMORY[0x24C23B610](v98, v53);
  LOWORD(v94) = v98[0];
  BYTE2(v94) = BYTE2(v98[0]);
  v54 = sub_24B16AA28();
  v57 = sub_24B16ACB0(v54, v55, v56);
  sub_24B2D49B4();
  sub_24AFF8258(v45, &qword_27EFCD618, &qword_24B2EE490);
  v58 = *(v2 + 32);
  LOBYTE(v98[0]) = *(v2 + 24);
  v98[1] = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8, &qword_24B2E2930);
  sub_24B2D4CF4();
  v91 = v94;
  v93 = v96;
  sub_24B2D4344();
  v59 = v83;
  sub_24B16AD04(v2, v83);
  v60 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v61 = swift_allocObject();
  sub_24B16AD68(v59, v61 + v60);
  v62 = sub_24B2D4D14();
  v63 = v85;
  *v85 = v62;
  v64 = v86;
  v65 = v87;
  (*(v86 + 104))(v63, *MEMORY[0x277CDE248], v87);
  type metadata accessor for CustomMapStyleToggle.MapStylePickerContainer(0);
  v94 = v46;
  v95 = &type metadata for CustomMapStyle;
  v96 = v54;
  v97 = v57;
  swift_getOpaqueTypeConformance2();
  sub_24B16AE5C(&qword_27EFCD668, type metadata accessor for CustomMapStyleToggle.MapStylePickerContainer, &unk_24B2EE558);
  v66 = v80;
  v67 = v92;
  sub_24B2D4984();

  (*(v64 + 8))(v63, v65);
  return (*(v79 + 8))(v67, v66);
}

double sub_24B168230@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_24B2D3984();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD648, &qword_24B2EE4D8);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v18 - v7;
  sub_24B2D5694();
  v18[2] = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(a1 + 32);
  v28 = *(a1 + 24);
  v29 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8, &qword_24B2E2930);
  v10 = sub_24B2D4CF4();
  v18[1] = v18;
  MEMORY[0x28223BE20](v10);
  v18[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD670, &qword_24B2EE520);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD678, &qword_24B2EE528);
  v12 = sub_24B2D3D14();
  v13 = sub_24B16AEAC();
  v14 = sub_24B16AE5C(&qword_27EFCBC60, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  swift_getOpaqueTypeConformance2();
  sub_24B2D4DC4();
  sub_24B2D3974();
  sub_24B039184(&qword_27EFCD650, &qword_27EFCD648, &qword_24B2EE4D8, MEMORY[0x277CDF068]);
  sub_24B16AE5C(&qword_27EFCD658, MEMORY[0x277CDDBD0], MEMORY[0x277CDDBC8]);
  v15 = v20;
  v16 = v23;
  sub_24B2D46F4();
  (*(v22 + 8))(v5, v16);
  (*(v19 + 8))(v8, v15);

  return result;
}

double sub_24B1685DC@<D0>(uint64_t a1@<X8>)
{
  v22[2] = a1;
  v1 = sub_24B2D3D14();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9490, &qword_24B2E3740);
  v4 = *(v22[0] - 8);
  MEMORY[0x28223BE20](v22[0]);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD690, &qword_24B2EE530);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD678, &qword_24B2EE528);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  sub_24B2D5694();
  v22[1] = sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  MEMORY[0x28223BE20](v14);
  sub_24B2D4C34();
  sub_24B2D5064();
  sub_24B2D3904();
  (*(v4 + 32))(v9, v6, v22[0]);
  v15 = &v9[*(v7 + 36)];
  v16 = v30;
  *(v15 + 4) = v29;
  *(v15 + 5) = v16;
  *(v15 + 6) = v31;
  v17 = v26;
  *v15 = v25;
  *(v15 + 1) = v17;
  v18 = v28;
  *(v15 + 2) = v27;
  *(v15 + 3) = v18;
  v19 = &v12[*(v10 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBC28, &qword_24B2EE010);
  sub_24B2D3994();
  *v19 = 0;
  sub_24B16B02C(v9, v12);
  sub_24B2D3D04();
  sub_24B16AEAC();
  sub_24B16AE5C(&qword_27EFCBC60, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v20 = v24;
  sub_24B2D46C4();
  (*(v23 + 8))(v3, v20);
  sub_24AFF8258(v12, &qword_27EFCD678, &qword_24B2EE528);

  return result;
}

void sub_24B168A3C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B2D2214();
  MEMORY[0x28223BE20](v4 - 8);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *(a1 + 18);
  v18 = *a1;
  v19 = v5;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD628, &qword_24B2EE4D0);
  MEMORY[0x24C23B610](&v17, v9);
  sub_24B165E44(v17);
  v10 = sub_24B2D45F4();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
}

void sub_24B168BBC(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = *(a1 + 18);
  v11 = *a1;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD628, &qword_24B2EE4D0);
  MEMORY[0x24C23B610](&v10, v8);
  v9 = sub_24B2D4BC4();

  *a2 = v9;
}

void sub_24B168CE4(uint64_t a1, char *a2)
{
  v2 = *a2;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [objc_opt_self() standardUserDefaults];
  sub_24B166804(v3, v2);
}

uint64_t sub_24B168DE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD628, &qword_24B2EE4D0);
  sub_24B2D4E64();
  v4 = *(a1 + *(type metadata accessor for CustomMapStyleToggle(0) + 28));
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD530, &qword_24B2EE058);
  swift_storeEnumTagMultiPayload();

  result = type metadata accessor for CustomMapStyleToggle.MapStylePickerContainer(0);
  v6 = a2 + *(result + 20);
  *v6 = v7;
  *(v6 + 1) = v8;
  v6[16] = v9;
  v6[17] = v10;
  v6[18] = v11;
  *(a2 + *(result + 24)) = v4;
  return result;
}

uint64_t sub_24B168F44@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v53 = sub_24B2D40A4();
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_24B2D38A4();
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v44 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD6B8, &qword_24B2EE5A8);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v10 = v44 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD6C0, &qword_24B2EE5B0);
  MEMORY[0x28223BE20](v45);
  v12 = v44 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD6C8, &qword_24B2EE5B8);
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = v44 - v13;
  v56 = v1;
  v44[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD6D0, &qword_24B2EE5C0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD6D8, &qword_24B2EE5C8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD6E0, &qword_24B2EE5D0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD6E8, &qword_24B2EE5D8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD6F0, &qword_24B2EE5E0);
  v18 = sub_24B2D2D24();
  v19 = sub_24B16AE5C(&qword_27EFCD6F8, MEMORY[0x277CE42C0], MEMORY[0x277CE42B8]);
  *&v59 = v18;
  *(&v59 + 1) = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v59 = v17;
  *(&v59 + 1) = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  *&v59 = v16;
  *(&v59 + 1) = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD700, &qword_24B2EE5E8);
  v24 = sub_24B16B208();
  *&v59 = v23;
  *(&v59 + 1) = v24;
  v25 = swift_getOpaqueTypeConformance2();
  *&v59 = v14;
  *(&v59 + 1) = v15;
  *&v60 = v22;
  *(&v60 + 1) = v25;
  swift_getOpaqueTypeConformance2();
  sub_24B2D37C4();
  sub_24B163D18(v8);
  sub_24B2D3894();
  sub_24B2D3884();
  v26 = *(v3 + 8);
  v27 = v5;
  v28 = v46;
  v26(v27, v46);
  v26(v8, v28);
  sub_24B2D5064();
  sub_24B2D3904();
  (*(v47 + 32))(v12, v10, v48);
  v29 = v45;
  v30 = &v12[*(v45 + 36)];
  v31 = v64;
  *(v30 + 4) = v63;
  *(v30 + 5) = v31;
  *(v30 + 6) = v65;
  v32 = v60;
  *v30 = v59;
  *(v30 + 1) = v32;
  v33 = v62;
  *(v30 + 2) = v61;
  *(v30 + 3) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD720, &qword_24B2EE5F8);
  v34 = sub_24B2D3DA4();
  v35 = *(v34 - 8);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_24B2DE430;
  sub_24B2D3D94();
  sub_24B136894(v37);
  swift_setDeallocating();
  (*(v35 + 8))(v37 + v36, v34);
  swift_deallocClassInstance();
  v38 = sub_24B16B2FC();
  v39 = v49;
  sub_24B2D4804();

  sub_24AFF8258(v12, &qword_27EFCD6C0, &qword_24B2EE5B0);
  v40 = v52;
  sub_24B2D3DB4();
  v57 = v29;
  v58 = v38;
  swift_getOpaqueTypeConformance2();
  v41 = v50;
  v42 = v53;
  sub_24B2D47E4();
  (*(v54 + 8))(v40, v42);
  return (*(v51 + 8))(v39, v41);
}

double sub_24B1696C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = sub_24B2D3C94();
  v87 = *(v3 - 8);
  v88 = v3;
  MEMORY[0x28223BE20](v3);
  v86 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B2D2534();
  MEMORY[0x28223BE20](v5 - 8);
  v83 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_24B2D2204();
  v76 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B2D5344();
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B2D2214();
  v84 = *(v10 - 8);
  v85 = v10;
  MEMORY[0x28223BE20](v10);
  v72 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v82 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD738, &qword_24B2EE600);
  MEMORY[0x28223BE20](v14 - 8);
  v67 = &v64 - v15;
  v16 = sub_24B2D2F34();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_24B2D2D24();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD6F0, &qword_24B2EE5E0);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v90 = &v64 - v21;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD6E8, &qword_24B2EE5D8);
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v91 = &v64 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD6D8, &qword_24B2EE5C8);
  v80 = *(v23 - 8);
  v81 = v23;
  MEMORY[0x28223BE20](v23);
  v77 = &v64 - v24;
  sub_24B2D5694();
  v75 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD740, &qword_24B2EE608);
  sub_24B2D2D04();
  *(swift_allocObject() + 16) = xmmword_24B2DEAD0;
  sub_24B2D2F04();
  sub_24B2D2CE4();
  v25 = *(v17 + 8);
  v25(v19, v16);
  sub_24B2D2ED4();
  sub_24B2D2CF4();
  v25(v19, v16);
  v26 = a1 + *(type metadata accessor for CustomMapStyleToggle.MapStylePickerContainer(0) + 20);
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(v26 + 16);
  v30 = *(v26 + 17);
  LOBYTE(v26) = *(v26 + 18);
  v97 = v27;
  v98 = v28;
  v99 = v29;
  v100 = v30;
  v101 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD628, &qword_24B2EE4D0);
  sub_24B2D4E64();
  v31 = v92;
  v32 = v93;
  v33 = v94;
  v34 = v95;
  v35 = v96;
  swift_getKeyPath();
  v97 = v31;
  v98 = v32;
  v99 = v33;
  v100 = v34;
  v101 = v35;
  sub_24B2D4E54();

  v64 = a1;
  v36 = v65;
  sub_24B2D2D14();
  v37 = sub_24B16AE5C(&qword_27EFCD6F8, MEMORY[0x277CE42C0], MEMORY[0x277CE42B8]);
  v38 = v68;
  v67 = v37;
  sub_24B2D48B4();
  (*(v66 + 8))(v36, v38);
  sub_24B2D52E4();
  if (qword_27EFC7708 != -1)
  {
    swift_once();
  }

  v39 = v79;
  v40 = __swift_project_value_buffer(v79, qword_27EFE4550);
  (*(v76 + 16))(v78, v40, v39);
  sub_24B2D2524();
  v41 = v82;
  sub_24B2D2224();
  v43 = v84;
  v42 = v85;
  (*(v84 + 16))(v72, v41, v85);
  v44 = sub_24B2D45F4();
  v46 = v45;
  v48 = v47;
  v97 = v38;
  v98 = v67;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v90;
  v51 = v70;
  sub_24B2D4794();
  sub_24B083C34(v44, v46, v48 & 1);

  (*(v43 + 8))(v41, v42);
  (*(v69 + 8))(v50, v51);
  v53 = v86;
  v52 = v87;
  v54 = v88;
  (*(v87 + 104))(v86, *MEMORY[0x277CDDDC0], v88);
  v97 = v51;
  v98 = OpaqueTypeConformance2;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = v77;
  v57 = v74;
  v58 = v91;
  sub_24B2D48A4();
  (*(v52 + 8))(v53, v54);
  v59 = (*(v71 + 8))(v58, v57);
  MEMORY[0x28223BE20](v59);
  *(&v64 - 2) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD6E0, &qword_24B2EE5D0);
  v97 = v57;
  v98 = v55;
  swift_getOpaqueTypeConformance2();
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD700, &qword_24B2EE5E8);
  v61 = sub_24B16B208();
  v97 = v60;
  v98 = v61;
  swift_getOpaqueTypeConformance2();
  v62 = v81;
  sub_24B2D4994();
  (*(v80 + 8))(v56, v62);

  return result;
}

void sub_24B16A26C(uint64_t a1)
{
  v2 = sub_24B2D2F34();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  sub_24B165C20(v5);
}

double sub_24B16A334@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v39 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD748, &qword_24B2EE638);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v34 = v31 - v4;
  v5 = sub_24B2D3F54();
  MEMORY[0x28223BE20](v5 - 8);
  v31[1] = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD710, &qword_24B2EE5F0);
  v33 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v32 = v31 - v7;
  v8 = sub_24B2D38A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v31 - v13;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD700, &qword_24B2EE5E8);
  MEMORY[0x28223BE20](v37);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v31 - v18;
  sub_24B2D5694();
  v36 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B163D18(v14);
  sub_24B2D3894();
  sub_24B16AE5C(&qword_27EFCD750, MEMORY[0x277CDDB20], MEMORY[0x277CDDB28]);
  v20 = sub_24B2D52A4();
  v21 = *(v9 + 8);
  v21(v11, v8);
  v21(v14, v8);
  if (v20)
  {
    (*(v3 + 56))(v16, 1, 1, v2);
    v22 = sub_24B039184(&qword_27EFCD718, &qword_27EFCD710, &qword_24B2EE5F0, MEMORY[0x277CDD7A8]);
    v40 = v38;
    v41 = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x24C23A760](v16, v2, OpaqueTypeConformance2);
    sub_24AFF8258(v16, &qword_27EFCD700, &qword_24B2EE5E8);
  }

  else
  {
    sub_24B2D3F34();
    type metadata accessor for DismissButton(0);
    sub_24B16AE5C(&qword_27EFCD758, type metadata accessor for DismissButton, &protocol conformance descriptor for DismissButton);
    v24 = v32;
    sub_24B2D33D4();
    v25 = sub_24B039184(&qword_27EFCD718, &qword_27EFCD710, &qword_24B2EE5F0, MEMORY[0x277CDD7A8]);
    v26 = v34;
    v27 = v38;
    MEMORY[0x24C23A750](v24, v38, v25);
    (*(v3 + 16))(v16, v26, v2);
    (*(v3 + 56))(v16, 0, 1, v2);
    v40 = v27;
    v41 = v25;
    v28 = swift_getOpaqueTypeConformance2();
    MEMORY[0x24C23A760](v16, v2, v28);
    sub_24AFF8258(v16, &qword_27EFCD700, &qword_24B2EE5E8);
    (*(v3 + 8))(v26, v2);
    (*(v33 + 8))(v24, v27);
  }

  v29 = sub_24B16B208();
  MEMORY[0x24C23A750](v19, v37, v29);
  sub_24AFF8258(v19, &qword_27EFCD700, &qword_24B2EE5E8);

  return result;
}

double sub_24B16A944@<D0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D32C4();
  v2 = *(type metadata accessor for DismissButton(0) + 20);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97E0, &qword_24B2E2F90);
  swift_storeEnumTagMultiPayload();

  return result;
}

unint64_t sub_24B16AA28()
{
  result = qword_27EFCD630;
  if (!qword_27EFCD630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD618, &qword_24B2EE490);
    sub_24B16AAB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD630);
  }

  return result;
}

unint64_t sub_24B16AAB4()
{
  result = qword_27EFCD638;
  if (!qword_27EFCD638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD610, &qword_24B2EE488);
    sub_24B16AB6C();
    sub_24B039184(&qword_27EFC8E90, &qword_27EFC8E98, &unk_24B2E4B20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD638);
  }

  return result;
}

unint64_t sub_24B16AB6C()
{
  result = qword_27EFCD640;
  if (!qword_27EFCD640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD608, &qword_24B2EE480);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD648, &qword_24B2EE4D8);
    sub_24B2D3984();
    sub_24B039184(&qword_27EFCD650, &qword_27EFCD648, &qword_24B2EE4D8, MEMORY[0x277CDF068]);
    sub_24B16AE5C(&qword_27EFCD658, MEMORY[0x277CDDBD0], MEMORY[0x277CDDBC8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD640);
  }

  return result;
}

unint64_t sub_24B16ACB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD660;
  if (!qword_27EFCD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD660);
  }

  return result;
}

uint64_t sub_24B16AD04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomMapStyleToggle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B16AD68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomMapStyleToggle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B16ADCC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for CustomMapStyleToggle(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24B168DE0(v4, a1);
}

uint64_t sub_24B16AE5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B16AEAC()
{
  result = qword_27EFCD680;
  if (!qword_27EFCD680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD678, &qword_24B2EE528);
    sub_24B16AF64();
    sub_24B039184(&qword_27EFCBC20, &qword_27EFCBC28, &qword_24B2EE010, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD680);
  }

  return result;
}

unint64_t sub_24B16AF64()
{
  result = qword_27EFCD688;
  if (!qword_27EFCD688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD690, &qword_24B2EE530);
    sub_24B039184(&qword_27EFC9498, &qword_27EFC9490, &qword_24B2E3740, MEMORY[0x277CDEFF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD688);
  }

  return result;
}

uint64_t sub_24B16B02C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD690, &qword_24B2EE530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24B16B0C4(uint64_t a1)
{
  sub_24B16B190(319, &qword_27EFCD6B0, MEMORY[0x277CDDB20]);
  if (v1 <= 0x3F)
  {
    sub_24B1676A4(319, &qword_27EFCD600, &type metadata for CustomMapStyle, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B16B190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24B2D3374();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24B16B208()
{
  result = qword_27EFCD708;
  if (!qword_27EFCD708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD700, &qword_24B2EE5E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD710, &qword_24B2EE5F0);
    sub_24B039184(&qword_27EFCD718, &qword_27EFCD710, &qword_24B2EE5F0, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD708);
  }

  return result;
}

unint64_t sub_24B16B2FC()
{
  result = qword_27EFCD728;
  if (!qword_27EFCD728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD6C0, &qword_24B2EE5B0);
    sub_24B039184(&qword_27EFCD730, &qword_27EFCD6B8, &qword_24B2EE5A8, MEMORY[0x277CDDA18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD728);
  }

  return result;
}

double sub_24B16B3BC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a3(a1, a2);

  return result;
}

uint64_t InteractiveMap.init(annotations:focusOnUserLocation:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v25 = a1;
  v4 = sub_24B2D2DE4();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for CustomMapCameraPosition(0);
  MEMORY[0x28223BE20](v27);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 16) = 0;
  v9 = type metadata accessor for InteractiveMap(0);
  v10 = (a3 + v9[8]);
  v28 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9850, &unk_24B2E4310);
  sub_24B2D4CC4();
  v11 = v30;
  *v10 = v29;
  v10[1] = v11;
  type metadata accessor for CustomMapStyleLoader(0);
  v12 = swift_allocObject();
  v13 = objc_opt_self();
  v14 = [v13 standardUserDefaults];
  v15 = sub_24B166FFC();

  if (v15 == 2)
  {
    v16 = [v13 standardUserDefaults];
    v15 = sub_24B166D7C(0);

    v17 = (v15 >> 8) & 1;
    v18 = HIWORD(v15) & 1;
  }

  else
  {
    v17 = ((v15 & 0xFFFFFF) >> 8) & 1;
    v18 = ((v15 & 0xFFFFFF) >> 16) & 1;
  }

  v19 = (a3 + v9[9]);
  v12[16] = v15 & 1;
  v12[17] = v17;
  v12[18] = v18;
  sub_24B2D25B4();
  v28 = v12;
  sub_24B2D4CC4();
  v20 = v30;
  *v19 = v29;
  v19[1] = v20;
  *a3 = v25;
  LOBYTE(v20) = v26;
  *(a3 + 8) = v26 & 1;
  if (v20)
  {
    sub_24B2D2DD4();
    sub_24B2D2D54();
    (*(v23 + 8))(v6, v24);
  }

  else
  {
    sub_24B2D2DD4();
  }

  swift_storeEnumTagMultiPayload();
  v21 = a3 + v9[7];
  sub_24B16FCAC(v8, v21, type metadata accessor for CustomMapCameraPosition);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD760, &qword_24B2EE670);
  *(v21 + *(result + 28)) = 0;
  return result;
}

uint64_t type metadata accessor for InteractiveMap(uint64_t a1)
{
  result = qword_27EFCD7F0;
  if (!qword_27EFCD7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InteractiveMap.body.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for InteractiveMap(0);
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = v3;
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD768, &qword_24B2EE678);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v36 = v1;
  sub_24B16BC58(&v32 - v5);
  v7 = sub_24B2D5044();
  v9 = v8;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  LOBYTE(v39) = 0;
  sub_24B2D4CC4();
  v10 = v46;
  v11 = v47;
  v12 = sub_24B2D4304();
  sub_24B2D32F4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  LOBYTE(v46) = 0;
  *&v39 = sub_24B08402C;
  *(&v39 + 1) = 0;
  LOBYTE(v40) = 0;
  *(&v40 + 1) = v66[0];
  DWORD1(v40) = *(v66 + 3);
  BYTE8(v40) = v10;
  *(&v40 + 9) = *v65;
  HIDWORD(v40) = *&v65[3];
  *&v41 = v11;
  BYTE8(v41) = v12;
  HIDWORD(v41) = *&v64[3];
  *(&v41 + 9) = *v64;
  *&v42 = v14;
  *(&v42 + 1) = v16;
  *&v43 = v18;
  *(&v43 + 1) = v20;
  LOBYTE(v44) = 0;
  DWORD1(v44) = *&v63[3];
  v21 = *v63;
  *(&v44 + 1) = *v63;
  *(&v44 + 1) = v7;
  v45 = v9;
  v22 = &v6[*(v4 + 36)];
  v23 = v44;
  *(v22 + 4) = v43;
  *(v22 + 5) = v23;
  *(v22 + 12) = v9;
  v24 = v40;
  *v22 = v39;
  *(v22 + 1) = v24;
  v25 = v42;
  *(v22 + 2) = v41;
  *(v22 + 3) = v25;
  v46 = sub_24B08402C;
  v47 = 0;
  v48 = 0;
  *&v49[3] = *(v66 + 3);
  *v49 = v66[0];
  v50 = v10;
  *&v51[3] = *&v65[3];
  *v51 = *v65;
  v52 = v11;
  v53 = v12;
  *&v54[3] = *&v64[3];
  *v54 = *v64;
  v55 = v14;
  v56 = v16;
  v57 = v18;
  v58 = v20;
  v59 = 0;
  *&v60[3] = *&v63[3];
  *v60 = v21;
  v61 = v7;
  v62 = v9;
  sub_24B16F2D4(&v39, v38);
  sub_24AFF8258(&v46, &qword_27EFCD770, &qword_24B2EE680);
  v26 = v35;
  v38[0] = *v36;
  sub_24B16FC44(v36, v35, type metadata accessor for InteractiveMap);
  v27 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v28 = swift_allocObject();
  sub_24B16FCAC(v26, v28 + v27, type metadata accessor for InteractiveMap);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_24B16F344;
  *(v29 + 24) = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_24B09289C;
  *(v30 + 24) = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9850, &unk_24B2E4310);
  sub_24B16F3E8();
  sub_24B092A60();
  sub_24B2D49B4();

  return sub_24AFF8258(v6, &qword_27EFCD768, &qword_24B2EE678);
}

uint64_t sub_24B16BC58@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD780, &qword_24B2EE688);
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v63 - v2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD788, &qword_24B2EE690);
  MEMORY[0x28223BE20](v72);
  v71 = &v63 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD820, &qword_24B2EE728);
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v68 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC78B0, &qword_24B2DE468);
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x28223BE20](v6);
  v77 = &v63 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD798, &qword_24B2EE698);
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v9 = &v63 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD7A0, &qword_24B2EE6A0);
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - v11;
  v78 = v1;
  sub_24B16C810(&v63 - v11);
  v13 = type metadata accessor for InteractiveMap(0);
  v14 = (v1 + *(v13 + 36));
  v16 = *v14;
  v15 = v14[1];
  v81 = v16;
  v82 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD828, &qword_24B2EEB60);
  sub_24B2D4CD4();
  v17 = v80;
  swift_getKeyPath();
  v81 = v17;
  sub_24B16FBFC(&qword_27EFCD5A8, type metadata accessor for CustomMapStyleLoader, &unk_24B2EE110);
  sub_24B2D2584();

  v18 = v17[16];
  v19 = v17[17];
  v20 = v17[18];

  v21 = sub_24B2D2F34();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v20)
  {
    v25 = 0x10000;
  }

  else
  {
    v25 = 0;
  }

  if (v19)
  {
    v26 = 256;
  }

  else
  {
    v26 = 0;
  }

  sub_24B165990(v26 | v18 | v25, v24);
  v27 = sub_24B16F6E4();
  sub_24B2D4664();
  (*(v22 + 8))(v24, v21);
  sub_24AFF8258(v12, &qword_27EFCD7A0, &qword_24B2EE6A0);
  v28 = v78;
  v79 = v78;
  sub_24B2D3014();
  v81 = v10;
  v82 = v27;
  swift_getOpaqueTypeConformance2();
  sub_24B16FBFC(&qword_27EFCD7D0, MEMORY[0x277CE4320], MEMORY[0x277CE4318]);
  v29 = v64;
  sub_24B2D4624();
  v30 = (v65[1])(v9, v29);
  v31 = *(v13 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_24B16FC44(v28, &v63 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InteractiveMap);
  sub_24B2D5694();
  v33 = sub_24B2D5684();
  v34 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v35 = swift_allocObject();
  v36 = MEMORY[0x277D85700];
  *(v35 + 16) = v33;
  *(v35 + 24) = v36;
  sub_24B16FCAC(&v63 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for InteractiveMap);
  v37 = sub_24B2D56D4();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_24B2D56A4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v64 = sub_24B2D3714();
    v65 = &v63;
    v63 = *(v64 - 8);
    MEMORY[0x28223BE20](v64);
    v42 = &v63 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_24B2D5C34();

    v81 = 0xD00000000000002ELL;
    v82 = 0x800000024B2DC190;
    v80 = 107;
    v43 = sub_24B2D5FA4();
    MEMORY[0x24C23BC10](v43);

    v45 = MEMORY[0x28223BE20](v44);
    (*(v38 + 16))(&v63 - v40, &v63 - v40, v37, v45);
    sub_24B2D3704();
    (*(v38 + 8))(&v63 - v40, v37);
    v46 = v68;
    (*(v66 + 32))(v68, v77, v67);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC78B8, &qword_24B2DE470);
    v48 = (*(v63 + 32))(&v46[*(v47 + 36)], v42, v64);
  }

  else
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC78C0, &qword_24B2DE478);
    v46 = v68;
    v50 = &v68[*(v49 + 36)];
    v51 = sub_24B2D35A4();
    (*(v38 + 32))(&v50[*(v51 + 20)], &v63 - v40, v37);
    *v50 = &unk_24B2EE760;
    *(v50 + 1) = v35;
    v48 = (*(v66 + 32))(v46, v77, v67);
  }

  MEMORY[0x28223BE20](v48);
  *(&v63 - 2) = v78;
  v52 = sub_24B2D5034();
  v54 = v53;
  v56 = v71;
  v55 = v72;
  v57 = &v71[*(v72 + 36)];
  sub_24B16EF58(sub_24B16FB30, v57);
  v58 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD7E0, &qword_24B2EE6B8) + 36));
  *v58 = v52;
  v58[1] = v54;
  (*(v69 + 32))(v56, v46, v70);
  v59 = sub_24B16F520();
  v60 = v73;
  sub_24B2D4634();
  sub_24AFF8258(v56, &qword_27EFCD788, &qword_24B2EE690);
  sub_24B2D5134();
  v81 = v55;
  v82 = v59;
  swift_getOpaqueTypeConformance2();
  v61 = v76;
  sub_24B2D4654();
  return (*(v74 + 8))(v60, v61);
}

void sub_24B16C714(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) && *(a2 + 16))
  {
    v2 = sub_24B2D50C4();
    MEMORY[0x28223BE20](v2);
    sub_24B2D35C4();
  }

  else
  {
    type metadata accessor for InteractiveMap(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9888, &qword_24B2E30E8);
    sub_24B2D4CE4();
  }
}

uint64_t sub_24B16C810@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for InteractiveMap(0);
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD868, &qword_24B2EE7F8);
  MEMORY[0x28223BE20](v33);
  v31 = (v27 - v4);
  v29 = sub_24B2D2E24();
  v27[1] = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v30 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9800, &qword_24B2E42C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - v7;
  v9 = sub_24B2D2DE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD7B8, &qword_24B2EE6A8);
  MEMORY[0x28223BE20](v32);
  v16 = v27 - v15;
  if (*(v1 + 8) == 1)
  {
    v28 = v14;
    sub_24B2D2DD4();
    sub_24B2D2D54();
    (*(v10 + 8))(v12, v9);
    v17 = sub_24B2D2D44();
    v18 = *(*(v17 - 8) + 56);
    v27[0] = v8;
    v18(v8, 1, 1, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA0B0, &unk_24B2EECC0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_24B2DE430;
    sub_24B2D2DF4();
    v35 = v19;
    sub_24B16FBFC(&qword_27EFC9818, MEMORY[0x277CE42D0], MEMORY[0x277CE42D8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9820, &qword_24B2E30C0);
    sub_24B039184(&qword_27EFC9828, &qword_27EFC9820, &qword_24B2E30C0, MEMORY[0x277D83970]);
    sub_24B2D5B44();
    v20 = sub_24B2D5134();
    MEMORY[0x28223BE20](v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD870, &qword_24B2EE800);
    sub_24B039184(&qword_27EFCD878, &qword_27EFCD870, &qword_24B2EE800, MEMORY[0x277CE42A0]);
    sub_24B2D2C84();
    v21 = v28;
    v22 = v32;
    (*(v28 + 16))(v31, v16, v32);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD7C8, &qword_24B2EE6B0);
    sub_24B039184(&qword_27EFCD7B0, &qword_27EFCD7B8, &qword_24B2EE6A8, MEMORY[0x277CE42B0]);
    sub_24B039184(&qword_27EFCD7C0, &qword_27EFCD7C8, &qword_24B2EE6B0, MEMORY[0x277CDF7D8]);
    sub_24B2D3ED4();
    return (*(v21 + 8))(v16, v22);
  }

  else
  {
    sub_24B16FC44(v1, v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InteractiveMap);
    v24 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v25 = swift_allocObject();
    sub_24B16FCAC(v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for InteractiveMap);
    v26 = v31;
    *v31 = sub_24B16FB38;
    v26[1] = v25;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD7C8, &qword_24B2EE6B0);
    sub_24B039184(&qword_27EFCD7B0, &qword_27EFCD7B8, &qword_24B2EE6A8, MEMORY[0x277CE42B0]);
    sub_24B039184(&qword_27EFCD7C0, &qword_27EFCD7C8, &qword_24B2EE6B0, MEMORY[0x277CDF7D8]);
    return sub_24B2D3ED4();
  }
}

double sub_24B16CF54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v43 = a1;
  v41 = a3;
  v38 = sub_24B2D2E24();
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v40 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9800, &qword_24B2E42C0);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = v33 - v5;
  v6 = sub_24B2D3524();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = type metadata accessor for InteractiveMap(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA058, &qword_24B2E3DD0);
  MEMORY[0x28223BE20](v13 - 8);
  v36 = v33 - v14;
  v15 = sub_24B2D5694();
  v37 = sub_24B2D5684();
  v16 = v15;
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = type metadata accessor for InteractiveMap;
  v17 = v42;
  sub_24B16FC44(v42, v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InteractiveMap);
  (*(v7 + 16))(v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v6);
  v33[2] = v16;
  v18 = sub_24B2D5684();
  v19 = *(v10 + 80);
  v20 = v17;
  v21 = (v19 + 32) & ~v19;
  v33[0] = v6;
  v33[1] = v19 | 7;
  v22 = (v21 + v11 + *(v7 + 80)) & ~*(v7 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  *(v23 + 24) = MEMORY[0x277D85700];
  sub_24B16FCAC(v12, v23 + v21, type metadata accessor for InteractiveMap);
  (*(v7 + 32))(v23 + v22, v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v33[0]);
  sub_24B16FC44(v20, v12, v34);
  v24 = sub_24B2D5684();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = MEMORY[0x277D85700];
  sub_24B16FCAC(v12, v25 + v21, type metadata accessor for InteractiveMap);
  sub_24B2D2DE4();
  sub_24B2D4E74();
  v26 = sub_24B2D2D44();
  (*(*(v26 - 8) + 56))(v39, 1, 1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA0B0, &unk_24B2EECC0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_24B2DE430;
  sub_24B2D2DF4();
  *&v44 = v27;
  sub_24B16FBFC(&qword_27EFC9818, MEMORY[0x277CE42D0], MEMORY[0x277CE42D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9820, &qword_24B2E30C0);
  sub_24B039184(&qword_27EFC9828, &qword_27EFC9820, &qword_24B2E30C0, MEMORY[0x277D83970]);
  sub_24B2D5B44();
  v28 = sub_24B2D5134();
  MEMORY[0x28223BE20](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD870, &qword_24B2EE800);
  sub_24B039184(&qword_27EFCD878, &qword_27EFCD870, &qword_24B2EE800, MEMORY[0x277CE42A0]);
  v29 = v41;
  sub_24B2D2CA4();
  sub_24B2D3514();
  sub_24B2D3514();
  sub_24B2D5064();
  sub_24B2D3494();

  v30 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD898, &unk_24B2EE820) + 36));
  v31 = v45;
  *v30 = v44;
  v30[1] = v31;
  result = v46[0];
  v30[2] = *v46;
  return result;
}

void sub_24B16D600(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CustomMapCameraPosition(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = type metadata accessor for InteractiveMap(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD760, &qword_24B2EE670);
  sub_24B2D4CD4();
  v8 = (a1 + *(v7 + 32));
  v10 = *v8;
  v9 = v8[1];
  v16[2] = v10;
  v16[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9888, &qword_24B2E30E8);
  sub_24B2D4CD4();
  v11 = v16[1];
  sub_24B2D3514();
  sub_24B2D3504();
  sub_24B161810(v11, a2, v12, v13, v14, v15);

  sub_24B16FD14(v6, type metadata accessor for CustomMapCameraPosition);
}

double sub_24B16D7CC(uint64_t a1)
{
  v2 = type metadata accessor for CustomMapCameraPosition(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_24B2D2DE4();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for InteractiveMap(0);
  sub_24B16FC44(v7, v4, type metadata accessor for CustomMapCameraPosition);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD760, &qword_24B2EE670);
  sub_24B2D4CE4();
  sub_24B16FD14(v7, type metadata accessor for CustomMapCameraPosition);

  return result;
}

double sub_24B16D994@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, char *a5@<X8>)
{
  v46 = a4;
  v42 = a3;
  v38[1] = a2;
  v48 = a5;
  v6 = type metadata accessor for InteractiveMap(0);
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD880, &qword_24B2EE808);
  v44 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = v38 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9898, &qword_24B2E3E40);
  v11 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v38 - v15;
  sub_24B2D5694();
  v43 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3034();
  v17 = (a1 + *(v6 + 32));
  v19 = *v17;
  v18 = v17[1];
  v50 = v19;
  v51 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9888, &qword_24B2E30E8);
  sub_24B2D4CD4();
  sub_24B16FC44(a1, v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InteractiveMap);
  v20 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v21 = swift_allocObject();
  sub_24B16FCAC(v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for InteractiveMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9850, &unk_24B2E4310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD888, &qword_24B2EE810);
  sub_24B039184(&qword_27EFC98A8, &qword_27EFC9850, &unk_24B2E4310, MEMORY[0x277D83980]);
  v22 = type metadata accessor for AnnotationContent(255);
  v23 = sub_24B16FBFC(&qword_27EFC98B0, type metadata accessor for AnnotationContent, &unk_24B2ED510);
  v39 = v16;
  v50 = v22;
  v51 = MEMORY[0x277D837D0];
  v52 = v23;
  v53 = MEMORY[0x277D837E0];
  swift_getOpaqueTypeConformance2();
  sub_24B16FBFC(&qword_27EFC98B8, type metadata accessor for Annotation, &protocol conformance descriptor for Annotation);
  v24 = v49;
  sub_24B2D4EC4();
  v25 = *(v11 + 16);
  v26 = v13;
  v27 = v13;
  v28 = v41;
  v25(v27, v16, v41);
  v30 = v44;
  v29 = v45;
  v46 = *(v44 + 16);
  v31 = v24;
  v32 = v47;
  v46(v45, v31, v47);
  v33 = v48;
  v25(v48, v26, v28);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD890, &qword_24B2EE818);
  v46(&v33[*(v34 + 48)], v29, v32);
  v35 = *(v30 + 8);
  v35(v49, v32);
  v36 = *(v11 + 8);
  v36(v39, v28);
  v35(v29, v32);
  v36(v26, v28);

  return result;
}

double sub_24B16DF04@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v22 = a4;
  v6 = type metadata accessor for Annotation(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnnotationContent(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B16FC44(a1, v8, type metadata accessor for Annotation);
  v12 = (a2 + *(type metadata accessor for InteractiveMap(0) + 32));
  v14 = v12[1];
  v24 = *v12;
  v13 = v24;
  v25 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9888, &qword_24B2E30E8);
  sub_24B2D4CD4();
  v15 = *(v23 + 16);

  v16 = v15 < 2;
  v24 = v13;
  v25 = v14;
  sub_24B2D4CD4();
  v17 = *(v23 + 16);

  sub_24B16FCAC(v8, v11, type metadata accessor for Annotation);
  v11[v9[5]] = v16;
  v11[v9[6]] = v17 < 2;
  v11[v9[7]] = 0;
  v18 = v9[8];
  sub_24B2D4A84();
  v19 = sub_24B2D4B44();

  *&v11[v18] = v19;
  v20 = a1[1];
  v24 = *a1;
  v25 = v20;
  sub_24B16FBFC(&qword_27EFC98B0, type metadata accessor for AnnotationContent, &unk_24B2ED510);
  sub_24B2D2FF4();
  sub_24B16FD14(v11, type metadata accessor for AnnotationContent);

  return result;
}

double sub_24B16E1C4(uint64_t a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D5134();
  sub_24B2D3E04();
  sub_24B2D3004();

  return result;
}

uint64_t sub_24B16E284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = sub_24B2D5D64();
  v3[3] = v4;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = type metadata accessor for CustomMapCameraPosition(0);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  sub_24B2D5694();
  v3[9] = sub_24B2D5684();
  v6 = sub_24B2D5604();
  v3[10] = v6;
  v3[11] = v5;

  return MEMORY[0x2822009F8](sub_24B16E3B4, v6, v5);
}

uint64_t sub_24B16E3B4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  *(v0 + 112) = *(type metadata accessor for InteractiveMap(0) + 28);
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD760, &qword_24B2EE670);
  sub_24B2D4CD4();
  sub_24B2D2DD4();
  swift_storeEnumTagMultiPayload();
  v3 = sub_24B161F90(v1, v2);
  sub_24B16FD14(v2, type metadata accessor for CustomMapCameraPosition);
  sub_24B16FD14(v1, type metadata accessor for CustomMapCameraPosition);
  if (v3)
  {
    sub_24B2D6084();
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_24B16E584;

    return sub_24B09A030(10000000000000000, 0, 0, 0, 1);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_24B16E584()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_24B170270;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_24B16E718;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24B16E718()
{
  v1 = v0[8];
  v2 = v0[7];

  swift_storeEnumTagMultiPayload();
  sub_24B16FC44(v1, v2, type metadata accessor for CustomMapCameraPosition);
  sub_24B2D4CE4();
  sub_24B16FD14(v1, type metadata accessor for CustomMapCameraPosition);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B16E810@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v57 = a2;
  v3 = sub_24B2D2F94();
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x28223BE20](v3);
  v66 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v62 = &v52 - v6;
  v56 = sub_24B2D2CD4();
  v67 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v63 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v52 - v9;
  v10 = sub_24B2D2E44();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x28223BE20](v10);
  v61 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = &v52 - v13;
  v14 = type metadata accessor for CustomMapStyleToggle(0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v59 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v20 = a1 + *(type metadata accessor for InteractiveMap(0) + 36);
  v22 = *v20;
  v21 = *(v20 + 1);
  v73 = v22;
  v74 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD828, &qword_24B2EEB60);
  sub_24B2D4CF4();
  v23 = v78;
  v24 = v79;
  v25 = v80;
  swift_getKeyPath();
  v78 = v23;
  v79 = v24;
  v80 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD858, &qword_24B2EE7B8);
  sub_24B2D4E54();

  v26 = v73;
  v27 = v74;
  v28 = v75;
  v29 = v76;
  LODWORD(v53) = v77;

  v30 = sub_24B2D5134();
  v70 = 0;
  sub_24B2D4CC4();
  v31 = v72;
  v19[24] = v71;
  *(v19 + 4) = v31;
  v32 = *(v15 + 32);
  *&v19[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD4E0, &qword_24B2EE4E0);
  swift_storeEnumTagMultiPayload();
  *v19 = v26;
  *(v19 + 1) = v27;
  v19[16] = v28;
  v19[17] = v29;
  v19[18] = v53;
  *&v19[*(v15 + 36)] = v30;
  v55 = v19;
  sub_24B2D5134();
  v33 = v58;
  sub_24B2D2E34();
  sub_24B2D5134();
  v34 = v60;
  sub_24B2D2CC4();
  sub_24B2D5134();
  v35 = v62;
  sub_24B2D2F84();
  v52 = type metadata accessor for CustomMapStyleToggle;
  v36 = v59;
  sub_24B16FC44(v19, v59, type metadata accessor for CustomMapStyleToggle);
  v54 = *(v64 + 16);
  v37 = v61;
  v54(v61, v33, v65);
  v53 = *(v67 + 16);
  v38 = v63;
  v39 = v56;
  v53(v63, v34, v56);
  v40 = *(v68 + 16);
  v41 = v66;
  v40(v66, v35, v69);
  v42 = v57;
  sub_24B16FC44(v36, v57, v52);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD860, &qword_24B2EE7F0);
  v44 = v37;
  v45 = v65;
  v54((v42 + v43[12]), v44, v65);
  v53((v42 + v43[16]), v38, v39);
  v46 = v42 + v43[20];
  v47 = v69;
  v40(v46, v41, v69);
  v48 = *(v68 + 8);
  v48(v62, v47);
  v49 = *(v67 + 8);
  v49(v60, v39);
  v50 = *(v64 + 8);
  v50(v58, v45);
  sub_24B16FD14(v55, type metadata accessor for CustomMapStyleToggle);
  v48(v66, v69);
  v49(v63, v39);
  v50(v61, v45);
  return sub_24B16FD14(v59, type metadata accessor for CustomMapStyleToggle);
}

double sub_24B16EE64(uint64_t a1, uint64_t a2)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for InteractiveMap(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9888, &qword_24B2E30E8);
  sub_24B2D4CE4();

  return result;
}

uint64_t sub_24B16EF58@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v22[0] = a1;
  v3 = sub_24B2D3DE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD830, &qword_24B2EE768);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  sub_24B2D5694();
  v22[1] = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v9 = sub_24B2D3DF4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD838, &qword_24B2EE770);
  (v22[0])(v10);

  sub_24B2D3DD4();
  sub_24B039184(&qword_27EFCD840, &qword_27EFCD830, &qword_24B2EE768, MEMORY[0x277CE1198]);
  sub_24B16FBFC(&qword_27EFCAFA0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  sub_24B2D46D4();
  (*(v4 + 8))(v6, v3);
  sub_24AFF8258(v9, &qword_27EFCD830, &qword_24B2EE768);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD848, &qword_24B2EE778) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E10, &qword_24B2E9E00);
  sub_24B2D3934();
  *v11 = swift_getKeyPath();
  LOBYTE(v11) = sub_24B2D42F4();
  sub_24B2D32F4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD850, &qword_24B2EE7B0);
  v21 = a2 + *(result + 36);
  *v21 = v11;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_24B16F2D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD770, &qword_24B2EE680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B16F3E8()
{
  result = qword_27EFCD778;
  if (!qword_27EFCD778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD768, &qword_24B2EE678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD780, &qword_24B2EE688);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD788, &qword_24B2EE690);
    sub_24B16F520();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFCD7E8, &qword_27EFCD770, &qword_24B2EE680, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD778);
  }

  return result;
}

unint64_t sub_24B16F520()
{
  result = qword_27EFCD790;
  if (!qword_27EFCD790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD788, &qword_24B2EE690);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC78B0, &qword_24B2DE468);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD798, &qword_24B2EE698);
    sub_24B2D3014();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD7A0, &qword_24B2EE6A0);
    sub_24B16F6E4();
    swift_getOpaqueTypeConformance2();
    sub_24B16FBFC(&qword_27EFCD7D0, MEMORY[0x277CE4320], MEMORY[0x277CE4318]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFCD7D8, &qword_27EFCD7E0, &qword_24B2EE6B8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD790);
  }

  return result;
}

unint64_t sub_24B16F6E4()
{
  result = qword_27EFCD7A8;
  if (!qword_27EFCD7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD7A0, &qword_24B2EE6A0);
    sub_24B039184(&qword_27EFCD7B0, &qword_27EFCD7B8, &qword_24B2EE6A8, MEMORY[0x277CE42B0]);
    sub_24B039184(&qword_27EFCD7C0, &qword_27EFCD7C8, &qword_24B2EE6B0, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD7A8);
  }

  return result;
}

void sub_24B16F80C(uint64_t a1)
{
  sub_24B16F9CC(319, &qword_27EFCD800, type metadata accessor for Annotation, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24B16F9CC(319, &qword_27EFCD808, type metadata accessor for CustomMapCameraPosition, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_24B16F968(319);
      if (v3 <= 0x3F)
      {
        sub_24B16F9CC(319, &qword_27EFCD818, type metadata accessor for CustomMapStyleLoader, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B16F968(uint64_t a1)
{
  if (!qword_27EFCD810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9850, &unk_24B2E4310);
    v1 = sub_24B2D4D04();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFCD810);
    }
  }
}

void sub_24B16F9CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24B16FA54()
{
  v2 = *(type metadata accessor for InteractiveMap(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AFFD370;

  return sub_24B16E284(v4, v5, v0 + v3);
}

double sub_24B16FB38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InteractiveMap(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24B16CF54(a1, v6, a2);
}

uint64_t sub_24B16FBFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B16FC44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B16FCAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B16FD14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_24B16FD74(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InteractiveMap(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_24B2D3524();

  sub_24B16D600(v1 + v4, a1);
}

uint64_t objectdestroy_16Tm_0()
{
  v1 = type metadata accessor for InteractiveMap(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + *(v1 + 28);
  type metadata accessor for CustomMapCameraPosition(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = sub_24B2D2DE4();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD760, &qword_24B2EE670);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_24B16FFC8(uint64_t a1)
{
  type metadata accessor for InteractiveMap(0);

  return sub_24B16D7CC(a1);
}

uint64_t objectdestroyTm_20()
{
  v1 = type metadata accessor for InteractiveMap(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 28);
  type metadata accessor for CustomMapCameraPosition(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = sub_24B2D2DE4();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD760, &qword_24B2EE670);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void *keypath_get_6Tm@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a3@<X8>)
{
  a1();
  result = sub_24B2D3C74();
  *a3 = v5;
  return result;
}

void sub_24B1703A0(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B1793FC(&qword_27EFCD5A8, type metadata accessor for CustomMapStyleLoader, &unk_24B2EE110);
  sub_24B2D2584();

  v4 = v3[17];
  v5 = v3[18];
  *a2 = v3[16];
  a2[1] = v4;
  a2[2] = v5;
}

double sub_24B170458(unsigned __int8 *a1)
{
  if (a1[2])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_24B1655AC(v2 | *a1 | v1);
}

uint64_t sub_24B1704A8()
{
  v1 = sub_24B2D3C64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for InteractiveMapV2(0) + 56);
  result = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 9) != 1)
  {
    v8 = *v5;

    sub_24B2D5924();
    v9 = sub_24B2D42A4();
    sub_24B2D3154();

    sub_24B2D3C54();
    swift_getAtKeyPath();
    v10 = sub_24B177594(v8, v7, 0);
    (*(v2 + 8))(v4, v1, v10);
    return v11;
  }

  return result;
}

uint64_t sub_24B170614()
{
  v1 = sub_24B2D3C64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for InteractiveMapV2(0) + 60);
  result = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 9) != 1)
  {
    v8 = *v5;

    sub_24B2D5924();
    v9 = sub_24B2D42A4();
    sub_24B2D3154();

    sub_24B2D3C54();
    swift_getAtKeyPath();
    v10 = sub_24B177594(v8, v7, 0);
    (*(v2 + 8))(v4, v1, v10);
    return v11;
  }

  return result;
}

uint64_t sub_24B170780()
{
  v1 = sub_24B2D3C64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for InteractiveMapV2(0) + 64);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_24B2D5924();
    v7 = sub_24B2D42A4();
    sub_24B2D3154();

    sub_24B2D3C54();
    swift_getAtKeyPath();
    sub_24AFEFDB8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

uint64_t sub_24B1708D8()
{
  v1 = sub_24B2D3C64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for InteractiveMapV2(0) + 68);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_24B2D5924();
    v7 = sub_24B2D42A4();
    sub_24B2D3154();

    sub_24B2D3C54();
    swift_getAtKeyPath();
    sub_24AFEFDB8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

uint64_t InteractiveMapV2.init(initialCameraPosition:annotations:focusedAnnotations:selectedAnnotation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v46 = a3;
  v47 = a4;
  v44 = a1;
  v45 = a2;
  v6 = sub_24B2D2DE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  *a5 = 0;
  v13 = type metadata accessor for InteractiveMapV2(0);
  v14 = a5 + v13[8];
  sub_24B2D2DD4();
  (*(v7 + 16))(v9, v12, v6);
  v43 = v14;
  sub_24B2D4CC4();
  (*(v7 + 8))(v12, v6);
  v15 = a5 + v13[9];
  v48 = 0uLL;
  LOBYTE(v49) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A0, &qword_24B2EE830);
  sub_24B2D4CC4();
  v16 = v51;
  v17 = *(&v51 + 1);
  *v15 = v50;
  v15[16] = v16;
  *(v15 + 3) = v17;
  type metadata accessor for CustomMapStyleLoader(0);
  v18 = swift_allocObject();
  v19 = objc_opt_self();
  v20 = [v19 standardUserDefaults];
  v21 = sub_24B166FFC();

  if (v21 == 2)
  {
    v22 = [v19 standardUserDefaults];
    v21 = sub_24B166D7C(0);

    v23 = (v21 >> 8) & 1;
    v24 = HIWORD(v21) & 1;
  }

  else
  {
    v23 = ((v21 & 0xFFFFFF) >> 8) & 1;
    v24 = ((v21 & 0xFFFFFF) >> 16) & 1;
  }

  v25 = (a5 + v13[10]);
  v18[16] = v21 & 1;
  v18[17] = v23;
  v18[18] = v24;
  sub_24B2D25B4();
  *&v48 = v18;
  sub_24B2D4CC4();
  v26 = *(&v50 + 1);
  *v25 = v50;
  v25[1] = v26;
  v27 = a5 + v13[11];
  v28 = *(MEMORY[0x277CD4BB0] + 16);
  v48 = *MEMORY[0x277CD4BB0];
  v49 = v28;
  type metadata accessor for MKMapRect(0);
  sub_24B2D4CC4();
  v29 = v52;
  v30 = v51;
  *v27 = v50;
  *(v27 + 1) = v30;
  *(v27 + 4) = v29;
  v31 = a5 + v13[12];
  LOBYTE(v48) = 1;
  sub_24B2D4CC4();
  v32 = *(&v50 + 1);
  *v31 = v50;
  *(v31 + 1) = v32;
  v33 = a5 + v13[13];
  LOBYTE(v48) = 0;
  sub_24B2D4CC4();
  v34 = *(&v50 + 1);
  *v33 = v50;
  *(v33 + 1) = v34;
  v35 = a5 + v13[14];
  *v35 = swift_getKeyPath();
  *(v35 + 4) = 0;
  v36 = a5 + v13[15];
  *v36 = swift_getKeyPath();
  *(v36 + 4) = 0;
  v37 = a5 + v13[16];
  *v37 = swift_getKeyPath();
  v37[8] = 0;
  v38 = a5 + v13[17];
  *v38 = swift_getKeyPath();
  v38[8] = 0;
  v39 = v43;
  sub_24AFF8258(v43, &qword_27EFCA028, &qword_24B2E3D70);
  *(v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028, &qword_24B2E3D70) + 28)) = 0;
  (*(v7 + 32))(v39, v44, v6);
  v40 = v46;
  a5[1] = v45;
  a5[2] = v40;
  return sub_24B0391CC(v47, a5 + v13[7], &qword_27EFCD8A8, &unk_24B2EE8E0);
}

uint64_t type metadata accessor for InteractiveMapV2(uint64_t a1)
{
  result = qword_27EFCD9C8;
  if (!qword_27EFCD9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InteractiveMapV2.body.getter@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v2 = type metadata accessor for InteractiveMapV2(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v89 = v2 - 8;
  MEMORY[0x28223BE20](v2 - 8);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8B0, &unk_24B2F42D0);
  MEMORY[0x28223BE20](v96);
  v6 = &v76 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8B8, &qword_24B2EE8F0);
  v80 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v8 = &v76 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8C0, &qword_24B2EE8F8);
  v82 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = &v76 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8C8, &qword_24B2EE900);
  v84 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v99 = &v76 - v10;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8D0, &qword_24B2EE908);
  v88 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v98 = &v76 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8D8, &qword_24B2EE910);
  v13 = *(v12 - 8);
  v90 = v12;
  v91 = v13;
  MEMORY[0x28223BE20](v12);
  v85 = &v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8E0, &qword_24B2EE918);
  v92 = *(v15 - 8);
  v93 = v15;
  MEMORY[0x28223BE20](v15);
  v86 = &v76 - v16;
  v104 = v1;
  sub_24B171A7C(v8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8, &unk_24B2EE8E0);
  MEMORY[0x24C23B610](v17);
  v100 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for InteractiveMapV2;
  sub_24B179024(v1, v100, type metadata accessor for InteractiveMapV2);
  v102 = *(v3 + 80);
  v103 = v4;
  v18 = (v102 + 16) & ~v102;
  v19 = swift_allocObject();
  v97 = type metadata accessor for InteractiveMapV2;
  sub_24B178FBC(&v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for InteractiveMapV2);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_24B1775A0;
  *(v20 + 24) = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8E8, &qword_24B2EE920);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8F0, &qword_24B2EE928);
  v23 = sub_24B177624();
  v107 = v22;
  v108 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v107 = v21;
  v108 = OpaqueTypeConformance2;
  v77 = swift_getOpaqueTypeConformance2();
  v25 = sub_24B177A3C();
  v26 = v79;
  v27 = v96;
  sub_24B2D4844();

  sub_24AFF8258(v6, &qword_27EFCD8B0, &unk_24B2F42D0);
  (*(v80 + 8))(v8, v26);
  v105 = *(v104 + 8);
  v28 = v105;
  v29 = v100;
  v30 = v101;
  sub_24B179024(v104, v100, v101);
  v95 = v18;
  v31 = swift_allocObject();
  sub_24B178FBC(v29, v31 + v18, type metadata accessor for InteractiveMapV2);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_24B177AF0;
  *(v32 + 24) = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_24B177B64;
  *(v33 + 24) = v32;

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD988, &qword_24B2EE980);
  v107 = v26;
  v108 = v27;
  v109 = v77;
  v110 = v25;
  v96 = MEMORY[0x277CE0DB8];
  v35 = swift_getOpaqueTypeConformance2();
  v36 = sub_24B177BB8();
  v37 = v81;
  v38 = v34;
  v39 = v78;
  sub_24B2D4844();
  v80 = v28;

  (*(v82 + 8))(v39, v37);
  v105 = *(v104 + 16);
  v40 = v100;
  sub_24B179024(v104, v100, v30);
  v41 = v95;
  v42 = swift_allocObject();
  sub_24B178FBC(v40, v42 + v41, v97);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_24B177C6C;
  *(v43 + 24) = v42;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_24B177CF4;
  *(v44 + 24) = v43;

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD998, &qword_24B2EE988);
  v107 = v37;
  v108 = v38;
  v109 = v35;
  v110 = v36;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_24B039184(&qword_27EFCD9A0, &qword_27EFCD998, &qword_24B2EE988, MEMORY[0x277D83B60]);
  v48 = v99;
  v49 = v83;
  sub_24B2D4844();

  (*(v84 + 8))(v48, v49);
  v50 = v104;
  v105 = sub_24B1704A8();
  v106 = v51 & 1;
  v52 = v100;
  sub_24B179024(v50, v100, v101);
  v53 = v95;
  v54 = swift_allocObject();
  v55 = v97;
  sub_24B178FBC(v52, v54 + v53, v97);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC8498, &qword_24B2EBB60);
  v107 = v49;
  v108 = v45;
  v109 = v46;
  v110 = v47;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = sub_24B177DA8();
  v59 = v85;
  v60 = v87;
  v61 = v98;
  sub_24B2D49C4();

  (*(v88 + 8))(v61, v60);
  v62 = v104;
  v105 = sub_24B170614();
  v106 = v63 & 1;
  sub_24B179024(v62, v52, v101);
  v64 = v86;
  v65 = swift_allocObject();
  sub_24B178FBC(v52, v65 + v53, v55);
  v107 = v60;
  v108 = v56;
  v109 = v57;
  v110 = v58;
  swift_getOpaqueTypeConformance2();
  v66 = v64;
  v67 = v90;
  sub_24B2D49B4();

  (*(v91 + 8))(v59, v67);
  v68 = sub_24B2D50C4();
  v69 = (v104 + *(v89 + 56));
  v70 = *v69;
  v71 = *(v69 + 1);
  LOBYTE(v107) = v70;
  v108 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8, &qword_24B2E2930);
  sub_24B2D4CD4();
  v72 = 0;
  if ((v105 & 1) == 0)
  {
  }

  v73 = v94;
  (*(v92 + 32))(v94, v66, v93);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD9B0, &qword_24B2EE990);
  v75 = (v73 + *(result + 36));
  *v75 = v68;
  v75[1] = v72;
  return result;
}

uint64_t sub_24B171A7C@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = sub_24B2D2F34();
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x28223BE20](v2);
  v62 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InteractiveMapV2(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = sub_24B2D2E84();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD920, &qword_24B2EE948);
  MEMORY[0x28223BE20](v53);
  v11 = &v51 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD918, &qword_24B2EE940);
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v52 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD910, &qword_24B2EE938);
  v14 = *(v13 - 8);
  v59 = v13;
  v60 = v14;
  MEMORY[0x28223BE20](v13);
  v56 = &v51 - v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8F0, &qword_24B2EE928);
  MEMORY[0x28223BE20](v63);
  v17 = &v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8E8, &qword_24B2EE920);
  v19 = *(v18 - 8);
  v64 = v18;
  v65 = v19;
  MEMORY[0x28223BE20](v18);
  v61 = &v51 - v20;
  sub_24B1731D0(v11);
  sub_24B2D2E74();
  v21 = v1;
  sub_24B179024(v1, &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InteractiveMapV2);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  sub_24B178FBC(&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for InteractiveMapV2);
  v24 = sub_24B1778A0();
  v25 = v53;
  sub_24B2D4614();

  (*(v54 + 8))(v9, v55);
  sub_24AFF8258(v11, &qword_27EFCD920, &qword_24B2EE948);
  v26 = (v21 + *(v5 + 48));
  v28 = *v26;
  v27 = v26[1];
  v73 = v28;
  v74 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD828, &qword_24B2EEB60);
  sub_24B2D4CD4();
  v29 = v72;
  swift_getKeyPath();
  v73 = v29;
  sub_24B1793FC(&qword_27EFCD5A8, type metadata accessor for CustomMapStyleLoader, &unk_24B2EE110);
  sub_24B2D2584();

  v30 = v29[16];
  v31 = v29[17];
  LODWORD(v5) = v29[18];

  if (v5)
  {
    v32 = 0x10000;
  }

  else
  {
    v32 = 0;
  }

  if (v31)
  {
    v33 = 256;
  }

  else
  {
    v33 = 0;
  }

  v34 = v62;
  sub_24B165990(v33 | v30 | v32, v62);
  v73 = v25;
  v74 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v56;
  v37 = v57;
  v38 = v52;
  sub_24B2D4664();
  (*(v66 + 8))(v34, v67);
  (*(v58 + 8))(v38, v37);
  v71 = v21;
  sub_24B2D3014();
  v73 = v37;
  v74 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24B1793FC(&qword_27EFCD7D0, MEMORY[0x277CE4320], MEMORY[0x277CE4318]);
  v39 = v59;
  sub_24B2D4624();
  (*(v60 + 8))(v36, v39);
  v70 = v21;
  v40 = sub_24B2D5034();
  v42 = v41;
  v43 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD908, &qword_24B2EE930) + 36)];
  sub_24B175DF0(sub_24B178C90, v69, v43);
  v44 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD968, &qword_24B2EE970) + 36));
  *v44 = v40;
  v44[1] = v42;
  sub_24B1750DC();
  v45 = v63;
  v17[*(v63 + 36)] = v46 & 1;
  v47 = sub_24B177624();
  v48 = v61;
  sub_24B2D4634();
  sub_24AFF8258(v17, &qword_27EFCD8F0, &qword_24B2EE928);
  sub_24B2D5134();
  v73 = v45;
  v74 = v47;
  swift_getOpaqueTypeConformance2();
  v49 = v64;
  sub_24B2D4654();
  return (*(v65 + 8))(v48, v49);
}

uint64_t sub_24B1722C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v5 = sub_24B2D1974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8B0, &unk_24B2F42D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA30, &qword_24B2EEB58);
  MEMORY[0x28223BE20](v12);
  v33 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v30 = v17;
  v31 = a1;
  v18 = *(v17 + 48);
  sub_24B008890(a1, &v28 - v15, &qword_27EFCD8B0, &unk_24B2F42D0);
  v32 = a2;
  sub_24B008890(a2, &v16[v18], &qword_27EFCD8B0, &unk_24B2F42D0);
  v19 = *(v6 + 48);
  if (v19(v16, 1, v5) == 1)
  {
    if (v19(&v16[v18], 1, v5) == 1)
    {
      return sub_24AFF8258(v16, &qword_27EFCD8B0, &unk_24B2F42D0);
    }

    goto LABEL_6;
  }

  sub_24B008890(v16, v11, &qword_27EFCD8B0, &unk_24B2F42D0);
  if (v19(&v16[v18], 1, v5) == 1)
  {
    (*(v6 + 8))(v11, v5);
LABEL_6:
    sub_24AFF8258(v16, &qword_27EFCDA30, &qword_24B2EEB58);
    v16 = v33;
    goto LABEL_7;
  }

  (*(v6 + 32))(v8, &v16[v18], v5);
  sub_24B1793FC(&qword_27EFCC7C8, MEMORY[0x277D08CF8], MEMORY[0x277D08D08]);
  v26 = sub_24B2D52A4();
  v27 = *(v6 + 8);
  v27(v8, v5);
  v27(v11, v5);
  result = sub_24AFF8258(v16, &qword_27EFCD8B0, &unk_24B2F42D0);
  v16 = v33;
  if (v26)
  {
    return result;
  }

LABEL_7:
  v20 = *(v30 + 48);
  sub_24B008890(v31, v16, &qword_27EFCD8B0, &unk_24B2F42D0);
  sub_24B008890(v32, &v16[v20], &qword_27EFCD8B0, &unk_24B2F42D0);
  v21 = (v19)(&v16[v20], 1, v5);
  if (v21 == 1)
  {
    result = (v19)(v16, 1, v5);
    if (result == 1)
    {
      return result;
    }

    v23 = v29 + *(type metadata accessor for InteractiveMapV2(0) + 52);
    v24 = *v23;
    v25 = *(v23 + 8);
    v35 = v24;
    v36 = v25;
    v34 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8, &qword_24B2E2930);
    sub_24B2D4CE4();
  }

  else
  {
    MEMORY[0x28223BE20](v21);
    *(&v28 - 2) = v29;
    sub_24B2D3824();
    sub_24AFF8258(&v16[v20], &qword_27EFCD8B0, &unk_24B2F42D0);
  }

  return sub_24AFF8258(v16, &qword_27EFCD8B0, &unk_24B2F42D0);
}

double sub_24B17276C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a4(a1, a2, a3);

  return result;
}

void sub_24B17283C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B1771E4(a1, a2);
  if ((v3 & 1) == 0)
  {
    MEMORY[0x28223BE20](v3);
    sub_24B2D3824();
  }
}

double sub_24B1728D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a4(a1, a2, a3);

  return result;
}

double sub_24B1729AC()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_24B2D50C4();
  MEMORY[0x28223BE20](v0);
  sub_24B2D35C4();

  return result;
}

void sub_24B172A9C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8B0, &unk_24B2F42D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v51[-v8];
  v10 = sub_24B2D2DE4();
  v58 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v56 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v54 = &v51[-v13];
  MEMORY[0x28223BE20](v14);
  v55 = &v51[-v15];
  MEMORY[0x28223BE20](v16);
  v57 = &v51[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v51[-v19];
  if ((a1 & 1) != 0 || (v53 = type metadata accessor for InteractiveMapV2(0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028, &qword_24B2E3D70), sub_24B2D4CD4(), v34 = sub_24B2D2D64(), v35 = *(v58 + 8), v35(v20, v10), (v34 & 1) == 0) && (v36 = v57, sub_24B2D4CD4(), v37 = sub_24B2D2D84(), v35(v36, v10), (v37 & 1) == 0) && (v38 = v57, sub_24B2D4CD4(), v39 = sub_24B2D2D74(), v35(v38, v10), (v39 & 1) == 0) && (v40 = (v2 + *(v53 + 52)), v41 = *v40, v42 = *(v40 + 1), LOBYTE(v61) = v41, *(&v61 + 1) = v42, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8, &qword_24B2E2930), sub_24B2D4CD4(), (v59 & 1) == 0))
  {
    v53 = v10;
    v21 = type metadata accessor for InteractiveMapV2(0);
    v22 = (v2 + *(v21 + 52));
    v23 = *v22;
    v24 = *(v22 + 1);
    LOBYTE(v61) = v23;
    *(&v61 + 1) = v24;
    LOBYTE(v59) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8, &qword_24B2E2930);
    sub_24B2D4CE4();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8, &unk_24B2EE8E0);
    MEMORY[0x24C23B610]();
    v26 = sub_24B2D1974();
    v52 = (*(*(v26 - 8) + 48))(v9, 1, v26);
    sub_24AFF8258(v9, &qword_27EFCD8B0, &unk_24B2F42D0);
    v28 = *(v2 + 8);
    v27 = *(v2 + 16);
    MEMORY[0x24C23B610](v25);
    v29 = sub_24B175478(v28, v27, v6);
    sub_24AFF8258(v6, &qword_27EFCD8B0, &unk_24B2F42D0);
    v30 = 0.0;
    if (*(v29 + 2) >= 2uLL)
    {
      if (qword_27EFC76F0 != -1)
      {
        swift_once();
      }

      v30 = *&qword_27EFCD2C0;
    }

    v31 = (v2 + *(v21 + 36));
    v32 = *(v31 + 16);
    v33 = *(v31 + 3);
    v61 = *v31;
    LOBYTE(v62) = v32;
    v63 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA28, &qword_24B2EEB40);
    sub_24B2D4CD4();
    if (v60)
    {
    }

    else
    {
      v43 = 40.0;
      if (v52 == 1)
      {
        v43 = 0.0;
      }

      sub_24B164A6C(v29, &v61, v30, v30, v43 + v30, v30);
      v44 = v53;
      if ((v64 & 1) == 0)
      {
        v45 = v54;
        sub_24B2D2DA4();
        v46 = v58;
        v47 = v55;
        (*(v58 + 32))(v55, v45, v44);
        v48 = *(v46 + 16);
        v49 = v57;
        v48(v57, v47, v44);
        v48(v56, v49, v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028, &qword_24B2E3D70);
        sub_24B2D4CE4();
        v50 = *(v46 + 8);
        v50(v49, v44);
        v50(v47, v44);
      }
    }
  }
}

double sub_24B173064(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((v4 & 1) == 0)
  {
    if (v3 == v5)
    {
      v8 = v6;
    }

    else
    {
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    type metadata accessor for InteractiveMapV2(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8, &qword_24B2E2930);
    sub_24B2D4CE4();

    return result;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_5:

  return result;
}

uint64_t sub_24B1731A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return sub_24B1769BC(v2, v3);
    }

    return 0;
  }

  return !v3;
}

uint64_t sub_24B1731D0@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = type metadata accessor for InteractiveMapV2(0);
  v26 = *(v1 - 8);
  v25 = *(v26 + 64);
  MEMORY[0x28223BE20](v1);
  v24 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8, &unk_24B2EE8E0);
  MEMORY[0x28223BE20](v22);
  v21[1] = v21 - v3;
  v4 = sub_24B2D2E24();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9800, &qword_24B2E42C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA058, &qword_24B2E3DD0);
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028, &qword_24B2E3D70);
  sub_24B2D4CF4();
  v9 = sub_24B2D2D44();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA0B0, &unk_24B2EECC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24B2DE430;
  sub_24B2D2DF4();
  v29 = v10;
  sub_24B1793FC(&qword_27EFC9818, MEMORY[0x277CE42D0], MEMORY[0x277CE42D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9820, &qword_24B2E30C0);
  sub_24B039184(&qword_27EFC9828, &qword_27EFC9820, &qword_24B2E30C0, MEMORY[0x277D83970]);
  sub_24B2D5B44();
  v11 = v27;
  sub_24B2D4E64();
  sub_24B2D5134();
  v28 = v11;
  sub_24B2D1974();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDAB0, &qword_24B2EECD0);
  sub_24B1793FC(&qword_27EFCC7C0, MEMORY[0x277D08CF8], MEMORY[0x277D08D00]);
  sub_24B039184(&qword_27EFCDAB8, &qword_27EFCDAB0, &qword_24B2EECD0, MEMORY[0x277CE42A0]);
  v12 = v23;
  sub_24B2D2CB4();
  v13 = sub_24B2D4A84();
  KeyPath = swift_getKeyPath();
  v15 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD938, &qword_24B2EE950) + 36));
  *v15 = KeyPath;
  v15[1] = v13;
  v16 = v24;
  sub_24B179024(v27, v24, type metadata accessor for InteractiveMapV2);
  v17 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v18 = swift_allocObject();
  sub_24B178FBC(v16, v18 + v17, type metadata accessor for InteractiveMapV2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD920, &qword_24B2EE948);
  v20 = (v12 + *(result + 36));
  *v20 = sub_24B174334;
  v20[1] = 0;
  v20[2] = sub_24B179094;
  v20[3] = v18;
  return result;
}

double sub_24B173750@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for InteractiveMapV2(0);
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDAC0, &unk_24B2EECD8);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9898, &qword_24B2E3E40);
  v10 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  sub_24B2D5694();
  v41 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3034();
  v50 = *(a1 + 8);
  sub_24B179024(a1, &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InteractiveMapV2);
  v16 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v17 = swift_allocObject();
  sub_24B178FBC(&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for InteractiveMapV2);

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD988, &qword_24B2EE980);
  v18 = sub_24B2D1974();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDAC8, &qword_24B2EECE8);
  sub_24B039184(&qword_27EFCDAD0, &qword_27EFCD988, &qword_24B2EE980, MEMORY[0x277D83980]);
  v19 = type metadata accessor for AnnotationContentV2(255);
  v20 = sub_24B1793FC(&qword_27EFCDAD8, type metadata accessor for AnnotationContentV2, &unk_24B2ED5E0);
  v38 = v15;
  v21 = v20;
  v22 = sub_24B1793FC(&qword_27EFCC7C0, MEMORY[0x277D08CF8], MEMORY[0x277D08D00]);
  v46 = v19;
  v47 = v18;
  v48 = v21;
  v49 = v22;
  swift_getOpaqueTypeConformance2();
  sub_24B1793FC(&qword_27EFCDAE0, type metadata accessor for AnnotationV2, &protocol conformance descriptor for AnnotationV2);
  v23 = v9;
  v37 = v9;
  sub_24B2D4EC4();
  v24 = *(v10 + 16);
  v25 = v12;
  v26 = v12;
  v27 = v39;
  v24(v26, v15, v39);
  v28 = v42;
  v29 = v43;
  v30 = *(v42 + 16);
  v30(v45, v23, v43);
  v31 = v44;
  v24(v44, v25, v27);
  v32 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDAE8, &unk_24B2EECF0) + 48)];
  v33 = v45;
  v30(v32, v45, v29);
  v34 = *(v28 + 8);
  v34(v37, v29);
  v35 = *(v10 + 8);
  v35(v38, v27);
  v34(v33, v29);
  v35(v25, v27);

  return result;
}

double sub_24B173CC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v42 = type metadata accessor for AnnotationContentV2(0);
  MEMORY[0x28223BE20](v42);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D1974();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA30, &qword_24B2EEB58);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8B0, &unk_24B2F42D0);
  MEMORY[0x28223BE20](v12 - 8);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  sub_24B2D5694();
  v39 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for InteractiveMapV2(0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8, &unk_24B2EE8E0);
  v40 = a2;
  MEMORY[0x24C23B610](v20);
  v21 = *(v7 + 16);
  v44 = a1;
  v21(v16, a1, v6);
  (*(v7 + 56))(v16, 0, 1, v6);
  v22 = *(v9 + 48);
  sub_24B008890(v19, v11, &qword_27EFCD8B0, &unk_24B2F42D0);
  sub_24B008890(v16, &v11[v22], &qword_27EFCD8B0, &unk_24B2F42D0);
  v23 = *(v7 + 48);
  if (v23(v11, 1, v6) != 1)
  {
    v28 = v38;
    sub_24B008890(v11, v38, &qword_27EFCD8B0, &unk_24B2F42D0);
    if (v23(&v11[v22], 1, v6) != 1)
    {
      v29 = v37;
      (*(v7 + 32))(v37, &v11[v22], v6);
      sub_24B1793FC(&qword_27EFCC7C8, MEMORY[0x277D08CF8], MEMORY[0x277D08D08]);
      v27 = sub_24B2D52A4();
      v30 = *(v7 + 8);
      v30(v29, v6);
      sub_24AFF8258(v16, &qword_27EFCD8B0, &unk_24B2F42D0);
      sub_24AFF8258(v19, &qword_27EFCD8B0, &unk_24B2F42D0);
      v30(v38, v6);
      sub_24AFF8258(v11, &qword_27EFCD8B0, &unk_24B2F42D0);
      v25 = v44;
      v26 = v40;
      goto LABEL_10;
    }

    sub_24AFF8258(v16, &qword_27EFCD8B0, &unk_24B2F42D0);
    sub_24AFF8258(v19, &qword_27EFCD8B0, &unk_24B2F42D0);
    (*(v7 + 8))(v28, v6);
    v25 = v44;
    v26 = v40;
    goto LABEL_8;
  }

  sub_24AFF8258(v16, &qword_27EFCD8B0, &unk_24B2F42D0);
  sub_24AFF8258(v19, &qword_27EFCD8B0, &unk_24B2F42D0);
  v24 = v23(&v11[v22], 1, v6);
  v25 = v44;
  v26 = v40;
  if (v24 != 1)
  {
LABEL_8:
    sub_24AFF8258(v11, &qword_27EFCDA30, &qword_24B2EEB58);
    v27 = 0;
    goto LABEL_10;
  }

  sub_24AFF8258(v11, &qword_27EFCD8B0, &unk_24B2F42D0);
  v27 = 1;
LABEL_10:
  v31 = (*(*(v26 + 8) + 16) < 2uLL) | v27;
  v32 = v41;
  sub_24B179024(v25, v41, type metadata accessor for AnnotationV2);
  v33 = v42;
  *(v32 + *(v42 + 20)) = v31 & 1;
  *(v32 + v33[6]) = v31 & 1;
  *(v32 + v33[7]) = v27 & 1;
  v34 = v33[8];
  sub_24B2D4A84();
  v35 = sub_24B2D4B44();

  *(v32 + v34) = v35;
  sub_24B1793FC(&qword_27EFCDAD8, type metadata accessor for AnnotationContentV2, &unk_24B2ED5E0);
  sub_24B1793FC(&qword_27EFCC7C0, MEMORY[0x277D08CF8], MEMORY[0x277D08D00]);
  sub_24B2D2FF4();
  sub_24B179444(v32, type metadata accessor for AnnotationContentV2);

  return result;
}

double sub_24B174334@<D0>(double *a2@<X8>)
{
  sub_24B2D3514();
  v4 = v3;
  sub_24B2D3504();
  v6 = v4 + v5;
  sub_24B2D3504();
  v8 = v6 + v7;
  sub_24B2D3514();
  v10 = v9;
  sub_24B2D3504();
  v12 = v10 + v11;
  sub_24B2D3504();
  result = v12 + v13;
  *a2 = v8;
  a2[1] = v12 + v13;
  return result;
}

double sub_24B174394(uint64_t *a1, uint64_t a2)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for InteractiveMapV2(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA28, &qword_24B2EEB40);
  sub_24B2D4CE4();
  sub_24B172A9C(0);

  return result;
}

void sub_24B174494(uint64_t a1, uint64_t a2)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D2E54();
  type metadata accessor for InteractiveMapV2(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA38, &qword_24B2EEB90);
  sub_24B2D4CE4();
}

double sub_24B1745A8(void *a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3DF4();
  sub_24B2D5134();
  sub_24B2D3004();

  return result;
}

uint64_t sub_24B17466C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDAA0, &unk_24B2EEC70);
  v90 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v71 - v4;
  v6 = sub_24B2D2F94();
  v82 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v89 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v88 = &v71 - v9;
  v10 = type metadata accessor for InteractiveMapV2(0);
  v78 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v79 = v11;
  v80 = (&v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = type metadata accessor for CustomMapFocusButton(0);
  MEMORY[0x28223BE20](v81);
  v87 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v71 - v14;
  MEMORY[0x28223BE20](v16);
  v86 = &v71 - v17;
  v95 = sub_24B2D2CD4();
  v97 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v71 - v20;
  v93 = sub_24B2D2E44();
  v96 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v83 = &v71 - v24;
  v25 = type metadata accessor for CustomMapStyleToggle(0);
  MEMORY[0x28223BE20](v25);
  v85 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v71 - v28;
  v30 = a1;
  sub_24B170780();
  if (sub_24B2D3314())
  {
    v31 = v91;
    v32 = *(v90 + 56);

    return v32(v31, 1, 1, v3);
  }

  else
  {
    v75 = v6;
    v76 = v5;
    v77 = v3;
    v34 = (a1 + *(v10 + 40));
    v36 = *v34;
    v35 = v34[1];
    v101 = v36;
    v102 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD828, &qword_24B2EEB60);
    sub_24B2D4CF4();
    v37 = v106;
    v38 = v107;
    v39 = v108;
    swift_getKeyPath();
    v106 = v37;
    v107 = v38;
    v108 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD858, &qword_24B2EE7B8);
    sub_24B2D4E54();

    v40 = v101;
    v74 = v102;
    v84 = v21;
    v41 = v103;
    v73 = v104;
    v72 = v105;

    v42 = sub_24B2D5134();
    v98 = 0;
    sub_24B2D4CC4();
    v43 = v100;
    v29[24] = v99;
    *(v29 + 4) = v43;
    v44 = *(v25 + 24);
    *&v29[v44] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD4E0, &qword_24B2EE4E0);
    swift_storeEnumTagMultiPayload();
    v45 = v74;
    *v29 = v40;
    *(v29 + 1) = v45;
    v29[16] = v41;
    v29[17] = v73;
    v29[18] = v72;
    *&v29[*(v25 + 28)] = v42;
    sub_24B2D5134();
    v46 = v83;
    sub_24B2D2E34();
    sub_24B2D5134();
    sub_24B2D2CC4();
    sub_24B1750DC();
    v47 = v46;
    if (v48)
    {
      v49 = 1;
    }

    else
    {
      sub_24B1708D8();
      v49 = sub_24B2D3314();
    }

    v50 = v30;
    v51 = v80;
    sub_24B179024(v50, v80, type metadata accessor for InteractiveMapV2);
    v52 = (*(v78 + 80) + 16) & ~*(v78 + 80);
    v53 = swift_allocObject();
    sub_24B178FBC(v51, v53 + v52, type metadata accessor for InteractiveMapV2);
    *v15 = v49 & 1;
    *(v15 + 1) = sub_24B178F5C;
    *(v15 + 2) = v53;
    v54 = *(v81 + 6);
    *&v15[v54] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v55 = v86;
    sub_24B178FBC(v15, v86, type metadata accessor for CustomMapFocusButton);
    sub_24B2D5134();
    v56 = v88;
    sub_24B2D2F84();
    v57 = v85;
    v81 = v29;
    sub_24B179024(v29, v85, type metadata accessor for CustomMapStyleToggle);
    v80 = *(v96 + 16);
    (v80)(v92, v47, v93);
    v79 = *(v97 + 16);
    v79(v94, v84, v95);
    v78 = type metadata accessor for CustomMapFocusButton;
    v58 = v87;
    sub_24B179024(v55, v87, type metadata accessor for CustomMapFocusButton);
    v59 = v82;
    v74 = *(v82 + 16);
    v60 = v75;
    v74(v89, v56, v75);
    v61 = v57;
    v62 = v76;
    sub_24B179024(v61, v76, type metadata accessor for CustomMapStyleToggle);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDAA8, &qword_24B2EECB8);
    (v80)(v62 + v63[12], v92, v93);
    v64 = v95;
    v79((v62 + v63[16]), v94, v95);
    sub_24B179024(v58, v62 + v63[20], v78);
    v65 = v89;
    v74(v62 + v63[24], v89, v60);
    v66 = *(v59 + 8);
    v66(v88, v60);
    sub_24B179444(v86, type metadata accessor for CustomMapFocusButton);
    v67 = *(v97 + 8);
    v97 += 8;
    v67(v84, v64);
    v68 = *(v96 + 8);
    v96 += 8;
    v69 = v93;
    v68(v83, v93);
    sub_24B179444(v81, type metadata accessor for CustomMapStyleToggle);
    v66(v65, v60);
    sub_24B179444(v87, type metadata accessor for CustomMapFocusButton);
    v67(v94, v95);
    v68(v92, v69);
    sub_24B179444(v85, type metadata accessor for CustomMapStyleToggle);
    v70 = v91;
    sub_24B0391CC(v62, v91, &qword_27EFCDAA0, &unk_24B2EEC70);
    return (*(v90 + 56))(v70, 0, 1, v77);
  }
}

void sub_24B1750DC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8B0, &unk_24B2F42D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v36 - v3;
  v5 = sub_24B2D2DE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = *(v1 + 8);
  if (*(v12 + 16))
  {
    *&v37 = v4;
    *&v36 = type metadata accessor for InteractiveMapV2(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028, &qword_24B2E3D70);
    sub_24B2D4CD4();
    sub_24B2D2DD4();
    v13 = sub_24B2D2D94();
    v14 = *(v6 + 8);
    v14(v8, v5);
    v14(v11, v5);
    if ((v13 & 1) == 0)
    {
      sub_24B2D4CD4();
      v15 = sub_24B2D2D84();
      v14(v11, v5);
      if ((v15 & 1) == 0)
      {
        v16 = *(v1 + 16);
        v17 = v36;
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8, &unk_24B2EE8E0);
        v19 = v37;
        MEMORY[0x24C23B610](v18);
        v20 = sub_24B175478(v12, v16, v19);
        sub_24AFF8258(v19, &qword_27EFCD8B0, &unk_24B2F42D0);
        v21 = *(v20 + 2);
        if (v21)
        {
          sub_24B2D5694();
          v22 = 0;
          v23 = (v1 + *(v17 + 44));
          v24 = *v23;
          v36 = v23[1];
          v37 = v24;
          v25 = *(v23 + 4);
          v26 = v21 - 1;
          v27 = (v20 + 40);
          while (v22 < *(v20 + 2))
          {
            v28 = *(v27 - 1);
            v29 = *v27;
            sub_24B2D5684();
            sub_24B2D5604();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            v42 = v37;
            v43 = v36;
            v44 = v25;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA38, &qword_24B2EEB90);
            sub_24B2D4CD4();
            v30 = v38;
            v31 = v39;
            v32 = v40;
            v33 = v41;
            v45.latitude = v28;
            v45.longitude = v29;
            v46 = MKMapPointForCoordinate(v45);
            v47.origin.x = v30;
            v47.origin.y = v31;
            v47.size.width = v32;
            v47.size.height = v33;
            v34 = MKMapRectContainsPoint(v47, v46);

            if (v34)
            {
              v27 += 3;
              if (v26 != v22++)
              {
                continue;
              }
            }

            goto LABEL_13;
          }

          __break(1u);
        }

        else
        {
LABEL_13:
        }
      }
    }
  }
}

char *sub_24B175478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a1;
  v65 = type metadata accessor for AnnotationV2(0);
  v71 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v73 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v63 - v7;
  v9 = sub_24B2D1974();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8B0, &unk_24B2F42D0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v63 - v17;
  v19 = v10;
  sub_24B008890(a3, &v63 - v17, &qword_27EFCD8B0, &unk_24B2F42D0);
  if ((*(v10 + 48))(v18, 1, v9) == 1)
  {
  }

  else
  {
    (*(v10 + 32))(v15, v18, v9);
    sub_24B2D5694();
    v70 = sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8008, &qword_24B2DFC68);
    v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_24B2DE430;
    (*(v19 + 16))(v21 + v20, v15, v9);
    v22 = sub_24B136BB4(v21);
    swift_setDeallocating();
    v23 = *(v19 + 8);
    v23(v21 + v20, v9);
    swift_deallocClassInstance();
    v23(v15, v9);
    a2 = v22;
  }

  v24 = v72;
  if (*(a2 + 16))
  {
    v69 = *(v72 + 16);
    if (v69)
    {
      v25 = sub_24B2D5694();
      v26 = 0;
      v67 = v24 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
      v68 = v25;
      v66 = *(v71 + 72);
      v71 = v19 + 16;
      v72 = a2 + 56;
      v63 = v19;
      v27 = (v19 + 8);
      v64 = MEMORY[0x277D84F90];
      do
      {
        sub_24B179024(v67 + v66 * v26, v73, type metadata accessor for AnnotationV2);
        v70 = sub_24B2D5684();
        sub_24B2D5604();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v28 = a2;
        if (*(a2 + 16) && (sub_24B1793FC(&qword_27EFCC7C0, MEMORY[0x277D08CF8], MEMORY[0x277D08D00]), v29 = sub_24B2D5244(), v30 = -1 << *(a2 + 32), v31 = v29 & ~v30, ((*(v72 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
        {
          v32 = ~v30;
          v33 = *(v63 + 72);
          v34 = *(v63 + 16);
          while (1)
          {
            v34(v12, *(v28 + 48) + v33 * v31, v9);
            sub_24B1793FC(&qword_27EFCC7C8, MEMORY[0x277D08CF8], MEMORY[0x277D08D08]);
            v35 = sub_24B2D52A4();
            (*v27)(v12, v9);
            if (v35)
            {
              break;
            }

            v31 = (v31 + 1) & v32;
            if (((*(v72 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
            {
              goto LABEL_9;
            }
          }

          v36 = v73;
          sub_24B2D1BE4();
          v38 = v37;
          v40 = v39;
          sub_24B2D1C04();
          v42 = v41;
          sub_24B179444(v36, type metadata accessor for AnnotationV2);

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            a2 = v28;
            v43 = v64;
          }

          else
          {
            v43 = sub_24B006D1C(0, *(v64 + 2) + 1, 1, v64);
            a2 = v28;
          }

          v45 = *(v43 + 2);
          v44 = *(v43 + 3);
          if (v45 >= v44 >> 1)
          {
            v43 = sub_24B006D1C((v44 > 1), v45 + 1, 1, v43);
          }

          *(v43 + 2) = v45 + 1;
          v64 = v43;
          v46 = &v43[24 * v45];
          *(v46 + 4) = v38;
          *(v46 + 5) = v40;
          *(v46 + 6) = v42;
        }

        else
        {
LABEL_9:
          sub_24B179444(v73, type metadata accessor for AnnotationV2);

          a2 = v28;
        }

        ++v26;
      }

      while (v26 != v69);

      return v64;
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {

    v48 = *(v24 + 16);
    result = MEMORY[0x277D84F90];
    if (v48)
    {
      v74 = MEMORY[0x277D84F90];
      sub_24B007A3C(0, v48, 0);
      v49 = v71;
      v50 = v24 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
      v51 = v74;
      sub_24B2D5694();
      v52 = *(v49 + 72);
      do
      {
        sub_24B179024(v50, v8, type metadata accessor for AnnotationV2);
        sub_24B2D5684();
        sub_24B2D5604();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        sub_24B2D1BE4();
        v54 = v53;
        v56 = v55;
        sub_24B2D1C04();
        v58 = v57;

        sub_24B179444(v8, type metadata accessor for AnnotationV2);
        v59 = v51;
        v74 = v51;
        v61 = *(v51 + 16);
        v60 = *(v51 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_24B007A3C((v60 > 1), v61 + 1, 1);
          v59 = v74;
        }

        *(v59 + 16) = v61 + 1;
        v51 = v59;
        v62 = (v59 + 24 * v61);
        v62[4] = v54;
        v62[5] = v56;
        v62[6] = v58;
        v50 += v52;
        --v48;
      }

      while (v48);
      return v59;
    }
  }

  return result;
}

uint64_t sub_24B175CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  sub_24B2D5694();
  *(v4 + 40) = sub_24B2D5684();
  v6 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B175D40, v6, v5);
}

uint64_t sub_24B175D40()
{
  v1 = *(v0 + 32);

  v2 = (v1 + *(type metadata accessor for InteractiveMapV2(0) + 48));
  v3 = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8, &qword_24B2E2930);
  sub_24B2D4CE4();
  v5 = *(v0 + 8);

  return v5();
}

void sub_24B175DF0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = sub_24B2D3764();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D3844();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA40, &qword_24B2EEB98);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA48, &qword_24B2EEBA0);
  MEMORY[0x28223BE20](v34);
  v15 = &v32 - v14;
  sub_24B2D5694();
  v35 = sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v32 - 2) = a1;
  *(&v32 - 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA50, &qword_24B2EEBA8);
  sub_24B039184(&qword_27EFCDA58, &qword_27EFCDA50, &qword_24B2EEBA8, MEMORY[0x277CE1198]);
  sub_24B2D3F94();
  sub_24B2D3834();
  sub_24B039184(&qword_27EFCDA60, &qword_27EFCDA40, &qword_24B2EEB98, MEMORY[0x277CE0480]);
  sub_24B1793FC(&qword_27EFCAFA8, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
  v17 = v33;
  sub_24B2D46D4();
  (*(v32 + 8))(v9, v17);
  (*(v11 + 8))(v13, v10);
  v18 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA68, &unk_24B2EEBB0) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E10, &qword_24B2E9E00);
  sub_24B2D3944();
  *v18 = swift_getKeyPath();
  LOBYTE(v18) = sub_24B2D42F4();
  v19 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA70, &qword_24B2EEBF0) + 36)];
  *v19 = v18;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  v20 = sub_24B2D4B54();
  KeyPath = swift_getKeyPath();
  v22 = &v15[*(v34 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  v24 = v36;
  v23 = v37;
  v25 = v38;
  (*(v37 + 104))(v36, *MEMORY[0x277CDF9D8], v38);
  sub_24B178CA0();
  v26 = v39;
  sub_24B2D4764();
  (*(v23 + 8))(v24, v25);
  sub_24AFF8258(v15, &qword_27EFCDA48, &qword_24B2EEBA0);
  v27 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA90, &qword_24B2EEC28) + 36));
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E20, &qword_24B2EEC30) + 28);
  v29 = *MEMORY[0x277CDF440];
  v30 = sub_24B2D3364();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  v31 = swift_getKeyPath();

  *v27 = v31;
}

double sub_24B17638C@<D0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_24B2D3DF4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA98, &qword_24B2EEC68);
  a1();

  return result;
}

uint64_t (*EnvironmentValues.mapCameraStatePreservation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v6 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_24B177EA4(v3, v4, v5);
  sub_24B2D3C74();
  v7 = *(v6 + 24);
  *v6 = *(v6 + 16);
  *(v6 + 8) = v7;
  return sub_24B1765EC;
}

uint64_t sub_24B176618(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_24B2D3C74();
  return v3;
}

void *keypath_getTm@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a3@<X8>)
{
  a1();
  result = sub_24B2D3C74();
  *a3 = v5;
  *(a3 + 8) = v6;
  return result;
}

uint64_t (*EnvironmentValues.mapAnimatableChangesStableValue.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v6 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_24B177EF8(v3, v4, v5);
  sub_24B2D3C74();
  v7 = *(v6 + 24);
  *v6 = *(v6 + 16);
  *(v6 + 8) = v7;
  return sub_24B176870;
}

void sub_24B17687C(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a1 + 8);
  v3 = *a1;
  *(v3 + 2) = **a1;
  v3[24] = v4;
  sub_24B2D3C84();

  free(v3);
}

uint64_t sub_24B1768F4(uint64_t a1)
{
  v2 = sub_24B2D3364();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x24C23A1E0](v5);
}

uint64_t sub_24B1769BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80, &qword_24B2E8E00);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v41 - v7;
  v8 = sub_24B2D24A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450, &qword_24B2DE7A0);
  MEMORY[0x28223BE20](v11 - 8);
  v48 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v49 = &v41 - v14;
  v15 = type metadata accessor for AnnotationV2(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (!v22 || a1 == a2)
  {
    return 1;
  }

  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v55 = (v9 + 48);
  v44 = (v9 + 32);
  v43 = (v9 + 8);
  v25 = a2 + v23;
  v42 = *(v19 + 72);
  v56 = v8;
  while (1)
  {
    result = sub_24B179024(v24, v21, type metadata accessor for AnnotationV2);
    if (!v22)
    {
      break;
    }

    v51 = v24;
    sub_24B179024(v25, v17, type metadata accessor for AnnotationV2);
    sub_24B2D60E4();
    sub_24B2D1964();
    sub_24B2D5404();
    Icon.hash(into:)(v57);
    sub_24B2D1C24();
    v27 = v49;
    sub_24B008890(&v21[*(v15 + 32)], v49, &qword_27EFC8450, &qword_24B2DE7A0);
    v52 = *v55;
    v28 = v52(v27, 1, v8);
    v54 = v22;
    v50 = v25;
    if (v28 == 1)
    {
      sub_24B2D6104();
    }

    else
    {
      v29 = v47;
      (*v44)(v47, v49, v8);
      sub_24B2D6104();
      sub_24B1793FC(&qword_27EFCB108, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_24B2D5254();
      (*v43)(v29, v8);
    }

    v30 = v45;
    sub_24B008890(&v21[*(v15 + 36)], v45, &qword_27EFC8A80, &qword_24B2E8E00);
    v31 = sub_24B2D1BB4();
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    if (v33(v30, 1, v31) == 1)
    {
      sub_24AFF8258(v30, &qword_27EFC8A80, &qword_24B2E8E00);
    }

    else
    {
      sub_24B2D1B64();
      (*(v32 + 8))(v30, v31);
    }

    v53 = sub_24B2D6124();
    sub_24B2D60E4();
    sub_24B2D1964();
    sub_24B2D5404();
    Icon.hash(into:)(v57);
    sub_24B2D1C24();
    v34 = v48;
    sub_24B008890(&v17[*(v15 + 32)], v48, &qword_27EFC8450, &qword_24B2DE7A0);
    v35 = v34;
    v36 = v56;
    if (v52(v35, 1, v56) == 1)
    {
      sub_24B2D6104();
    }

    else
    {
      v37 = v47;
      (*v44)(v47, v48, v36);
      sub_24B2D6104();
      sub_24B1793FC(&qword_27EFCB108, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_24B2D5254();
      (*v43)(v37, v36);
    }

    v38 = v46;
    sub_24B008890(&v17[*(v15 + 36)], v46, &qword_27EFC8A80, &qword_24B2E8E00);
    if (v33(v38, 1, v31) == 1)
    {
      sub_24AFF8258(v38, &qword_27EFC8A80, &qword_24B2E8E00);
    }

    else
    {
      sub_24B2D1B64();
      (*(v32 + 8))(v38, v31);
    }

    v8 = v56;
    v39 = v54;
    v40 = sub_24B2D6124();
    sub_24B179444(v17, type metadata accessor for AnnotationV2);
    sub_24B179444(v21, type metadata accessor for AnnotationV2);
    result = v53 == v40;
    if (v53 == v40)
    {
      v22 = v39 - 1;
      v25 = v50 + v42;
      v24 = v51 + v42;
      if (v39 != 1)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
  return result;
}

double sub_24B17712C(uint64_t a1, uint64_t a2, char a3)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B172A9C(a3 & 1);

  return result;
}

void sub_24B1771E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1974();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v33 - v9;
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_24B1793FC(&qword_27EFCC7C0, MEMORY[0x277D08CF8], MEMORY[0x277D08D00]);
        v26 = sub_24B2D5244();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_24B1793FC(&qword_27EFCC7C8, MEMORY[0x277D08CF8], MEMORY[0x277D08D08]);
          v31 = sub_24B2D52A4();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

double sub_24B177594(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_24B177624()
{
  result = qword_27EFCD8F8;
  if (!qword_27EFCD8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8F0, &qword_24B2EE928);
    sub_24B1776DC();
    sub_24B039184(&qword_27EFCD970, &qword_27EFCD978, &qword_24B2EE978, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD8F8);
  }

  return result;
}

unint64_t sub_24B1776DC()
{
  result = qword_27EFCD900;
  if (!qword_27EFCD900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD908, &qword_24B2EE930);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD910, &qword_24B2EE938);
    sub_24B2D3014();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD918, &qword_24B2EE940);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD920, &qword_24B2EE948);
    sub_24B1778A0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24B1793FC(&qword_27EFCD7D0, MEMORY[0x277CE4320], MEMORY[0x277CE4318]);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFCD960, &qword_27EFCD968, &qword_24B2EE970, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD900);
  }

  return result;
}

unint64_t sub_24B1778A0()
{
  result = qword_27EFCD928;
  if (!qword_27EFCD928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD920, &qword_24B2EE948);
    sub_24B177958();
    sub_24B039184(&qword_27EFCD950, &qword_27EFCD958, &qword_24B2EE968, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD928);
  }

  return result;
}

unint64_t sub_24B177958()
{
  result = qword_27EFCD930;
  if (!qword_27EFCD930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD938, &qword_24B2EE950);
    sub_24B039184(&qword_27EFCD940, &qword_27EFCD948, &qword_24B2EE958, MEMORY[0x277CE42B0]);
    sub_24B039184(&qword_27EFC8EB0, &qword_27EFC8EB8, &qword_24B2EE960, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD930);
  }

  return result;
}

unint64_t sub_24B177A3C()
{
  result = qword_27EFCD980;
  if (!qword_27EFCD980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8B0, &unk_24B2F42D0);
    sub_24B1793FC(&qword_27EFCC7C8, MEMORY[0x277D08CF8], MEMORY[0x277D08D08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD980);
  }

  return result;
}

unint64_t sub_24B177BB8()
{
  result = qword_27EFCD990;
  if (!qword_27EFCD990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD988, &qword_24B2EE980);
    sub_24B1793FC(&qword_27EFCD220, type metadata accessor for AnnotationV2, &protocol conformance descriptor for AnnotationV2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD990);
  }

  return result;
}

void sub_24B177C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for InteractiveMapV2(0);

  sub_24B17283C(a1, a2, a3);
}

double sub_24B177D48()
{
  type metadata accessor for InteractiveMapV2(0);

  return sub_24B1729AC();
}

unint64_t sub_24B177DA8()
{
  result = qword_27EFCD9A8;
  if (!qword_27EFCD9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EFC8498, &qword_24B2EBB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD9A8);
  }

  return result;
}

double sub_24B177E24(uint64_t *a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for InteractiveMapV2(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24B173064(a1, a2, v6);
}

unint64_t sub_24B177EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD9B8;
  if (!qword_27EFCD9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD9B8);
  }

  return result;
}

unint64_t sub_24B177EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCD9C0;
  if (!qword_27EFCD9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD9C0);
  }

  return result;
}

void sub_24B177F90(uint64_t a1)
{
  sub_24B178304(319, &qword_27EFCD9D8, type metadata accessor for AnnotationV2, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24B178270(319);
    if (v2 <= 0x3F)
    {
      sub_24B178368(319, &qword_27EFCD9E8, &qword_27EFCD8B0, &unk_24B2F42D0, MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_24B178304(319, &qword_27EFCA040, MEMORY[0x277CE42C8], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_24B178368(319, &qword_27EFCD9F0, &qword_27EFCD8A0, &qword_24B2EE830, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_24B178304(319, &qword_27EFCD818, type metadata accessor for CustomMapStyleLoader, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_24B178304(319, &qword_27EFCD9F8, type metadata accessor for MKMapRect, MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_24B1783CC(319, &qword_27EFC98D8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
                {
                  sub_24B178368(319, &qword_27EFCDA00, &unk_27EFC8498, &qword_24B2EBB60, MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
                  {
                    sub_24B1783CC(319, &qword_27EFCDA08, MEMORY[0x277CDF388], MEMORY[0x277CDF468]);
                    if (v10 <= 0x3F)
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

void sub_24B178270(uint64_t a1)
{
  if (!qword_27EFCD9E0)
  {
    sub_24B2D1974();
    sub_24B1793FC(&qword_27EFCC7C0, MEMORY[0x277D08CF8], MEMORY[0x277D08D00]);
    v1 = sub_24B2D5854();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFCD9E0);
    }
  }
}

void sub_24B178304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_24B178368(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_24B1783CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24B17841C()
{
  result = qword_27EFCDA10;
  if (!qword_27EFCDA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD9B0, &qword_24B2EE990);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8D8, &qword_24B2EE910);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EFC8498, &qword_24B2EBB60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8D0, &qword_24B2EE908);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8C8, &qword_24B2EE900);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD998, &qword_24B2EE988);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8C0, &qword_24B2EE8F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD988, &qword_24B2EE980);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8B8, &qword_24B2EE8F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8B0, &unk_24B2F42D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8E8, &qword_24B2EE920);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8F0, &qword_24B2EE928);
    sub_24B177624();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24B177A3C();
    swift_getOpaqueTypeConformance2();
    sub_24B177BB8();
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFCD9A0, &qword_27EFCD998, &qword_24B2EE988, MEMORY[0x277D83B60]);
    swift_getOpaqueTypeConformance2();
    sub_24B177DA8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFCDA18, &qword_27EFCDA20, &qword_24B2EEA08, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCDA10);
  }

  return result;
}

uint64_t sub_24B1787BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for InteractiveMapV2(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23[-v11];
  v13 = v3 + *(v6 + 56);
  v14 = *v13;
  v15 = *(v13 + 8);
  v23[16] = v14;
  v24 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8, &qword_24B2E2930);
  v16 = sub_24B2D4CD4();
  if (v23[15] == 1 && *(a1 + 16))
  {
    v17 = sub_24B2D56D4();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
    sub_24B179024(v3, &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for InteractiveMapV2);
    sub_24B2D5694();
    v18 = sub_24B2D5684();
    v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    *(v20 + 16) = v18;
    *(v20 + 24) = v21;
    sub_24B178FBC(v9, v20 + v19, type metadata accessor for InteractiveMapV2);
    sub_24B00A9A4(0, 0, v12, &unk_24B2EEB50, v20);
  }

  MEMORY[0x28223BE20](v16);
  *&v23[-16] = v3;
  return sub_24B2D3824();
}

uint64_t sub_24B178B04(uint64_t a1)
{
  v4 = *(type metadata accessor for InteractiveMapV2(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFD370;

  return sub_24B175CA8(a1, v6, v7, v1 + v5);
}

void sub_24B178C18(uint64_t a1)
{
  v3 = *(type metadata accessor for InteractiveMapV2(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_24B174494(a1, v4);
}

unint64_t sub_24B178CA0()
{
  result = qword_27EFCDA78;
  if (!qword_27EFCDA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCDA48, &qword_24B2EEBA0);
    sub_24B178D58();
    sub_24B039184(&qword_27EFC8EB0, &qword_27EFC8EB8, &qword_24B2EE960, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCDA78);
  }

  return result;
}

unint64_t sub_24B178D58()
{
  result = qword_27EFCDA80;
  if (!qword_27EFCDA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCDA70, &qword_24B2EEBF0);
    sub_24B178DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCDA80);
  }

  return result;
}

unint64_t sub_24B178DE4()
{
  result = qword_27EFCDA88;
  if (!qword_27EFCDA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCDA68, &unk_24B2EEBB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCDA40, &qword_24B2EEB98);
    sub_24B2D3844();
    sub_24B039184(&qword_27EFCDA60, &qword_27EFCDA40, &qword_24B2EEB98, MEMORY[0x277CE0480]);
    sub_24B1793FC(&qword_27EFCAFA8, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8F00, &qword_27EFC8E10, &qword_24B2E9E00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCDA88);
  }

  return result;
}

uint64_t sub_24B178FBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B179024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_24B179094(uint64_t *a1)
{
  v3 = *(type metadata accessor for InteractiveMapV2(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24B174394(a1, v4);
}

uint64_t objectdestroyTm_21()
{
  v1 = type metadata accessor for InteractiveMapV2(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[7];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8, &unk_24B2EE8E0) + 32);
  v8 = sub_24B2D1974();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v10 = v5 + v1[8];
  v11 = sub_24B2D2DE4();
  (*(*(v11 - 8) + 8))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028, &qword_24B2E3D70);

  sub_24B177594(*(v5 + v1[14]), *(v5 + v1[14] + 8), *(v5 + v1[14] + 9));
  sub_24B177594(*(v5 + v1[15]), *(v5 + v1[15] + 8), *(v5 + v1[15] + 9));
  sub_24AFEFDB8(*(v5 + v1[16]), *(v5 + v1[16] + 8));
  sub_24AFEFDB8(*(v5 + v1[17]), *(v5 + v1[17] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_24B17937C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InteractiveMapV2(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24B173CC8(a1, v6, a2);
}

uint64_t sub_24B1793FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B179444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B1794E8(__n128 a1)
{
  v1 = sub_24B2D2204();
  __swift_allocate_value_buffer(v1, qword_27EFE4550);
  v2 = __swift_project_value_buffer(v1, qword_27EFE4550);
  *v2 = type metadata accessor for InteractiveMapModule();
  v3 = *MEMORY[0x277CC9120];
  v4 = *(*(v1 - 8) + 104);

  return v4(v2, v3, v1);
}

uint64_t sub_24B179584()
{
  v0 = sub_24B2D3184();
  __swift_allocate_value_buffer(v0, qword_27EFCDAF0);
  __swift_project_value_buffer(v0, qword_27EFCDAF0);
  return sub_24B2D3174();
}

uint64_t static StaticMapGenerator.generateImage(focusedAnnotation:centerOffset:size:allowPitch:)(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 89) = a2;
  *(v6 + 280) = a5;
  *(v6 + 288) = a6;
  *(v6 + 264) = a3;
  *(v6 + 272) = a4;
  v8 = sub_24B2D24A4();
  *(v6 + 296) = v8;
  *(v6 + 304) = *(v8 - 8);
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = *a1;
  *(v6 + 336) = *(a1 + 16);
  *(v6 + 344) = *(a1 + 24);

  return MEMORY[0x2822009F8](sub_24B1796DC, 0, 0);
}

uint64_t sub_24B1796DC(uint64_t a1)
{
  v82 = v1;
  v2 = *(v1 + 328);
  v3 = *(v1 + 320);
  v5 = *(v1 + 304);
  v4 = *(v1 + 312);
  v6 = *(v1 + 296);
  v7 = fmax(*(v1 + 336), 10.0);
  v8 = v7 + v7;
  sub_24B2D2494();
  v9 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v10 = sub_24B2D23B4();
  v11 = [v9 initWithCoordinate:v10 altitude:v3 horizontalAccuracy:v2 verticalAccuracy:0.0 timestamp:{v8, 0.0}];
  *(v1 + 360) = v11;

  (*(v5 + 8))(v4, v6);
  MKMapRectMakeWithRadialDistance();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [objc_allocWithZone(MEMORY[0x277CD4E80]) initWithCLLocation_];
  if (v20)
  {
    v21 = v20;
    v22 = *(v1 + 89);
    v24 = *(v1 + 280);
    v23 = *(v1 + 288);
    v25 = objc_opt_self();
    v26 = [v25 cameraLookingAtMapItem:v21 forViewSize:v22 allowPitch:{v24, v23}];
    v27 = [v25 _cameraLookingAtMapRect_forViewSize_];
    if (v27)
    {
      v28 = v27;
      [v26 centerCoordinateDistance];
      v30 = v29;
      [v28 centerCoordinateDistance];
      if (v31 <= v30)
      {
        if (qword_27EFC7710 != -1)
        {
          swift_once();
        }

        v32 = (v1 + 176);
        v59 = sub_24B2D3184();
        __swift_project_value_buffer(v59, qword_27EFCDAF0);
        v60 = sub_24B2D3164();
        v61 = sub_24B2D5904();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v81 = v63;
          *v62 = 136315138;
          *(v62 + 4) = sub_24AFF321C(0xD00000000000003ELL, 0x800000024B2DC240, &v81);
          _os_log_impl(&dword_24AFD2000, v60, v61, "%s - Using MKMapItem default camera", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v63);
          MEMORY[0x24C23D530](v63, -1, -1);
          MEMORY[0x24C23D530](v62, -1, -1);
        }

        if ((*(v1 + 89) & 1) == 0)
        {
          [v26 setPitch_];
        }

        *(v1 + 256) = v26;
        sub_24B038248(0, &qword_27EFCDB08, 0x277CD4E58);
        type metadata accessor for MKCoordinateRegion(0);
        v64 = v26;
        sub_24B2D1AA4();

        v50 = 208;
        v51 = 200;
        v52 = 192;
        v53 = 184;
      }

      else
      {
        if (qword_27EFC7710 != -1)
        {
          swift_once();
        }

        v32 = (v1 + 136);
        v33 = sub_24B2D3184();
        __swift_project_value_buffer(v33, qword_27EFCDAF0);
        v34 = sub_24B2D3164();
        v35 = sub_24B2D5904();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v81 = v37;
          *v36 = 136315138;
          *(v36 + 4) = sub_24AFF321C(0xD00000000000003ELL, 0x800000024B2DC240, &v81);
          _os_log_impl(&dword_24AFD2000, v34, v35, "%s - Creating new camera based on defaultFramingCamera with minimumFramingCamera distance", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v37);
          MEMORY[0x24C23D530](v37, -1, -1);
          MEMORY[0x24C23D530](v36, -1, -1);
        }

        v38 = *(v1 + 89);
        [v26 centerCoordinate];
        v40 = v39;
        v42 = v41;
        [v28 centerCoordinateDistance];
        v44 = v43;
        v45 = 0.0;
        if (v38 == 1)
        {
          [v26 pitch];
          v45 = v46;
        }

        [v26 heading];
        v48 = [v25 cameraLookingAtCenterCoordinate:v40 fromDistance:v42 pitch:v44 heading:{v45, v47}];
        *(v1 + 248) = v48;
        sub_24B038248(0, &qword_27EFCDB08, 0x277CD4E58);
        type metadata accessor for MKCoordinateRegion(0);
        v49 = v48;
        sub_24B2D1AA4();

        v50 = 168;
        v51 = 160;
        v52 = 152;
        v53 = 144;
      }

      goto LABEL_24;
    }
  }

  v32 = (v1 + 96);
  if (qword_27EFC7710 != -1)
  {
    swift_once();
  }

  v54 = sub_24B2D3184();
  __swift_project_value_buffer(v54, qword_27EFCDAF0);
  v55 = sub_24B2D3164();
  v56 = sub_24B2D5914();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v81 = v58;
    *v57 = 136315138;
    *(v57 + 4) = sub_24AFF321C(0xD00000000000003ELL, 0x800000024B2DC240, &v81);
    _os_log_impl(&dword_24AFD2000, v55, v56, "%s - Couldn't create MKMapItem/MKMapCamera", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x24C23D530](v58, -1, -1);
    MEMORY[0x24C23D530](v57, -1, -1);
  }

  v84.origin.x = v13;
  v84.origin.y = v15;
  v84.size.width = v17;
  v84.size.height = v19;
  *(v1 + 216) = MKCoordinateRegionForMapRect(v84);
  sub_24B038248(0, &qword_27EFCDB08, 0x277CD4E58);
  type metadata accessor for MKCoordinateRegion(0);
  sub_24B2D1A94();
  v50 = 128;
  v51 = 120;
  v52 = 112;
  v53 = 104;
LABEL_24:
  v65 = *v32;
  v66 = *(v1 + v53);
  v67 = *(v1 + v52);
  v68 = *(v1 + v51);
  v69 = *(v1 + v50);
  *(v1 + 90) = v69;
  *(v1 + 384) = v67;
  *(v1 + 392) = v68;
  *(v1 + 368) = v65;
  *(v1 + 376) = v66;
  v71 = *(v1 + 344);
  v70 = *(v1 + 352);
  *(v1 + 56) = v65;
  v72 = *(v1 + 336);
  *(v1 + 64) = v66;
  *(v1 + 72) = v67;
  *(v1 + 80) = v68;
  *(v1 + 88) = v69;
  *(v1 + 16) = *(v1 + 320);
  *(v1 + 32) = v72;
  *(v1 + 40) = v71;
  *(v1 + 48) = v70;
  sub_24B17B67C(v65, v66, v67, v68, v69);
  v73 = v71;
  v74 = v70;
  v75 = swift_task_alloc();
  *(v1 + 400) = v75;
  *v75 = v1;
  v75[1] = sub_24B179EB0;
  v76 = *(v1 + 280);
  v77 = *(v1 + 288);
  v78 = *(v1 + 264);
  v79 = *(v1 + 272);

  return sub_24B17A35C(v1 + 56, v1 + 16, v78, v79, v76, v77);
}

uint64_t sub_24B179EB0(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 408) = v1;

  v5 = *(v4 + 90);
  v6 = *(v4 + 392);
  v7 = *(v4 + 384);
  v8 = *(v4 + 376);
  v9 = *(v4 + 368);
  if (v1)
  {
    sub_24B17B688(*(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48));
    sub_24B17B6C8(v9, v8, v7, v6, v5);
    v10 = sub_24B17A114;
  }

  else
  {
    *(v4 + 416) = a1;
    sub_24B17B688(*(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48));
    sub_24B17B6C8(v9, v8, v7, v6, v5);
    v10 = sub_24B17A090;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_24B17A090()
{
  v1 = *(v0 + 360);
  sub_24B17B6C8(*(v0 + 368), *(v0 + 376), *(v0 + 384), *(v0 + 392), *(v0 + 90));

  v2 = *(v0 + 8);
  v3 = *(v0 + 416);

  return v2(v3);
}

uint64_t sub_24B17A114()
{
  v1 = *(v0 + 360);
  sub_24B17B6C8(*(v0 + 368), *(v0 + 376), *(v0 + 384), *(v0 + 392), *(v0 + 90));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t static StaticMapGenerator.mapSnapshotter(framing:centerOffset:annotation:size:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_24B0C9468;

  return sub_24B17A35C(a1, a2, a3, a4, a5, a6);
}

void sub_24B17A27C(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB10, &qword_24B2EEDB0);
    sub_24B2D5624();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB10, &qword_24B2EEDB0);
    sub_24B2D5634();
  }

  else
  {
    __break(1u);
  }
}

void __swiftcall StaticMapGenerator.Annotation.init(coordinate:accuracyRadius:accuracyFillColor:accuracyStrokeColor:)(FindMyUICore::StaticMapGenerator::Annotation *__return_ptr retstr, __C::CLLocationCoordinate2D coordinate, Swift::Double accuracyRadius, UIColor accuracyFillColor, UIColor accuracyStrokeColor)
{
  retstr->coordinate.latitude = coordinate.latitude;
  retstr->coordinate.longitude = coordinate.longitude;
  retstr->accuracyRadius = accuracyRadius;
  retstr->accuracyFillColor = accuracyFillColor;
  retstr->accuracyStrokeColor = accuracyStrokeColor;
}

uint64_t sub_24B17A35C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 360) = a5;
  *(v6 + 368) = a6;
  *(v6 + 344) = a3;
  *(v6 + 352) = a4;
  *(v6 + 336) = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB10, &qword_24B2EEDB0);
  *(v6 + 376) = v8;
  *(v6 + 384) = *(v8 - 8);
  *(v6 + 392) = swift_task_alloc();
  v9 = *(a2 + 16);
  *(v6 + 400) = *a2;
  *(v6 + 416) = v9;
  *(v6 + 432) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_24B17A444, 0, 0);
}

uint64_t sub_24B17A444()
{
  v43 = v0;
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 336);
  v4 = objc_opt_self();
  *(v0 + 440) = v4;
  v5 = [v4 traitCollectionWithUserInterfaceStyle_];
  v6 = [objc_allocWithZone(MEMORY[0x277CD4EB8]) init];
  *(v0 + 304) = v2;
  *(v0 + 312) = v1;
  [v6 setSize_];
  if (v3[4])
  {
    [v6 setRegion_];
  }

  else
  {
    [v6 setCamera_];
  }

  v7 = *(v0 + 424);
  v8 = *(v0 + 344) + *(v0 + 344);
  v9 = *(v0 + 352) + *(v0 + 352);
  *(v0 + 272) = 0;
  *(v0 + 280) = v8;
  *(v0 + 288) = v9;
  *(v0 + 296) = 0;
  [v6 _setEdgeInsets_];
  [v6 setTraitCollection_];
  if (v7)
  {
    v11 = *(v0 + 424);
    v10 = *(v0 + 432);
    v36 = v10;
    v37 = v11;
    v39 = *(v0 + 408);
    v40 = *(v0 + 416);
    v38 = *(v0 + 400);
    v12 = objc_opt_self();
    v13 = v11;
    v14 = v10;
    v15 = [v12 circleWithCenterCoordinate:*&v38 radius:{*&v39, *&v40}];
    v16 = [objc_allocWithZone(MEMORY[0x277CD4DA8]) initWithCircle_];
    v17 = [v13 resolvedColorWithTraitCollection_];
    [v16 setFillColor_];

    v18 = v16;
    [v18 setBlendMode_];
    v19 = [objc_allocWithZone(MEMORY[0x277CD4DA8]) initWithCircle_];
    v20 = [v14 resolvedColorWithTraitCollection_];
    [v19 setStrokeColor_];

    [v19 setLineWidth_];
    v21 = v19;
    [v21 setBlendMode_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E98, &unk_24B2E6670);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_24B2EED20;
    *(v22 + 32) = v21;
    *(v22 + 40) = v18;
    sub_24B038248(0, &qword_27EFCDB20, 0x277CD4EE8);
    v23 = sub_24B2D5524();

    [v6 _setOverlayRenderers_forOverlayLevel_];

    sub_24B17B688(v38, v39, v40, v37, v36);
  }

  v41 = [objc_allocWithZone(MEMORY[0x277CD4EC0]) initWithOptions_];
  *(v0 + 448) = v41;

  if (qword_27EFC7710 != -1)
  {
    swift_once();
  }

  v24 = sub_24B2D3184();
  *(v0 + 456) = __swift_project_value_buffer(v24, qword_27EFCDAF0);
  v25 = sub_24B2D3164();
  v26 = sub_24B2D5904();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v42 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_24AFF321C(0xD000000000000035, 0x800000024B2DC2B0, &v42);
    _os_log_impl(&dword_24AFD2000, v25, v26, "%s - Will Generate lightSnapshot", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x24C23D530](v28, -1, -1);
    MEMORY[0x24C23D530](v27, -1, -1);
  }

  v30 = *(v0 + 384);
  v29 = *(v0 + 392);
  v31 = *(v0 + 376);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 320;
  *(v0 + 24) = sub_24B17AA74;
  swift_continuation_init();
  *(v0 + 200) = v31;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
  *(v0 + 464) = sub_24B038248(0, &qword_27EFCDB18, 0x277CD4EA8);
  *(v0 + 472) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0, &unk_24B2E5410);
  sub_24B2D5614();
  v33 = *(v30 + 32);
  *(v0 + 480) = v33;
  *(v0 + 488) = (v30 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v33(boxed_opaque_existential_0, v29, v31);
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_24B17A27C;
  *(v0 + 168) = &block_descriptor_6;
  [v41 startWithCompletionHandler_];
  v34 = *(v30 + 8);
  *(v0 + 496) = v34;
  *(v0 + 504) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34(boxed_opaque_existential_0, v31);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24B17AA74()
{
  v1 = *(*v0 + 48);
  *(*v0 + 512) = v1;
  if (v1)
  {
    v2 = sub_24B17B56C;
  }

  else
  {
    v2 = sub_24B17AB84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B17AB84()
{
  v45 = v0;
  v1 = *(v0 + 320);
  *(v0 + 520) = v1;
  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5904();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v44 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_24AFF321C(0xD000000000000035, 0x800000024B2DC2B0, &v44);
    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = v2;
    v8 = v2;
    _os_log_impl(&dword_24AFD2000, v3, v4, "%s - Did Finish - lightSnapshot %@", v5, 0x16u);
    sub_24B17B79C(v6);
    MEMORY[0x24C23D530](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C23D530](v7, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  v9 = *(v0 + 304);
  v10 = *(v0 + 312);
  v11 = *(v0 + 336);
  v12 = [*(v0 + 440) traitCollectionWithUserInterfaceStyle_];
  v13 = [objc_allocWithZone(MEMORY[0x277CD4EB8]) init];
  [v13 setSize_];
  if (v11[4])
  {
    [v13 setRegion_];
  }

  else
  {
    [v13 setCamera_];
  }

  v14 = *(v0 + 424);
  [v13 _setEdgeInsets_];
  [v13 setTraitCollection_];
  if (v14)
  {
    v16 = *(v0 + 424);
    v15 = *(v0 + 432);
    v38 = v16;
    v41 = *(v0 + 408);
    v42 = *(v0 + 416);
    v39 = *(v0 + 400);
    v17 = objc_opt_self();
    v18 = v16;
    v19 = v15;
    v20 = [v17 circleWithCenterCoordinate:*&v39 radius:{*&v41, *&v42}];
    v21 = [objc_allocWithZone(MEMORY[0x277CD4DA8]) initWithCircle_];
    v22 = [v18 resolvedColorWithTraitCollection_];
    [v21 setFillColor_];

    v23 = v21;
    [v23 setBlendMode_];
    v24 = [objc_allocWithZone(MEMORY[0x277CD4DA8]) initWithCircle_];
    v25 = [v19 resolvedColorWithTraitCollection_];
    [v24 setStrokeColor_];

    [v24 setLineWidth_];
    v26 = v24;
    [v26 setBlendMode_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E98, &unk_24B2E6670);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_24B2EED20;
    *(v27 + 32) = v26;
    *(v27 + 40) = v23;
    sub_24B038248(0, &qword_27EFCDB20, 0x277CD4EE8);
    v28 = sub_24B2D5524();

    [v13 _setOverlayRenderers_forOverlayLevel_];

    sub_24B17B688(v39, v41, v42, v38, v15);
  }

  v43 = [objc_allocWithZone(MEMORY[0x277CD4EC0]) initWithOptions_];
  *(v0 + 528) = v43;

  v29 = sub_24B2D3164();
  v30 = sub_24B2D5904();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v44 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_24AFF321C(0xD000000000000035, 0x800000024B2DC2B0, &v44);
    _os_log_impl(&dword_24AFD2000, v29, v30, "%s - Will Generate darkSnapshot", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x24C23D530](v32, -1, -1);
    MEMORY[0x24C23D530](v31, -1, -1);
  }

  v40 = *(v0 + 496);
  v37 = *(v0 + 480);
  v33 = *(v0 + 392);
  v34 = *(v0 + 376);
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 328;
  *(v0 + 88) = sub_24B17B210;
  swift_continuation_init();
  *(v0 + 264) = v34;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 240));
  sub_24B2D5614();
  v37(boxed_opaque_existential_0, v33, v34);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_24B17A27C;
  *(v0 + 232) = &block_descriptor_11;
  [v43 startWithCompletionHandler_];
  v40(boxed_opaque_existential_0, v34);

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_24B17B210()
{
  v1 = *(*v0 + 112);
  *(*v0 + 536) = v1;
  if (v1)
  {
    v2 = sub_24B17B5E8;
  }

  else
  {
    v2 = sub_24B17B320;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B17B320()
{
  v19 = v0;
  v1 = *(v0 + 328);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5904();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_24AFF321C(0xD000000000000035, 0x800000024B2DC2B0, &v18);
    *(v4 + 12) = 2112;
    *(v4 + 14) = v1;
    *v5 = v1;
    v7 = v1;
    _os_log_impl(&dword_24AFD2000, v2, v3, "%s - Did Finish - darkSnapshot %@", v4, 0x16u);
    sub_24B17B79C(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C23D530](v6, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v8 = [*(v0 + 520) image];
  v9 = [v8 imageAsset];
  if (v9)
  {
    v10 = v9;
    v11 = *(v0 + 440);
    v12 = [v1 image];
    v13 = [v11 traitCollectionWithUserInterfaceStyle_];
    [v10 registerImage:v12 withTraitCollection:v13];
  }

  v14 = *(v0 + 528);
  v15 = *(v0 + 448);

  v16 = *(v0 + 8);

  return v16(v8);
}

uint64_t sub_24B17B56C(uint64_t a1)
{
  v2 = *(v1 + 448);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_24B17B5E8(uint64_t a1)
{
  v2 = v1[66];
  v3 = v1[65];
  v4 = v1[56];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

id sub_24B17B67C(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return result;
  }

  return result;
}

void sub_24B17B688(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a4)
  {
  }
}

void sub_24B17B6C8(id a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }
}

uint64_t sub_24B17B6E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B17B72C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B17B79C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7BB8, &unk_24B2DEAF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static GenericControl.Info.offerLocationMenu(compactTitleOnly:fromEmailDescription:forceInProgressState:forceDisabledState:action:)@<X0>(char a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v85 = a6;
  v86 = a7;
  v79 = a5;
  v80 = a4;
  v87 = a3;
  v83 = a2;
  v81 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v74 - v10;
  v82 = MEMORY[0x277D84F90];
  if ((a1 & 1) == 0)
  {
    if (qword_27EFC7718 != -1)
    {
      swift_once();
    }

    v12 = sub_24B2D1454();
    v13 = __swift_project_value_buffer(v12, qword_27EFCDB30);
    v14 = *(v12 - 8);
    v15 = *(v14 + 16);
    v84 = v13;
    v78 = v15;
    v15(v11);
    v16 = *(v14 + 56);
    v16(v11, 0, 1, v12);
    v17 = sub_24B2D52D4();
    v19 = v18;
    sub_24B0C6490(v11);
    v20 = sub_24B006774(0, 1, 1, MEMORY[0x277D84F90]);
    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    v82 = v20;
    if (v22 >= v21 >> 1)
    {
      v82 = sub_24B006774((v21 > 1), v22 + 1, 1, v82);
    }

    v23 = v82;
    *(v82 + 2) = v22 + 1;
    v24 = &v23[16 * v22];
    *(v24 + 4) = v17;
    *(v24 + 5) = v19;
    v78(v11, v84, v12);
    v16(v11, 0, 1, v12);
    v25 = sub_24B2D52D4();
    v27 = v26;
    sub_24B0C6490(v11);
    v29 = *(v23 + 2);
    v28 = *(v23 + 3);
    if (v29 >= v28 >> 1)
    {
      v82 = sub_24B006774((v28 > 1), v29 + 1, 1, v82);
    }

    v30 = v82;
    *(v82 + 2) = v29 + 1;
    v31 = &v30[16 * v29];
    *(v31 + 4) = v25;
    *(v31 + 5) = v27;
  }

  if (qword_27EFC7718 != -1)
  {
    swift_once();
  }

  v32 = sub_24B2D1454();
  v33 = __swift_project_value_buffer(v32, qword_27EFCDB30);
  v34 = *(v32 - 8);
  v35 = *(v34 + 16);
  v35(v11, v33, v32);
  v84 = *(v34 + 56);
  v84(v11, 0, 1, v32);
  v36 = sub_24B2D52D4();
  v38 = v37;
  sub_24B0C6490(v11);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v82 = sub_24B006774(0, *(v82 + 2) + 1, 1, v82);
  }

  v40 = *(v82 + 2);
  v39 = *(v82 + 3);
  if (v40 >= v39 >> 1)
  {
    v82 = sub_24B006774((v39 > 1), v40 + 1, 1, v82);
  }

  v41 = v82;
  *(v82 + 2) = v40 + 1;
  v42 = &v41[16 * v40];
  *(v42 + 4) = v36;
  *(v42 + 5) = v38;
  v43 = v87;
  if (v87)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A78, &qword_24B2E36E0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_24B2DE430;
    *(v44 + 56) = MEMORY[0x277D837D0];
    *(v44 + 64) = sub_24B075024(v44, v45, v46);
    *(v44 + 32) = v83;
    *(v44 + 40) = v43;
    v35(v11, v33, v32);
    v84(v11, 0, 1, v32);

    v47 = sub_24B2D52D4();
    v77 = v48;
    v78 = v47;
  }

  else
  {
    v35(v11, v33, v32);
    v84(v11, 0, 1, v32);
    v49 = sub_24B2D52D4();
    v77 = v50;
    v78 = v49;
  }

  sub_24B0C6490(v11);
  v88 = v82;

  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7B90, &qword_24B2DEAB0);
  sub_24B2D1A94();
  v76 = v96;
  v75 = v97;
  v99 = v98;
  v74 = v98;
  v95 = MEMORY[0x277D84F90];
  sub_24B007A5C(0, 3, 0);
  v51 = 0;
  v52 = v95;
  v83 = 0x800000024B2D9C80;
  while (1)
  {
    v93 = byte_285E48DD8[v51 + 32];
    v53 = v93;
    v54 = sub_24B17C1AC();
    if (v53 > 1)
    {
      if (v53 == 2)
      {
        v87 = 0xE800000000000000;
        v56 = 0x7974696E69666E69;
      }

      else
      {
        v56 = 0xD000000000000015;
        v87 = v83;
      }
    }

    else if (v53)
    {
      v87 = 0xE800000000000000;
      v56 = 0x7261646E656C6163;
    }

    else
    {
      v87 = 0xE500000000000000;
      v56 = 0x6B636F6C63;
    }

    v88 = v54;
    v89 = v55;
    sub_24B2D1AA4();
    v57 = v96;
    v58 = v97;
    v59 = v98;
    v94 = v98;
    v60 = swift_allocObject();
    *(v60 + 16) = v85;
    *(v60 + 24) = v86;
    *(v60 + 32) = v53;
    v95 = v52;
    v62 = *(v52 + 16);
    v61 = *(v52 + 24);

    if (v62 >= v61 >> 1)
    {
      sub_24B007A5C((v61 > 1), v62 + 1, 1);
      v52 = v95;
    }

    *(v52 + 16) = v62 + 1;
    v63 = v52 + (v62 << 6);
    *(v63 + 32) = v57;
    *(v63 + 40) = v58;
    *(v63 + 48) = v59;
    v64 = *&v92[3];
    *(v63 + 49) = *v92;
    *(v63 + 52) = v64;
    v65 = v87;
    *(v63 + 56) = v56;
    *(v63 + 64) = v65;
    *(v63 + 72) = 0;
    *(v63 + 74) = 0;
    LODWORD(v65) = v90;
    *(v63 + 79) = v91;
    *(v63 + 75) = v65;
    *(v63 + 80) = &unk_24B2EEDC0;
    *(v63 + 88) = v60;
    if (v51 == 2)
    {
      break;
    }

    ++v51;
  }

  v67 = v80;
  v68 = 0x10000;
  if ((v79 & 1) == 0)
  {
    v68 = 0;
  }

  v69 = v74 & 1;
  v70 = v81;
  v71 = v75;
  *v81 = v76;
  v70[1] = v71;
  v70[2] = v69;
  if (v67)
  {
    v72 = 0x8000000000000101;
  }

  else
  {
    v72 = 0x8000000000000001;
  }

  *(v70 + 3) = xmmword_24B2E4370;
  v70[5] = v72 | v68;
  v73 = v77;
  v70[6] = v78;
  v70[7] = v73;
  v70[8] = v52;
  return result;
}

uint64_t sub_24B17BFE0(int *a1, uint64_t a2, char a3)
{
  *(v3 + 16) = sub_24B2D5694();
  *(v3 + 24) = sub_24B2D5684();
  *(v3 + 40) = a3;
  v8 = (a1 + *a1);
  v6 = swift_task_alloc();
  *(v3 + 32) = v6;
  *v6 = v3;
  v6[1] = sub_24B02CD04;

  return v8(v3 + 40);
}

uint64_t sub_24B17C104()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AFFD370;

  return sub_24B17BFE0(v2, v3, v4);
}

uint64_t sub_24B17C1AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      if (qword_27EFC7718 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }

  else if (!*v0)
  {
    if (qword_27EFC7718 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (qword_27EFC7718 != -1)
  {
LABEL_10:
    swift_once();
  }

LABEL_9:
  v4 = sub_24B2D1454();
  v5 = __swift_project_value_buffer(v4, qword_27EFCDB30);
  v6 = *(v4 - 8);
  (*(v6 + 16))(v3, v5, v4);
  (*(v6 + 56))(v3, 0, 1, v4);
  v7 = sub_24B2D52D4();
  sub_24B0C6490(v3);
  return v7;
}

uint64_t OfferLocationDuration.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

unint64_t sub_24B17C550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCDB28;
  if (!qword_27EFCDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCDB28);
  }

  return result;
}

uint64_t sub_24B17C5D8()
{
  v0 = sub_24B2D1454();
  __swift_allocate_value_buffer(v0, qword_27EFCDB30);
  __swift_project_value_buffer(v0, qword_27EFCDB30);
  type metadata accessor for UIPeopleModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  return sub_24B2D1434();
}

uint64_t static FindMyLocalizationTable.uiPeople.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFC7718 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D1454();
  v3 = __swift_project_value_buffer(v2, qword_27EFCDB30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24B17C71C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB48, &qword_24B2EEE80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_24B008890(a1, &v10 - v5, &qword_27EFCDB48, &qword_24B2EEE80);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_subscriptionsStorage;
  swift_beginAccess();
  sub_24B17C8BC(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_24B17C7F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_subscriptionsStorage;
  swift_beginAccess();
  return sub_24B008890(v1 + v3, a1, &qword_27EFCDB48, &qword_24B2EEE80);
}

uint64_t sub_24B17C85C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_subscriptionsStorage;
  swift_beginAccess();
  sub_24B17C8BC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24B17C8BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB48, &qword_24B2EEE80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_24B17C98C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_dataStorage;
  swift_beginAccess();
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v7;

  return result;
}

uint64_t sub_24B17CA0C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_dataStorage;
  swift_beginAccess();
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
}

double sub_24B17CAC4@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_dataStorage);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 16);
  v8 = v3[3];
  v7 = v3[4];
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;

  return result;
}

uint64_t sub_24B17CB40(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = v1 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_dataStorage;
  swift_beginAccess();
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;
  *(v6 + 24) = *(a1 + 3);
}

uint64_t sub_24B17CC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v5 = sub_24B2D24A4();
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v35 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB50, &qword_24B2EEE88);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688, &qword_24B2E88F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v34 - v14;
  v16 = v2 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_dataStorage;
  swift_beginAccess();
  v17 = *(v16 + 24);
  if (*(v17 + 16))
  {

    v18 = sub_24B181540(a1);
    if (v19)
    {
      v20 = v18;
      v34[0] = a1;
      v21 = v5;
      v22 = *(v17 + 56);
      v23 = type metadata accessor for ContactsProvider.ContactState(0);
      v24 = *(v23 - 8);
      v34[1] = v3;
      v25 = v24;
      v26 = v22 + *(v24 + 72) * v20;
      v5 = v21;
      a1 = v34[0];
      sub_24B183364(v26, v9, type metadata accessor for ContactsProvider.ContactState);

      (*(v25 + 56))(v9, 0, 1, v23);
      goto LABEL_6;
    }
  }

  v23 = type metadata accessor for ContactsProvider.ContactState(0);
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
LABEL_6:
  type metadata accessor for ContactsProvider.ContactState(0);
  if ((*(*(v23 - 8) + 48))(v9, 1, v23))
  {
    sub_24AFF8258(v9, &qword_27EFCDB50, &qword_24B2EEE88);
    v27 = sub_24B2D1494();
    (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
LABEL_9:
    sub_24AFF8258(v15, &qword_27EFCB688, &qword_24B2E88F0);
    sub_24B186964();
    v29 = v37;
    sub_24B2D14A4();
    sub_24B2D1494();
    v30 = *(v27 - 8);
    (*(v30 + 16))(v12, v29, v27);
    (*(v30 + 56))(v12, 0, 1, v27);
    v31 = v35;
    sub_24B2D2494();
    sub_24B17F6E0(v12, a1, v31, v32);
    (*(v36 + 8))(v31, v5);
    return sub_24AFF8258(v12, &qword_27EFCB688, &qword_24B2E88F0);
  }

  sub_24B008890(&v9[*(v23 + 20)], v15, &qword_27EFCB688, &qword_24B2E88F0);
  sub_24AFF8258(v9, &qword_27EFCDB50, &qword_24B2EEE88);
  v27 = sub_24B2D1494();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v15, 1, v27) == 1)
  {
    goto LABEL_9;
  }

  return (*(v28 + 32))(v37, v15, v27);
}

uint64_t ContactsProvider.__allocating_init(dependencies:)(__int128 *a1)
{
  v2 = swift_allocObject();
  ContactsProvider.init(dependencies:)(a1);
  return v2;
}

_OWORD *ContactsProvider.init(dependencies:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_24B2D2504();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB58, &unk_24B2F1240);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  swift_defaultActor_initialize();
  v8 = v2 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_subscriptionsStorage;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB48, &qword_24B2EEE80);
  v10 = v9[9];
  v11 = MEMORY[0x277D84F90];
  *&v8[v10] = sub_24B193A40(MEMORY[0x277D84F90]);
  *&v8[v9[10]] = MEMORY[0x277D84FA0];
  v8[v9[11]] = 0;
  sub_24B2D3174();
  v12 = v2 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_dataStorage;
  *(v12 + 3) = sub_24B193A68(v11);
  v12[16] = 0;
  *(v12 + 4) = sub_24B1933E8(v11);
  *v12 = 0xD000000000000010;
  *(v12 + 1) = 0x800000024B2EEE70;
  v13 = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_taskQueue;
  sub_24B2D12D4();
  v14 = sub_24B2D1294();
  v15 = *(*(v14 - 8) + 56);
  v16 = *a1;
  v20 = a1[1];
  v21 = v16;
  v19 = a1[2];
  v15(v7, 1, 1, v14);
  sub_24B2D24F4();
  *(v2 + v13) = sub_24B2D12B4();
  *(v2 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_valuePublisher) = 0;
  v17 = v20;
  v2[7] = v21;
  v2[8] = v17;
  v2[9] = v19;
  return v2;
}

uint64_t sub_24B17D404()
{
  v1[19] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  v1[20] = swift_task_alloc();
  v2 = sub_24B2D3184();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B17D4FC, v0, 0);
}

uint64_t sub_24B17D4FC()
{
  v29 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[19];
  v5 = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[22];
    v8 = v0[23];
    v10 = v0[21];
    v11 = v0[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315394;
    v0[18] = v11;
    v14 = sub_24B2D53C4();
    v16 = sub_24AFF321C(v14, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_24AFF321C(0xD000000000000018, 0x800000024B2DC550, &v28);
    _os_log_impl(&dword_24AFD2000, v6, v7, "ContactsProvider%s: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v13, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v18 = v0[22];
    v17 = v0[23];
    v19 = v0[21];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[19];
  v21 = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_valuePublisher;
  v0[24] = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_valuePublisher;
  if (*(v20 + v21))
  {

    sub_24B2D5764();

    v22 = v0[19];
  }

  else
  {
    v22 = v20;
  }

  *(v20 + v21) = 0;

  v23 = v22 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_dataStorage;
  swift_beginAccess();
  v24 = *(v23 + 16);
  *(v23 + 16) = 0;
  sub_24B1F422C(v24);
  swift_endAccess();
  v27 = (*(v22 + 144) + **(v22 + 144));
  v25 = swift_task_alloc();
  v0[25] = v25;
  *v25 = v0;
  v25[1] = sub_24B17D850;

  return v27(v0 + 2);
}

uint64_t sub_24B17D850()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_24B17DAFC;
  }

  else
  {
    v4 = sub_24B17D97C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24B17D97C()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = sub_24B2D56D4();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_24B0C43AC(v0 + 16, v0 + 56);
  v5 = sub_24B18315C(&qword_27EFCDB68, type metadata accessor for ContactsProvider, &protocol conformance descriptor for ContactsProvider);
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  sub_24B07F7D0((v0 + 56), (v6 + 4));
  v6[9] = v3;
  swift_retain_n();
  v7 = sub_24B00A9A4(0, 0, v2, &unk_24B2EF028, v6);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  *(v3 + v1) = v7;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24B17DAFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B17DB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v7 = sub_24B2D24A4();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v8 = sub_24B2D1494();
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBB8, &qword_24B2EF000);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBE0, &qword_24B2EF030);
  v5[28] = swift_task_alloc();
  v9 = type metadata accessor for ContactsProvider.Subscription(0);
  v5[29] = v9;
  v5[30] = *(v9 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B17DDD8, a5, 0);
}

uint64_t sub_24B17DDD8()
{
  v1 = v0[15];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_24B2D57B4();

  v6 = sub_24B18315C(&qword_27EFCDB68, type metadata accessor for ContactsProvider, &protocol conformance descriptor for ContactsProvider);
  v0[35] = v6;
  v7 = v0[16];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v8 = swift_task_alloc();
  v0[36] = v8;
  *v8 = v0;
  v8[1] = sub_24B17DFD4;

  return MEMORY[0x282200310](v0 + 11, v7, v6);
}

uint64_t sub_24B17DFD4()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 128);

    return MEMORY[0x2822009F8](sub_24B17E0E4, v4, 0);
  }

  return result;
}

uint64_t sub_24B17E0E4(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = (v3 + 11);
  v4 = v3[11];
  v6 = (v3 + 2);
  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_0(v6);

    v100 = v3[1];

    return v100();
  }

  v7 = MEMORY[0x277D84FA0];
  v3[12] = MEMORY[0x277D84FA0];
  v3[13] = v7;
  v133 = *(v4 + 16);
  if (!v133)
  {

    v9 = MEMORY[0x277D84F98];
    v102 = MEMORY[0x277D84FA0];
    if (!*(MEMORY[0x277D84FA0] + 16))
    {
LABEL_81:

LABEL_82:
      v117 = v3[18];
      v118 = v3[19];
      v119 = v3[17];
      v120 = v3[13];
      sub_24B2D2494();
      sub_24B17FD48(v9, v120, v118);

      (*(v117 + 8))(v118, v119);
      v121 = v3[35];
      v122 = v3[16];
      __swift_mutable_project_boxed_opaque_existential_1((v3 + 2), v3[5]);
      v123 = swift_task_alloc();
      v3[36] = v123;
      *v123 = v3;
      v123[1] = sub_24B17DFD4;
      v6 = v5;
      a2 = v122;
      a3 = v121;

      return MEMORY[0x282200310](v6, a2, a3);
    }

LABEL_71:
    v103 = v9;
    v104 = v3[35];
    v106 = v3[20];
    v105 = v3[21];
    v107 = v3[16];
    v108 = sub_24B2D56D4();
    v109 = *(v108 - 8);
    (*(v109 + 56))(v105, 1, 1, v108);
    v110 = swift_allocObject();
    v110[2] = v107;
    v110[3] = v104;
    v110[4] = v107;
    v110[5] = v102;
    sub_24B008890(v105, v106, &qword_27EFC8580, &qword_24B2E0010);
    LODWORD(v105) = (*(v109 + 48))(v106, 1, v108);
    swift_retain_n();

    v111 = v3[20];
    if (v105 == 1)
    {
      sub_24AFF8258(v3[20], &qword_27EFC8580, &qword_24B2E0010);
    }

    else
    {
      sub_24B2D56C4();
      (*(v109 + 8))(v111, v108);
    }

    v112 = v110[2];
    swift_unknownObjectRetain();

    v9 = v103;
    if (v112)
    {
      swift_getObjectType();
      v113 = sub_24B2D5604();
      v115 = v114;
      swift_unknownObjectRelease();
    }

    else
    {
      v113 = 0;
      v115 = 0;
    }

    v5 = (v3 + 11);
    sub_24AFF8258(v3[21], &qword_27EFC8580, &qword_24B2E0010);
    v116 = swift_allocObject();
    *(v116 + 16) = &unk_24B2EF038;
    *(v116 + 24) = v110;
    if (v115 | v113)
    {
      v3[7] = 0;
      v3[8] = 0;
      v3[9] = v113;
      v3[10] = v115;
    }

    swift_task_create();

    goto LABEL_82;
  }

  v8 = 0;
  v134 = v4 + 32;
  v9 = MEMORY[0x277D84F98];
  v132 = v4;
  while (1)
  {
    if (v8 >= *(v4 + 16))
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v10 = (v134 + 16 * v8);
    v11 = *v10;
    v12 = *(v10 + 8);
    v137 = v11;
    if (!v12)
    {
      v84 = *(v11 + 16);
      if (v84)
      {
        v85 = v8;
        v86 = v3[30];
        v87 = v11 + ((*(v86 + 80) + 32) & ~*(v86 + 80));

        v88 = *(v86 + 72);
        do
        {
          v90 = v3[33];
          v89 = v3[34];
          sub_24B183364(v87, v89, type metadata accessor for ContactsProvider.Subscription);
          sub_24B1ACEA4(v90, v89);
          sub_24B1830FC(v90, type metadata accessor for ContactsProvider.Subscription);
          v87 += v88;
          --v84;
        }

        while (v84);

        v4 = v132;
        v8 = v85;
      }

      goto LABEL_4;
    }

    if (v12 == 1)
    {
      break;
    }

    v91 = *(v11 + 16);
    if (v91)
    {
      v92 = v8;
      v93 = v9;
      v94 = v3[30];
      v95 = v11 + ((*(v94 + 80) + 32) & ~*(v94 + 80));

      v96 = *(v94 + 72);
      v97 = v5;
      do
      {
        v98 = v3[33];
        v99 = v3[31];
        sub_24B183364(v95, v99, type metadata accessor for ContactsProvider.Subscription);
        sub_24B1ACEA4(v98, v99);
        sub_24B1830FC(v98, type metadata accessor for ContactsProvider.Subscription);
        v95 += v96;
        --v91;
      }

      while (v91);

      v5 = v97;
      v9 = v93;
      v4 = v132;
      v8 = v92;
    }

LABEL_4:
    if (++v8 == v133)
    {

      v102 = *(v5 + 1);
      if (!*(v102 + 16))
      {
        goto LABEL_81;
      }

      goto LABEL_71;
    }
  }

  v131 = v8;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 3) = v9;
  v136 = v11 + 64;
  v14 = -1 << *(v11 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v11 + 64);
  v135 = (63 - v14) >> 6;

  v17 = 0;
  while (2)
  {
    v142 = v9;
    v140 = isUniquelyReferenced_nonNull_native;
    if (!v16)
    {
      if (v135 <= v17 + 1)
      {
        v22 = v17 + 1;
      }

      else
      {
        v22 = v135;
      }

      while (1)
      {
        v21 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v21 >= v135)
        {
          v139 = v22 - 1;
          v69 = v3[27];
          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC0, &qword_24B2EF008);
          (*(*(v70 - 8) + 56))(v69, 1, 1, v70);
          v16 = 0;
          goto LABEL_23;
        }

        v16 = *(v136 + 8 * v21);
        ++v17;
        if (v16)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v21 = v17;
LABEL_22:
    v23 = v3[33];
    v24 = v3[27];
    v25 = v3[25];
    v138 = v25;
    v27 = v3[22];
    v26 = v3[23];
    v28 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v29 = v28 | (v21 << 6);
    sub_24B183364(*(v137 + 48) + *(v3[30] + 72) * v29, v23, type metadata accessor for ContactsProvider.Subscription);
    (*(v26 + 16))(v25, *(v137 + 56) + *(v26 + 72) * v29, v27);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC0, &qword_24B2EF008);
    v31 = *(v30 + 48);
    sub_24B1832FC(v23, v24, type metadata accessor for ContactsProvider.Subscription);
    (*(v26 + 32))(v24 + v31, v138, v27);
    (*(*(v30 - 8) + 56))(v24, 0, 1, v30);
    v139 = v21;
LABEL_23:
    v32 = v3[26];
    sub_24B182F1C(v3[27], v32);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC0, &qword_24B2EF008);
    v34 = (*(*(v33 - 8) + 48))(v32, 1, v33);
    v35 = v3[28];
    if (v34 == 1)
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBE8, &unk_24B2EF950);
      (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
    }

    else
    {
      v37 = v3[26];
      v39 = v3[22];
      v38 = v3[23];
      v40 = *(v33 + 48);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBE8, &unk_24B2EF950);
      v42 = *(v41 + 48);
      sub_24B183364(v37, v35, type metadata accessor for ContactsProvider.Subscription);
      (*(v38 + 16))(v35 + v42, v37 + v40, v39);
      sub_24AFF8258(v37, &qword_27EFCDBC0, &qword_24B2EF008);
      (*(*(v41 - 8) + 56))(v35, 0, 1, v41);
    }

    v43 = v3[28];
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBE8, &unk_24B2EF950);
    if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
    {
      swift_bridgeObjectRelease_n();

      v5 = (v3 + 11);
      v9 = v142;
      v8 = v131;
      v4 = v132;
      goto LABEL_4;
    }

    v45 = v3[32];
    v46 = v3[23];
    v47 = v3[24];
    v48 = v3[22];
    v49 = *(v44 + 48);
    sub_24B1832FC(v43, v45, type metadata accessor for ContactsProvider.Subscription);
    v50 = *(v46 + 32);
    v50(v47, v43 + v49, v48);
    v51 = sub_24B181540(v45);
    v53 = *(v142 + 16);
    v54 = (a2 & 1) == 0;
    v6 = (v53 + v54);
    if (__OFADD__(v53, v54))
    {
      goto LABEL_86;
    }

    v55 = a2;
    if (*(v142 + 24) < v6)
    {
      v56 = v3[32];
      sub_24B1C4A10(v6, v140 & 1, v52);
      v57 = v3[14];
      v58 = sub_24B181540(v56);
      if ((v55 & 1) != (v59 & 1))
      {

        return sub_24B2D6054();
      }

      v51 = v58;
      v60 = v3[32];
      if ((v55 & 1) == 0)
      {
LABEL_34:
        v61 = v3[30];
        v63 = v3[23];
        v62 = v3[24];
        v64 = v50;
        v65 = v3[22];
        *(v57 + 8 * (v51 >> 6) + 64) |= 1 << v51;
        sub_24B1832FC(v60, *(v57 + 48) + *(v61 + 72) * v51, type metadata accessor for ContactsProvider.Subscription);
        v6 = v64(*(v57 + 56) + *(v63 + 72) * v51, v62, v65);
        v66 = *(v57 + 16);
        v67 = __OFADD__(v66, 1);
        v68 = v66 + 1;
        if (v67)
        {
          goto LABEL_87;
        }

        *(v57 + 16) = v68;
        goto LABEL_13;
      }

LABEL_12:
      v18 = v3[23];
      v19 = v3[24];
      v20 = v3[22];
      sub_24B1830FC(v60, type metadata accessor for ContactsProvider.Subscription);
      v6 = (*(v18 + 40))(*(v57 + 56) + *(v18 + 72) * v51, v19, v20);
LABEL_13:
      isUniquelyReferenced_nonNull_native = 1;
      v17 = v139;
      v9 = v57;
      continue;
    }

    break;
  }

  if (v140)
  {
    v57 = v142;
    v60 = v3[32];
    if ((a2 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_12;
  }

  v125 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBF0, &qword_24B2EF040);
  v71 = sub_24B2D5DC4();
  v57 = v71;
  v72 = *(v142 + 16);
  if (!v72)
  {
LABEL_53:

    v3[14] = v57;
    v50 = v125;
    v60 = v3[32];
    if ((v55 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_12;
  }

  v6 = (v71 + 64);
  a2 = (v142 + 64);
  v73 = ((1 << *(v57 + 32)) + 63) >> 6;
  if (v57 != v142 || v6 >= &a2[8 * v73])
  {
    v6 = memmove(v6, a2, 8 * v73);
    v72 = *(v142 + 16);
  }

  v74 = 0;
  *(v57 + 16) = v72;
  v75 = 1 << *(v142 + 32);
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  else
  {
    v76 = -1;
  }

  v77 = v76 & *(v142 + 64);
  v78 = (v75 + 63) >> 6;
  v124 = v78;
  if (v77)
  {
    do
    {
      v141 = (v77 - 1) & v77;
      v79 = __clz(__rbit64(v77)) | (v74 << 6);
      v80 = v142;
LABEL_51:
      v129 = v3[33];
      v130 = v3[25];
      v83 = v3[23];
      v127 = v3[22];
      v128 = *(v3[30] + 72) * v79;
      sub_24B183364(*(v80 + 48) + v128, v129, type metadata accessor for ContactsProvider.Subscription);
      v126 = *(v83 + 72) * v79;
      (*(v83 + 16))(v130, *(v80 + 56) + v126, v127);
      sub_24B1832FC(v129, *(v57 + 48) + v128, type metadata accessor for ContactsProvider.Subscription);
      v6 = (v125)(*(v57 + 56) + v126, v130, v127);
      v77 = v141;
      v78 = v124;
    }

    while (v141);
  }

  v81 = v74;
  v80 = v142;
  while (1)
  {
    v74 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      break;
    }

    if (v74 >= v78)
    {
      goto LABEL_53;
    }

    v82 = *(v142 + 64 + 8 * v74);
    ++v81;
    if (v82)
    {
      v141 = (v82 - 1) & v82;
      v79 = __clz(__rbit64(v82)) | (v74 << 6);
      goto LABEL_51;
    }
  }

LABEL_89:
  __break(1u);
  return MEMORY[0x282200310](v6, a2, a3);
}