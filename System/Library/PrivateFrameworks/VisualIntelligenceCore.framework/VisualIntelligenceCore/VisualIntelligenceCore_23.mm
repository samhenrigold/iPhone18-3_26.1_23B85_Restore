uint64_t sub_1D89834AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v2 += 8;
    v4 = sub_1D8B16B50();
    v6 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D87C8284(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_1D87C8284((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v8 + 1;
    v9 = &v3[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v6;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
  sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
  v10 = sub_1D8B15810();

  return v10;
}

uint64_t Array<A>.urlParameterValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8B15DB0();
  swift_getWitnessTable();
  v3 = sub_1D8B16160();
  result = 0;
  if ((v3 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](0);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getWitnessTable();
    sub_1D8B15BC0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
    sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
    v6 = sub_1D8B15810();

    return v6;
  }

  return result;
}

uint64_t Optional<A>.urlParameterValue.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v12, a1);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v4 + 8))(v7, a1);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v14 = (*(a2 + 24))(v8, a2);
    (*(v9 + 8))(v11, v8);
    return v14;
  }
}

uint64_t sub_1D8983AA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xE900000000000072;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5664657070617277 && a2 == 0xEC00000065756C61)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D8983BB8(char a1)
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](a1 & 1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8983C00(char a1)
{
  if (a1)
  {
    return 0x5664657070617277;
  }

  else
  {
    return 0x6574656D61726170;
  }
}

uint64_t sub_1D8983C78(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D8983B90(v3, *v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8983CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8983AA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8983D00@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1D8986B98();
  *a2 = result;
  return result;
}

uint64_t sub_1D8983D2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D8983D80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t URLParameter.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v13[0] = *(a2 + 24);
  v13[1] = v6;
  type metadata accessor for URLParameter.CodingKeys(255, v6, v13[0], a4);
  swift_getWitnessTable();
  v7 = sub_1D8B16B10();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8B16DD0();
  v15 = 0;
  v11 = v13[3];
  sub_1D8B16A90();
  if (!v11)
  {
    v14 = 1;
    sub_1D8B16AE0();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t URLParameter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v28 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URLParameter.CodingKeys(255, v8, v9, v10);
  swift_getWitnessTable();
  v33 = sub_1D8B16A30();
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v12 = &v25 - v11;
  v32 = a3;
  v14 = type metadata accessor for URLParameter(0, a2, a3, v13);
  v27 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v25 - v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v34;
  sub_1D8B16DB0();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = a1;
  v26 = v14;
  v18 = v30;
  v19 = v31;
  v36 = 0;
  v20 = v16;
  *v16 = sub_1D8B169C0();
  v16[1] = v21;
  v25 = v21;
  v35 = 1;
  sub_1D8B16A10();
  (*(v18 + 8))(v12, v33);
  v22 = v26;
  (*(v28 + 32))(v16 + *(v26 + 36), v19, a2);
  v23 = v27;
  (*(v27 + 16))(v29, v20, v22);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return (*(v23 + 8))(v20, v22);
}

unint64_t sub_1D8984388()
{
  result = qword_1ECA661B0;
  if (!qword_1ECA661B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661B0);
  }

  return result;
}

unint64_t sub_1D89843E0()
{
  result = qword_1ECA661B8;
  if (!qword_1ECA661B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661B8);
  }

  return result;
}

unint64_t sub_1D8984460()
{
  result = qword_1ECA661C0;
  if (!qword_1ECA661C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661C0);
  }

  return result;
}

unint64_t sub_1D89844B4()
{
  result = qword_1ECA661C8;
  if (!qword_1ECA661C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661C8);
  }

  return result;
}

unint64_t sub_1D898450C()
{
  result = qword_1ECA661D0;
  if (!qword_1ECA661D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661D0);
  }

  return result;
}

uint64_t sub_1D898458C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D89845C8()
{
  result = qword_1ECA661D8;
  if (!qword_1ECA661D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661D8);
  }

  return result;
}

unint64_t sub_1D898461C()
{
  result = qword_1ECA661E0;
  if (!qword_1ECA661E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661E0);
  }

  return result;
}

unint64_t sub_1D8984674()
{
  result = qword_1ECA661E8;
  if (!qword_1ECA661E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661E8);
  }

  return result;
}

unint64_t sub_1D89846F4()
{
  result = qword_1ECA661F0;
  if (!qword_1ECA661F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661F0);
  }

  return result;
}

unint64_t sub_1D8984748()
{
  result = qword_1ECA661F8;
  if (!qword_1ECA661F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661F8);
  }

  return result;
}

unint64_t sub_1D89847A0()
{
  result = qword_1ECA66200;
  if (!qword_1ECA66200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66200);
  }

  return result;
}

unint64_t sub_1D89847F8()
{
  result = qword_1ECA66208;
  if (!qword_1ECA66208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66208);
  }

  return result;
}

unint64_t sub_1D8984878()
{
  result = qword_1ECA66210;
  if (!qword_1ECA66210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66210);
  }

  return result;
}

unint64_t sub_1D89848CC()
{
  result = qword_1ECA66218;
  if (!qword_1ECA66218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66218);
  }

  return result;
}

unint64_t sub_1D8984920()
{
  result = qword_1ECA66220;
  if (!qword_1ECA66220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66220);
  }

  return result;
}

unint64_t sub_1D8984978()
{
  result = qword_1ECA66228;
  if (!qword_1ECA66228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66228);
  }

  return result;
}

unint64_t sub_1D89849D0()
{
  result = qword_1ECA66230;
  if (!qword_1ECA66230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66230);
  }

  return result;
}

unint64_t sub_1D8984A50()
{
  result = qword_1ECA66238;
  if (!qword_1ECA66238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66238);
  }

  return result;
}

unint64_t sub_1D8984AA4()
{
  result = qword_1ECA66240;
  if (!qword_1ECA66240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66240);
  }

  return result;
}

unint64_t sub_1D8984AFC()
{
  result = qword_1ECA66248;
  if (!qword_1ECA66248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66248);
  }

  return result;
}

uint64_t sub_1D8984B54(uint64_t a1)
{
  v2 = MEMORY[0x1E6969530];
  *(a1 + 8) = sub_1D8985658(&qword_1ECA66250, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  result = sub_1D8985658(&qword_1ECA66258, v2, MEMORY[0x1E6969538]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D8984BD8(uint64_t a1)
{
  v2 = MEMORY[0x1E6968FB0];
  *(a1 + 8) = sub_1D8985658(&qword_1ECA66260, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  result = sub_1D8985658(&qword_1ECA66268, v2, MEMORY[0x1E6968FB8]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D8984CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void sub_1D8984D4C(uint64_t a1)
{
  sub_1D8984FD8(319);
  if (v1 <= 0x3F)
  {
    sub_1D898507C();
    if (v2 <= 0x3F)
    {
      sub_1D89850CC(319);
      if (v3 <= 0x3F)
      {
        sub_1D89851C4(319);
        if (v4 <= 0x3F)
        {
          sub_1D89852BC(319);
          if (v5 <= 0x3F)
          {
            sub_1D89853DC(319, &qword_1ECA66300, &qword_1ECA631A8, &qword_1D8B1E6D0, sub_1D898544C);
            if (v6 <= 0x3F)
            {
              sub_1D8985500(319);
              if (v7 <= 0x3F)
              {
                sub_1D89853DC(319, &qword_1ECA66348, &qword_1ECA66350, &unk_1D8B2E330, sub_1D89856A0);
                if (v8 <= 0x3F)
                {
                  sub_1D89853DC(319, &qword_1ECA66368, &qword_1ECA66370, &unk_1D8B3F600, sub_1D89857B0);
                  if (v9 <= 0x3F)
                  {
                    sub_1D898582C(319);
                    if (v10 <= 0x3F)
                    {
                      sub_1D89853DC(319, &qword_1ECA663B0, &qword_1ECA663B8, &qword_1D8B2E350, sub_1D8985A24);
                      if (v11 <= 0x3F)
                      {
                        sub_1D89853DC(319, &qword_1ECA663D0, &qword_1ECA663D8, &qword_1D8B2E358, sub_1D8985AFC);
                        if (v12 <= 0x3F)
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

void sub_1D8984FD8(uint64_t a1)
{
  if (!qword_1ECA66280)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA63660, &qword_1D8B1F620);
    v3 = sub_1D8985750(&qword_1ECA66288, &qword_1ECA63660, &qword_1D8B1F620, &protocol conformance descriptor for <A> A?);
    v5 = type metadata accessor for URLParameter(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ECA66280);
    }
  }
}

void sub_1D898507C()
{
  if (!qword_1ECA66290)
  {
    v0 = sub_1D8B16470();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA66290);
    }
  }
}

void sub_1D89850CC(uint64_t a1)
{
  if (!qword_1ECA66298)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA662A0, &qword_1D8B2E300);
    v3 = sub_1D89858D0(&qword_1ECA662A8, &qword_1ECA662A0, &qword_1D8B2E300, sub_1D8985170);
    v5 = type metadata accessor for URLParameter(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ECA66298);
    }
  }
}

unint64_t sub_1D8985170()
{
  result = qword_1ECA662B0;
  if (!qword_1ECA662B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA662B0);
  }

  return result;
}

void sub_1D89851C4(uint64_t a1)
{
  if (!qword_1ECA662B8)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA662C0, &qword_1D8B2E308);
    v3 = sub_1D89858D0(&qword_1ECA662C8, &qword_1ECA662C0, &qword_1D8B2E308, sub_1D8985268);
    v5 = type metadata accessor for URLParameter(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ECA662B8);
    }
  }
}

unint64_t sub_1D8985268()
{
  result = qword_1ECA662D0;
  if (!qword_1ECA662D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA662D0);
  }

  return result;
}

void sub_1D89852BC(uint64_t a1)
{
  if (!qword_1ECA662D8)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA662E0, &qword_1D8B2E310);
    v3 = sub_1D89858D0(&qword_1ECA662E8, &qword_1ECA662E0, &qword_1D8B2E310, sub_1D8985360);
    v5 = type metadata accessor for URLParameter(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ECA662D8);
    }
  }
}

unint64_t sub_1D8985360()
{
  result = qword_1ECA662F0;
  if (!qword_1ECA662F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA662F8, &qword_1D8B2E318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA662F0);
  }

  return result;
}

void sub_1D89853DC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5();
    v11 = type metadata accessor for URLParameter(a1, v8, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_1D898544C()
{
  result = qword_1ECA66308;
  if (!qword_1ECA66308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA631A8, &qword_1D8B1E6D0);
    sub_1D8985658(&qword_1ECA66310, MEMORY[0x1E6969530], &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66308);
  }

  return result;
}

void sub_1D8985500(uint64_t a1)
{
  if (!qword_1ECA66318)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA66320, &qword_1D8B2E320);
    v3 = sub_1D89858D0(&qword_1ECA66328, &qword_1ECA66320, &qword_1D8B2E320, sub_1D89855A4);
    v5 = type metadata accessor for URLParameter(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ECA66318);
    }
  }
}

unint64_t sub_1D89855A4()
{
  result = qword_1ECA66330;
  if (!qword_1ECA66330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA66338, &qword_1D8B2E328);
    sub_1D8985658(&qword_1ECA66340, MEMORY[0x1E6968FB0], &protocol conformance descriptor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66330);
  }

  return result;
}

uint64_t sub_1D8985658(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D89856A0()
{
  result = qword_1ECA66358;
  if (!qword_1ECA66358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA66350, &unk_1D8B2E330);
    sub_1D8985750(&qword_1ECA66360, &unk_1ECA64D60, &unk_1D8B1E8D0, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66358);
  }

  return result;
}

uint64_t sub_1D8985750(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_1D89857B0()
{
  result = qword_1ECA66378;
  if (!qword_1ECA66378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA66370, &unk_1D8B3F600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66378);
  }

  return result;
}

void sub_1D898582C(uint64_t a1)
{
  if (!qword_1ECA66380)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA66388, &qword_1D8B2E340);
    v3 = sub_1D89858D0(&qword_1ECA66390, &qword_1ECA66388, &qword_1D8B2E340, sub_1D898594C);
    v5 = type metadata accessor for URLParameter(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ECA66380);
    }
  }
}

uint64_t sub_1D89858D0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1D898594C()
{
  result = qword_1ECA66398;
  if (!qword_1ECA66398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA663A0, &qword_1D8B2E348);
    sub_1D89859D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66398);
  }

  return result;
}

unint64_t sub_1D89859D0()
{
  result = qword_1ECA663A8;
  if (!qword_1ECA663A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA663A8);
  }

  return result;
}

unint64_t sub_1D8985A24()
{
  result = qword_1ECA663C0;
  if (!qword_1ECA663C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA663B8, &qword_1D8B2E350);
    sub_1D8985AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA663C0);
  }

  return result;
}

unint64_t sub_1D8985AA8()
{
  result = qword_1ECA663C8;
  if (!qword_1ECA663C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA663C8);
  }

  return result;
}

unint64_t sub_1D8985AFC()
{
  result = qword_1ECA663E0;
  if (!qword_1ECA663E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA663D8, &qword_1D8B2E358);
    sub_1D8985B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA663E0);
  }

  return result;
}

unint64_t sub_1D8985B80()
{
  result = qword_1ECA663E8[0];
  if (!qword_1ECA663E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA663E8);
  }

  return result;
}

uint64_t sub_1D8985BD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8985C1C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1D8985CF0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8985D70(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
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

  return v7 + (v9 | v14) + 1;
}

void sub_1D8985EF4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

unint64_t sub_1D8986170()
{
  result = qword_1ECA664F0;
  if (!qword_1ECA664F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA664F0);
  }

  return result;
}

unint64_t sub_1D89861C8()
{
  result = qword_1ECA664F8;
  if (!qword_1ECA664F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA664F8);
  }

  return result;
}

unint64_t sub_1D8986274()
{
  result = qword_1ECA66500;
  if (!qword_1ECA66500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66500);
  }

  return result;
}

unint64_t sub_1D89862CC()
{
  result = qword_1ECA66508;
  if (!qword_1ECA66508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66508);
  }

  return result;
}

unint64_t sub_1D8986324()
{
  result = qword_1ECA66510;
  if (!qword_1ECA66510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66510);
  }

  return result;
}

unint64_t sub_1D898637C()
{
  result = qword_1ECA66518;
  if (!qword_1ECA66518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66518);
  }

  return result;
}

uint64_t sub_1D89863D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xE900000000000074 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6966697373616C63 && a2 == 0xEE006E6F69746163 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6375646F72706572 && a2 == 0xEF7974696C696269 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D8B44F30 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7364726F7779656BLL && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7349664F656D6974 && a2 == 0xEB00000000657573 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEB0000000073746ELL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D8B44F50 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D8B44F70 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E4F6574656C6564 && a2 == 0xEE00686361747441 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE900000000000073 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6C43656369766564 && a2 == 0xED00007365737361 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEC000000736C6564 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D8B44F90 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D8B44FB0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x676169446F747561 && a2 == 0xEF73636974736F6ELL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D8B44FD0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D8B44FF0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D8B45010 == a2)
  {

    return 20;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t sub_1D8986A6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEB00000000444974;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xED0000656D614E74 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D8B45030 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

uint64_t sub_1D8986BA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8, &qword_1D8B1E6D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8986C10()
{
  result = qword_1ECA66520;
  if (!qword_1ECA66520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66520);
  }

  return result;
}

unint64_t sub_1D8986C64()
{
  result = qword_1ECA66528;
  if (!qword_1ECA66528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66528);
  }

  return result;
}

unint64_t sub_1D8986CB8()
{
  result = qword_1ECA66530;
  if (!qword_1ECA66530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66530);
  }

  return result;
}

unint64_t sub_1D8986D0C()
{
  result = qword_1ECA66538;
  if (!qword_1ECA66538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66538);
  }

  return result;
}

unint64_t VITapToRadarInvocation.ActionType.id.getter()
{
  v1 = *v0;
  v2 = 0x6956686361747461;
  v3 = 0x6C6C6F4361746164;
  v4 = 0x695664726F636572;
  if (v1 != 3)
  {
    v4 = 0x6E67616964737973;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

VisualIntelligenceCore::VITapToRadarInvocation::ActionType_optional __swiftcall VITapToRadarInvocation.ActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8B16930();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D8986E98()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

double sub_1D8986F98(uint64_t a1)
{
  sub_1D8B15A60();

  return result;
}

uint64_t sub_1D8987084(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

void sub_1D898724C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6956686361747461;
  v4 = 0xEE006E6F69746365;
  v5 = 0x6C6C6F4361746164;
  v6 = 0x695664726F636572;
  v7 = 0xEB0000000065736FLL;
  if (v2 == 3)
  {
    v7 = 0xEB000000006F6564;
  }

  else
  {
    v6 = 0x6E67616964737973;
  }

  if (v2 != 2)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x80000001D8B40360;
  if (*v1)
  {
    v8 = 0xEB000000006F6564;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (*v1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10;
}

uint64_t static VITapToRadarInvocation.createVIRadarDraft(actionType:attachments:crDocument:stillCompositeOverlay:saliencyStream:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 384) = a5;
  *(v6 + 392) = a6;
  *(v6 + 368) = a3;
  *(v6 + 376) = a4;
  *(v6 + 360) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64340, &qword_1D8B23F80);
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = type metadata accessor for TapToRadarDraftPayload(0);
  *(v6 + 416) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0, &qword_1D8B24530);
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = type metadata accessor for ActionPin.PermanentPill(0);
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 497) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1D8987450, 0, 0);
}

uint64_t sub_1D8987450()
{
  v1 = *(v0 + 384);
  if (v1 && (v2 = *(v0 + 392), *(v0 + 304) = v1, *(v0 + 312) = v2, swift_unknownObjectRetain(), *(v0 + 448) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66550, &qword_1D8B2E8E0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66558, &unk_1D8B2E8E8), (swift_dynamicCast() & 1) != 0))
  {
    if (*(v0 + 168))
    {
      v3 = *(v0 + 440);
      v4 = *(v0 + 424);
      v5 = *(v0 + 360);
      sub_1D8788F40((v0 + 144), v0 + 104);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0, &unk_1D8B1F5B0);
      (*(*(v6 - 8) + 56))(v3, 6, 6, v6);
      *(v0 + 352) = v5;

      sub_1D89880FC(v4);
      v7 = swift_task_alloc();
      *(v0 + 456) = v7;
      *v7 = v0;
      v7[1] = sub_1D8987704;
      v8 = *(v0 + 424);
      v9 = *(v0 + 368);

      return sub_1D8988650(v9, v8);
    }
  }

  else
  {
    *(v0 + 176) = 0;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
  }

  sub_1D87A14E4(v0 + 144, &qword_1ECA66548, &qword_1D8B2E8D8);
  if (qword_1ECA621B0 != -1)
  {
    swift_once();
  }

  v11 = sub_1D8B151E0();
  __swift_project_value_buffer(v11, qword_1ECA66A98);
  v12 = sub_1D8B151C0();
  v13 = sub_1D8B16210();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D8783000, v12, v13, "VITapToRadarInvocation createVIRadarDraft: the provided saliencyStream is not actionable, no-oping.", v14, 2u);
    MEMORY[0x1DA721330](v14, -1, -1);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D8987704(uint64_t a1)
{
  *(*v1 + 464) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D8987804, 0, 0);
}

uint64_t sub_1D8987804()
{
  v15 = *(v0 + 384);
  sub_1D88F59DC(*(v0 + 464));
  *(v0 + 320) = v15;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66560, &qword_1D8B2E900);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 208);
    if (v1)
    {
      v2 = *(v0 + 424);
      v3 = *(v0 + 216);
      __swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
      v4 = SaliencyStreamIngredientsProviding.bundleSelector.getter(v1, v3);
      v18 = *(v4 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 32);
      v19 = *(v4 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 48);
      v20 = *(v4 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 64);
      v16 = *(v4 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration);
      v17 = *(v4 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 16);

      __swift_destroy_boxed_opaque_existential_1((v0 + 184));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633F8, &unk_1D8B1E9E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D8B1AB90;
      *(inited + 56) = &type metadata for BundleSelector.Configuration;
      *(inited + 64) = sub_1D88C924C();
      v6 = swift_allocObject();
      *(inited + 32) = v6;
      *(v6 + 80) = v20;
      *(v6 + 48) = v18;
      *(v6 + 64) = v19;
      *(v6 + 16) = v16;
      *(v6 + 32) = v17;
      *(inited + 72) = 0xD00000000000001CLL;
      *(inited + 80) = 0x80000001D8B45070;
      v7 = sub_1D89890F8(inited, v2);
      swift_setDeallocating();
      sub_1D87A14E4(inited + 32, &qword_1ECA63400, &qword_1D8B2E930);
      sub_1D88F59DC(v7);
      goto LABEL_10;
    }
  }

  else
  {
    *(v0 + 216) = 0;
    *(v0 + 200) = 0u;
    *(v0 + 184) = 0u;
  }

  sub_1D87A14E4(v0 + 184, &qword_1ECA66568, &qword_1D8B2E908);
  if (qword_1ECA621B0 != -1)
  {
    swift_once();
  }

  v8 = sub_1D8B151E0();
  __swift_project_value_buffer(v8, qword_1ECA66A98);
  v9 = sub_1D8B151C0();
  v10 = sub_1D8B16210();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D8783000, v9, v10, "VITapToRadarInvocation createVIRadarDraft: failed to create configuration attachment file.", v11, 2u);
    MEMORY[0x1DA721330](v11, -1, -1);
  }

LABEL_10:
  *(v0 + 336) = *(v0 + 384);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66570, &qword_1D8B2E910);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 256) = 0;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
  }

  *(v0 + 496) = *(v0 + 497);
  v12 = swift_task_alloc();
  *(v0 + 472) = v12;
  *v12 = v0;
  v12[1] = sub_1D8987B68;
  v13 = *(v0 + 424);

  return sub_1D8989EE0(v0 + 224, (v0 + 496), v13);
}

uint64_t sub_1D8987B68(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 480) = a1;

  sub_1D87A14E4(v2 + 224, &qword_1ECA66578, &unk_1D8B2E920);

  return MEMORY[0x1EEE6DFA0](sub_1D8987C80, 0, 0);
}

void sub_1D8987C80()
{
  v1 = *(v0 + 497);
  v3 = *(v0 + 408);
  v2 = *(v0 + 416);
  v4 = *(v0 + 376);
  sub_1D88F59DC(*(v0 + 480));
  v5 = *(v0 + 352);
  sub_1D87A0E38(v4, v2 + *(v3 + 24), &qword_1ECA630C0, &qword_1D8B24530);
  *v2 = v1;
  *(v2 + 8) = v5;
  v6 = *(v0 + 136);
  __swift_project_boxed_opaque_existential_1((v0 + 104), *(v0 + 128));
  if (qword_1EE0E3EB8 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 416);
  v8 = *(v0 + 400);
  v9 = type metadata accessor for ActionPin(0);
  __swift_project_value_buffer(v9, qword_1EE0E3EC0);
  sub_1D898C6F8(v7, v8, type metadata accessor for TapToRadarDraftPayload);
  v10 = type metadata accessor for ExecutionParameter(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v12 = *(v6 + 8) + **(v6 + 8);
  v11 = swift_task_alloc();
  *(v0 + 488) = v11;
  *v11 = v0;
  v11[1] = sub_1D8987EE8;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1D8987EE8()
{
  v1 = *v0;
  v2 = *(*v0 + 400);

  sub_1D87A14E4(v2, &qword_1ECA64340, &qword_1D8B23F80);
  __swift_destroy_boxed_opaque_existential_1((v1 + 264));

  return MEMORY[0x1EEE6DFA0](sub_1D8988018, 0, 0);
}

uint64_t sub_1D8988018()
{
  v1 = v0[55];
  v2 = v0[53];
  sub_1D898C760(v0[52], type metadata accessor for TapToRadarDraftPayload);
  sub_1D87A14E4(v2, &qword_1ECA630C0, &qword_1D8B24530);
  sub_1D898C760(v1, type metadata accessor for ActionPin.PermanentPill);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D89880FC@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v59[4] = *MEMORY[0x1E69E9840];
  v57 = sub_1D8B12F10();
  v1 = *(v57 - 1);
  MEMORY[0x1EEE9AC00](v57);
  v3 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B13240();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B13000();
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v53 - v12;
  v14 = [objc_opt_self() defaultManager];
  sub_1D8B12F40();
  sub_1D8B13230();
  v15 = sub_1D8B131E0();
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  v18 = sub_1D881BE2C(26, v15, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v59[0] = v18;
  v59[1] = v20;
  v26 = v55;
  v25 = v56;
  v59[2] = v22;
  v59[3] = v24;
  v27 = v14;
  v28 = v57;
  (*(v1 + 104))(v3, *MEMORY[0x1E6968F58], v57);
  sub_1D898C868();
  sub_1D8B12FF0();
  (*(v1 + 8))(v3, v28);

  v29 = *(v26 + 8);
  v30 = v25;
  v29(v11, v25);
  v31 = sub_1D8B12F50();
  v59[0] = 0;
  LODWORD(v1) = [v27 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:v59];

  if (v1)
  {
    v32 = v59[0];

    v33 = v58;
    (*(v26 + 32))(v58, v13, v30);
    v34 = 0;
    v35 = v33;
  }

  else
  {
    v57 = v29;
    v36 = v59[0];
    v37 = sub_1D8B12EB0();

    swift_willThrow();
    if (qword_1ECA621B0 != -1)
    {
      swift_once();
    }

    v38 = sub_1D8B151E0();
    __swift_project_value_buffer(v38, qword_1ECA66A98);
    v39 = v37;
    v40 = sub_1D8B151C0();
    v41 = sub_1D8B16210();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v54 = v13;
      v43 = v26;
      v44 = v42;
      v45 = swift_slowAlloc();
      v53 = v27;
      v46 = v45;
      v59[0] = v45;
      *v44 = 136315138;
      swift_getErrorValue();
      v47 = sub_1D8B16C90();
      v49 = sub_1D89AC714(v47, v48, v59);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_1D8783000, v40, v41, "VITapToRadarInvocation createTempDirectory failed to create directory with error: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1DA721330](v46, -1, -1);
      v50 = v44;
      v26 = v43;
      MEMORY[0x1DA721330](v50, -1, -1);

      v51 = v54;
    }

    else
    {

      v51 = v13;
    }

    (v57)(v51, v30);
    v34 = 1;
    v35 = v58;
  }

  return (*(v26 + 56))(v35, v34, 1, v30);
}

uint64_t sub_1D8988650(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_1D8B12F10();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0, &qword_1D8B24530);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = sub_1D8B13000();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8988800, 0, 0);
}

uint64_t sub_1D8988800()
{
  v85 = v0;
  v84[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 72);
  if (!v1)
  {
    if (qword_1ECA621B0 != -1)
    {
      swift_once();
    }

    v8 = sub_1D8B151E0();
    __swift_project_value_buffer(v8, qword_1ECA66A98);
    v9 = sub_1D8B151C0();
    v10 = sub_1D8B16200();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D8783000, v9, v10, "VITapToRadarInvocation createCROutputFile no document found", v11, 2u);
      MEMORY[0x1DA721330](v11, -1, -1);
    }

    goto LABEL_33;
  }

  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  sub_1D87A0E38(*(v0 + 80), v4, &qword_1ECA630C0, &qword_1D8B24530);
  v5 = *(v3 + 48);
  if (v5(v4, 1, v2) == 1)
  {
    v6 = *(v0 + 120);
    v7 = v1;
    sub_1D87A14E4(v6, &qword_1ECA630C0, &qword_1D8B24530);
  }

  else
  {
    v12 = *(*(v0 + 136) + 32);
    v12(*(v0 + 160), *(v0 + 120), *(v0 + 128));
    v13 = v1;
    if (sub_1D898C124())
    {
      v12(*(v0 + 168), *(v0 + 160), *(v0 + 128));
      goto LABEL_19;
    }

    (*(*(v0 + 136) + 8))(*(v0 + 160), *(v0 + 128));
  }

  v14 = *(v0 + 128);
  v15 = *(v0 + 112);
  sub_1D89880FC(v15);
  if (v5(v15, 1, v14) == 1)
  {
    sub_1D87A14E4(*(v0 + 112), &qword_1ECA630C0, &qword_1D8B24530);
    if (qword_1ECA621B0 != -1)
    {
      swift_once();
    }

    v16 = sub_1D8B151E0();
    __swift_project_value_buffer(v16, qword_1ECA66A98);
    v17 = sub_1D8B151C0();
    v18 = sub_1D8B16210();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D8783000, v17, v18, "VITapToRadarInvocation createCROutputFile couldn't create fallback directory.", v19, 2u);
      MEMORY[0x1DA721330](v19, -1, -1);
    }

    goto LABEL_33;
  }

  v12 = *(*(v0 + 136) + 32);
  v12(*(v0 + 168), *(v0 + 112), *(v0 + 128));
LABEL_19:
  v20 = objc_opt_self();
  *(v0 + 56) = 0;
  v21 = [v20 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v0 + 56];
  v22 = *(v0 + 56);
  if (v21)
  {
    v83 = v1;
    v23 = *(v0 + 96);
    v24 = *(v0 + 104);
    v25 = *(v0 + 88);
    v26 = sub_1D8B13050();
    v28 = v27;

    *(v0 + 40) = 0xD000000000000012;
    *(v0 + 48) = 0x80000001D8B450F0;
    (*(v23 + 104))(v24, *MEMORY[0x1E6968F68], v25);
    sub_1D87C12C0();
    sub_1D8B12FE0();
    (*(v23 + 8))(v24, v25);
    v29 = v28;
    v30 = [objc_opt_self() defaultManager];
    sub_1D8B12FC0();
    v31 = sub_1D8B15940();

    v32 = v26;
    v33 = sub_1D8B13030();
    LODWORD(v24) = [v30 createFileAtPath:v31 contents:v33 attributes:0];

    if (v24)
    {
      v34 = *(v0 + 168);
      v35 = *(v0 + 152);
      v36 = v29;
      v38 = *(v0 + 128);
      v37 = *(v0 + 136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633F0, &unk_1D8B2EBF0);
      v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1D8B1AB90;
      v12(v40 + v39, v35, v38);
      sub_1D87A1598(v32, v36);

      (*(v37 + 8))(v34, v38);
      goto LABEL_34;
    }

    v81 = v26;
    if (qword_1ECA621B0 != -1)
    {
      swift_once();
    }

    v82 = v29;
    v56 = *(v0 + 144);
    v55 = *(v0 + 152);
    v58 = *(v0 + 128);
    v57 = *(v0 + 136);
    v59 = sub_1D8B151E0();
    __swift_project_value_buffer(v59, qword_1ECA66A98);
    (*(v57 + 16))(v56, v55, v58);
    v60 = sub_1D8B151C0();
    v61 = sub_1D8B16210();
    v62 = os_log_type_enabled(v60, v61);
    v64 = *(v0 + 136);
    v63 = *(v0 + 144);
    v65 = *(v0 + 128);
    v66 = v83;
    if (v62)
    {
      v67 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v84[0] = v80;
      *v67 = 136315138;
      v79 = sub_1D8B12FC0();
      v68 = v61;
      v70 = v69;
      v71 = *(v64 + 8);
      v71(v63, v65);
      v72 = sub_1D89AC714(v79, v70, v84);

      *(v67 + 4) = v72;
      v73 = v68;
      v66 = v83;
      _os_log_impl(&dword_1D8783000, v60, v73, "VITapToRadarInvocation createCROutputFile failed to create temporary file at %s, will not attach to the incoming draft.", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x1DA721330](v80, -1, -1);
      MEMORY[0x1DA721330](v67, -1, -1);
    }

    else
    {

      v71 = *(v64 + 8);
      v71(v63, v65);
    }

    v74 = *(v0 + 168);
    v75 = *(v0 + 152);
    v76 = *(v0 + 128);
    sub_1D87A1598(v81, v82);

    v71(v75, v76);
    v71(v74, v76);
  }

  else
  {
    v41 = v22;
    v42 = sub_1D8B12EB0();

    swift_willThrow();
    if (qword_1ECA621B0 != -1)
    {
      swift_once();
    }

    v43 = sub_1D8B151E0();
    __swift_project_value_buffer(v43, qword_1ECA66A98);
    v44 = v42;
    v45 = sub_1D8B151C0();
    v46 = sub_1D8B16210();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v84[0] = v48;
      *v47 = 136315138;
      swift_getErrorValue();
      v49 = sub_1D8B16C90();
      v51 = sub_1D89AC714(v49, v50, v84);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_1D8783000, v45, v46, "VITapToRadarInvocation createCROutputFile could not serialize to file, will not attach to the incoming draft. Error: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1DA721330](v48, -1, -1);
      MEMORY[0x1DA721330](v47, -1, -1);
    }

    v52 = *(v0 + 168);
    v53 = *(v0 + 128);
    v54 = *(v0 + 136);

    (*(v54 + 8))(v52, v53);
  }

LABEL_33:
  v40 = MEMORY[0x1E69E7CC0];
LABEL_34:

  v77 = *(v0 + 8);

  return v77(v40);
}

void *sub_1D89890F8(void *a1, uint64_t a2)
{
  v104 = sub_1D8B12F10();
  v4 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0, &qword_1D8B24530);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v89 - v10;
  v113 = sub_1D8B13000();
  v12 = *(v113 - 8);
  v13 = MEMORY[0x1EEE9AC00](v113);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v102 = &v89 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v89 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v112 = &v89 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v89 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v105 = &v89 - v26;
  v27 = sub_1D8B12BC0();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v111 = a1[2];
  if (!v111)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v95 = v20;
  v96 = v15;
  sub_1D8B12C00();
  swift_allocObject();
  v28 = sub_1D8B12BF0();
  sub_1D8B12BB0();
  v110 = v28;
  sub_1D8B12BD0();
  sub_1D87A0E38(a2, v11, &qword_1ECA630C0, &qword_1D8B24530);
  v29 = *(v12 + 48);
  if (v29(v11, 1, v113) == 1)
  {
    sub_1D87A14E4(v11, &qword_1ECA630C0, &qword_1D8B24530);
  }

  else
  {
    v109 = a1;
    v30 = v4;
    v31 = *(v12 + 32);
    v31(v25, v11, v113);
    if (sub_1D898C124())
    {
      v93 = v12 + 32;
      v31(v105, v25, v113);
      v33 = v31;
      v4 = v30;
      a1 = v109;
      goto LABEL_15;
    }

    (*(v12 + 8))(v25, v113);
    v4 = v30;
    a1 = v109;
  }

  sub_1D89880FC(v9);
  if (v29(v9, 1, v113) == 1)
  {
    sub_1D87A14E4(v9, &qword_1ECA630C0, &qword_1D8B24530);
    if (qword_1ECA621B0 != -1)
    {
      swift_once();
    }

    v34 = sub_1D8B151E0();
    __swift_project_value_buffer(v34, qword_1ECA66A98);
    v35 = sub_1D8B151C0();
    v36 = sub_1D8B16210();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1D8783000, v35, v36, "VITapToRadarInvocation createTempFilesForTTRDraft couldn't create fallback directory.", v37, 2u);
      MEMORY[0x1DA721330](v37, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v33 = *(v12 + 32);
  v93 = v12 + 32;
  v33(v105, v9, v113);
LABEL_15:
  v92 = v33;
  v39 = (a1 + 4);
  v101 = (v4 + 104);
  v100 = *MEMORY[0x1E6968F68];
  v99 = (v4 + 8);
  v107 = (v12 + 16);
  v94 = v12;
  v108 = (v12 + 8);
  v109 = MEMORY[0x1E69E7CC0];
  *&v32 = 136315138;
  v91 = v32;
  *&v32 = 136315394;
  v97 = v32;
  v40 = v111;
  do
  {
    sub_1D87A0E38(v39, v115, &qword_1ECA63400, &qword_1D8B2E930);
    v41 = v115[5];
    v42 = v115[6];
    __swift_project_boxed_opaque_existential_1(v115, v115[3]);
    v43 = sub_1D8B12BE0();
    v45 = v44;
    v111 = v40;
    __swift_destroy_boxed_opaque_existential_1(v115);
    v114[0] = v41;
    v114[1] = v42;
    MEMORY[0x1DA71EFA0](0x6E6F736A2ELL, 0xE500000000000000);
    v46 = v103;
    v47 = v104;
    (*v101)(v103, v100, v104);
    sub_1D87C12C0();
    sub_1D8B12FE0();
    (*v99)(v46, v47);

    v48 = [objc_opt_self() defaultManager];
    sub_1D8B12FC0();
    v49 = sub_1D8B15940();

    v50 = sub_1D8B13030();
    v51 = [v48 createFileAtPath:v49 contents:v50 attributes:0];

    if (v51)
    {
      if (qword_1ECA621B0 != -1)
      {
        swift_once();
      }

      v106 = v43;
      v52 = sub_1D8B151E0();
      __swift_project_value_buffer(v52, qword_1ECA66A98);
      v53 = v95;
      v54 = v112;
      v98 = *v107;
      v98(v95, v112, v113);
      v55 = sub_1D8B151C0();
      v56 = sub_1D8B161F0();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v114[0] = v58;
        *v57 = v91;
        sub_1D898C6B0(&qword_1ECA64730, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v59 = sub_1D8B16B50();
        v60 = v53;
        v62 = v61;
        v63 = *v108;
        (*v108)(v60, v113);
        v64 = sub_1D89AC714(v59, v62, v114);

        *(v57 + 4) = v64;
        _os_log_impl(&dword_1D8783000, v55, v56, "VITapToRadarInvocation createTempFilesForTTRDraft created temporary file at %s to attach to TTR draft", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v58);
        MEMORY[0x1DA721330](v58, -1, -1);
        v65 = v57;
        v54 = v112;
        MEMORY[0x1DA721330](v65, -1, -1);
      }

      else
      {

        v63 = *v108;
        (*v108)(v53, v113);
      }

      v79 = v111;
      v98(v102, v54, v113);
      v80 = v109;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v92;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v80 = sub_1D87C8798(0, v80[2] + 1, 1, v80);
      }

      v84 = v80[2];
      v83 = v80[3];
      v109 = v80;
      if (v84 >= v83 >> 1)
      {
        v109 = sub_1D87C8798((v83 > 1), v84 + 1, 1, v109);
      }

      sub_1D87A1598(v106, v45);
      v85 = v113;
      v63(v54, v113);
      v86 = v109;
      v109[2] = v84 + 1;
      v82(&v86[((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v84], v102, v85);
    }

    else
    {
      v66 = v96;
      if (qword_1ECA621B0 != -1)
      {
        swift_once();
      }

      v67 = sub_1D8B151E0();
      __swift_project_value_buffer(v67, qword_1ECA66A98);
      v68 = v112;
      (*v107)(v66, v112, v113);
      v69 = sub_1D8B151C0();
      v70 = sub_1D8B16210();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = v66;
        v73 = swift_slowAlloc();
        v114[0] = v73;
        *v71 = v91;
        v74 = sub_1D8B12FC0();
        v106 = v43;
        v90 = v74;
        v76 = v75;
        v98 = v45;
        v77 = *v108;
        (*v108)(v72, v113);
        v78 = sub_1D89AC714(v90, v76, v114);

        *(v71 + 4) = v78;
        _os_log_impl(&dword_1D8783000, v69, v70, "VITapToRadarInvocation createTempFilesForTTRDraft failed to create temporary file at %s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v73);
        MEMORY[0x1DA721330](v73, -1, -1);
        MEMORY[0x1DA721330](v71, -1, -1);

        sub_1D87A1598(v106, v98);
        v77(v112, v113);
      }

      else
      {

        sub_1D87A1598(v43, v45);
        v87 = *v108;
        v88 = v113;
        (*v108)(v66, v113);
        v87(v68, v88);
      }

      v79 = v111;
    }

    v39 += 56;
    v40 = v79 - 1;
  }

  while (v40);

  (*v108)(v105, v113);
  return v109;
}

uint64_t sub_1D8989EE0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v3 + 2984) = a3;
  *(v3 + 2976) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8, &qword_1D8B23190);
  *(v3 + 2992) = swift_task_alloc();
  v5 = type metadata accessor for BundleSelector.Output(0);
  *(v3 + 3000) = v5;
  *(v3 + 3008) = *(v5 - 8);
  *(v3 + 3016) = swift_task_alloc();
  *(v3 + 3024) = *(type metadata accessor for CVBundle(0) - 8);
  *(v3 + 3032) = swift_task_alloc();
  *(v3 + 3040) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64290, &qword_1D8B2EB20);
  *(v3 + 3048) = swift_task_alloc();
  v6 = type metadata accessor for ActionPredictor.Output(0);
  *(v3 + 3056) = v6;
  *(v3 + 3064) = *(v6 - 8);
  *(v3 + 3072) = swift_task_alloc();
  *(v3 + 3160) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1D898A0E0, 0, 0);
}

uint64_t sub_1D898A0E0()
{
  if (*(v0 + 3160) == 2)
  {
  }

  else
  {
    v1 = sub_1D8B16BA0();

    if ((v1 & 1) == 0)
    {
      sub_1D87A0E38(*(v0 + 2976), v0 + 2856, &qword_1ECA66578, &unk_1D8B2E920);
      if (*(v0 + 2880))
      {
        sub_1D8788F40((v0 + 2856), v0 + 2936);
        v2 = swift_task_alloc();
        *(v0 + 3080) = v2;
        *(v2 + 16) = v0 + 2936;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665B0, &qword_1D8B2EB78);
        swift_asyncLet_begin();
        v3 = swift_task_alloc();
        *(v0 + 3088) = v3;
        *(v3 + 16) = v0 + 2936;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665B8, &qword_1D8B2EB90);
        swift_asyncLet_begin();

        return MEMORY[0x1EEE6DEB8](v0 + 16, v0 + 2776, sub_1D898A464, v0 + 2224);
      }

      sub_1D87A14E4(v0 + 2856, &qword_1ECA66578, &unk_1D8B2E920);
      if (qword_1ECA621B0 != -1)
      {
        swift_once();
      }

      v4 = sub_1D8B151E0();
      __swift_project_value_buffer(v4, qword_1ECA66A98);
      v5 = sub_1D8B151C0();
      v6 = sub_1D8B16210();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1D8783000, v5, v6, "VITapToRadarInvocation createLatestStreamOutputFiles: provided stream was not capable of providing output streams.", v7, 2u);
        MEMORY[0x1DA721330](v7, -1, -1);
      }
    }
  }

  v8 = *(v0 + 8);
  v9 = MEMORY[0x1E69E7CC0];

  return v8(v9);
}

uint64_t sub_1D898A480()
{
  sub_1D87C1470((v0 + 347), (v0 + 327));
  v1 = v0[330];
  v2 = v0[331];
  __swift_project_boxed_opaque_existential_1(v0 + 327, v1);
  v3 = swift_task_alloc();
  v0[387] = v3;
  *v3 = v0;
  v3[1] = sub_1D898A54C;
  v4 = v0[381];

  return sub_1D898BAD8(v4, v1, v2);
}

uint64_t sub_1D898A54C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D898A648, 0, 0);
}

uint64_t sub_1D898A648()
{
  v1 = *(v0 + 3056);
  v2 = *(v0 + 3048);
  if ((*(*(v0 + 3064) + 48))(v2, 1, v1) == 1)
  {
    sub_1D87A14E4(v2, &qword_1ECA64290, &qword_1D8B2EB20);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2616));
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v4 = *(v0 + 3072);
    sub_1D898C648(v2, v4, type metadata accessor for ActionPredictor.Output);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2616));
    *(v0 + 2920) = v1;
    *(v0 + 2928) = sub_1D898C6B0(&qword_1ECA665D0, type metadata accessor for ActionPredictor.Output, &protocol conformance descriptor for ActionPredictor.Output);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2896));
    sub_1D898C6F8(v4, boxed_opaque_existential_1, type metadata accessor for ActionPredictor.Output);
    sub_1D8788F40((v0 + 2896), v0 + 2360);
    *(v0 + 2400) = 0xD00000000000001BLL;
    *(v0 + 2408) = 0x80000001D8B450D0;
    v3 = sub_1D87C93A0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v7 = v3[2];
    v6 = v3[3];
    if (v7 >= v6 >> 1)
    {
      v3 = sub_1D87C93A0((v6 > 1), v7 + 1, 1, v3);
    }

    sub_1D898C760(*(v0 + 3072), type metadata accessor for ActionPredictor.Output);
    v3[2] = v7 + 1;
    v8 = &v3[7 * v7];
    v10 = *(v0 + 2376);
    v9 = *(v0 + 2392);
    v11 = *(v0 + 2360);
    v8[10] = *(v0 + 2408);
    *(v8 + 3) = v10;
    *(v8 + 4) = v9;
    *(v8 + 2) = v11;
  }

  *(v0 + 3104) = v3;
  v12 = [objc_opt_self() mainBundle];
  v13 = [v12 bundleIdentifier];

  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = sub_1D8B15970();
  v16 = v15;

  if (v14 == 0xD000000000000022 && 0x80000001D8B433B0 == v16)
  {
  }

  else
  {
    v18 = sub_1D8B16BA0();

    if ((v18 & 1) == 0)
    {
LABEL_12:
      v19 = swift_task_alloc();
      *(v0 + 3112) = v19;
      *(v19 + 16) = v0 + 2936;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665C0, &unk_1D8B2EBB0);
      swift_asyncLet_begin();
      v20 = sub_1D898A98C;
      v21 = v0 + 1296;
      v22 = v0 + 2536;
      v23 = v0 + 1936;
      goto LABEL_15;
    }
  }

  *(v0 + 3136) = v3;
  v20 = sub_1D898AEE0;
  v21 = v0 + 656;
  v22 = v0 + 2656;
  v23 = v0 + 2416;
LABEL_15:

  return MEMORY[0x1EEE6DEB8](v21, v22, v20, v23);
}

uint64_t sub_1D898A9A8()
{
  sub_1D87C1470((v0 + 317), (v0 + 307));
  v1 = v0[310];
  v2 = v0[311];
  __swift_project_boxed_opaque_existential_1(v0 + 307, v1);
  v3 = swift_task_alloc();
  v0[390] = v3;
  *v3 = v0;
  v3[1] = sub_1D898AA74;

  return sub_1D898BAD8((v0 + 259), v1, v2);
}

uint64_t sub_1D898AA74()
{

  return MEMORY[0x1EEE6DFA0](sub_1D898AB70, 0, 0);
}

uint64_t sub_1D898AB70()
{
  v1 = *(v0 + 2120);
  *(v0 + 2008) = *(v0 + 2104);
  *(v0 + 2024) = v1;
  v2 = *(v0 + 2152);
  *(v0 + 2040) = *(v0 + 2136);
  *(v0 + 2056) = v2;
  v3 = *(v0 + 2088);
  *(v0 + 1976) = *(v0 + 2072);
  *(v0 + 1992) = v3;
  v4 = *(v0 + 1976);
  if (v4)
  {
    v5 = v0 + 2168;
    __swift_destroy_boxed_opaque_existential_1((v0 + 2456));
    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = *(v0 + 3024);
      v26 = MEMORY[0x1E69E7CC0];
      sub_1D87F4074(0, v6, 0);
      v8 = v26;
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = v4 + v9;
      v11 = *(v7 + 72);
      do
      {
        v12 = *(v0 + 3040);
        v13 = *(v0 + 3032);
        sub_1D898C6F8(v10, v13, type metadata accessor for CVBundle);
        CVBundle.sanitizeForJSON()(v12);
        sub_1D898C760(v13, type metadata accessor for CVBundle);
        v15 = *(v26 + 16);
        v14 = *(v26 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D87F4074((v14 > 1), v15 + 1, 1);
        }

        v16 = *(v0 + 3040);
        *(v26 + 16) = v15 + 1;
        sub_1D898C648(v16, v26 + v9 + v15 * v11, type metadata accessor for CVBundle);
        v10 += v11;
        --v6;
      }

      while (v6);
      sub_1D87A14E4(v0 + 1976, &qword_1ECA67E50, &qword_1D8B25ED8);
      v5 = v0 + 2168;
    }

    else
    {
      sub_1D87A14E4(v0 + 1976, &qword_1ECA67E50, &qword_1D8B25ED8);
      v8 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 2840) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65758, &qword_1D8B2ABD0);
    *(v0 + 2848) = sub_1D893FCB8();
    *(v0 + 2816) = v8;
    sub_1D8788F40((v0 + 2816), v5);
    *(v0 + 2208) = 0xD000000000000019;
    *(v0 + 2216) = 0x80000001D8B450B0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v0 + 3104);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1D87C93A0(0, v17[2] + 1, 1, v17);
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1D87C93A0((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[7 * v20];
    v22 = *v5;
    v23 = *(v5 + 16);
    v24 = *(v5 + 32);
    v21[10] = *(v5 + 48);
    *(v21 + 3) = v23;
    *(v21 + 4) = v24;
    *(v21 + 2) = v22;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 2456));
    v17 = *(v0 + 3104);
  }

  *(v0 + 3128) = v17;

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 2536, sub_1D898AE50, v0 + 2320);
}

uint64_t sub_1D898AE6C()
{

  *(v0 + 3136) = *(v0 + 3128);

  return MEMORY[0x1EEE6DEB8](v0 + 656, v0 + 2656, sub_1D898AEE0, v0 + 2416);
}

uint64_t sub_1D898AEFC()
{
  sub_1D87C1470((v0 + 332), (v0 + 337));
  v1 = v0[340];
  v2 = v0[341];
  __swift_project_boxed_opaque_existential_1(v0 + 337, v1);
  v3 = swift_task_alloc();
  v0[393] = v3;
  *v3 = v0;
  v3[1] = sub_1D898AFC8;
  v4 = v0[374];

  return sub_1D898BAD8(v4, v1, v2);
}

uint64_t sub_1D898AFC8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D898B0C4, 0, 0);
}

uint64_t sub_1D898B0C4()
{
  v1 = *(v0 + 3000);
  v2 = *(v0 + 2992);
  if ((*(*(v0 + 3008) + 48))(v2, 1, v1) == 1)
  {
    sub_1D87A14E4(v2, &qword_1ECA640E8, &qword_1D8B23190);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2696));
    v3 = *(v0 + 3136);
  }

  else
  {
    sub_1D898C648(v2, *(v0 + 3016), type metadata accessor for BundleSelector.Output);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2696));
    *(v0 + 2760) = v1;
    *(v0 + 2768) = sub_1D898C6B0(&qword_1ECA665C8, type metadata accessor for BundleSelector.Output, &protocol conformance descriptor for BundleSelector.Output);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2736));
    sub_1D8AA5700(boxed_opaque_existential_1);
    sub_1D8788F40((v0 + 2736), v0 + 2264);
    *(v0 + 2304) = 0xD00000000000001ALL;
    *(v0 + 2312) = 0x80000001D8B45090;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 3136);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_1D87C93A0(0, v3[2] + 1, 1, *(v0 + 3136));
    }

    v7 = v3[2];
    v6 = v3[3];
    if (v7 >= v6 >> 1)
    {
      v3 = sub_1D87C93A0((v6 > 1), v7 + 1, 1, v3);
    }

    sub_1D898C760(*(v0 + 3016), type metadata accessor for BundleSelector.Output);
    v3[2] = v7 + 1;
    v8 = &v3[7 * v7];
    v10 = *(v0 + 2280);
    v9 = *(v0 + 2296);
    v11 = *(v0 + 2264);
    v8[10] = *(v0 + 2312);
    *(v8 + 3) = v10;
    *(v8 + 4) = v9;
    *(v8 + 2) = v11;
  }

  *(v0 + 3152) = sub_1D89890F8(v3, *(v0 + 2984));

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 2656, sub_1D898B2F8, v0 + 2496);
}

uint64_t sub_1D898B314()
{

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 2776, sub_1D898B380, v0 + 2576);
}

uint64_t sub_1D898B39C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 367);
  v1 = v0[394];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1D898B460(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64818, &unk_1D8B25670);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D898B4FC, 0, 0);
}

uint64_t sub_1D898B4FC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64128, &qword_1D8B231D0);
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64910, &qword_1D8B25C90);
  v3[4] = sub_1D881CF20(&qword_1EE0E3890, &qword_1ECA64910, &qword_1D8B25C90, MEMORY[0x1E69E86A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_1D898B670;
  v9 = v0[4];

  return SaliencyStreamInternalMonitorable.makeActionPredictorOutputStream(bufferingPolicyOverride:)(boxed_opaque_existential_1, v9, v5, v4);
}

uint64_t sub_1D898B670()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  sub_1D87A14E4(v1, &qword_1ECA64818, &unk_1D8B25670);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D898B79C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64808, &unk_1D8B25650);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D898B838, 0, 0);
}

uint64_t sub_1D898B838()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64810, &qword_1D8B3BE70);
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64908, &unk_1D8B2EBE0);
  v3[4] = sub_1D881CF20(&qword_1EE0E3898, &qword_1ECA64908, &unk_1D8B2EBE0, MEMORY[0x1E69E86A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_1D898B9AC;
  v9 = v0[4];

  return SaliencyStreamInternalMonitorable.makeBundleSelectorOutputStream(bufferingPolicyOverride:)(boxed_opaque_existential_1, v9, v5, v4);
}

uint64_t sub_1D898B9AC()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  sub_1D87A14E4(v1, &qword_1ECA64808, &unk_1D8B25650);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D898BAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D898BAFC, 0, 0);
}

uint64_t sub_1D898BAFC()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1D898BBC8;
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return MEMORY[0x1EEE6DB20](v4, &unk_1D8B2EBD8, v1, v5, v3);
}

uint64_t sub_1D898BBC8()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D898BD38, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D898BD38()
{
  v1 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v1, 1, 1, AssociatedTypeWitness);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D898BDE8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA647F8, &unk_1D8B25630);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D898BE84, 0, 0);
}

uint64_t sub_1D898BE84()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64800, &unk_1D8B2EBC0);
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E40, &unk_1D8B25C80);
  v3[4] = sub_1D881CF20(&qword_1EE0E38A0, &unk_1ECA67E40, &unk_1D8B25C80, MEMORY[0x1E69E86A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_1D898BFF8;
  v9 = v0[4];

  return SaliencyStreamInternalMonitorable.makeBundleManagerOutputStream(bufferingPolicyOverride:)(boxed_opaque_existential_1, v9, v5, v4);
}

uint64_t sub_1D898BFF8()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  sub_1D87A14E4(v1, &qword_1ECA647F8, &unk_1D8B25630);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D898C124()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665A0, &qword_1D8B2EB08);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665A8, &unk_1D8B2EB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  v4 = *MEMORY[0x1E695DB78];
  *(inited + 32) = *MEMORY[0x1E695DB78];
  v5 = v4;
  sub_1D8A56988(inited);
  swift_setDeallocating();
  sub_1D898C760(inited + 32, type metadata accessor for URLResourceKey);
  sub_1D8B12F30();

  v6 = sub_1D8B12E30();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v2, 0, 1, v6);
  v8 = sub_1D8B12E20();
  (*(v7 + 8))(v2, v6);
  return v8 & 1;
}

unint64_t sub_1D898C35C()
{
  result = qword_1ECA66580;
  if (!qword_1ECA66580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66580);
  }

  return result;
}

unint64_t sub_1D898C414()
{
  result = qword_1ECA66598;
  if (!qword_1ECA66598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66598);
  }

  return result;
}

uint64_t sub_1D898C468(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D886553C;

  return sub_1D898B460(a1, v4);
}

uint64_t sub_1D898C508(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D886553C;

  return sub_1D898B79C(a1, v4);
}

uint64_t sub_1D898C5A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8864FBC;

  return sub_1D898BDE8(a1, v4);
}

uint64_t sub_1D898C648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D898C6B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D898C6F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D898C760(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D898C7C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D87D34C4;

  return sub_1D898C33C();
}

unint64_t sub_1D898C868()
{
  result = qword_1ECA665D8;
  if (!qword_1ECA665D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA665D8);
  }

  return result;
}

id AskAcmeRequirementManager.__allocating_init(hasOnboardedACME:)(char a1)
{
  v2 = swift_allocObject();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v4 = result;
    v5 = [result isExternalIntelligenceAllowed];

    *(v2 + 17) = v5 ^ 1;
    v6 = [objc_opt_self() sharedInstance];
    *(v2 + 48) = sub_1D881F764(0, &unk_1EE0E3778, 0x1E69D8A58);
    *(v2 + 56) = &off_1F5430390;
    *(v2 + 24) = v6;
    *(v2 + 16) = a1 & 1;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D898CA48(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

void sub_1D898CADC(char *a1@<X8>)
{
  v2 = v1;
  v4 = v1[6];
  v5 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v4);
  (*(v5 + 8))(&v11, v4, v5);
  if (v12)
  {
    sub_1D8788F40(&v11, v13);
    v6 = v14;
    v7 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    LOBYTE(v6) = sub_1D895C8E0(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v13);
    if ((v6 & 1) == 0)
    {
      v8 = 8;
      goto LABEL_18;
    }
  }

  else
  {
    sub_1D87A14E4(&v11, &qword_1ECA665E0, &unk_1D8B2EC00);
  }

  if (*(v2 + 17))
  {
    v8 = 0;
  }

  else if (AFMontaraRestricted() && *(v2 + 17) != 1)
  {
    v8 = 1;
  }

  else
  {
    v9 = [objc_opt_self() sharedPreferences];
    v10 = [v9 assistantIsEnabled];

    if (v10)
    {
      swift_beginAccess();
      if (*(v2 + 16) == 1)
      {
        sub_1D898CC84(&v11);
        v8 = v11;
        if (v11 == 10)
        {
          sub_1D8B14D60();
          if (sub_1D8B14D50())
          {
            v8 = 10;
          }

          else
          {
            v8 = 7;
          }
        }
      }

      else
      {
        v8 = 6;
      }
    }

    else
    {
      v8 = 2;
    }
  }

LABEL_18:
  *a1 = v8;
}

uint64_t sub_1D898CC84@<X0>(char *a1@<X8>)
{
  v123 = a1;
  v1 = sub_1D8B13FA0();
  v112 = *(v1 - 8);
  v113 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v111 = &v107 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D8B13FC0();
  v4 = *(v3 - 8);
  v114 = v3;
  v115 = v4;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v107 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v110 = &v107 - v7;
  v118 = sub_1D8B13F70();
  v8 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1D8B13F90();
  v124 = *(v120 - 8);
  v10 = MEMORY[0x1EEE9AC00](v120);
  v108 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v107 - v12;
  v13 = sub_1D8B14060();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665E8, &qword_1D8B2EC10);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v119 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v109 = &v107 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v107 - v22;
  v24 = sub_1D8B13FE0();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v107 - v29;
  if (qword_1EE0E9958 != -1)
  {
    swift_once();
  }

  v126 = qword_1EE0E9960;
  v127 = word_1EE0E9968;
  v128 = byte_1EE0E996A;
  v125 = 5;
  (*(v14 + 104))(v16, *MEMORY[0x1E69A12A0], v13);

  v121 = v23;
  GreymatterAvailability.availability(_:languageOption:)(v30, v23, &v125, v16);
  (*(v14 + 8))(v16, v13);

  v31 = *(v25 + 16);
  v122 = v30;
  v31(v28, v30, v24);
  v32 = *(v25 + 88);
  v33 = v32(v28, v24);
  v34 = *MEMORY[0x1E69A0EF8];
  v35 = v24;
  v36 = v25;
  if (v33 == *MEMORY[0x1E69A0EF8])
  {
    (*(v25 + 96))(v28, v24);
    v37 = v8;
    v38 = v25;
    v39 = v124;
    v40 = v116;
    v41 = v120;
    (*(v124 + 32))(v116, v28, v120);
    v119 = v24;
    v42 = sub_1D8B13F80();
    v43 = *MEMORY[0x1E69A0F60];
    v44 = v117;
    v45 = v118;
    v115 = *(v37 + 13);
    (v115)(v117, v43, v118);
    v46 = sub_1D89A5450(v44, v42);

    v47 = *(v37 + 1);
    v47(v44, v45);
    if (v46)
    {
      (*(v39 + 8))(v40, v41);
      sub_1D87A14E4(v121, &qword_1ECA665E8, &qword_1D8B2EC10);
      result = (*(v38 + 8))(v122, v119);
      v49 = 4;
LABEL_32:
      *v123 = v49;
      return result;
    }

    v112 = v38;
    v61 = v47;
    v62 = sub_1D8B13F80();
    v63 = v115;
    (v115)(v44, *MEMORY[0x1E69A0F38], v45);
    v64 = sub_1D89A5450(v44, v62);

    v61(v44, v45);
    v65 = v121;
    if (v64)
    {
      (*(v124 + 8))(v40, v120);
      sub_1D87A14E4(v65, &qword_1ECA665E8, &qword_1D8B2EC10);
      result = (*(v112 + 8))(v122, v119);
      v49 = 5;
      goto LABEL_32;
    }

    v71 = sub_1D8B13F80();
    v63(v44, *MEMORY[0x1E69A0F80], v45);
    v72 = sub_1D89A5450(v44, v71);

    v61(v44, v45);
    (*(v124 + 8))(v40, v120);
    sub_1D87A14E4(v65, &qword_1ECA665E8, &qword_1D8B2EC10);
    result = (*(v112 + 8))(v122, v119);
    if (v72)
    {
LABEL_18:
      v49 = 9;
      goto LABEL_32;
    }

LABEL_31:
    v49 = 3;
    goto LABEL_32;
  }

  v50 = *MEMORY[0x1E69A0F00];
  if (v33 == *MEMORY[0x1E69A0F00])
  {
    (*(v36 + 96))(v28, v24);
    v51 = v114;
    v52 = v115;
    v53 = v110;
    (*(v115 + 32))(v110, v28, v114);
    v119 = v24;
    v54 = sub_1D8B13FB0();
    v55 = *MEMORY[0x1E69A10C8];
    v57 = v111;
    v56 = v112;
    v58 = v113;
    v124 = *(v112 + 104);
    (v124)(v111, v55, v113);
    v59 = sub_1D89A5668(v57, v54);

    v60 = *(v56 + 8);
    v60(v57, v58);
    if ((v59 & 1) == 0)
    {
      v112 = v36;
      v68 = sub_1D8B13FB0();
      (v124)(v57, *MEMORY[0x1E69A1058], v58);
      v69 = sub_1D89A5668(v57, v68);

      v60(v57, v58);
      v70 = v121;
      if (v69)
      {
        (*(v115 + 8))(v53, v51);
        sub_1D87A14E4(v70, &qword_1ECA665E8, &qword_1D8B2EC10);
        result = (*(v112 + 8))(v122, v119);
        v49 = 5;
        goto LABEL_32;
      }

      v91 = sub_1D8B13FB0();
      (v124)(v57, *MEMORY[0x1E69A1138], v58);
      v92 = sub_1D89A5668(v57, v91);

      v60(v57, v58);
      (*(v115 + 8))(v53, v51);
      sub_1D87A14E4(v70, &qword_1ECA665E8, &qword_1D8B2EC10);
      result = (*(v112 + 8))(v122, v119);
      if (v92)
      {
        goto LABEL_18;
      }

      goto LABEL_31;
    }

    (*(v52 + 8))(v53, v51);
    sub_1D87A14E4(v121, &qword_1ECA665E8, &qword_1D8B2EC10);
    result = (*(v36 + 8))(v122, v119);
LABEL_14:
    v49 = 4;
    goto LABEL_32;
  }

  v116 = v8;
  LODWORD(v110) = *MEMORY[0x1E69A11A0];
  if (v33 == v110)
  {
    v66 = [objc_opt_self() isSAEEnabled];
    v67 = v124;
    if ((v66 & 1) == 0)
    {
      sub_1D87A14E4(v121, &qword_1ECA665E8, &qword_1D8B2EC10);
      result = (*(v36 + 8))(v122, v24);
      goto LABEL_14;
    }
  }

  else
  {
    v67 = v124;
    if (qword_1EE0E43E0 != -1)
    {
      swift_once();
    }

    v73 = sub_1D8B151E0();
    __swift_project_value_buffer(v73, qword_1EE0E43E8);
    v74 = sub_1D8B151C0();
    v75 = sub_1D8B16210();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1D8783000, v74, v75, "Unknown response from GMS availability", v76, 2u);
      v77 = v76;
      v67 = v124;
      MEMORY[0x1DA721330](v77, -1, -1);
    }

    v35 = v24;
    (*(v36 + 8))(v28, v24);
  }

  v78 = v50;
  v79 = v121;
  v80 = v109;
  sub_1D898EF38(v121, v109);
  if ((*(v36 + 48))(v80, 1, v35) == 1)
  {
    sub_1D87A14E4(v79, &qword_1ECA665E8, &qword_1D8B2EC10);
    (*(v36 + 8))(v122, v35);
    goto LABEL_26;
  }

  v81 = v119;
  sub_1D898EF38(v80, v119);
  v82 = v32(v81, v35);
  if (v82 == v34)
  {
    (*(v36 + 96))(v81, v35);
    v83 = v108;
    v84 = v120;
    (*(v67 + 32))(v108, v81, v120);
    v119 = v35;
    v85 = sub_1D8B13F80();
    v87 = v116;
    v86 = v117;
    v88 = v36;
    v89 = v67;
    v90 = v118;
    (*(v116 + 13))(v117, *MEMORY[0x1E69A0F80], v118);
    LODWORD(v124) = sub_1D89A5450(v86, v85);

    (*(v87 + 1))(v86, v90);
    (*(v89 + 8))(v83, v84);
    sub_1D87A14E4(v79, &qword_1ECA665E8, &qword_1D8B2EC10);
    (*(v88 + 8))(v122, v119);
    if ((v124 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v82 != v78)
    {
      v100 = v122;
      if (v82 == v110)
      {
        sub_1D87A14E4(v79, &qword_1ECA665E8, &qword_1D8B2EC10);
        (*(v36 + 8))(v100, v35);
      }

      else
      {
        v101 = *(v36 + 8);
        v102 = v35;
        v101(v81, v35);
        if (qword_1EE0E43E0 != -1)
        {
          swift_once();
        }

        v103 = sub_1D8B151E0();
        __swift_project_value_buffer(v103, qword_1EE0E43E8);
        v104 = sub_1D8B151C0();
        v105 = sub_1D8B16210();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = 0;
          _os_log_impl(&dword_1D8783000, v104, v105, "Unknown partner availability response from GMS availability", v106, 2u);
          MEMORY[0x1DA721330](v106, -1, -1);
        }

        sub_1D87A14E4(v79, &qword_1ECA665E8, &qword_1D8B2EC10);
        v101(v100, v102);
      }

      goto LABEL_26;
    }

    (*(v36 + 96))(v81, v35);
    v93 = v115;
    v94 = v107;
    (*(v115 + 32))(v107, v81, v114);
    v119 = v35;
    v95 = sub_1D8B13FB0();
    v96 = v111;
    v97 = v112;
    v98 = v113;
    (*(v112 + 104))(v111, *MEMORY[0x1E69A1150], v113);
    v99 = sub_1D89A5668(v96, v95);

    (*(v97 + 8))(v96, v98);
    (*(v93 + 8))(v94, v114);
    sub_1D87A14E4(v79, &qword_1ECA665E8, &qword_1D8B2EC10);
    (*(v36 + 8))(v122, v119);
    if ((v99 & 1) == 0)
    {
LABEL_26:
      result = sub_1D87A14E4(v80, &qword_1ECA665E8, &qword_1D8B2EC10);
      v49 = 10;
      goto LABEL_32;
    }
  }

  *v123 = 9;
  return sub_1D87A14E4(v80, &qword_1ECA665E8, &qword_1D8B2EC10);
}

id AskAcmeRequirementManager.init(hasOnboardedACME:)(char a1)
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v4 = result;
    v5 = [result isExternalIntelligenceAllowed];

    *(v1 + 17) = v5 ^ 1;
    v6 = [objc_opt_self() sharedInstance];
    *(v1 + 48) = sub_1D881F764(0, &unk_1EE0E3778, 0x1E69D8A58);
    *(v1 + 56) = &off_1F5430390;
    *(v1 + 24) = v6;
    *(v1 + 16) = a1 & 1;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D898DD8C()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    v4 = [result isExternalIntelligenceAllowed];

    *(v3 + 17) = v4 ^ 1;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static AskAcmeRequirementManager.shouldShowAskAcmeUI.getter()
{
  v0 = sub_1D8B13FC0();
  v40 = *(v0 - 8);
  v41 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v39 = v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D8B14060();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B13FE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665E8, &qword_1D8B2EC10);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v36 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v36 - v17;
  if (qword_1EE0E9958 != -1)
  {
    swift_once();
  }

  v43 = qword_1EE0E9960;
  v44 = word_1EE0E9968;
  v45 = byte_1EE0E996A;
  v42 = 5;
  (*(v3 + 104))(v5, *MEMORY[0x1E69A12A0], v2);

  GreymatterAvailability.availability(_:languageOption:)(v9, v18, &v42, v5);
  (*(v3 + 8))(v5, v2);

  v19 = *(v7 + 8);
  v19(v9, v6);
  sub_1D898EF38(v18, v16);
  if ((*(v7 + 48))(v16, 1, v6) != 1)
  {
    sub_1D898EF38(v16, v13);
    v21 = (*(v7 + 88))(v13, v6);
    if (v21 == *MEMORY[0x1E69A0EF8])
    {
      sub_1D87A14E4(v18, &qword_1ECA665E8, &qword_1D8B2EC10);
      v19(v13, v6);
      v20 = 1;
      goto LABEL_9;
    }

    if (v21 == *MEMORY[0x1E69A0F00])
    {
      (*(v7 + 96))(v13, v6);
      (*(v40 + 32))(v39, v13, v41);
      v38 = sub_1D8B13FB0();
      v36[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665F0, &qword_1D8B2EC18);
      v22 = sub_1D8B13FA0();
      v23 = *(*(v22 - 8) + 72);
      v24 = *(*(v22 - 8) + 80);
      v37 = *(v22 - 8);
      v25 = v37;
      v26 = (v24 + 32) & ~v24;
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1D8B1AB80;
      v28 = *(v25 + 104);
      v28(v27 + v26, *MEMORY[0x1E69A1158], v22);
      v28(v27 + v26 + v23, *MEMORY[0x1E69A1150], v22);
      v38 = sub_1D88BAB88(v27, v38);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1D8B1AB90;
      v28(v29 + v26, *MEMORY[0x1E69A10B8], v22);
      v30 = sub_1D8A56B7C(v29);
      swift_setDeallocating();
      (*(v37 + 8))(v29 + v26, v22);
      swift_deallocClassInstance();
      v20 = sub_1D89510C8(v38, v30);

      (*(v40 + 8))(v39, v41);
      sub_1D87A14E4(v18, &qword_1ECA665E8, &qword_1D8B2EC10);
      goto LABEL_9;
    }

    if (v21 != *MEMORY[0x1E69A11A0])
    {
      v19(v13, v6);
      if (qword_1EE0E43E0 != -1)
      {
        swift_once();
      }

      v32 = sub_1D8B151E0();
      __swift_project_value_buffer(v32, qword_1EE0E43E8);
      v33 = sub_1D8B151C0();
      v34 = sub_1D8B16210();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1D8783000, v33, v34, "Unknown partner availability response from GMS availability", v35, 2u);
        MEMORY[0x1DA721330](v35, -1, -1);
      }
    }
  }

  sub_1D87A14E4(v18, &qword_1ECA665E8, &qword_1D8B2EC10);
  v20 = 1;
LABEL_9:
  sub_1D87A14E4(v16, &qword_1ECA665E8, &qword_1D8B2EC10);
  return v20 & 1;
}

uint64_t static AskAcmeRequirementManager.askACMERequirementAlertDescription(_:)(_BYTE *a1)
{
  v2 = sub_1D8B15910();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v41[4] = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v41[3] = v41 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1D8B13350();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D8B15930();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v19 = 0;
  v20 = *a1;
  if (v20 > 5)
  {
    if (v20 - 6 < 2)
    {
      return v19;
    }

    if (v20 == 8)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }
  }

  else if (*a1 > 2u)
  {
    v20 = 3;
  }

  else if (*a1 && v20 != 1)
  {
    return v19;
  }

  v41[0] = v18;
  v41[1] = v17;
  v41[2] = v16;
  sub_1D8B158D0();
  v41[5] = sub_1D881F764(0, &qword_1EE0E36B0, 0x1E696AAE8);
  if (!sub_1D8B163E0())
  {
    v21 = [objc_opt_self() mainBundle];
  }

  sub_1D8B132F0();
  v22 = sub_1D8B159D0();
  v24 = v23;
  if (v20 == 4)
  {

    v42 = 0xD000000000000024;
    sub_1D8B158D0();
    if (!sub_1D8B163E0())
    {
      v29 = [objc_opt_self() mainBundle];
    }

    sub_1D8B132F0();
    v19 = sub_1D8B159D0();
    v26 = 0x80000001D8B45140;
    goto LABEL_21;
  }

  v25 = v22;
  if (v20 != 3)
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_1D8B16720();

    v44 = 543912769;
    v45 = 0xE400000000000000;
    MEMORY[0x1DA71EFA0](v25, v24);
    MEMORY[0x1DA71EFA0](0x7473657220736920, 0xEF2E646574636972);
    v26 = v45;
    v42 = v44;
    if (v20)
    {
      if (v20 == 1)
      {
        sub_1D8B15900();
        sub_1D8B158F0();
        sub_1D8B158E0();

        sub_1D8B158F0();
        sub_1D8B15920();
        if (!sub_1D8B163E0())
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_1D8B15900();
        sub_1D8B158F0();
        sub_1D8B158E0();

        sub_1D8B158F0();
        sub_1D8B15920();
        if (!sub_1D8B163E0())
        {
LABEL_29:
          v31 = [objc_opt_self() mainBundle];
        }
      }
    }

    else
    {
      sub_1D8B15900();
      sub_1D8B158F0();
      sub_1D8B158E0();

      sub_1D8B158F0();
      sub_1D8B15920();
      if (!sub_1D8B163E0())
      {
        goto LABEL_29;
      }
    }

    sub_1D8B132F0();
    v19 = sub_1D8B159D0();
    v30 = v32;

    goto LABEL_31;
  }

  v26 = 0x80000001D8B45230;
  sub_1D8B15900();
  sub_1D8B158F0();
  sub_1D8B158E0();

  v42 = 0xD000000000000024;
  sub_1D8B158F0();
  sub_1D8B15920();
  if (!sub_1D8B163E0())
  {
    v27 = [objc_opt_self() mainBundle];
  }

  sub_1D8B132F0();
  v19 = sub_1D8B159D0();
LABEL_21:
  v30 = v28;
LABEL_31:

  if (qword_1EE0E4440 != -1)
  {
    swift_once();
  }

  v33 = sub_1D8B151E0();
  __swift_project_value_buffer(v33, qword_1EE0E4448);

  v34 = sub_1D8B151C0();
  v35 = sub_1D8B161F0();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v44 = v37;
    *v36 = 136315394;
    v38 = sub_1D89AC714(v19, v30, &v44);

    *(v36 + 4) = v38;
    *(v36 + 12) = 2080;
    v39 = sub_1D89AC714(v42, v26, &v44);

    *(v36 + 14) = v39;
    _os_log_impl(&dword_1D8783000, v34, v35, "Presenting ACME error: %s, %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v37, -1, -1);
    MEMORY[0x1DA721330](v36, -1, -1);
  }

  else
  {
  }

  return v19;
}

uint64_t AskAcmeRequirementManager.__deallocating_deinit()
{
  sub_1D898EFA8(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1D898EEFC@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for AskAcmeRequirementManager();
  result = sub_1D8B15440();
  *a3 = result;
  return result;
}

uint64_t sub_1D898EF38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665E8, &qword_1D8B2EC10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D898F000()
{
  result = qword_1ECA665F8;
  if (!qword_1ECA665F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA665F8);
  }

  return result;
}

unint64_t sub_1D898F058()
{
  result = qword_1ECA66600;
  if (!qword_1ECA66600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66600);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AskAcmeAlert(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AskAcmeAlert(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D898F210(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D898F224(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t dispatch thunk of AskAcmeRequirementManager.refreshRestrictions()()
{
  v4 = (*(*v0 + 168) + **(*v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D8864FBC;

  return v4();
}

uint64_t sub_1D898F4B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D8B13350();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D8B15930();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1D8B158D0();
  sub_1D87D1F20();
  if (!sub_1D8B163E0())
  {
    v4 = [objc_opt_self() mainBundle];
  }

  sub_1D8B132F0();
  return sub_1D8B159D0();
}

void AskACMESource.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_1D8B16930();

  *a3 = v4 != 0;
}

unint64_t sub_1D898F660()
{
  result = qword_1ECA66608;
  if (!qword_1ECA66608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66608);
  }

  return result;
}

uint64_t sub_1D898F6B4()
{
  sub_1D8B16D20();
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

uint64_t sub_1D898F720(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

void sub_1D898F770(BOOL *a2@<X8>)
{
  v3 = sub_1D8B16930();

  *a2 = v3 != 0;
}

CGImageRef CameraSourceFrame.cgImage.getter(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  (*(a2 + 40))(&pixelBuffer);
  if (v18 == 1)
  {
    (*(a2 + 32))(&pixelBuffer, a1, a2);
    v4 = pixelBuffer;
    if (v17 > 1u)
    {
      if (v17 == 2)
      {
        if (qword_1ECA62140 != -1)
        {
          swift_once();
        }

        v5 = sub_1D8B151E0();
        __swift_project_value_buffer(v5, qword_1ECA669C0);
        v6 = v4;
        v7 = sub_1D8B151C0();
        v8 = sub_1D8B16210();
        sub_1D88C3978(v4, 2u);
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          imageOut = v10;
          *v9 = 136315138;
          swift_getErrorValue();
          v11 = sub_1D8B16C90();
          v13 = sub_1D89AC714(v11, v12, &imageOut);

          *(v9 + 4) = v13;
          _os_log_impl(&dword_1D8783000, v7, v8, "Unable to get CGImage copy: %s", v9, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v10);
          MEMORY[0x1DA721330](v10, -1, -1);
          MEMORY[0x1DA721330](v9, -1, -1);
          sub_1D88C3978(v4, 2u);
        }

        else
        {

          sub_1D88C3978(v4, 2u);
        }
      }

      return 0;
    }

    else if (!v17)
    {
      imageOut = 0;
      VTCreateCGImageFromCVPixelBuffer(pixelBuffer, 0, &imageOut);
      sub_1D88C3978(v4, 0);
      return imageOut;
    }

    return v4;
  }

  else
  {
    result = sub_1D8B168C0();
    __break(1u);
  }

  return result;
}

IOSurfaceRef CameraSourceFrame.surface.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))(&pixelBuffer);
  if (v13 == 1)
  {
    (*(a2 + 32))(&pixelBuffer, a1, a2);
    v4 = pixelBuffer;
    v5 = v12;
    if (v12)
    {
      v6 = pixelBuffer;
LABEL_4:
      sub_1D88C3978(v6, v5);
      return 0;
    }

    IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
    if (!IOSurface)
    {
      v6 = v4;
      v5 = 0;
      goto LABEL_4;
    }

    v9 = IOSurface;
    v10 = IOSurface;
    sub_1D88C3978(v4, 0);
    return v9;
  }

  else
  {
    result = sub_1D8B168C0();
    __break(1u);
  }

  return result;
}

CGImageRef_optional __swiftcall CameraSourceFrame.cgImageCroppedInside(normalized:)(__C::CGRect normalized)
{
  v3 = v2;
  v4 = v1;
  height = normalized.size.height;
  width = normalized.size.width;
  y = normalized.origin.y;
  x = normalized.origin.x;
  (*(v2 + 40))(v18);
  if (v19 == 1)
  {
    v9 = CameraSourceFrame.cgImage.getter(v4, v3);
    if (!v9)
    {
      return 0;
    }

    v10 = v9;
    v11 = CGImageGetWidth(v9);
    v12 = CGImageGetHeight(v10);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v13 = CGRectGetMinX(v20) * v11;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v14 = CGRectGetMinY(v21) * v12;
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v15 = CGRectGetWidth(v22) * v11;
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v24.size.height = CGRectGetHeight(v23) * v12;
    v24.origin.x = v13;
    v24.origin.y = v14;
    v24.size.width = v15;
    v16 = CGImageCreateWithImageInRect(v10, v24);

    return v16;
  }

  else
  {
    result.value = sub_1D8B168C0();
    __break(1u);
  }

  return result;
}

__C::CGRect __swiftcall CGRect.init(centeredAt:size:)(CGPoint centeredAt, CGSize size)
{
  v2 = centeredAt.x - size.width * 0.5;
  v3 = centeredAt.y - size.height * 0.5;
  result.size.height = size.height;
  result.size.width = size.width;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void CGRect.corners.getter(CGFloat *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  MinX = CGRectGetMinX(*&a2);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  MinY = CGRectGetMinY(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  MaxX = CGRectGetMaxX(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  v10 = CGRectGetMinY(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  v11 = CGRectGetMinX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  MaxY = CGRectGetMaxY(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  v13 = CGRectGetMaxX(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  v14 = CGRectGetMaxY(v24);
  *a1 = MinX;
  a1[1] = MinY;
  a1[2] = MaxX;
  a1[3] = v10;
  a1[4] = v11;
  a1[5] = MaxY;
  a1[6] = v13;
  a1[7] = v14;
}

CGImageRef_optional __swiftcall CGImageRef.rotateCounterClockwiseBy90Degrees()()
{
  v1 = CGImageGetColorSpace(v0);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  Height = CGImageGetHeight(v0);
  Width = CGImageGetWidth(v0);
  BitsPerComponent = CGImageGetBitsPerComponent(v0);
  BitmapInfo = CGImageGetBitmapInfo(v0);
  v7 = __CGBitmapContextCreate_1(Height, Width, BitsPerComponent, v2, BitmapInfo);
  if (!v7)
  {

LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EA0, &qword_1D8B2CF90);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D8B1AB90;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 32) = 0xD000000000000035;
    *(v18 + 40) = 0x80000001D8B45340;
    sub_1D8B16CF0();

    return 0;
  }

  v8 = v7;
  v9 = vcvtd_n_f64_s64(CGImageGetHeight(v0), 1uLL);
  v10 = CGImageGetWidth(v0);
  CGContextTranslateCTM(v8, v9, vcvtd_n_f64_s64(v10, 1uLL));
  CGContextRotateCTM(v8, -1.57079633);
  result.value = CGImageGetWidth(v0);
  v12 = -result.value;
  if (__OFSUB__(0, result.value))
  {
    __break(1u);
  }

  else
  {
    result.value = CGImageGetHeight(v0);
    if (!__OFSUB__(0, result.value))
    {
      v13 = v12 / 2;
      v14 = -result.value;
      v15 = CGImageGetWidth(v0);
      v16 = CGImageGetHeight(v0);
      sub_1D8B161D0(v13, (v14 / 2), v15, v16);
      Image = CGBitmapContextCreateImage(v8);

      return Image;
    }
  }

  __break(1u);
  return result;
}

uint64_t CGImageRef.toPNG()()
{
  v1 = v0;
  v2 = sub_1D8B14BE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E695DF88]) init];
  sub_1D8B14BD0();
  sub_1D8B14BC0();
  (*(v3 + 8))(v5, v2);
  v7 = sub_1D8B15940();

  v8 = CGImageDestinationCreateWithData(v6, v7, 1uLL, 0);

  if (v8)
  {
    CGImageDestinationAddImage(v8, v1, 0);
    if (CGImageDestinationFinalize(v8))
    {
      v9 = v6;
      v10 = sub_1D8B13050();

      return v10;
    }

    if (qword_1EE0E4440 != -1)
    {
      swift_once();
    }

    v16 = sub_1D8B151E0();
    __swift_project_value_buffer(v16, qword_1EE0E4448);
    v17 = sub_1D8B151C0();
    v18 = sub_1D8B16210();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D8783000, v17, v18, "Error: Unable to finalize image destination.", v19, 2u);
      MEMORY[0x1DA721330](v19, -1, -1);
    }
  }

  else
  {
    if (qword_1EE0E4440 != -1)
    {
      swift_once();
    }

    v12 = sub_1D8B151E0();
    __swift_project_value_buffer(v12, qword_1EE0E4448);
    v13 = sub_1D8B151C0();
    v14 = sub_1D8B16210();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D8783000, v13, v14, "Error: Unable to create image destination for PNG conversion.", v15, 2u);
      MEMORY[0x1DA721330](v15, -1, -1);
    }
  }

  return 0;
}

double sub_1D8990398(__n128 a1, __n128 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D18, &qword_1D8B22CF8);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  v7 = v6 - 32;
  if (v6 < 32)
  {
    v7 = v6 - 25;
  }

  *(v5 + 16) = 2;
  *(v5 + 24) = 2 * (v7 >> 3);
  *(v5 + 32) = xmmword_1D8B190D0;
  v33 = MEMORY[0x1E69E7CC0];
  v8 = sub_1D87F4140(0, 2, 0);
  v9 = *(v5 + 16);
  if (!v9)
  {
    goto LABEL_20;
  }

  v8 = v5;
  v3 = *(v5 + 32);
  if (v3 > 1)
  {
    goto LABEL_21;
  }

  v10 = v33;
  v4 = *(v33 + 16);
  v9 = *(v33 + 24);
  v2 = v4 + 1;
  if (v4 >= v9 >> 1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v31 = a1;
    v11 = *(&v31 & 0xFFFFFFFFFFFFFFF7 | (8 * (v3 & 1)));
    v32 = a2;
    v12 = *(&v32 & 0xFFFFFFFFFFFFFFF7 | (8 * (v3 & 1)));
    *(v10 + 16) = v2;
    *(v10 + 8 * v4 + 32) = (v11 - v12) * (v11 - v12);
    v9 = *(v8 + 2);
    if (v9 < 2)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v3 = *(v8 + 5);
    if (v3 <= 1)
    {
      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    v26 = v8;
    sub_1D87F4140((v9 > 1), v2, 1);
    v8 = v26;
    v10 = v33;
  }

  v33 = v10;
  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1D87F4140((v13 > 1), v14 + 1, 1);
    v10 = v33;
  }

  v29 = a1;
  v15 = *(&v29 & 0xFFFFFFFFFFFFFFF7 | (8 * (v3 & 1)));
  v30 = a2;
  v16 = *(&v30 & 0xFFFFFFFFFFFFFFF7 | (8 * (v3 & 1)));
  *(v10 + 16) = v14 + 1;
  *(v10 + 8 * v14 + 32) = (v15 - v16) * (v15 - v16);

  v17 = *(v10 + 16);
  if (v17)
  {
    if (v17 <= 3)
    {
      v18 = 0;
      v19 = 0.0;
      goto LABEL_17;
    }

    v18 = v17 & 0x7FFFFFFFFFFFFFFCLL;
    v20 = (v10 + 48);
    v19 = 0.0;
    v21 = v17 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v19 = v19 + *(v20 - 2) + *(v20 - 1) + *v20 + v20[1];
      v20 += 4;
      v21 -= 4;
    }

    while (v21);
    if (v17 != v18)
    {
LABEL_17:
      v22 = v17 - v18;
      v23 = (v10 + 8 * v18 + 32);
      do
      {
        v24 = *v23++;
        v19 = v19 + v24;
        --v22;
      }

      while (v22);
    }
  }

  else
  {
    v19 = 0.0;
  }

  return sqrt(v19);
}

double CGPoint.distance(to:)(double a1, double a2, __n128 a3, double a4)
{
  v4.n128_f64[0] = a1;
  v4.n128_f64[1] = a2;
  a3.n128_f64[1] = a4;
  return sub_1D8990398(a3, v4);
}

CGPoint __swiftcall CGPoint.scale(to:)(CGSize to)
{
  v3 = to.width * v1;
  v4 = to.height * v2;
  result.y = v4;
  result.x = v3;
  return result;
}

CGPoint __swiftcall CGPoint.normalize(by:)(CGSize by)
{
  v3 = v1 / by.width;
  v4 = v2 / by.height;
  result.y = v4;
  result.x = v3;
  return result;
}

double CGRect.center.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

__C::CGRect __swiftcall CGRect.normalizedRotateToOrientation(_:sourceOrientation:)(VisualIntelligenceCore::Angle _, VisualIntelligenceCore::Angle sourceOrientation)
{
  v23 = v4;
  v24 = v5;
  v8 = *v2;
  v9 = *v3;
  CGAffineTransformMakeTranslation(&t1, -0.5, -0.5);
  tx = t1.tx;
  ty = t1.ty;
  v17 = *&t1.c;
  v18 = *&t1.a;
  CGAffineTransformMakeRotation(&t1, -(v8 - v9));
  v12 = t1.tx;
  v13 = t1.ty;
  v19 = *&t1.c;
  v20 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, 0.5, 0.5);
  v14 = t1.tx;
  v15 = t1.ty;
  v21 = *&t1.c;
  v22 = *&t1.a;
  v16 = *(MEMORY[0x1E695EFD0] + 16);
  *&t1.a = *MEMORY[0x1E695EFD0];
  *&t1.c = v16;
  *&t1.tx = *(MEMORY[0x1E695EFD0] + 32);
  *&t2.a = v18;
  *&t2.c = v17;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v25, &t1, &t2);
  t1 = v25;
  *&t2.a = v20;
  *&t2.c = v19;
  t2.tx = v12;
  t2.ty = v13;
  CGAffineTransformConcat(&v25, &t1, &t2);
  t1 = v25;
  *&t2.a = v22;
  *&t2.c = v21;
  t2.tx = v14;
  t2.ty = v15;
  CGAffineTransformConcat(&v25, &t1, &t2);
  t1 = v25;
  v28.origin.x = _.radiansValue;
  v28.origin.y = sourceOrientation.radiansValue;
  v28.size.width = v23;
  v28.size.height = v24;
  return CGRectApplyAffineTransform(v28, &t1);
}

Swift::String __swiftcall CGFloat.string(withFormat:)(Swift::String withFormat)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B98, &qword_1D8B267F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D8B1AB90;
  *(v3 + 56) = MEMORY[0x1E69E7DE0];
  *(v3 + 64) = sub_1D8990F78();
  *(v3 + 32) = v2;

  v4 = sub_1D8B159A0();
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_1D89908A8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B98, &qword_1D8B267F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D8B1AB90;
  v7 = MEMORY[0x1E69E7DE0];
  *(v6 + 56) = MEMORY[0x1E69E7DE0];
  v8 = sub_1D8990F78();
  *(v6 + 64) = v8;
  *(v6 + 32) = a3;
  v9 = sub_1D8B159A0();
  MEMORY[0x1DA71EFA0](v9);

  MEMORY[0x1DA71EFA0](8236, 0xE200000000000000);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D8B1AB90;
  *(v10 + 56) = v7;
  *(v10 + 64) = v8;
  *(v10 + 32) = a4;
  v11 = sub_1D8B159A0();
  MEMORY[0x1DA71EFA0](v11);

  MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
  return 40;
}

Swift::String __swiftcall CGRect.string(withFormat:)(Swift::String withFormat)
{
  object = withFormat._object;
  countAndFlagsBits = withFormat._countAndFlagsBits;
  v3 = CGSize.string(withFormat:)(withFormat)._countAndFlagsBits;
  MEMORY[0x1DA71EFA0](v3);

  MEMORY[0x1DA71EFA0](8236, 0xE200000000000000);
  v4._countAndFlagsBits = countAndFlagsBits;
  v4._object = object;
  v5 = CGSize.string(withFormat:)(v4)._countAndFlagsBits;
  MEMORY[0x1DA71EFA0](v5);

  MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
  v6 = 40;
  v7 = 0xE100000000000000;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t CGImageRef.toHEIC(compressionQuality:)(double a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
  v4 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63530, &qword_1D8B1EB18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  sub_1D8B15970();
  v6 = sub_1D8B15940();

  *(inited + 32) = v6;
  *(inited + 64) = MEMORY[0x1E69E7DE0];
  *(inited + 40) = a1;
  sub_1D893C994(inited);
  swift_setDeallocating();
  sub_1D87CAC2C(inited + 32);
  v7 = CGImageGetColorSpace(v1);
  if (v7 || (v7 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0])) != 0)
  {
    v8 = v7;
    v9 = *MEMORY[0x1E695F910];
    type metadata accessor for CIImageRepresentationOption(0);
    sub_1D87CAC94();
    v10 = sub_1D8B15710();

    v11 = [v4 HEIFRepresentationOfImage:v3 format:v9 colorSpace:v8 options:v10];

    if (v11)
    {
      v12 = sub_1D8B13050();

      return v12;
    }
  }

  else
  {

    if (qword_1EE0E4440 != -1)
    {
      swift_once();
    }

    v14 = sub_1D8B151E0();
    __swift_project_value_buffer(v14, qword_1EE0E4448);
    v15 = sub_1D8B151C0();
    v16 = sub_1D8B16210();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D8783000, v15, v16, "Error: Unable to determine color space for the image.", v17, 2u);
      MEMORY[0x1DA721330](v17, -1, -1);
    }
  }

  return 0;
}

CGColorSpaceRef CGImageRef.resized(toMaxDimension:)(double a1)
{
  Width = CGImageGetWidth(Image);
  Height = CGImageGetHeight(Image);
  if (Width <= a1 && Height <= a1)
  {
    v15 = Image;
    return Image;
  }

  if (a1 / Height >= a1 / Width)
  {
    v6 = a1 / Width;
  }

  else
  {
    v6 = a1 / Height;
  }

  result = CGImageGetColorSpace(Image);
  if (!result)
  {
LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EA0, &qword_1D8B2CF90);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D8B1AB90;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 32) = 0xD000000000000035;
    *(v16 + 40) = 0x80000001D8B45380;
    sub_1D8B16CF0();

    return 0;
  }

  v8 = v6 * Width;
  if (v6 * Width <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v6 * Height;
  if (COERCE__INT64(fabs(v6 * Width)) > 0x7FEFFFFFFFFFFFFFLL || (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v9 < 9.22337204e18)
  {
    v10 = result;
    BitsPerComponent = CGImageGetBitsPerComponent(Image);
    BitmapInfo = CGImageGetBitmapInfo(Image);
    v13 = __CGBitmapContextCreate_1(v8, v9, BitsPerComponent, v10, BitmapInfo);
    if (v13)
    {
      v14 = v13;
      CGContextSetInterpolationQuality(v13, kCGInterpolationHigh);
      sub_1D8B161D0(0.0, 0.0, v6 * Width, v9);
      Image = CGBitmapContextCreateImage(v14);

      return Image;
    }

    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1D8990F78()
{
  result = qword_1ECA66610;
  if (!qword_1ECA66610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66610);
  }

  return result;
}

uint64_t TimestampDataBuffer.append(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 232);
  v7 = sub_1D8B16470();
  v21 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v19 - v12;
  if (sub_1D899430C())
  {
    return sub_1D89917B0(a1, a2);
  }

  v20 = a2;
  v22 = v2;
  swift_getWitnessTable();
  sub_1D8B15800();
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    (*(v21 + 8))(v10, v7);
    a2 = v20;
    return sub_1D89917B0(a1, a2);
  }

  (*(v11 + 32))(v13, v10, v6);
  v15 = *(v5 + 240);
  v16 = *(v15 + 8);
  v17 = v16(v6, v15);
  if (v17 >= v16(v6, v15))
  {
    result = sub_1D8B168C0();
    __break(1u);
  }

  else
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v5;
    _s22VisualIntelligenceCore19TimestampDataBufferC6insert_19replacementFunctionxSgx_xx_xtctF_0(a1, sub_1D89943A0, v18, v20);

    return (*(v11 + 8))(v13, v6);
  }

  return result;
}

void sub_1D899136C(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v9 = v3[2];
  v10 = *(v9 + 2);
  if (!v10)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[2] = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

LABEL_21:
    v17 = 1;
    goto LABEL_22;
  }

  v11 = v3[3];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = v3[4];
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v13 == 0x8000000000000000 && v14 == -1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = v13 % v14;
  v3[3] = v13 % v14;
  if (v10 >= v14)
  {
    if (v4 < v10)
    {
      v5 = 16 * v4;
      v22 = &v9[16 * v4];
      v23 = *(v22 + 4);
      *a3 = v23;
      v24 = v22[40];
      *(a3 + 8) = v24;
      swift_beginAccess();
      sub_1D881F4C0(v23, v24);
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v3[2] = v9;
      if (v25)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    v9 = sub_1D89394C8(v9);
    v3[2] = v9;
LABEL_17:
    if (v4 >= *(v9 + 2))
    {
      __break(1u);
    }

    else
    {
      v26 = &v9[v5];
      v27 = *&v9[v5 + 32];
      *(v26 + 4) = a1;
      v28 = v9[v5 + 40];
      v26[40] = a2;
      sub_1D881F4C0(a1, a2);
      v3[2] = v9;
      swift_endAccess();
      sub_1D8997618(v27, v28);
    }

    return;
  }

  swift_beginAccess();
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v3[2] = v9;
  if ((v16 & 1) == 0)
  {
    v17 = v10 + 1;
LABEL_22:
    v9 = sub_1D87CA1C0(0, v17, 1, v9);
    v3[2] = v9;
  }

LABEL_12:
  v20 = *(v9 + 2);
  v19 = *(v9 + 3);
  if (v20 >= v19 >> 1)
  {
    v9 = sub_1D87CA1C0((v19 > 1), v20 + 1, 1, v9);
  }

  *(v9 + 2) = v20 + 1;
  v21 = &v9[16 * v20];
  *(v21 + 4) = a1;
  v21[40] = a2;
  v3[2] = v9;
  swift_endAccess();
  *a3 = 0;
  *(a3 + 8) = -8;
  sub_1D881F4C0(a1, a2);
}

uint64_t sub_1D89915AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v6 = v2[2];
  v7 = *(v6 + 16);
  if (!v7)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    v2[2] = v6;
    if (result)
    {
      goto LABEL_12;
    }

LABEL_21:
    v14 = 1;
    goto LABEL_22;
  }

  v8 = v2[3];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = v2[4];
  if (!v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v10 == 0x8000000000000000 && v11 == -1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v3 = v10 % v11;
  v2[3] = v10 % v11;
  if (v7 >= v11)
  {
    if (v3 < v7)
    {
      v22 = v6 + 88 * v3;
      v23 = *(v22 + 80);
      *(a2 + 32) = *(v22 + 64);
      *(a2 + 48) = v23;
      *(a2 + 64) = *(v22 + 96);
      *(a2 + 80) = *(v22 + 112);
      v24 = *(v22 + 48);
      *a2 = *(v22 + 32);
      *(a2 + 16) = v24;
      result = swift_isUniquelyReferenced_nonNull_native();
      v2[2] = v6;
      if (result)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    result = sub_1D89394DC(v6);
    v6 = result;
LABEL_17:
    if (v3 >= *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      v25 = *(a1 + 48);
      v26 = v6 + 88 * v3;
      *(v26 + 64) = *(a1 + 32);
      *(v26 + 80) = v25;
      *(v26 + 96) = *(a1 + 64);
      *(v26 + 112) = *(a1 + 80);
      v27 = *(a1 + 16);
      *(v26 + 32) = *a1;
      *(v26 + 48) = v27;
      v2[2] = v6;
      *(a2 + 88) = 0;
    }

    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v2[2] = v6;
  if ((result & 1) == 0)
  {
    v14 = v7 + 1;
LABEL_22:
    result = sub_1D87CA2CC(0, v14, 1, v6);
    v6 = result;
    v2[2] = result;
  }

LABEL_12:
  v16 = *(v6 + 16);
  v15 = *(v6 + 24);
  if (v16 >= v15 >> 1)
  {
    result = sub_1D87CA2CC((v15 > 1), v16 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v16 + 1;
  v17 = v6 + 88 * v16;
  v18 = *(a1 + 16);
  *(v17 + 32) = *a1;
  *(v17 + 48) = v18;
  v19 = *(a1 + 32);
  v20 = *(a1 + 48);
  v21 = *(a1 + 64);
  *(v17 + 112) = *(a1 + 80);
  *(v17 + 80) = v20;
  *(v17 + 96) = v21;
  *(v17 + 64) = v19;
  v2[2] = v6;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  return result;
}

uint64_t sub_1D89917B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v22 - v8;
  swift_beginAccess();
  v24 = v2[2];
  sub_1D8B15DB0();
  swift_getWitnessTable();
  result = sub_1D8B16160();
  if (result)
  {
    (*(v7 + 16))(v9, a1, v6);
    swift_beginAccess();
    sub_1D8B15D90();
    swift_endAccess();
    v11 = 1;
    return (*(v7 + 56))(a2, v11, 1, v6);
  }

  v12 = v2[3];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v2[4];
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 != 0x8000000000000000 || v15 != -1)
  {
    v23 = a1;
    v16 = a2;
    v17 = v14 % v15;
    v2[3] = v14 % v15;
    swift_beginAccess();

    v18 = sub_1D8B15D80();

    if (v18 >= v15)
    {
      swift_beginAccess();

      a2 = v16;
      sub_1D8B15DE0();

      swift_beginAccess();
      sub_1D8B15D40();
      v19 = v2[2];
      sub_1D8996D50(v17, v3[2], v6);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v21 = v19 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v21 = v19;
      }

      (*(v7 + 24))(v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v23, v6);
      swift_endAccess();
      v11 = 0;
    }

    else
    {
      (*(v7 + 16))(v9, v23, v6);
      swift_beginAccess();
      sub_1D8B15D90();
      swift_endAccess();
      v11 = 1;
      a2 = v16;
    }

    return (*(v7 + 56))(a2, v11, 1, v6);
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1D8991AF0(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2 >> 5;
  v8 = *&a1;
  if (v7 == 2)
  {
    *v59 = a1;
    CVDetection.detection.getter(&v51);
    v9 = v53;
    v10 = v54;
    __swift_project_boxed_opaque_existential_1(&v51, v53);
    v11 = (*(v10 + 88))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(&v51);
    v8 = *&v11;
  }

  if ((~v8 & 0x7FF0000000000000) == 0 && (v8 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    goto LABEL_47;
  }

  if (v7 <= 1)
  {
    v12 = a1;
  }

  else if (v7 == 2)
  {
    *v59 = a1;
    CVDetection.detection.getter(&v51);
    v13 = v53;
    v14 = v54;
    __swift_project_boxed_opaque_existential_1(&v51, v53);
    v12 = (*(v14 + 88))(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(&v51);
  }

  else
  {
    v12 = a1;
  }

  if (v12 == -INFINITY)
  {
LABEL_47:
    sub_1D8B168C0();
    __break(1u);
    return;
  }

  swift_beginAccess();
  v15 = *(*(a3 + 16) + 16);
  if (!v15)
  {
    sub_1D899136C(*&a1, a2, a4);
    return;
  }

  sub_1D8AC1168(v15 - 1, &v51);
  v16 = v51;
  v17 = v52;
  sub_1D881F4C0(v51, v52);
  sub_1D8997618(v16, v17);
  if (v17 >> 5 == 2)
  {
    v57 = v16;
    CVDetection.detection.getter(&v51);
    v19 = v53;
    v20 = v54;
    __swift_project_boxed_opaque_existential_1(&v51, v53);
    v18 = (*(v20 + 88))(v19, v20);
    __swift_destroy_boxed_opaque_existential_1(&v51);
    if (v7 <= 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v18 = *&v16;
    if (v7 <= 1)
    {
      goto LABEL_19;
    }
  }

  if (v7 == 2)
  {
    *&v57 = a1;
    CVDetection.detection.getter(&v51);
    v23 = v53;
    v24 = v54;
    __swift_project_boxed_opaque_existential_1(&v51, v53);
    v25 = (*(v24 + 88))(v23, v24);
    __swift_destroy_boxed_opaque_existential_1(&v51);
    if (v18 < v25)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

LABEL_19:
  if (v18 < a1)
  {
LABEL_20:
    sub_1D899136C(*&a1, a2, a4);
    v21 = v16;
    v22 = v17;
LABEL_21:
    sub_1D8997618(v21, v22);
    return;
  }

LABEL_23:
  if (v7 == 2)
  {
    *&v57 = a1;
    CVDetection.detection.getter(&v51);
    v38 = v53;
    v39 = v54;
    __swift_project_boxed_opaque_existential_1(&v51, v53);
    v40 = (*(v39 + 88))(v38, v39);
    __swift_destroy_boxed_opaque_existential_1(&v51);
    v26 = v40;
  }

  else
  {
    v26 = a1;
  }

  sub_1D8992A00(v26);
  if (v28)
  {
    if (*(*(a3 + 16) + 16) != *(a3 + 32))
    {
      sub_1D8993940(*&a1, a2, 0);
    }

    v29 = v16;
    v30 = v17;
    goto LABEL_29;
  }

  v49 = v27;
  sub_1D8AC1168(v27, &v57);
  v31 = v57;
  v48 = v58;
  if ((v58 & 0xE0) == 0x40)
  {
    v55 = v57;
    CVDetection.detection.getter(&v51);
    v47 = v31;
    v33 = v53;
    v32 = v54;
    __swift_project_boxed_opaque_existential_1(&v51, v53);
    v46 = *(v32 + 88);
    sub_1D881F4C0(*&a1, a2);
    v34 = v33;
    v31 = v47;
    v35 = v46(v34, v32);
    __swift_destroy_boxed_opaque_existential_1(&v51);
    if (v7 <= 1)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v35 = *&v57;
    sub_1D881F4C0(*&a1, a2);
    if (v7 <= 1)
    {
      goto LABEL_35;
    }
  }

  if (v7 == 2)
  {
    v55 = *&a1;
    CVDetection.detection.getter(&v51);
    v41 = v31;
    v42 = v53;
    v43 = v54;
    __swift_project_boxed_opaque_existential_1(&v51, v53);
    v44 = v42;
    v31 = v41;
    v45 = (*(v43 + 88))(v44, v43);
    __swift_destroy_boxed_opaque_existential_1(&v51);
    if (v35 == v45)
    {
      goto LABEL_36;
    }

    goto LABEL_42;
  }

LABEL_35:
  if (v35 != a1)
  {
LABEL_42:
    if (*(*(a3 + 16) + 16) == *(a3 + 32))
    {
      sub_1D8994458(*&a1, a2, v49, a4);
      sub_1D8997618(v16, v17);
      sub_1D8997618(*&a1, a2);
      v21 = v31;
      v22 = v48;
      goto LABEL_21;
    }

    if (!__OFADD__(v49, 1))
    {
      sub_1D8993940(*&a1, a2, v49 + 1);
      sub_1D8997618(v16, v17);
      sub_1D8997618(*&a1, a2);
      v29 = v31;
      v30 = v48;
LABEL_29:
      sub_1D8997618(v29, v30);
      *a4 = 0;
      *(a4 + 8) = -8;
      return;
    }

    __break(1u);
    goto LABEL_47;
  }

LABEL_36:
  v51 = v31;
  v52 = v48;
  v55 = *&a1;
  v56 = a2;
  v36 = v31;
  if (sub_1D8ACEBA0(&v51, &v55))
  {
    v31 = *&a1;
    v37 = a2;
  }

  else
  {
    v37 = v48;
  }

  sub_1D881F4C0(v31, v37);
  sub_1D8997630(v31, v37, v49);
  sub_1D8997618(v31, v37);
  sub_1D8997618(v16, v17);
  sub_1D8997618(*&a1, a2);
  *a4 = v36;
  *(a4 + 8) = v48;
}

void sub_1D899210C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 80);
  v5 = (*&v4 & 0xFFFFFFFFFFFFFLL) == 0 || (~*&v4 & 0x7FF0000000000000) != 0;
  if (v4 != -INFINITY && v5)
  {
    swift_beginAccess();
    v8 = *(*(a2 + 16) + 16);
    if (!v8 || (sub_1D8AC1240(v8 - 1, v22), v23 < v4))
    {
      sub_1D89915AC(a1, a3);
      return;
    }

    sub_1D89931C4(v4);
    if (v10)
    {
      if (*(*(a2 + 16) + 16) == *(a2 + 32))
      {
LABEL_19:
        LOBYTE(v22[0]) = 1;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *(a3 + 48) = 0u;
        *(a3 + 64) = 0u;
        *(a3 + 80) = 0;
        *(a3 + 88) = 1;
        return;
      }

      v11 = a1;
      v12 = 0;
LABEL_18:
      sub_1D8993B80(v11, v12);
      goto LABEL_19;
    }

    v13 = v9;
    sub_1D8AC1240(v9, &v16);
    if (v21 == v4)
    {
      v22[3] = v19;
      v22[4] = v20;
      v23 = v21;
      v22[0] = v16;
      v22[1] = v17;
      v22[2] = v18;
      sub_1D89937A4(v22, v13);
      v14 = v19;
      *(a3 + 32) = v18;
      *(a3 + 48) = v14;
      *(a3 + 64) = v20;
      *(a3 + 80) = v21;
      v15 = v17;
      *a3 = v16;
      *(a3 + 16) = v15;
      *(a3 + 88) = 0;
      return;
    }

    if (*(*(a2 + 16) + 16) == *(a2 + 32))
    {
      sub_1D89947D8(a1, v13, a3);
      return;
    }

    v12 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      v11 = a1;
      goto LABEL_18;
    }

    __break(1u);
  }

  sub_1D8B168C0();
  __break(1u);
}

uint64_t _s22VisualIntelligenceCore19TimestampDataBufferC6insert_19replacementFunctionxSgx_xx_xtctF_0@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v49 = a3;
  v50 = a2;
  v56 = a4;
  v7 = *v4;
  v8 = *(v7 + 232);
  v9 = sub_1D8B16470();
  v53 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - v11;
  v55 = *(v8 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v48 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v52 = &v46 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v51 = &v46 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v46 - v19;
  v20 = *(v7 + 240);
  v21 = *(v20 + 8);
  v22 = v21(v8, v20);
  v23 = (~*&v22 & 0x7FF0000000000000) != 0 || (*&v22 & 0xFFFFFFFFFFFFFLL) == 0;
  if (!v23 || v21(v8, v20) == -INFINITY)
  {
LABEL_24:
    result = sub_1D8B168C0();
    __break(1u);
    return result;
  }

  if (sub_1D899430C())
  {
    return sub_1D89917B0(a1, v56);
  }

  v57 = v5;
  swift_getWitnessTable();
  sub_1D8B15800();
  v24 = v55;
  if ((*(v55 + 48))(v12, 1, v8) == 1)
  {
    (*(v53 + 8))(v12, v9);
    return sub_1D89917B0(a1, v56);
  }

  v26 = v54;
  v53 = *(v24 + 32);
  (v53)(v54, v12, v8);
  v27 = v21(v8, v20);
  if (v27 < v21(v8, v20))
  {
    sub_1D89917B0(a1, v56);
    return (*(v24 + 8))(v26, v8);
  }

  v28 = v21(v8, v20);
  v29 = sub_1D8993374(v28);
  if ((v30 & 1) == 0)
  {
    v32 = v51;
    v47 = v29;
    CircularBuffer.subscript.getter(v29);
    v33 = v52;
    (*(v55 + 16))(v52, a1, v8);
    v34 = v21(v8, v20);
    if (v34 == v21(v8, v20))
    {
      v35 = v48;
      v50(v32, v33);
      sub_1D8996FD0(v35, v47);
      v36 = v55;
      v37 = *(v55 + 8);
      v37(v35, v8);
      v37(v33, v8);
      v37(v54, v8);
      v38 = v56;
      (v53)(v56, v32, v8);
      return (*(v36 + 56))(v38, 0, 1, v8);
    }

    v39 = v47;
    v40 = sub_1D89943D4();
    v41 = v54;
    if (v40)
    {
      sub_1D8994B40(a1, v39, v56);
      v42 = *(v55 + 8);
      v42(v52, v8);
      v42(v32, v8);
      return (v42)(v41, v8);
    }

    v43 = v52;
    if (!__OFADD__(v39, 1))
    {
      sub_1D8993DC0(a1, v39 + 1);
      v44 = v55;
      v45 = *(v55 + 8);
      v45(v43, v8);
      v45(v51, v8);
      v45(v41, v8);
      return (*(v44 + 56))(v56, 1, 1, v8);
    }

    __break(1u);
    goto LABEL_24;
  }

  if (!sub_1D89943D4())
  {
    sub_1D8993DC0(a1, 0);
  }

  v31 = v55;
  (*(v55 + 8))(v54, v8);
  return (*(v31 + 56))(v56, 1, 1, v8);
}

uint64_t (*default argument 1 of TimestampDataBuffer.insert(_:replacementFunction:)(uint64_t a1, uint64_t a2))@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return sub_1D8996DA4;
}

void sub_1D8992A00(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!*(*(v1 + 16) + 16))
  {
    return;
  }

  sub_1D8AC1168(0, &v67);
  v7 = *&v67;
  v8 = v68;
  if (v68 >> 5 <= 1u)
  {
    v9 = v67;
  }

  else
  {
    if (v68 >> 5 == 2)
    {
      v66 = *&v67;
      CVDetection.detection.getter(&v67);
      v10 = v69;
      v11 = v70;
      __swift_project_boxed_opaque_existential_1(&v67, v69);
      v12 = (*(v11 + 88))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(&v67);
      sub_1D8997618(v7, v8);
      if (v12 > a1)
      {
        return;
      }

      goto LABEL_9;
    }

    v9 = v67;
  }

  if (v9 > a1)
  {
    return;
  }

LABEL_9:
  v13 = *(*(v1 + 16) + 16);
  if (!v13)
  {
    goto LABEL_63;
  }

  sub_1D8AC1168(v13 - 1, &v67);
  *&v14 = v67;
  v15 = v68;
  sub_1D881F4C0(*&v67, v68);
  sub_1D8997618(v14, v15);
  if (v15 >> 5 <= 1)
  {
    v16 = *&v14;
  }

  else if (v15 >> 5 == 2)
  {
    v66 = v14;
    CVDetection.detection.getter(&v67);
    v17 = v69;
    v18 = v70;
    __swift_project_boxed_opaque_existential_1(&v67, v69);
    v16 = (*(v18 + 88))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(&v67);
    sub_1D8997618(v14, v15);
  }

  else
  {
    v16 = *&v14;
  }

  v19 = *(*(v1 + 16) + 16);
  if (v16 < a1 || !v19)
  {
    return;
  }

  v61 = v6;
  v62 = v4;
  v20 = *(v1 + 32);
  if (!v20)
  {
    goto LABEL_64;
  }

  v21 = 0;
  v22 = v19 - 1;
  v23 = -1;
  v63 = v1;
  while (!__OFSUB__(v22, v21))
  {
    v24 = v21 + (v22 - v21) / 2;
    if (__OFADD__(v21, (v22 - v21) / 2))
    {
      goto LABEL_56;
    }

    v25 = *(v2 + 16);
    v26 = *(v25 + 16);
    if (v26 == v20)
    {
      v27 = *(v2 + 24);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_59;
      }

      v30 = v29 % v20;
    }

    else
    {
      v30 = 0;
    }

    v28 = __OFADD__(v30, v24);
    v31 = v30 + v24;
    if (v28)
    {
      goto LABEL_57;
    }

    if (v20 == -1 && v31 == 0x8000000000000000)
    {
      goto LABEL_60;
    }

    v32 = v31 % v20;
    if (v32 >= v26)
    {
      goto LABEL_58;
    }

    v33 = v25 + 16 * v32;
    v34 = *(v33 + 32);
    v35 = *(v33 + 40);
    if (v35 >> 5 <= 1)
    {
      v36 = *(v33 + 32);
LABEL_35:
      if (v36 <= a1)
      {
        goto LABEL_36;
      }

LABEL_19:
      v22 = v24 - 1;
      if (__OFSUB__(v24, 1))
      {
        goto LABEL_62;
      }

      if (v22 < v21)
      {
        return;
      }
    }

    else
    {
      if (v35 >> 5 != 2)
      {
        v36 = *(v33 + 32);
        goto LABEL_35;
      }

      v65 = v23;
      v64 = v35;
      switch(v34 >> 60)
      {
        case 1uLL:
          v52 = type metadata accessor for GroundedParseDetectorResult(0);
          v38 = swift_projectBox();
          v69 = v52;
          v39 = type metadata accessor for GroundedParseDetectorResult;
          v40 = &protocol conformance descriptor for GroundedParseDetectorResult;
          v41 = &qword_1ECA64248;
          goto LABEL_51;
        case 2uLL:
          v47 = type metadata accessor for MetaDetectionResult(0);
          v38 = swift_projectBox();
          v69 = v47;
          v39 = type metadata accessor for MetaDetectionResult;
          v40 = &protocol conformance descriptor for MetaDetectionResult;
          v41 = &qword_1EE0E5CE0;
          goto LABEL_51;
        case 3uLL:
        case 8uLL:
          v37 = type metadata accessor for ObjectDetectorResult(0);
          v38 = swift_projectBox();
          v69 = v37;
          v39 = type metadata accessor for ObjectDetectorResult;
          v40 = &protocol conformance descriptor for ObjectDetectorResult;
          v41 = &qword_1ECA64228;
          goto LABEL_51;
        case 4uLL:
          v53 = type metadata accessor for ParseDetectorResult(0);
          v38 = swift_projectBox();
          v69 = v53;
          v39 = type metadata accessor for ParseDetectorResult;
          v40 = &protocol conformance descriptor for ParseDetectorResult;
          v41 = &qword_1ECA64238;
          goto LABEL_51;
        case 5uLL:
          v54 = type metadata accessor for TextDetectorResult(0);
          v38 = swift_projectBox();
          v69 = v54;
          v39 = type metadata accessor for TextDetectorResult;
          v40 = &protocol conformance descriptor for TextDetectorResult;
          v41 = &qword_1EE0E5FC0;
          goto LABEL_51;
        case 6uLL:
        case 7uLL:
          v42 = type metadata accessor for StreamingBarcodeDetectorResult(0);
          v38 = swift_projectBox();
          v69 = v42;
          v39 = type metadata accessor for StreamingBarcodeDetectorResult;
          v40 = &protocol conformance descriptor for StreamingBarcodeDetectorResult;
          v41 = &qword_1ECA64230;
          goto LABEL_51;
        case 9uLL:
        case 0xAuLL:
          v43 = swift_projectBox();
          v44 = v61;
          sub_1D89977F0(v43, v61, type metadata accessor for AFMResult);
          v69 = v62;
          v70 = sub_1D8947474(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v67);
          sub_1D899778C(v44, boxed_opaque_existential_1);
          break;
        case 0xBuLL:
          v46 = type metadata accessor for SyntheticDetectionResult(0);
          v38 = swift_projectBox();
          v69 = v46;
          v39 = type metadata accessor for SyntheticDetectionResult;
          v40 = &protocol conformance descriptor for SyntheticDetectionResult;
          v41 = &qword_1EE0E4D38;
          goto LABEL_51;
        case 0xCuLL:
          v48 = type metadata accessor for GroundedParseEmbeddingsResult(0);
          v38 = swift_projectBox();
          v69 = v48;
          v39 = type metadata accessor for GroundedParseEmbeddingsResult;
          v40 = &protocol conformance descriptor for GroundedParseEmbeddingsResult;
          v41 = &qword_1ECA64220;
          goto LABEL_51;
        case 0xDuLL:
          v55 = type metadata accessor for GroundedParseClassificationsResult(0);
          v38 = swift_projectBox();
          v69 = v55;
          v39 = type metadata accessor for GroundedParseClassificationsResult;
          v40 = &protocol conformance descriptor for GroundedParseClassificationsResult;
          v41 = &qword_1ECA64218;
LABEL_51:
          v70 = sub_1D8947474(v41, v39, v40);
          v56 = __swift_allocate_boxed_opaque_existential_1(&v67);
          sub_1D89977F0(v38, v56, v39);
          break;
        default:
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
          v50 = swift_projectBox();
          v69 = v49;
          v70 = sub_1D8906184();
          v51 = __swift_allocate_boxed_opaque_existential_1(&v67);
          sub_1D894733C(v50, v51);
          break;
      }

      v58 = v69;
      v57 = v70;
      __swift_project_boxed_opaque_existential_1(&v67, v69);
      v59 = *(v57 + 88);

      v60 = v59(v58, v57);
      __swift_destroy_boxed_opaque_existential_1(&v67);
      sub_1D8997618(v34, v64);
      v2 = v63;
      v23 = v65;
      if (v60 > a1)
      {
        goto LABEL_19;
      }

LABEL_36:
      v21 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_61;
      }

      v23 = v24;
      if (v22 < v21)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
}

void sub_1D89931C4(double a1)
{
  swift_beginAccess();
  if (*(v1[2] + 16))
  {
    sub_1D8AC1240(0, v17);
    LOBYTE(v17[0]) = 0;
    if (v18 <= a1)
    {
      v3 = *(v1[2] + 16);
      if (v3)
      {
        sub_1D8AC1240(v3 - 1, v17);
        v4 = v1[2];
        v5 = *(v4 + 16);
        if (v18 < a1 || !v5)
        {
          return;
        }

        v6 = v1[4];
        if (!v6)
        {
LABEL_34:
          __break(1u);
          __break(1u);
          return;
        }

        v7 = 0;
        v8 = v5 - 1;
        v9 = v4 + 32;
        while (!__OFSUB__(v8, v7))
        {
          v10 = v7 + (v8 - v7) / 2;
          if (__OFADD__(v7, (v8 - v7) / 2))
          {
            goto LABEL_27;
          }

          if (v5 == v6)
          {
            v11 = v1[3];
            v12 = __OFADD__(v11, 1);
            v13 = v11 + 1;
            if (v12)
            {
              goto LABEL_30;
            }

            v14 = v13 % v5;
          }

          else
          {
            v14 = 0;
          }

          v12 = __OFADD__(v14, v10);
          v15 = v14 + v10;
          if (v12)
          {
            goto LABEL_28;
          }

          if (v6 == -1 && v15 == 0x8000000000000000)
          {
            goto LABEL_31;
          }

          v16 = v15 % v6;
          if (v16 >= v5)
          {
            goto LABEL_29;
          }

          if (*(v9 + 88 * v16 + 80) > a1)
          {
            v8 = v10 - 1;
            if (__OFSUB__(v10, 1))
            {
              goto LABEL_33;
            }

            if (v8 < v7)
            {
              return;
            }
          }

          else
          {
            v7 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_32;
            }

            if (v8 < v7)
            {
              return;
            }
          }
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }
}

uint64_t sub_1D8993374(double a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 232);
  v6 = sub_1D8B16470();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  if (sub_1D899430C())
  {
    return 0;
  }

  v23 = v1;
  swift_getWitnessTable();
  sub_1D8B16150();
  v12 = *(v5 - 1);
  v22 = *(v12 + 48);
  result = v22(v11, 1, v5);
  if (result == 1)
  {
    goto LABEL_11;
  }

  v14 = *(v4 + 240);
  v21 = *(v14 + 8);
  v15 = v21(v5, v14);
  v16 = *(v12 + 8);
  v16(v11, v5);
  if (v15 > a1)
  {
    return 0;
  }

  v23 = v2;
  swift_getWitnessTable();
  sub_1D8B15800();
  result = v22(v9, 1, v5);
  if (result == 1)
  {
    goto LABEL_12;
  }

  v17 = v21(v5, v14);
  v18 = (v16)(v9, v5);
  if (v17 >= a1)
  {
    MEMORY[0x1EEE9AC00](v18);
    *(&v21 - 4) = v5;
    *(&v21 - 3) = v14;
    *(&v21 - 2) = a1;
    return sub_1D8993FE8(sub_1D8997858, (&v21 - 6));
  }

  v19 = sub_1D89942F4();
  v20 = __OFSUB__(v19, 1);
  result = v19 - 1;
  if (v20)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

void CircularBuffer.subscript.getter(uint64_t a1)
{
  swift_beginAccess();

  v3 = sub_1D8B15D80();

  v4 = 0;
  v5 = *(v1 + 32);
  if (v3 != v5)
  {
LABEL_9:
    v7 = __OFADD__(v4, a1);
    v10 = v4 + a1;
    if (v7)
    {
      __break(1u);
    }

    else if (v5)
    {
      if (v5 != -1 || v10 != 0x8000000000000000)
      {
        swift_beginAccess();

        sub_1D8B15DE0();

        return;
      }

      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_16;
  }

  v6 = *(v1 + 24);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3)
  {
    if (v3 == -1 && v8 == 0x8000000000000000)
    {
      goto LABEL_19;
    }

    v4 = v8 % v3;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_1D89937A4(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v6 = 0;
  v7 = v2[2];
  v8 = *(v7 + 16);
  v9 = v2[4];
  if (v8 != v9)
  {
LABEL_5:
    v11 = __OFADD__(v6, a2);
    v13 = v6 + a2;
    if (v11)
    {
      __break(1u);
    }

    else if (v9)
    {
      if (v9 == -1 && v13 == 0x8000000000000000)
      {
        goto LABEL_20;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v2[2] = v7;
      if (result)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_15:
    result = sub_1D89394DC(v7);
    v7 = result;
LABEL_10:
    v14 = v13 % v9;
    if (v13 % v9 < 0)
    {
      __break(1u);
    }

    else if (v14 < *(v7 + 16))
    {
      v15 = *(a1 + 48);
      v16 = v7 + 88 * v14;
      *(v16 + 64) = *(a1 + 32);
      *(v16 + 80) = v15;
      *(v16 + 96) = *(a1 + 64);
      *(v16 + 112) = *(a1 + 80);
      v17 = *(a1 + 16);
      *(v16 + 32) = *a1;
      *(v16 + 48) = v17;
      v2[2] = v7;
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

  v10 = v2[3];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8)
  {
    v6 = v12 % v8;
    goto LABEL_5;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t CircularBuffer.subscript.setter(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_1D8996FD0(a1, a2);
  v5 = *(*(*(v4 + 80) - 8) + 8);

  return v5(a1);
}

void sub_1D8993940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  sub_1D899136C(a1, a2, &v33);
  sub_1D8997778(v33, v34);
  v7 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    goto LABEL_36;
  }

  swift_beginAccess();
  v8 = v3[2];
  v9 = *(v8 + 16);
  if (v9 > v7)
  {
    v10 = v3[4];
    if (v9 == v10)
    {
      v11 = v3[3];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (!v9)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v14 = v13 % v9;
    }

    else
    {
      v14 = 0;
    }

    v15 = v9 - 2;
    v12 = __OFADD__(v14, v9 - 2);
    v16 = v14 + v9 - 2;
    if (v12)
    {
LABEL_28:
      __break(1u);
    }

    else if (v10)
    {
      if (v10 == -1 && v16 == 0x8000000000000000)
      {
        goto LABEL_35;
      }

      v17 = v16 % v10;
      if (v17 < v9)
      {
        v18 = v9 - 1;
        v19 = v8 + 16 * v17;
        v20 = *(v19 + 32);
        v21 = *(v19 + 40);
        sub_1D881F4C0(v20, v21);
        sub_1D8997630(v20, v21, v18);
        sub_1D8997618(v20, v21);
        if (v18 == v7)
        {
LABEL_27:
          sub_1D881F4C0(a1, v5);
          sub_1D8997630(a1, v5, a3);
          sub_1D8997618(a1, v5);
          return;
        }

        while (v7 < v15 + 1)
        {
          v22 = v15 - 1;
          if (__OFSUB__(v15 + 1, 2))
          {
            goto LABEL_32;
          }

          v23 = v3[2];
          v24 = *(v23 + 16);
          v25 = v3[4];
          if (v24 == v25)
          {
            v26 = v3[3];
            v12 = __OFADD__(v26, 1);
            v27 = v26 + 1;
            if (v12)
            {
              goto LABEL_33;
            }

            if (!v24)
            {
              goto LABEL_34;
            }

            v28 = v27 % v24;
            v12 = __OFADD__(v28, v22);
            v22 += v28;
            if (v12)
            {
              goto LABEL_28;
            }
          }

          if (!v25)
          {
            goto LABEL_29;
          }

          if (v25 == -1 && v22 == 0x8000000000000000)
          {
            goto LABEL_35;
          }

          v29 = v22 % v25;
          if (v29 >= v24)
          {
            goto LABEL_30;
          }

          v30 = v23 + 16 * v29;
          v31 = *(v30 + 32);
          v32 = *(v30 + 40);
          sub_1D881F4C0(v31, v32);
          sub_1D8997630(v31, v32, v15);
          sub_1D8997618(v31, v32);
          if (a3 == --v15)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_31;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_1D8993B80(uint64_t a1, uint64_t a2)
{
  result = sub_1D89915AC(a1, &v34);
  v6 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  result = swift_beginAccess();
  v7 = v2[2];
  if (*(v7 + 16) > v6)
  {
    v33 = a2;
    v8 = *(v7 + 16);
    do
    {
      v9 = v8 - 2;
      if (__OFSUB__(v8, 2))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return sub_1D89937A4(a1, v33);
      }

      v10 = *(v7 + 16);
      v11 = v2[4];
      if (v10 == v11)
      {
        v12 = v2[3];
        v13 = __OFADD__(v12, 1);
        v14 = v12 + 1;
        if (v13)
        {
          goto LABEL_38;
        }

        if (!v10)
        {
          goto LABEL_39;
        }

        v15 = v14 % v10;
        v13 = __OFADD__(v15, v9);
        v9 += v15;
        if (v13)
        {
          goto LABEL_30;
        }
      }

      if (!v11)
      {
        goto LABEL_31;
      }

      if (v11 == -1 && v9 == 0x8000000000000000)
      {
        goto LABEL_40;
      }

      v16 = v9 % v11;
      if (v16 >= v10)
      {
        goto LABEL_32;
      }

      v17 = v7 + 88 * v16;
      v18 = *(v17 + 32);
      v35 = *(v17 + 48);
      v19 = *(v17 + 64);
      v20 = *(v17 + 80);
      v21 = *(v17 + 96);
      v39 = *(v17 + 112);
      v37 = v20;
      v38 = v21;
      v36 = v19;
      v34 = v18;
      if (*(v7 + 16) == v11)
      {
        v22 = v2[3];
        v13 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v13)
        {
          goto LABEL_41;
        }

        v24 = v23 % v11;
      }

      else
      {
        v24 = 0;
      }

      v25 = v8 - 1;
      v26 = v24 + v8 - 1;
      if (__OFADD__(v24, v8 - 1))
      {
        goto LABEL_33;
      }

      if (v11 == -1 && v26 == 0x8000000000000000)
      {
        goto LABEL_42;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v2[2] = v7;
      if ((result & 1) == 0)
      {
        result = sub_1D89394DC(v7);
        v7 = result;
      }

      v27 = v26 % v11;
      if (v26 % v11 < 0)
      {
        goto LABEL_34;
      }

      if (v27 >= *(v7 + 16))
      {
        goto LABEL_35;
      }

      v28 = v7 + 88 * v27;
      v29 = v35;
      *(v28 + 32) = v34;
      *(v28 + 48) = v29;
      v30 = v36;
      v31 = v37;
      v32 = v38;
      *(v28 + 112) = v39;
      *(v28 + 80) = v31;
      *(v28 + 96) = v32;
      *(v28 + 64) = v30;
      v2[2] = v7;
      if (v25 == v6)
      {
        return sub_1D89937A4(a1, v33);
      }

      v8 = v25;
    }

    while (v6 < v25);
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_44:
  __break(1u);
  return result;
}

void sub_1D8993DC0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 232);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v9 = sub_1D8B16470();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  sub_1D89917B0(a1, &v20 - v11);
  (*(v10 + 8))(v12, v9);
  v13 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = sub_1D89942F4();
  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v15 >= v13)
  {
    v16 = v14;
    v17 = v14 - 2;
    if (__OFSUB__(v15, 1))
    {
LABEL_11:
      __break(1u);
    }

    else
    {
      CircularBuffer.subscript.getter(v17);
      sub_1D8996FD0(v8, v15);
      v18 = *(v6 + 8);
      v18(v8, v5);
      if (v15 == v13)
      {
LABEL_10:
        sub_1D8996FD0(a1, a2);
        return;
      }

      v19 = v16 - 2;
      while (v13 < v19 + 1)
      {
        if (__OFSUB__(v19 + 1, 2))
        {
          goto LABEL_11;
        }

        CircularBuffer.subscript.getter(v19 - 1);
        sub_1D8996FD0(v8, v19);
        v18(v8, v5);
        if (a2 == --v19)
        {
          goto LABEL_10;
        }
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1D8993FE8(uint64_t (*a1)(char *), uint64_t a2)
{
  v16 = a2;
  v15 = a1;
  v4 = *(*v2 + 232);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - v6;
  if (sub_1D899430C())
  {
    return 0;
  }

  result = sub_1D89942F4();
  v9 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    v10 = 0;
    v11 = (v5 + 8);
    v14 = -1;
    while (1)
    {
      if (v9 < v10)
      {
        return v14 & ~(v14 >> 63);
      }

      if (__OFSUB__(v9, v10))
      {
        break;
      }

      v12 = v10 + (v9 - v10) / 2;
      if (__OFADD__(v10, (v9 - v10) / 2))
      {
        goto LABEL_19;
      }

      CircularBuffer.subscript.getter(v10 + (v9 - v10) / 2);
      v13 = v15(v7);
      result = (*v11)(v7, v4);
      if (v3)
      {
        return result;
      }

      if (v13)
      {
        v14 = v10 + (v9 - v10) / 2;
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          return v14 & ~(v14 >> 63);
        }
      }

      else
      {
        v9 = v12 - 1;
        if (__OFSUB__(v12, 1))
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}

void CircularBuffer.init(data:index:sizeMax:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 24) = 0;
  *(v3 + 16) = a1;
  swift_beginAccess();
  sub_1D8B15DB0();

  sub_1D8B15D10();
  swift_endAccess();
  *(v3 + 24) = a2;
  swift_getWitnessTable();
  if ((sub_1D8B16160() & 1) != 0 || a2)
  {

LABEL_4:
    *(v4 + 32) = a3;
    return;
  }

  v7 = sub_1D8B15D80();

  if (!__OFSUB__(v7, 1))
  {
    *(v4 + 24) = v7 - 1;
    goto LABEL_4;
  }

  __break(1u);
}

uint64_t sub_1D899430C()
{
  swift_beginAccess();
  sub_1D8B15DB0();
  swift_getWitnessTable();
  return sub_1D8B16160() & 1;
}

BOOL sub_1D89943D4()
{
  swift_beginAccess();

  v1 = sub_1D8B15D80();

  return v1 == *(v0 + 32);
}

void sub_1D8994458(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2;
  swift_beginAccess();
  v10 = v4[2];
  v11 = *(v10 + 2);
  v12 = v4[4];
  if (v11 == v12)
  {
    v13 = v4[3];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (!v14)
    {
      if (!v11)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v16 = v15 % v11;
      if (v16 >= v11)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (a3 < 0)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v17 = &v10[16 * v16];
      v42 = *(v17 + 4);
      v43 = a4;
      v41 = v17[40];
      sub_1D881F4C0(v42, v41);
      if (!a3)
      {
LABEL_26:
        if (*(v10 + 2) == v11)
        {
          v33 = v4[3];
          v14 = __OFADD__(v33, 1);
          v34 = v33 + 1;
          v5 = v43;
          if (v14)
          {
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          v35 = v34 % v11;
        }

        else
        {
          v35 = 0;
          v5 = v43;
        }

        a4 = v35 + a3;
        if (!__OFADD__(v35, a3))
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v4[2] = v10;
          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_32:
            v37 = a4 % v11;
            if (a4 % v11 < 0)
            {
              __break(1u);
            }

            else if (v37 < *(v10 + 2))
            {
              v38 = &v10[16 * v37];
              v39 = *(v38 + 4);
              *(v38 + 4) = a1;
              v40 = v38[40];
              v38[40] = v7;
              sub_1D881F4C0(a1, v7);
              v4[2] = v10;
              swift_endAccess();
              sub_1D8997618(v39, v40);
              v31 = v42;
              v32 = v41;
              goto LABEL_35;
            }

            __break(1u);
            goto LABEL_52;
          }

LABEL_49:
          v10 = sub_1D89394C8(v10);
          v4[2] = v10;
          goto LABEL_32;
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v5 = 0;
      while (1)
      {
        v18 = *(v10 + 2);
        if (v18 == v11)
        {
          v19 = v4[3];
          v14 = __OFADD__(v19, 1);
          v20 = v19 + 1;
          if (v14)
          {
            goto LABEL_40;
          }

          v21 = v20 % v11;
          a4 = v21 + v5;
          if (__OFADD__(v21, v5))
          {
            goto LABEL_41;
          }
        }

        else
        {
          v21 = 0;
          a4 = v5;
        }

        v14 = __OFADD__(v21, ++v5);
        v22 = v21 + v5;
        if (v14)
        {
          break;
        }

        v23 = v22 % v11;
        if (v23 >= v18)
        {
          goto LABEL_37;
        }

        v24 = &v10[16 * v23];
        v25 = *(v24 + 4);
        v26 = v24[40];
        swift_beginAccess();
        sub_1D881F4C0(v25, v26);
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v4[2] = v10;
        if ((v27 & 1) == 0)
        {
          v10 = sub_1D89394C8(v10);
          v4[2] = v10;
        }

        v28 = a4 % v11;
        if (a4 % v11 < 0)
        {
          goto LABEL_38;
        }

        if (v28 >= *(v10 + 2))
        {
          goto LABEL_39;
        }

        v29 = &v10[16 * v28];
        a4 = *(v29 + 4);
        *(v29 + 4) = v25;
        v30 = v29[40];
        v29[40] = v26;
        v4[2] = v10;
        swift_endAccess();
        sub_1D8997618(a4, v30);
        if (a3 == v5)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v11 < v12)
  {
    v5 = a3 % v12;
    swift_beginAccess();
    if (v11 >= v5)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        sub_1D881F4C0(a1, v7);
        sub_1D886442C(v5, v5, a1, v7);
        swift_endAccess();
        sub_1D8997618(a1, v7);
        v31 = 0;
        v32 = -8;
        v5 = a4;
LABEL_35:
        *v5 = v31;
        *(v5 + 8) = v32;
        return;
      }

      goto LABEL_45;
    }

    goto LABEL_43;
  }

LABEL_53:
  sub_1D8B168C0();
  __break(1u);
}

uint64_t sub_1D89947D8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = v3[2];
  v8 = *(v7 + 2);
  v9 = v3[4];
  if (v8 == v9)
  {
    v10 = v3[3];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      if (!v8)
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v13 = v12 % v8;
      if (v13 >= v8)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v14 = &v7[88 * v13];
      v50 = *(v14 + 4);
      v51 = *(v14 + 5);
      v52 = *(v14 + 6);
      v53 = *(v14 + 14);
      v48 = *(v14 + 2);
      v49 = *(v14 + 3);
      if (a2 < 0)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (a2)
      {
        v15 = 0;
        v16 = *(v7 + 2);
        while (1)
        {
          if (v16 == v8)
          {
            v17 = v3[3];
            v11 = __OFADD__(v17, 1);
            v18 = v17 + 1;
            if (v11)
            {
              goto LABEL_39;
            }

            v19 = v18 % v8;
            v20 = v19 + v15;
            if (__OFADD__(v19, v15))
            {
              goto LABEL_40;
            }
          }

          else
          {
            v19 = 0;
            v20 = v15;
          }

          v11 = __OFADD__(v19, ++v15);
          v21 = v19 + v15;
          if (v11)
          {
            goto LABEL_35;
          }

          v22 = v21 % v8;
          if (v22 >= v16)
          {
            break;
          }

          v23 = &v7[88 * v22];
          v24 = *(v23 + 3);
          v54 = *(v23 + 2);
          v55 = v24;
          v25 = *(v23 + 4);
          v26 = *(v23 + 5);
          v27 = *(v23 + 6);
          v59 = *(v23 + 14);
          v57 = v26;
          v58 = v27;
          v56 = v25;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v3[2] = v7;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v7 = sub_1D89394DC(v7);
          }

          v29 = v20 % v8;
          if (v20 % v8 < 0)
          {
            goto LABEL_37;
          }

          if (v29 >= *(v7 + 2))
          {
            goto LABEL_38;
          }

          v30 = &v7[88 * v29];
          v31 = v55;
          *(v30 + 2) = v54;
          *(v30 + 3) = v31;
          v32 = v56;
          v33 = v57;
          v34 = v58;
          *(v30 + 14) = v59;
          *(v30 + 5) = v33;
          *(v30 + 6) = v34;
          *(v30 + 4) = v32;
          v3[2] = v7;
          v16 = *(v7 + 2);
          if (a2 == v15)
          {
            if (v16 != v8)
            {
              goto LABEL_29;
            }

            goto LABEL_27;
          }
        }
      }

      else
      {
LABEL_27:
        v39 = v3[3];
        v11 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v11)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v41 = v40 % v8;
        v11 = __OFADD__(v41, a2);
        a2 += v41;
        if (!v11)
        {
LABEL_29:
          result = swift_isUniquelyReferenced_nonNull_native();
          v3[2] = v7;
          if (result)
          {
LABEL_30:
            v42 = a2 % v8;
            if (a2 % v8 < 0)
            {
              __break(1u);
            }

            else if (v42 < *(v7 + 2))
            {
              v43 = a1[1];
              v44 = &v7[88 * v42];
              *(v44 + 2) = *a1;
              *(v44 + 3) = v43;
              v45 = a1[2];
              v46 = a1[3];
              v47 = a1[4];
              *(v44 + 14) = *(a1 + 10);
              *(v44 + 5) = v46;
              *(v44 + 6) = v47;
              *(v44 + 4) = v45;
              v3[2] = v7;
              LOBYTE(v54) = 0;
              *(a3 + 32) = v50;
              *(a3 + 48) = v51;
              *(a3 + 64) = v52;
              *(a3 + 80) = v53;
              *a3 = v48;
              *(a3 + 16) = v49;
              *(a3 + 88) = 0;
              return result;
            }

            __break(1u);
            goto LABEL_50;
          }

LABEL_47:
          result = sub_1D89394DC(v7);
          v7 = result;
          goto LABEL_30;
        }

        __break(1u);
LABEL_35:
        __break(1u);
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v8 < v9)
  {
    v35 = a2 % v9;
    if (v8 >= a2 % v9)
    {
      if ((v35 & 0x8000000000000000) == 0)
      {
        v36 = a1[3];
        v56 = a1[2];
        v57 = v36;
        v58 = a1[4];
        v59 = *(a1 + 10);
        v37 = a1[1];
        v54 = *a1;
        v55 = v37;
        result = sub_1D885CFB8(v35, v35, &v54);
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *(a3 + 48) = 0u;
        *(a3 + 64) = 0u;
        *(a3 + 80) = 0;
        *(a3 + 88) = 1;
        return result;
      }

      goto LABEL_44;
    }

    goto LABEL_42;
  }

LABEL_51:
  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D8994B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v56 = a1;
  v7 = *(*v3 + 80);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v53 - v15;
  swift_beginAccess();

  v16 = sub_1D8B15D80();

  v17 = v3[4];
  v57 = a2;
  if (v16 != v17)
  {
    swift_beginAccess();

    v22 = sub_1D8B15D80();

    if (v22 >= v17)
    {
LABEL_77:
      result = sub_1D8B168C0();
      __break(1u);
      return result;
    }

    (*(v8 + 16))(v11, v56, v7);
    swift_beginAccess();

    v23 = sub_1D8B15D80();

    v24 = 0;
    if (v23 == v17)
    {
      v25 = v3[3];
      v20 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v20)
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      if (!v17)
      {
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      if (v17 == -1 && v26 == 0x8000000000000000)
      {
        goto LABEL_75;
      }

      v24 = v26 % v17;
    }

    v20 = __OFADD__(v24, v57);
    v27 = v24 + v57;
    if (!v20)
    {
      if (v17)
      {
        if (v17 != -1 || v27 != 0x8000000000000000)
        {
          swift_beginAccess();
          sub_1D8B15DB0();
          sub_1D8B15DA0();
          swift_endAccess();
          return (*(v8 + 56))(a3, 1, 1, v7);
        }

        goto LABEL_71;
      }

      goto LABEL_65;
    }

    goto LABEL_62;
  }

  swift_beginAccess();

  v18 = sub_1D8B15D80();

  if (v18 == v16)
  {
    v19 = v3[3];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (!v16)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (v16 == -1 && v21 == 0x8000000000000000)
    {
      goto LABEL_74;
    }
  }

  else if (!v16)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  swift_beginAccess();

  sub_1D8B15DE0();

  if (a2 < 0)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v54 = a3;
  if (a2)
  {
    v29 = 0;
    while (1)
    {
      swift_beginAccess();

      v33 = sub_1D8B15D80();

      v34 = 0;
      if (v33 == v16)
      {
        v35 = v4[3];
        v20 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v20)
        {
          goto LABEL_57;
        }

        if (v16 == -1 && v36 == 0x8000000000000000)
        {
          goto LABEL_60;
        }

        v34 = v36 % v16;
      }

      v37 = v34 + v29;
      if (__OFADD__(v34, v29))
      {
        break;
      }

      if (v16 == -1 && v37 == 0x8000000000000000)
      {
        goto LABEL_58;
      }

      swift_beginAccess();

      v38 = sub_1D8B15D80();

      v39 = 0;
      if (v38 == v16)
      {
        v40 = v4[3];
        v20 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v20)
        {
          goto LABEL_59;
        }

        if (v16 == -1 && v41 == 0x8000000000000000)
        {
          goto LABEL_61;
        }

        v39 = v41 % v16;
      }

      v20 = __OFADD__(v39, ++v29);
      v42 = v39 + v29;
      if (v20)
      {
        goto LABEL_56;
      }

      if (v16 == -1 && v42 == 0x8000000000000000)
      {
        __break(1u);
        goto LABEL_44;
      }

      swift_beginAccess();

      sub_1D8B15DE0();

      swift_beginAccess();
      sub_1D8B15DB0();
      sub_1D8B15D40();
      v30 = v4[2];
      sub_1D8996D50(v37 % v16, v30, v7);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v32 = v30 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v32 = v30;
      }

      (*(v8 + 40))(v32 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * (v37 % v16), v14, v7);
      swift_endAccess();
      if (v57 == v29)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_44:
  swift_beginAccess();

  v43 = sub_1D8B15D80();

  v44 = 0;
  v45 = v54;
  if (v43 == v16)
  {
    v46 = v4[3];
    v20 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v20)
    {
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v16 == -1 && v47 == 0x8000000000000000)
    {
      goto LABEL_76;
    }

    v44 = v47 % v16;
  }

  v20 = __OFADD__(v44, v57);
  v48 = v44 + v57;
  if (v20)
  {
    goto LABEL_66;
  }

  if (v16 == -1 && v48 == 0x8000000000000000)
  {
    goto LABEL_73;
  }

  v49 = v48 % v16;
  swift_beginAccess();
  sub_1D8B15DB0();
  sub_1D8B15D40();
  v50 = v4[2];
  sub_1D8996D50(v49, v50, v7);
  v51 = _swift_isClassOrObjCExistentialType();
  v52 = v50 & 0xFFFFFFFFFFFFFF8;
  if ((v51 & 1) == 0)
  {
    v52 = v50;
  }

  (*(v8 + 24))(v52 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v49, v56, v7);
  swift_endAccess();
  (*(v8 + 32))(v45, v55, v7);
  return (*(v8 + 56))(v45, 0, 1, v7);
}

uint64_t CircularBuffer.__allocating_init(data:index:sizeMax:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  CircularBuffer.init(data:index:sizeMax:)(a1, a2, a3);
  return v6;
}

uint64_t CircularBuffer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void (*CircularBuffer.subscript.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*v2 + 80);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  CircularBuffer.subscript.getter(a2);
  return sub_1D8995488;
}

void sub_1D8995488(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_1D8996FD0(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_1D8996FD0((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1D89955C0(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);

  v6 = a1(v5, v4);

  return v6;
}

uint64_t sub_1D8995644@<X0>(void *a1@<X8>)
{
  result = CircularBuffer.startIndex.getter();
  *a1 = 0;
  return result;
}

uint64_t sub_1D8995670@<X0>(uint64_t *a1@<X8>)
{
  result = CircularBuffer.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t (*sub_1D899569C(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1D8995760(v4, *a2);
  return sub_1D8995718;
}

void sub_1D8995718(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_1D8995760(void *a1, uint64_t a2))()
{
  v5 = *(*v2 + 80);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  v7 = *(v6 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  a1[2] = v8;
  CircularBuffer.subscript.getter(a2);
  return sub_1D8995830;
}

void sub_1D8995830(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1D899587C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v7 = type metadata accessor for CircularBuffer(0, *(a2 + 80), a3, a4);
  WitnessTable = swift_getWitnessTable();

  return sub_1D89958F4(a1, v7, WitnessTable, a5);
}

uint64_t sub_1D89958F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a1;
  v47 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  v41 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  swift_getAssociatedConformanceWitness();
  v44 = sub_1D8B16190();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v19 = &v36 - v18;
  sub_1D8B160F0();
  v48 = v4;
  v45 = v6;
  v46 = a2;
  sub_1D8B16120();
  result = sub_1D8B15840();
  if (result)
  {
    v21 = v41;
    v22 = *(v41 + 32);
    v22(v12, v17, AssociatedTypeWitness);
    v23 = TupleTypeMetadata2;
    v22(&v12[*(TupleTypeMetadata2 + 48)], v15, AssociatedTypeWitness);
    v24 = v22;
    v25 = v43;
    v26 = v39;
    (*(v43 + 16))(v39, v12, v23);
    v37 = *(v23 + 48);
    v24(v19, v26, AssociatedTypeWitness);
    v38 = v24;
    v27 = *(v21 + 8);
    v27(&v26[v37], AssociatedTypeWitness);
    (*(v25 + 32))(v26, v12, v23);
    v28 = v44;
    v24(&v19[*(v44 + 36)], &v26[*(v23 + 48)], AssociatedTypeWitness);
    v27(v26, AssociatedTypeWitness);
    v29 = v48;
    v30 = v49;
    v31 = v46;
    sub_1D8B16100();
    v32 = v42;
    (*(v42 + 8))(v19, v28);
    v33 = sub_1D8B16CE0();
    v34 = v47;
    (*(*(v31 - 8) + 16))(&v47[*(v33 + 40)], v29, v31);
    (*(v32 + 16))(v19, v30, v28);
    v35 = v38;
    v38(v34, v19, AssociatedTypeWitness);
    return v35(&v34[*(v33 + 36)], &v19[*(v28 + 36)], AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8995D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for CircularBuffer(0, *(a1 + 80), a3, a4);
  WitnessTable = swift_getWitnessTable();
  v6 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69838](v4, WitnessTable, v6);
}

uint64_t sub_1D8995F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CircularBuffer(0, *(a3 + 80), a3, a4);

  return sub_1D8996E1C(a1, a2, v7, a4);
}

uint64_t sub_1D8995FC4@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  result = CircularBuffer.startIndex.getter();
  a1[1] = 0;
  return result;
}

uint64_t sub_1D8995FF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1D8996048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CircularBuffer(0, *(a1 + 80), a3, a4);
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1D8996FCC(v4, v5, WitnessTable);

  return v7;
}

void sub_1D89960B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CircularBuffer(0, *(a4 + 80), a3, a4);

  JUMPOUT(0x1DA71F0B0);
}

uint64_t sub_1D899618C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1D8996FD0(a1, *a2);
  v5 = *(*(*(a3 + 80) - 8) + 8);

  return v5(a1);
}

void (*sub_1D8996200(void *a1, uint64_t *a2))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = CircularBuffer.subscript.modify(v4, *a2);
  return sub_1D8997968;
}

double sub_1D899627C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v6 = type metadata accessor for CircularBuffer(0, *(a3 + 80), a3, a4);
  sub_1D89978B0(a1, &v8, v6, a4);

  return result;
}

void (*sub_1D89962E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v11 = v8;
  *a1 = v8;
  v12 = type metadata accessor for CircularBuffer(0, *(a3 + 80), v9, v10);
  v11[4] = sub_1D8996384(v11, a2, v12, a4);
  return sub_1D8996380;
}

void (*sub_1D8996384(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = sub_1D8B16CE0();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v11[6] = v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = sub_1D8B16190();
  v11[7] = v17;
  v18 = *(v17 - 8);
  v19 = v18;
  v11[8] = v18;
  if (v9)
  {
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(*(v18 + 64));
  }

  v11[9] = v20;
  (*(v19 + 16))();
  sub_1D89958F4(a2, a3, a4, v16);
  return sub_1D89965A8;
}

void sub_1D89965A8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v6 = (*a1)[8];
  v5 = (*a1)[9];
  v7 = (*a1)[6];
  v10 = (*a1)[7];
  v8 = (*a1)[3];
  if (a2)
  {
    (*(v4 + 16))(v3, v7, v2[3]);
    swift_getWitnessTable();
    sub_1D8B16B40();
    v9 = *(v4 + 8);
    v9(v3, v8);
    (*(v6 + 8))(v5, v10);
    v9(v7, v8);
  }

  else
  {
    swift_getWitnessTable();
    sub_1D8B16B40();
    (*(v6 + 8))(v5, v10);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

uint64_t sub_1D8996750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CircularBuffer(0, *(a3 + 80), a3, a4);
  swift_getWitnessTable();
  return sub_1D8B158B0();
}

uint64_t sub_1D89967DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CircularBuffer(0, *(a3 + 80), a3, a4);

  return MEMORY[0x1EEE68C50](a1, a2, v7, a4);
}

uint64_t sub_1D8996918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CircularBuffer(0, *(a3 + 80), a3, a4);
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, v7, a4, v8);
}

uint64_t sub_1D899698C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for CircularBuffer(0, *(a4 + 80), a3, a4);

  return MEMORY[0x1EEE69818](a1, a2, a3, v9, a5);
}

uint64_t sub_1D8996A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CircularBuffer(0, *(a3 + 80), a3, a4);
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, v7, a4, v8);
}

uint64_t sub_1D8996A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = type metadata accessor for CircularBuffer(0, *(a2 + 80), a3, a4);
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return a4(a1, v5, WitnessTable, v7);
}

uint64_t sub_1D8996B28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  v5 = type metadata accessor for CircularBuffer(0, *(a2 + 80), a3, a4);
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, v5, WitnessTable, MEMORY[0x1E69E6570]);
}

uint64_t sub_1D8996BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for CircularBuffer(0, *(a3 + 80), a3, a4);
  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, v6, WitnessTable, v8);
}

uint64_t sub_1D8996C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CircularBuffer(0, *(a4 + 80), a3, a4);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69818](a1, a2, a3, v7, WitnessTable);
}

uint64_t sub_1D8996CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for CircularBuffer(0, *(a3 + 80), a3, a4);
  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, v6, WitnessTable, v8);
}

uint64_t sub_1D8996D50(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D8996DA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v6 = *(*(*(type metadata accessor for TimestampDataBuffer(0, *(v3 + 16), *(v3 + 24), a3) + 232) - 8) + 16);

  return v6(a2, a1);
}

uint64_t sub_1D8996E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1D8B15840();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1D8B16190();
  result = sub_1D8B15840();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8996EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1D8B15840();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_1D8996FD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  swift_beginAccess();
  v7 = *(v6 + 80);

  v8 = sub_1D8B15D80();

  v9 = 0;
  v10 = v3[4];
  if (v8 == v10)
  {
    v11 = v3[3];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (!v8)
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    if (v8 == -1 && v13 == 0x8000000000000000)
    {
      goto LABEL_21;
    }

    v9 = v13 % v8;
  }

  v12 = __OFADD__(v9, a2);
  v15 = v9 + a2;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v10 == -1 && v15 == 0x8000000000000000)
  {
    goto LABEL_20;
  }

  v16 = v15 % v10;
  swift_beginAccess();
  sub_1D8B15DB0();
  sub_1D8B15D40();
  v17 = v3[2];
  sub_1D8996D50(v16, v17, v7);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v19 = v17 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v19 = v17;
  }

  (*(*(v7 - 8) + 24))(v19 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v16, a1, v7);
  swift_endAccess();
}

unint64_t sub_1D89971D4()
{
  result = qword_1ECA66628;
  if (!qword_1ECA66628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66628);
  }

  return result;
}

uint64_t sub_1D89973AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA66620, &qword_1D8B2EF30);
    sub_1D89971D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1D8997618(uint64_t a1, char a2)
{
  if ((a2 & 0xE0) == 0x40)
  {
  }

  return result;
}

void sub_1D8997630(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = 0;
  v8 = v3[2];
  v9 = *(v8 + 2);
  v10 = v3[4];
  if (v9 != v10)
  {
LABEL_5:
    v12 = __OFADD__(v7, a3);
    v14 = v7 + a3;
    if (v12)
    {
      __break(1u);
    }

    else if (v10)
    {
      if (v10 == -1 && v14 == 0x8000000000000000)
      {
        goto LABEL_20;
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v3[2] = v8;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_15:
    v8 = sub_1D89394C8(v8);
    v3[2] = v8;
LABEL_10:
    v16 = v14 % v10;
    if (v14 % v10 < 0)
    {
      __break(1u);
    }

    else if (v16 < *(v8 + 2))
    {
      v17 = &v8[16 * v16];
      v18 = *(v17 + 4);
      *(v17 + 4) = a1;
      v19 = v17[40];
      v17[40] = a2;
      sub_1D881F4C0(a1, a2);
      v3[2] = v8;
      swift_endAccess();
      sub_1D8997618(v18, v19);
      return;
    }

    __break(1u);
    goto LABEL_18;
  }

  v11 = v3[3];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v9)
  {
    v7 = v13 % v9;
    goto LABEL_5;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

double sub_1D8997778(uint64_t a1, char a2)
{
  if (a2 <= 0xF7u)
  {
    return sub_1D8997618(a1, a2);
  }

  return result;
}

uint64_t sub_1D899778C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFMResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D89977F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D89978B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D8B16CE0();
  swift_getWitnessTable();

  return sub_1D8B16B40();
}

uint64_t sub_1D89979BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8997A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1D8997A10(a1, a2, *(a3 + 16));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

void *sub_1D8997AAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8B16DA0();
  if (!v4)
  {
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_1D899812C();
    sub_1D8B16BB0();
    v11 = v15;
    v10 = v16;
    (*(a4 + 16))(&v15, v15, v16, a3, a4);
    v9 = v15;
    if (v15)
    {
      sub_1D87A1598(v11, v10);
      __swift_destroy_boxed_opaque_existential_1(v17);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v9;
    }

    v9 = sub_1D8B16770();
    swift_allocError();
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
    *v14 = a2;
    sub_1D8B16760();
    (*(*(v9 - 8) + 104))(v14, *MEMORY[0x1E69E6B08], v9);
    swift_willThrow();
    sub_1D87A1598(v11, v10);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void *sub_1D8997CB4@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_1D8997AAC(a1, a2[2], a2[3], a2[4]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1D8997CEC(void *a1, uint64_t a2)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v10];
  v4 = v10[0];
  if (v3)
  {
    v5 = sub_1D8B13050();
    v7 = v6;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D8B16DC0();
    __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_1D89980D8();
    sub_1D8B16BC0();
    sub_1D87A1598(v5, v7);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v9 = v4;
    sub_1D8B12EB0();

    return swift_willThrow();
  }
}

uint64_t sub_1D8997EFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v5 = [a1 *a5];
  v6 = sub_1D8B15970();

  return v6;
}

uint64_t sub_1D8997FF4()
{
  sub_1D8B16D20();
  sub_1D8B16410();
  return sub_1D8B16D80();
}

uint64_t sub_1D8998048(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D8997FD0(v2);
  return sub_1D8B16D80();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1D89980D8()
{
  result = qword_1ECA666A8;
  if (!qword_1ECA666A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA666A8);
  }

  return result;
}

unint64_t sub_1D899812C()
{
  result = qword_1ECA666B0;
  if (!qword_1ECA666B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA666B0);
  }

  return result;
}

uint64_t ConnectivityUtility.couldBeConnectedToInternet.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility, &protocol conformance descriptor for ConnectivityUtility);
  sub_1D8B13520();

  return *(v2 + 24);
}

void sub_1D8998224()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  type metadata accessor for ConnectivityUtility(0);
  v3 = swift_allocObject();
  sub_1D8B15490();
  swift_allocObject();
  *(v3 + 16) = sub_1D8B15480();
  *(v3 + 24) = 1;
  *(v3 + 26) = 2;
  sub_1D8B13550();
  v4 = sub_1D8B15EA0();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;

  sub_1D8891CA0(0, 0, v2, &unk_1D8B2F660, v5);

  qword_1EE0E5EF8 = v3;
}

uint64_t sub_1D89983AC()
{
  sub_1D8B15E80();
  *(v0 + 24) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D8998440, v2, v1);
}

uint64_t sub_1D8998440()
{

  swift_allocObject();
  swift_weakInit();

  sub_1D8B15460();

  sub_1D881F764(0, &qword_1EE0E3730, 0x1E69E9610);
  v1 = sub_1D8B162C0();
  sub_1D8B15470();

  v2 = *(v0 + 8);

  return v2();
}

double static ConnectivityUtility.shared.getter()
{
  if (qword_1EE0E5EF0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t ConnectivityUtility.ConnectionStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

void sub_1D8998614(uint64_t *a1@<X0>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility, &protocol conformance descriptor for ConnectivityUtility);
  sub_1D8B13520();

  *a3 = *(v4 + 24);
}

uint64_t type metadata accessor for ConnectivityUtility(uint64_t a1)
{
  result = qword_1EE0E5ED8;
  if (!qword_1EE0E5ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8998730(char a1, uint64_t a2)
{
  if (*(v2 + 24) == (a1 & 1))
  {
    *(v2 + 24) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility, &protocol conformance descriptor for ConnectivityUtility);
    sub_1D8B13510();
  }
}

uint64_t sub_1D8998840(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility, &protocol conformance descriptor for ConnectivityUtility);
  sub_1D8B13520();

  return *(v2 + 25);
}

void sub_1D89988E0(uint64_t *a1@<X0>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility, &protocol conformance descriptor for ConnectivityUtility);
  sub_1D8B13520();

  *a3 = *(v4 + 25);
}

void sub_1D8998988(char a1, uint64_t a2)
{
  if (*(v2 + 25) == (a1 & 1))
  {
    *(v2 + 25) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility, &protocol conformance descriptor for ConnectivityUtility);
    sub_1D8B13510();
  }
}

void sub_1D8998A98(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility, &protocol conformance descriptor for ConnectivityUtility);
  sub_1D8B13520();

  *a2 = *(v2 + 26);
}

void sub_1D8998B40(uint64_t *a1@<X0>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility, &protocol conformance descriptor for ConnectivityUtility);
  sub_1D8B13520();

  *a3 = *(v4 + 26);
}

double sub_1D8998BE8(unsigned __int8 *a1, uint64_t a2)
{
  if (*(v2 + 26) != *a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility, &protocol conformance descriptor for ConnectivityUtility);
    sub_1D8B13510();
  }

  return result;
}

void sub_1D8998CF0(uint64_t a1, uint64_t a2)
{
  sub_1D8B15E80();
  v4[2] = a2;
  v4[3] = a1;
  sub_1D89997A8(sub_1D8999E5C, v4, "VisualIntelligenceCore/ConnectivityUtility.swift", 48, 2u, 38);
}

void sub_1D8998D6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B15450();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B154C0();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v57 = &v53 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v53 - v12;
  v13 = sub_1D8B154E0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v54 = v5;
    v55 = v4;
    v62 = v2;
    if (qword_1EE0E4440 != -1)
    {
      swift_once();
    }

    v19 = sub_1D8B151E0();
    __swift_project_value_buffer(v19, qword_1EE0E4448);
    (*(v14 + 16))(v16, a2, v13);
    v20 = sub_1D8B151C0();
    v21 = sub_1D8B16200();
    v22 = os_log_type_enabled(v20, v21);
    v63 = v18;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v53 = a2;
      v24 = v23;
      v25 = swift_slowAlloc();
      v64 = v25;
      *v24 = 136315138;
      v26 = sub_1D8B154A0();
      v28 = v27;
      (*(v14 + 8))(v16, v13);
      v29 = sub_1D89AC714(v26, v28, &v64);
      v18 = v63;

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1D8783000, v20, v21, "Connectivity status changed to status: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1DA721330](v25, -1, -1);
      MEMORY[0x1DA721330](v24, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v16, v13);
    }

    v30 = v56;
    sub_1D8B154D0();
    v32 = v60;
    v31 = v61;
    v33 = *(v60 + 104);
    v34 = v57;
    LODWORD(v53) = *MEMORY[0x1E6977D30];
    v33(v57);
    sub_1D8999EA0(&qword_1EE0E3A58, MEMORY[0x1E6977D48], MEMORY[0x1E6977D50]);
    v35 = sub_1D8B158C0();
    v36 = *(v32 + 8);
    v36(v34, v31);
    v57 = v36;
    v36(v30, v31);
    v37 = (v35 ^ 1) & 1;
    if (v37 == v18[24])
    {
      v18[24] = v37;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v53 - 2) = v63;
      *(&v53 - 8) = v37;
      v64 = v63;
      sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility, &protocol conformance descriptor for ConnectivityUtility);
      v39 = v62;
      sub_1D8B13510();
      v62 = v39;

      v18 = v63;
    }

    v41 = v54;
    v40 = v55;
    v42 = v58;
    (*(v54 + 104))(v58, *MEMORY[0x1E6977B50], v55);
    v43 = sub_1D8B154B0() & 1;
    (*(v41 + 8))(v42, v40);
    if (v43 == v18[25])
    {
      v18[25] = v43;
    }

    else
    {
      v44 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v44);
      *(&v53 - 2) = v63;
      *(&v53 - 8) = v43;
      v64 = v63;
      sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility, &protocol conformance descriptor for ConnectivityUtility);
      v45 = v62;
      sub_1D8B13510();
      v62 = v45;

      v18 = v63;
    }

    v46 = v59;
    sub_1D8B154D0();
    v47 = (*(v60 + 88))(v46, v61);
    if (v47 == *MEMORY[0x1E6977D40])
    {
      if (v18[26])
      {
        v48 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v48);
        *(&v53 - 2) = v18;
        *(&v53 - 8) = 0;
        v64 = v18;
        sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility, &protocol conformance descriptor for ConnectivityUtility);
LABEL_25:
        sub_1D8B13510();

        return;
      }

      goto LABEL_21;
    }

    if (v47 == v53)
    {
      if (v18[26] != 2)
      {
        v49 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v49);
        *(&v53 - 2) = v18;
        *(&v53 - 8) = 2;
        v64 = v18;
        sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility, &protocol conformance descriptor for ConnectivityUtility);
        goto LABEL_25;
      }

LABEL_21:

      return;
    }

    v50 = v18[26];
    if (v47 == *MEMORY[0x1E6977D38])
    {
      if (v50 != 1)
      {
        v51 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v51);
        *(&v53 - 2) = v18;
        *(&v53 - 8) = 1;
        v64 = v18;
        sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility, &protocol conformance descriptor for ConnectivityUtility);
        goto LABEL_25;
      }

      goto LABEL_21;
    }

    if (v50 != 2)
    {
      v52 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v52);
      *(&v53 - 2) = v18;
      *(&v53 - 8) = 2;
      v64 = v18;
      sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility, &protocol conformance descriptor for ConnectivityUtility);
      sub_1D8B13510();
    }

    (v57)(v59, v61);
  }
}

void sub_1D89997A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_1D8B15E70();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1D8999E78();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1D8B16720();
    MEMORY[0x1DA71EFA0](0xD00000000000003FLL, 0x80000001D8B455C0);
    v11 = sub_1D8B16E60();
    MEMORY[0x1DA71EFA0](v11);

    MEMORY[0x1DA71EFA0](46, 0xE100000000000000);
    sub_1D8B168C0();
    __break(1u);
  }
}

Swift::Bool __swiftcall ConnectivityUtility.hasCellularService()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6965088]) init];
  v1 = [v0 serviceSubscriberCellularProviders];
  if (v1)
  {
    v2 = v1;
    v26 = v0;
    sub_1D881F764(0, &qword_1ECA66720, 0x1E6964F70);
    v3 = sub_1D8B15730();

    v5 = 0;
    v6 = 1 << *(v3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v3 + 64);
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
LABEL_11:
      v11 = *(*(v3 + 56) + ((v5 << 9) | (8 * __clz(__rbit64(v8)))));
      v12 = [v11 mobileCountryCode];
      if (v12)
      {
        v13 = v12;
        v14 = sub_1D8B15970();
        v16 = v15;

        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = v14 & 0xFFFFFFFFFFFFLL;
        }

        v18 = v17 == 0;
      }

      else
      {
        v18 = 1;
      }

      v8 &= v8 - 1;
      v19 = [v11 mobileNetworkCode];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1D8B15970();
        v23 = v22;

        v24 = HIBYTE(v23) & 0xF;
        if ((v23 & 0x2000000000000000) == 0)
        {
          v24 = v21 & 0xFFFFFFFFFFFFLL;
        }

        if (v24)
        {
          v25 = v18;
        }

        else
        {
          v25 = 1;
        }

        if ((v25 & 1) == 0)
        {

          return 1;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v10 >= v9)
      {

        return 0;
      }

      v8 = *(v3 + 64 + 8 * v10);
      ++v5;
      if (v8)
      {
        v5 = v10;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t ConnectivityUtility.deinit()
{

  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore19ConnectivityUtility___observationRegistrar;
  v2 = sub_1D8B13560();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ConnectivityUtility.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore19ConnectivityUtility___observationRegistrar;
  v2 = sub_1D8B13560();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1D8999C68()
{
  result = qword_1ECA66728;
  if (!qword_1ECA66728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66728);
  }

  return result;
}

uint64_t sub_1D8999CC4(uint64_t a1, __n128 a2)
{
  result = sub_1D8B13560();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8999DA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8864FBC;

  return sub_1D899838C(a1, v4, v5, v6);
}

uint64_t sub_1D8999EA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Date.relativeShortDateString.getter()
{
  v29 = sub_1D8B131D0();
  v0 = *(v29 - 8);
  v1 = MEMORY[0x1EEE9AC00](v29);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v28 - v4;
  v6 = sub_1D8B13350();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B15930();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v28 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1D8B13450();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B133C0();
  v15 = sub_1D8B13390();
  v16 = *(v12 + 8);
  v16(v14, v11);
  if (v15)
  {
    sub_1D8B158D0();
    sub_1D87D1F20();
    if (!sub_1D8B163E0())
    {
      v17 = [objc_opt_self() mainBundle];
    }

LABEL_8:
    sub_1D8B132F0();
    return sub_1D8B159D0();
  }

  sub_1D8B133C0();
  sub_1D8B131C0();
  sub_1D8B13110();
  v18 = *(v0 + 8);
  v19 = v3;
  v20 = v29;
  v18(v19, v29);
  v21 = sub_1D8B13400();
  v18(v5, v20);
  v16(v14, v11);
  if (v21)
  {
    sub_1D8B158D0();
    sub_1D87D1F20();
    if (!sub_1D8B163E0())
    {
      v22 = [objc_opt_self() mainBundle];
    }

    goto LABEL_8;
  }

  v24 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v24 setDateStyle_];
  [v24 setTimeStyle_];
  v25 = sub_1D8B13120();
  v26 = [v24 stringFromDate_];

  v27 = sub_1D8B15970();
  return v27;
}