uint64_t sub_24F679228(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = *(a5 + 32);
  v7 = *(a5 + 40);
  v31 = *(a5 + 48);
  sub_24E5FD138(v8, v7, v31);

  sub_24E600B40(0, 0xE000000000000000, 0);

  v9 = v5 - 1;
  if (v5 == 1)
  {
    return v8;
  }

  v11 = v8;
  v12 = a5 + 88;
  do
  {
    v30 = v9;
    v29 = v11;
    v13 = *(v12 - 24);
    v14 = *(v12 - 16);
    v24 = v13;
    v15 = *(v12 - 8);
    v25 = v15;
    v12 += 32;
    sub_24E5FD138(v13, v14, v15);

    v16 = sub_24F925C78();
    v18 = v17;
    v20 = v19;
    v21 = sub_24F925C78();
    v27 = v22;
    v28 = v21;
    v26 = v23;
    sub_24E600B40(v24, v14, v25);

    sub_24E600B40(v16, v18, v20 & 1);

    sub_24E600B40(v29, v7, v31 & 1);

    result = v28;
    v31 = v26;
    v7 = v27;
    v11 = v28;
    v9 = v30 - 1;
  }

  while (v30 != 1);
  return result;
}

uint64_t sub_24F679428@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F677DC4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BDE0, &unk_24FA18E08) + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
  v11 = *MEMORY[0x277CE1050];
  v12 = sub_24F926E78();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  result = swift_getKeyPath();
  *v9 = result;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

unint64_t sub_24F67955C()
{
  result = qword_27F24BCA0;
  if (!qword_27F24BCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC90, &unk_24FA18C40);
    sub_24F6795E8();
    sub_24F679A34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BCA0);
  }

  return result;
}

unint64_t sub_24F6795E8()
{
  result = qword_27F24BCA8;
  if (!qword_27F24BCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC88, &qword_24FA18C38);
    sub_24F679674();
    sub_24F679778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BCA8);
  }

  return result;
}

unint64_t sub_24F679674()
{
  result = qword_27F24BCB0;
  if (!qword_27F24BCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC80, &qword_24FA18C30);
    sub_24F679730(&qword_27F24BCB8, type metadata accessor for AppEventCardConfiguration.HeadingStack, &unk_24FA18DB8);
    sub_24E74524C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BCB0);
  }

  return result;
}

uint64_t sub_24F679730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F679778()
{
  result = qword_27F24BCC0;
  if (!qword_27F24BCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC58, &unk_24FA2AEE0);
    sub_24F679730(&qword_27F24BCC8, type metadata accessor for AppEventCardConfiguration.VisualView, &unk_24FA18D68);
    sub_24F679834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BCC0);
  }

  return result;
}

unint64_t sub_24F679834()
{
  result = qword_27F24BCD0;
  if (!qword_27F24BCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC48, &qword_24FA18BE8);
    sub_24E7179AC();
    sub_24F67A898(&qword_27F24BCD8, &qword_27F24BCE0, &unk_24FA18C60, sub_24F6798EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BCD0);
  }

  return result;
}

unint64_t sub_24F67991C()
{
  result = qword_27F24BCF8;
  if (!qword_27F24BCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BD00, &qword_24FA18C70);
    sub_24F6799A8();
    sub_24E63C774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BCF8);
  }

  return result;
}

unint64_t sub_24F6799A8()
{
  result = qword_27F24BD08;
  if (!qword_27F24BD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BD10, &unk_24FA2AF00);
    sub_24E63C774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BD08);
  }

  return result;
}

unint64_t sub_24F679A34()
{
  result = qword_27F24BD18;
  if (!qword_27F24BD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC40, &qword_24FA18BE0);
    sub_24F679AC0();
    sub_24F679B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BD18);
  }

  return result;
}

unint64_t sub_24F679AC0()
{
  result = qword_27F24BD20;
  if (!qword_27F24BD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC38, &qword_24FA18BD8);
    sub_24F679730(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
    sub_24E7453CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BD20);
  }

  return result;
}

unint64_t sub_24F679B7C()
{
  result = qword_27F24BD28;
  if (!qword_27F24BD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC18, &unk_24FA18BB0);
    sub_24F679C08();
    sub_24F679CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BD28);
  }

  return result;
}

unint64_t sub_24F679C08()
{
  result = qword_27F24BD30;
  if (!qword_27F24BD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC20, &qword_24FA18BC0);
    sub_24E602068(&qword_27F24BD38, &qword_27F24BD40, &qword_24FA18C78, MEMORY[0x277D7EB00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BD30);
  }

  return result;
}

unint64_t sub_24F679CB8()
{
  result = qword_27F24BD48;
  if (!qword_27F24BD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC08, &qword_24FA18BA0);
    sub_24F67A898(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BD48);
  }

  return result;
}

uint64_t sub_24F679D78()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for CardLayoutMetrics(0);
  v6 = (v3 + v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  type metadata accessor for CardLayoutMetrics.CardHeight(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v8 = sub_24F922348();
    (*(*(v8 - 8) + 8))(v0 + v6, v8);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + v6 + *(v5 + 88)));

  return swift_deallocObject();
}

uint64_t sub_24F679F84@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_24F9289E8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  type metadata accessor for CardLayoutMetrics(0);

  return sub_24F6759A4(v1 + v4, a1);
}

uint64_t sub_24F67A058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F67A0B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F67A128()
{
  result = qword_27F24BD98;
  if (!qword_27F24BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BD98);
  }

  return result;
}

uint64_t sub_24F67A17C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F67A1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CommonCardAttributes(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F67A2C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CommonCardAttributes(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = -a2;
  }

  return result;
}

void sub_24F67A384(uint64_t a1)
{
  type metadata accessor for CommonCardAttributes(319);
  if (v1 <= 0x3F)
  {
    sub_24F67A7F0(319, &qword_27F214D30, type metadata accessor for CardSafeArea, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F67A454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F320, &qword_24FA18D00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_24F67A5B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F320, &qword_24FA18D00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24F67A6F4(uint64_t a1)
{
  sub_24F67A7F0(319, &qword_27F24BDC0, type metadata accessor for GSKAppEventFormattedDate, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v2 <= 0x3F)
    {
      sub_24F67A7F0(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F67A7F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F67A898(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24F67A914()
{
  result = qword_27F24BDD8;
  if (!qword_27F24BDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC98, &unk_24FA18C50);
    sub_24F67955C();
    sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BDD8);
  }

  return result;
}

uint64_t sub_24F67AA14()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = sub_24F922348();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

unint64_t sub_24F67ABD0()
{
  result = qword_27F24BE78;
  if (!qword_27F24BE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE00, &unk_24FA18E90);
    sub_24F67AC5C();
    sub_24E63E080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BE78);
  }

  return result;
}

unint64_t sub_24F67AC5C()
{
  result = qword_27F24BE80;
  if (!qword_27F24BE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE08, &qword_24FA18EA0);
    sub_24E92CE34();
    sub_24E602068(&qword_27F2141B8, &qword_27F2141C0, &qword_24F93C5B0, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BE80);
  }

  return result;
}

unint64_t sub_24F67AD14()
{
  result = qword_27F24BE88;
  if (!qword_27F24BE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE48, &qword_24FA18EE0);
    sub_24F67ADA0();
    sub_24F67AF74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BE88);
  }

  return result;
}

unint64_t sub_24F67ADA0()
{
  result = qword_27F24BE90;
  if (!qword_27F24BE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE68, &qword_24FA18F00);
    sub_24F67AE2C();
    sub_24F67AEB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BE90);
  }

  return result;
}

unint64_t sub_24F67AE2C()
{
  result = qword_27F24BE98;
  if (!qword_27F24BE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE58, &qword_24FA18EF0);
    sub_24F67AEB8();
    sub_24E63E080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BE98);
  }

  return result;
}

unint64_t sub_24F67AEB8()
{
  result = qword_27F24BEA0;
  if (!qword_27F24BEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE60, &qword_24FA18EF8);
    sub_24E92CBF4();
    sub_24F679730(&qword_27F2193C0, type metadata accessor for CardElementView.PrimaryMixedMediaView, &unk_24FA04A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BEA0);
  }

  return result;
}

unint64_t sub_24F67AF74()
{
  result = qword_27F24BEA8;
  if (!qword_27F24BEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE30, &qword_24FA18EC8);
    sub_24F67B000();
    sub_24F67B08C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BEA8);
  }

  return result;
}

unint64_t sub_24F67B000()
{
  result = qword_27F24BEB0;
  if (!qword_27F24BEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE20, &qword_24FA18EB8);
    sub_24F67B08C();
    sub_24E63E080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BEB0);
  }

  return result;
}

unint64_t sub_24F67B08C()
{
  result = qword_27F24BEB8;
  if (!qword_27F24BEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE28, &qword_24FA18EC0);
    sub_24E92CD48();
    sub_24F679730(&qword_27F2141D8, type metadata accessor for GSKVideoView, &unk_24F949084);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BEB8);
  }

  return result;
}

unint64_t sub_24F67B148()
{
  result = qword_27F24BEC0;
  if (!qword_27F24BEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE10, &qword_24FA18EA8);
    sub_24F67ABD0();
    sub_24F67AC5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BEC0);
  }

  return result;
}

unint64_t sub_24F67B1F0()
{
  result = qword_27F24BEC8;
  if (!qword_27F24BEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BDE0, &unk_24FA18E08);
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30, &qword_24F958D50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BEC8);
  }

  return result;
}

unint64_t sub_24F67B2AC()
{
  result = qword_27F24BED0;
  if (!qword_27F24BED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BDF0, &qword_24FA18E80);
    sub_24F67B338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BED0);
  }

  return result;
}

unint64_t sub_24F67B338()
{
  result = qword_27F24BED8;
  if (!qword_27F24BED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BDE8, &qword_24FA18E50);
    sub_24F67B3BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BED8);
  }

  return result;
}

unint64_t sub_24F67B3BC()
{
  result = qword_27F24BEE0;
  if (!qword_27F24BEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BEE8, &unk_24FA18FA0);
    sub_24F67B440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BEE0);
  }

  return result;
}

unint64_t sub_24F67B440()
{
  result = qword_27F24BEF0;
  if (!qword_27F24BEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE70, &qword_24FA18F08);
    sub_24F67AD14();
    sub_24F67B148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BEF0);
  }

  return result;
}

uint64_t sub_24F67B4CC@<X0>(void *a1@<X8>)
{
  sub_24F681138();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24F67B51C(uint64_t *a1)
{
  sub_24F681138();

  return sub_24F924878();
}

uint64_t sub_24F67B57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_24F924038();
  sub_24F924E38();
  sub_24E667ED0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_24F926DB8();
}

void *keypath_getTm_8@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X4>, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t)@<X5>, _BYTE *a4@<X8>)
{
  v7 = a1();
  result = a3(&v9, a2, a2, v7);
  *a4 = v9;
  return result;
}

uint64_t keypath_setTm_4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *, uint64_t, uint64_t, uint64_t))
{
  v11 = *a1;
  v9 = a5();
  return a7(&v11, a6, a6, v9);
}

uint64_t PageToolbarModifier.init(bagContract:localPlayerProvider:arcadeSubscription:networkMonitor:provider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 72) = swift_getKeyPath();
  *(a6 + 80) = 0;
  *(a6 + 88) = swift_getKeyPath();
  *(a6 + 96) = 0;
  type metadata accessor for TransientToolbarConfiguration(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC12GameStoreKit29TransientToolbarConfiguration__principal;
  v12 = type metadata accessor for TransientToolbarConfiguration.ToolbarItem(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v10 + v11, 1, 1, v12);
  v13(v10 + v11, 1, 1, v12);
  v14 = OBJC_IVAR____TtC12GameStoreKit29TransientToolbarConfiguration__topBarTrailing;
  v13(v10 + OBJC_IVAR____TtC12GameStoreKit29TransientToolbarConfiguration__topBarTrailing, 1, 1, v12);
  v13(v10 + v14, 1, 1, v12);
  sub_24F91FDB8();
  sub_24F926F28();
  *(a6 + 104) = v18;
  *(a6 + 112) = v19;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  return sub_24E612C80(a5, a6 + 32);
}

uint64_t PageToolbarModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v76 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40, &qword_24F984790);
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x28223BE20](v5);
  v75 = &v61 - v6;
  v7 = sub_24F925338();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x28223BE20](v7);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BEF8, &qword_24FA19008);
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - v12;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF00, &qword_24FA19010);
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v15 = &v61 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF08, &qword_24FA19018);
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v17 = &v61 - v16;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF10, &qword_24FA19020);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v64 = &v61 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF18, &qword_24FA19028);
  v73 = *(v19 - 8);
  v74 = v19;
  MEMORY[0x28223BE20](v19);
  v72 = &v61 - v20;
  KeyPath = swift_getKeyPath();
  v22 = *(v2 + 112);
  v79 = *(v2 + 104);
  v80 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF20, &qword_24FA19058);
  sub_24F926F38();
  v23 = *v83;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF28, &qword_24FA19060);
  (*(*(v24 - 8) + 16))(v13, a1, v24);
  v25 = &v13[*(v11 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  v26 = v3[7];
  v27 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v26);
  v79 = (*(v27 + 8))(v26, v27);
  v80 = v28;
  v29 = sub_24F67C460();
  v30 = sub_24E600AEC();
  v31 = MEMORY[0x277D837D0];
  sub_24F926458();

  sub_24E601704(v13, &qword_27F24BEF8, &qword_24FA19008);
  v32 = v3[7];
  v33 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v32);
  v34 = (*(v33 + 24))(v32, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FC8, &unk_24F984420);
  sub_24F9242C8();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_24F93DE60;
  sub_24F9242B8();
  v79 = v11;
  v80 = v31;
  v81 = v29;
  v82 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v61;
  MEMORY[0x25304BE90](v34, v35, v61, OpaqueTypeConformance2);

  v38 = v15;
  v39 = v37;
  (*(v62 + 8))(v38, v37);
  v40 = v3[7];
  v41 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v40);
  (*(v41 + 16))(v83, v40, v41);
  if (v83[0] > 1u)
  {
    v42 = v66;
    if (v83[0] == 2)
    {
      sub_24F9252F8();
    }

    else
    {
      sub_24F925318();
    }
  }

  else
  {
    v42 = v66;
    if (v83[0])
    {
      sub_24F925308();
    }

    else
    {
      sub_24F925328();
    }
  }

  v43 = v70;
  v44 = v68;
  v45 = v42;
  v46 = v71;
  (*(v70 + 32))(v68, v45, v71);
  v79 = v39;
  v80 = OpaqueTypeConformance2;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v64;
  v49 = v65;
  sub_24F926798();
  (*(v43 + 8))(v44, v46);
  v50 = (*(v63 + 8))(v17, v49);
  v71 = &v61;
  MEMORY[0x28223BE20](v50);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF50, &qword_24FA19078);
  v79 = v49;
  v80 = v47;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = sub_24E602068(&qword_27F24BF58, &qword_27F24BF50, &qword_24FA19078, MEMORY[0x277CDDF68]);
  v53 = v72;
  v54 = v69;
  sub_24F926A58();
  (*(v67 + 8))(v48, v54);
  v55 = sub_24E6A4C1C();
  v56 = v75;
  v57 = sub_24F924B68();
  v71 = &v61;
  MEMORY[0x28223BE20](v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF60, &qword_24FA19080);
  v79 = v54;
  v80 = v70;
  v81 = v51;
  v82 = v52;
  swift_getOpaqueTypeConformance2();
  v79 = &type metadata for GameOverlayViewPredicate;
  v80 = v55;
  swift_getOpaqueTypeConformance2();
  sub_24F67EA18();
  v58 = v74;
  v59 = v78;
  sub_24F926B08();
  (*(v77 + 8))(v56, v59);
  return (*(v73 + 8))(v53, v58);
}

uint64_t sub_24F67C40C@<X0>(void *a1@<X8>)
{
  sub_24F681138();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

unint64_t sub_24F67C460()
{
  result = qword_27F24BF30;
  if (!qword_27F24BF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BEF8, &qword_24FA19008);
    sub_24E602068(&qword_27F24BF38, &qword_27F24BF28, &qword_24FA19060, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F24BF40, &qword_27F24BF48, &unk_24FA19068, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BF30);
  }

  return result;
}

uint64_t sub_24F67C544@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v203 = a2;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFD0, &qword_24FA192D0);
  MEMORY[0x28223BE20](v202);
  v201 = v173 - v3;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFD8, &qword_24FA192D8);
  v213 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v199 = v173 - v4;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFE0, &unk_24FA192E0);
  v198 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v197 = v173 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215280, &unk_24F93FA90);
  MEMORY[0x28223BE20](v6 - 8);
  v196 = v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v206 = (v173 - v9);
  v207 = type metadata accessor for TransientToolbarConfiguration.ToolbarItem(0);
  v209 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v188 = v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v187 = v173 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFE8, &qword_24FA192F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v212 = v173 - v17;
  MEMORY[0x28223BE20](v18);
  v214 = v173 - v19;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFF0, &qword_24FA192F8);
  v195 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v183 = v173 - v20;
  v21 = sub_24F925018();
  MEMORY[0x28223BE20](v21 - 8);
  v178 = v173 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFF8, &qword_24FA19300);
  v182 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v181 = v173 - v23;
  v24 = sub_24F928AD8();
  MEMORY[0x28223BE20](v24 - 8);
  v177 = v173 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_24F92A6B8();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v176 = v173 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C000, &qword_24FA19308);
  MEMORY[0x28223BE20](v27 - 8);
  v193 = v173 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v211 = v173 - v30;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C008, &qword_24FA19310);
  v31 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v186 = v173 - v32;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C010, &qword_24FA19318);
  v185 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v184 = v173 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C018, &unk_24FA19320);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = v173 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v210 = v173 - v38;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244250, &qword_24F9FACC0);
  v39 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v204 = v173 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219D80, &qword_24FA19330);
  MEMORY[0x28223BE20](v41 - 8);
  v208 = v173 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = v173 - v44;
  MEMORY[0x28223BE20](v46);
  v217 = v173 - v47;
  sub_24F67E26C(a1 + 4);
  v48 = a1[7];
  v49 = a1[8];
  v218 = a1;
  __swift_project_boxed_opaque_existential_1(a1 + 4, v48);
  (*(v49 + 32))(&v219, v48, v49);
  v50 = v222;

  v200 = v15;
  v191 = v39;
  if (v50)
  {
    if (v50[1].Kind)
    {
      v52 = v218[1];
      v51 = v218[2];
      v174 = v36;
      v53 = v218[3];
      v219 = v52;
      v220 = v51;
      v173[1] = v52;
      v221 = v53;
      LOBYTE(v222) = 0;
      v223 = v50;
      v54 = sub_24E71428C();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();

      MEMORY[0x25304AA30](&v219, &type metadata for PageToolbarItemGroupView, v54);
      v175 = v31;

      v55 = v205;

      (*(v39 + 16))(v45, v204, v55);
      v56 = *(v39 + 56);
      v56(v45, 0, 1, v55);
      v219 = &type metadata for PageToolbarItemGroupView;
      v220 = v54;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x25304AA60](v45, v55, OpaqueTypeConformance2);

      v36 = v174;

      sub_24E601704(v45, &qword_27F219D80, &qword_24FA19330);
      v31 = v175;
      (*(v39 + 8))(v204, v55);
      goto LABEL_6;
    }
  }

  v56 = *(v39 + 56);
  v58 = v205;
  v56(v45, 1, 1, v205);
  v59 = sub_24E71428C();
  v219 = &type metadata for PageToolbarItemGroupView;
  v220 = v59;
  v60 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25304AA60](v45, v58, v60);
  sub_24E601704(v45, &qword_27F219D80, &qword_24FA19330);
LABEL_6:
  v61 = v218[7];
  v62 = v218[8];
  __swift_project_boxed_opaque_existential_1(v218 + 4, v61);
  (*(v62 + 32))(&v219, v61, v62);
  v63 = v219;

  if (v63)
  {
    if (v63[1].Kind)
    {
      v64 = v218[2];
      v65 = v36;
      v66 = v31;
      v67 = v218[3];
      v219 = v218[1];
      v220 = v64;
      v221 = v67;
      LOBYTE(v222) = 4;
      v223 = v63;
      v68 = v56;
      v69 = sub_24E71428C();

      v70 = v184;
      sub_24F923D98();

      v219 = &type metadata for PageToolbarItemGroupView;
      v220 = v69;
      v56 = v68;
      v71 = swift_getOpaqueTypeConformance2();
      v72 = v186;
      v73 = v189;
      MEMORY[0x25304AA30](v70, v189, v71);
      v74 = v190;
      (*(v66 + 16))(v65, v72, v190);
      (*(v66 + 56))(v65, 0, 1, v74);
      v219 = v73;
      v220 = v71;
      v75 = swift_getOpaqueTypeConformance2();
      MEMORY[0x25304AA60](v65, v74, v75);
      sub_24E601704(v65, &qword_27F24C018, &unk_24FA19320);
      (*(v66 + 8))(v72, v74);
      v185[1](v70, v73);
      goto LABEL_11;
    }
  }

  v76 = v190;
  (*(v31 + 56))(v36, 1, 1, v190);
  v77 = sub_24E71428C();
  v219 = &type metadata for PageToolbarItemGroupView;
  v220 = v77;
  v78 = swift_getOpaqueTypeConformance2();
  v219 = v189;
  v220 = v78;
  v79 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25304AA60](v36, v76, v79);
  sub_24E601704(v36, &qword_27F24C018, &unk_24FA19320);
LABEL_11:
  v80 = v218[7];
  v81 = v218[8];
  __swift_project_boxed_opaque_existential_1(v218 + 4, v80);
  (*(v81 + 32))(&v219, v80, v81);
  v82 = v220;

  if (!v82)
  {
LABEL_15:
    v91 = v205;
    v56(v45, 1, 1, v205);
    v92 = sub_24E71428C();
    v219 = &type metadata for PageToolbarItemGroupView;
    v220 = v92;
    v93 = swift_getOpaqueTypeConformance2();
    MEMORY[0x25304AA60](v45, v91, v93);
    sub_24E601704(v45, &qword_27F219D80, &qword_24FA19330);
    goto LABEL_16;
  }

  if (!*(v82 + 16))
  {

    goto LABEL_15;
  }

  v83 = v218[2];
  v84 = v218[3];
  v219 = v218[1];
  v220 = v83;
  v190 = v219;
  v189 = v83;
  v221 = v84;
  v186 = v84;
  LOBYTE(v222) = 5;
  v223 = v82;
  v85 = sub_24E71428C();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v185 = v56;
  v86 = v204;
  MEMORY[0x25304AA30](&v219, &type metadata for PageToolbarItemGroupView, v85);
  v87 = v205;

  v88 = v45;
  v89 = v191;
  (*(v191 + 16))(v88, v86, v87);
  (v185)(v88, 0, 1, v87);
  v219 = &type metadata for PageToolbarItemGroupView;
  v220 = v85;
  v90 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25304AA60](v88, v87, v90);

  sub_24E601704(v88, &qword_27F219D80, &qword_24FA19330);
  (*(v89 + 8))(v86, v87);
LABEL_16:
  v94 = v218[7];
  v95 = v218[8];
  __swift_project_boxed_opaque_existential_1(v218 + 4, v94);
  (*(v95 + 32))(&v219, v94, v95);
  v96 = v223;

  if (v96 == 2 || (v96 & 1) == 0)
  {
    v107 = v193;
    v108 = v192;
    (v195[3].Description)(v193, 1, 1, v192);
    v109 = sub_24E602068(&qword_27F24C020, &qword_27F24BFF8, &qword_24FA19300, MEMORY[0x277CDD7A8]);
    v219 = v194;
    v220 = v109;
    v110 = swift_getOpaqueTypeConformance2();
    MEMORY[0x25304AA60](v107, v108, v110);
    sub_24E601704(v107, &qword_27F24C000, &qword_24FA19308);
  }

  else
  {
    sub_24F928A98();
    sub_24F92A678();
    v97 = v176;
    sub_24F92A668();
    v98 = sub_24F924FB8();
    MEMORY[0x28223BE20](v98);
    v173[-2] = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C058, &unk_24FA193A0);
    sub_24E602068(&qword_27F24C060, &qword_27F24C058, &unk_24FA193A0, MEMORY[0x277D7EB00]);
    v99 = v181;
    sub_24F923668();
    v100 = sub_24E602068(&qword_27F24C020, &qword_27F24BFF8, &qword_24FA19300, MEMORY[0x277CDD7A8]);
    v101 = v183;
    v102 = v194;
    MEMORY[0x25304AA30](v99, v194, v100);
    v103 = v195;
    v104 = v193;
    v105 = v192;
    (v195[1].Kind)(v193, v101, v192);
    (v103[3].Description)(v104, 0, 1, v105);
    v219 = v102;
    v220 = v100;
    v106 = swift_getOpaqueTypeConformance2();
    MEMORY[0x25304AA60](v104, v105, v106);
    sub_24E601704(v104, &qword_27F24C000, &qword_24FA19308);
    (v103->Description)(v101, v105);
    (*(v182 + 8))(v99, v102);
    (*(v179 + 8))(v97, v180);
  }

  v112 = v218[13];
  v111 = v218[14];
  v219 = v112;
  v220 = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF20, &qword_24FA19058);
  sub_24F926F38();
  v113 = v226;
  swift_getKeyPath();
  v219 = v113;
  v205 = sub_24F680EF4(&qword_27F215300, type metadata accessor for TransientToolbarConfiguration, &unk_24FA34B54);
  sub_24F91FD88();

  v114 = OBJC_IVAR____TtC12GameStoreKit29TransientToolbarConfiguration__principal;
  swift_beginAccess();
  v115 = v206;
  sub_24E60169C(v113 + v114, v206, &qword_27F215280, &unk_24F93FA90);

  v116 = *(v209 + 48);
  v117 = v209 + 48;
  if (v116(v115, 1, v207) == 1)
  {
    sub_24E601704(v206, &qword_27F215280, &unk_24F93FA90);
    v118 = v212;
    v119 = v216;
    v206 = *(v213 + 56);
    (v206)(v212, 1, 1, v216);
    v120 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C028, &unk_24FA19360);
    v121 = sub_24F680F3C();
    v226 = v120;
    v227 = v121;
    v122 = swift_getOpaqueTypeConformance2();
    v226 = v215;
    v227 = v122;
    v123 = swift_getOpaqueTypeConformance2();
    MEMORY[0x25304AA60](v118, v119, v123);
    sub_24E601704(v118, &qword_27F24BFE8, &qword_24FA192F0);
  }

  else
  {
    v124 = v187;
    sub_24F6810C8(v206, v187, type metadata accessor for TransientToolbarConfiguration.ToolbarItem);
    LOBYTE(v226) = 3;
    v125 = *v218;
    v194 = v116;
    v126 = v197;
    sub_24F85BF58(&v226, v125, v197);
    v127 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C028, &unk_24FA19360);
    v128 = sub_24F680F3C();
    v226 = v127;
    v227 = v128;
    v129 = swift_getOpaqueTypeConformance2();
    v130 = v199;
    v204 = v111;
    v131 = v215;
    MEMORY[0x25304AA30](v126, v215, v129);
    v209 = v117;
    v195 = v112;
    v132 = v212;
    v133 = v213;
    v134 = v216;
    (*(v213 + 16))(v212, v130, v216);
    v206 = *(v133 + 56);
    (v206)(v132, 0, 1, v134);
    v226 = v131;
    v227 = v129;
    v135 = swift_getOpaqueTypeConformance2();
    MEMORY[0x25304AA60](v132, v134, v135);
    sub_24E601704(v132, &qword_27F24BFE8, &qword_24FA192F0);
    v136 = v133;
    v112 = v195;
    (*(v136 + 8))(v130, v134);
    v137 = v126;
    v116 = v194;
    v138 = v131;
    v111 = v204;
    (*(v198 + 8))(v137, v138);
    sub_24E6562E4(v124);
  }

  v226 = v112;
  v227 = v111;
  sub_24F926F38();
  v139 = v224;
  swift_getKeyPath();
  v226 = v139;
  sub_24F91FD88();

  v140 = OBJC_IVAR____TtC12GameStoreKit29TransientToolbarConfiguration__topBarTrailing;
  swift_beginAccess();
  v141 = v139 + v140;
  v142 = v196;
  sub_24E60169C(v141, v196, &qword_27F215280, &unk_24F93FA90);

  if (v116(v142, 1, v207) == 1)
  {
    sub_24E601704(v142, &qword_27F215280, &unk_24F93FA90);
    v143 = v212;
    v144 = v216;
    (v206)(v212, 1, 1, v216);
    v145 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C028, &unk_24FA19360);
    v146 = sub_24F680F3C();
    v224 = v145;
    v225 = v146;
    v147 = swift_getOpaqueTypeConformance2();
    v224 = v215;
    v225 = v147;
    v148 = swift_getOpaqueTypeConformance2();
    v149 = v200;
    MEMORY[0x25304AA60](v143, v144, v148);
    sub_24E601704(v143, &qword_27F24BFE8, &qword_24FA192F0);
  }

  else
  {
    v150 = v188;
    sub_24F6810C8(v142, v188, type metadata accessor for TransientToolbarConfiguration.ToolbarItem);
    LOBYTE(v224) = 4;
    v151 = v197;
    sub_24F85BF58(&v224, *v218, v197);
    v152 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C028, &unk_24FA19360);
    v153 = sub_24F680F3C();
    v224 = v152;
    v225 = v153;
    v154 = swift_getOpaqueTypeConformance2();
    v155 = v199;
    v156 = v215;
    MEMORY[0x25304AA30](v151, v215, v154);
    v158 = v212;
    v157 = v213;
    v159 = v216;
    (*(v213 + 16))(v212, v155, v216);
    (v206)(v158, 0, 1, v159);
    v224 = v156;
    v225 = v154;
    v160 = swift_getOpaqueTypeConformance2();
    v149 = v200;
    MEMORY[0x25304AA60](v158, v159, v160);
    sub_24E601704(v158, &qword_27F24BFE8, &qword_24FA192F0);
    (*(v157 + 8))(v155, v159);
    (*(v198 + 8))(v151, v156);
    sub_24E6562E4(v150);
  }

  v161 = v202[12];
  v162 = v202[16];
  v163 = v202[20];
  v164 = v202[24];
  v218 = v202[28];
  v165 = v201;
  sub_24E60169C(v217, v201, &qword_27F219D80, &qword_24FA19330);
  v166 = v210;
  sub_24E60169C(v210, v165 + v161, &qword_27F24C018, &unk_24FA19320);
  v167 = v165 + v162;
  v168 = v208;
  sub_24E60169C(v208, v167, &qword_27F219D80, &qword_24FA19330);
  v169 = v211;
  sub_24E60169C(v211, v165 + v163, &qword_27F24C000, &qword_24FA19308);
  v170 = v165 + v164;
  v171 = v214;
  sub_24E60169C(v214, v170, &qword_27F24BFE8, &qword_24FA192F0);
  sub_24E60169C(v149, v218 + v165, &qword_27F24BFE8, &qword_24FA192F0);
  sub_24F924D18();
  sub_24E601704(v149, &qword_27F24BFE8, &qword_24FA192F0);
  sub_24E601704(v171, &qword_27F24BFE8, &qword_24FA192F0);
  sub_24E601704(v169, &qword_27F24C000, &qword_24FA19308);
  sub_24E601704(v168, &qword_27F219D80, &qword_24FA19330);
  sub_24E601704(v166, &qword_27F24C018, &unk_24FA19320);
  return sub_24E601704(v217, &qword_27F219D80, &qword_24FA19330);
}

void sub_24F67E26C(void *a1)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 88);
  if (*(v1 + 96) == 1)
  {
    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else
  {

    sub_24F92BDC8();
    v8 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v7, 0);
    (*(v4 + 8))(v6, v3);
    if (LOBYTE(v19[0]) != 1)
    {
      return;
    }
  }

  v9 = MEMORY[0x277D84F90];
  if (qword_27F210760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = off_27F2301C0;
  v11 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems;
  swift_beginAccess();
  *&v10[v11] = v9;

  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = *(v13 + 32);
  v14(v19, v12, v13);
  v15 = v19[1];

  if (v15)
  {
    if (*(v15 + 16))
    {
LABEL_12:
      v16 = off_27F2301C0;
      v17 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems;
      swift_beginAccess();
      *&v16[v17] = v15;
      goto LABEL_13;
    }
  }

  v14(v19, v12, v13);
  v15 = v19[3];

  if (!v15)
  {
    return;
  }

  if (*(v15 + 16))
  {
    goto LABEL_12;
  }

LABEL_13:
}

uint64_t sub_24F67E530(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-1] - v3;
  sub_24F9232E8();
  v5 = sub_24F9232F8();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = sub_24F92A6B8();
  v10[3] = v6;
  v10[4] = MEMORY[0x277D223D8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C068, &qword_24FA193B0);
  sub_24E602068(&qword_27F24C070, &qword_27F24C068, &qword_24FA193B0, MEMORY[0x277CDEFF0]);
  return sub_24F921788();
}

uint64_t sub_24F67E71C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F926DF8();
  *a1 = result;
  return result;
}

uint64_t sub_24F67E75C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[7];
  v7 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v6);
  (*(v7 + 16))(&v23, v6, v7);
  if (v23 == 2)
  {

LABEL_4:
    v10 = a2[7];
    v11 = a2[8];
    __swift_project_boxed_opaque_existential_1(a2 + 4, v10);
    (*(v11 + 32))(&v23, v10, v11);
    v21[0] = v23;
    v21[1] = v24;
    v21[2] = v25;
    v21[3] = v26;
    v22 = v27;
    v12 = sub_24E7D87D8();

    v9 = v12 ^ 1;
    goto LABEL_5;
  }

  v8 = sub_24F92CE08();

  v9 = 0;
  if (v8)
  {
    goto LABEL_4;
  }

LABEL_5:
  v13 = a2[7];
  v14 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v13);
  (*(v14 + 16))(v21, v13, v14);
  v15 = v21[0];
  v16 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF60, &qword_24FA19080) + 36);
  *v16 = v9 & 1;
  *(v16 + 1) = v15;
  v28 = 0;
  sub_24F926F28();
  v17 = v24;
  *(v16 + 8) = v23;
  *(v16 + 16) = v17;
  v18 = *(type metadata accessor for ScrollEdgeDetectionModifier(0) + 28);
  *(v16 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF18, &qword_24FA19028);
  return (*(*(v19 - 8) + 16))(a3, a1, v19);
}

unint64_t sub_24F67EA18()
{
  result = qword_27F24BF68;
  if (!qword_27F24BF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF60, &qword_24FA19080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF10, &qword_24FA19020);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF50, &qword_24FA19078);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF08, &qword_24FA19018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF00, &qword_24FA19010);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BEF8, &qword_24FA19008);
    sub_24F67C460();
    sub_24E600AEC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F24BF58, &qword_27F24BF50, &qword_24FA19078, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    sub_24F680EF4(&qword_27F24BF70, type metadata accessor for ScrollEdgeDetectionModifier, &unk_24FA19218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BF68);
  }

  return result;
}

uint64_t type metadata accessor for ScrollEdgeDetectionModifier(uint64_t a1)
{
  result = qword_27F24BF78;
  if (!qword_27F24BF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F67ECC4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF18, &qword_24FA19028);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40, &qword_24F984790);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF60, &qword_24FA19080);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF10, &qword_24FA19020);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF50, &qword_24FA19078);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF08, &qword_24FA19018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF00, &qword_24FA19010);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BEF8, &qword_24FA19008);
  sub_24F67C460();
  sub_24E600AEC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F24BF58, &qword_27F24BF50, &qword_24FA19078, MEMORY[0x277CDDF68]);
  swift_getOpaqueTypeConformance2();
  sub_24E6A4C1C();
  swift_getOpaqueTypeConformance2();
  sub_24F67EA18();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F67EF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24F67F004(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F67F0B4(uint64_t a1)
{
  sub_24E654514();
  if (v1 <= 0x3F)
  {
    sub_24E684120(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F67F16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a1;
  v114 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF88, &qword_24FA19268);
  MEMORY[0x28223BE20](v3);
  v5 = &v86 - v4;
  v106 = sub_24F925218();
  v109 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v93 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v101);
  v110 = &v86 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v8 - 8);
  v95 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v107 = &v86 - v11;
  MEMORY[0x28223BE20](v12);
  v108 = (&v86 - v13);
  v98 = sub_24F925338();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231D10, &qword_24F9A7FA8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v86 - v16;
  v100 = type metadata accessor for ScrollEdgeDetectionModifier(0);
  v18 = *(v100 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v100);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF90, &qword_24FA19270);
  v99 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v21 = &v86 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF98, &qword_24FA19278);
  v104 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v112 = &v86 - v23;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFA0, &qword_24FA19280);
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v102 = &v86 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFA8, &qword_24FA19288);
  MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v26);
  if (*v2 != 1)
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFB0, &unk_24FA19290);
    (*(*(v37 - 8) + 16))(v5, v111, v37);
    swift_storeEnumTagMultiPayload();
    sub_24F680714();
    sub_24E602068(&qword_27F24BFC0, &qword_27F24BFB0, &unk_24FA19290, MEMORY[0x277CE04B0]);
    return sub_24F924E28();
  }

  v87 = v28;
  v89 = &v86 - v27;
  v90 = v22;
  v92 = v25;
  v91 = v3;
  v88 = v5;
  sub_24F680938(v2, &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v18 + 80);
  v94 = v2;
  v30 = swift_allocObject() + ((v29 + 16) & ~v29);
  v31 = v94;
  sub_24F6810C8(&v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v30, type metadata accessor for ScrollEdgeDetectionModifier);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFB0, &unk_24FA19290);
  v33 = sub_24E602068(&qword_27F24BFC0, &qword_27F24BFB0, &unk_24FA19290, MEMORY[0x277CE04B0]);
  v34 = MEMORY[0x277D839B0];
  sub_24F926738();

  if (v31[1] > 1u)
  {
    v35 = v108;
    v36 = v96;
    if (v31[1] == 2)
    {
      sub_24F9252F8();
    }

    else
    {
      sub_24F925318();
    }
  }

  else
  {
    v35 = v108;
    v36 = v96;
    if (v31[1])
    {
      sub_24F925308();
    }

    else
    {
      sub_24F925328();
    }
  }

  v39 = v97;
  v40 = v36;
  v41 = v98;
  (v97[2].Kind)(v17, v40, v98);
  (v39[3].Description)(v17, 0, 1, v41);
  v42 = sub_24EE61688(v17);
  v44 = v31[8];
  v45 = *(v31 + 2);
  if (v43)
  {
    v46 = 0;
  }

  else
  {
    v46 = v42;
  }

  LOBYTE(v115) = v44;
  v97 = v45;
  v116 = v45;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  v47 = v119;
  v119 = v46;
  v120 = 0;
  v121 = v47;
  v115 = v32;
  v116 = v34;
  v98 = v33;
  v117 = v33;
  v118 = MEMORY[0x277D839C8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = sub_24F6808E4();
  v50 = v113;
  v96 = OpaqueTypeConformance2;
  v86 = v49;
  sub_24F9266C8();
  (*(v99 + 8))(v21, v50);
  sub_24F769764(v35);
  v51 = v109;
  v53 = v106;
  v52 = v107;
  (*(v109 + 104))(v107, *MEMORY[0x277CE0558], v106);
  (*(v51 + 56))(v52, 0, 1, v53);
  v54 = *(v101 + 48);
  v55 = v110;
  sub_24E60169C(v35, v110, &qword_27F215598, &qword_24F945EF0);
  v56 = v55;
  sub_24E60169C(v52, v55 + v54, &qword_27F215598, &qword_24F945EF0);
  v57 = v51;
  v58 = v35;
  v59 = *(v57 + 48);
  if (v59(v56, 1, v53) == 1)
  {
    sub_24E601704(v52, &qword_27F215598, &qword_24F945EF0);
    v60 = v110;
    sub_24E601704(v58, &qword_27F215598, &qword_24F945EF0);
    v61 = v59(v60 + v54, 1, v53);
    v62 = v88;
    v63 = v97;
    if (v61 == 1)
    {
      sub_24E601704(v60, &qword_27F215598, &qword_24F945EF0);
      v64 = v92;
LABEL_20:
      if (v94[1] == 2)
      {

LABEL_23:
        LOBYTE(v115) = v44;
        v116 = v63;
        sub_24F926F38();
        v66 = v119;
        goto LABEL_25;
      }

      v73 = sub_24F92CE08();

      if (v73)
      {
        goto LABEL_23;
      }

LABEL_24:
      v66 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v65 = v95;
    sub_24E60169C(v56, v95, &qword_27F215598, &qword_24F945EF0);
    if (v59(v56 + v54, 1, v53) != 1)
    {
      v101 = v32;
      v67 = v65;
      v68 = v109;
      v69 = v93;
      (*(v109 + 32))(v93, v56 + v54, v53);
      sub_24F680EF4(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v70 = v56;
      v71 = sub_24F92AFF8();
      v72 = *(v68 + 8);
      v72(v69, v53);
      sub_24E601704(v107, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v108, &qword_27F215598, &qword_24F945EF0);
      v72(v67, v53);
      sub_24E601704(v70, &qword_27F215598, &qword_24F945EF0);
      v62 = v88;
      v64 = v92;
      v63 = v97;
      if ((v71 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    sub_24E601704(v107, &qword_27F215598, &qword_24F945EF0);
    v60 = v110;
    sub_24E601704(v108, &qword_27F215598, &qword_24F945EF0);
    (*(v109 + 8))(v65, v53);
    v62 = v88;
    v63 = v97;
  }

  sub_24E601704(v60, &unk_27F254F20, &qword_24F940790);
  v66 = 0;
  v64 = v92;
LABEL_25:
  v74 = sub_24F925808();
  v115 = v113;
  v116 = &type metadata for PageViewNavigationItemAdaptor;
  v117 = v96;
  v118 = v86;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = v102;
  v77 = v66;
  v78 = v74;
  v79 = v90;
  v80 = v112;
  MEMORY[0x25304C0E0](v77, v78, v90, v75);
  (*(v104 + 8))(v80, v79);
  v81 = sub_24F927728();
  LOBYTE(v115) = v44;
  v116 = v63;
  sub_24F926F38();
  LOBYTE(v80) = v119;
  v82 = v87;
  (*(v103 + 32))(v87, v76, v105);
  v83 = v82 + *(v64 + 36);
  *v83 = v81;
  *(v83 + 8) = v80;
  v84 = v82;
  v85 = v89;
  sub_24F680E20(v84, v89);
  sub_24E60169C(v85, v62, &qword_27F24BFA8, &qword_24FA19288);
  swift_storeEnumTagMultiPayload();
  sub_24F680714();
  sub_24F924E28();
  return sub_24E601704(v85, &qword_27F24BFA8, &qword_24FA19288);
}

void sub_24F680010(BOOL *a1@<X8>)
{
  sub_24F923CB8();
  v3 = v2;
  sub_24F923CA8();
  *a1 = v3 + v4 > 0.0;
}

uint64_t sub_24F6800BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v49 = a6;
  v52 = a5;
  v51 = a4;
  v50 = a3;
  v58 = a9;
  v13 = sub_24F924038();
  v55 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v54 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v53 = &v48 - v16;
  v17 = *(a7 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  v24 = sub_24F924E38();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v57 = &v48 - v27;
  if (a1)
  {
    v28 = *(v17 + 16);
    v48 = v23;
    v28(v23, a2, a7, v26);
    sub_24E615E00(v49, v68);
    v68[5] = swift_getKeyPath();
    v69 = 0;
    KeyPath = swift_getKeyPath();
    v71 = 0;
    type metadata accessor for TransientToolbarConfiguration(0);
    v29 = swift_allocObject();
    v49 = v24;
    v30 = OBJC_IVAR____TtC12GameStoreKit29TransientToolbarConfiguration__principal;
    v31 = type metadata accessor for TransientToolbarConfiguration.ToolbarItem(0);
    v32 = *(v31 - 8);
    v56 = a1;
    v33 = *(v32 + 56);
    v33(v29 + v30, 1, 1, v31);
    v33(v29 + v30, 1, 1, v31);
    v34 = OBJC_IVAR____TtC12GameStoreKit29TransientToolbarConfiguration__topBarTrailing;
    v33(v29 + OBJC_IVAR____TtC12GameStoreKit29TransientToolbarConfiguration__topBarTrailing, 1, 1, v31);
    v33(v29 + v34, 1, 1, v31);
    v35 = v56;
    swift_retain_n();
    sub_24F91FDB8();
    v61 = v29;
    sub_24F926F28();
    v72 = v62;
    v73 = v63;
    v64 = v50;
    v65 = v35;
    v66 = v51;
    v67 = v52;

    v36 = v54;
    sub_24F923FD8();
    v37 = sub_24E667ED0();
    v59 = a8;
    v60 = v37;
    WitnessTable = swift_getWitnessTable();
    v39 = v53;
    sub_24E7896B8();
    v40 = *(v55 + 8);
    v40(v36, v13);
    sub_24E7896B8();
    v41 = v57;
    v42 = WitnessTable;
    v24 = v49;
    sub_24ECCCBA0(v36, v13, a7, v42, a8);

    v40(v36, v13);
    v40(v39, v13);
  }

  else
  {
    sub_24E7896B8();
    sub_24E7896B8();
    v43 = sub_24E667ED0();
    v78 = a8;
    v79 = v43;
    v44 = swift_getWitnessTable();
    v41 = v57;
    sub_24ECCCC98(v20, v13, a7, v44, a8);
    v45 = *(v17 + 8);
    v45(v20, a7);
    v45(v23, a7);
  }

  v46 = sub_24E667ED0();
  v76 = a8;
  v77 = v46;
  v74 = swift_getWitnessTable();
  v75 = a8;
  swift_getWitnessTable();
  sub_24E7896B8();
  return (*(v25 + 8))(v41, v24);
}

unint64_t sub_24F680714()
{
  result = qword_27F24BFB8;
  if (!qword_27F24BFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BFA8, &qword_24FA19288);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF98, &qword_24FA19278);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF90, &qword_24FA19270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BFB0, &unk_24FA19290);
    sub_24E602068(&qword_27F24BFC0, &qword_27F24BFB0, &unk_24FA19290, MEMORY[0x277CE04B0]);
    swift_getOpaqueTypeConformance2();
    sub_24F6808E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F218870, &unk_27F2364C0, qword_24F962AC0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BFB8);
  }

  return result;
}

unint64_t sub_24F6808E4()
{
  result = qword_27F24BFC8;
  if (!qword_27F24BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BFC8);
  }

  return result;
}

uint64_t sub_24F680938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollEdgeDetectionModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F68099C()
{
  v1 = (type metadata accessor for ScrollEdgeDetectionModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F925218();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F680B10(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for ScrollEdgeDetectionModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F680058(a1, a2, v6);
}

uint64_t sub_24F680BD8@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_24F680EF4(&qword_27F215300, type metadata accessor for TransientToolbarConfiguration, &unk_24FA34B54);
  sub_24F91FD88();

  v7 = *a3;
  swift_beginAccess();
  return sub_24E60169C(v6 + v7, a4, &qword_27F215280, &unk_24F93FA90);
}

uint64_t sub_24F680CD4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215280, &unk_24F93FA90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13[-v9];
  sub_24E60169C(a1, &v13[-v9], &qword_27F215280, &unk_24F93FA90);
  v11 = *a2;
  swift_getKeyPath();
  v14 = v11;
  v15 = v10;
  v16 = v11;
  sub_24F680EF4(&qword_27F215300, type metadata accessor for TransientToolbarConfiguration, &unk_24FA34B54);
  sub_24F91FD78();

  return sub_24E601704(v10, &qword_27F215280, &unk_24F93FA90);
}

uint64_t sub_24F680E20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFA8, &qword_24FA19288);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F680EF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F680F3C()
{
  result = qword_27F24C030;
  if (!qword_27F24C030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C028, &unk_24FA19360);
    sub_24E602068(&qword_27F24C038, &qword_27F24C040, &qword_24FA34B90, MEMORY[0x277CDDF68]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C048, &qword_24FA19370);
    sub_24E602068(&qword_27F24C050, &qword_27F24C048, &qword_24FA19370, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C030);
  }

  return result;
}

uint64_t sub_24F6810C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F681138()
{
  result = qword_27F24C078;
  if (!qword_27F24C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C078);
  }

  return result;
}

unint64_t sub_24F681190()
{
  result = qword_27F24C080;
  if (!qword_27F24C080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C088, &qword_24FA193B8);
    sub_24F680714();
    sub_24E602068(&qword_27F24BFC0, &qword_27F24BFB0, &unk_24FA19290, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C080);
  }

  return result;
}

uint64_t sub_24F68125C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F6812E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24F681384(uint64_t a1)
{
  sub_24E66ED3C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24F681404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F681554(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F6816B0(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F2169A0, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
        if (v4 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
          if (v5 <= 0x3F)
          {
            sub_24E61C938(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24F6817F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F681840(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6575676573;
    v6 = 0x4D747865746E6F63;
    if (a1 != 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7665684365646968;
    if (a1 != 5)
    {
      v7 = 0x7865546567646162;
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
    v2 = 0x6567616D69;
    v3 = 0x656C746974627573;
    if (a1 != 3)
    {
      v3 = 0x6974616D6F747561;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656C746974;
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

uint64_t sub_24F681984(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C180, &qword_24FA19688);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6848F0();
  sub_24F92D128();
  LOBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_24F92CD08();
    v10 = *(v3 + 64);
    v11 = *(v3 + 72);
    v13 = *(v3 + 56);
    v14 = v10;
    v15 = v11;
    v12[7] = 2;
    sub_24E672C48(v13, v10);
    sub_24E63FF50();
    sub_24F92CD48();
    sub_24E63FFA4(v13, v14);
    LOBYTE(v13) = 3;
    sub_24F92CCA8();
    LOBYTE(v13) = 4;
    sub_24F92CCA8();
    LOBYTE(v13) = 5;
    sub_24F92CCB8();
    LOBYTE(v13) = 6;
    sub_24F92CCA8();
    LOBYTE(v13) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    type metadata accessor for GroupedTableRow(0);
    LOBYTE(v13) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    LOBYTE(v13) = 9;
    sub_24F929608();
    sub_24F6817F8(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F681DB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5);
  v7 = v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C170, &qword_24FA19680);
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v34 - v9;
  v11 = type metadata accessor for GroupedTableRow(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 136) = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  *(v14 + 152) = 0u;
  *(v14 + 21) = 0;
  v43 = v14 + 136;
  sub_24E61DA68(&v45, (v14 + 136), qword_27F21B590, &unk_24F93BE30);
  v15 = *(v12 + 56);
  v16 = sub_24F92A6D8();
  v17 = *(*(v16 - 8) + 56);
  v44 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = *(v12 + 60);
  v19 = sub_24F929608();
  v20 = *(*(v19 - 8) + 56);
  v42 = v18;
  v20(&v14[v18], 1, 1, v19);
  v21 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24F6848F0();
  v37 = v10;
  v22 = v40;
  sub_24F92D108();
  if (v22)
  {
    v24 = v43;
    __swift_destroy_boxed_opaque_existential_1(v41);

    sub_24E601704(v24, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v14[v44], &qword_27F215440, &unk_24F942BD0);
    return sub_24E601704(&v14[v42], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v23 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v48 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v25 = v46;
    *v14 = v45;
    *(v14 + 1) = v25;
    *(v14 + 4) = v47;
    LOBYTE(v45) = 1;
    v26 = sub_24F92CC28();
    v27 = v43;
    *(v14 + 5) = v26;
    *(v14 + 6) = v28;
    v48 = 2;
    sub_24E641300();
    sub_24F92CC68();
    v29 = v46;
    *(v14 + 56) = v45;
    v14[72] = v29;
    LOBYTE(v45) = 3;
    *(v14 + 10) = sub_24F92CBC8();
    *(v14 + 11) = v30;
    v40 = v30;
    LOBYTE(v45) = 4;
    *(v14 + 12) = sub_24F92CBC8();
    *(v14 + 13) = v31;
    LOBYTE(v45) = 5;
    v14[112] = sub_24F92CBD8();
    LOBYTE(v45) = 6;
    *(v14 + 15) = sub_24F92CBC8();
    *(v14 + 16) = v32;
    v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v48 = 7;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v45, v27, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v45) = 8;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v23, &v14[v44], &qword_27F215440, &unk_24F942BD0);
    LOBYTE(v45) = 9;
    sub_24F6817F8(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    (*(v38 + 8))(v37, v39);
    sub_24E61DA68(v36, &v14[v42], &qword_27F213E68, &unk_24F93BC80);
    sub_24F684888(v14, v35, type metadata accessor for GroupedTableRow);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return sub_24F684944(v14);
  }
}

uint64_t sub_24F682614@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F684BB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F68263C(uint64_t a1)
{
  v2 = sub_24F6848F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F682678(uint64_t a1)
{
  v2 = sub_24F6848F0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F6826B4@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1 + 136, v5, qword_27F24EC90, &unk_24F93C1D0);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_24F68270C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 48), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F68287C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C0C0, &qword_24FA19560);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C0C8, &qword_24FA19568);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C0D0, &qword_24FA19570);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C0D8, &qword_24FA19578);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C0E0, &qword_24FA19580);
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v18 = &v35 - v17;
  *v5 = sub_24F9249A8();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C0E8, &qword_24FA19588);
  sub_24F682CE4(a1, &v5[*(v19 + 44)]);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v5, v9, &qword_27F24C0C0, &qword_24FA19560);
  v20 = &v9[*(v7 + 44)];
  v21 = v45;
  *(v20 + 4) = v44;
  *(v20 + 5) = v21;
  *(v20 + 6) = v46;
  v22 = v41;
  *v20 = v40;
  *(v20 + 1) = v22;
  v23 = v43;
  *(v20 + 2) = v42;
  *(v20 + 3) = v23;
  LOBYTE(v5) = sub_24F925808();
  sub_24F923318();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_24E6009C8(v9, v13, &qword_27F24C0C8, &qword_24FA19568);
  v32 = &v13[*(v11 + 44)];
  *v32 = v5;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  sub_24E6009C8(v13, v16, &qword_27F24C0D0, &qword_24FA19570);
  v16[*(v14 + 36)] = 0;
  sub_24E60169C(a1 + 136, v39, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E601704(v39, qword_27F21B590, &unk_24F93BE30);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v33 = sub_24F9248C8();
  __swift_project_value_buffer(v33, qword_27F39F078);
  sub_24F684120();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v16, &qword_27F24C0D8, &qword_24FA19578);
  return (*(v36 + 32))(v38, v18, v37);
}

uint64_t sub_24F682CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C00, &qword_24F943E20);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v4 = (&v62 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C110, &qword_24FA19590);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = &v62 - v8;
  v9 = type metadata accessor for GroupedTableRow(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C118, &qword_24FA19598);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v81 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  sub_24F684888(a1, &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupedTableRow);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_24F684530(&v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v20 = sub_24F924C98();
  v21 = sub_24F9249A8();
  v22 = *(v13 + 60);
  *&v17[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  *v17 = sub_24F684594;
  *(v17 + 1) = v19;
  *(v17 + 2) = v20;
  *(v17 + 3) = 0;
  v17[32] = 1;
  *(v17 + 5) = v21;
  *(v17 + 6) = 0;
  v17[56] = 1;
  v23 = *(a1 + 128);
  if (v23)
  {
    v87 = *(a1 + 120);
    v88 = v23;
    sub_24E600AEC();

    v24 = sub_24F925E18();
    v26 = v25;
    v28 = v27;
    sub_24F9259D8();
    v80 = sub_24F925C98();
    v70 = v29;
    v31 = v30;
    v69 = v32;

    sub_24E600B40(v24, v26, v28 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    sub_24F9237D8();
    sub_24F9237D8();
    sub_24F927618();
    sub_24F9238C8();
    LOBYTE(v87) = v31 & 1;
    v33 = v100;
    v23 = v101;
    v79 = v102;
    v68 = v103;
    v67 = v104;
    v78 = v105;
    v76 = v87;
    v77 = sub_24F926C28();
    v66 = sub_24F925808() | 0x10000;
  }

  else
  {
    v80 = 0;
    v70 = 0;
    v69 = 0;
    v33 = 0;
    v79 = 0;
    v68 = 0;
    v67 = 0;
    v78 = 0;
    v77 = 0;
    v66 = 0;
    v76 = 0;
  }

  sub_24E60169C(a1 + 136, &v87, qword_27F24EC90, &unk_24F93C1D0);
  v34 = v90;
  sub_24E601704(&v87, qword_27F21B590, &unk_24F93BE30);
  v35 = v73;
  if (v34 && ((v36 = *(a1 + 112), v36 == 2) || (v36 & 1) == 0))
  {
    v64 = sub_24F926DF8();
    v63 = sub_24F925898();
    KeyPath = swift_getKeyPath();
    v40 = v23;
    v41 = sub_24F9251C8();
    v42 = v4 + *(v35 + 36);
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
    v44 = *MEMORY[0x277CE13B8];
    v45 = sub_24F927748();
    (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
    *v42 = v41;
    v23 = v40;
    *v4 = v64;
    v4[1] = KeyPath;
    v4[2] = v63;
    v46 = v4;
    v38 = v71;
    sub_24E6009C8(v46, v71, &qword_27F216C00, &qword_24F943E20);
    v37 = 0;
  }

  else
  {
    v37 = 1;
    v38 = v71;
  }

  v72[7](v38, v37, 1, v35);
  v47 = v81;
  sub_24F68460C(v17, v81);
  v48 = v74;
  sub_24E60169C(v38, v74, &qword_27F24C110, &qword_24FA19590);
  v49 = v47;
  v50 = v75;
  sub_24F68460C(v49, v75);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C120, &qword_24FA195D8);
  v52 = v50 + v51[12];
  *v52 = 0;
  *(v52 + 8) = 0;
  v53 = (v50 + v51[16]);
  *&v82 = v80;
  v54 = v70;
  *(&v82 + 1) = v70;
  *&v83 = v76;
  v55 = v69;
  *(&v83 + 1) = v69;
  *&v84 = v33;
  v65 = v23;
  *(&v84 + 1) = v23;
  *&v85 = v79;
  v72 = v17;
  v56 = v68;
  *(&v85 + 1) = v68;
  v57 = v67;
  *v86 = v67;
  *&v86[8] = v78;
  *&v86[16] = v77;
  v58 = v66;
  LODWORD(v73) = HIWORD(v66);
  v86[26] = BYTE2(v66);
  *&v86[24] = v66;
  v59 = v85;
  v53[2] = v84;
  v53[3] = v59;
  v60 = v83;
  *v53 = v82;
  v53[1] = v60;
  v53[4] = *v86;
  *(v53 + 75) = *&v86[11];
  sub_24E60169C(v48, v50 + v51[20], &qword_27F24C110, &qword_24FA19590);
  sub_24E60169C(&v82, &v87, &qword_27F24C128, &qword_24FA195E0);
  sub_24E601704(v38, &qword_27F24C110, &qword_24FA19590);
  sub_24E601704(v72, &qword_27F24C118, &qword_24FA19598);
  sub_24E601704(v48, &qword_27F24C110, &qword_24FA19590);
  v87 = v80;
  v88 = v54;
  v89 = v76;
  v90 = v55;
  v91 = v33;
  v92 = v65;
  v93 = v79;
  v94 = v56;
  v95 = v57;
  v96 = v78;
  v97 = v77;
  v99 = v73;
  v98 = v58;
  sub_24E601704(&v87, &qword_27F24C128, &qword_24FA195E0);
  return sub_24E601704(v81, &qword_27F24C118, &qword_24FA19598);
}

uint64_t sub_24F6835A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8, &qword_24F957520);
  MEMORY[0x28223BE20](v45);
  v4 = &v42 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C130, &qword_24FA19618);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C138, &qword_24FA19620);
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v49 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v44 = a1;
  LOBYTE(a1) = *(a1 + 72);
  v15 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C140, &unk_24FA19628) + 36)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0, &unk_24F9B4DB0) + 28);
  sub_24E672C48(v13, v14);
  sub_24F924CF8();
  v17 = sub_24F924D08();
  (*(*(v17 - 8) + 56))(v15 + v16, 0, 1, v17);
  *v15 = swift_getKeyPath();
  *v7 = v13;
  *(v7 + 1) = v14;
  v7[16] = a1;
  v7[17] = 1;
  v18 = sub_24F9258F8();
  KeyPath = swift_getKeyPath();
  v20 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C148, &unk_24FA19668) + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  sub_24F927618();
  sub_24F9238C8();
  v21 = &v7[*(v5 + 36)];
  v22 = *&v50[11];
  *v21 = *&v50[9];
  *(v21 + 1) = v22;
  *(v21 + 2) = *&v50[13];
  v23 = *MEMORY[0x277CDF9D8];
  v24 = sub_24F923E98();
  (*(*(v24 - 8) + 104))(v4, v23, v24);
  sub_24F6817F8(&qword_27F22DF90, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24F92AFF8();
  if (result)
  {
    sub_24F68468C();
    sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
    v26 = v12;
    v43 = v12;
    sub_24F9263F8();
    sub_24E601704(v4, &qword_27F21CCC8, &qword_24F957520);
    sub_24E601704(v7, &qword_27F24C130, &qword_24FA19618);
    v27 = sub_24F924C98();
    LOBYTE(v54[0]) = 1;
    sub_24F683B18(v44, v51);
    *(v50 + 7) = v51[0];
    *(&v50[2] + 7) = v51[1];
    *(&v50[4] + 7) = v51[2];
    *(&v50[6] + 7) = v51[3];
    v28 = v54[0];
    v29 = v46;
    v30 = *(v46 + 16);
    v31 = v49;
    v32 = v26;
    v33 = v47;
    v30(v49, v32, v47);
    v34 = v48;
    v30(v48, v31, v33);
    v35 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C168, &qword_24FA19678) + 48)];
    v52 = v27;
    v53[0] = v28;
    *&v53[1] = *v50;
    *&v53[17] = *&v50[2];
    *&v53[33] = *&v50[4];
    *&v53[49] = *&v50[6];
    v36 = *(&v50[7] + 7);
    *&v53[64] = *(&v50[7] + 7);
    v37 = *v53;
    *v35 = v27;
    *(v35 + 1) = v37;
    v38 = *&v53[16];
    v39 = *&v53[32];
    v40 = *&v53[48];
    *(v35 + 10) = v36;
    *(v35 + 3) = v39;
    *(v35 + 4) = v40;
    *(v35 + 2) = v38;
    sub_24E60169C(&v52, v54, &qword_27F225978, &unk_24F976D40);
    v41 = *(v29 + 8);
    v41(v43, v33);
    v54[0] = v27;
    v54[1] = 0;
    v55 = v28;
    v57 = *&v50[2];
    v58 = *&v50[4];
    *v59 = *&v50[6];
    *&v59[15] = *(&v50[7] + 7);
    v56 = *v50;
    sub_24E601704(v54, &qword_27F225978, &unk_24F976D40);
    return (v41)(v31, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24F683B18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v57);
  v58 = &v52 - v3;
  v4 = a1[6];
  v60 = a1[5];
  v61 = v4;
  v5 = sub_24E600AEC();

  v56 = v5;
  v6 = sub_24F925E18();
  v8 = v7;
  v10 = v9;
  sub_24F925A28();
  v11 = sub_24F925C98();
  v13 = v12;
  v15 = v14;

  sub_24E600B40(v6, v8, v10 & 1);

  sub_24F925958();
  v16 = sub_24F925B78();
  v18 = v17;
  LODWORD(v20) = v19;
  v22 = v21;
  sub_24E600B40(v11, v13, v15 & 1);

  v23 = a1[11];
  if (v23)
  {
    v60 = a1[10];
    v61 = v23;

    v24 = sub_24F925E18();
    v26 = v25;
    v28 = v27;
    sub_24F925A18();
    v29 = sub_24F925C98();
    v53 = v20;
    v20 = v29;
    v54 = v18;
    v31 = v30;
    v56 = v22;
    v33 = v32;

    sub_24E600B40(v24, v26, v28 & 1);

    LODWORD(v24) = sub_24F9251C8();
    v34 = *(v57 + 36);
    v35 = *MEMORY[0x277CE13B8];
    v36 = sub_24F927748();
    v37 = *(*(v36 - 8) + 104);
    v55 = v16;
    v38 = v58;
    v37(&v58[v34], v35, v36);
    *v38 = v24;
    sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
    v39 = sub_24F925C58();
    v41 = v40;
    LOBYTE(v24) = v42;
    v44 = v43;
    v45 = v33 & 1;
    v22 = v56;
    v46 = v20;
    LOBYTE(v20) = v53;
    v47 = v31;
    v18 = v54;
    sub_24E600B40(v46, v47, v45);

    v48 = v38;
    v16 = v55;
    sub_24E601704(v48, &qword_27F213F10, &unk_24F93BE10);
    v49 = v24 & 1;
    sub_24E5FD138(v39, v41, v24 & 1);
  }

  else
  {
    v39 = 0;
    v41 = 0;
    v49 = 0;
    v44 = 0;
  }

  sub_24E5FD138(v16, v18, v20 & 1);

  sub_24E65D2B4(v39, v41, v49, v44);
  sub_24E65D2F8(v39, v41, v49, v44);
  LOBYTE(v60) = v20 & 1;
  v50 = v59;
  *v59 = v16;
  v50[1] = v18;
  *(v50 + 16) = v20 & 1;
  v50[3] = v22;
  v50[4] = v39;
  v50[5] = v41;
  v50[6] = v49;
  v50[7] = v44;
  sub_24E65D2F8(v39, v41, v49, v44);
  sub_24E600B40(v16, v18, v20 & 1);
}

uint64_t sub_24F683EE4@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v3 = sub_24F926D08();

  sub_24F115AD8();
  result = sub_24F927348();
  *(a2 + 40) = result;
  *(a2 + 48) = v3;
  return result;
}

uint64_t sub_24F683F54(uint64_t a1)
{
  MEMORY[0x28223BE20](v1);
  sub_24F684888(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupedTableRowComponent);
  sub_24F6817F8(&qword_27F244548, type metadata accessor for GroupedTableRowComponent, &unk_24FA194F8);
  return sub_24F9218E8();
}

unint64_t sub_24F684120()
{
  result = qword_27F24C0F0;
  if (!qword_27F24C0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C0D8, &qword_24FA19578);
    sub_24F6841D8();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C0F0);
  }

  return result;
}

unint64_t sub_24F6841D8()
{
  result = qword_27F24C0F8;
  if (!qword_27F24C0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C0D0, &qword_24FA19570);
    sub_24F684264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C0F8);
  }

  return result;
}

unint64_t sub_24F684264()
{
  result = qword_27F24C100;
  if (!qword_27F24C100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C0C8, &qword_24FA19568);
    sub_24E602068(&qword_27F24C108, &qword_27F24C0C0, &qword_24FA19560, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C100);
  }

  return result;
}

uint64_t sub_24F68431C()
{
  v1 = type metadata accessor for GroupedTableRow(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  __swift_destroy_boxed_opaque_existential_1(v2);

  sub_24E63FFA4(*(v2 + 7), *(v2 + 8));

  if (*(v2 + 20))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 17);
  }

  v3 = *(v1 + 48);
  v4 = sub_24F92A6D8();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(&v2[v3], 1, v4))
  {
    (*(v5 + 8))(&v2[v3], v4);
  }

  v6 = *(v1 + 52);
  v7 = sub_24F929608();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&v2[v6], 1, v7))
  {
    (*(v8 + 8))(&v2[v6], v7);
  }

  return swift_deallocObject();
}

uint64_t sub_24F684530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupedTableRow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F684594@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for GroupedTableRow(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F6835A4(v4, a1);
}

uint64_t sub_24F68460C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C118, &qword_24FA19598);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F68468C()
{
  result = qword_27F24C150;
  if (!qword_27F24C150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C130, &qword_24FA19618);
    sub_24F684718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C150);
  }

  return result;
}

unint64_t sub_24F684718()
{
  result = qword_27F24C158;
  if (!qword_27F24C158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C148, &unk_24FA19668);
    sub_24F6847D0();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C158);
  }

  return result;
}

unint64_t sub_24F6847D0()
{
  result = qword_27F24C160;
  if (!qword_27F24C160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C140, &unk_24FA19628);
    sub_24E7DD2E0();
    sub_24E602068(&qword_27F21A958, &qword_27F2365A0, &unk_24F9B4DB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C160);
  }

  return result;
}

uint64_t sub_24F684888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F6848F0()
{
  result = qword_27F24C178;
  if (!qword_27F24C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C178);
  }

  return result;
}

uint64_t sub_24F684944(uint64_t a1)
{
  v2 = type metadata accessor for GroupedTableRow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F6849B4()
{
  result = qword_27F24C188;
  if (!qword_27F24C188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C190, &unk_24FA196A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C0D8, &qword_24FA19578);
    sub_24F684120();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C188);
  }

  return result;
}

unint64_t sub_24F684AAC()
{
  result = qword_27F24C198;
  if (!qword_27F24C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C198);
  }

  return result;
}

unint64_t sub_24F684B04()
{
  result = qword_27F24C1A0;
  if (!qword_27F24C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C1A0);
  }

  return result;
}

unint64_t sub_24F684B5C()
{
  result = qword_27F24C1A8;
  if (!qword_27F24C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C1A8);
  }

  return result;
}

uint64_t sub_24F684BB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6974616D6F747561 && a2 == 0xEC00000044496E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7665684365646968 && a2 == 0xEB000000006E6F72 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7865546567646162 && a2 == 0xE900000000000074 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t PlayNowPageContainerIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E61C064(&qword_27F215388, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E70D960(v2, boxed_opaque_existential_1);
  v6 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_24F68504C(uint64_t a1)
{
  v2 = sub_24F685624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F685088(uint64_t a1)
{
  v2 = sub_24F685624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayNowPageContainerIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C1B0, &qword_24FA197E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F685624();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PlayNowPageContainerIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C1C0, &qword_24FA197F0);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for PlayNowPageContainerIntent(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F685624();
  sub_24F92D108();
  if (!v2)
  {
    v12 = v16;
    sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
    v13 = v17;
    sub_24F92CC68();
    (*(v15 + 8))(v8, v6);
    sub_24F6856C4(v13, v11, type metadata accessor for Player);
    sub_24F6856C4(v11, v12, type metadata accessor for PlayNowPageContainerIntent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F6854C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C1B0, &qword_24FA197E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F685624();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F685624()
{
  result = qword_27F24C1B8;
  if (!qword_27F24C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C1B8);
  }

  return result;
}

uint64_t type metadata accessor for PlayNowPageContainerIntent(uint64_t a1)
{
  result = qword_27F24C1C8;
  if (!qword_27F24C1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F6856C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F685740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F6857C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24F685844()
{
  result = qword_27F24C1D8;
  if (!qword_27F24C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C1D8);
  }

  return result;
}

unint64_t sub_24F68589C()
{
  result = qword_27F24C1E0;
  if (!qword_27F24C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C1E0);
  }

  return result;
}

unint64_t sub_24F6858F4()
{
  result = qword_27F24C1E8;
  if (!qword_27F24C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C1E8);
  }

  return result;
}

uint64_t sub_24F68595C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DD8, &unk_24F9411B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F685A38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DD8, &unk_24F9411B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

void sub_24F685B20(uint64_t a1)
{
  sub_24F68B6E4(319, &qword_27F215DF8, MEMORY[0x277CE02A8]);
  if (v1 <= 0x3F)
  {
    sub_24F685BD8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F685BD8(uint64_t a1)
{
  if (!qword_27F234090)
  {
    type metadata accessor for OfferButtonViewModel(255);
    sub_24F68A764(&qword_27F234098, type metadata accessor for OfferButtonViewModel, &unk_24F9AED60);
    v1 = sub_24F923648();
    if (!v2)
    {
      atomic_store(v1, &qword_27F234090);
    }
  }
}

uint64_t sub_24F685C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a3;
  v15 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v27[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v22 + 16))(v21, v24, v23, v19);
  (*(v15 + 16))(v17, a1, a5);

  return sub_24F68A8A8(v21, v17, a2, v28, v25, a4, a5, MEMORY[0x277CE1428], a8, a6, a7, MEMORY[0x277CE1410]);
}

double sub_24F685E48@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 44) = v8;
  *(a2 + 40) = v7;
  *(a2 + 46) = v9;
  return result;
}

uint64_t sub_24F685EE8(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 44);
  v8 = *(a1 + 40);
  v9 = *(a1 + 46);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24EEFE1C8(v2, v3, v4, v5, v6, v8 | (v7 << 32), v9);

  return sub_24F9230A8();
}

void sub_24F685FC4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a2 = v3;
}

uint64_t sub_24F686044(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F6860C0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v36 = a3;
  v37 = a2;
  v38 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D58, &unk_24F9B2030);
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D60, &unk_24F9440B0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  type metadata accessor for OfferButtonViewModel(0);
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__disabled;
  LOBYTE(v41) = 0;
  sub_24F923058();
  (*(v11 + 32))(v14 + v15, v13, v10);
  v16 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__action;
  *&v41 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DA8, &unk_24F944110);
  sub_24F923058();
  (*(v7 + 32))(v14 + v16, v9, v6);
  v17 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__theme;
  v41 = xmmword_24F943570;
  v42 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB0, &qword_24F9B2040);
  sub_24F923058();
  (*(v3 + 32))(v14 + v17, v5, v35);
  v18 = v14 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_presenter;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v19 = (v14 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_redownloadSymbolName);
  *v19 = 0xD000000000000015;
  v19[1] = 0x800000024FA3FE10;
  v20 = (v14 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_accessibilityOfferButtonString);
  *v20 = 0;
  v20[1] = 0;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement) = 5;
  v21 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_objectGraph;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_objectGraph) = v36;
  v22 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__action;
  swift_beginAccess();
  v23 = *(v7 + 8);

  v23(v14 + v22, v6);
  v48 = v37;
  v24 = v37;

  sub_24F923058();
  swift_endAccess();
  swift_beginAccess();
  v41 = xmmword_24F943590;
  v42 = 0;
  v43 = 0;
  v44 = 4;
  v46 = 0;
  v45 = 0;
  v47 = 0;
  v25 = v24;
  sub_24F923058();
  swift_endAccess();
  v26 = v38;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_displayProperties) = v38;
  type metadata accessor for ArcadeSubscriptionManager();
  sub_24F928FD8();

  sub_24F92A758();

  v27 = v41;
  if (OfferDisplayProperties.isArcadeOffer.getter())
  {
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v28;
    *(v30 + 32) = v26;
    *(v30 + 40) = v24;
    *(v30 + 48) = 0;
    *(v30 + 60) = 0;
    *(v30 + 56) = 3;
    *(v30 + 62) = 16843009;
    *(v30 + 66) = 257;
    v31 = *&v27[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock];

    [v31 lock];
    sub_24F213714(v14, sub_24E690EC8, v30, v27);
    [v31 unlock];
  }

  v32 = &v27[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
  swift_beginAccess();
  LOBYTE(v32) = (v32[8] & 0xC0) == 128;
  WORD2(v48) = 0;
  LODWORD(v48) = 3;
  v40 = 257;
  v39 = 16843009;
  v33 = *(v14 + v21);

  sub_24EEFB79C(v32, v26, v25, 0, &v48, &v39, v33);

  return v14;
}

uint64_t sub_24F6866E8@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v2 = sub_24F929888();
  v90 = *(v2 - 8);
  v91 = v2;
  MEMORY[0x28223BE20](v2);
  v89 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_24F9241F8();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v74 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LargeOfferButton(0);
  v6 = v5 - 8;
  v72 = *(v5 - 8);
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v71 - v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C200, &qword_24FA19A80);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v12 = &v71 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C208, &qword_24FA19A88);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v71 - v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C210, &qword_24FA19A90);
  MEMORY[0x28223BE20](v86);
  v73 = &v71 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C218, &qword_24FA19A98);
  v87 = *(v15 - 8);
  v88 = v15;
  MEMORY[0x28223BE20](v15);
  v85 = &v71 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C220, &qword_24FA19AA0);
  MEMORY[0x28223BE20](v17 - 8);
  v92 = &v71 - v18;
  v19 = sub_24F9232F8();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = v1 + *(v6 + 28);
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v20 + 16);
  v24 = type metadata accessor for OfferButtonViewModel(0);
  sub_24F68A764(&qword_27F234098, type metadata accessor for OfferButtonViewModel, &unk_24F9AED60);
  v94 = v21;
  v77 = v22;
  v76 = v23;
  v75 = v24;
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v25 = v98;
  if (v98)
  {
    v26 = type metadata accessor for Action(0);
    v27 = sub_24F68A764(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v98 = 0uLL;
    v26 = 0;
    v27 = 0;
    *&v99 = 0;
  }

  *&v98 = v25;
  *(&v99 + 1) = v26;
  v100 = v27;
  sub_24F68B37C(v1, &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LargeOfferButton);
  v28 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v29 = swift_allocObject();
  sub_24F68B314(&v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for LargeOfferButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C228, &qword_24FA19AF8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C230, &qword_24FA19B00);
  v31 = sub_24E602068(&qword_27F24C238, &qword_27F24C230, &qword_24FA19B00, MEMORY[0x277CE11A8]);
  *&v97[0] = v30;
  *(&v97[0] + 1) = v31;
  swift_getOpaqueTypeConformance2();
  sub_24F921788();
  v32 = v74;
  sub_24F9241E8();
  sub_24E602068(&qword_27F24C240, &qword_27F24C200, &qword_24FA19A80, MEMORY[0x277D7EB00]);
  sub_24F68A764(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v33 = v80;
  v34 = v79;
  v35 = v84;
  sub_24F926178();
  (*(v83 + 8))(v32, v35);
  (*(v78 + 8))(v12, v34);
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  LOBYTE(v35) = v98;
  KeyPath = swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  v38 = v73;
  (*(v81 + 32))(v73, v33, v82);
  v39 = v86;
  v40 = (v38 + *(v86 + 36));
  *v40 = KeyPath;
  v40[1] = sub_24E600A48;
  v40[2] = v37;
  v98 = 0u;
  v99 = 0u;
  memset(v97, 0, sizeof(v97));
  v41 = v89;
  sub_24F9297B8();
  sub_24E601704(v97, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v98, &qword_27F2129B0, &unk_24F945320);
  v42 = sub_24F68ACE0();
  v43 = v85;
  sub_24F925EE8();
  (*(v90 + 8))(v41, v91);
  sub_24E601704(v38, &qword_27F24C210, &qword_24FA19A90);
  v44 = (sub_24F923628() + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_accessibilityOfferButtonString);
  swift_beginAccess();
  v46 = *v44;
  v45 = v44[1];

  if (v45)
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  if (!v45)
  {
    v45 = 0xE000000000000000;
  }

  *&v98 = v47;
  *(&v98 + 1) = v45;
  v95 = v39;
  v96 = v42;
  swift_getOpaqueTypeConformance2();
  sub_24E600AEC();
  v48 = v92;
  v49 = v88;
  sub_24F926538();

  (*(v87 + 8))(v43, v49);
  *(&v99 + 1) = sub_24F9271D8();
  v100 = sub_24F68A764(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
  v51 = *MEMORY[0x277CE0118];
  v52 = sub_24F924B38();
  (*(*(v52 - 8) + 104))(boxed_opaque_existential_1, v51, v52);
  v53 = v93;
  sub_24E60169C(&v98, v93, &qword_27F24C250, &qword_24FA19B80);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C258, &qword_24FA19B88);
  sub_24E60169C(v48, v53 + v54[9], &qword_27F24C220, &qword_24FA19AA0);
  v55 = v53 + v54[10];
  *v55 = sub_24F923398() & 1;
  *(v55 + 8) = v56;
  *(v55 + 16) = v57 & 1;
  v58 = v53 + v54[11];
  *v58 = swift_getKeyPath();
  *(v58 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v59 = qword_27F24E488;
  v60 = sub_24F923398();
  v62 = v61;
  v64 = v63;
  v65 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C260, &qword_24FA19BB8) + 36);
  *v65 = v59;
  *(v65 + 8) = v60 & 1;
  *(v65 + 16) = v62;
  *(v65 + 24) = v64 & 1;
  LOBYTE(v59) = sub_24F923398();
  v67 = v66;
  LOBYTE(v62) = v68;
  sub_24E601704(&v98, &qword_27F24C250, &qword_24FA19B80);
  sub_24E601704(v48, &qword_27F24C220, &qword_24FA19AA0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C268, &qword_24FA19BC0);
  v70 = v53 + *(result + 36);
  *v70 = v59 & 1;
  *(v70 + 8) = v67;
  *(v70 + 16) = v62 & 1;
  return result;
}

uint64_t sub_24F687360(uint64_t a1)
{
  v2 = sub_24F9248C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C230, &qword_24FA19B00);
  MEMORY[0x28223BE20](v6);
  v8 = (v12 - v7);
  *v8 = sub_24F927618();
  v8[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C270, &qword_24FA19BC8);
  sub_24F687600(a1, v8 + *(v10 + 44));
  type metadata accessor for LargeOfferButton(0);
  type metadata accessor for OfferButtonViewModel(0);
  sub_24F68A764(&qword_27F234098, type metadata accessor for OfferButtonViewModel, &unk_24F9AED60);
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v12[1])
  {
  }

  sub_24F9248B8();
  sub_24E602068(&qword_27F24C238, &qword_27F24C230, &qword_24FA19B00, MEMORY[0x277CE11A8]);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v2);
  return sub_24E601704(v8, &qword_27F24C230, &qword_24FA19B00);
}

uint64_t sub_24F687600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v186 = a2;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C278, &qword_24FA19BD0);
  MEMORY[0x28223BE20](v158);
  v160 = (&v154 - v3);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C280, &qword_24FA19BD8);
  MEMORY[0x28223BE20](v187);
  v159 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v170 = &v154 - v6;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C288, &qword_24FA19BE0);
  MEMORY[0x28223BE20](v157);
  v162 = &v154 - v7;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C290, &qword_24FA19BE8);
  MEMORY[0x28223BE20](v171);
  v161 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v163 = &v154 - v10;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C298, &qword_24FA19BF0);
  MEMORY[0x28223BE20](v167);
  v168 = &v154 - v11;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C2A0, &qword_24FA19BF8);
  MEMORY[0x28223BE20](v181);
  v169 = &v154 - v12;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C2A8, &qword_24FA19C00);
  MEMORY[0x28223BE20](v183);
  v185 = &v154 - v13;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C2B0, &qword_24FA19C08);
  MEMORY[0x28223BE20](v178);
  v180 = &v154 - v14;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C2B8, &qword_24FA19C10);
  MEMORY[0x28223BE20](v164);
  v165 = &v154 - v15;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C2C0, &qword_24FA19C18);
  MEMORY[0x28223BE20](v179);
  v166 = &v154 - v16;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C2C8, &qword_24FA19C20);
  MEMORY[0x28223BE20](v184);
  v182 = &v154 - v17;
  v177 = type metadata accessor for LargeButtonContentView(0);
  MEMORY[0x28223BE20](v177);
  v155 = (&v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v156 = &v154 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = (&v154 - v22);
  MEMORY[0x28223BE20](v24);
  v26 = &v154 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = (&v154 - v28);
  MEMORY[0x28223BE20](v30);
  v32 = &v154 - v31;
  v33 = type metadata accessor for LargeOfferButton(0);
  v34 = (a1 + v33[5]);
  v35 = *v34;
  v36 = v34[1];
  v37 = *(v34 + 16);
  v38 = type metadata accessor for OfferButtonViewModel(0);
  v39 = sub_24F68A764(&qword_27F234098, type metadata accessor for OfferButtonViewModel, &unk_24F9AED60);
  v173 = v35;
  v174 = v36;
  v176 = v37;
  v175 = v38;
  v172 = v39;
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v40 = a1;

  v41 = BYTE6(v190);
  v42 = v191;
  v43 = *(a1 + v33[6]);
  if (v194 <= 1u)
  {
    v163 = v192;
    v75 = v189;
    v169 = v32;
    v171 = v190;
    LODWORD(v170) = v43;
    if (v194)
    {
      v168 = v193;
      v137 = *(v40 + v33[7]);
      v138 = 0x4046000000000000;
      if (!*(v40 + v33[7]))
      {
        v138 = 0;
      }

      v167 = v138;
      LODWORD(v169) = v137 ^ 1;
      v162 = sub_24F688D98();
      LODWORD(v161) = v139;
      v140 = sub_24F688EFC();
      v142 = v141;
      sub_24F923628();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      v143 = v195;
      if (v195)
      {
      }

      *v23 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8, &qword_24F9471F0);
      swift_storeEnumTagMultiPayload();
      v144 = v177;
      v145 = (v23 + *(v177 + 20));
      *v145 = 0;
      v145[1] = 0;
      v146 = (v23 + v144[6]);
      v147 = v171;
      *v146 = v75;
      v146[1] = v147;
      *(v23 + v144[7]) = 0;
      v148 = (v23 + v144[8]);
      v149 = v168;
      *v148 = v163;
      v148[1] = v149;
      *(v23 + v144[9]) = v170;
      *(v23 + v144[10]) = v137;
      v150 = v23 + v144[11];
      *v150 = v167;
      v150[8] = v169;
      v151 = v23 + v144[12];
      *v151 = v162;
      v151[8] = v161 & 1;
      v152 = v23 + v144[13];
      *v152 = v140;
      v152[8] = v142 & 1;
      *(v23 + v144[14]) = v143 != 0;
      *(v23 + v144[15]) = 1;
      *&v195 = 0x4028000000000000;
      sub_24E66ED98();
      sub_24F9237C8();
      v92 = v26;
      sub_24F68B314(v23, v26, type metadata accessor for LargeButtonContentView);
      sub_24F68B37C(v26, v165, type metadata accessor for LargeButtonContentView);
    }

    else
    {
      v76 = *(v40 + v33[7]);
      v77 = 0x4046000000000000;
      if (!*(v40 + v33[7]))
      {
        v77 = 0;
      }

      v167 = v77;
      LODWORD(v168) = v76 ^ 1;
      v162 = sub_24F688D98();
      LODWORD(v161) = v78;
      v79 = sub_24F688EFC();
      v81 = v80;
      sub_24F923628();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      v82 = v195;
      if (v195)
      {
      }

      *v29 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8, &qword_24F9471F0);
      swift_storeEnumTagMultiPayload();
      v83 = v177;
      v84 = (v29 + *(v177 + 20));
      v85 = v171;
      *v84 = v75;
      v84[1] = v85;
      v86 = (v29 + v83[6]);
      *v86 = 0;
      v86[1] = 0;
      *(v29 + v83[7]) = 0;
      v87 = (v29 + v83[8]);
      v88 = v163;
      *v87 = v42;
      v87[1] = v88;
      *(v29 + v83[9]) = v170;
      *(v29 + v83[10]) = v76;
      v89 = v29 + v83[11];
      *v89 = v167;
      v89[8] = v168;
      v90 = v29 + v83[12];
      *v90 = v162;
      v90[8] = v161 & 1;
      v91 = v29 + v83[13];
      *v91 = v79;
      v91[8] = v81 & 1;
      *(v29 + v83[14]) = v82 != 0;
      *(v29 + v83[15]) = 1;
      *&v195 = 0x4028000000000000;
      sub_24E66ED98();
      sub_24F9237C8();
      v92 = v169;
      sub_24F68B314(v29, v169, type metadata accessor for LargeButtonContentView);
      sub_24F68B37C(v92, v165, type metadata accessor for LargeButtonContentView);
    }

    swift_storeEnumTagMultiPayload();
    sub_24F68A764(&qword_27F215FE0, type metadata accessor for LargeButtonContentView, &unk_24F9412F0);
    v111 = v166;
    sub_24F924E28();
    v112 = &qword_27F24C2C0;
    v113 = &qword_24FA19C18;
    sub_24E60169C(v111, v180, &qword_27F24C2C0, &qword_24FA19C18);
    goto LABEL_30;
  }

  if (v194 == 2)
  {
    v163 = v192;
    v93 = v189;
    v94 = v190;
    LODWORD(v170) = v43;
    v95 = *(a1 + v33[7]);
    v96 = 0x4046000000000000;
    if (!v95)
    {
      v96 = 0;
    }

    v166 = v96;
    v165 = sub_24F688D98();
    LODWORD(v164) = v97;
    v98 = sub_24F688EFC();
    LODWORD(v162) = v99;
    sub_24F923628();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v100 = v195;
    if (v195)
    {
    }

    KeyPath = swift_getKeyPath();
    v102 = v155;
    *v155 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8, &qword_24F9471F0);
    swift_storeEnumTagMultiPayload();
    v103 = v177;
    v104 = (v102 + *(v177 + 20));
    *v104 = v93;
    v104[1] = v94;
    v105 = (v102 + v103[6]);
    v106 = v163;
    *v105 = v42;
    v105[1] = v106;
    *(v102 + v103[7]) = 0;
    v107 = (v102 + v103[8]);
    *v107 = 0;
    v107[1] = 0;
    *(v102 + v103[9]) = v170;
    *(v102 + v103[10]) = v95;
    v108 = v102 + v103[11];
    *v108 = v166;
    *(v108 + 8) = v95 ^ 1;
    v109 = v102 + v103[12];
    *v109 = v165;
    *(v109 + 8) = v164 & 1;
    v110 = v102 + v103[13];
    *v110 = v98;
    *(v110 + 8) = v162 & 1;
    *(v102 + v103[14]) = v100 != 0;
    *(v102 + v103[15]) = 1;
    *&v195 = 0x4028000000000000;
    sub_24E66ED98();
    sub_24F9237C8();
    v92 = v156;
    sub_24F68B314(v102, v156, type metadata accessor for LargeButtonContentView);
    sub_24F68B37C(v92, v168, type metadata accessor for LargeButtonContentView);
    swift_storeEnumTagMultiPayload();
    sub_24F68A764(&qword_27F215FE0, type metadata accessor for LargeButtonContentView, &unk_24F9412F0);
    sub_24F68B1A4(&qword_27F24C2E8, &qword_27F24C290, &qword_24FA19BE8, sub_24F68B0C8);
    v111 = v169;
    sub_24F924E28();
    v112 = &qword_27F24C2A0;
    v113 = &qword_24FA19BF8;
    sub_24E60169C(v111, v180, &qword_27F24C2A0, &qword_24FA19BF8);
LABEL_30:
    swift_storeEnumTagMultiPayload();
    sub_24F68AF2C();
    sub_24F68AFE0();
    v153 = v182;
    sub_24F924E28();
    sub_24E601704(v111, v112, v113);
    sub_24E60169C(v153, v185, &qword_27F24C2C8, &qword_24FA19C20);
    swift_storeEnumTagMultiPayload();
    sub_24F68AEA0();
    sub_24F68B1A4(&qword_27F24C300, &qword_27F24C280, &qword_24FA19BD8, sub_24F68B258);
    sub_24F924E28();
    sub_24E601704(v153, &qword_27F24C2C8, &qword_24FA19C20);
    return sub_24E672A08(v92);
  }

  v44 = v33;
  if (v194 == 3)
  {
    v45 = swift_getKeyPath();
    v46 = v162;
    *v162 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
    swift_storeEnumTagMultiPayload();
    v47 = type metadata accessor for LargeOfferButton.IndeterminateProgressView(0);
    v48 = v46 + v47[5];
    LOBYTE(v188) = 0;
    sub_24F926F28();
    v49 = *(&v195 + 1);
    *v48 = v195;
    *(v48 + 8) = v49;
    *(v46 + v47[6]) = 0x4000000000000000;
    v50 = v47[7];
    LODWORD(v170) = v43;
    *(v46 + v50) = v43;
    sub_24F689068();
    sub_24F689068();
    sub_24F927618();
    sub_24F9238C8();
    v51 = (v46 + *(v157 + 36));
    v52 = v196;
    *v51 = v195;
    v51[1] = v52;
    v51[2] = v197;
    sub_24F923628();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v53 = v188;
    if (v188)
    {
    }

    v176 = v53 != 0;
    v54 = *(v40 + v33[7]);
    v55 = 0x4046000000000000;
    if (!*(v40 + v44[7]))
    {
      v55 = 0;
    }

    v175 = v55;
    v56 = sub_24F688D98();
    v58 = v57;
    v59 = sub_24F688EFC();
    v61 = v60;
    v62 = v161;
    v63 = &v161[*(v171 + 36)];
    *v63 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8, &qword_24F9471F0);
    swift_storeEnumTagMultiPayload();
    v64 = type metadata accessor for LargeButtonForegroundStyleViewModifier(0);
    v65 = v63 + v64[5];
    *v65 = swift_getKeyPath();
    v65[8] = 0;
    *(v63 + v64[6]) = v170;
    *(v63 + v64[7]) = v176;
    v66 = v63 + v64[8];
    *v66 = v175;
    v66[8] = v54 ^ 1;
    v67 = v63 + v64[9];
    *v67 = v56;
    v67[8] = v58 & 1;
    v68 = v63 + v64[10];
    *v68 = v59;
    v68[8] = v61 & 1;
    sub_24E6009C8(v46, v62, &qword_27F24C288, &qword_24FA19BE0);
    v69 = &qword_27F24C290;
    v70 = &qword_24FA19BE8;
    v71 = v163;
    sub_24E6009C8(v62, v163, &qword_27F24C290, &qword_24FA19BE8);
    sub_24E60169C(v71, v168, &qword_27F24C290, &qword_24FA19BE8);
    swift_storeEnumTagMultiPayload();
    sub_24F68A764(&qword_27F215FE0, type metadata accessor for LargeButtonContentView, &unk_24F9412F0);
    sub_24F68B1A4(&qword_27F24C2E8, &qword_27F24C290, &qword_24FA19BE8, sub_24F68B0C8);
    v72 = v169;
    sub_24F924E28();
    sub_24E60169C(v72, v180, &qword_27F24C2A0, &qword_24FA19BF8);
    swift_storeEnumTagMultiPayload();
    sub_24F68AF2C();
    sub_24F68AFE0();
    v73 = v182;
    sub_24F924E28();
    sub_24E601704(v72, &qword_27F24C2A0, &qword_24FA19BF8);
    sub_24E60169C(v73, v185, &qword_27F24C2C8, &qword_24FA19C20);
    swift_storeEnumTagMultiPayload();
    sub_24F68AEA0();
    sub_24F68B1A4(&qword_27F24C300, &qword_27F24C280, &qword_24FA19BD8, sub_24F68B258);
    sub_24F924E28();
    sub_24E601704(v73, &qword_27F24C2C8, &qword_24FA19C20);
    v74 = v71;
  }

  else
  {
    v114 = v189;
    v115 = swift_getKeyPath();
    v116 = v160;
    *v160 = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
    swift_storeEnumTagMultiPayload();
    v117 = type metadata accessor for LargeOfferButton.DownloadingProgressView(0);
    *(v116 + v117[5]) = v114;
    *(v116 + v117[6]) = 0x4000000000000000;
    *(v116 + v117[7]) = v41 & 1;
    *(v116 + v117[8]) = v43;
    sub_24F689068();
    sub_24F689068();
    sub_24F927618();
    sub_24F9238C8();
    v118 = (v116 + *(v158 + 36));
    v119 = v196;
    *v118 = v195;
    v118[1] = v119;
    v118[2] = v197;
    v120 = *(v40 + v44[7]);
    v121 = 0x4046000000000000;
    if (!v120)
    {
      v121 = 0;
    }

    v182 = v121;
    v122 = sub_24F688D98();
    LODWORD(v181) = v123;
    v124 = sub_24F688EFC();
    v126 = v125;
    v127 = v43;
    v128 = v159;
    v129 = &v159[*(v187 + 36)];
    *v129 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8, &qword_24F9471F0);
    swift_storeEnumTagMultiPayload();
    v130 = type metadata accessor for LargeButtonForegroundStyleViewModifier(0);
    v131 = v129 + v130[5];
    *v131 = swift_getKeyPath();
    v131[8] = 0;
    *(v129 + v130[6]) = v127;
    *(v129 + v130[7]) = 1;
    v132 = v129 + v130[8];
    *v132 = v182;
    v132[8] = v120 ^ 1;
    v133 = v129 + v130[9];
    *v133 = v122;
    v133[8] = v181 & 1;
    v134 = v129 + v130[10];
    *v134 = v124;
    v134[8] = v126 & 1;
    sub_24E6009C8(v116, v128, &qword_27F24C278, &qword_24FA19BD0);
    v69 = &qword_27F24C280;
    v70 = &qword_24FA19BD8;
    v135 = v170;
    sub_24E6009C8(v128, v170, &qword_27F24C280, &qword_24FA19BD8);
    sub_24E60169C(v135, v185, &qword_27F24C280, &qword_24FA19BD8);
    swift_storeEnumTagMultiPayload();
    sub_24F68AEA0();
    sub_24F68B1A4(&qword_27F24C300, &qword_27F24C280, &qword_24FA19BD8, sub_24F68B258);
    sub_24F924E28();
    v74 = v135;
  }

  return sub_24E601704(v74, v69, v70);
}

uint64_t sub_24F688D98()
{
  if (*(v0 + *(type metadata accessor for LargeOfferButton(0) + 28)) != 1)
  {
    return 0x404E000000000000;
  }

  type metadata accessor for OfferButtonViewModel(0);
  sub_24F68A764(&qword_27F234098, type metadata accessor for OfferButtonViewModel, &unk_24F9AED60);
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v1 = v9 | (v10 << 32);
  if (v11 > 1u)
  {
    if (v11 != 2)
    {
      return 0x4046000000000000;
    }

    v3 = 2;
LABEL_9:
    sub_24EEFE350(v4, v5, v6, v7, v8, v1, v3);
    return 0x4054000000000000;
  }

  if (!v11)
  {
    v3 = 0;
    goto LABEL_9;
  }

  sub_24EEFE350(v4, v5, v6, v7, v8, v1, 1);
  return 0x4046000000000000;
}

uint64_t sub_24F688EFC()
{
  if (*(v0 + *(type metadata accessor for LargeOfferButton(0) + 28)) != 1)
  {
    return 0x406E000000000000;
  }

  type metadata accessor for OfferButtonViewModel(0);
  sub_24F68A764(&qword_27F234098, type metadata accessor for OfferButtonViewModel, &unk_24F9AED60);
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v1 = v9 | (v10 << 32);
  if (v11 > 1u)
  {
    if (v11 != 2)
    {
      return 0x4046000000000000;
    }

    v3 = 2;
LABEL_9:
    sub_24EEFE350(v4, v5, v6, v7, v8, v1, v3);
    return 0;
  }

  if (!v11)
  {
    v3 = 0;
    goto LABEL_9;
  }

  sub_24EEFE350(v4, v5, v6, v7, v8, v1, 1);
  return 0x4046000000000000;
}

double sub_24F689068()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8, &qword_24F9471F0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = sub_24F924C48();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 28.0;
  if ((*(v0 + *(type metadata accessor for LargeOfferButton(0) + 28)) & 1) == 0)
  {
    sub_24E60169C(v0, v7, &qword_27F215EB8, &qword_24F9471F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v9 + 32))(v11, v7, v8);
    }

    else
    {
      sub_24F92BDC8();
      v14 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
    }

    v15 = (*(v9 + 88))(v11, v8);
    if (v15 != *MEMORY[0x277CE0268] && v15 != *MEMORY[0x277CE0298] && v15 != *MEMORY[0x277CE02A0] && v15 != *MEMORY[0x277CE0290])
    {
      v12 = 30.0;
      if (v15 != *MEMORY[0x277CE0260])
      {
        if (v15 == *MEMORY[0x277CE0270])
        {
          return 32.0;
        }

        else if (v15 == *MEMORY[0x277CE0248])
        {
          return 34.0;
        }

        else
        {
          v12 = 36.0;
          if (v15 != *MEMORY[0x277CE0280] && v15 != *MEMORY[0x277CE0278] && v15 != *MEMORY[0x277CE0288] && v15 != *MEMORY[0x277CE0250] && v15 != *MEMORY[0x277CE0258])
          {
            (*(v9 + 8))(v11, v8);
            return 28.0;
          }
        }
      }
    }
  }

  return v12;
}

double sub_24F689430@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LargeOfferButton.IndeterminateProgressView(0);
  v48 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49 = v5;
  v50 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_24F923F78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v40[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v13);
  v15 = &v40[-v14];
  v16 = (v1 + *(v4 + 20));
  v17 = *v16;
  v18 = *(v16 + 1);
  v45 = v17;
  LOBYTE(v52) = v17;
  v46 = v18;
  v53 = v18;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  v43 = v51;
  v47 = v4;
  if (*(v1 + *(v4 + 28)) == 1)
  {
    v41 = sub_24F9251C8();
    v19 = *(v13 + 36);
    v42 = v6;
    v20 = v2;
    v21 = *MEMORY[0x277CE13B8];
    v22 = sub_24F927748();
    v23 = v21;
    v2 = v20;
    v6 = v42;
    (*(*(v22 - 8) + 104))(&v15[v19], v23, v22);
    *v15 = v41;
    sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
  }

  else
  {
    v52 = sub_24F926C88();
  }

  v24 = sub_24F9238D8();
  v25 = *(v2 + *(v47 + 24));
  sub_24F7699B0(v12);
  (*(v7 + 104))(v9, *MEMORY[0x277CDFA90], v6);
  v26 = sub_24F923F68();
  v27 = *(v7 + 8);
  v27(v9, v6);
  v27(v12, v6);
  if (v26)
  {
    v28 = -1.0;
  }

  else
  {
    v28 = 1.0;
  }

  if (v43)
  {
    v29 = 6.28318531;
  }

  else
  {
    v29 = 0.0;
  }

  sub_24F9278A8();
  v31 = v30;
  v33 = v32;
  sub_24F9276B8();
  v34 = sub_24F927658();

  LOBYTE(v52) = v45;
  v53 = v46;
  sub_24F926F38();
  v35 = v51;
  v36 = v50;
  sub_24F68B37C(v2, v50, type metadata accessor for LargeOfferButton.IndeterminateProgressView);
  v37 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v38 = swift_allocObject();
  sub_24F68B314(v36, v38 + v37, type metadata accessor for LargeOfferButton.IndeterminateProgressView);
  result = 0.0;
  *a1 = xmmword_24FA19A00;
  *(a1 + 16) = v29;
  *(a1 + 24) = v24;
  *(a1 + 32) = v25;
  *(a1 + 40) = v28;
  *(a1 + 48) = 0x3FF0000000000000;
  *(a1 + 56) = v31;
  *(a1 + 64) = v33;
  *(a1 + 72) = v34;
  *(a1 + 80) = v35;
  *(a1 + 88) = sub_24F68BC5C;
  *(a1 + 96) = v38;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return result;
}

uint64_t sub_24F6898D4(uint64_t a1)
{
  type metadata accessor for LargeOfferButton.IndeterminateProgressView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  return sub_24F926F48();
}

void sub_24F68994C(uint64_t a1@<X0>, double *a2@<X8>)
{
  v74 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20, &qword_24F93CB70);
  MEMORY[0x28223BE20](v62);
  v70 = (&v59 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C360, &qword_24FA19E08);
  v71 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v64 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C368, &unk_24FA19E10);
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v12);
  v14 = (&v59 - v13);
  v15 = sub_24F923F78();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  sub_24F7699B0((&v59 - v20));
  v22 = *(v16 + 104);
  v66 = *MEMORY[0x277CDFA90];
  v67 = v16 + 104;
  v65 = v22;
  v22(v18);
  v69 = sub_24F923F68();
  v23 = *(v16 + 8);
  v23(v18, v15);
  v68 = v23;
  v23(v21, v15);
  v76 = type metadata accessor for LargeOfferButton.DownloadingProgressView(0);
  v75 = *(a1 + v76[8]);
  if (v75 == 1)
  {
    v24 = sub_24F9251B8();
    v25 = v4;
    v26 = *(v12 + 36);
    v61 = v12;
    v27 = *MEMORY[0x277CE13B8];
    v28 = sub_24F927748();
    v29 = v14 + v26;
    v4 = v25;
    (*(*(v28 - 8) + 104))(v29, v27, v28);
    *v14 = v24;
    sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
  }

  else
  {
    sub_24F926C88();
    v30 = sub_24F926D08();

    v77 = v30;
  }

  v31 = sub_24F9238D8();
  v32 = v31;
  v33 = *(a1 + v76[6]);
  if (*(a1 + v76[7]))
  {
    v34 = 1;
    v35 = v72;
  }

  else
  {
    v60 = v31;
    v61 = v4;
    v36 = sub_24F926DF8();
    v37 = v70;
    v38 = (v70 + *(v62 + 36));
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
    v40 = *MEMORY[0x277CE1050];
    v41 = sub_24F926E78();
    (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
    *v38 = swift_getKeyPath();
    *v37 = v36;
    if (v75 == 1)
    {
      v42 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    }

    else
    {
      v42 = sub_24F926C88();
    }

    v77 = v42;
    v43 = sub_24F9238D8();
    v4 = v61;
    v44 = v64;
    sub_24E6009C8(v70, v64, &qword_27F22DF20, &qword_24F93CB70);
    *(v44 + *(v4 + 36)) = v43;
    v45 = v44;
    v46 = v63;
    sub_24E6009C8(v45, v63, &qword_27F24C360, &qword_24FA19E08);
    v35 = v72;
    sub_24E6009C8(v46, v72, &qword_27F24C360, &qword_24FA19E08);
    v34 = 0;
    v32 = v60;
  }

  (*(v71 + 56))(v35, v34, 1, v4);
  v47 = *(a1 + v76[5]);
  sub_24F7699B0(v21);
  v65(v18, v66, v15);
  v48 = sub_24F923F68();
  v49 = v68;
  v68(v18, v15);
  v49(v21, v15);
  if (v75 == 1)
  {
    v50 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  else
  {
    v50 = sub_24F926C88();
  }

  v77 = v50;
  v51 = sub_24F9238D8();
  if (v69)
  {
    v52 = 1.57079633;
  }

  else
  {
    v52 = -1.57079633;
  }

  if (v48)
  {
    v53 = 1.57079633;
  }

  else
  {
    v53 = -1.57079633;
  }

  v54 = v73;
  sub_24E60169C(v35, v73, &qword_27F24C368, &unk_24FA19E10);
  v55 = v74;
  *v74 = xmmword_24F98B440;
  v55[2] = v52;
  *(v55 + 3) = v32;
  *(v55 + 4) = v33;
  v56 = v35;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24C370, &qword_24FA19E50);
  sub_24E60169C(v54, v55 + *(v57 + 48), &qword_27F24C368, &unk_24FA19E10);
  v58 = v55 + *(v57 + 64);
  *v58 = 0;
  *(v58 + 1) = v47;
  *(v58 + 2) = v53;
  *(v58 + 3) = v51;
  *(v58 + 4) = v33;

  sub_24E601704(v56, &qword_27F24C368, &unk_24FA19E10);

  sub_24E601704(v54, &qword_27F24C368, &unk_24FA19E10);
}

uint64_t sub_24F68A0CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_24F927618();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C350, &qword_24FA19DF0);
  sub_24F68994C(v2, (a2 + *(v6 + 44)));
  v7 = sub_24F9276B8();
  v8 = *(v2 + *(a1 + 20));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C358, &unk_24FA19DF8);
  v10 = (a2 + *(result + 36));
  *v10 = v7;
  v10[1] = v8;
  return result;
}

uint64_t sub_24F68A16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C450, &unk_24FA19F00);
  v24 = *(a1 + 16);
  v23 = sub_24E602068(&qword_27F24C458, &qword_27F24C450, &unk_24FA19F00, MEMORY[0x277CDF790]);
  v22 = *(a1 + 24);
  v35[0] = v25;
  v35[1] = v24;
  v35[2] = MEMORY[0x277CE1428];
  v35[3] = v23;
  v35[4] = v22;
  v35[5] = MEMORY[0x277CE1410];
  v5 = sub_24F9240C8();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = sub_24F924038();
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = sub_24F924038();
  v28 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  v34 = *v3;
  v17 = *(a1 + 44);
  sub_24F923658();
  sub_24F685C88(v3 + v17, v35, 1, v25, v24, v23, v22, v7);
  sub_24F4A1F90(v35);
  sub_24F9278A8();
  WitnessTable = swift_getWitnessTable();
  sub_24F926388();
  (*(v26 + 8))(v7, v5);
  v32 = WitnessTable;
  v33 = MEMORY[0x277CDFB38];
  v19 = swift_getWitnessTable();
  sub_24F926A28();
  (*(v27 + 8))(v10, v8);
  v30 = v19;
  v31 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_24E7896B8();
  v20 = *(v28 + 8);
  v20(v13, v11);
  sub_24E7896B8();
  return (v20)(v16, v11);
}

uint64_t sub_24F68A5CC()
{
  v1 = type metadata accessor for LargeOfferButton(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8, &qword_24F9471F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F924C48();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  sub_24E683950(*(v0 + v2 + *(v1 + 20)), *(v0 + v2 + *(v1 + 20) + 8));

  return swift_deallocObject();
}

uint64_t sub_24F68A6F4()
{
  v1 = *(type metadata accessor for LargeOfferButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24F687360(v2);
}

uint64_t sub_24F68A764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24F68A7AC(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a2 = v3;
}

uint64_t sub_24F68A830(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F68A8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a5;
  v42 = a4;
  v37 = a3;
  v38 = a8;
  v40 = a2;
  v47 = a9;
  v48 = a1;
  v33[1] = a10;
  v41 = *(a8 - 8);
  v45 = a12;
  MEMORY[0x28223BE20](a1);
  v39 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_24F924E08();
  MEMORY[0x28223BE20](v46);
  v43 = v33 - v15;
  v36 = *(a7 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a6 - 8);
  v19 = v34;
  MEMORY[0x28223BE20](v20);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F923AC8();
  MEMORY[0x28223BE20](v23);
  WitnessTable = swift_getWitnessTable();
  v49 = v23;
  v50 = a7;
  v51 = WitnessTable;
  v52 = a11;
  v35 = sub_24F9234B8();
  v25 = MEMORY[0x28223BE20](v35);
  v26 = *(v19 + 16);
  v33[0] = a6;
  v26(v22, v48, a6, v25);
  sub_24F923AB8();
  v27 = v36;
  v28 = v40;
  (*(v36 + 16))(v18, v40, a7);
  sub_24F9234A8();
  v29 = v41;
  v30 = v38;
  v31 = v44;
  (*(v41 + 16))(v39, v44, v38);
  sub_24F927618();
  (*(v29 + 8))(v31, v30);
  (*(v27 + 8))(v28, a7);
  (*(v34 + 8))(v48, v33[0]);
  sub_24F924DF8();
  return sub_24F923FD8();
}

unint64_t sub_24F68ACE0()
{
  result = qword_27F24C248;
  if (!qword_27F24C248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C210, &qword_24FA19A90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C200, &qword_24FA19A80);
    sub_24F9241F8();
    sub_24E602068(&qword_27F24C240, &qword_27F24C200, &qword_24FA19A80, MEMORY[0x277D7EB00]);
    sub_24F68A764(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320, &unk_24F9397C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C248);
  }

  return result;
}

unint64_t sub_24F68AEA0()
{
  result = qword_27F24C2D0;
  if (!qword_27F24C2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C2C8, &qword_24FA19C20);
    sub_24F68AF2C();
    sub_24F68AFE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C2D0);
  }

  return result;
}

unint64_t sub_24F68AF2C()
{
  result = qword_27F24C2D8;
  if (!qword_27F24C2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C2C0, &qword_24FA19C18);
    sub_24F68A764(&qword_27F215FE0, type metadata accessor for LargeButtonContentView, &unk_24F9412F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C2D8);
  }

  return result;
}

unint64_t sub_24F68AFE0()
{
  result = qword_27F24C2E0;
  if (!qword_27F24C2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C2A0, &qword_24FA19BF8);
    sub_24F68A764(&qword_27F215FE0, type metadata accessor for LargeButtonContentView, &unk_24F9412F0);
    sub_24F68B1A4(&qword_27F24C2E8, &qword_27F24C290, &qword_24FA19BE8, sub_24F68B0C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C2E0);
  }

  return result;
}

unint64_t sub_24F68B0C8()
{
  result = qword_27F24C2F0;
  if (!qword_27F24C2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C288, &qword_24FA19BE0);
    sub_24F68A764(&qword_27F24C2F8, type metadata accessor for LargeOfferButton.IndeterminateProgressView, &unk_24FA19D9C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C2F0);
  }

  return result;
}

uint64_t sub_24F68B1A4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_24F68A764(&qword_27F215EA0, type metadata accessor for LargeButtonForegroundStyleViewModifier, &unk_24F951898);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F68B258()
{
  result = qword_27F24C308;
  if (!qword_27F24C308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C278, &qword_24FA19BD0);
    sub_24F68A764(&qword_27F24C310, type metadata accessor for LargeOfferButton.DownloadingProgressView, &unk_24FA19D4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C308);
  }

  return result;
}

uint64_t sub_24F68B314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F68B37C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F68B3E4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F68B41C()
{

  return swift_deallocObject();
}

uint64_t sub_24F68B488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F68B574(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

void sub_24F68B638(uint64_t a1)
{
  sub_24F68B6E4(319, &qword_27F2168D0, MEMORY[0x277CDFAA0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24F68B6E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F923578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24F68B74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24F68B838(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_24F68B900(uint64_t a1)
{
  sub_24F68B6E4(319, &qword_27F2168D0, MEMORY[0x277CDFAA0]);
  if (v1 <= 0x3F)
  {
    sub_24E654514();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F68B9BC()
{
  result = qword_27F24C338;
  if (!qword_27F24C338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C268, &qword_24FA19BC0);
    sub_24F68BA48();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C338);
  }

  return result;
}

unint64_t sub_24F68BA48()
{
  result = qword_27F24C340;
  if (!qword_27F24C340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C260, &qword_24FA19BB8);
    sub_24E602068(&qword_27F24C348, &qword_27F24C258, &qword_24FA19B88, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C340);
  }

  return result;
}

uint64_t sub_24F68BB38()
{
  v1 = *(type metadata accessor for LargeOfferButton.IndeterminateProgressView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923F78();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F68BC5C()
{
  v1 = *(type metadata accessor for LargeOfferButton.IndeterminateProgressView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24F6898D4(v2);
}

uint64_t sub_24F68BCC4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F68BD54(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
  }

  v7 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = a2 - v5;
  v9 = v7 & 0xFFFFFFF8;
  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = v8 + 1;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v12 || (v13 = *(a1 + v7)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    return 0;
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return v5 + (v9 | v14) + 1;
}

unsigned int *sub_24F68BE88(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((*(v5 + 64) + ((v7 + 24) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v12 = 0;
    v13 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = a3 - v6;
    if (((*(v5 + 64) + ((v7 + 24) & ~v7) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v8) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v8) = 0;
      }

      else if (v12)
      {
        *(result + v8) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v17 = *(v5 + 56);
      v18 = (((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;

      return v17(v18);
    }
  }

  if (((*(v5 + 64) + ((v7 + 24) & ~v7) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (((*(v5 + 64) + ((v7 + 24) & ~v7) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v15 = ~v6 + a2;
    v16 = result;
    bzero(result, ((*(v5 + 64) + ((v7 + 24) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v16;
    *v16 = v15;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(result + v8) = v14;
    }

    else
    {
      *(result + v8) = v14;
    }
  }

  else if (v12)
  {
    *(result + v8) = v14;
  }

  return result;
}

unint64_t sub_24F68C058()
{
  result = qword_27F24C3F8;
  if (!qword_27F24C3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C400, &qword_24FA19E78);
    sub_24F68C0E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C3F8);
  }

  return result;
}

unint64_t sub_24F68C0E4()
{
  result = qword_27F24C408;
  if (!qword_27F24C408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C410, &qword_24FA19E80);
    sub_24F68C19C();
    sub_24E602068(&qword_27F218870, &unk_27F2364C0, qword_24F962AC0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C408);
  }

  return result;
}

unint64_t sub_24F68C19C()
{
  result = qword_27F24C418;
  if (!qword_27F24C418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C420, &qword_24FA19E88);
    sub_24E602068(&qword_27F24C428, &qword_27F24C430, &unk_24FA19E90, &unk_24FA19EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C418);
  }

  return result;
}

unint64_t sub_24F68C258()
{
  result = qword_27F24C438;
  if (!qword_27F24C438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C358, &unk_24FA19DF8);
    sub_24E602068(&qword_27F24C440, &qword_27F24C448, &unk_24FA19EA0, MEMORY[0x277CE11A8]);
    sub_24E602068(&qword_27F229228, &qword_27F229230, qword_24F984808, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C438);
  }

  return result;
}

uint64_t sub_24F68C380(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C450, &unk_24FA19F00);
  sub_24E602068(&qword_27F24C458, &qword_27F24C450, &unk_24FA19F00, MEMORY[0x277CDF790]);
  sub_24F9240C8();
  sub_24F924038();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_24F68C4DC()
{
  result = qword_27F2151B8;
  if (!qword_27F2151B8)
  {
    type metadata accessor for GamesRecentlyPlayedDataIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2151B8);
  }

  return result;
}

uint64_t sub_24F68C534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return sub_24F68C5EC(a2, a3);
}

uint64_t sub_24F68C5EC(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA18, &unk_24F9762F0);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA20, qword_24F95A020);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F68C6CC, 0, 0);
}

uint64_t sub_24F68C6CC()
{
  v1 = v0[12];
  v0[17] = *v1;
  v0[18] = v1[1];
  v2 = type metadata accessor for GamesRecentlyPlayedDataIntent(0);
  v0[19] = *(v1 + *(v2 + 20));
  v3 = *(v1 + *(v2 + 28));
  v4 = 1;
  if (v3 == 1)
  {
    sub_24F920698();
    v4 = 0;
  }

  v6 = v0[15];
  v5 = v0[16];
  v7 = sub_24F920728();
  (*(*(v7 - 8) + 56))(v6, v4, 1, v7);
  sub_24F68CDF8(v6, v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_24F68C84C;

  return MEMORY[0x28217F228](v0 + 7, v8, v8);
}

uint64_t sub_24F68C84C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_24F68CC14;
  }

  else
  {
    v2 = sub_24F68C960;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F68C960()
{
  v1 = v0[19];
  v2 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920538();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = sub_24F920398();
  result = (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[22] = v5;
    *v5 = v0;
    v5[1] = sub_24F68CAAC;
    v7 = v0[18];
    v6 = v0[19];
    v9 = v0[16];
    v8 = v0[17];
    v11 = v0[13];
    v10 = v0[14];

    return sub_24F6F826C(v9, v10, v6, 0, v8, v7, 0, v11);
  }

  return result;
}

uint64_t sub_24F68CAAC(uint64_t a1)
{
  v4 = *v2;
  v4[23] = v1;

  v5 = v4[14];
  if (v1)
  {
    sub_24E601704(v5, &qword_27F21DA18, &unk_24F9762F0);
    v6 = sub_24F68CD58;
  }

  else
  {
    v4[24] = a1;
    sub_24E601704(v5, &qword_27F21DA18, &unk_24F9762F0);
    v6 = sub_24F68CCAC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24F68CC14()
{
  sub_24E601704(*(v0 + 128), &qword_27F21DA20, qword_24F95A020);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F68CCAC()
{
  v1 = v0[24];
  sub_24E601704(v0[16], &qword_27F21DA20, qword_24F95A020);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_24F68CD58()
{
  sub_24E601704(v0[16], &qword_27F21DA20, qword_24F95A020);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F68CDF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA20, qword_24F95A020);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static GameStoreKitLocalizedStrings.CONTROLLER_UNKNOWN_GAME_CONTROLLER()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.GAME_CONTROLLER_SETTINGS_LABEL()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.CONTROLLER_CONNECT_CONTROLLER_TITLE()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.CONTROLLER_CONNECT_CONTROLLER_SUBTITLE()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.VOLUME_CONTROLS_LABEL()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.BRIGHTNESS_CONTROLS_LABEL()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.GAME_MODE_OFF_LABEL()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.GAME_MODE_ON_LABEL()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.GAME_MODE_TITLE()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.AX_DOUBLE_TAP_CHOOSE_PLAYER_HINT()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.OVERLAY_NOW_PLAYING_TITLE()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.OVERLAY_CHECK_INTERNET_TITLE()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.OVERLAY_CHECK_INTERNET_DESCRIPTION()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t sub_24F68E03C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39E9B8 = result;
  unk_27F39E9C0 = v4;
  return result;
}

uint64_t sub_24F68E1B0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39E9C8 = result;
  unk_27F39E9D0 = v4;
  return result;
}

uint64_t sub_24F68E31C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39E9D8 = result;
  unk_27F39E9E0 = v4;
  return result;
}

uint64_t sub_24F68E488()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39E9E8 = result;
  unk_27F39E9F0 = v4;
  return result;
}

uint64_t sub_24F68E5F8()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  *&xmmword_27F39E9F8 = result;
  *(&xmmword_27F39E9F8 + 1) = v4;
  return result;
}

uint64_t sub_24F68E758()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EA08 = result;
  unk_27F39EA10 = v4;
  return result;
}

uint64_t sub_24F68E8B4()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EA18 = result;
  unk_27F39EA20 = v4;
  return result;
}

uint64_t sub_24F68EA10()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EA28 = result;
  unk_27F39EA30 = v4;
  return result;
}

uint64_t sub_24F68EB7C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EA38 = result;
  unk_27F39EA40 = v4;
  return result;
}

uint64_t sub_24F68ECE8()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EA48 = result;
  unk_27F39EA50 = v4;
  return result;
}

uint64_t sub_24F68EE54()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EA58 = result;
  unk_27F39EA60 = v4;
  return result;
}

uint64_t sub_24F68EFC0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EA68 = result;
  unk_27F39EA70 = v4;
  return result;
}

uint64_t sub_24F68F130()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  *&xmmword_27F39EA78 = result;
  *(&xmmword_27F39EA78 + 1) = v4;
  return result;
}

uint64_t sub_24F68F29C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EA88 = result;
  unk_27F39EA90 = v4;
  return result;
}

uint64_t sub_24F68F408()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EA98 = result;
  unk_27F39EAA0 = v4;
  return result;
}

uint64_t sub_24F68F57C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EAA8 = result;
  unk_27F39EAB0 = v4;
  return result;
}

uint64_t sub_24F68F6E4()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EAB8 = result;
  unk_27F39EAC0 = v4;
  return result;
}

uint64_t sub_24F68F850()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EAC8 = result;
  unk_27F39EAD0 = v4;
  return result;
}

uint64_t sub_24F68F9C0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EAD8 = result;
  unk_27F39EAE0 = v4;
  return result;
}

uint64_t sub_24F68FB28()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  *&xmmword_27F39EAE8 = result;
  *(&xmmword_27F39EAE8 + 1) = v4;
  return result;
}

uint64_t sub_24F68FC8C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EAF8 = result;
  unk_27F39EB00 = v4;
  return result;
}

uint64_t sub_24F68FDEC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EB08 = result;
  unk_27F39EB10 = v4;
  return result;
}

uint64_t sub_24F68FF58()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EB18 = result;
  unk_27F39EB20 = v4;
  return result;
}

uint64_t sub_24F6900BC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EB28 = result;
  unk_27F39EB30 = v4;
  return result;
}

uint64_t sub_24F690228()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EB38 = result;
  unk_27F39EB40 = v4;
  return result;
}

uint64_t sub_24F690394()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EB48 = result;
  unk_27F39EB50 = v4;
  return result;
}

uint64_t sub_24F690500()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EB58 = result;
  unk_27F39EB60 = v4;
  return result;
}

uint64_t sub_24F69066C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EB68 = result;
  unk_27F39EB70 = v4;
  return result;
}

uint64_t sub_24F6907D8()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EB78 = result;
  unk_27F39EB80 = v4;
  return result;
}

uint64_t sub_24F69093C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EB88 = result;
  unk_27F39EB90 = v4;
  return result;
}

uint64_t sub_24F690AB0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EB98 = result;
  unk_27F39EBA0 = v4;
  return result;
}

uint64_t sub_24F690C1C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EBA8 = result;
  unk_27F39EBB0 = v4;
  return result;
}

uint64_t sub_24F690D88()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EBB8 = result;
  unk_27F39EBC0 = v4;
  return result;
}

uint64_t sub_24F690EF4()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EBC8 = result;
  unk_27F39EBD0 = v4;
  return result;
}

uint64_t sub_24F691058()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EBD8 = result;
  unk_27F39EBE0 = v4;
  return result;
}

uint64_t sub_24F6911B4()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EBE8 = result;
  unk_27F39EBF0 = v4;
  return result;
}

uint64_t sub_24F691320()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EBF8 = result;
  unk_27F39EC00 = v4;
  return result;
}

uint64_t sub_24F691480()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EC08 = result;
  unk_27F39EC10 = v4;
  return result;
}

uint64_t sub_24F6915E4()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EC18 = result;
  unk_27F39EC20 = v4;
  return result;
}

uint64_t sub_24F691750()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EC28 = result;
  unk_27F39EC30 = v4;
  return result;
}

uint64_t sub_24F6918BC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EC38 = result;
  unk_27F39EC40 = v4;
  return result;
}

uint64_t sub_24F691A30()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EC48 = result;
  unk_27F39EC50 = v4;
  return result;
}

uint64_t sub_24F691BA0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EC58 = result;
  unk_27F39EC60 = v4;
  return result;
}

uint64_t sub_24F691D10()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EC68 = result;
  unk_27F39EC70 = v4;
  return result;
}

uint64_t sub_24F691E70()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EC78 = result;
  unk_27F39EC80 = v4;
  return result;
}

uint64_t sub_24F691FD8()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EC88 = result;
  unk_27F39EC90 = v4;
  return result;
}

uint64_t sub_24F692144()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EC98 = result;
  unk_27F39ECA0 = v4;
  return result;
}

uint64_t sub_24F6922B4()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ECA8 = result;
  unk_27F39ECB0 = v4;
  return result;
}

uint64_t sub_24F692424()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ECB8 = result;
  unk_27F39ECC0 = v4;
  return result;
}

uint64_t sub_24F692584()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ECC8 = result;
  unk_27F39ECD0 = v4;
  return result;
}

uint64_t sub_24F6926E0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ECD8 = result;
  unk_27F39ECE0 = v4;
  return result;
}

uint64_t sub_24F69283C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ECE8 = result;
  unk_27F39ECF0 = v4;
  return result;
}

uint64_t sub_24F69299C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ECF8 = result;
  unk_27F39ED00 = v4;
  return result;
}

uint64_t sub_24F692AFC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ED08 = result;
  unk_27F39ED10 = v4;
  return result;
}

uint64_t sub_24F692C60()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ED18 = result;
  unk_27F39ED20 = v4;
  return result;
}

uint64_t sub_24F692DD0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ED28 = result;
  unk_27F39ED30 = v4;
  return result;
}

uint64_t sub_24F692F38()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ED38 = result;
  unk_27F39ED40 = v4;
  return result;
}

uint64_t sub_24F6930AC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ED48 = result;
  unk_27F39ED50 = v4;
  return result;
}

uint64_t sub_24F69320C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ED58 = result;
  unk_27F39ED60 = v4;
  return result;
}

uint64_t sub_24F693370()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ED68 = result;
  unk_27F39ED70 = v4;
  return result;
}

uint64_t sub_24F6934D0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ED78 = result;
  unk_27F39ED80 = v4;
  return result;
}

uint64_t sub_24F693638()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ED88 = result;
  unk_27F39ED90 = v4;
  return result;
}

uint64_t sub_24F6937AC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ED98 = result;
  unk_27F39EDA0 = v4;
  return result;
}

uint64_t sub_24F69391C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EDA8 = result;
  unk_27F39EDB0 = v4;
  return result;
}

uint64_t sub_24F693A90()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EDB8 = result;
  unk_27F39EDC0 = v4;
  return result;
}

uint64_t sub_24F693C04()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EDC8 = result;
  unk_27F39EDD0 = v4;
  return result;
}

uint64_t sub_24F693D6C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EDD8 = result;
  unk_27F39EDE0 = v4;
  return result;
}

uint64_t sub_24F693ED0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EDE8 = result;
  unk_27F39EDF0 = v4;
  return result;
}

uint64_t sub_24F694034()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EDF8 = result;
  unk_27F39EE00 = v4;
  return result;
}

uint64_t sub_24F6941A0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EE08 = result;
  unk_27F39EE10 = v4;
  return result;
}

uint64_t sub_24F694308()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EE18 = result;
  unk_27F39EE20 = v4;
  return result;
}

uint64_t sub_24F694468()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EE28 = result;
  unk_27F39EE30 = v4;
  return result;
}

uint64_t sub_24F6945D8()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EE38 = result;
  unk_27F39EE40 = v4;
  return result;
}

uint64_t sub_24F69473C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EE48 = result;
  unk_27F39EE50 = v4;
  return result;
}

uint64_t sub_24F6948A8()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EE58 = result;
  unk_27F39EE60 = v4;
  return result;
}

uint64_t sub_24F694A10()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EE68 = result;
  unk_27F39EE70 = v4;
  return result;
}

uint64_t sub_24F694B80()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EE78 = result;
  unk_27F39EE80 = v4;
  return result;
}

uint64_t sub_24F694CE8()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  *&xmmword_27F39EE88 = result;
  *(&xmmword_27F39EE88 + 1) = v4;
  return result;
}

uint64_t sub_24F694E54()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EE98 = result;
  unk_27F39EEA0 = v4;
  return result;
}

uint64_t sub_24F694FC0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EEA8 = result;
  unk_27F39EEB0 = v4;
  return result;
}

uint64_t sub_24F695124()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EEB8 = result;
  unk_27F39EEC0 = v4;
  return result;
}

uint64_t sub_24F69528C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EEC8 = result;
  unk_27F39EED0 = v4;
  return result;
}

uint64_t sub_24F695400()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EED8 = result;
  unk_27F39EEE0 = v4;
  return result;
}

uint64_t sub_24F69556C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EEE8 = result;
  unk_27F39EEF0 = v4;
  return result;
}

uint64_t sub_24F6956D8()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EEF8 = result;
  unk_27F39EF00 = v4;
  return result;
}

uint64_t sub_24F695838()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EF08 = result;
  unk_27F39EF10 = v4;
  return result;
}

uint64_t sub_24F6959A0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EF18 = result;
  unk_27F39EF20 = v4;
  return result;
}

uint64_t sub_24F695B14()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EF28 = result;
  unk_27F39EF30 = v4;
  return result;
}

uint64_t sub_24F695C78()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EF38 = result;
  unk_27F39EF40 = v4;
  return result;
}

uint64_t sub_24F695DE4()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EF48 = result;
  unk_27F39EF50 = v4;
  return result;
}

uint64_t sub_24F695F50()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EF58 = result;
  unk_27F39EF60 = v4;
  return result;
}

uint64_t sub_24F6960BC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EF68 = result;
  unk_27F39EF70 = v4;
  return result;
}

uint64_t sub_24F696224()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EF78 = result;
  unk_27F39EF80 = v4;
  return result;
}

uint64_t sub_24F696388()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EF88 = result;
  unk_27F39EF90 = v4;
  return result;
}

uint64_t sub_24F6964F4()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EF98 = result;
  unk_27F39EFA0 = v4;
  return result;
}

uint64_t sub_24F696660()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  *&xmmword_27F39EFA8 = result;
  *(&xmmword_27F39EFA8 + 1) = v4;
  return result;
}

uint64_t sub_24F6967CC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  *&xmmword_27F39EFB8 = result;
  *(&xmmword_27F39EFB8 + 1) = v4;
  return result;
}

uint64_t sub_24F696940()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  *&xmmword_27F39EFC8 = result;
  *(&xmmword_27F39EFC8 + 1) = v4;
  return result;
}

uint64_t sub_24F696AAC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F24C460 = result;
  *algn_27F24C468 = v4;
  return result;
}

uint64_t sub_24F696C38()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F24C470 = result;
  *algn_27F24C478 = v4;
  return result;
}

uint64_t sub_24F696DCC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F91F298();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92B088();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F91F2B8();
  __swift_allocate_value_buffer(v6, qword_27F24C480);
  __swift_project_value_buffer(v6, qword_27F24C480);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v7 = qword_27F24F280;
  v8 = [v7 bundleURL];

  sub_24F91F428();
  (*(v2 + 104))(v4, *MEMORY[0x277CC9118], v1);
  sub_24F91F778();
  return sub_24F91F2C8();
}

uint64_t sub_24F69705C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  *&xmmword_27F24C498 = result;
  *(&xmmword_27F24C498 + 1) = v4;
  return result;
}

uint64_t sub_24F6971F0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  *&xmmword_27F24C4A8 = result;
  *(&xmmword_27F24C4A8 + 1) = v4;
  return result;
}

uint64_t sub_24F697384()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F91F298();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92B088();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F91F2B8();
  __swift_allocate_value_buffer(v6, qword_27F24C4B8);
  __swift_project_value_buffer(v6, qword_27F24C4B8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v7 = qword_27F24F280;
  v8 = [v7 bundleURL];

  sub_24F91F428();
  (*(v2 + 104))(v4, *MEMORY[0x277CC9118], v1);
  sub_24F91F778();
  return sub_24F91F2C8();
}

uint64_t sub_24F697614@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = sub_24F91F2B8();
  v8 = __swift_project_value_buffer(v7, a2);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_24F6976AC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F24C4D0 = result;
  *algn_27F24C4D8 = v4;
  return result;
}

uint64_t sub_24F697840()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F24C4E0 = result;
  *algn_27F24C4E8 = v4;
  return result;
}

uint64_t sub_24F6979D4()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F24C4F0 = result;
  *algn_27F24C4F8 = v4;
  return result;
}

uint64_t sub_24F697B70()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F24C500 = result;
  *algn_27F24C508 = v4;
  return result;
}

uint64_t static GameStoreKitLocalizedStrings.BATTERY_TITLE()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.BATTERY_PERCENT_LABEL(batteryPercent:)(double a1)
{
  v2 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B088();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_24F92B068();
  MEMORY[0x28223BE20](v4 - 8);
  sub_24F92B058();
  sub_24F92B048();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  v6 = MEMORY[0x277D83A80];
  *(v5 + 56) = MEMORY[0x277D839F8];
  *(v5 + 64) = v6;
  *(v5 + 32) = a1 * 100.0;
  sub_24F92B118();
  sub_24F92B038();

  sub_24F92B048();
  sub_24F92B078();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v7 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.ENERGY_MODE_TITLE()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.ENERGY_MODE_LOW_POWER_TITLE()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.ENERGY_MODE_AUTOMATIC_TITLE()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.ENERGY_MODE_HIGH_POWER_TITLE()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.ENERGY_MODE_LOW_POWER_DESCRIPTION()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.ENERGY_MODE_AUTOMATIC_DESCRIPTION()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.ENERGY_MODE_HIGH_POWER_WITH_FANS_DESCRIPTION()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.ENERGY_MODE_HIGH_POWER_WITHOUT_FANS_DESCRIPTION()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.BATTERY_ON_BATTERY_POWER_SOURCE_DESCRIPTION()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.BATTERY_ON_AC_POWER_SOURCE_DESCRIPTION()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.BATTERY_STATUS_CHARGED_DESCRIPTION()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.BATTERY_STATUS_CHARGING_DESCRIPTION()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.BATTERY_STATUS_NOT_CHARGING_DESCRIPTION()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.CONTROLLER_SETTINGS_BUTTON_LABEL()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.CONTROLLER_CONNECT_CONTROLLER_SUBTITLE_MACOS()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.GAME_MODE_PAUSED_LABEL()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t sub_24F6996A4()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F24C510 = result;
  *algn_27F24C518 = v4;
  return result;
}

uint64_t sub_24F699840(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_24F69989C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EFD8 = result;
  unk_27F39EFE0 = v4;
  return result;
}

uint64_t sub_24F699A08()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EFE8 = result;
  unk_27F39EFF0 = v4;
  return result;
}

uint64_t sub_24F699B6C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EFF8 = result;
  unk_27F39F000 = v4;
  return result;
}

uint64_t sub_24F699CD8(uint64_t a1)
{
  v1 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_24F92B088();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B068();
  MEMORY[0x28223BE20](v3 - 8);
  sub_24F92B058();
  sub_24F92B048();
  sub_24F92B028();
  sub_24F92B048();
  sub_24F92B078();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v4 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B158();
}

uint64_t sub_24F699EAC(uint64_t a1)
{
  v1 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_24F92B088();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B068();
  MEMORY[0x28223BE20](v3 - 8);
  sub_24F92B058();
  sub_24F92B048();
  sub_24F92B028();
  sub_24F92B048();
  sub_24F92B078();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v4 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B158();
}

uint64_t sub_24F69A080(uint64_t a1)
{
  v1 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_24F92B088();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B068();
  MEMORY[0x28223BE20](v3 - 8);
  sub_24F92B058();
  sub_24F92B048();
  sub_24F92B028();
  sub_24F92B048();
  sub_24F92B078();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v4 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B158();
}

uint64_t sub_24F69A254(uint64_t a1)
{
  v1 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_24F92B088();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B068();
  MEMORY[0x28223BE20](v3 - 8);
  sub_24F92B058();
  sub_24F92B048();
  sub_24F92B028();
  sub_24F92B048();
  sub_24F92B078();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v4 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B158();
}

uint64_t sub_24F69A428(uint64_t a1)
{
  v1 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_24F92B088();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B068();
  MEMORY[0x28223BE20](v3 - 8);
  sub_24F92B058();
  sub_24F92B048();
  sub_24F92B028();
  sub_24F92B048();
  sub_24F92B078();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v4 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B158();
}

uint64_t sub_24F69A5FC(uint64_t a1)
{
  v1 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_24F92B088();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B068();
  MEMORY[0x28223BE20](v3 - 8);
  sub_24F92B058();
  sub_24F92B048();
  sub_24F92B028();
  sub_24F92B048();
  sub_24F92B078();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v4 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B158();
}

uint64_t sub_24F69A7D0(uint64_t a1)
{
  v1 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_24F92B088();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B068();
  MEMORY[0x28223BE20](v3 - 8);
  sub_24F92B058();
  sub_24F92B048();
  sub_24F92B028();
  sub_24F92B048();
  sub_24F92B078();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v4 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B158();
}

uint64_t sub_24F69A9A4(uint64_t a1)
{
  v1 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_24F92B088();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B068();
  MEMORY[0x28223BE20](v3 - 8);
  sub_24F92B058();
  sub_24F92B048();
  sub_24F92B028();
  sub_24F92B048();
  sub_24F92B078();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v4 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B158();
}

uint64_t _s12GameStoreKit0abC16LocalizedStringsO48GAME_CONTROLLER_HOME_BUTTON_RESERVED_DESCRIPTION7appName06buttonM0S2S_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_24F92B088();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F92B068();
  MEMORY[0x28223BE20](v6 - 8);
  sub_24F92B058();
  sub_24F92B048();
  sub_24F92B038();
  sub_24F92B048();
  sub_24F92B038();
  sub_24F92B048();
  sub_24F92B078();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v7 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t sub_24F69ADAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B088();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_24F92B068();
  MEMORY[0x28223BE20](v4 - 8);
  sub_24F92B058();
  sub_24F92B048();
  sub_24F92B038();
  sub_24F92B048();
  sub_24F92B078();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v5 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t sub_24F69AF8C(uint64_t a1)
{
  v1 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_24F92B088();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B068();
  MEMORY[0x28223BE20](v3 - 8);
  sub_24F92B058();
  sub_24F92B048();
  sub_24F92B028();
  sub_24F92B048();
  sub_24F92B078();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v4 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B158();
}

uint64_t sub_24F69B160(uint64_t a1)
{
  v1 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_24F92B088();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B068();
  MEMORY[0x28223BE20](v3 - 8);
  sub_24F92B058();
  sub_24F92B048();
  sub_24F92B028();
  sub_24F92B048();
  sub_24F92B078();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v4 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t sub_24F69B344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_24F92B088();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F92B068();
  MEMORY[0x28223BE20](v6 - 8);
  sub_24F92B058();
  sub_24F92B048();
  sub_24F92B038();
  sub_24F92B048();
  sub_24F92B038();
  sub_24F92B048();
  sub_24F92B078();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v7 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t sub_24F69B564(uint64_t a1)
{
  v1 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_24F92B088();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B068();
  MEMORY[0x28223BE20](v3 - 8);
  sub_24F92B058();
  sub_24F92B048();
  sub_24F92B028();
  sub_24F92B048();
  sub_24F92B078();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v4 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B158();
}

uint64_t sub_24F69B738(uint64_t a1)
{
  v1 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_24F92B088();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B068();
  MEMORY[0x28223BE20](v3 - 8);
  sub_24F92B058();
  sub_24F92B048();
  sub_24F92B028();
  sub_24F92B048();
  sub_24F92B078();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v4 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B158();
}

uint64_t _s12GameStoreKit0abC16LocalizedStringsO12CALL_WAITING21localizedProviderNameS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B088();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_24F92B068();
  MEMORY[0x28223BE20](v4 - 8);
  sub_24F92B058();
  sub_24F92B048();
  sub_24F92B038();
  sub_24F92B048();
  sub_24F92B078();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v5 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t ChallengeDetail.State.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = 0x657669746361;
  if (*v2)
  {
    v5 = 0x6574656C706D6F63;
  }

  v6 = 0xE600000000000000;
  if (*v2)
  {
    v6 = 0xE900000000000064;
  }

  v10 = v5;
  v11 = v6;
  v7 = sub_24F92CF68();
  v8 = [objc_opt_self() valueWithObject:v7 inContext:{a1, v10, v11}];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  result = sub_24E7594F8(&qword_27F214930, &qword_27F214928, &unk_24F93DFD0);
  a2[4] = result;
  *a2 = v8;
  return result;
}

uint64_t ChallengeDetail.State.rawValue.getter()
{
  if (*v0)
  {
    return 0x6574656C706D6F63;
  }

  else
  {
    return 0x657669746361;
  }
}

GameStoreKit::ChallengeDetail::State_optional __swiftcall ChallengeDetail.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

  *v2 = v5;
  return result;
}

uint64_t sub_24F69BCB4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574656C706D6F63;
  }

  else
  {
    v3 = 0x657669746361;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x6574656C706D6F63;
  }

  else
  {
    v5 = 0x657669746361;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
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
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F69BD5C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F69BDE0(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F69BE50()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F69BED0@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

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

void sub_24F69BF30(uint64_t *a1@<X8>)
{
  v2 = 0x657669746361;
  if (*v1)
  {
    v2 = 0x6574656C706D6F63;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24F69C020@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = 0x657669746361;
  if (*v2)
  {
    v5 = 0x6574656C706D6F63;
  }

  v6 = 0xE600000000000000;
  if (*v2)
  {
    v6 = 0xE900000000000064;
  }

  v10 = v5;
  v11 = v6;
  v7 = sub_24F92CF68();
  v8 = [objc_opt_self() valueWithObject:v7 inContext:{a1, v10, v11}];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  result = sub_24E7594F8(&qword_27F214930, &qword_27F214928, &unk_24F93DFD0);
  a2[4] = result;
  *a2 = v8;
  return result;
}

unint64_t ChallengeDetail.Participant.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24F69E2F0(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F69E338(v1, boxed_opaque_existential_1, type metadata accessor for Player);
  strcpy((inited + 88), "formattedScore");
  *(inited + 103) = -18;
  v5 = type metadata accessor for ChallengeDetail.Participant(0);
  v6 = (v1 + v5[5]);
  v7 = *v6;
  v8 = v6[1];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  v9 = sub_24E7594F8(&qword_27F212F10, &unk_27F23B740, &qword_24F93EC10);
  *(inited + 104) = v7;
  *(inited + 112) = v8;
  *(inited + 136) = v9;
  *(inited + 144) = 0x65726F6373;
  *(inited + 152) = 0xE500000000000000;
  v10 = v1 + v5[6];
  v11 = *v10;
  v12 = *(v10 + 8);
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E320, &qword_24F95BE70);
  v13 = sub_24E7594F8(&qword_27F21E328, &qword_27F21E320, &qword_24F95BE70);
  *(inited + 160) = v11;
  *(inited + 168) = v12;
  *(inited + 192) = v13;
  strcpy((inited + 200), "attemptCount");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  v14 = *(v2 + v5[7]);
  *(inited + 240) = MEMORY[0x277D83B88];
  v15 = sub_24E65901C();
  *(inited + 216) = v14;
  *(inited + 248) = v15;
  *(inited + 256) = 1802396018;
  *(inited + 264) = 0xE400000000000000;
  v16 = v2 + v5[8];
  v17 = *v16;
  v18 = *(v16 + 8);
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390, &qword_24F93FC50);
  *(inited + 304) = sub_24E658F98();
  *(inited + 272) = v17;
  *(inited + 280) = v18;

  v19 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_24F69C4C0()
{
  v1 = *v0;
  v2 = 0x726579616C70;
  v3 = 0x65726F6373;
  v4 = 0x4374706D65747461;
  if (v1 != 3)
  {
    v4 = 1802396018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657474616D726F66;
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

uint64_t sub_24F69C560@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F69F410(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F69C588(uint64_t a1)
{
  v2 = sub_24F69E29C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F69C5C4(uint64_t a1)
{
  v2 = sub_24F69E29C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengeDetail.Participant.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C520, &qword_24FA19FC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F69E29C();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Player(0);
  sub_24F69E2F0(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for ChallengeDetail.Participant(0);
    v8[14] = 1;
    sub_24F92CCA8();
    v8[13] = 2;
    sub_24F92CCC8();
    v8[12] = 3;
    sub_24F92CD38();
    v8[11] = 4;
    sub_24F92CCE8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ChallengeDetail.Participant.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C530, &qword_24FA19FC8);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for ChallengeDetail.Participant(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24F69E29C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v14 = v29;
  v15 = v12;
  v36 = 0;
  sub_24F69E2F0(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v16 = v30;
  sub_24F92CC68();
  sub_24E6B2600(v6, v15, type metadata accessor for Player);
  v35 = 1;
  v17 = sub_24F92CBC8();
  v18 = (v15 + v10[5]);
  *v18 = v17;
  v18[1] = v19;
  v34 = 2;
  v20 = sub_24F92CBE8();
  v21 = v15 + v10[6];
  *v21 = v20;
  *(v21 + 8) = v22 & 1;
  v33 = 3;
  *(v15 + v10[7]) = sub_24F92CC58();
  v32 = 4;
  v23 = sub_24F92CC08();
  v25 = v24;
  (*(v14 + 8))(v9, v16);
  v26 = v15 + v10[8];
  *v26 = v23;
  *(v26 + 8) = v25 & 1;
  sub_24F69E338(v15, v28, type metadata accessor for ChallengeDetail.Participant);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_24F69E3A0(v15, type metadata accessor for ChallengeDetail.Participant);
}

double ChallengeDetail.participants.getter()
{
  type metadata accessor for ChallengeDetail(0);

  return result;
}

unint64_t ChallengeDetail.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F974E30;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v5;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 1701667175;
  *(inited + 96) = 0xE400000000000000;
  v6 = type metadata accessor for ChallengeDetail(0);
  v7 = v6[5];
  *(inited + 128) = type metadata accessor for Game(0);
  *(inited + 136) = sub_24F69E2F0(&qword_27F217960, type metadata accessor for Game, &protocol conformance descriptor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F69E338(&v1[v7], boxed_opaque_existential_1, type metadata accessor for Game);
  *(inited + 144) = 0x6F6272656461656CLL;
  *(inited + 152) = 0xEB00000000647261;
  v9 = v6[6];
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890, &qword_24F939670);
  *(inited + 192) = sub_24F69E420();
  v10 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24E60169C(&v1[v9], v10, &qword_27F212890, &qword_24F939670);
  *(inited + 200) = 0x6974696E69666564;
  *(inited + 208) = 0xEA00000000006E6FLL;
  v11 = v6[7];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  *(inited + 248) = sub_24E759444();
  v12 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E60169C(&v1[v11], v12, &qword_27F212A08, &qword_24F9397D0);
  strcpy((inited + 256), "attemptLimit");
  *(inited + 269) = 0;
  *(inited + 270) = -5120;
  v13 = &v1[v6[8]];
  v14 = *v13;
  LOBYTE(v7) = v13[8];
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390, &qword_24F93FC50);
  v15 = sub_24E658F98();
  *(inited + 272) = v14;
  *(inited + 280) = v7;
  *(inited + 304) = v15;
  strcpy((inited + 312), "endTimestamp");
  *(inited + 325) = 0;
  *(inited + 326) = -5120;
  v16 = v6[9];
  v17 = sub_24F91F648();
  v18 = MEMORY[0x277D21908];
  *(inited + 352) = v17;
  *(inited + 360) = v18;
  v19 = __swift_allocate_boxed_opaque_existential_1((inited + 328));
  v20 = *(*(v17 - 8) + 16);
  v20(v19, &v1[v16], v17);
  *(inited + 368) = 0xD000000000000015;
  *(inited + 376) = 0x800000024FA46840;
  v21 = v6[10];
  *(inited + 408) = v17;
  *(inited + 416) = v18;
  v22 = __swift_allocate_boxed_opaque_existential_1((inited + 384));
  v20(v22, &v1[v21], v17);
  *(inited + 424) = 0xD000000000000011;
  *(inited + 432) = 0x800000024FA7BC30;
  v23 = *&v1[v6[11]];
  v24 = MEMORY[0x277D225A0];
  *(inited + 464) = MEMORY[0x277D839F8];
  *(inited + 472) = v24;
  *(inited + 440) = v23;
  *(inited + 480) = 0x6574617473;
  *(inited + 488) = 0xE500000000000000;
  LOBYTE(v16) = v1[v6[12]];
  *(inited + 520) = &type metadata for ChallengeDetail.State;
  *(inited + 528) = sub_24F69E4D4();
  *(inited + 496) = v16;
  *(inited + 536) = 0x726F7461657263;
  *(inited + 544) = 0xE700000000000000;
  v25 = v6[13];
  *(inited + 576) = type metadata accessor for Player(0);
  *(inited + 584) = sub_24F69E2F0(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v26 = __swift_allocate_boxed_opaque_existential_1((inited + 552));
  sub_24F69E338(&v1[v25], v26, type metadata accessor for Player);
  *(inited + 592) = 0x72657469766E69;
  *(inited + 600) = 0xE700000000000000;
  v27 = v6[14];
  *(inited + 632) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  *(inited + 640) = sub_24E7EDBB4();
  v28 = __swift_allocate_boxed_opaque_existential_1((inited + 608));
  sub_24E60169C(&v1[v27], v28, &unk_27F23E1F0, &unk_24F9549C0);
  strcpy((inited + 648), "participants");
  *(inited + 661) = 0;
  *(inited + 662) = -5120;
  v29 = *&v1[v6[15]];
  *(inited + 688) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B90, &unk_24FA0D950);
  *(inited + 696) = sub_24F69E528();
  *(inited + 664) = v29;
  strcpy((inited + 704), "invitedPlayers");
  *(inited + 719) = -18;
  v30 = *&v1[v6[16]];
  *(inited + 744) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
  *(inited + 752) = sub_24E7B65FC();
  *(inited + 720) = v30;

  v31 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v31;
  return result;
}

unint64_t sub_24F69D2C0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667175;
      break;
    case 2:
      result = 0x6F6272656461656CLL;
      break;
    case 3:
      result = 0x6974696E69666564;
      break;
    case 4:
      result = 0x4C74706D65747461;
      break;
    case 5:
      result = 0x73656D6954646E65;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x6574617473;
      break;
    case 9:
      result = 0x726F7461657263;
      break;
    case 10:
      result = 0x72657469766E69;
      break;
    case 11:
      result = 0x7069636974726170;
      break;
    case 12:
      result = 0x5064657469766E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24F69D47C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F69F5C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F69D4A4(uint64_t a1)
{
  v2 = sub_24F69E5DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F69D4E0(uint64_t a1)
{
  v2 = sub_24F69E5DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengeDetail.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = v48 - v4;
  v53 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v53);
  v52 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  MEMORY[0x28223BE20](v6);
  v54 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v11 - 8);
  v58 = v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890, &qword_24F939670);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v48 - v14;
  v16 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v16);
  v18 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C548, &qword_24FA19FD0);
  v59 = *(v19 - 8);
  v60 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = v48 - v20;
  v22 = type metadata accessor for ChallengeDetail(0);
  MEMORY[0x28223BE20](v22);
  v24 = (v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_24F69E5DC();
  v61 = v21;
  v26 = v62;
  sub_24F92D108();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v27 = v18;
  v28 = v58;
  v62 = v22;
  v49 = v24;
  LOBYTE(v64) = 0;
  v29 = sub_24F92CC28();
  v30 = v49;
  *v49 = v29;
  v30[1] = v31;
  LOBYTE(v64) = 1;
  sub_24F69E2F0(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
  sub_24F92CC68();
  v32 = v30;
  v33 = v62;
  sub_24E6B2600(v27, v32 + v62[5], type metadata accessor for Game);
  type metadata accessor for Leaderboard(0);
  LOBYTE(v64) = 2;
  sub_24F69E2F0(&qword_27F21B488, type metadata accessor for Leaderboard, &protocol conformance descriptor for Leaderboard);
  v48[1] = 0;
  sub_24F92CC18();
  v34 = v57;
  sub_24E6009C8(v15, v49 + v33[6], &qword_27F212890, &qword_24F939670);
  type metadata accessor for ChallengeDefinitionDetail(0);
  LOBYTE(v64) = 3;
  sub_24F69E2F0(&qword_27F21B790, type metadata accessor for ChallengeDefinitionDetail, &protocol conformance descriptor for ChallengeDefinitionDetail);
  sub_24F92CC18();
  sub_24E6009C8(v28, v49 + v33[7], &qword_27F212A08, &qword_24F9397D0);
  LOBYTE(v64) = 4;
  v35 = sub_24F92CC08();
  v36 = v49 + v33[8];
  *v36 = v35;
  v36[8] = v37 & 1;
  LOBYTE(v64) = 5;
  sub_24F69E2F0(&qword_27F21B778, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v38 = v55;
  v39 = v56;
  sub_24F92CC68();
  v40 = v38;
  v41 = *(v34 + 32);
  v41(v49 + v33[9], v40, v39);
  LOBYTE(v64) = 6;
  v42 = v54;
  sub_24F92CC68();
  v41(v49 + v33[10], v42, v39);
  LOBYTE(v64) = 7;
  sub_24F92CC48();
  v43 = v62;
  *(v49 + v62[11]) = v44;
  v65 = 8;
  sub_24F69E630();
  sub_24F92CC68();
  *(v49 + v43[12]) = v64;
  LOBYTE(v64) = 9;
  sub_24F69E2F0(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CC68();
  LODWORD(v58) = 1;
  sub_24E6B2600(v52, v49 + v62[13], type metadata accessor for Player);
  LOBYTE(v64) = 10;
  sub_24F92CC18();
  sub_24E6009C8(v51, v49 + v62[14], &unk_27F23E1F0, &unk_24F9549C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B90, &unk_24FA0D950);
  v65 = 11;
  sub_24F69E684();
  sub_24F92CC68();
  *(v49 + v62[15]) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
  v65 = 12;
  sub_24E706BF4();
  sub_24F92CC68();
  (*(v59 + 8))(v61, v60);
  v46 = v49;
  v45 = v50;
  *(v49 + v62[16]) = v64;
  sub_24F69E338(v46, v45, type metadata accessor for ChallengeDetail);
  __swift_destroy_boxed_opaque_existential_1(v63);
  return sub_24F69E3A0(v46, type metadata accessor for ChallengeDetail);
}