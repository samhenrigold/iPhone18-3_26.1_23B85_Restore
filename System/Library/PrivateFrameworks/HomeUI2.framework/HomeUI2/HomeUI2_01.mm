double sub_2544C31D4()
{
  v1 = *(type metadata accessor for MultiFactorVisibility(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_2544C300C(v2);
}

uint64_t sub_2544C3274@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_2544C3324(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2544C3354@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2544C3380@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t _s7HomeUI221MultiFactorVisibilityV0E5StateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10))
  {
    return 0;
  }

  type metadata accessor for MultiFactorVisibility.VisibilityState(0);

  return sub_25454A3A4();
}

unint64_t sub_2544C3504()
{
  result = qword_27F5FB428;
  if (!qword_27F5FB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB428);
  }

  return result;
}

unint64_t sub_2544C3578()
{
  result = qword_27F5FB430;
  if (!qword_27F5FB430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB430);
  }

  return result;
}

unint64_t sub_2544C35D0()
{
  result = qword_27F5FB438;
  if (!qword_27F5FB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB438);
  }

  return result;
}

unint64_t sub_2544C3628()
{
  result = qword_27F5FB440;
  if (!qword_27F5FB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB440);
  }

  return result;
}

unint64_t sub_2544C3680()
{
  result = qword_27F5FB448;
  if (!qword_27F5FB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB448);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_2544C3794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAE00, &qword_25454D2F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2544C3864(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAE00, &qword_25454D2F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2544C3914(uint64_t a1)
{
  sub_2544C3A1C();
  if (v1 <= 0x3F)
  {
    sub_2544C45E8(319, &qword_27F5FAE28, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_2544C4584(319, &qword_27F5FAE30, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2544C3A1C()
{
  result = qword_27F5FB460;
  if (!qword_27F5FB460)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F5FB460);
  }

  return result;
}

uint64_t sub_2544C3A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_25454A3B4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2544C3B40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = sub_25454A3B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2544C3BE0(uint64_t a1)
{
  result = sub_25454A3B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultiFactorVisibility.Factors(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MultiFactorVisibility.Factors(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_2544C3CD0()
{
  result = qword_27F5FB478;
  if (!qword_27F5FB478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB3E0, &qword_25454E100);
    sub_2544C3D8C();
    sub_2544C3DE0(&qword_27F5FB488, type metadata accessor for RegisteredCameraView, &unk_25454E4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB478);
  }

  return result;
}

unint64_t sub_2544C3D8C()
{
  result = qword_27F5FB480;
  if (!qword_27F5FB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB480);
  }

  return result;
}

uint64_t sub_2544C3DE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2544C3E28(uint64_t *a1)
{
  type metadata accessor for RegisteredCameraView(255);
  sub_25454A714();
  sub_2544C3DE0(&qword_27F5FB488, type metadata accessor for RegisteredCameraView, &unk_25454E4B8);
  return swift_getWitnessTable();
}

uint64_t sub_2544C3EC4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB3F8, &qword_25454E138);
  sub_25454A3B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB3F0, &qword_25454E130);
  sub_2544C4B84(&qword_27F5FB410, &qword_27F5FB3F0, &qword_25454E130, sub_2544C2D60);
  swift_getOpaqueTypeConformance2();
  sub_2544C3DE0(&qword_27F5FAF00, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2544C400C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_254549B54();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB490, &qword_25454E488);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB498, &qword_25454E490);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB4A0, &qword_25454E498);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

uint64_t sub_2544C41F8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_254549B54();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB490, &qword_25454E488);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB498, &qword_25454E490);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB4A0, &qword_25454E498);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[10];

  return v16(v17, a2, a2, v15);
}

void sub_2544C43D0(uint64_t a1)
{
  sub_254549C04();
  if (v1 <= 0x3F)
  {
    sub_254549B54();
    if (v2 <= 0x3F)
    {
      sub_2544C45E8(319, &qword_27F5FB4B8, &type metadata for CameraViewRegistrar.Location, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2544C4584(319, &qword_27F5FB4C0, MEMORY[0x277CC95F0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_2544AD83C(319, &qword_27F5FB4C8, &qword_27F5FB3D8, &unk_25454ECD0);
          if (v5 <= 0x3F)
          {
            sub_2544AD83C(319, &qword_27F5FB4D0, &qword_27F5FB3D0, &unk_25454E0F0);
            if (v6 <= 0x3F)
            {
              sub_2544C45E8(319, &qword_27F5FB4D8, &type metadata for SceneType, MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
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

void sub_2544C4584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2544C45E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2544C4654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_2544C46C0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2544C46CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2544C4734(uint64_t a1)
{
  type metadata accessor for RegisteredCameraView(0);

  return sub_2544C05FC(a1);
}

uint64_t objectdestroy_44Tm()
{
  v1 = type metadata accessor for RegisteredCameraView(0);
  v18 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v17 = (v18 + 16) & ~v18;
  v19 = v0;
  v2 = v0 + v17;

  v3 = v1[6];
  v4 = sub_254549B54();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v17 + v3, v4);
  v6 = v0 + v17 + v1[8];
  v7 = sub_254549394();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB490, &qword_25454E488);

  v9 = v0 + v17 + v1[9];
  v10 = _s12RegistrationVMa(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v8(v9, v7);
    v8(v9 + *(v10 + 20), v7);
    v5(v9 + *(v10 + 24), v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB498, &qword_25454E490);

  v11 = v2 + v1[10];
  v12 = type metadata accessor for MultiFactorVisibility.VisibilityState(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = *(v12 + 32);
    v14 = sub_25454A3B4();
    (*(*(v14 - 8) + 8))(v11 + v13, v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB4A0, &qword_25454E498);

  sub_2544C46C0(*(v2 + v1[11]), *(v2 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v19, v17 + v16, v18 | 7);
}

uint64_t sub_2544C4B84(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_2544C4C08()
{
  result = qword_27F5FB518;
  if (!qword_27F5FB518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB4F0, &qword_25454E550);
    sub_2544C4CDC(&qword_27F5FB520, &qword_27F5FB4F8, &qword_25454E558);
    sub_2544C3DE0(&qword_27F5FB528, type metadata accessor for MultiFactorVisibility, &protocol conformance descriptor for MultiFactorVisibility);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB518);
  }

  return result;
}

uint64_t sub_2544C4CDC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2544C4D4C()
{
  result = qword_27F5FB538;
  if (!qword_27F5FB538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB3D0, &unk_25454E0F0);
    sub_2544C3DE0(&qword_27F5FB540, type metadata accessor for MultiFactorVisibility.VisibilityState, &protocol conformance descriptor for MultiFactorVisibility.VisibilityState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB538);
  }

  return result;
}

uint64_t sub_2544C4E00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2544C4E68()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB4E8, &qword_25454E548);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB3D0, &unk_25454E0F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB4E0, &qword_25454E540);
  sub_254549B54();
  sub_2544C4B84(&qword_27F5FB508, &qword_27F5FB4E0, &qword_25454E540, sub_2544C4B54);
  sub_2544C3DE0(&qword_27F5FB530, MEMORY[0x277D15E70], MEMORY[0x277D15E80]);
  swift_getOpaqueTypeConformance2();
  sub_2544C4D4C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t NearbyAccessoriesToggle.body.getter@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = sub_25454ABE4();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2545493C4();
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25454BC64();
  MEMORY[0x28223BE20](v6 - 8);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25454AEB4();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB568, &qword_25454E5C0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB570, &qword_25454E5C8);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v16 = &v30 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB578, &unk_25454E5D0);
  v17 = MEMORY[0x28223BE20](v38);
  v34 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v36 = &v30 - v19;
  v20 = *(v1 + 8);
  v21 = *(v1 + 16);
  v46 = *v1;
  v47 = v20;
  v48 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB580, &unk_2545506D0);
  sub_25454B934();
  sub_25454BA94();
  sub_25454B954();

  sub_25454B8B4();
  sub_25454AE94();
  v22 = sub_2544AE1F0(&qword_27F5FB588, &qword_27F5FB568, &qword_25454E5C0, MEMORY[0x277CDF068]);
  sub_25454B484();
  (*(v31 + 8))(v10, v32);
  (*(v12 + 8))(v14, v11);
  sub_25454BC54();
  sub_2544C56A4();
  if (!sub_25454C024())
  {
    v23 = [objc_opt_self() mainBundle];
  }

  sub_2545493B4();
  v46 = sub_25454BCA4();
  v47 = v24;
  v44 = v11;
  v45 = v22;
  swift_getOpaqueTypeConformance2();
  sub_2544AECF0();
  v25 = v34;
  v26 = v37;
  sub_25454B424();

  (*(v35 + 8))(v16, v26);
  v27 = v40;
  sub_25454ABD4();
  v28 = v36;
  sub_25454A6F4();
  (*(v41 + 8))(v27, v42);
  sub_2544AE150(v25, &qword_27F5FB578, &unk_25454E5D0);
  sub_2544C56F0();
  sub_25454B494();
  return sub_2544AE150(v28, &qword_27F5FB578, &unk_25454E5D0);
}

void sub_2544C55F8(uint64_t *a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_25454B704();

  *a1 = v2;
}

unint64_t sub_2544C56A4()
{
  result = qword_27F5FB590;
  if (!qword_27F5FB590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5FB590);
  }

  return result;
}

unint64_t sub_2544C56F0()
{
  result = qword_27F5FB598;
  if (!qword_27F5FB598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB578, &unk_25454E5D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB568, &qword_25454E5C0);
    sub_2544AE1F0(&qword_27F5FB588, &qword_27F5FB568, &qword_25454E5C0, MEMORY[0x277CDF068]);
    swift_getOpaqueTypeConformance2();
    sub_2544C8F08(&qword_27F5FB340, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB598);
  }

  return result;
}

uint64_t sub_2544C581C()
{
  v1 = sub_25454AA94();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for TalkButtonToggle(0) + 20);
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_25454BF84();
    v8 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();
    v9 = j__swift_release(v6);
    (*(v2 + 8))(v4, v1, v9);
    return v11[1];
  }

  return v6;
}

uint64_t sub_2544C5970@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25454AA94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A0, &qword_25454E640);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TalkButtonToggle(0);
  sub_2544AE240(v1 + *(v10 + 24), v9, &qword_27F5FB5A0, &qword_25454E640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25454B0E4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_25454BF84();
    v13 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t TalkButtonToggle.init(mode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TalkButtonToggle(0);
  v5 = a2 + *(v4 + 20);
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = *(v4 + 24);
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A0, &qword_25454E640);
  swift_storeEnumTagMultiPayload();

  return sub_2544C80C8(a1, a2);
}

uint64_t type metadata accessor for TalkButtonToggle(uint64_t a1)
{
  result = qword_27F5FB618;
  if (!qword_27F5FB618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TalkButtonToggle.body.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_2545493C4();
  MEMORY[0x28223BE20](v2 - 8);
  v25 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25454BC64();
  MEMORY[0x28223BE20](v4 - 8);
  v22[1] = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A8, &qword_25454E648);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5B0, &qword_25454E650);
  v23 = *(v13 - 8);
  v24 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v22 - v14;
  sub_25454B934();
  sub_2544AE240(v12, v10, &qword_27F5FB5A8, &qword_25454E648);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_2544C80C8(v10, v17 + v16);
  sub_2544AE240(v12, v10, &qword_27F5FB5A8, &qword_25454E648);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_2544C80C8(v10, v18 + v16);
  sub_25454B944();
  sub_2544AE150(v12, &qword_27F5FB5A8, &qword_25454E648);
  v27 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5B8, &qword_25454E658);
  sub_2544C8348();
  sub_25454B8B4();
  sub_25454BC54();
  sub_2545493B4();
  v28 = sub_25454BCA4();
  v29 = v19;
  sub_2544AE1F0(&qword_27F5FB608, &qword_27F5FB5B0, &qword_25454E650, MEMORY[0x277CDF068]);
  sub_2544AECF0();
  v20 = v24;
  sub_25454B424();

  return (*(v23 + 8))(v15, v20);
}

void sub_2544C607C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a1;
  v134 = a2;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB678, &qword_25454E808);
  MEMORY[0x28223BE20](v132);
  v133 = (&v90 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB1E8, &unk_25454E810);
  MEMORY[0x28223BE20](v3 - 8);
  v112 = &v90 - v4;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB1F0, &qword_25454DEF8);
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v90 - v5;
  v98 = sub_25454B0E4();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_25454AFD4();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for CameraWaveform(0);
  MEMORY[0x28223BE20](v100);
  v105 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB680, &qword_25454E820);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v102 = &v90 - v9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5E0, &qword_25454E668);
  MEMORY[0x28223BE20](v101);
  v104 = &v90 - v10;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5D0, &qword_25454E660);
  v11 = MEMORY[0x28223BE20](v131);
  v103 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = &v90 - v13;
  v14 = sub_254549C14();
  v135 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v113 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB688, &qword_25454E828);
  v17 = MEMORY[0x28223BE20](v16);
  v126 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v90 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB690, &qword_25454E830);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v99 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v128 = &v90 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v125 = &v90 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v127 = &v90 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v90 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v90 - v33;
  v35 = sub_254549B54();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v121 = &v90 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v90 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5B8, &qword_25454E658);
  MEMORY[0x28223BE20](v41 - 8);
  v130 = &v90 - v42;
  v43 = sub_25454BE14();
  v129 = sub_25454BE04();
  v92 = v43;
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A8, &qword_25454E648);
  MEMORY[0x259C0EA00]();
  sub_254549B14();
  v44 = *(v36 + 8);
  v122 = v36 + 8;
  v123 = v35;
  v118 = v44;
  v44(v40, v35);
  v45 = v135;
  v46 = *(v135 + 104);
  v116 = *MEMORY[0x277D15EB0];
  v117 = v135 + 104;
  v115 = v46;
  v46(v32);
  v114 = *(v45 + 56);
  v114(v32, 0, 1, v14);
  v124 = v16;
  v47 = *(v16 + 48);
  sub_2544AE240(v34, v20, &qword_27F5FB690, &qword_25454E830);
  sub_2544AE240(v32, &v20[v47], &qword_27F5FB690, &qword_25454E830);
  v48 = v34;
  v49 = *(v45 + 48);
  v50 = v49(v20, 1, v14);
  v120 = v49;
  if (v50 != 1)
  {
    v91 = v48;
    v52 = v127;
    sub_2544AE240(v20, v127, &qword_27F5FB690, &qword_25454E830);
    if (v49(&v20[v47], 1, v14) != 1)
    {
      v60 = v135;
      v61 = v113;
      (*(v135 + 32))(v113, &v20[v47], v14);
      sub_2544C8F08(&qword_27F5FB698, MEMORY[0x277D15EC0], MEMORY[0x277D15EC8]);
      v62 = sub_25454BC44();
      v63 = *(v60 + 8);
      v63(v61, v14);
      sub_2544AE150(v32, &qword_27F5FB690, &qword_25454E830);
      sub_2544AE150(v91, &qword_27F5FB690, &qword_25454E830);
      v63(v127, v14);
      sub_2544AE150(v20, &qword_27F5FB690, &qword_25454E830);
      v51 = v130;
      if (v62)
      {
        goto LABEL_16;
      }

LABEL_9:
      v53 = v121;
      MEMORY[0x259C0EA00](v119);
      v54 = v125;
      sub_254549B14();
      v118(v53, v123);
      v55 = v128;
      v115(v128, v116, v14);
      v114(v55, 0, 1, v14);
      v56 = *(v124 + 48);
      v57 = v126;
      sub_2544AE240(v54, v126, &qword_27F5FB690, &qword_25454E830);
      sub_2544AE240(v55, v57 + v56, &qword_27F5FB690, &qword_25454E830);
      v58 = v120;
      if (v120(v57, 1, v14) == 1)
      {
        sub_2544AE150(v55, &qword_27F5FB690, &qword_25454E830);
        sub_2544AE150(v54, &qword_27F5FB690, &qword_25454E830);
        if (v58(v57 + v56, 1, v14) == 1)
        {
          sub_2544AE150(v57, &qword_27F5FB690, &qword_25454E830);
LABEL_21:
          *v133 = sub_25454B704();
          swift_storeEnumTagMultiPayload();
          sub_2544C83D4();
          sub_25454AD44();
          goto LABEL_23;
        }
      }

      else
      {
        v59 = v99;
        sub_2544AE240(v57, v99, &qword_27F5FB690, &qword_25454E830);
        if (v58(v57 + v56, 1, v14) != 1)
        {
          v72 = v54;
          v73 = v135;
          v74 = v113;
          (*(v135 + 32))(v113, v57 + v56, v14);
          sub_2544C8F08(&qword_27F5FB698, MEMORY[0x277D15EC0], MEMORY[0x277D15EC8]);
          sub_25454BC44();
          v75 = *(v73 + 8);
          v75(v74, v14);
          sub_2544AE150(v128, &qword_27F5FB690, &qword_25454E830);
          sub_2544AE150(v72, &qword_27F5FB690, &qword_25454E830);
          v75(v59, v14);
          sub_2544AE150(v57, &qword_27F5FB690, &qword_25454E830);
          goto LABEL_21;
        }

        sub_2544AE150(v128, &qword_27F5FB690, &qword_25454E830);
        sub_2544AE150(v54, &qword_27F5FB690, &qword_25454E830);
        (*(v135 + 8))(v59, v14);
      }

      sub_2544AE150(v57, &qword_27F5FB688, &qword_25454E828);
      goto LABEL_21;
    }

    sub_2544AE150(v32, &qword_27F5FB690, &qword_25454E830);
    sub_2544AE150(v91, &qword_27F5FB690, &qword_25454E830);
    (*(v135 + 8))(v52, v14);
LABEL_8:
    sub_2544AE150(v20, &qword_27F5FB688, &qword_25454E828);
    v51 = v130;
    goto LABEL_9;
  }

  sub_2544AE150(v32, &qword_27F5FB690, &qword_25454E830);
  sub_2544AE150(v48, &qword_27F5FB690, &qword_25454E830);
  if (v49(&v20[v47], 1, v14) != 1)
  {
    goto LABEL_8;
  }

  sub_2544AE150(v20, &qword_27F5FB690, &qword_25454E830);
  v51 = v130;
LABEL_16:
  v64 = *MEMORY[0x277D15228];
  v65 = sub_254549604();
  v66 = v105;
  (*(*(v65 - 8) + 104))(v105, v64, v65);
  v67 = v100;
  type metadata accessor for WaveformModel();
  sub_25454BAB4();
  v68 = v66 + *(v67 + 24);
  sub_254549C04();
  sub_2544C8F08(&qword_27F5FB148, MEMORY[0x277D15EA8], MEMORY[0x277D15E90]);
  *v68 = sub_25454A474();
  *(v68 + 8) = v69 & 1;
  if (sub_2544C581C())
  {
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v70 = v94;
    sub_2544C5970(v94);
    v71 = v93;
    sub_25454B164();
    (*(v97 + 8))(v70, v98);
    sub_25454AFC4();
    (*(v95 + 8))(v71, v96);
  }

  sub_2544C8F08(&qword_27F5FB1F8, type metadata accessor for CameraWaveform, &protocol conformance descriptor for CameraWaveform);
  v76 = v109;
  sub_25454B294();
  v77 = v112;
  sub_254549404();
  v78 = sub_254549414();
  (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
  v79 = v102;
  v80 = v111;
  sub_254549434();
  sub_2544AE150(v77, &qword_27F5FB1E8, &unk_25454E810);
  (*(v110 + 8))(v76, v80);
  sub_2544C8DC0(v66);
  v81 = sub_25454B654();
  KeyPath = swift_getKeyPath();
  v83 = v104;
  (*(v106 + 32))(v104, v79, v107);
  v84 = (v83 + *(v101 + 36));
  *v84 = KeyPath;
  v84[1] = v81;
  v85 = swift_getKeyPath();
  v86 = swift_allocObject();
  *(v86 + 16) = 1;
  v87 = v103;
  sub_2544B14E8(v83, v103, &qword_27F5FB5E0, &qword_25454E668);
  v88 = (v87 + *(v131 + 36));
  *v88 = v85;
  v88[1] = sub_2544C8E8C;
  v88[2] = v86;
  v89 = v108;
  sub_2544B14E8(v87, v108, &qword_27F5FB5D0, &qword_25454E660);
  sub_2544C8E94(v89, v133);
  swift_storeEnumTagMultiPayload();
  sub_2544C83D4();
  sub_25454AD44();
  sub_2544AE150(v89, &qword_27F5FB5D0, &qword_25454E660);
LABEL_23:
  sub_2544B14E8(v51, v134, &qword_27F5FB5B8, &qword_25454E658);
}

uint64_t VolumeToggle.init(isMuted:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t VolumeToggle.body.getter@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = sub_2545493C4();
  MEMORY[0x28223BE20](v2 - 8);
  v15 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25454BC64();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB568, &qword_25454E5C0);
  v6 = *(v5 - 8);
  v16 = v5;
  v17 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v10 = *(v1 + 8);
  v11 = *(v1 + 16);
  v22 = *v1;
  v9 = v22;
  v23 = v10;
  v24 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB580, &unk_2545506D0);
  sub_25454B934();
  sub_25454BA94();
  sub_25454B954();

  v19 = v9;
  v20 = v10;
  v21 = v11;
  sub_25454B8B4();
  sub_25454BC54();
  sub_2545493B4();
  v22 = sub_25454BCA4();
  v23 = v12;
  sub_2544AE1F0(&qword_27F5FB588, &qword_27F5FB568, &qword_25454E5C0, MEMORY[0x277CDF068]);
  sub_2544AECF0();
  v13 = v16;
  sub_25454B424();

  return (*(v17 + 8))(v8, v13);
}

void sub_2544C764C(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = a1;
  v12 = a2;
  v13 = a3 & 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB580, &unk_2545506D0);
  MEMORY[0x259C0EA00](&v10, v8);
  v9 = sub_25454B704();

  *a4 = v9;
}

uint64_t sub_2544C776C@<X0>(_BYTE *a1@<X8>)
{
  v32 = a1;
  v1 = sub_254549C14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB688, &qword_25454E828);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB690, &qword_25454E830);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = sub_254549B54();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A8, &qword_25454E648);
  MEMORY[0x259C0EA00](v20);
  sub_254549B14();
  (*(v17 + 8))(v19, v16);
  (*(v2 + 104))(v13, *MEMORY[0x277D15EB0], v1);
  (*(v2 + 56))(v13, 0, 1, v1);
  v21 = *(v5 + 56);
  sub_2544AE240(v15, v7, &qword_27F5FB690, &qword_25454E830);
  sub_2544AE240(v13, &v7[v21], &qword_27F5FB690, &qword_25454E830);
  v22 = *(v2 + 48);
  if (v22(v7, 1, v1) != 1)
  {
    sub_2544AE240(v7, v31, &qword_27F5FB690, &qword_25454E830);
    if (v22(&v7[v21], 1, v1) != 1)
    {
      v25 = &v7[v21];
      v26 = v30;
      (*(v2 + 32))(v30, v25, v1);
      sub_2544C8F08(&qword_27F5FB698, MEMORY[0x277D15EC0], MEMORY[0x277D15EC8]);
      v27 = v31;
      v24 = sub_25454BC44();
      v28 = *(v2 + 8);
      v28(v26, v1);
      sub_2544AE150(v13, &qword_27F5FB690, &qword_25454E830);
      sub_2544AE150(v15, &qword_27F5FB690, &qword_25454E830);
      v28(v27, v1);
      result = sub_2544AE150(v7, &qword_27F5FB690, &qword_25454E830);
      goto LABEL_8;
    }

    sub_2544AE150(v13, &qword_27F5FB690, &qword_25454E830);
    sub_2544AE150(v15, &qword_27F5FB690, &qword_25454E830);
    (*(v2 + 8))(v31, v1);
    goto LABEL_6;
  }

  sub_2544AE150(v13, &qword_27F5FB690, &qword_25454E830);
  sub_2544AE150(v15, &qword_27F5FB690, &qword_25454E830);
  if (v22(&v7[v21], 1, v1) != 1)
  {
LABEL_6:
    result = sub_2544AE150(v7, &qword_27F5FB688, &qword_25454E828);
    v24 = 0;
    goto LABEL_8;
  }

  result = sub_2544AE150(v7, &qword_27F5FB690, &qword_25454E830);
  v24 = 1;
LABEL_8:
  *v32 = v24 & 1;
  return result;
}

uint64_t sub_2544C7C64(unsigned __int8 *a1)
{
  v2 = sub_254549B54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB6A0, &qword_25454ECC0) + 48);
  v8 = sub_254549C14();
  v9 = *(*(v8 - 8) + 104);
  if (v6 == 1)
  {
    v9(v5, *MEMORY[0x277D15EB0], v8);
    v10 = sub_254549AC4();
    (*(*(v10 - 8) + 56))(&v5[v7], 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB6C0, &qword_25454E8A8);
    sub_254549B04();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_25454D8F0;
    sub_254549AF4();
    v15 = v11;
  }

  else
  {
    v9(v5, *MEMORY[0x277D15EB8], v8);
    v12 = sub_254549AC4();
    (*(*(v12 - 8) + 56))(&v5[v7], 1, 1, v12);
    sub_254549B04();
    v15 = MEMORY[0x277D84F90];
  }

  sub_2544C8F08(&qword_27F5FB6A8, MEMORY[0x277D15E40], MEMORY[0x277D15E50]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB6B0, &qword_25454E8A0);
  sub_2544AE1F0(&qword_27F5FB6B8, &qword_27F5FB6B0, &qword_25454E8A0, MEMORY[0x277D83970]);
  sub_25454C0E4();
  (*(v3 + 104))(v5, *MEMORY[0x277D15E68], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A8, &qword_25454E648);
  return sub_25454B914();
}

uint64_t sub_2544C7FD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25454A984();
  *a1 = result;
  return result;
}

uint64_t sub_2544C7FFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25454A984();
  *a1 = result;
  return result;
}

uint64_t sub_2544C80C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A8, &qword_25454E648);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544C813C@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A8, &qword_25454E648);

  return sub_2544C776C(a1);
}

uint64_t objectdestroyTm_0()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A8, &qword_25454E648) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[10];
  v6 = sub_254549B54();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2544C82C0(unsigned __int8 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A8, &qword_25454E648);

  return sub_2544C7C64(a1);
}

unint64_t sub_2544C8348()
{
  result = qword_27F5FB5C0;
  if (!qword_27F5FB5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB5B8, &qword_25454E658);
    sub_2544C83D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB5C0);
  }

  return result;
}

unint64_t sub_2544C83D4()
{
  result = qword_27F5FB5C8;
  if (!qword_27F5FB5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB5D0, &qword_25454E660);
    sub_2544C848C();
    sub_2544AE1F0(&qword_27F5FB5F8, &qword_27F5FB600, &qword_25454E678, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB5C8);
  }

  return result;
}

unint64_t sub_2544C848C()
{
  result = qword_27F5FB5D8;
  if (!qword_27F5FB5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB5E0, &qword_25454E668);
    type metadata accessor for CameraWaveform(255);
    sub_2544C8F08(&qword_27F5FB1F8, type metadata accessor for CameraWaveform, &protocol conformance descriptor for CameraWaveform);
    swift_getOpaqueTypeConformance2();
    sub_2544AE1F0(&qword_27F5FB5E8, &qword_27F5FB5F0, &qword_25454E670, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB5D8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2544C863C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A8, &qword_25454E648);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB610, &unk_254552D00);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2544C8788(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A8, &qword_25454E648);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB610, &unk_254552D00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_2544C88C4(uint64_t a1)
{
  sub_2544C8A24(319, &qword_27F5FB628, MEMORY[0x277D15E70], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_2544C89C0(319);
    if (v2 <= 0x3F)
    {
      sub_2544C8A24(319, &qword_27F5FB640, MEMORY[0x277CE0A00], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2544C89C0(uint64_t a1)
{
  if (!qword_27F5FB630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB638, &qword_25454E7D8);
    v1 = sub_25454A464();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5FB630);
    }
  }
}

void sub_2544C8A24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2544C8A8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2544C8AD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2544C8B2C()
{
  result = qword_27F5FB648;
  if (!qword_27F5FB648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB650, &qword_25454E7F0);
    sub_2544C56F0();
    sub_2544C8F08(&qword_27F5FB340, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB648);
  }

  return result;
}

unint64_t sub_2544C8BEC()
{
  result = qword_27F5FB658;
  if (!qword_27F5FB658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB660, &qword_25454E7F8);
    sub_2544AE1F0(&qword_27F5FB608, &qword_27F5FB5B0, &qword_25454E650, MEMORY[0x277CDF068]);
    sub_2544C8F08(&qword_27F5FB340, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB658);
  }

  return result;
}

unint64_t sub_2544C8CD8()
{
  result = qword_27F5FB668;
  if (!qword_27F5FB668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB670, &qword_25454E800);
    sub_2544AE1F0(&qword_27F5FB588, &qword_27F5FB568, &qword_25454E5C0, MEMORY[0x277CDF068]);
    sub_2544C8F08(&qword_27F5FB340, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB668);
  }

  return result;
}

uint64_t sub_2544C8DC0(uint64_t a1)
{
  v2 = type metadata accessor for CameraWaveform(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2544C8E1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25454AA64();
  *a1 = result;
  return result;
}

uint64_t sub_2544C8E94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5D0, &qword_25454E660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544C8F08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CameraErrorView.init(systemImageName:imageOpacity:title:description:color:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 56) = a6;
  *(a8 + 16) = a9;
  *(a8 + 24) = a7;
  *(a8 + 32) = a3;
  return result;
}

double CameraErrorView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v21[0] = *v1;
  v21[1] = v3;
  v4 = v1[3];
  v21[2] = v1[2];
  v21[3] = v4;
  v5 = sub_25454AC14();
  v20 = 1;
  sub_2544C909C(v21, &v12);
  v26 = v16;
  v27 = v17;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v29[1] = v13;
  v29[2] = v14;
  v28 = v18;
  v29[0] = v12;
  v29[3] = v15;
  v29[4] = v16;
  v29[5] = v17;
  v29[6] = v18;
  sub_2544C98A0(&v22, &v11);
  sub_2544AE150(v29, &qword_27F5FB6C8, &qword_25454E8B0);
  *&v19[55] = v25;
  *&v19[71] = v26;
  *&v19[87] = v27;
  *&v19[103] = v28;
  *&v19[7] = v22;
  *&v19[23] = v23;
  *&v19[39] = v24;
  v6 = *&v19[80];
  *(a1 + 81) = *&v19[64];
  *(a1 + 97) = v6;
  *(a1 + 113) = *&v19[96];
  v7 = *&v19[16];
  *(a1 + 17) = *v19;
  *(a1 + 33) = v7;
  result = *&v19[32];
  v9 = *&v19[48];
  *(a1 + 49) = *&v19[32];
  v10 = v20;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 128) = *&v19[111];
  *(a1 + 65) = v9;
  return result;
}

double sub_2544C909C@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v96 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB370, &qword_254551530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v89 - v4;
  v6 = sub_25454B144();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v95 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1[1])
  {

    v10 = sub_25454B704();
    (*(v7 + 104))(v9, *MEMORY[0x277CE0A50], v6);
    v11 = sub_25454B044();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = sub_25454B0B4();
    sub_2544AE150(v5, &qword_27F5FB370, &qword_254551530);
    (*(v7 + 8))(v9, v6);
    KeyPath = swift_getKeyPath();
    v14 = a1[3];
    v15 = swift_getKeyPath();
    v93 = a1[2];
    v102 = v14;
    swift_retain_n();
    v105 = v10;

    v103 = KeyPath;

    v104 = v12;

    v94 = v15;
  }

  else
  {
    v104 = 0;
    v105 = 0;
    v102 = 0;
    v103 = 0;
    v93 = 0;
    v94 = 0;
  }

  v16 = a1[5];
  v97 = a1;
  v92 = v6;
  v91 = v5;
  v90 = v9;
  if (!v16)
  {
    v100 = 0;
    v101 = 0;
    v98 = 0;
    v99 = 0;
    v41 = a1[7];
    if (v41)
    {
      goto LABEL_8;
    }

LABEL_10:
    v66 = 0;
    v67 = 0;
    v97 = 0;
    v68 = 0;
    goto LABEL_11;
  }

  v106 = a1[4];
  v107 = v16;
  sub_2544AECF0();

  v17 = sub_25454B274();
  v19 = v18;
  v21 = v20;
  (*(v7 + 104))(v9, *MEMORY[0x277CE0AC0], v6);
  v22 = sub_25454B044();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  sub_25454B0B4();
  sub_2544AE150(v5, &qword_27F5FB370, &qword_254551530);
  (*(v7 + 8))(v9, v6);
  v23 = sub_25454B224();
  v25 = v24;
  v27 = v26;

  v28 = v19;
  a1 = v97;
  sub_2544C9C64(v17, v28, v21 & 1);

  sub_25454B084();
  v29 = sub_25454B194();
  v31 = v30;
  v33 = v32;
  sub_2544C9C64(v23, v25, v27 & 1);

  v34 = sub_25454B1D4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_2544C9C64(v29, v31, v33 & 1);

  v100 = v36;
  v101 = v34;
  v98 = v38 & 1;
  sub_2544A8F00(v34, v36, v38 & 1);
  v99 = v40;

  v41 = a1[7];
  if (!v41)
  {
    goto LABEL_10;
  }

LABEL_8:
  v106 = a1[6];
  v107 = v41;
  sub_2544AECF0();

  v42 = sub_25454B274();
  v44 = v43;
  v46 = v45;
  v47 = v90;
  v48 = v92;
  (*(v7 + 104))(v90, *MEMORY[0x277CE0AA0], v92);
  v49 = sub_25454B044();
  v50 = v91;
  (*(*(v49 - 8) + 56))(v91, 1, 1, v49);
  sub_25454B0B4();
  sub_2544AE150(v50, &qword_27F5FB370, &qword_254551530);
  (*(v7 + 8))(v47, v48);
  v51 = sub_25454B224();
  v53 = v52;
  v55 = v54;

  sub_2544C9C64(v42, v44, v46 & 1);

  _s7SwiftUI4FontV7HomeUI2E14softMonospaced4size6weightACSd_AC6WeightVtFZfA0__0();
  v56 = sub_25454B194();
  v58 = v57;
  LOBYTE(v42) = v59;
  sub_2544C9C64(v51, v53, v55 & 1);

  v60 = sub_25454B1D4();
  v62 = v61;
  LOBYTE(v53) = v63;
  v65 = v64;
  sub_2544C9C64(v56, v58, v42 & 1);

  v66 = v60;
  v67 = v62;
  v97 = (v53 & 1);
  sub_2544A8F00(v60, v62, v53 & 1);
  v68 = v65;

LABEL_11:
  v70 = v93;
  v69 = v94;
  sub_2544C9B6C(v105, v103, v104, v94, v102);
  v72 = v100;
  v71 = v101;
  v73 = v98;
  v74 = v99;
  sub_2544C9BDC(v101, v100, v98, v99);
  v75 = v97;
  sub_2544C9BDC(v66, v67, v97, v68);
  sub_2544C9C20(v71, v72, v73, v74, v76);
  v78 = v104;
  v77 = v105;
  v80 = v102;
  v79 = v103;
  v81.n128_f64[0] = sub_2544C9C74(v105, v103, v104, v69, v102);
  sub_2544C9C20(v66, v67, v75, v68, v81);
  v82 = v96;
  *v96 = v77;
  v82[1] = v79;
  v82[2] = v78;
  v82[3] = v69;
  v82[4] = v80;
  v82[5] = v70;
  v84 = v100;
  v83 = v101;
  v82[6] = v101;
  v82[7] = v84;
  LOBYTE(v77) = v98;
  v85 = v99;
  v82[8] = v98;
  v82[9] = v85;
  v82[10] = v66;
  v82[11] = v67;
  v82[12] = v75;
  v82[13] = v68;
  sub_2544C9C20(v66, v67, v75, v68, v86);
  sub_2544C9C20(v83, v84, v77, v85, v87);
  sub_2544C9C74(v105, v103, v104, v69, v102);

  return result;
}

uint64_t sub_2544C98A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB6C8, &qword_25454E8B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_2544C992C@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v21[0] = *v1;
  v21[1] = v3;
  v4 = v1[3];
  v21[2] = v1[2];
  v21[3] = v4;
  v5 = sub_25454AC14();
  v20 = 1;
  sub_2544C909C(v21, &v12);
  v26 = v16;
  v27 = v17;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v29[1] = v13;
  v29[2] = v14;
  v28 = v18;
  v29[0] = v12;
  v29[3] = v15;
  v29[4] = v16;
  v29[5] = v17;
  v29[6] = v18;
  sub_2544C98A0(&v22, &v11);
  sub_2544AE150(v29, &qword_27F5FB6C8, &qword_25454E8B0);
  *&v19[55] = v25;
  *&v19[71] = v26;
  *&v19[87] = v27;
  *&v19[103] = v28;
  *&v19[7] = v22;
  *&v19[23] = v23;
  *&v19[39] = v24;
  v6 = *&v19[80];
  *(a1 + 81) = *&v19[64];
  *(a1 + 97) = v6;
  *(a1 + 113) = *&v19[96];
  v7 = *&v19[16];
  *(a1 + 17) = *v19;
  *(a1 + 33) = v7;
  result = *&v19[32];
  v9 = *&v19[48];
  *(a1 + 49) = *&v19[32];
  v10 = v20;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 128) = *&v19[111];
  *(a1 + 65) = v9;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2544C9A5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2544C9AA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2544C9B08()
{
  result = qword_27F5FB6D0;
  if (!qword_27F5FB6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB6D8, &qword_25454E958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB6D0);
  }

  return result;
}

uint64_t sub_2544C9B6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2544C9BDC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2544A8F00(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2544C9C20(uint64_t result, uint64_t a2, char a3, uint64_t a4, __n128 a5)
{
  if (a4)
  {
    sub_2544C9C64(result, a2, a3 & 1);
  }

  return result;
}

void sub_2544C9C64(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_2544C9C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
  }

  return result;
}

uint64_t CameraEventDescriptor.cameraProfile.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_254549D04();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CameraEventDescriptor.uniqueIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CameraEventDescriptor(0) + 20);
  v4 = sub_254549394();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CameraEventDescriptor(uint64_t a1)
{
  result = qword_27F5FB700;
  if (!qword_27F5FB700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CameraEventDescriptor.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CameraEventDescriptor(0) + 24);
  v4 = sub_254549354();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CameraEventDescriptor.init(cameraProfile:uniqueIdentifier:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_254549D04();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for CameraEventDescriptor(0);
  v10 = *(v9 + 20);
  v11 = sub_254549394();
  (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  v12 = *(v9 + 24);
  v13 = sub_254549354();
  v14 = *(*(v13 - 8) + 32);

  return v14(a4 + v12, a3, v13);
}

unint64_t CameraEventDescriptor.description.getter()
{
  v0 = sub_254549394();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_25454C154();

  v8 = 0xD000000000000013;
  v9 = 0x8000000254555220;
  sub_254549CF4();
  sub_2544CA990(&qword_27F5FB6E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v4 = sub_25454C304();
  MEMORY[0x259C0EE40](v4);

  (*(v1 + 8))(v3, v0);
  MEMORY[0x259C0EE40](0xD000000000000011, 0x8000000254555240);
  type metadata accessor for CameraEventDescriptor(0);
  v5 = sub_25454C304();
  MEMORY[0x259C0EE40](v5);

  MEMORY[0x259C0EE40](0x203A6574616420, 0xE700000000000000);
  sub_254549354();
  sub_2544CA990(&qword_27F5FAD28, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v6 = sub_25454C304();
  MEMORY[0x259C0EE40](v6);

  return v8;
}

uint64_t static CameraEventDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x259C0CDE0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CameraEventDescriptor(0);
  if ((sub_254549374() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);

  return MEMORY[0x28211DA98](a1 + v5, a2 + v5);
}

uint64_t CameraEventDescriptor.hash(into:)(uint64_t a1)
{
  sub_254549D04();
  sub_2544CA990(&qword_27F5FB6E8, MEMORY[0x277D16548], MEMORY[0x277D16550]);
  sub_25454BBF4();
  type metadata accessor for CameraEventDescriptor(0);
  sub_254549394();
  sub_2544CA990(&qword_27F5FB028, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25454BBF4();
  sub_254549354();
  sub_2544CA990(&qword_27F5FB6F0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_25454BBF4();
}

uint64_t CameraEventDescriptor.hashValue.getter()
{
  sub_25454C3E4();
  sub_254549D04();
  sub_2544CA990(&qword_27F5FB6E8, MEMORY[0x277D16548], MEMORY[0x277D16550]);
  sub_25454BBF4();
  type metadata accessor for CameraEventDescriptor(0);
  sub_254549394();
  sub_2544CA990(&qword_27F5FB028, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25454BBF4();
  sub_254549354();
  sub_2544CA990(&qword_27F5FB6F0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25454BBF4();
  return sub_25454C434();
}

uint64_t sub_2544CA508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x259C0CDE0]() & 1) == 0 || (sub_254549374() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return MEMORY[0x28211DA98](a1 + v6, a2 + v6);
}

uint64_t sub_2544CA584()
{
  sub_25454C3E4();
  sub_254549D04();
  sub_2544CA990(&qword_27F5FB6E8, MEMORY[0x277D16548], MEMORY[0x277D16550]);
  sub_25454BBF4();
  sub_254549394();
  sub_2544CA990(&qword_27F5FB028, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25454BBF4();
  sub_254549354();
  sub_2544CA990(&qword_27F5FB6F0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25454BBF4();
  return sub_25454C434();
}

uint64_t sub_2544CA6CC(uint64_t a1)
{
  sub_254549D04();
  sub_2544CA990(&qword_27F5FB6E8, MEMORY[0x277D16548], MEMORY[0x277D16550]);
  sub_25454BBF4();
  sub_254549394();
  sub_2544CA990(&qword_27F5FB028, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25454BBF4();
  sub_254549354();
  sub_2544CA990(&qword_27F5FB6F0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_25454BBF4();
}

uint64_t sub_2544CA804(uint64_t a1)
{
  sub_25454C3E4();
  sub_254549D04();
  sub_2544CA990(&qword_27F5FB6E8, MEMORY[0x277D16548], MEMORY[0x277D16550]);
  sub_25454BBF4();
  sub_254549394();
  sub_2544CA990(&qword_27F5FB028, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25454BBF4();
  sub_254549354();
  sub_2544CA990(&qword_27F5FB6F0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25454BBF4();
  return sub_25454C434();
}

uint64_t sub_2544CA990(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2544CA9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_254549D04();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_254549394();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_254549354();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2544CAB44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_254549D04();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_254549394();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_254549354();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2544CAC90(uint64_t a1)
{
  result = sub_254549D04();
  if (v2 <= 0x3F)
  {
    result = sub_254549394();
    if (v3 <= 0x3F)
    {
      result = sub_254549354();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t CameraStatusHeader.overrideSubtitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t CameraStatusHeader.overrideSubtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CameraStatusHeader.init(camera:overrideSubtitle:config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for CameraStatusHeader(0);
  v11 = a5 + *(v10 + 28);
  sub_25454B794();
  *v11 = v13;
  *(v11 + 1) = v14;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  return sub_2544CBF98(a4, a5 + *(v10 + 24), type metadata accessor for CameraDetailsViewModel.State.Config);
}

uint64_t type metadata accessor for CameraStatusHeader(uint64_t a1)
{
  result = qword_27F5FB720;
  if (!qword_27F5FB720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double CameraStatusHeader.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CameraStatusHeader(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2544CB0E4(v15);
  v6 = sub_25454B674();
  sub_25454B654();
  v7 = sub_25454B694();

  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB710, &qword_25454EAA0) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB718, &qword_25454EAA8);
  sub_254549BB4();
  sub_2544CBD38(v1, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_2544CBF98(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for CameraStatusHeader);
  sub_25454BE24();
  *v8 = &unk_25454EAB8;
  v8[1] = v10;
  v11 = v15[3];
  *(a1 + 32) = v15[2];
  *(a1 + 48) = v11;
  v12 = v15[5];
  *(a1 + 64) = v15[4];
  *(a1 + 80) = v12;
  v13 = v15[1];
  *a1 = v15[0];
  *(a1 + 16) = v13;
  *(a1 + 96) = v6;
  *(a1 + 104) = v7;
  result = 4.0;
  *(a1 + 112) = xmmword_25454EA90;
  *(a1 + 128) = 0x3FF0000000000000;
  return result;
}

double sub_2544CB0E4@<D0>(_OWORD *a2@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_2544CB498();
  if (v6)
  {
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = sub_25454AC14();
    LOBYTE(v30[0]) = 1;
    v9 &= 1u;
    v34[0] = v9;
    sub_2544CBA4C(v26);
    *&v34[7] = v26[0];
    *&v34[23] = v26[1];
    *&v34[39] = v26[2];
    *&v34[55] = v27;
    v28 = v10;
    v29[0] = v30[0];
    *&v29[1] = *v34;
    *&v29[17] = *&v34[16];
    *&v29[33] = *&v34[32];
    *&v29[49] = *&v34[48];
    *&v29[64] = *(&v27 + 1);
    *v34 = v10;
    *&v34[16] = *v29;
    *&v34[32] = *&v29[16];
    *&v34[48] = *&v29[32];
    *&v34[64] = *&v29[48];
    *&v34[80] = *(&v27 + 1);
    v33 = 0;
    v34[88] = 0;
    sub_2544CDCAC(&v28, v30);
    sub_2544CDCAC(&v28, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB788, &qword_25454EB58);
    sub_2544AE1F0(&qword_27F5FB780, &qword_27F5FB788, &qword_25454EB58, MEMORY[0x277CE1198]);
    sub_25454AD44();
    sub_2544C9C64(v7, v8, v9);

    sub_2544AE150(&v28, &qword_27F5FB788, &qword_25454EB58);
    sub_2544AE150(&v28, &qword_27F5FB788, &qword_25454EB58);
  }

  else
  {
    sub_254549BD4();
    sub_2544AECF0();
    v11 = sub_25454B274();
    v13 = v12;
    v15 = v14;
    _s7SwiftUI4FontV7HomeUI2E14softMonospaced4size6weightACSd_AC6WeightVtFZfA0__0();
    v16 = sub_25454B194();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    sub_2544C9C64(v11, v13, v15 & 1);

    v33 = v20 & 1;
    v32 = 1;
    *v34 = v16;
    *&v34[8] = v18;
    v34[16] = v20 & 1;
    *&v34[17] = v26[0];
    *&v34[20] = *(v26 + 3);
    *&v34[24] = v22;
    *&v34[32] = v28;
    *&v34[48] = *v29;
    *&v34[64] = *&v29[16];
    *&v34[80] = *&v29[32];
    v34[88] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB788, &qword_25454EB58);
    sub_2544AE1F0(&qword_27F5FB780, &qword_27F5FB788, &qword_25454EB58, MEMORY[0x277CE1198]);
    sub_25454AD44();
  }

  *&v34[64] = v31[0];
  *&v34[73] = *(v31 + 9);
  *v34 = v30[0];
  *&v34[16] = v30[1];
  v23 = v30[3];
  a2[2] = v30[2];
  a2[3] = v23;
  a2[4] = *&v34[64];
  *(a2 + 73) = *&v34[73];
  result = *v34;
  v25 = *&v34[16];
  *a2 = *v34;
  a2[1] = v25;
  return result;
}

uint64_t sub_2544CB498()
{
  v1 = sub_25454AB74();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v54 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = *(v0 + 8);
  v5 = *(v0 + 16);
  if (v5)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v9 = *(v0 + 8);
    v10 = *(v0 + 16);
  }

  else
  {
    v11 = sub_254549BA4();
    if (v12)
    {
      v10 = v12;
      v9 = v11;
      v7 = 0;
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      v13 = sub_2544CD114();
      if (!v16)
      {
        v35 = sub_2544CCDC4();
        if (v37)
        {
          return v35;
        }

        goto LABEL_18;
      }

      v17 = v13;
      v18 = v14;
      v19 = v15;
      v52 = 0;
      v53 = v6;
      sub_25454AB64();
      sub_25454AB54();
      sub_25454AB24();
      sub_25454AB54();
      sub_25454AB94();
      v51 = v19;
      sub_2544C56A4();
      v20 = sub_25454C024();
      v50 = v18;
      v21 = v17;
      if (!v20)
      {
        v22 = [objc_opt_self() mainBundle];
      }

      v9 = sub_25454B264();
      v10 = v23;
      v25 = v24;
      v8 = v26;
      sub_2544C9C64(v21, v50, v51 & 1);
      v7 = v25;

      v5 = v52;
      v6 = v53;
    }
  }

  v27 = sub_2544CCDC4();
  if (!v30)
  {
    sub_2544C9C64(v9, v10, v7 & 1);

    v35 = sub_2544CCDC4();
    if (v36)
    {
      return v35;
    }

    if (v5)
    {
LABEL_24:

      return v6;
    }

LABEL_18:
    v38 = sub_254549BA4();
    if (v39)
    {
      v6 = v38;
    }

    else
    {
      v6 = sub_2544CD114();
      if (v42)
      {
        v43 = v40;
        v44 = v41;
        sub_25454AB64();
        sub_25454AB54();
        v45 = v44;
        v46 = v43;
        sub_25454AB24();
        sub_25454AB54();
        sub_25454AB94();
        sub_2544C56A4();
        if (!sub_25454C024())
        {
          v47 = [objc_opt_self() mainBundle];
        }

        v48 = sub_25454B264();
        sub_2544C9C64(v6, v46, v45 & 1);

        v6 = v48;
      }
    }

    goto LABEL_24;
  }

  v31 = v29;
  v32 = v27;
  v33 = v28;
  sub_25454AB64();
  sub_25454AB54();
  LODWORD(v52) = v7;
  sub_25454AB24();
  sub_25454AB54();
  v53 = v33;
  v54 = v32;
  sub_25454AB24();
  sub_25454AB54();
  sub_25454AB94();
  v51 = v8;
  sub_2544C56A4();
  if (!sub_25454C024())
  {
    v34 = [objc_opt_self() mainBundle];
  }

  v6 = sub_25454B264();
  sub_2544C9C64(v9, v10, v52 & 1);

  sub_2544C9C64(v54, v53, v31 & 1);

  return v6;
}

uint64_t sub_2544CBA4C@<X0>(uint64_t a5@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_254549BD4();
  sub_2544AECF0();
  v6 = sub_25454B274();
  v8 = v7;
  v10 = v9;
  _s7SwiftUI4FontV7HomeUI2E14softMonospaced4size6weightACSd_AC6WeightVtFZfA0__0();
  v11 = sub_25454B194();
  v29 = v12;
  v30 = v11;
  v28 = v13;
  v31 = v14;
  sub_2544C9C64(v6, v8, v10 & 1);

  sub_25454B074();
  v15 = sub_25454B194();
  v17 = v16;
  v19 = v18;
  sub_25454B104();
  v20 = sub_25454B224();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_2544C9C64(v15, v17, v19 & 1);

  *a5 = v30;
  *(a5 + 8) = v29;
  *(a5 + 16) = v28 & 1;
  *(a5 + 24) = v31;
  *(a5 + 32) = v20;
  *(a5 + 40) = v22;
  *(a5 + 48) = v24 & 1;
  *(a5 + 56) = v26;
  sub_2544A8F00(v30, v29, v28 & 1);

  sub_2544A8F00(v20, v22, v24 & 1);

  sub_2544C9C64(v20, v22, v24 & 1);

  sub_2544C9C64(v30, v29, v28 & 1);
}

uint64_t sub_2544CBC8C()
{
  v0[2] = sub_25454BE14();
  v0[3] = sub_25454BE04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2544AAF90;

  return sub_2544CC0E8();
}

uint64_t sub_2544CBD38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraStatusHeader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544CBD9C()
{
  v1 = type metadata accessor for CameraStatusHeader(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 8) + 64);

  v4 = v0 + v3 + *(v1 + 24);
  v5 = type metadata accessor for CameraDetailsViewModel.State.Config(0);
  v6 = *(v5 + 20);
  v7 = sub_2545497D4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v9 = *(v5 + 32);
  v10 = sub_254549394();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v13, v2 | 7);
}

uint64_t sub_2544CBF98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2544CC000()
{
  type metadata accessor for CameraStatusHeader(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2544AE3EC;

  return sub_2544CBC8C();
}

uint64_t sub_2544CC0E8()
{
  v1[8] = v0;
  v2 = sub_25454C1B4();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB7A8, &unk_25454EB70);
  v1[12] = swift_task_alloc();
  v3 = sub_254549354();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  sub_25454BE14();
  v1[17] = sub_25454BE04();
  v5 = sub_25454BDB4();
  v1[18] = v5;
  v1[19] = v4;

  return MEMORY[0x2822009F8](sub_2544CC27C, v5, v4);
}

uint64_t sub_2544CC27C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  sub_254549BB4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 96);

    sub_2544AE150(v4, &qword_27F5FB7A8, &unk_25454EB70);
LABEL_8:

    v19 = *(v0 + 8);

    return v19();
  }

  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v0 + 64);
  (*(v7 + 32))(*(v0 + 128), *(v0 + 96), v6);
  sub_254549334();
  sub_254549344();
  v10 = v9;
  v11 = *(v7 + 8);
  *(v0 + 160) = v11;
  *(v0 + 168) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v5, v6);
  v12 = v8 + *(type metadata accessor for CameraStatusHeader(0) + 28);
  LOBYTE(v8) = *v12;
  *(v0 + 203) = *v12;
  v13 = *(v12 + 8);
  *(v0 + 176) = v13;
  *(v0 + 16) = v8;
  *(v0 + 24) = v13;
  *(v0 + 200) = v10 <= 1.0;
  *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7B4();
  *(v0 + 32) = v8;
  *(v0 + 40) = v13;
  sub_25454B7A4();
  if (*(v0 + 201) != 1)
  {
    v11(*(v0 + 128), *(v0 + 104));

    goto LABEL_8;
  }

  v14 = sub_25454C554();
  v16 = v15;
  sub_25454C384();
  v17 = swift_task_alloc();
  *(v0 + 192) = v17;
  *v17 = v0;
  v17[1] = sub_2544CC544;

  return sub_2544CD7F4(v14, v16, 0, 0, 1);
}

uint64_t sub_2544CC544()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[11];
  v5 = v2[10];
  v6 = v2[9];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[18];
    v8 = v3[19];
    v9 = sub_2544CE0D8;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[18];
    v8 = v3[19];
    v9 = sub_2544CC6D8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2544CC6D8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 203);
  v3 = *(v0 + 160);
  v4 = *(v0 + 128);
  v5 = *(v0 + 104);

  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  *(v0 + 202) = 0;

  sub_25454B7B4();
  v3(v4, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2544CC7D8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CameraDetailsViewModel.State.Config(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_2544CC898(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CameraDetailsViewModel.State.Config(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2544CC93C(uint64_t a1)
{
  sub_254549C04();
  if (v1 <= 0x3F)
  {
    sub_2544CCA38(319, &qword_27F5FB730, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CameraDetailsViewModel.State.Config(319);
      if (v3 <= 0x3F)
      {
        sub_2544CCA38(319, &qword_27F5FAE28, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2544CCA38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2544CCA8C()
{
  result = qword_27F5FB738;
  if (!qword_27F5FB738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB710, &qword_25454EAA0);
    sub_2544CCB44();
    sub_2544AE1F0(&qword_27F5FB7A0, &qword_27F5FB718, &qword_25454EAA8, MEMORY[0x277CDDEB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB738);
  }

  return result;
}

unint64_t sub_2544CCB44()
{
  result = qword_27F5FB740;
  if (!qword_27F5FB740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB748, &qword_25454EB38);
    sub_2544CCBD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB740);
  }

  return result;
}

unint64_t sub_2544CCBD0()
{
  result = qword_27F5FB750;
  if (!qword_27F5FB750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB758, &qword_25454EB40);
    sub_2544CCC88();
    sub_2544AE1F0(&qword_27F5FB790, &qword_27F5FB798, &qword_25454EB60, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB750);
  }

  return result;
}

unint64_t sub_2544CCC88()
{
  result = qword_27F5FB760;
  if (!qword_27F5FB760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB768, &qword_25454EB48);
    sub_2544CCD0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB760);
  }

  return result;
}

unint64_t sub_2544CCD0C()
{
  result = qword_27F5FB770;
  if (!qword_27F5FB770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB778, &qword_25454EB50);
    sub_2544AE1F0(&qword_27F5FB780, &qword_27F5FB788, &qword_25454EB58, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB770);
  }

  return result;
}

uint64_t sub_2544CCDC4()
{
  v1 = sub_25454AB74();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2545493C4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB7C0, &qword_2545501E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = v0 + *(type metadata accessor for CameraStatusHeader(0) + 24);
  v8 = type metadata accessor for CameraDetailsViewModel.State.Config(0);
  result = 0;
  v10 = v7 + *(v8 + 28);
  if ((*(v10 + 8) & 1) == 0)
  {
    v12[1] = *v10;
    sub_2545493A4();
    sub_2544CDD1C();
    sub_254549114();
    sub_2544AE1F0(&qword_27F5FB7D0, &qword_27F5FB7C0, &qword_2545501E0, MEMORY[0x277CC8CC8]);
    sub_25454C094();
    (*(v4 + 8))(v6, v3);
    sub_25454AB64();
    sub_25454AB54();
    sub_25454B734();
    sub_25454AB34();

    sub_25454AB54();
    sub_25454AB44();

    sub_25454AB54();
    sub_25454AB94();
    sub_2544C56A4();
    if (!sub_25454C024())
    {
      v11 = [objc_opt_self() mainBundle];
    }

    return sub_25454B264();
  }

  return result;
}

uint64_t sub_2544CD114()
{
  v1 = sub_25454C484();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25454C314();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v42 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25454C4A4();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25454C524();
  MEMORY[0x28223BE20](v9 - 8);
  v39 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_25454C534();
  MEMORY[0x28223BE20](v41);
  v40 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB7D8, &qword_25454EB90);
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB7A8, &unk_25454EB70);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v34 - v14;
  v16 = sub_254549354();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v0 + *(type metadata accessor for CameraStatusHeader(0) + 28));
  v21 = *v20;
  v22 = *(v20 + 1);
  v44 = v21;
  v45 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  if (v43 == 1)
  {
    sub_25454AB84();
    sub_2544C56A4();
    if (!sub_25454C024())
    {
      v23 = [objc_opt_self() mainBundle];
    }

    return sub_25454B264();
  }

  else
  {
    sub_254549BB4();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_2544AE150(v15, &qword_27F5FB7A8, &unk_25454EB70);
      return 0;
    }

    else
    {
      v37 = v17;
      (*(v17 + 32))(v19, v15, v16);
      sub_25454A694();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB7E0, &qword_25454EB98);
      sub_25454C504();
      v36 = v3;
      v35 = v4;
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_25454D9B0;
      sub_25454C4D4();
      sub_25454C4B4();
      v26 = v38;
      v34[1] = v8;
      sub_25454C4C4();
      sub_25454C4E4();
      sub_25454C4F4();
      sub_2544CDD70(v25);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_25454C514();
      v27 = v42;
      v28 = v35;
      (*(v26 + 104))(v42, *MEMORY[0x277D84660], v35);
      sub_25454C494();
      (*(v26 + 8))(v27, v28);
      sub_25454C474();
      sub_25454C464();
      sub_2544CE090(&qword_27F5FB7E8, MEMORY[0x277CC9FF0], MEMORY[0x277CC9FE0]);
      v29 = sub_25454B254();
      v31 = v30;
      LOBYTE(v26) = v32;
      v33 = sub_25454B1F4();
      sub_2544C9C64(v29, v31, v26 & 1);

      (*(v37 + 8))(v19, v16);
      return v33;
    }
  }
}

uint64_t sub_2544CD7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_25454C1A4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2544CD8F4, 0, 0);
}

uint64_t sub_2544CD8F4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_25454C1B4();
  v5 = sub_2544CE090(&qword_27F5FB7B0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_25454C364();
  sub_2544CE090(&qword_27F5FB7B8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_25454C1C4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_2544CDA84;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_2544CDA84()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2544CDC40, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_2544CDC40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2544CDCAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB788, &qword_25454EB58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2544CDD1C()
{
  result = qword_27F5FB7C8;
  if (!qword_27F5FB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB7C8);
  }

  return result;
}

uint64_t sub_2544CDD70(uint64_t a1)
{
  v2 = sub_25454C504();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB7F0, &unk_25454EBA0);
    v9 = sub_25454C134();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_2544CE090(&qword_27F5FB7F8, MEMORY[0x277CC9FC8], MEMORY[0x277CC9FD0]);
      v16 = sub_25454BBE4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_2544CE090(&qword_27F5FB800, MEMORY[0x277CC9FC8], MEMORY[0x277CC9FD8]);
          v23 = sub_25454BC44();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2544CE090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2544CE0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_2545311A8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2544DA948(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_2544D4CD4();
        v14 = v16;
      }

      result = sub_254530B64(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_2544CE1D4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3D8, &unk_25454ECD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = _s12RegistrationVMa(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_2544AE150(a1, &qword_27F5FB3D8, &unk_25454ECD0);
    sub_254530954(a2, v7);
    v12 = sub_254549394();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_2544AE150(v7, &qword_27F5FB3D8, &unk_25454ECD0);
  }

  else
  {
    sub_2544D76F8(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_25453149C(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_254549394();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_2544CE3E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v32 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB868, "ڢ");
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = &v32 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB558, &qword_25454EBB0);
  v40 = *(v36 - 8);
  v7 = MEMORY[0x28223BE20](v36);
  v38 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB870, &qword_25454EC58);
  v34 = *(v11 - 8);
  v35 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB820, &qword_25454EBB8);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - v19;
  swift_defaultActor_initialize();
  v21 = OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar__registrations;
  v41 = sub_2544D732C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB848, &qword_25454EC38);
  sub_25454A144();
  (*(v18 + 32))(v1 + v21, v20, v17);
  type metadata accessor for CameraViewRegistrar.Action(0);
  v22 = v37;
  (*(v4 + 104))(v6, *MEMORY[0x277D85778], v37);
  v33 = v16;
  v23 = v10;
  sub_25454BE54();
  (*(v4 + 8))(v6, v22);
  v24 = *(v40 + 16);
  v25 = v36;
  v24(v1 + OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_actions, v10, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB878, &qword_25454EC60);
  v26 = v34;
  v27 = v35;
  (*(v34 + 16))(v14, v16, v35);
  v24(v38, v23, v25);
  *(v1 + OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_batchManager) = sub_254549F14();
  *(v1 + OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_deactivatedScenes) = MEMORY[0x277D84FA0];
  v28 = v39;
  sub_25454BE24();
  v29 = sub_25454BE44();
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v1;

  sub_2544B5138(0, 0, v28, &unk_25454EC70, v30);

  (*(v40 + 8))(v23, v25);
  (*(v26 + 8))(v33, v27);
  return v1;
}

uint64_t sub_2544CE958()
{
  v0[3] = *(v0[2] + OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_batchManager);
  v0[4] = swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB878, &qword_25454EC60);
  sub_2544AE1F0(&qword_27F5FB880, &qword_27F5FB878, &qword_25454EC60, MEMORY[0x277D16AE0]);
  v2 = sub_25454BDB4();

  return MEMORY[0x2822009F8](sub_2544CEA54, v2, v1);
}

uint64_t sub_2544CEA54()
{
  sub_254549F24();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2544CEAD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2544CEAF4, 0, 0);
}

uint64_t sub_2544CEAF4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_2544CEBE4;
    v3 = v0[5];

    return sub_2544CF054(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2544CEBE4()
{

  return MEMORY[0x2822009F8](sub_2544CECE0, 0, 0);
}

uint64_t sub_2544CECE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CameraViewRegistrar.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB558, &qword_25454EBB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_actions;
  (*(v3 + 16))(&v11 - v4, v1 + OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_actions, v2);
  sub_25454BE74();
  v7 = *(v3 + 8);
  v7(v5, v2);
  v7((v1 + v6), v2);

  v8 = OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar__registrations;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB820, &qword_25454EBB8);
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t CameraViewRegistrar.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB558, &qword_25454EBB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_actions;
  (*(v3 + 16))(&v11 - v4, v1 + OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_actions, v2);
  sub_25454BE74();
  v7 = *(v3 + 8);
  v7(v5, v2);
  v7((v1 + v6), v2);

  v8 = OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar__registrations;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB820, &qword_25454EBB8);
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_2544CF054(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_254549B54();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = sub_25454A2E4();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v5 = sub_254549394();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3D8, &unk_25454ECD0);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v6 = _s12RegistrationVMa(0);
  v2[32] = v6;
  v2[33] = *(v6 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v7 = type metadata accessor for CameraViewRegistrar.Action(0);
  v2[40] = v7;
  v2[41] = *(v7 - 8);
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2544CF364, v1, 0);
}

uint64_t sub_2544CF364()
{
  v113 = v0;
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[41];
    v4 = v0[32];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v104 = (v0[20] + 16);
    v107 = (v0[33] + 48);
    v6 = MEMORY[0x277D84F90];
    v109 = v0[20];
    v103 = *(v3 + 72);
    v102 = v4;
    while (1)
    {
      sub_2544D78D4(v5, v0[42], type metadata accessor for CameraViewRegistrar.Action);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v11 = v0[42];
      if (EnumCaseMultiPayload == 1)
      {
        v12 = v0[37];
        v13 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB560, &qword_25454E580) + 48));
        sub_2544D78D4(v11, v12, _s12RegistrationVMa);
        if (v13 != 1)
        {
          v29 = v0[42];
          v30 = v0[35];
          v31 = v0[32];
          v33 = v0[26];
          v32 = v0[27];
          sub_2544D7868(v0[37]);
          sub_2544D76F8(v29, v30);
          sub_2544D03AC(v30, v32);
          sub_2544AE240(v32, v33, &qword_27F5FB3D8, &unk_25454ECD0);
          if ((*v107)(v33, 1, v31) == 1)
          {
            v34 = v0[35];
            sub_2544AE150(v0[27], &qword_27F5FB3D8, &unk_25454ECD0);
            sub_2544D7868(v34);
            v4 = v102;
          }

          else
          {
            v51 = v0[34];
            v52 = v0[22];
            v53 = v0[19];
            sub_2544D76F8(v0[26], v51);
            (*v104)(v52, v51 + *(v102 + 20), v53);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_2544D38F0(0, v6[2] + 1, 1, v6, &qword_27F5FB8F0, &qword_25454ECE8, MEMORY[0x277CC95F0]);
            }

            v55 = v6[2];
            v54 = v6[3];
            if (v55 >= v54 >> 1)
            {
              v6 = sub_2544D38F0((v54 > 1), v55 + 1, 1, v6, &qword_27F5FB8F0, &qword_25454ECE8, MEMORY[0x277CC95F0]);
            }

            v56 = v0[35];
            v57 = v0[27];
            v58 = v0[22];
            v59 = v0[19];
            sub_2544D7868(v0[34]);
            sub_2544AE150(v57, &qword_27F5FB3D8, &unk_25454ECD0);
            sub_2544D7868(v56);
            v6[2] = v55 + 1;
            (*(v109 + 32))(v6 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v55, v58, v59);
            v4 = v102;
          }

          goto LABEL_6;
        }

        v14 = v0[32];
        v16 = v0[28];
        v15 = v0[29];
        sub_2544D03AC(v0[37], v15);
        sub_2544AE240(v15, v16, &qword_27F5FB3D8, &unk_25454ECD0);
        if ((*v107)(v16, 1, v14) == 1)
        {
          sub_2544AE150(v0[29], &qword_27F5FB3D8, &unk_25454ECD0);
        }

        else
        {
          v17 = v0[36];
          v18 = v0[23];
          v19 = v0[19];
          sub_2544D76F8(v0[28], v17);
          (*v104)(v18, v17 + *(v4 + 20), v19);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_2544D38F0(0, v6[2] + 1, 1, v6, &qword_27F5FB8F0, &qword_25454ECE8, MEMORY[0x277CC95F0]);
          }

          v21 = v6[2];
          v20 = v6[3];
          if (v21 >= v20 >> 1)
          {
            v6 = sub_2544D38F0((v20 > 1), v21 + 1, 1, v6, &qword_27F5FB8F0, &qword_25454ECE8, MEMORY[0x277CC95F0]);
          }

          v22 = v0[29];
          v23 = v0[23];
          v24 = v0[19];
          sub_2544D7868(v0[36]);
          sub_2544AE150(v22, &qword_27F5FB3D8, &unk_25454ECD0);
          v6[2] = v21 + 1;
          (*(v109 + 32))(v6 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v21, v23, v24);
        }

        v7 = v0[42];
        v8 = v0[37];
        v9 = *(v8 + *(v4 + 28));
        swift_beginAccess();
        sub_2544D5DA4(&v112, v9);
        swift_endAccess();
        sub_2544D7868(v8);
      }

      else
      {
        v25 = v0[39];
        v26 = v0[31];
        v27 = v0[32];
        v28 = v0[30];
        sub_2544D76F8(v0[42], v25);
        sub_2544D03AC(v25, v26);
        sub_2544AE240(v26, v28, &qword_27F5FB3D8, &unk_25454ECD0);
        if ((*v107)(v28, 1, v27) == 1)
        {
          sub_2544AE150(v0[31], &qword_27F5FB3D8, &unk_25454ECD0);
          v4 = v102;
        }

        else
        {
          v35 = v0[38];
          v36 = v0[25];
          v37 = v0[19];
          sub_2544D76F8(v0[30], v35);
          v4 = v102;
          (*v104)(v36, v35 + *(v102 + 20), v37);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_2544D38F0(0, v6[2] + 1, 1, v6, &qword_27F5FB8F0, &qword_25454ECE8, MEMORY[0x277CC95F0]);
          }

          v39 = v6[2];
          v38 = v6[3];
          if (v39 >= v38 >> 1)
          {
            v6 = sub_2544D38F0((v38 > 1), v39 + 1, 1, v6, &qword_27F5FB8F0, &qword_25454ECE8, MEMORY[0x277CC95F0]);
          }

          v40 = v0[31];
          v41 = v0[25];
          v42 = v0[19];
          sub_2544D7868(v0[38]);
          sub_2544AE150(v40, &qword_27F5FB3D8, &unk_25454ECD0);
          v6[2] = v39 + 1;
          (*(v109 + 32))(v6 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v39, v41, v42);
        }

        v43 = v0[39];
        v44 = v0[24];
        v45 = v0[19];
        sub_2544D08F0(v43);
        (*v104)(v44, v43 + *(v4 + 20), v45);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2544D38F0(0, v6[2] + 1, 1, v6, &qword_27F5FB8F0, &qword_25454ECE8, MEMORY[0x277CC95F0]);
        }

        v47 = v6[2];
        v46 = v6[3];
        if (v47 >= v46 >> 1)
        {
          v6 = sub_2544D38F0((v46 > 1), v47 + 1, 1, v6, &qword_27F5FB8F0, &qword_25454ECE8, MEMORY[0x277CC95F0]);
        }

        v7 = v0[39];
        v48 = v0[24];
        v49 = v0[19];
        v6[2] = v47 + 1;
        (*(v109 + 32))(v6 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v47, v48, v49);
        v50 = *(v7 + *(v4 + 28));
        swift_beginAccess();
        sub_2544D5BD8(v50, &v112);
        swift_endAccess();
      }

      sub_2544D7868(v7);
LABEL_6:
      v5 += v103;
      if (!--v2)
      {
        goto LABEL_35;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_35:
  v0[43] = v6;
  v60 = sub_2544D793C(MEMORY[0x277D84F90]);
  v61 = v6[2];
  if (v61)
  {
    v62 = v0[20];
    v65 = *(v62 + 16);
    v64 = v62 + 16;
    v63 = v65;
    v66 = v6 + ((*(v64 + 64) + 32) & ~*(v64 + 64));
    v67 = *(v64 + 56);
    v110 = v0[14];
    v65(v0[21], v66, v0[19]);
    while (1)
    {
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v68 = v0[21];
      sub_2544D1380(v68, v0[15]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v112 = v60;
      v70 = sub_2544DA750(v68);
      v73 = v60[2];
      v74 = (v71 & 1) == 0;
      v75 = __OFADD__(v73, v74);
      v76 = v73 + v74;
      if (v75)
      {
        __break(1u);
LABEL_62:
        __break(1u);
        return MEMORY[0x2822009F8](v70, v71, v72);
      }

      v77 = v71;
      if (v60[3] < v76)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_47;
      }

      v86 = v70;
      sub_2544D52C8();
      v70 = v86;
      v60 = v112;
      if (v77)
      {
LABEL_37:
        (*(v110 + 40))(v60[7] + *(v110 + 72) * v70, v0[15], v0[13]);
        goto LABEL_38;
      }

LABEL_48:
      v79 = v0[21];
      v80 = v0[19];
      v81 = v0[15];
      v82 = v0[13];
      v60[(v70 >> 6) + 8] |= 1 << v70;
      v83 = v70;
      v63(v60[6] + v70 * v67, v79, v80);
      v70 = (*(v110 + 32))(v60[7] + *(v110 + 72) * v83, v81, v82);
      v84 = v60[2];
      v75 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v75)
      {
        goto LABEL_62;
      }

      v60[2] = v85;
LABEL_38:
      (*(v64 - 8))(v0[21], v0[19]);
      v66 += v67;
      if (!--v61)
      {
        goto LABEL_52;
      }

      v63(v0[21], v66, v0[19]);
    }

    v105 = v0[21];
    sub_2544D459C(v76, isUniquelyReferenced_nonNull_native);
    v60 = v112;
    v70 = sub_2544DA750(v105);
    if ((v77 & 1) != (v78 & 1))
    {

      return sub_25454C354();
    }

LABEL_47:
    if (v77)
    {
      goto LABEL_37;
    }

    goto LABEL_48;
  }

LABEL_52:
  v0[44] = v60;
  sub_25454A2B4();

  v87 = sub_25454A2C4();
  v88 = sub_25454BF94();

  if (os_log_type_enabled(v87, v88))
  {
    v106 = v0[17];
    v108 = v0[16];
    v111 = v0[18];
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v112 = v90;
    *v89 = 136315906;
    *(v89 + 4) = sub_254502AAC(0xD000000000000021, 0x8000000254555370, &v112);
    *(v89 + 12) = 2080;
    *(v89 + 14) = sub_254502AAC(0x5F28656C646E6168, 0xEA0000000000293ALL, &v112);
    *(v89 + 22) = 2080;
    sub_2544D7B5C(&qword_27F5FB028, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v91 = sub_25454BBC4();
    v93 = sub_254502AAC(v91, v92, &v112);

    *(v89 + 24) = v93;
    *(v89 + 32) = 2080;
    swift_beginAccess();
    sub_2544D7BA4();

    v94 = sub_25454BEE4();
    v96 = v95;

    v97 = sub_254502AAC(v94, v96, &v112);

    *(v89 + 34) = v97;
    _os_log_impl(&dword_2544A5000, v87, v88, "%s-%s cameras being updated: %s, deactivated scenes: %s", v89, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v90, -1, -1);
    MEMORY[0x259C0FDF0](v89, -1, -1);

    (*(v106 + 8))(v111, v108);
  }

  else
  {
    v99 = v0[17];
    v98 = v0[18];
    v100 = v0[16];

    (*(v99 + 8))(v98, v100);
  }

  v70 = sub_2544D0100;
  v71 = 0;
  v72 = 0;

  return MEMORY[0x2822009F8](v70, v71, v72);
}

uint64_t sub_2544D0100()
{
  sub_25454BE14();
  *(v0 + 360) = sub_25454BE04();
  v2 = sub_25454BDB4();

  return MEMORY[0x2822009F8](sub_2544D0194, v2, v1);
}

uint64_t sub_2544D0194()
{
  v1 = *(v0 + 352);

  sub_2544D0D6C(v1);
  v2 = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_2544D0248, v2, 0);
}

uint64_t sub_2544D0248()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2544D03AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3D8, &unk_25454ECD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v6 = sub_254549394();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v47 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25454A2E4();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s12RegistrationVMa(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  swift_beginAccess();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB820, &qword_25454EBB8);
  sub_25454A164();
  v18 = v49[4];
  swift_endAccess();
  if (*(v18 + 16) && (v19 = sub_2544DA750(a1), (v20 & 1) != 0))
  {
    v40 = a1;
    v41 = v5;
    sub_2544D78D4(*(v18 + 56) + *(v12 + 72) * v19, v17, _s12RegistrationVMa);

    sub_25454A2B4();
    sub_2544D78D4(v17, v15, _s12RegistrationVMa);
    v21 = sub_25454A2C4();
    v22 = sub_25454BF94();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v38 = v22;
      v24 = v23;
      v39 = swift_slowAlloc();
      v49[0] = v39;
      *v24 = 136315650;
      *(v24 + 4) = sub_254502AAC(0xD000000000000021, 0x8000000254555370, v49);
      v37 = v21;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_254502AAC(0xD000000000000019, 0x80000002545553A0, v49);
      *(v24 + 22) = 2080;
      v25 = sub_2544D7FAC();
      v27 = v26;
      sub_2544D7868(v15);
      v28 = sub_254502AAC(v25, v27, v49);

      *(v24 + 24) = v28;
      v29 = v37;
      _os_log_impl(&dword_2544A5000, v37, v38, "%s-%s unregistering %s", v24, 0x20u);
      v30 = v39;
      swift_arrayDestroy();
      MEMORY[0x259C0FDF0](v30, -1, -1);
      MEMORY[0x259C0FDF0](v24, -1, -1);
    }

    else
    {

      sub_2544D7868(v15);
    }

    (*(v43 + 8))(v10, v44);
    v32 = v47;
    (*(v45 + 16))(v47, v40, v46);
    v33 = *(v12 + 56);
    v34 = v41;
    v33(v41, 1, 1, v11);
    swift_beginAccess();
    v35 = sub_25454A154();
    sub_2544CE1D4(v34, v32);
    v35(v49, 0);
    swift_endAccess();
    v36 = v48;
    sub_2544D76F8(v17, v48);
    return (v33)(v36, 0, 1, v11);
  }

  else
  {

    return (*(v12 + 56))(v48, 1, 1, v11);
  }
}

uint64_t sub_2544D08F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3D8, &unk_25454ECD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  v6 = sub_254549394();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s12RegistrationVMa(0);
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_25454A2E4();
  v12 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454A2B4();
  sub_2544D78D4(a1, v11, _s12RegistrationVMa);
  v15 = sub_25454A2C4();
  v16 = sub_25454BF94();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = v8;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33 = v1;
    v31 = v19;
    v39[0] = v19;
    *v18 = 136315650;
    *(v18 + 4) = sub_254502AAC(0xD000000000000021, 0x8000000254555370, v39);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_254502AAC(0x5F28747265736E69, 0xEA0000000000293ALL, v39);
    *(v18 + 22) = 2080;
    v20 = sub_2544D7FAC();
    v21 = a1;
    v22 = v5;
    v24 = v23;
    sub_2544D7868(v11);
    v25 = sub_254502AAC(v20, v24, v39);
    v5 = v22;
    a1 = v21;

    *(v18 + 24) = v25;
    _os_log_impl(&dword_2544A5000, v15, v16, "%s-%s registering %s", v18, 0x20u);
    v26 = v31;
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v26, -1, -1);
    v27 = v18;
    v8 = v32;
    MEMORY[0x259C0FDF0](v27, -1, -1);
  }

  else
  {

    sub_2544D7868(v11);
  }

  (*(v12 + 8))(v14, v34);
  (*(v37 + 16))(v8, a1, v38);
  sub_2544D78D4(a1, v5, _s12RegistrationVMa);
  (*(v35 + 56))(v5, 0, 1, v36);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB820, &qword_25454EBB8);
  v28 = sub_25454A154();
  sub_2544CE1D4(v5, v8);
  v28(v39, 0);
  return swift_endAccess();
}

void sub_2544D0D6C(uint64_t a1)
{
  v53 = a1;
  v1 = sub_254549B54();
  v52 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v59 = v43 - v5;
  v6 = sub_254549394();
  v51 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB900, &qword_25454ECF8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v57 = v43 - v15;
  sub_25454BE14();
  v43[1] = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = v53 + 64;
  v17 = 1 << *(v53 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v53 + 64);
  v44 = (v17 + 63) >> 6;
  v45 = v51 + 16;
  v58 = (v52 + 16);
  v60 = (v52 + 32);
  v61 = (v51 + 32);
  v54 = (v51 + 8);
  v55 = (v52 + 8);

  v20 = 0;
  v49 = v4;
  v50 = v1;
  v62 = v6;
  v48 = v9;
  v46 = v14;
  v56 = v16;
  while (v19)
  {
    v21 = v20;
LABEL_17:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = v24 | (v21 << 6);
    v26 = v53;
    v27 = v51;
    (*(v51 + 16))(v47, *(v53 + 48) + *(v51 + 72) * v25, v6);
    v28 = v52;
    v29 = v59;
    v30 = v50;
    (*(v52 + 16))(v59, *(v26 + 56) + *(v52 + 72) * v25, v50);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB908, &qword_25454ED00);
    v32 = *(v31 + 48);
    v14 = v46;
    (*(v27 + 32))();
    v33 = &v14[v32];
    v1 = v30;
    (*(v28 + 32))(v33, v29, v30);
    (*(*(v31 - 8) + 56))(v14, 0, 1, v31);
    v9 = v48;
    v4 = v49;
LABEL_18:
    v34 = v57;
    sub_2544B14E8(v14, v57, &qword_27F5FB900, &qword_25454ECF8);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB908, &qword_25454ED00);
    if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
    {

      return;
    }

    v36 = *(v35 + 48);
    v37 = v34;
    v38 = v34;
    v6 = v62;
    (*v61)(v9, v37, v62);
    (*v60)(v4, v38 + v36, v1);
    sub_2545495D4();
    v39 = sub_2545495C4();
    v40 = v1;
    v41 = sub_2545495E4();

    if (v41)
    {
      (*v58)(v59, v4, v40);
      sub_254549BC4();
    }

    (*v55)(v4, v40);
    (*v54)(v9, v6);
    v1 = v40;
    v16 = v56;
  }

  if (v44 <= v20 + 1)
  {
    v22 = v20 + 1;
  }

  else
  {
    v22 = v44;
  }

  v23 = v22 - 1;
  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v44)
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB908, &qword_25454ED00);
      (*(*(v42 - 8) + 56))(v14, 1, 1, v42);
      v19 = 0;
      v20 = v23;
      goto LABEL_18;
    }

    v19 = *(v16 + 8 * v21);
    ++v20;
    if (v19)
    {
      v20 = v21;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_2544D1380@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v174 = sub_254549B54();
  v169 = *(v174 - 8);
  v4 = MEMORY[0x28223BE20](v174);
  v132 = v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v130 = v127 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB8A8, &qword_25454ECA8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v135 = v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v128 = v127 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v161 = v127 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v129 = v127 - v15;
  MEMORY[0x28223BE20](v14);
  v131 = v127 - v16;
  v149 = sub_254549AC4();
  v17 = *(v149 - 8);
  v18 = MEMORY[0x28223BE20](v149);
  v136 = v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v153 = v127 - v20;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB898, &qword_25454EC98);
  v173 = *(v164 - 8);
  v21 = MEMORY[0x28223BE20](v164);
  v148 = v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v147 = v127 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v170 = v127 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v166 = v127 - v28;
  MEMORY[0x28223BE20](v27);
  v160 = v127 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB8B0, &unk_25454ECB0);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v139 = v127 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v140 = v127 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v138 = v127 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v146 = v127 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = v127 - v39;
  v41 = sub_254549B04();
  v42 = *(v41 - 8);
  v43 = MEMORY[0x28223BE20](v41);
  v145 = v127 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v46 = v127 - v45;
  v163 = v2;
  v47 = sub_2544D2B84(a1);
  v177 = MEMORY[0x277D84F90];
  sub_2544D7B5C(&qword_27F5FB6A8, MEMORY[0x277D15E40], MEMORY[0x277D15E50]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB6B0, &qword_25454E8A0);
  v48 = v169;
  sub_2544AE1F0(&qword_27F5FB6B8, &qword_27F5FB6B0, &qword_25454E8A0, MEMORY[0x277D83970]);
  v150 = v46;
  v152 = v41;
  sub_25454C0E4();
  v49 = *(v17 + 56);
  v151 = v40;
  v144 = v17 + 56;
  v143 = v49;
  v49(v40, 1, 1, v149);
  v50 = v47;
  v51 = *(v47 + 16);
  v162 = v42;
  v159 = v51;
  if (v51)
  {
    v52 = v164;
    v158 = *(v164 + 48);
    v53 = v173;
    v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v127[1] = v50;
    v156 = v50 + v54;
    v157 = OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_deactivatedScenes;
    swift_beginAccess();
    v55 = 0;
    v172 = (v48 + 32);
    v155 = *(v53 + 72);
    v168 = v48 + 8;
    v142 = (v42 + 8);
    v165 = (v17 + 48);
    v137 = (v17 + 8);
    v134 = (v17 + 16);
    v171 = MEMORY[0x277D84F90];
    v56 = v166;
    v141 = (v17 + 32);
    while (1)
    {
      v173 = v55;
      v59 = v160;
      sub_2544AE240(v156 + v155 * v55, v160, &qword_27F5FB898, &qword_25454EC98);
      v60 = *(v59 + v158);
      v61 = *(v52 + 48);
      v62 = *v172;
      (*v172)(v56, v59, v174);
      *(v56 + v61) = v60;
      v63 = *(v163 + v157);
      if (*(v63 + 16))
      {
        sub_25454C3E4();
        if (v60)
        {
          v64 = 0x697463416576696CLL;
        }

        else
        {
          v64 = 7368801;
        }

        if (v60)
        {
          v65 = 0xEC00000079746976;
        }

        else
        {
          v65 = 0xE300000000000000;
        }

        sub_25454BD14();

        v66 = sub_25454C434();
        v67 = -1 << *(v63 + 32);
        v68 = v66 & ~v67;
        if ((*(v63 + 56 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68))
        {
          v69 = ~v67;
          while (1)
          {
            v70 = *(*(v63 + 48) + v68) ? 0x697463416576696CLL : 7368801;
            v71 = *(*(v63 + 48) + v68) ? 0xEC00000079746976 : 0xE300000000000000;
            if (v70 == v64 && v71 == v65)
            {
              break;
            }

            v73 = sub_25454C334();

            if (v73)
            {
              goto LABEL_38;
            }

            v68 = (v68 + 1) & v69;
            if (((*(v63 + 56 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
            {
              goto LABEL_26;
            }
          }

LABEL_38:
          v57 = v161;

          v56 = v166;
          sub_2544AE150(v166, &qword_27F5FB898, &qword_25454EC98);
          v48 = v169;
          v58 = v162;
          v52 = v164;
          goto LABEL_4;
        }

LABEL_26:

        v48 = v169;
        v56 = v166;
      }

      sub_2544AE240(v56, v170, &qword_27F5FB898, &qword_25454EC98);
      v74 = v171;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_2544D38F0(0, v74[2] + 1, 1, v74, &qword_27F5FB8D8, &qword_25454ECC8, MEMORY[0x277D15E70]);
      }

      v76 = v74[2];
      v75 = v74[3];
      if (v76 >= v75 >> 1)
      {
        v74 = sub_2544D38F0((v75 > 1), v76 + 1, 1, v74, &qword_27F5FB8D8, &qword_25454ECC8, MEMORY[0x277D15E70]);
      }

      v74[2] = v76 + 1;
      v77 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v171 = v74;
      v78 = v74 + v77 + *(v48 + 72) * v76;
      v79 = v174;
      v62(v78, v170, v174);
      v80 = v147;
      sub_2544AE240(v56, v147, &qword_27F5FB898, &qword_25454EC98);
      v81 = v145;
      sub_254549B34();
      v167 = *(v48 + 8);
      v167(v80, v79);
      v82 = MEMORY[0x277D15E40];
      sub_2544D7B5C(&qword_27F5FB8B8, MEMORY[0x277D15E40], MEMORY[0x277D15E48]);
      v83 = v56;
      v84 = v150;
      v85 = v152;
      sub_25454BD94();
      v86 = *v142;
      (*v142)(v84, v85);
      sub_25454BD94();
      v177 = v175 | v176;
      sub_2544D7B5C(&qword_27F5FB8C0, v82, MEMORY[0x277D15E58]);
      sub_25454C584();
      v86(v81, v85);
      v87 = v148;
      sub_2544AE240(v83, v148, &qword_27F5FB898, &qword_25454EC98);
      v88 = v146;
      sub_254549B24();
      v89 = *v165;
      v90 = v149;
      if ((*v165)(v88, 1, v149) != 1)
      {
        break;
      }

      v56 = v83;
      sub_2544AE150(v83, &qword_27F5FB898, &qword_25454EC98);
      sub_2544AE150(v88, &qword_27F5FB8B0, &unk_25454ECB0);
      v167(v87, v174);
      v57 = v161;
      v58 = v162;
      v48 = v169;
      v52 = v164;
LABEL_4:
      v55 = v173 + 1;
      if (v173 + 1 == v159)
      {
        v103 = v58;

        v104 = v57;
        v105 = v135;
        v106 = v132;
        v107 = v130;
        v108 = v171;
        goto LABEL_47;
      }
    }

    v154 = *v141;
    v154(v153, v88, v90);
    v167(v87, v174);
    v91 = v151;
    v92 = v139;
    sub_2544AE240(v151, v139, &qword_27F5FB8B0, &unk_25454ECB0);
    v93 = v89(v92, 1, v90);
    v94 = v140;
    if (v93 == 1)
    {
      sub_2544AE150(v166, &qword_27F5FB898, &qword_25454EC98);
      sub_2544AE150(v91, &qword_27F5FB8B0, &unk_25454ECB0);
      v95 = 1;
      v48 = v169;
    }

    else
    {
      v96 = v136;
      v154(v136, v92, v90);
      sub_2544D7B5C(&qword_27F5FB8C8, MEMORY[0x277D15E08], MEMORY[0x277D15E10]);
      v97 = sub_25454BC24();
      sub_2544AE150(v166, &qword_27F5FB898, &qword_25454EC98);
      sub_2544AE150(v91, &qword_27F5FB8B0, &unk_25454ECB0);
      v48 = v169;
      if ((v97 & 1) == 0)
      {
        v94 = v140;
        v98 = v154;
        v154(v140, v96, v90);
        v95 = 0;
        goto LABEL_40;
      }

      (*v137)(v96, v90);
      v94 = v140;
      (*v134)(v140, v153, v90);
      v95 = 0;
    }

    v98 = v154;
LABEL_40:
    v143(v94, v95, 1, v90);
    if (v89(v94, 1, v90) == 1)
    {
      v99 = v94;
      v100 = v138;
      v98(v138, v153, v90);
      v101 = v89(v99, 1, v90);
      v102 = v100;
      v52 = v164;
      if (v101 != 1)
      {
        sub_2544AE150(v99, &qword_27F5FB8B0, &unk_25454ECB0);
      }
    }

    else
    {
      (*v137)(v153, v90);
      v102 = v138;
      v98(v138, v94, v90);
      v52 = v164;
    }

    v143(v102, 0, 1, v90);
    sub_2544B14E8(v102, v151, &qword_27F5FB8B0, &unk_25454ECB0);
    v56 = v166;
    v58 = v162;
    v57 = v161;
    goto LABEL_4;
  }

  v108 = MEMORY[0x277D84F90];
  v106 = v132;
  v107 = v130;
  v104 = v161;
  v103 = v42;
  v105 = v135;
LABEL_47:
  v109 = v129;
  v171 = v108;
  sub_2544D28D4(v108, v129);
  sub_2544B14E8(v109, v104, &qword_27F5FB8A8, &qword_25454ECA8);
  v110 = v48;
  v111 = *(v48 + 48);
  v112 = v174;
  if (v111(v104, 1, v174) == 1)
  {
    sub_2544AE150(v151, &qword_27F5FB8B0, &unk_25454ECB0);
    (*(v103 + 8))(v150, v152);
    v113 = v131;
    (*(v110 + 56))(v131, 1, 1, v112);
  }

  else
  {
    v114 = *(v110 + 32);
    v114(v107, v104, v112);
    (*(v110 + 16))(v106, v107, v112);
    v115 = (*(v110 + 88))(v106, v112);
    if (v115 == *MEMORY[0x277D15E68])
    {
      v116 = v115;
      (*(v110 + 8))(v107, v112);
      (*(v110 + 96))(v106, v112);
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB6A0, &qword_25454ECC0);
      v118 = *(v117 + 48);
      v173 = v118;
      v119 = *(v117 + 64);
      v120 = sub_254549C14();
      v121 = v128;
      (*(*(v120 - 8) + 32))(v128, v106, v120);
      sub_2544B14E8(v151, &v121[v118], &qword_27F5FB8B0, &unk_25454ECB0);
      v122 = v162;
      v123 = v152;
      (*(v162 + 32))(&v121[v119], v150, v152);
      (*(v110 + 104))(v121, v116, v112);
      (*(v110 + 56))(v121, 0, 1, v112);
      (*(v122 + 8))(&v106[v119], v123);
      sub_2544AE150(&v106[v173], &qword_27F5FB8B0, &unk_25454ECB0);
    }

    else
    {
      sub_2544AE150(v151, &qword_27F5FB8B0, &unk_25454ECB0);
      (*(v162 + 8))(v150, v152);
      v124 = v107;
      v121 = v128;
      v114(v128, v124, v112);
      (*(v110 + 56))(v121, 0, 1, v112);
      (*(v110 + 8))(v106, v112);
    }

    v125 = v121;
    v113 = v131;
    sub_2544B14E8(v125, v131, &qword_27F5FB8A8, &qword_25454ECA8);
    v112 = v174;
    v105 = v135;
  }

  sub_2544B14E8(v113, v105, &qword_27F5FB8A8, &qword_25454ECA8);
  if (v111(v105, 1, v112) != 1)
  {
    return (*(v169 + 32))(v133, v105, v112);
  }

  (*(v169 + 104))(v133, *MEMORY[0x277D15E60], v112);
  result = (v111)(v105, 1, v112);
  if (result != 1)
  {
    return sub_2544AE150(v105, &qword_27F5FB8A8, &qword_25454ECA8);
  }

  return result;
}

uint64_t sub_2544D28D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_254549B54();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_2544D7B5C(&qword_27F5FB8D0, MEMORY[0x277D15E70], MEMORY[0x277D15E78]);
        v20 = sub_25454BC14();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_2544D2B84(char *a1)
{
  v94 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB898, &qword_25454EC98);
  v87 = *(v1 - 8);
  v88 = v1;
  MEMORY[0x28223BE20](v1);
  v86 = &v82 - v2;
  v92 = _s12RegistrationVMa(0);
  v95 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v4 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_254549394();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v82 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v82 - v12;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB820, &qword_25454EBB8);
  sub_25454A164();
  v14 = v96;
  swift_endAccess();
  v15 = *(v6 + 16);
  v15(v13, v94, v5);
  v94 = v11;
  v15(v11, v13, v5);
  v91 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15(v91, v13, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  v82 = v6;
  v83 = v5;
  v18 = *(v6 + 32);
  v84 = v17;
  v18(v17 + v16, v13, v5);
  v19 = v14 + 64;
  result = sub_25454C0F4();
  v21 = result;
  v22 = *(v14 + 36);
  v93 = v14 + 72;
  while (1)
  {
    v24 = 1 << *(v14 + 32);
    if (v21 == v24)
    {
      v35 = v22;
      goto LABEL_20;
    }

    if (v21 < 0 || v21 >= v24)
    {
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v25 = v21 >> 6;
    if ((*(v19 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
    {
      goto LABEL_76;
    }

    sub_2544D78D4(*(v14 + 56) + *(v95 + 72) * v21, v4, _s12RegistrationVMa);
    v26 = sub_254549374();
    result = sub_2544D7868(v4);
    v27 = *(v14 + 32);
    if (v26)
    {
      break;
    }

    v23 = 1 << v27;
    if (v21 >= 1 << v27)
    {
      goto LABEL_77;
    }

    v28 = *(v19 + 8 * v25);
    if ((v28 & (1 << v21)) == 0)
    {
      goto LABEL_78;
    }

    if (v22 != *(v14 + 36))
    {
      goto LABEL_79;
    }

    v29 = v28 & (-2 << (v21 & 0x3F));
    if (v29)
    {
      v23 = __clz(__rbit64(v29)) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v25 << 6;
      v31 = v25 + 1;
      v32 = (v93 + 8 * v25);
      while (v31 < (v23 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_2544D78C4(v21, v22, 0);
          v23 = __clz(__rbit64(v33)) + v30;
          goto LABEL_3;
        }
      }

      result = sub_2544D78C4(v21, v22, 0);
    }

LABEL_3:
    v21 = v23;
    if (v22 != *(v14 + 36))
    {
      goto LABEL_80;
    }
  }

  v35 = *(v14 + 36);
  v24 = 1 << v27;
LABEL_20:
  v36 = sub_2544D698C(v21, v22, 0, v24, v35, 0, v14, sub_2544D77E4, v84);
  if (!v36)
  {

    v77 = v83;
    v78 = *(v82 + 8);
    v78(v91, v83);
    v78(v94, v77);
    return MEMORY[0x277D84F90];
  }

  v97 = MEMORY[0x277D84F90];
  v85 = v36;
  sub_2544D5798(0, v36 & ~(v36 >> 63), 0);
  v90 = v97;
  result = sub_25454C0F4();
  v37 = result;
  v38 = *(v14 + 36);
  v93 = v14 + 72;
  while (1)
  {
    v40 = 1 << *(v14 + 32);
    if (v37 == v40)
    {
      break;
    }

    if ((v37 & 0x8000000000000000) != 0 || v37 >= v40)
    {
      goto LABEL_81;
    }

    v41 = v37 >> 6;
    if ((*(v19 + 8 * (v37 >> 6)) & (1 << v37)) == 0)
    {
      goto LABEL_82;
    }

    sub_2544D78D4(*(v14 + 56) + *(v95 + 72) * v37, v4, _s12RegistrationVMa);
    v42 = sub_254549374();
    result = sub_2544D7868(v4);
    if (v42)
    {
      break;
    }

    v39 = 1 << *(v14 + 32);
    if (v37 >= v39)
    {
      goto LABEL_83;
    }

    v43 = *(v19 + 8 * v41);
    if ((v43 & (1 << v37)) == 0)
    {
      goto LABEL_84;
    }

    if (v38 != *(v14 + 36))
    {
      goto LABEL_85;
    }

    v44 = v43 & (-2 << (v37 & 0x3F));
    if (v44)
    {
      v39 = __clz(__rbit64(v44)) | v37 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v45 = v41 << 6;
      v46 = v41 + 1;
      v47 = (v93 + 8 * v41);
      while (v46 < (v39 + 63) >> 6)
      {
        v49 = *v47++;
        v48 = v49;
        v45 += 64;
        ++v46;
        if (v49)
        {
          result = sub_2544D78C4(v37, v38, 0);
          v39 = __clz(__rbit64(v48)) + v45;
          goto LABEL_23;
        }
      }

      result = sub_2544D78C4(v37, v38, 0);
    }

LABEL_23:
    v37 = v39;
    if (v38 != *(v14 + 36))
    {
      goto LABEL_86;
    }
  }

  v50 = v85;
  if (v85 < 0)
  {
LABEL_91:
    __break(1u);
    return result;
  }

  v51 = 0;
  v93 = v14 + 72;
  v52 = v92;
  while (2)
  {
    if (v51 >= v50)
    {
      goto LABEL_87;
    }

    v53 = __OFADD__(v51, 1);
    v54 = v51 + 1;
    if (v53)
    {
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v89 = v54;
    sub_2544D6E54(v37, v38, v14, v4);
    v55 = *(v88 + 48);
    v56 = *(v52 + 24);
    v57 = sub_254549B54();
    v58 = &v4[v56];
    v59 = v52;
    v60 = v86;
    (*(*(v57 - 8) + 16))(v86, v58, v57);
    *(v60 + v55) = v4[*(v59 + 28)];
    sub_2544D7868(v4);
    v61 = v90;
    v97 = v90;
    v63 = *(v90 + 16);
    v62 = *(v90 + 24);
    if (v63 >= v62 >> 1)
    {
      sub_2544D5798((v62 > 1), v63 + 1, 1);
      v61 = v97;
    }

    *(v61 + 16) = v63 + 1;
    v64 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v90 = v61;
    result = sub_2544B14E8(v60, v61 + v64 + *(v87 + 72) * v63, &qword_27F5FB898, &qword_25454EC98);
    if (*(v14 + 36) != v38)
    {
      goto LABEL_89;
    }

    if (v37 == 1 << *(v14 + 32))
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v52 = v92;
    v65 = v94;
    do
    {
      if ((v37 & 0x8000000000000000) != 0 || (v66 = 1 << *(v14 + 32), v37 >= v66))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v67 = v37 >> 6;
      v68 = *(v19 + 8 * (v37 >> 6));
      if (((v68 >> v37) & 1) == 0)
      {
        goto LABEL_70;
      }

      if (*(v14 + 36) != v38)
      {
        goto LABEL_71;
      }

      v69 = v68 & (-2 << (v37 & 0x3F));
      if (v69)
      {
        v37 = __clz(__rbit64(v69)) | v37 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v70 = v67 << 6;
        v71 = v67 + 1;
        v72 = (v93 + 8 * v67);
        while (v71 < (v66 + 63) >> 6)
        {
          v74 = *v72++;
          v73 = v74;
          v70 += 64;
          ++v71;
          if (v74)
          {
            result = sub_2544D78C4(v37, v38, 0);
            v37 = __clz(__rbit64(v73)) + v70;
            goto LABEL_59;
          }
        }

        result = sub_2544D78C4(v37, v38, 0);
        v37 = v66;
LABEL_59:
        v65 = v94;
      }

      if (v38 != *(v14 + 36))
      {
        goto LABEL_72;
      }

      v75 = 1 << *(v14 + 32);
      if (v37 == v75)
      {
        break;
      }

      if ((v37 & 0x8000000000000000) != 0 || v37 >= v75)
      {
        goto LABEL_73;
      }

      if (((*(v19 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
      {
        goto LABEL_74;
      }

      sub_2544D78D4(*(v14 + 56) + *(v95 + 72) * v37, v4, _s12RegistrationVMa);
      v76 = sub_254549374();
      result = sub_2544D7868(v4);
    }

    while ((v76 & 1) == 0);
    v50 = v85;
    v51 = v89;
    if (v89 != v85)
    {
      continue;
    }

    break;
  }

  v79 = *(v82 + 8);
  v80 = v65;
  v81 = v83;
  v79(v91, v83);
  v79(v80, v81);
  return v90;
}

void sub_2544D3590(uint64_t a1)
{
  sub_2544D369C(319);
  if (v1 <= 0x3F)
  {
    sub_2544D3714(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2544D369C(uint64_t a1)
{
  if (!qword_27F5FB838)
  {
    type metadata accessor for CameraViewRegistrar.Action(255);
    v1 = sub_25454BE84();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5FB838);
    }
  }
}

void sub_2544D3714(uint64_t a1)
{
  if (!qword_27F5FB840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB848, &qword_25454EC38);
    v1 = sub_25454A174();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5FB840);
    }
  }
}

uint64_t sub_2544D3778()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB820, &qword_25454EBB8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void sub_2544D37A8(uint64_t a1)
{
  _s12RegistrationVMa(319);
  if (v1 <= 0x3F)
  {
    sub_2544D381C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2544D381C(uint64_t a1)
{
  if (!qword_27F5FB860)
  {
    _s12RegistrationVMa(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F5FB860);
    }
  }
}

uint64_t sub_2544D3888()
{
  type metadata accessor for CameraViewRegistrar(0);
  v0 = swift_allocObject();
  result = sub_2544CE3E0();
  qword_27F604AD8 = v0;
  return result;
}

void *sub_2544D38F0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2544D3ACC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB930, &qword_25454ED28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2544D3BD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB918, &qword_25454ED10);
  v36 = v4;
  v6 = sub_25454C204();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_25454C3E4();
      sub_25454BD14();
      v26 = sub_25454C434();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_2544D3E7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB920, &qword_25454ED18);
  v35 = v4;
  v6 = sub_25454C204();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_25454C3E4();
      sub_25454BD14();
      v25 = sub_25454C434();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_2544D4124(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = _s12RegistrationVMa(0);
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254549394();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB890, &qword_25454EC90);
  v44 = v4;
  v11 = sub_25454C204();
  v12 = v11;
  if (*(v10 + 16))
  {
    v39 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v8 + 16);
    v41 = v8;
    v45 = (v8 + 32);
    v19 = v11 + 64;
    v42 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v46 = *(v8 + 72);
      v26 = v25 + v46 * v24;
      if (v44)
      {
        (*v45)(v47, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_2544D76F8(v27 + v28 * v24, v48);
      }

      else
      {
        (*v40)(v47, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_2544D78D4(v29 + v28 * v24, v48, _s12RegistrationVMa);
      }

      sub_2544D7B5C(&qword_27F5FB028, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v30 = sub_25454BBE4();
      v31 = -1 << *(v12 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v45)((*(v12 + 48) + v46 * v20), v47, v7);
      sub_2544D76F8(v48, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v41;
      v10 = v42;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_2544D459C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v53 = sub_254549B54();
  v5 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254549394();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v54 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB8F8, &qword_25454ECF0);
  v48 = v4;
  v11 = sub_25454C204();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = (v14 + 16);
    v45 = v14;
    v42 = v2;
    v43 = v5 + 16;
    v46 = v10;
    v47 = v5;
    v49 = (v5 + 32);
    v50 = (v14 + 32);
    v20 = v11 + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v51 = *(v21 + 72);
      v28 = v27 + v51 * v26;
      if (v48)
      {
        (*v50)(v54, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 32))(v52, v29 + v30 * v26, v53);
      }

      else
      {
        (*v44)(v54, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 16))(v52, v31 + v30 * v26, v53);
      }

      sub_2544D7B5C(&qword_27F5FB028, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v32 = sub_25454BBE4();
      v33 = -1 << *(v12 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v50)((*(v12 + 48) + v51 * v22), v54, v7);
      (*v49)(*(v12 + 56) + v30 * v22, v52, v53);
      ++*(v12 + 16);
      v21 = v45;
      v10 = v46;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_2544D4A44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB928, &qword_25454ED20);
  v31 = v4;
  v6 = sub_25454C204();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_25454C3E4();
      MEMORY[0x259C0F4F0](v20);
      v22 = sub_25454C434();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_2544D4CD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB918, &qword_25454ED10);
  v2 = *v0;
  v3 = sub_25454C1F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_2544D4E40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB920, &qword_25454ED18);
  v2 = *v0;
  v3 = sub_25454C1F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_2544D4FB0()
{
  v1 = v0;
  v2 = _s12RegistrationVMa(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_254549394();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB890, &qword_25454EC90);
  v5 = *v0;
  v6 = sub_25454C1F4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_2544D78D4(*(v5 + 56) + v26, v35, _s12RegistrationVMa);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        sub_2544D76F8(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_2544D52C8()
{
  v1 = v0;
  v41 = sub_254549B54();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_254549394();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB8F8, &qword_25454ECF0);
  v4 = *v0;
  v5 = sub_25454C1F4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_2544D561C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB928, &qword_25454ED20);
  v2 = *v0;
  v3 = sub_25454C1F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_2544D5778(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2544D57D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2544D5798(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2544D58DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2544D57B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2544D5ACC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2544D57D8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB940, &qword_25454ED38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2544D58DC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB8A0, &qword_25454ECA0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB898, &qword_25454EC98) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB898, &qword_25454EC98) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2544D5ACC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB930, &qword_25454ED28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2544D5BD8(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  sub_25454C3E4();
  if (a1)
  {
    v5 = 0x697463416576696CLL;
  }

  else
  {
    v5 = 7368801;
  }

  if (a1)
  {
    v6 = 0xEC00000079746976;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  sub_25454BD14();

  v7 = sub_25454C434();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v4 + 48) + v9) ? 0x697463416576696CLL : 7368801;
      v12 = *(*(v4 + 48) + v9) ? 0xEC00000079746976 : 0xE300000000000000;
      if (v11 == v5 && v12 == v6)
      {
        break;
      }

      v14 = sub_25454C334();

      if (v14)
      {
        goto LABEL_23;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v17;
    v19 = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2544D6404();
      v16 = v19;
    }

    *a2 = *(*(v16 + 48) + v9);
    sub_2544D67A0(v9);
    *v17 = v19;
  }

  else
  {
LABEL_21:
    *a2 = 2;
  }
}

uint64_t sub_2544D5DA4(_BYTE *a1, char a2)
{
  v4 = *v2;
  sub_25454C3E4();
  v18 = a2;
  if (a2)
  {
    v5 = 0x697463416576696CLL;
  }

  else
  {
    v5 = 7368801;
  }

  if (a2)
  {
    v6 = 0xEC00000079746976;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  sub_25454BD14();

  v7 = sub_25454C434();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v4 + 48) + v9) ? 0x697463416576696CLL : 7368801;
      v12 = *(*(v4 + 48) + v9) ? 0xEC00000079746976 : 0xE300000000000000;
      if (v11 == v5 && v12 == v6)
      {
        break;
      }

      v14 = sub_25454C334();

      if (v14)
      {
        goto LABEL_23;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    v16 = *(*(v4 + 48) + v9);
  }

  else
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v16 = v18 & 1;
    sub_2544D61F8(v18 & 1, v9, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    result = 1;
  }

  *a1 = v16;
  return result;
}

void sub_2544D5F6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB8E8, &qword_25454ECE0);
  v4 = sub_25454C124();
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
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_25454C3E4();
      sub_25454BD14();

      v18 = sub_25454C434();
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
      *(*(v5 + 48) + v13) = v17;
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

void sub_2544D61F8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v23 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    sub_2544D5F6C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2544D6404();
      goto LABEL_25;
    }

    sub_2544D6544(v6 + 1);
  }

  v8 = 7368801;
  v9 = *v3;
  sub_25454C3E4();
  if (v5)
  {
    v8 = 0x697463416576696CLL;
    v10 = 0xEC00000079746976;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  sub_25454BD14();

  v11 = sub_25454C434();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + a2) ? 0x697463416576696CLL : 7368801;
      v15 = *(*(v9 + 48) + a2) ? 0xEC00000079746976 : 0xE300000000000000;
      if (v14 == v8 && v15 == v10)
      {
        goto LABEL_28;
      }

      v17 = sub_25454C334();

      if (v17)
      {
        goto LABEL_29;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_25:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v23 & 1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_28:

LABEL_29:
  sub_25454C344();
  __break(1u);
}

void sub_2544D6404()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB8E8, &qword_25454ECE0);
  v2 = *v0;
  v3 = sub_25454C114();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_2544D6544(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB8E8, &qword_25454ECE0);
  v4 = sub_25454C124();
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_25454C3E4();
      sub_25454BD14();

      v17 = sub_25454C434();
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
      *(*(v5 + 48) + v12) = v16;
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

void sub_2544D67A0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_25454C104();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_25454C3E4();
        sub_25454BD14();

        v10 = sub_25454C434() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }
}

uint64_t sub_2544D698C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t (*a8)(void), uint64_t a9)
{
  v12 = a5;
  result = sub_2544D6D3C(a1, a2, a3 & 1, a4, a5, a6 & 1, a7);
  if (a6 & 1) != 0 || (a3)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  if (v12 != a2)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a4 >= a1)
  {
    result = a1;
  }

  else
  {
    result = a4;
  }

  if (a4 >= a1)
  {
    v18 = a2;
  }

  else
  {
    v18 = v12;
  }

  if (a4 >= a1)
  {
    v19 = a4;
  }

  else
  {
    v19 = a1;
  }

  if (a4 >= a1)
  {
    v20 = 1;
  }

  else
  {
    v20 = -1;
  }

  if (a4 < a1)
  {
    LODWORD(v12) = a2;
  }

  v23 = result;
  v24 = v18;
  v25 = 0;
  if (a1 != a4)
  {
    v22 = 0;
    while (1)
    {
      v21 = v22 + v20;
      if (__OFADD__(v22, v20))
      {
        break;
      }

      result = sub_2544D6AA4(&v23, a7, a8, a9);
      if (v25)
      {
        goto LABEL_29;
      }

      if (v24 != v12)
      {
        goto LABEL_27;
      }

      v22 += v20;
      if (v23 == v19)
      {
        return v21;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_2544D78C4(result, v18, 0);
  return 0;
}

uint64_t sub_2544D6AA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v33 = a4;
  v7 = _s12RegistrationVMa(0);
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    goto LABEL_32;
  }

  v12 = *(a1 + 8);
  if (*(a2 + 36) != v12)
  {
    goto LABEL_30;
  }

  v13 = *a1;
  if (*a1 != 1 << *(a2 + 32))
  {
    v30 = a1;
    v14 = a2 + 64;
    v15 = v12;
    v31 = a2 + 72;
    v32 = v12;
    while ((v13 & 0x8000000000000000) == 0)
    {
      v16 = 1 << *(a2 + 32);
      if (v13 >= v16)
      {
        break;
      }

      v17 = v13 >> 6;
      v18 = *(v14 + 8 * (v13 >> 6));
      if (((v18 >> v13) & 1) == 0)
      {
        goto LABEL_25;
      }

      if (*(a2 + 36) != v12)
      {
        goto LABEL_26;
      }

      v19 = v18 & (-2 << (v13 & 0x3F));
      if (v19)
      {
        v13 = __clz(__rbit64(v19)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v8;
        v21 = a3;
        v22 = v17 << 6;
        v23 = v17 + 1;
        v24 = (v31 + 8 * v17);
        while (v23 < (v16 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_2544D78C4(v13, v12, 0);
            v13 = __clz(__rbit64(v25)) + v22;
            goto LABEL_16;
          }
        }

        result = sub_2544D78C4(v13, v12, 0);
        v13 = v16;
LABEL_16:
        a3 = v21;
        v8 = v20;
        v15 = v32;
      }

      if (*(a2 + 36) != v12)
      {
        goto LABEL_27;
      }

      v27 = 1 << *(a2 + 32);
      if (v13 == v27)
      {
        goto LABEL_23;
      }

      if ((v13 & 0x8000000000000000) != 0 || v13 >= v27)
      {
        goto LABEL_28;
      }

      if (((*(v14 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_29;
      }

      sub_2544D78D4(*(a2 + 56) + *(v8 + 72) * v13, v11, _s12RegistrationVMa);
      v28 = a3(v11);
      result = sub_2544D7868(v11);
      v12 = v15;
      if (v28)
      {
LABEL_23:
        v29 = v30;
        *v30 = v13;
        v29[1] = v15;
        *(v29 + 16) = 0;
        return result;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2544D6D3C(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_30;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a5 != a2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      if (a5 != a2)
      {
        goto LABEL_26;
      }

      v9 = v7 >> 6;
      v10 = *(a7 + 64 + 8 * (v7 >> 6));
      if ((v10 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 72 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_21;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_21:
      if (v7 == a4)
      {
        return result;
      }

      a2 = a5;
      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return 0;
}

uint64_t sub_2544D6E54@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v6 = *(a3 + 56);
    v7 = _s12RegistrationVMa(0);
    return sub_2544D78D4(v6 + *(*(v7 - 8) + 72) * v4, a4, _s12RegistrationVMa);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_2544D6F04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB920, &qword_25454ED18);
    v3 = sub_25454C214();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2544DA948(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2544D7008(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB918, &qword_25454ED10);
    v3 = sub_25454C214();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2544DA948(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2544D710C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB948, &qword_25454ED40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB950, &qword_25454ED48);
    v7 = sub_25454C214();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2544AE240(v9, v5, &qword_27F5FB948, &qword_25454ED40);
      result = sub_2544DA750(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_254549394();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_2545497D4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2544D732C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB888, &qword_25454EC88);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB890, &qword_25454EC90);
    v7 = sub_25454C214();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2544AE240(v9, v5, &qword_27F5FB888, &qword_25454EC88);
      result = sub_2544DA750(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_254549394();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = _s12RegistrationVMa(0);
      result = sub_2544D76F8(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2544D7534()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2544D7574(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2544AE3EC;

  return sub_2544CE938(a1, v4, v5, v6);
}

uint64_t sub_2544D7628()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2544D7660(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2544AE660;

  return sub_2544CEAD4(a1, v1);
}

uint64_t sub_2544D76F8(uint64_t a1, uint64_t a2)
{
  v4 = _s12RegistrationVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544D775C()
{
  v1 = sub_254549394();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2544D77E4(uint64_t a1)
{
  sub_254549394();
  _s12RegistrationVMa(0);

  return sub_254549374();
}

uint64_t sub_2544D7868(uint64_t a1)
{
  v2 = _s12RegistrationVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2544D78C4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2544D78D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2544D793C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB910, &qword_25454ED08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB8F8, &qword_25454ECF0);
    v7 = sub_25454C214();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2544AE240(v9, v5, &qword_27F5FB910, &qword_25454ED08);
      result = sub_2544DA750(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_254549394();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_254549B54();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2544D7B5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2544D7BA4()
{
  result = qword_27F5FB8E0;
  if (!qword_27F5FB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB8E0);
  }

  return result;
}

void *sub_2544D7BF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB928, &qword_25454ED20);
  v3 = sub_25454C214();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_2544DA9C0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_2544DA9C0(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2544D7D08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x636961736F6DLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x736C6961746564;
    }

    else
    {
      v4 = 0x7075727265746E69;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEC0000006E6F6974;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1684632167;
    }

    else
    {
      v4 = 0x636961736F6DLL;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x736C6961746564;
  if (a2 != 2)
  {
    v8 = 0x7075727265746E69;
    v7 = 0xEC0000006E6F6974;
  }

  if (a2)
  {
    v2 = 1684632167;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25454C334();
  }

  return v11 & 1;
}

uint64_t sub_2544D7E48(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x534F64615069;
    }

    else
    {
      v4 = 5459817;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x534F63616DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x534F726568746FLL;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1397716596;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x534F64615069;
    }

    else
    {
      v9 = 5459817;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x534F726568746FLL;
    if (a2 != 3)
    {
      v6 = 1397716596;
      v5 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x534F63616DLL;
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
    v10 = sub_25454C334();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2544D7FAC()
{
  v1 = _s12RegistrationVMa(0);
  if (*(v0 + *(v1 + 32)) == 4)
  {
    v2 = 7104878;
    v3 = 0xE300000000000000;
  }

  else
  {
    sub_25454C1D4();
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  sub_25454C154();
  MEMORY[0x259C0EE40](540697705, 0xE400000000000000);
  v4 = sub_254549364();
  MEMORY[0x259C0EE40](v4);

  MEMORY[0x259C0EE40](0x6172656D6163202CLL, 0xEC000000203A4449);
  v5 = sub_254549364();
  MEMORY[0x259C0EE40](v5);

  MEMORY[0x259C0EE40](0x203A65646F6D202CLL, 0xE800000000000000);
  sub_254549B54();
  sub_2544D8BD8();
  v6 = sub_25454C304();
  MEMORY[0x259C0EE40](v6);

  MEMORY[0x259C0EE40](0x3A656E656373202CLL, 0xE900000000000020);
  if (*(v0 + *(v1 + 28)))
  {
    v7 = 0x697463416576696CLL;
  }

  else
  {
    v7 = 7368801;
  }

  if (*(v0 + *(v1 + 28)))
  {
    v8 = 0xEC00000079746976;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  MEMORY[0x259C0EE40](v7, v8);

  MEMORY[0x259C0EE40](0x697461636F6C202CLL, 0xEC000000203A6E6FLL);
  MEMORY[0x259C0EE40](v2, v3);

  return 0;
}

uint64_t CameraViewRegistrar.Location.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_25454C224();

  v6 = 4;
  if (v4 < 4)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t CameraViewRegistrar.Location.rawValue.getter()
{
  v1 = 0x636961736F6DLL;
  v2 = 0x736C6961746564;
  if (*v0 != 2)
  {
    v2 = 0x7075727265746E69;
  }

  if (*v0)
  {
    v1 = 1684632167;
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

unint64_t sub_2544D82CC()
{
  result = qword_27F5FB958;
  if (!qword_27F5FB958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB958);
  }

  return result;
}

uint64_t sub_2544D8320()
{
  sub_25454C3E4();
  sub_25454BD14();

  return sub_25454C434();
}

uint64_t sub_2544D83E0(uint64_t a1)
{
  sub_25454BD14();
}

uint64_t sub_2544D848C(uint64_t a1)
{
  sub_25454C3E4();
  sub_25454BD14();

  return sub_25454C434();
}

void sub_2544D8554(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x636961736F6DLL;
  v4 = 0xE700000000000000;
  v5 = 0x736C6961746564;
  if (*v1 != 2)
  {
    v5 = 0x7075727265746E69;
    v4 = 0xEC0000006E6F6974;
  }

  if (*v1)
  {
    v3 = 1684632167;
    v2 = 0xE400000000000000;
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

uint64_t _s8LocationOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8LocationOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2544D8734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_254549394();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_254549B54();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 2)
      {
        return v14 - 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_2544D8850(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_254549394();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_254549B54();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t _s12RegistrationVMa(uint64_t a1)
{
  result = qword_27F5FB960;
  if (!qword_27F5FB960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2544D89A4(uint64_t a1)
{
  sub_254549394();
  if (v1 <= 0x3F)
  {
    sub_254549B54();
    if (v2 <= 0x3F)
    {
      sub_2544D8A48();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2544D8A48()
{
  if (!qword_27F5FB4B8)
  {
    v0 = sub_25454C054();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FB4B8);
    }
  }
}

uint64_t sub_2544D8A98(uint64_t a1, uint64_t a2)
{
  if ((sub_254549374() & 1) == 0)
  {
    return 0;
  }

  v4 = _s12RegistrationVMa(0);
  if ((sub_254549374() & 1) == 0 || (MEMORY[0x259C0CC40](a1 + v4[6], a2 + v4[6]) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    v8 = 0x697463416576696CLL;
  }

  else
  {
    v8 = 7368801;
  }

  if (v6)
  {
    v9 = 0xEC00000079746976;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  if (v7)
  {
    v10 = 0x697463416576696CLL;
  }

  else
  {
    v10 = 7368801;
  }

  if (v7)
  {
    v11 = 0xEC00000079746976;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  if (v8 == v10 && v9 == v11)
  {

LABEL_23:
    v14 = v4[8];
    v15 = *(a1 + v14);
    v16 = *(a2 + v14);
    if (v15 == 4)
    {
      if (v16 != 4)
      {
        return 0;
      }
    }

    else if (v16 == 4 || (sub_2544D7D08(v15, v16) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  v13 = sub_25454C334();

  if (v13)
  {
    goto LABEL_23;
  }

  return 0;
}

unint64_t sub_2544D8BD8()
{
  result = qword_27F5FB970;
  if (!qword_27F5FB970)
  {
    sub_254549B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB970);
  }

  return result;
}

uint64_t EmptyNearbyAccessoriesModifier.init(cameraProfileID:showToggleableAccessoriesOnly:isPresented:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_2544D8C78(a1);
}

uint64_t sub_2544D8C78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB018, &qword_25454EE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EmptyNearbyAccessoriesModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB978, &qword_25454EE78);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_2544D8D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_2544D8C78(a1);
}

unint64_t sub_2544D8DA0(uint64_t a1)
{
  result = sub_2544D8DC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2544D8DC8()
{
  result = qword_27F5FB980;
  if (!qword_27F5FB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB980);
  }

  return result;
}

uint64_t sub_2544D8E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB978, &qword_25454EE78);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_2544D8ED8()
{
  result = qword_27F5FB988;
  if (!qword_27F5FB988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB978, &qword_25454EE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB988);
  }

  return result;
}

uint64_t SnapshotFormatStyle.discreteInput(after:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_25454C544();
  if (v2 > 0x12B)
  {
    if (v2 - 300 >= 0xCE4)
    {
      v5 = v2 - 3600;
      result = sub_25454C544();
      v4 = 3600;
      if (v5 >= 0x14370)
      {
        v4 = 86400;
      }
    }

    else
    {
      result = sub_25454C544();
      v4 = 300;
    }
  }

  else
  {
    result = sub_25454C544();
    v4 = 60;
  }

  v6 = result / v4 + 1;
  if ((v6 * v4) >> 64 == (v6 * v4) >> 63)
  {
    return 1000000000000000000 * v6 * v4;
  }

  __break(1u);
  return result;
}

uint64_t SnapshotFormatStyle.format(_:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2545493C4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_25454BC64();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_25454C544();
  if (v4 >= 0x12C)
  {
    if (v4 - 300 < 0xCE4)
    {
      v7 = 5 * (sub_25454C544() / 300);
      v8 = 1;
LABEL_15:
      sub_2544D92A4(v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB990, "ܡ");
      v12 = swift_allocObject();
      v13 = MEMORY[0x277D84A28];
      *(v12 + 16) = xmmword_25454D8F0;
      v14 = MEMORY[0x277D84A90];
      *(v12 + 56) = v13;
      *(v12 + 64) = v14;
      *(v12 + 32) = v7;
      v15 = sub_25454BC94();

      return v15;
    }

    v11 = v4 - 3600;
    v9 = sub_25454C544();
    if (v11 < 0x14370)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }

    v10 = 86400;
    if (v11 < 0x14370)
    {
      v10 = 3600;
    }

LABEL_14:
    v7 = v9 / v10;
    goto LABEL_15;
  }

  if (sub_25454C544() >= 0x3C)
  {
    v9 = sub_25454C544();
    v8 = 0;
    v10 = 60;
    goto LABEL_14;
  }

  sub_25454BC54();
  sub_2544C56A4();
  if (!sub_25454C024())
  {
    v5 = [objc_opt_self() mainBundle];
  }

  sub_2545493B4();
  return sub_25454BCA4();
}

uint64_t sub_2544D92A4(unsigned __int8 a1)
{
  v2 = sub_2545493C4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_25454BC64();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  if (a1 >= 2u)
  {
    if (a1 == 2)
    {
      sub_25454BC54();
      sub_2544C56A4();
      if (!sub_25454C024())
      {
        v7 = [objc_opt_self() mainBundle];
      }
    }

    else
    {
      sub_25454BC54();
      sub_2544C56A4();
      if (!sub_25454C024())
      {
        v8 = [objc_opt_self() mainBundle];
      }
    }
  }

  else
  {
    sub_25454BC54();
    sub_2544C56A4();
    if (!sub_25454C024())
    {
      v6 = [objc_opt_self() mainBundle];
    }
  }

  sub_2545493B4();
  return sub_25454BCA4();
}

uint64_t sub_2544D9534@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2544D9570(uint64_t a1)
{
  v2 = sub_2544D9A04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2544D95AC(uint64_t a1)
{
  v2 = sub_2544D9A04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SnapshotFormatStyle.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB998, &qword_25454EF38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2544D9A04();
  sub_25454C454();
  return (*(v3 + 8))(v5, v2);
}

void sub_2544D9760(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_2544D9770@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SnapshotFormatStyle.discreteInput(after:)(*a1, a1[1]);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_2544D97D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  result = a4(*a1, a1[1], a2, a3);
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8 & 1;
  return result;
}

uint64_t sub_2544D981C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SnapshotFormatStyle.format(_:)(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2544D9878(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB998, &qword_25454EF38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2544D9A04();
  sub_25454C454();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2544D9A04()
{
  result = qword_27F5FB9A0;
  if (!qword_27F5FB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB9A0);
  }

  return result;
}

unint64_t sub_2544D9A5C()
{
  result = qword_27F5FB9A8;
  if (!qword_27F5FB9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB9A8);
  }

  return result;
}

unint64_t sub_2544D9AB4()
{
  result = qword_27F5FB9B0;
  if (!qword_27F5FB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB9B0);
  }

  return result;
}

unint64_t sub_2544D9B0C()
{
  result = qword_27F5FB9B8;
  if (!qword_27F5FB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB9B8);
  }

  return result;
}