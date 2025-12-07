uint64_t sub_22816D630(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22816D650(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void *sub_22816D69C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22816D798@<X0>(uint64_t *a1@<X8>)
{
  result = sub_228392000();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_22816D7CC(void *a1, uint64_t *a2)
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

uint64_t sub_22816D850(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22816D870(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_22816D898()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816D8D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816D90C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816D944()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22816D994@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_22816DB78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27D828998;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22816DBD8()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22816DC30()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22816DC70()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22816DCC0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816DD08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816DD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22816DE0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22816DEC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816DF0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816DF44()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22816DF84()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22816DFC4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816DFFC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22816E014()
{

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_22816E074()
{

  MEMORY[0x22AAB7C80](v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22816E0BC()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816E0F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816E140()
{
  sub_22819CC64(0, &qword_27D823FE8, sub_22819CDF8, MEMORY[0x277CBCEC0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  sub_22819CC64(0, &qword_27D823FE0, sub_22819CDF8, MEMORY[0x277D85788]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 80);
  v11 = (v5 + v6 + v10) & ~v10;
  v12 = *(v9 + 64);
  v13 = v4 | v10;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v2);
  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v12, v13 | 7);
}

uint64_t sub_22816E2F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  __swift_destroy_boxed_opaque_existential_0((v0 + 80));

  __swift_destroy_boxed_opaque_existential_0((v0 + 144));

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_22816E370()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816E3A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816E40C()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22816E46C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell_item;
  swift_beginAccess();
  return sub_2281A42AC(v3 + v4, a2, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_22816E4E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816E528()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816E564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_22838F440();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22816E68C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_22838F440();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22816E7B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816E7F0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22816E834()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816E86C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816E8A4(uint64_t a1, uint64_t a2)
{
  sub_2281BBFFC();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22816E910(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  sub_2281BBFFC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22816E994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F440();
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

    return (v10 + 1);
  }
}

uint64_t sub_22816EA54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F440();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22816EB18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_22816EB78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22838F4A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22816EC24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_22838F4A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22816ECC8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816ED10()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816ED48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_viewModelFactor;
  swift_beginAccess();
  return sub_2281C2920(v3 + v4, a2);
}

uint64_t sub_22816EDA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_ingredients;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22816EE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2281C50C8(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_22838F4A0();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

void sub_22816EF48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2281C50C8(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_22838F4A0();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    v12(v13, a2, a2, v11);
  }
}

uint64_t sub_22816F088@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_visualizationConfig;
  swift_beginAccess();
  return sub_2281C608C(v3 + v4, a2, &qword_27D8246E0, type metadata accessor for DrugInteractionVisualizationConfig);
}

uint64_t sub_22816F104()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816F13C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816F174()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22816F1B4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22816F1F4()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816F234()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_22816F2A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27D824AA0;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_22816F338()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816F370()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816F3A8()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816F3EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell_item;
  swift_beginAccess();
  return sub_2281E3284(v3 + v4, a2, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_22816F478()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22816F4B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816F4F8()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22816F550()
{
  v1 = *(*v0 + 64);

  return v1;
}

uint64_t sub_22816F584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_22838F440();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22816F6AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_22838F440();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22816F7D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_severityLevel;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22816F840@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_2281ED014();
}

__n128 sub_22816F8B4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_22816F8C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816F8F8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816F940@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell_item;
  swift_beginAccess();
  return sub_22817A890(v3 + v4, a2, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_22816F9D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_22816FA38(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22838F4A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22816FAE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_22838F4A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22816FB88()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816FBC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationCategoryTipCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_22816FC20(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for TipImage(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22816FCCC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TipImage(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22816FD70()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22816FDB8()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816FDFC@<X0>(uint64_t *a1@<X8>)
{
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  result = sub_228390F30();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22816FE58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_22816FEB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_22816FF18()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816FF50()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22816FFA8()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816FFE0()
{
  v1 = (type metadata accessor for MedicationsRecordDoseItem(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[10];
  v6 = sub_22838F440();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  if (*(v0 + v3 + v1[12]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_228170120(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22838F440();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2281701CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22838F440();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_228170270()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281702A8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2281702E0()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228170318()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228170350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22817040C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2281704C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_item;
  swift_beginAccess();
  return sub_22821B644(v3 + v4, a2, sub_228181D50);
}

uint64_t sub_228170538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for TileItem.Background(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_228170660(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for TileItem.Background(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_228170788()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281707C0()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281707F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_228170858()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228170890()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2281708C8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228170908()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228170940@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_228170990@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_2281709F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_228170A50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_stackedMemojiConfig;
  swift_beginAccess();
  return sub_228227E84(v3 + v4, a2, &qword_27D823888, sub_228227EF0);
}

uint64_t sub_228170ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t sub_228170B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_228170BC8()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_228170C10()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228170C48()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228170C80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228170CC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DurationDatePickerItem(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = v3[1];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;

  return sub_228176FA8(v4, v5);
}

uint64_t sub_228170D30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_228170D90(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_22838F4A0();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_2283913A0();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  sub_22822D8B4(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[16];

  return v16(v17, a2, v15);
}

uint64_t sub_228170F2C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_22838F4A0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2283913A0();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  sub_22822D8B4(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[16];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_2281710C8()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228171100()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228171144()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228171184()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281711BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281711F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22817123C()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228171274@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_2281712D4()
{
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;

  (*(v3 + 8))(v0 + v5, AssociatedTypeWitness);
  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_22817147C()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281714B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI24InteractionNoneFoundCell_item;
  swift_beginAccess();
  return sub_22817A890(v3 + v4, a2, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_228171530()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_22817156C()
{
  v1 = [v0 inputAccessoryView];

  return v1;
}

void sub_2281715A4(void *a1)
{
  [v1 setInputAccessoryView_];
}

uint64_t sub_2281715EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228171624()
{
  v1 = sub_22838F440();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2281716E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228171730()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228171768@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_2281717C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_22838F440();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_228244E94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_228171950(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_22838F4A0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_22838F440();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_228244E94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (*(*(v16 - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
        return;
      }

      v10 = v16;
      v14 = *(v16 - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_228171AD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_228171B34()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228171B6C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228171BA4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228171BE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228171C20()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228171C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_22825006C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_228171D40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_22825006C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_228171E00(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_22825006C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_228171ECC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_22825006C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_228171F8C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_228171FD4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22817200C()
{
  v1 = sub_22838F440();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  sub_228250B20(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  if (!(*(v2 + 48))(v0 + v8, 1, v1))
  {
    v10(v0 + v8, v1);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_2281721A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2281721E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_22838F440();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2281722D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22838F4A0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_22838F440();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2281723D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228172408()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228172440()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228172480@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_2281724E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27D826060);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_22817253C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228172574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_228172630(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2281726E8()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228172720@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_228172780()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2281727C0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_228172808()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228172840()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228172878()
{
  v1 = type metadata accessor for Dosage(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  if (*(v0 + 16))
  {
  }

  v4 = (v2 + 32) & ~v2;
  v5 = sub_22838F4A0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v1 + 20);
  v7 = sub_22838F440();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_2281729A0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2281729E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228172A18()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228172A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_228172B10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_228172BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicationSearchItem.Source(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_228172C88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicationSearchItem.Source(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_228172D44()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228172D84()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228172DBC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27D826508);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_228172E18()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228172E50()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228172E8C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228172ED8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_228172F28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_228172F88()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228172FC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_228391C00();
  *a1 = result;
  return result;
}

uint64_t sub_228173044()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22817307C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2281730BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_22817310C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_22817316C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281731A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2281731E0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22817324C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228173284()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2281732C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2281732FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228173334()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228173378()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2281733C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27D826C08);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_22817341C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228173458()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281734B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2281734EC()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  __swift_destroy_boxed_opaque_existential_0((v0 + 160));

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

uint64_t sub_22817357C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2281735CC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  __swift_destroy_boxed_opaque_existential_0((v0 + 80));

  __swift_destroy_boxed_opaque_existential_0((v0 + 144));

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_22817368C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_228391130();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_228173738(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_228391130();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2281737DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228173814()
{
  v1 = sub_22838F760();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2281738E4()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22817392C()
{
  v1 = (type metadata accessor for WeekdaysAndDosages(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_228391130();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_228173A30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228173A68()
{
  v1 = type metadata accessor for Dosage(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  if (*(v0 + 16))
  {
  }

  v4 = (v2 + 32) & ~v2;
  v5 = sub_22838F4A0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v1 + 20);
  v7 = sub_22838F440();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_228173B90()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228173BD0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_228173C1C@<X0>(void *a1@<X8>)
{
  v2 = sub_2282ADBC4();
  *a1 = v2;

  return v2;
}

__n128 sub_228173C90(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_228173C9C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_2282ADBF8();
  a1[1] = v2;
  a1[2] = v3;

  return swift_unknownObjectRetain();
}

uint64_t sub_228173CDC(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = swift_unknownObjectRetain();
  return sub_2282AC4B4(v3, v1, v2);
}

uint64_t sub_228173D2C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228173D64()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228173DA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FrequencyIntervalPickerItem(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = v3[1];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;

  return sub_228176FA8(v4, v5);
}

uint64_t sub_228173E00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_228173E60(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22838F4A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_228173F0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22838F4A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_228173FB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228173FF4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22817402C()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22817407C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2281740BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_228392E80();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2281740E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
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

    return (v10 + 1);
  }
}

uint64_t sub_2281741A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_228174264()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22817429C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
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

    return (v10 + 1);
  }
}

uint64_t sub_22817435C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_228174418()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228174454()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22817449C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_2281744FC()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228174534()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22817456C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2283913A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_228174618(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2283913A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2281746BC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22838F6C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_228174768(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22838F6C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_228174814()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22817484C()
{

  sub_2282E32E8(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_228174890()
{
  sub_2282E32E8(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2281748EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228174938(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_2282EA894(0, &qword_27D827550, MEMORY[0x277D11630], MEMORY[0x277D83D88]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_228174A18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2282EA894(0, &qword_27D827550, MEMORY[0x277D11630], MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_228174AEC()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228174B24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_item;
  swift_beginAccess();
  return sub_2282F2B40(v3 + v4, a2, sub_228181D50);
}

uint64_t sub_228174B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_228174C58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_228174D14()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228174D4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228174D88()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228174DD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27D8276F0);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_228174E30()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228174E68()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_228174EA0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228174EE8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228174F30()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228174F68()
{
  v1 = sub_22838F4A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_228175050()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228175090()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281750E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_item;
  swift_beginAccess();
  return sub_2283039E4(v3 + v4, a2, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_228175188()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2281751D0()
{
  sub_228309468();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_228175258()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228175290()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2281752D0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228175318()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228175360()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2281753B4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228175408@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DosageItem(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = v3[1];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;

  return sub_228176FA8(v4, v5);
}

uint64_t sub_228175478@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_2281754D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  return sub_228317208(v3 + v4, a2, sub_228181D50);
}

id sub_228175548@<X0>(uint64_t *a1@<X8>)
{
  result = sub_228312440();
  *a1 = result;
  return result;
}

void sub_228175574(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField);
  *(*a2 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField) = *a1;
  v3 = v2;
}

uint64_t sub_2281755C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22838F4A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_228175670(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22838F4A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_228175714()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22817574C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228175784()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2281757BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22817580C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22817584C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228175884()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2281758D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228175914()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228175964()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2281759B4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2281759FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228175A44()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228175A7C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228175AB4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_228175B04()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228175B3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228175B7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27D828F30;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_228175BDC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228175C1C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228175C54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228175CA8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228175CE0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228175D18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_228390C00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_228175D44()
{
  v1 = sub_228390C30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_228175E18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_228175E78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27D8280A8;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_228175ED8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228175F10()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228175F50()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228175F88(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_228391130();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_228349F00(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2281760C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_228391130();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_228349F00(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_228176208()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228176240@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_item;
  swift_beginAccess();
  return sub_22817A890(v3 + v4, a2, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_228176310()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228176348()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228176390()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281763C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22817640C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228176444()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22817647C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2281764CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22817650C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F440();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_22838F080();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2281765FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22838F440();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_22838F080();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 32);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2281766F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228176748@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_2281767AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281767E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228176824()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228176860()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228176898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_228176954(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_228176A10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228176A54()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228176A8C()
{
  sub_2281CCAE0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_228176ACC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228176BB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell_item;
  swift_beginAccess();
  return sub_22817A890(v3 + v4, a2, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_228176C30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_228176C90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228176CC8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228176D0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228176D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 52));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_228176E08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_228176EC8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_228176F30()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_228176F64()
{
  v1 = *(*v0 + 24);

  return v1;
}

uint64_t sub_228176FA8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_228176FC0()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell____lazy_storage___titleLabel);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = sub_228177028(ObjectType);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_228177028(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setAdjustsFontForContentSizeCategory_];
  sub_228392000();
  sub_228178518(&qword_27D823328, v2, type metadata accessor for MedicationsDayHistoryHeaderCell, &unk_2283975E0);
  v3 = sub_22838FBB0();
  MEMORY[0x22AAB5C80](v3);

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v4 = sub_228391FC0();

  [v1 setAccessibilityIdentifier_];

  [v1 setNumberOfLines_];
  v5 = [objc_opt_self() labelColor];
  [v1 setTextColor_];

  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v6 = sub_228392AD0();
  [v1 setFont_];

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v7 = sub_228391FC0();

  [v1 setText_];

  return v1;
}

char *sub_228177318(double a1, double a2, double a3, double a4)
{
  v9 = sub_228391590();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell____lazy_storage___titleLabel] = 0;
  v13 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell_item];
  v14 = type metadata accessor for MedicationsDayHistoryHeaderCell();
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v37.receiver = v4;
  v37.super_class = v14;
  v15 = objc_msgSendSuper2(&v37, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = sub_228176FC0();
  LODWORD(v17) = 1132068864;
  [v16 setContentHuggingPriority:0 forAxis:v17];

  sub_22817AEF0(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_228396260;
  v19 = *&v15[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell____lazy_storage___titleLabel];
  *(v18 + 32) = v19;
  v20 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v21 = v19;
  v22 = sub_228392190();

  v23 = [v20 initWithArrangedSubviews_];

  [v23 setAxis_];
  [v23 setAlignment_];
  [v23 setDistribution_];
  [v23 setSpacing_];
  v24 = [v15 contentView];
  [v24 addSubview_];

  sub_228391520();
  sub_2283914D0();
  v26 = v25;
  v28 = v27;
  (*(v10 + 8))(v12, v9);
  v29 = v15;
  v30 = [v29 contentView];
  [v23 hk:v30 alignConstraintsWithView:12.0 insets:{v26, 12.0, v28}];

  v31 = [v29 separatorLayoutGuide];
  v32 = [v31 leadingAnchor];

  v33 = [v29 contentView];
  v34 = [v33 leadingAnchor];

  v35 = [v32 constraintEqualToAnchor_];
  [v35 setActive_];

  return v29;
}

uint64_t sub_228177788()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A7F0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = sub_228391330();
  v13 = type metadata accessor for MedicationsDayHistoryHeaderCell();
  v36.receiver = v1;
  v36.super_class = v13;
  objc_msgSendSuper2(&v36, sel__bridgedUpdateConfigurationUsingState_, v12);

  v14 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell_item;
  swift_beginAccess();
  sub_22817A890(v1 + v14, v34, &qword_280DDCD50, sub_22817A700);
  if (!v35)
  {
    sub_22817A8FC(v34, &qword_280DDCD50, sub_22817A700);
LABEL_6:
    sub_228391150();
    v19 = v1;
    v20 = sub_2283911A0();
    v21 = sub_2283925C0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v2;
      v33 = v23;
      v24 = v23;
      *v22 = 136315138;
      sub_22817A890(v1 + v14, v34, &qword_280DDCD50, sub_22817A700);
      sub_22817A7F0(0, &qword_280DDCD50, sub_22817A700);
      v25 = sub_228392040();
      v27 = sub_2281C96FC(v25, v26, &v33);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_22816B000, v20, v21, "Incorrect view model for MedicationsDayHistoryItem: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x22AAB7B80](v24, -1, -1);
      MEMORY[0x22AAB7B80](v22, -1, -1);

      return (*(v3 + 8))(v5, v32);
    }

    else
    {

      return (*(v3 + 8))(v5, v2);
    }
  }

  sub_22817A700();
  type metadata accessor for MedicationsDayHistoryHeaderItem(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v15 = v33;
  MEMORY[0x22AAB6410]();
  v16 = sub_2283913A0();
  if ((*(*(v16 - 8) + 48))(v11, 1, v16))
  {
    v17 = MEMORY[0x277D74BD0];
    sub_22817A890(v11, v9, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
    MEMORY[0x22AAB6420](v9);

    return sub_22817A8FC(v11, &unk_280DDBCD0, v17);
  }

  else
  {
    v28 = *(v15 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_displayContext);
    v29 = objc_opt_self();
    v30 = &selRef_secondarySystemBackgroundColor;
    if (!v28)
    {
      v30 = &selRef_quaternarySystemFillColor;
    }

    v31 = [v29 *v30];
    sub_228391370();
    MEMORY[0x22AAB6420](v11);
  }
}

id sub_228177CD0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MedicationsDayHistoryHeaderCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_228177D60@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell_item;
  swift_beginAccess();
  return sub_22817A890(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_228177DD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell_item;
  swift_beginAccess();
  sub_22817A680(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t MedicationsDayHistoryHeaderItem.reuseIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_reuseIdentifier);

  return v1;
}

unint64_t sub_228177ED8()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0xD000000000000015;
}

uint64_t MedicationsDayHistoryHeaderItem.__allocating_init(displayContext:)(_BYTE *a1)
{
  v2 = swift_allocObject();
  LOBYTE(a1) = *a1;
  sub_22838F490();
  v3 = (v2 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_reuseIdentifier);
  type metadata accessor for MedicationsDayHistoryHeaderCell();
  sub_228178518(&qword_27D823328, v4, type metadata accessor for MedicationsDayHistoryHeaderCell, &unk_2283975E0);
  *v3 = sub_22838FBB0();
  v3[1] = v5;
  *(v2 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_displayContext) = a1;
  return v2;
}

uint64_t MedicationsDayHistoryHeaderItem.init(displayContext:)(char *a1)
{
  v2 = *a1;
  sub_22838F490();
  v3 = (v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_reuseIdentifier);
  type metadata accessor for MedicationsDayHistoryHeaderCell();
  sub_228178518(&qword_27D823328, v4, type metadata accessor for MedicationsDayHistoryHeaderCell, &unk_2283975E0);
  *v3 = sub_22838FBB0();
  v3[1] = v5;
  *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_displayContext) = v2;
  return v1;
}

uint64_t MedicationsDayHistoryHeaderItem.deinit()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_identifier;
  v2 = sub_22838F4A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t MedicationsDayHistoryHeaderItem.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_identifier;
  v2 = sub_22838F4A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_228178258()
{
  sub_228393520();
  MEMORY[0x22AAB70D0](*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_displayContext));
  return sub_228393570();
}

uint64_t sub_2281782A4()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_displayContext));
  return sub_228393570();
}

uint64_t sub_22817832C(uint64_t a1)
{
  sub_228393520();
  MEMORY[0x22AAB70D0](*(*v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_displayContext));
  return sub_228393570();
}

uint64_t sub_228178378()
{
  v1 = *(*v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_reuseIdentifier);

  return v1;
}

unint64_t sub_2281783E0()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0xD000000000000015;
}

uint64_t sub_228178468(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_228178518(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for MedicationsDayHistoryHeaderItem(uint64_t a1)
{
  result = qword_27D8233B0;
  if (!qword_27D8233B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228178600(uint64_t a1)
{
  result = sub_22838F4A0();
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_228178B60(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x22AAB3320](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_228178BB4(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x22AAB3330](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_228178C3C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x22AAB5FD0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_228178C90(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x22AAB5FE0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t sub_228178DB8(uint64_t a1, id *a2)
{
  result = sub_228391FE0();
  *a2 = 0;
  return result;
}

uint64_t sub_228178E30(uint64_t a1, id *a2)
{
  v3 = sub_228391FF0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_228178EB0@<X0>(uint64_t *a2@<X8>)
{
  sub_228392000();
  v3 = sub_228391FC0();

  *a2 = v3;
  return result;
}

void *sub_228178F1C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_228178F48@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_228178FE4(uint64_t a1)
{
  v2 = sub_228178518(&qword_27D823578, 255, type metadata accessor for HKError, &unk_228396C0C);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_228179054(uint64_t a1)
{
  v2 = sub_228178518(&qword_27D823578, 255, type metadata accessor for HKError, &unk_228396C0C);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2281790C8(uint64_t a1)
{
  v2 = sub_228178518(&unk_27D8235B0, 255, type metadata accessor for HKError, &unk_22839748C);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_228179140(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_228393520();
  a3(v5);
  return sub_228393570();
}

uint64_t sub_228179198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_228393520();
  a4(v6);
  return sub_228393570();
}

uint64_t sub_2281791EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_22817A764(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_22817923C(uint64_t a1)
{
  v2 = sub_228178518(&unk_27D8235B0, 255, type metadata accessor for HKError, &unk_22839748C);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2281792AC(uint64_t a1)
{
  v2 = sub_228178518(&unk_27D8235B0, 255, type metadata accessor for HKError, &unk_22839748C);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_22817931C(void *a1, uint64_t a2)
{
  v4 = sub_228178518(&unk_27D8235B0, 255, type metadata accessor for HKError, &unk_22839748C);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2281793D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_228178518(&unk_27D8235B0, 255, type metadata accessor for HKError, &unk_22839748C);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_228179454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228393520();
  sub_228391F70();
  return sub_228393570();
}

uint64_t sub_2281794B4(uint64_t a1)
{
  sub_228178518(&qword_27D8235E8, 255, type metadata accessor for TextStyle, &unk_228396ECC);
  sub_228178518(&unk_27D8235F0, 255, type metadata accessor for TextStyle, &unk_228396E6C);

  return sub_228393380();
}

double sub_228179578@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_228179584(uint64_t a1)
{
  sub_228178518(&qword_27D8235D0, 255, type metadata accessor for Weight, &unk_228397024);
  sub_228178518(&qword_27D8235D8, 255, type metadata accessor for Weight, &unk_228396FC4);
  sub_22817A79C();
  return sub_228393380();
}

uint64_t sub_228179654(uint64_t a1)
{
  sub_228178518(&qword_27D8236A8, 255, type metadata accessor for UIContentSizeCategory, &unk_228397BD4);
  sub_228178518(&qword_27D8236B0, 255, type metadata accessor for UIContentSizeCategory, &unk_228397B74);

  return sub_228393380();
}

_DWORD *sub_228179718@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_228179728@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_228179734(uint64_t a1)
{
  sub_228178518(&qword_27D8236D8, 255, type metadata accessor for UILayoutPriority, &unk_228397854);
  sub_228178518(&qword_27D8236E0, 255, type metadata accessor for UILayoutPriority, &unk_2283977F4);
  return sub_228393380();
}

uint64_t sub_2281797F8(uint64_t a1)
{
  sub_228178518(&qword_27D8235C0, 255, type metadata accessor for HKOntologyShardIdentifier, &unk_22839716C);
  sub_228178518(&qword_27D8235C8, 255, type metadata accessor for HKOntologyShardIdentifier, &unk_228397114);

  return sub_228393380();
}

uint64_t sub_2281798BC(uint64_t a1)
{
  sub_228178518(&qword_280DDBA40, 255, type metadata accessor for Key, &unk_22839759C);
  sub_228178518(&unk_27D823600, 255, type metadata accessor for Key, &unk_2283969D4);

  return sub_228393380();
}

uint64_t sub_228179A18(uint64_t a1)
{
  sub_228178518(&qword_27D8236C8, 255, type metadata accessor for AttributeName, &unk_228397C64);
  sub_228178518(&qword_27D8236D0, 255, type metadata accessor for AttributeName, &unk_22839794C);

  return sub_228393380();
}

uint64_t sub_228179ADC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_228391FC0();

  *a2 = v3;
  return result;
}

uint64_t sub_228179B24(uint64_t a1)
{
  sub_228178518(&qword_27D8236B8, 255, type metadata accessor for FeatureKey, &unk_228397CA8);
  sub_228178518(&qword_27D8236C0, 255, type metadata accessor for FeatureKey, &unk_228397A60);

  return sub_228393380();
}

uint64_t sub_228179BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_228178518(&unk_27D8235B0, 255, type metadata accessor for HKError, &unk_22839748C);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_228179DF4()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x22AAB7100](*&v1);
}

uint64_t sub_228179E30(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x2821FE3B0](a1, *&v2);
}

uint64_t sub_228179EA8()
{
  v0 = sub_228392000();
  v1 = MEMORY[0x22AAB5CD0](v0);

  return v1;
}

uint64_t sub_228179EE4(uint64_t a1)
{
  sub_228392000();
  sub_2283920B0();
}

uint64_t sub_228179F38(uint64_t a1)
{
  sub_228392000();
  sub_228393520();
  sub_2283920B0();
  v1 = sub_228393570();

  return v1;
}

uint64_t sub_22817A19C(void *a1, uint64_t *a2)
{
  v2 = sub_228392000();
  v4 = v3;
  if (v2 == sub_228392000() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_228393460();
  }

  return v7 & 1;
}

unint64_t sub_22817A548()
{
  result = qword_27D8235A0;
  if (!qword_27D8235A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8235A0);
  }

  return result;
}

uint64_t sub_22817A680(uint64_t a1, uint64_t a2)
{
  sub_22817A7F0(0, &qword_280DDCD50, sub_22817A700);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22817A700()
{
  result = qword_280DDCD60;
  if (!qword_280DDCD60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DDCD60);
  }

  return result;
}

uint64_t sub_22817A764(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_22817A79C()
{
  result = qword_27D8235E0;
  if (!qword_27D8235E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8235E0);
  }

  return result;
}

void sub_22817A7F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_22817A890(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22817A7F0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22817A8FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22817A7F0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22817A958(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_22817AEF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t Presentation.isMedicationsCategory.getter()
{
  v0 = sub_22838FB90();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v1 + 104);
  v4(v3, *MEMORY[0x277D10E68], v0);
  v5 = sub_22838FB80();
  v6 = *(v1 + 8);
  v6(v3, v0);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v4(v3, *MEMORY[0x277D10E50], v0);
    v7 = sub_22838FB80();
    v6(v3, v0);
  }

  return v7 & 1;
}

char *MedicationsInputViewController.__allocating_init(schedulePublisher:medication:resetSchedule:restartingSchedule:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_allocWithZone(v4);
  return MedicationsInputViewController.init(schedulePublisher:medication:resetSchedule:restartingSchedule:)(a1, a2, v6, v5);
}

char *MedicationsInputViewController.init(schedulePublisher:medication:resetSchedule:restartingSchedule:)(uint64_t a1, void *a2, char a3, char a4)
{
  v5 = v4;
  *(v5 + qword_27D8237C0) = 0;
  *(v5 + qword_27D8237C8) = a1;
  *(v5 + qword_27D8237D0) = a2;
  *(v5 + qword_27D8237D8) = a3;
  *(v5 + qword_27D8237E0) = a4;
  type metadata accessor for MedicationScheduleDataSource(0);
  v21 = 0u;
  v22 = 0u;
  swift_allocObject();
  swift_retain_n();
  v8 = a2;
  *(v5 + qword_27D8237E8) = sub_228333ABC(a1, v8, 0, &v21);

  v9 = [v8 localizedOntologyEducationContent];
  if (v9)
  {
    *&v21 = v9;
    v10 = v9;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA70();
    v12 = v11;

    if (v12)
    {
    }
  }

  v13 = [v8 localizedOntologyEducationContent];
  if (v13)
  {
    *&v21 = v13;
    v14 = v13;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA90();
    v16 = v15;

    if (v16)
    {
    }
  }

  sub_228391020();
  swift_allocObject();
  *(v5 + qword_27D8237F0) = sub_228390FF0();

  v17 = sub_228390480();
  v18 = v17;
  if (*(v17 + qword_27D8237D8) == 1)
  {
    *&v21 = 2;
    v19 = v17;

    sub_228391850();
  }

  else
  {
  }

  return v18;
}

void sub_22817B400(uint64_t a1)
{
  *(a1 + qword_27D8237C0) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_22817B468()
{
  v1 = v0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MedicationsInputViewController(0);
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  sub_22817B6AC();
  sub_22817B9A8();
  swift_beginAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22817D780();
  sub_22817E008(&qword_27D8237F8, sub_22817D780, MEMORY[0x277CBCE48]);

  v2 = sub_228391AC0();

  *&v1[qword_27D8237C0] = v2;
}

void sub_22817B5B8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong navigationItem];

    v6 = [v5 rightBarButtonItem];
    [v6 setEnabled_];
  }
}

void sub_22817B664(void *a1)
{
  v1 = a1;
  sub_22817B468();
}

void sub_22817B6AC()
{
  v1 = v0;
  sub_228391870();
  if (v16[0])
  {

    v2 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v0 action:sel_doneTapped_];
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v17 = type metadata accessor for MedicationsInputViewController(0);
    v16[0] = v0;
    v3 = v0;
    v4 = sub_228391FC0();

    v5 = v17;
    if (v17)
    {
      v6 = __swift_project_boxed_opaque_existential_0(v16, v17);
      v7 = *(v5 - 8);
      MEMORY[0x28223BE20](v6);
      v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v9);
      v10 = sub_228393450();
      (*(v7 + 8))(v9, v5);
      __swift_destroy_boxed_opaque_existential_0(v16);
    }

    else
    {
      v10 = 0;
    }

    v11 = objc_allocWithZone(MEMORY[0x277D751E0]);
    v2 = [v11 initWithTitle:v4 style:2 target:v10 action:{sel_saveTapped_, v16[0]}];

    swift_unknownObjectRelease();
  }

  v12 = v2;
  v13 = [v1 navigationItem];
  [v13 setRightBarButtonItem_];

  v14 = [v1 navigationItem];
  v15 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_cancelTapped_];
  [v14 setLeftBarButtonItem_];
}

void sub_22817B9A8()
{
  if (v0[qword_27D8237D8] == 1)
  {
    if (qword_280DDCF18 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  sub_228391870();
  if (v5)
  {

    if (qword_280DDCF18 == -1)
    {
LABEL_6:
      sub_22838F0C0();
      goto LABEL_7;
    }

LABEL_10:
    swift_once();
    goto LABEL_6;
  }

  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  sub_228390F20();
LABEL_7:
  v1 = sub_228391FC0();

  [v0 setTitle_];

  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_22817BBB0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_22817D894();
}

uint64_t sub_22817BC10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v6 = sub_228391DC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_228391DF0();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v13 = sub_228392790();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  aBlock[4] = a3;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = v18;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  sub_228391DE0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22817E008(&qword_280DDCF10, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22817DFB0(0);
  sub_22817E008(&qword_280DDCEF0, sub_22817DFB0, MEMORY[0x277D83970]);
  sub_228393030();
  MEMORY[0x22AAB6340](0, v12, v9, v15);
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v19);
}

void sub_22817BEEC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_22817DBD0();
}

void sub_22817BF4C(void *a1)
{
  v1 = a1;
  sub_228390FE0();
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_22817BFBC()
{
  swift_getObjectType();
  v0 = sub_2283911B0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - v5;
  sub_228391150();
  v7 = sub_2283911A0();
  v8 = sub_2283925A0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v4;
    v28 = v0;
    v11 = v1;
    v12 = v10;
    v29 = v10;
    *v9 = 136315138;
    v13 = sub_228393600();
    v15 = sub_2281C96FC(v13, v14, &v29);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_22816B000, v7, v8, "[%s] Attempting to save new schedule", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v16 = v12;
    v1 = v11;
    v4 = v27;
    v0 = v28;
    MEMORY[0x22AAB7B80](v16, -1, -1);
    MEMORY[0x22AAB7B80](v9, -1, -1);
  }

  v17 = *(v1 + 8);
  v17(v6, v0);

  sub_228391870();

  v18 = v29;
  if (v29)
  {
    sub_22817C520(v29);
  }

  else
  {
    sub_228391150();
    v19 = sub_2283911A0();
    v20 = sub_2283925C0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136315138;
      v23 = sub_228393600();
      v25 = sub_2281C96FC(v23, v24, &v29);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_22816B000, v19, v20, "[%s] Unable to save medication schedule. Schedule is nil.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AAB7B80](v22, -1, -1);
      MEMORY[0x22AAB7B80](v21, -1, -1);
    }

    v17(v4, v0);
  }
}

void sub_22817C2E8()
{
  swift_getObjectType();
  v0 = sub_2283911B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_228391870();

  v4 = v14;
  if (v14)
  {
    sub_22817C520(v14);
  }

  else
  {
    sub_228391870();
    v5 = v14;
    if (v14)
    {
      sub_22817CE20(v14);
    }

    else
    {
      sub_228391150();
      v6 = sub_2283911A0();
      v7 = sub_2283925C0();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v14 = v9;
        *v8 = 136315138;
        v10 = sub_228393600();
        v12 = sub_2281C96FC(v10, v11, &v14);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_22816B000, v6, v7, "[%s] Unable to save medication schedule. Schedule or previous schedule was nil.", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x22AAB7B80](v9, -1, -1);
        MEMORY[0x22AAB7B80](v8, -1, -1);
      }

      (*(v1 + 8))(v3, v0);
    }
  }
}

void sub_22817C520(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_2283911B0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  sub_228391150();
  v11 = sub_2283911A0();
  v12 = sub_2283925A0();
  v13 = os_log_type_enabled(v11, v12);
  v39 = ObjectType;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    v16 = sub_228393600();
    v37 = v2;
    v18 = sub_2281C96FC(v16, v17, aBlock);
    v2 = v37;

    *(v14 + 4) = v18;
    _os_log_impl(&dword_22816B000, v11, v12, "[%s] Attempting to save/update schedule", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AAB7B80](v15, -1, -1);
    MEMORY[0x22AAB7B80](v14, -1, -1);
  }

  v19 = *(v6 + 8);
  v19(v10, v5);
  sub_228391870();
  v20 = aBlock[0];
  if ([a1 isIdenticalToMedicationSchedule_] && *(v2 + qword_27D8237E0) != 1)
  {
    sub_228390FE0();
    v27 = v38;
    sub_228391150();
    v28 = sub_2283911A0();
    v29 = sub_2283925A0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315138;
      v32 = sub_228393600();
      v34 = sub_2281C96FC(v32, v33, aBlock);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_22816B000, v28, v29, "[%s] Schedule not changed", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AAB7B80](v31, -1, -1);
      MEMORY[0x22AAB7B80](v30, -1, -1);

      v35 = v38;
    }

    else
    {

      v35 = v27;
    }

    v19(v35, v5);
  }

  else
  {
    v21 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    v22 = [objc_allocWithZone(MEMORY[0x277D11578]) initWithHealthStore_];

    v23 = swift_allocObject();
    v23[2] = v2;
    v23[3] = a1;
    v23[4] = v39;
    aBlock[4] = sub_22817E148;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2283282E4;
    aBlock[3] = &block_descriptor_40;
    v24 = _Block_copy(aBlock);
    v25 = v2;
    v26 = a1;

    [v22 saveSchedule:v26 completion:v24];
    _Block_release(v24);
  }
}

uint64_t sub_22817C99C(char a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = sub_2283911B0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v46 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  if (a1)
  {
    sub_228391150();
    v18 = sub_2283911A0();
    v19 = sub_2283925A0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v47 = v21;
      *v20 = 136315138;
      v22 = sub_228393600();
      v24 = sub_2281C96FC(v22, v23, &v47);
      v46 = v8;
      v25 = v24;

      *(v20 + 4) = v25;
      _os_log_impl(&dword_22816B000, v18, v19, "[%s] Schedule save/updated", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AAB7B80](v21, -1, -1);
      MEMORY[0x22AAB7B80](v20, -1, -1);

      (*(v9 + 8))(v17, v46);
    }

    else
    {

      (*(v9 + 8))(v17, v8);
    }

    v47 = a4;
    v38 = a4;
    sub_228391850();

    return sub_228390FE0();
  }

  else if (a2)
  {
    sub_228391150();
    v26 = a2;
    v27 = sub_2283911A0();
    v28 = sub_2283925C0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v47 = v30;
      *v29 = 136315394;
      v31 = sub_228393600();
      v33 = sub_2281C96FC(v31, v32, &v47);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      swift_getErrorValue();
      v34 = sub_2283934D0();
      v36 = sub_2281C96FC(v34, v35, &v47);

      *(v29 + 14) = v36;
      _os_log_impl(&dword_22816B000, v27, v28, "[%s] Failed to save/update medication schedule due to %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v30, -1, -1);
      MEMORY[0x22AAB7B80](v29, -1, -1);
    }

    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    sub_228391150();
    v39 = sub_2283911A0();
    v40 = sub_2283925C0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v47 = v42;
      *v41 = 136315138;
      v43 = sub_228393600();
      v45 = sub_2281C96FC(v43, v44, &v47);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_22816B000, v39, v40, "[%s] Failed to save/update medication schedule without an error", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x22AAB7B80](v42, -1, -1);
      MEMORY[0x22AAB7B80](v41, -1, -1);
    }

    return (*(v9 + 8))(v15, v8);
  }
}

void sub_22817CE20(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_2283911B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v9 = sub_2283911A0();
  v10 = sub_2283925A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v25 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v14 = sub_228393600();
    v16 = sub_2281C96FC(v14, v15, aBlock);
    v24 = v5;
    v17 = v16;

    *(v12 + 4) = v17;
    _os_log_impl(&dword_22816B000, v9, v10, "[%s] Attempting to delete previous schedule", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAB7B80](v13, -1, -1);
    v18 = v12;
    a1 = v25;
    MEMORY[0x22AAB7B80](v18, -1, -1);

    (*(v6 + 8))(v8, v24);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v20 = [objc_allocWithZone(MEMORY[0x277D11578]) initWithHealthStore_];

  v21 = swift_allocObject();
  *(v21 + 16) = v2;
  *(v21 + 24) = ObjectType;
  aBlock[4] = sub_22817E140;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2283282E4;
  aBlock[3] = &block_descriptor_34;
  v22 = _Block_copy(aBlock);
  v23 = v2;

  [v20 deleteSchedule:a1 completion:v22];
  _Block_release(v22);
}

uint64_t sub_22817D0F0(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2283911B0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v42 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  if (a1)
  {
    sub_228391150();
    v16 = sub_2283911A0();
    v17 = sub_2283925A0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v43 = v19;
      *v18 = 136315138;
      v20 = sub_228393600();
      v22 = sub_2281C96FC(v20, v21, &v43);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_22816B000, v16, v17, "[%s] Schedule deleted. Now considered As Needed.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AAB7B80](v19, -1, -1);
      MEMORY[0x22AAB7B80](v18, -1, -1);
    }

    (*(v7 + 8))(v15, v6);
    v43 = 0;
    return sub_228391850();
  }

  else if (a2)
  {
    sub_228391150();
    v24 = a2;
    v25 = sub_2283911A0();
    v26 = sub_2283925C0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43 = v28;
      *v27 = 136315394;
      v29 = sub_228393600();
      v31 = sub_2281C96FC(v29, v30, &v43);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      swift_getErrorValue();
      v32 = sub_2283934D0();
      v34 = sub_2281C96FC(v32, v33, &v43);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_22816B000, v25, v26, "[%s] Failed to delete medication schedule due to %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v28, -1, -1);
      MEMORY[0x22AAB7B80](v27, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    sub_228391150();
    v35 = sub_2283911A0();
    v36 = sub_2283925C0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v43 = v38;
      *v37 = 136315138;
      v39 = sub_228393600();
      v41 = sub_2281C96FC(v39, v40, &v43);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_22816B000, v35, v36, "[%s] Failed to delete medication schedule without an error", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AAB7B80](v38, -1, -1);
      MEMORY[0x22AAB7B80](v37, -1, -1);
    }

    return (*(v7 + 8))(v13, v6);
  }
}

id MedicationsInputViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_22817D608()
{
}

id MedicationsInputViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationsInputViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22817D6B0(uint64_t a1)
{
}

uint64_t type metadata accessor for MedicationsInputViewController(uint64_t a1)
{
  result = qword_27D823800;
  if (!qword_27D823800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22817D780()
{
  if (!qword_27D8277C0)
  {
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8277C0);
    }
  }
}

void sub_22817D894()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_2283911B0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_228391870();

  v7 = aBlock[0];
  if (aBlock[0])
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    v9 = objc_allocWithZone(MEMORY[0x277D115A0]);
    v10 = v1;
    v11 = [v9 init];
    v12 = swift_allocObject();
    v12[2] = sub_22817E050;
    v12[3] = v8;
    v12[4] = 0;
    v12[5] = 0;
    v12[6] = v10;
    v12[7] = ObjectType;
    aBlock[4] = sub_22817E1C0;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2281A2F3C;
    aBlock[3] = &block_descriptor_22;
    v13 = _Block_copy(aBlock);
    v14 = v10;

    [v11 checkIncompatibilityForSchedule:v7 completion:v13];
    _Block_release(v13);
  }

  else
  {
    sub_228391150();
    v15 = sub_2283911A0();
    v16 = sub_2283925A0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      v19 = sub_228393600();
      v21 = sub_2281C96FC(v19, v20, aBlock);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_22816B000, v15, v16, "[%s] Skipping check for device incompatibility", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AAB7B80](v18, -1, -1);
      MEMORY[0x22AAB7B80](v17, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    sub_22817BFBC();
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_22817DBD0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_2283911B0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_228391870();

  v7 = aBlock[0];
  if (aBlock[0])
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    v9 = objc_allocWithZone(MEMORY[0x277D115A0]);
    v10 = v1;
    v11 = [v9 init];
    v12 = swift_allocObject();
    v12[2] = sub_22817DF0C;
    v12[3] = v8;
    v12[4] = 0;
    v12[5] = 0;
    v12[6] = v10;
    v12[7] = ObjectType;
    aBlock[4] = sub_22817DF4C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2281A2F3C;
    aBlock[3] = &block_descriptor;
    v13 = _Block_copy(aBlock);
    v14 = v10;

    [v11 checkIncompatibilityForSchedule:v7 completion:v13];
    _Block_release(v13);
  }

  else
  {
    sub_228391150();
    v15 = sub_2283911A0();
    v16 = sub_2283925A0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      v19 = sub_228393600();
      v21 = sub_2281C96FC(v19, v20, aBlock);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_22816B000, v15, v16, "[%s] Skipping check for device incompatibility", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AAB7B80](v18, -1, -1);
      MEMORY[0x22AAB7B80](v17, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    sub_22817C2E8();
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_22817DF68()
{
  v1 = *(v0 + 16);
  sub_22817C2E8();

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_22817DFB0(uint64_t a1)
{
  if (!qword_280DDCF00)
  {
    sub_228391DC0();
    v1 = sub_228392240();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDCF00);
    }
  }
}

uint64_t sub_22817E008(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_5Tm()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

id sub_22817E0F8()
{
  v1 = *(v0 + 16);
  sub_22817BFBC();

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22817E230()
{
  sub_228390200();

  return swift_deallocClassInstance();
}

uint64_t sub_22817E288(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22817E338()
{
  _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_22817E370()
{
  type metadata accessor for MedicationSideEffectsItemCell();
  sub_22817E578(&qword_27D823838, type metadata accessor for MedicationSideEffectsItemCell, &protocol conformance descriptor for MedicationSideEffectsItemCell);
  return sub_2283926B0();
}

uint64_t sub_22817E3E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  v6 = sub_2283900C0();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_22817E578(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22817E5C0(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v7);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_item;
  swift_beginAccess();
  v5 = MEMORY[0x277D10D48];
  sub_228181014(v7, v3 + v4, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
  swift_endAccess();
  sub_22817FF40();
  return sub_228181138(v7, &qword_280DDCD50, &qword_280DDCD60, v5);
}

uint64_t sub_22817E670@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22817E6C8(uint64_t a1, uint64_t a2)
{
  sub_228181084(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22817E744(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_item;
  swift_beginAccess();
  v4 = MEMORY[0x277D10D48];
  sub_228181014(a1, v1 + v3, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
  swift_endAccess();
  sub_22817FF40();
  return sub_228181138(a1, &qword_280DDCD50, &qword_280DDCD60, v4);
}

id *(*sub_22817E7E8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22817E84C;
}

id *sub_22817E84C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_22817FF40();
  }

  return result;
}

id sub_22817E880()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___titleButton;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___titleButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___titleButton);
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v4 = sub_22838F0C0();
    _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v4, v5, 0xD000000000000014, 0x80000002283A7590);
    v7 = v6;

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

char *sub_22817E98C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___stackedMedmojiView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___stackedMedmojiView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___stackedMedmojiView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for InteractionStackedMedmojiView());
    v6 = InteractionStackedMedmojiView.init(width:)(v5, 33.0);
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_22817EA20()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___firstInteractionNameLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___firstInteractionNameLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___firstInteractionNameLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = sub_228392AD0();
    [v5 setFont_];

    v7 = [objc_opt_self() labelColor];
    [v5 setTextColor_];

    v14 = sub_228392000();
    v15 = v8;
    v9 = v5;

    MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283A7500);

    MEMORY[0x22AAB5C80](0xD000000000000013, 0x80000002283A7540);

    v10 = sub_228391FC0();

    [v9 setAccessibilityIdentifier_];

    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    [v9 setNumberOfLines_];
    [v9 setAdjustsFontForContentSizeCategory_];
    v11 = *(v4 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_22817EC44()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___secondInteractionNameLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___secondInteractionNameLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___secondInteractionNameLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = sub_228392AD0();
    [v5 setFont_];

    v7 = [objc_opt_self() labelColor];
    [v5 setTextColor_];

    v14 = sub_228392000();
    v15 = v8;
    v9 = v5;

    MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283A7500);

    MEMORY[0x22AAB5C80](0xD000000000000014, 0x80000002283A7520);

    v10 = sub_228391FC0();

    [v9 setAccessibilityIdentifier_];

    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    [v9 setNumberOfLines_];
    [v9 setAdjustsFontForContentSizeCategory_];
    v11 = *(v4 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_22817EE68(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___titleButton] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHiddenConstraints] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonVisibleConstraints] = 0;
  v4[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHidden] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___stackedMedmojiView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___firstInteractionNameLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___secondInteractionNameLabel] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for InteractionMedicationCell();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_22817F298();
  sub_22817F4B0();

  return v10;
}

id sub_22817EF80(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___titleButton] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHiddenConstraints] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonVisibleConstraints] = 0;
  v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHidden] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___stackedMedmojiView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___firstInteractionNameLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___secondInteractionNameLabel] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for InteractionMedicationCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_22817F074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_228392290();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_228180F24();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_2283931D0();
    MEMORY[0x22AAB5C80](0xD00000000000003FLL, 0x80000002283A75B0);
    v12 = sub_228393600();
    MEMORY[0x22AAB5C80](v12);

    MEMORY[0x22AAB5C80](46, 0xE100000000000000);
    result = sub_228393300();
    __break(1u);
  }

  return result;
}

uint64_t sub_22817F298()
{
  sub_228180ED0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228397F00;
  *(inited + 32) = sub_22817E880();
  *(inited + 40) = sub_22817E98C();
  *(inited + 48) = sub_22817EA20();
  *(inited + 56) = sub_22817EC44();
  v2 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x22AAB6D80](0, inited))
  {
    v4 = i;
    v5 = [v0 contentView];
    [v5 addSubview_];

    if (v2)
    {
      v6 = MEMORY[0x22AAB6D80](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_14;
      }

      v6 = *(inited + 40);
    }

    v7 = v6;
    v8 = [v0 contentView];
    [v8 addSubview_];

    if (v2)
    {
      v9 = MEMORY[0x22AAB6D80](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_14;
      }

      v9 = *(inited + 48);
    }

    v10 = v9;
    v11 = [v0 contentView];
    [v11 addSubview_];

    if (v2)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v12 = *(inited + 56);
      goto LABEL_13;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v12 = MEMORY[0x22AAB6D80](3, inited);
LABEL_13:
  v13 = v12;
  v14 = [v0 contentView];
  [v14 addSubview_];

  swift_setDeallocating();
  return swift_arrayDestroy();
}

id sub_22817F4B0()
{
  v91 = objc_opt_self();
  sub_228180ED0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228397F10;
  v2 = sub_22817E880();
  v3 = [v2 leadingAnchor];

  v4 = [v0 contentView];
  v5 = [v4 layoutMarginsGuide];

  v6 = [v5 &selRef_logTimeChanged_ + 1];
  v7 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v7;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___titleButton;
  v90 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___titleButton;
  v9 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___titleButton] topAnchor];
  v10 = [v0 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:16.0];
  *(v1 + 40) = v12;
  v13 = [*&v0[v8] trailingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 trailingAnchor];

  v16 = [v13 constraintLessThanOrEqualToAnchor:v15 constant:16.0];
  *(v1 + 48) = v16;
  v17 = sub_22817E98C();
  v18 = [v17 &selRef_logTimeChanged_ + 1];

  v19 = [v0 contentView];
  v20 = [v19 layoutMarginsGuide];

  v21 = [v20 &selRef_logTimeChanged_ + 1];
  v22 = [v18 constraintEqualToAnchor_];

  *(v1 + 56) = v22;
  v23 = sub_22817EA20();
  v24 = [v23 &selRef_logTimeChanged_ + 1];

  v92 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___stackedMedmojiView;
  v25 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___stackedMedmojiView] trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:10.0];

  *(v1 + 64) = v26;
  v27 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___firstInteractionNameLabel;
  v28 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___firstInteractionNameLabel] trailingAnchor];
  v29 = [v0 contentView];
  v30 = [v29 layoutMarginsGuide];

  v31 = [v30 trailingAnchor];
  v32 = [v28 constraintEqualToAnchor_];

  *(v1 + 72) = v32;
  v33 = sub_22817EC44();
  v34 = [v33 leadingAnchor];

  v35 = [*&v0[v27] leadingAnchor];
  v36 = [v34 &selRef_freeTextMedicationName + 5];

  *(v1 + 80) = v36;
  v37 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___secondInteractionNameLabel;
  v38 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___secondInteractionNameLabel] trailingAnchor];
  v39 = [v0 contentView];
  v40 = [v39 layoutMarginsGuide];

  v41 = [v40 trailingAnchor];
  v42 = [v38 &selRef_freeTextMedicationName + 5];

  *(v1 + 88) = v42;
  v43 = [*&v0[v37] topAnchor];
  v44 = [*&v0[v27] bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:8.0];

  *(v1 + 96) = v45;
  v46 = [v0 contentView];
  v47 = [v46 bottomAnchor];

  v48 = [*&v0[v37] bottomAnchor];
  v49 = [v47 constraintGreaterThanOrEqualToAnchor:v48 constant:16.0];

  *(v1 + 104) = v49;
  v50 = [v0 contentView];
  v51 = [v50 bottomAnchor];

  v52 = [*&v0[v92] bottomAnchor];
  v53 = [v51 constraintGreaterThanOrEqualToAnchor:v52 constant:11.0];

  *(v1 + 112) = v53;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v54 = sub_228392190();

  [v91 activateConstraints_];

  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_228397F20;
  v56 = [*&v0[v92] topAnchor];
  v57 = [v0 contentView];
  v58 = [v57 topAnchor];

  v59 = [v56 constraintEqualToAnchor:v58 constant:11.0];
  *(v55 + 32) = v59;
  v60 = v27;
  v61 = [*&v0[v27] topAnchor];
  v62 = [v0 contentView];
  v63 = [v62 topAnchor];

  v64 = [v61 constraintEqualToAnchor:v63 constant:16.0];
  *(v55 + 40) = v64;
  v65 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHiddenConstraints;
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHiddenConstraints] = v55;

  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_228397F20;
  v67 = [*&v0[v92] topAnchor];
  v68 = [*&v0[v90] bottomAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:5.0];

  *(v66 + 32) = v69;
  v70 = [*&v0[v60] topAnchor];
  v71 = [*&v0[v90] bottomAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 constant:10.0];

  *(v66 + 40) = v72;
  v73 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonVisibleConstraints;
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonVisibleConstraints] = v66;

  v75 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHidden;
  v76 = v0[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHidden];
  v0[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHidden] = 1;
  if (v76)
  {
    return result;
  }

  result = [*&v0[v90] setHidden_];
  v77 = *&v0[v65];
  v78 = v0;
  if (!v77)
  {
    goto LABEL_15;
  }

  v92 = v73;
  v79 = v77 & 0xFFFFFFFFFFFFFF8;
  if (v77 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2283930D0())
  {

    if (i)
    {
      v81 = 0;
      while (1)
      {
        if ((v77 & 0xC000000000000001) != 0)
        {
          v82 = MEMORY[0x22AAB6D80](v81, v77);
        }

        else
        {
          if (v81 >= *(v79 + 16))
          {
            goto LABEL_32;
          }

          v82 = *(v77 + 8 * v81 + 32);
        }

        v83 = v82;
        v84 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          break;
        }

        [v82 setActive_];

        ++v81;
        if (v84 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_14:

    v0 = v78;
    v73 = v92;
LABEL_15:
    v77 = *&v0[v73];
    if (!v77)
    {
      return result;
    }

    v79 = v77 & 0xFFFFFFFFFFFFFF8;
    v85 = v77 >> 62 ? sub_2283930D0() : *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v85)
    {
      break;
    }

    v86 = 0;
    while (1)
    {
      if ((v77 & 0xC000000000000001) != 0)
      {
        v87 = MEMORY[0x22AAB6D80](v86, v77);
      }

      else
      {
        if (v86 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v87 = *(v77 + 8 * v86 + 32);
      }

      v88 = v87;
      v89 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        break;
      }

      [v87 setActive_];

      ++v86;
      if (v89 == v85)
      {
        goto LABEL_28;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_28:
}

id *sub_22817FF40()
{
  v91 = sub_2283911B0();
  v1 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v3 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2283912A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228180F4C(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v92 = &v75 - v9;
  v87 = sub_2283911F0();
  v86 = *(v87 - 1);
  MEMORY[0x28223BE20](v87);
  v85 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_228391220();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2283912F0();
  v16 = *(v15 - 8);
  v89 = v15;
  v90 = v16;
  MEMORY[0x28223BE20](v15);
  v88 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_item;
  swift_beginAccess();
  v93 = v0;
  sub_22817E6C8(&v0[v18], v95);
  if (v96)
  {
    v84 = v14;
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    type metadata accessor for InteractionMedicationItem();
    if (swift_dynamicCast())
    {
      v82 = v7;
      v91 = v94[0];
      v19 = *(v94[0] + 16);
      swift_beginAccess();
      v20 = *(v19 + 16);
      if (v20 >> 62)
      {
        goto LABEL_49;
      }

      v21 = v93;
      if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

LABEL_5:
      v81 = v4;
      v80 = v5;
      if ((v20 & 0xC000000000000001) == 0)
      {
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v22 = *(v20 + 32);
          goto LABEL_8;
        }

        __break(1u);
        goto LABEL_53;
      }

      while (1)
      {

        v22 = MEMORY[0x22AAB6D80](0, v20);

LABEL_8:
        v23 = [v22 severity];

        v24 = [v23 severityLevel];
        v25 = v24 != 1;
        v5 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHidden;
        v26 = v21[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHidden];
        v21[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHidden] = v25;
        v4 = v11;
        v11 = v92;
        if (v25 == v26)
        {
LABEL_39:
          v48 = sub_22817E98C();
          v49 = v91;
          sub_228180FB0(v91 + 24, v95);
          v50 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_stackedMemojiConfig;
          swift_beginAccess();
          sub_228181014(v95, &v48[v50], &qword_27D823888, &qword_27D826170, &protocol descriptor for InteractionStackedMedmojiDisplayable);
          swift_endAccess();
          sub_228226168();

          sub_228181138(v95, &qword_27D823888, &qword_27D826170, &protocol descriptor for InteractionStackedMedmojiDisplayable);
          v51 = sub_22817EA20();

          v52 = sub_228391FC0();

          [v51 setText_];

          v53 = sub_22817EC44();

          v54 = sub_228391FC0();

          [v53 setText_];

          result = HKIntegerFormatter();
          if (!result)
          {
            __break(1u);
            return result;
          }

          v20 = result;
          v55 = *(v49 + 16);
          swift_beginAccess();
          if (!(*(v55 + 16) >> 62))
          {
LABEL_41:
            v56 = sub_2283924E0();
            v57 = [v20 stringFromNumber_];

            if (v57)
            {
              sub_228392000();

              LODWORD(v79) = *MEMORY[0x277D74A98];
              v78 = *(v12 + 104);
              v58 = v84;
              v78(v84);
              v59 = sub_228391230();
              v60 = *(v59 - 8);
              v61 = v4;
              v76 = *(v60 + 56);
              v77 = v60 + 56;
              v76(v11, 1, 1, v59);
              v62 = v85;
              sub_2283911E0();
              v63 = v88;
              sub_2283912B0();

              (*(v86 + 8))(v62, v87);
              v87 = *(v12 + 8);
              v83 = v12 + 8;
              v64 = v61;
              v87(v58, v61);
              sub_228180F4C(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
              v65 = v90;
              v66 = (*(v90 + 80) + 32) & ~*(v90 + 80);
              v67 = swift_allocObject();
              *(v67 + 16) = xmmword_228397F30;
              v68 = v89;
              (*(v65 + 16))(v67 + v66, v63, v89);
              (v78)(v58, v79, v64);
              v76(v92, 1, 1, v59);
              v69 = v82;
              sub_228391290();
              sub_228391260();
              (*(v80 + 8))(v69, v81);
              v87(v58, v64);
              sub_2283928F0();

              return (*(v65 + 8))(v63, v68);
            }

            else
            {
              sub_228180F4C(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
              *(swift_allocObject() + 16) = xmmword_228397F40;
              v70 = v84;
              (*(v12 + 104))(v84, *MEMORY[0x277D74A98], v4);
              v71 = sub_228391230();
              (*(*(v71 - 8) + 56))(v11, 1, 1, v71);
              v72 = v4;
              v73 = v82;
              sub_228391290();
              sub_228391260();
              (*(v80 + 8))(v73, v81);
              (*(v12 + 8))(v70, v72);
              sub_2283928F0();
            }
          }

LABEL_53:
          sub_2283930D0();
          goto LABEL_41;
        }

        v27 = sub_22817E880();
        [v27 setHidden_];

        v20 = *&v21[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHiddenConstraints];
        v79 = v4;
        v83 = v12;
        if (v20)
        {
          v11 = v20 & 0xFFFFFFFFFFFFFF8;
          if (v20 >> 62)
          {
            v28 = sub_2283930D0();
          }

          else
          {
            v28 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v28)
          {
            v29 = 0;
            v12 = v20 & 0xC000000000000001;
            v4 = &off_2785F4000;
            while (1)
            {
              if (v12)
              {
                v30 = MEMORY[0x22AAB6D80](v29, v20);
              }

              else
              {
                if (v29 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_46;
                }

                v30 = *(v20 + 8 * v29 + 32);
              }

              v31 = v30;
              v32 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                break;
              }

              [v30 setActive_];

              ++v29;
              if (v32 == v28)
              {
                goto LABEL_25;
              }
            }

            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_25:

          v4 = v79;
          v12 = v83;
          v11 = v92;
        }

        v20 = *&v21[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonVisibleConstraints];
        if (!v20)
        {
          goto LABEL_39;
        }

        v11 = v20 & 0xFFFFFFFFFFFFFF8;
        if (v20 >> 62)
        {
          v43 = sub_2283930D0();
        }

        else
        {
          v43 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v43)
        {
LABEL_38:

          v11 = v92;
          v4 = v79;
          v12 = v83;
          goto LABEL_39;
        }

        v44 = 0;
        v12 = v20 & 0xC000000000000001;
        v4 = 1;
        while (1)
        {
          if (v12)
          {
            v45 = MEMORY[0x22AAB6D80](v44, v20);
          }

          else
          {
            if (v44 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_48;
            }

            v45 = *(v20 + 8 * v44 + 32);
          }

          v46 = v45;
          v47 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            break;
          }

          [v45 setActive_];

          ++v44;
          if (v47 == v43)
          {
            goto LABEL_38;
          }
        }

LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        v74 = sub_2283930D0();
        v21 = v93;
        if (v74)
        {
          goto LABEL_5;
        }

LABEL_50:
        __break(1u);
      }
    }
  }

  else
  {
    sub_228181138(v95, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
  }

  sub_228391150();
  v33 = v93;
  v34 = v93;
  v35 = sub_2283911A0();
  v36 = sub_2283925C0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v94[0] = v38;
    *v37 = 136446210;
    sub_22817E6C8(&v33[v18], v95);
    sub_228181084(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v39 = sub_228392040();
    v41 = sub_2281C96FC(v39, v40, v94);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_22816B000, v35, v36, "Incorrect view model for InteractionMedicationItem: %{public}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AAB7B80](v38, -1, -1);
    MEMORY[0x22AAB7B80](v37, -1, -1);
  }

  return (*(v1 + 8))(v3, v91);
}

id InteractionMedicationCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionMedicationCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_228180ED0()
{
  if (!qword_280DDCE30)
  {
    v0 = sub_228393430();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDCE30);
    }
  }
}

void sub_228180F4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228180FB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_228181014(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_228181084(0, a3, a4, a5);
  (*(*(v7 - 8) + 24))(a2, a1, v7);
  return a2;
}

void sub_228181084(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_2281810DC(255, a3, a4);
    v5 = sub_228392F00();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2281810DC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_228181138(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_228181084(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t type metadata accessor for ShapeStepViewController(uint64_t a1)
{
  result = qword_27D823898;
  if (!qword_27D823898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228181260(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_228181F60(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22[-v7];
  sub_228181F60(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22[-v10];
  v12 = qword_27D823890;
  v13 = sub_2283909E0();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_228181EDC(0);
  swift_allocObject();
  *(v3 + v12) = sub_228391890();
  *(v3 + qword_27D828970) = MEMORY[0x277D84FA0];
  v23 = 0;
  type metadata accessor for VisualizationShapeDataSource(0);
  swift_allocObject();

  v15 = sub_2281F0A88(v14, &v23);
  sub_228181FB4(a1, v8);
  sub_228181FB4(v8, v3 + qword_27D828B18);
  sub_228182034(0);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = *(v15 + qword_27D824EA8);
  *(v3 + qword_27D824D88) = v16;
  *(v16 + 24) = v17;
  *(v3 + qword_27D824D90) = a2;
  sub_2283901F0();
  sub_228182110(0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_228397F40;
  v19 = MEMORY[0x277D10F80];
  *(v18 + 32) = v15;
  *(v18 + 40) = v19;
  swift_retain_n();

  sub_228390220();
  v20 = sub_228390480();
  sub_228181DBC(v8, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);

  sub_228181DBC(a1, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  return v20;
}

void sub_22818153C(uint64_t a1)
{
  sub_228181F60(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  v5 = qword_27D823890;
  v6 = sub_2283909E0();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_228181EDC(0);
  swift_allocObject();
  *(a1 + v5) = sub_228391890();
  *(a1 + qword_27D828970) = MEMORY[0x277D84FA0];
  sub_228393300();
  __break(1u);
}

void sub_228181688(void *a1)
{
  sub_228181F60(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  sub_228181F60(0, &qword_27D8238B0, sub_228181CBC);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  sub_228181CBC(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22838F710();
  [a1 deselectItemAtIndexPath:v13 animated:1];

  v14 = sub_22838F710();
  v23 = [a1 cellForItemAtIndexPath_];

  if (v23)
  {
    type metadata accessor for ShapeCell();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell_item;
      v17 = v15;
      swift_beginAccess();
      sub_22817E6C8(v17 + v16, v24);
      if (!v25)
      {

        sub_228181E7C(v24, sub_228181D50);
        (*(v10 + 56))(v7, 1, 1, v9);
        goto LABEL_10;
      }

      sub_22818217C(0, &qword_280DDCD60, MEMORY[0x277D10D48], 1);
      v18 = swift_dynamicCast();
      (*(v10 + 56))(v7, v18 ^ 1u, 1, v9);
      if ((*(v10 + 48))(v7, 1, v9) == 1)
      {

LABEL_10:
        sub_228181DBC(v7, &qword_27D8238B0, sub_228181CBC);
        return;
      }

      sub_228181E18(v7, v12);
      v20 = sub_2283909E0();
      v21 = *(v20 - 8);
      (*(v21 + 16))(v4, v12, v20);
      (*(v21 + 56))(v4, 0, 1, v20);

      sub_228391850();

      sub_228181DBC(v4, &qword_27D8238A8, MEMORY[0x277D11640]);
      sub_228181E7C(v12, sub_228181CBC);
    }

    else
    {
      v19 = v23;
    }
  }
}

uint64_t sub_228181AC4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_22838F760();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_228181688(v10);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_228181BF0()
{
}

id sub_228181C30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShapeStepViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228181C68(uint64_t a1)
{
}

void sub_228181CBC(uint64_t a1)
{
  if (!qword_27D8238B8)
  {
    v2 = sub_2283909E0();
    v3 = sub_2281820C8(&qword_27D8238C0, MEMORY[0x277D11640], &protocol conformance descriptor for MedicationShape);
    v5 = type metadata accessor for MedmojiConfigItem(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D8238B8);
    }
  }
}

void sub_228181D50(uint64_t a1)
{
  if (!qword_280DDCD50)
  {
    sub_22818217C(255, &qword_280DDCD60, MEMORY[0x277D10D48], 1);
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDCD50);
    }
  }
}

uint64_t sub_228181DBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228181F60(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228181E18(uint64_t a1, uint64_t a2)
{
  sub_228181CBC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228181E7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_228181EDC(uint64_t a1)
{
  if (!qword_27D8238C8)
  {
    sub_228181F60(255, &qword_27D8238A8, MEMORY[0x277D11640]);
    v1 = sub_228391880();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8238C8);
    }
  }
}

void sub_228181F60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_228181FB4(uint64_t a1, uint64_t a2)
{
  sub_228181F60(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_228182034(uint64_t a1)
{
  if (!qword_27D8238D8)
  {
    v2 = type metadata accessor for VisualizationShapeDataSource(255);
    v3 = sub_2281820C8(&qword_27D8238E0, type metadata accessor for VisualizationShapeDataSource, &protocol conformance descriptor for VisualizationShapeDataSource);
    v5 = type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D8238D8);
    }
  }
}

uint64_t sub_2281820C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_228182110(uint64_t a1)
{
  if (!qword_27D827750)
  {
    sub_22818217C(255, &qword_27D8238E8, MEMORY[0x277D10F28], 0);
    v1 = sub_228393430();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827750);
    }
  }
}

uint64_t sub_22818217C(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2281821D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_22838FDE0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838FDC0();
  v6 = sub_22838FD80();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t MedicationChartCellDataSource.deinit()
{
  v0 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return v0;
}

uint64_t MedicationChartCellDataSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_228182410()
{
  result = qword_27D8238F8;
  if (!qword_27D8238F8)
  {
    type metadata accessor for MedicationChartCellDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8238F8);
  }

  return result;
}

uint64_t type metadata accessor for MedicationChartCellDataSource(uint64_t a1)
{
  result = qword_27D823900;
  if (!qword_27D823900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22818259C(void *a1)
{
  type metadata accessor for MedicationChartCellDataSource(0);
  *(swift_allocObject() + qword_27D8238F0) = a1;
  sub_22818272C(0, &qword_27D823910, MEMORY[0x277D10F78]);
  sub_22838FEF0();
  *(swift_allocObject() + 16) = xmmword_228397F40;
  sub_22818272C(0, &qword_27D823918, sub_228182780);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F40;
  *(v2 + 56) = &type metadata for MedicationChartItem;
  *(v2 + 64) = sub_2281827E4();
  *(v2 + 32) = a1;
  *(v2 + 40) = 0;
  v3 = a1;
  sub_22838FED0();
  return sub_22838F920();
}

void sub_22818272C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228393430();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_228182780()
{
  result = qword_27D827E00;
  if (!qword_27D827E00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D827E00);
  }

  return result;
}

unint64_t sub_2281827E4()
{
  result = qword_27D823920;
  if (!qword_27D823920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823920);
  }

  return result;
}

uint64_t OntologyDebugDisplayable<>.name.getter()
{
  [v0 type];
  v1 = HKStringFromUserDomainConceptPropertyType();
  v2 = sub_228392000();

  return v2;
}

uint64_t HKUserDomainConceptBasicProperty.value.getter()
{
  v1 = [v0 stringValue];
  if (!v1)
  {
    return 0x6F6E2065756C6156;
  }

  v2 = v1;
  v3 = sub_228392000();

  return v3;
}

uint64_t sub_228182924()
{
  v1 = [*v0 stringValue];
  if (!v1)
  {
    return 0x6F6E2065756C6156;
  }

  v2 = v1;
  v3 = sub_228392000();

  return v3;
}

uint64_t HKUserDomainConceptNamedQuantity.value.getter()
{
  v1 = v0;
  sub_2283931D0();

  v2 = [v0 name];
  if (v2)
  {
    v3 = v2;
    v4 = sub_228392000();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  sub_228182AD4();
  v7 = sub_228392020();
  MEMORY[0x22AAB5C80](v7);

  MEMORY[0x22AAB5C80](0x3A7374696E55202CLL, 0xE900000000000020);
  v8 = [v1 unitString];
  v9 = sub_228392000();
  v11 = v10;

  MEMORY[0x22AAB5C80](v9, v11);

  return 0x203A656D614ELL;
}

void sub_228182AD4()
{
  if (!qword_27D825070)
  {
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825070);
    }
  }
}

uint64_t HKUserDomainConceptLocalizedString.value.getter()
{
  v1 = v0;
  sub_2283931D0();

  v2 = [v0 locale];
  v3 = sub_228392000();
  v5 = v4;

  MEMORY[0x22AAB5C80](v3, v5);

  MEMORY[0x22AAB5C80](0x3A65756C6156202CLL, 0xE900000000000020);
  v6 = [v1 stringValue];
  v7 = sub_228392000();
  v9 = v8;

  MEMORY[0x22AAB5C80](v7, v9);

  return 0x203A656C61636F4CLL;
}

uint64_t HKOntologyLocalizedEducationContent.value.getter()
{
  v1 = v0;
  sub_2283931D0();

  v2 = [v0 primarySection];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 localeIdentifier];

    v5 = sub_228392000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  sub_228182AD4();
  v8 = sub_228392020();
  MEMORY[0x22AAB5C80](v8);

  MEMORY[0x22AAB5C80](0x203A74786554202CLL, 0xE800000000000000);
  v9 = [v1 primarySection];
  if (v9)
  {
    v10 = v9;
    sub_228392AA0();
  }

  v11 = sub_228392020();
  MEMORY[0x22AAB5C80](v11);

  return 0x203A656C61636F4CLL;
}

uint64_t OntologyIDDataSource.__allocating_init(with:)(void *a1)
{
  v2 = swift_allocObject();
  OntologyIDDataSource.init(with:)(a1);
  return v2;
}

void *OntologyIDDataSource.init(with:)(void *a1)
{
  v2 = v1;
  v1[6] = 0x7865542065657246;
  v1[7] = 0xE900000000000074;
  v1[8] = 4271950;
  v1[9] = 0xE300000000000000;
  v1[10] = a1;
  if (!a1)
  {
    v1[4] = 0xD000000000000032;
    v1[5] = 0x80000002283A7790;
    v1[2] = 4271950;
    v1[3] = 0xE300000000000000;
    v16 = MEMORY[0x277D84F90];
    v2[11] = MEMORY[0x277D84F90];
LABEL_20:
    v20 = 12;
    goto LABEL_28;
  }

  v3 = a1;
  v4 = [v3 firstConceptIdentifier];
  if (!v4)
  {
LABEL_19:
    v18 = v1[7];
    v1[4] = v1[6];
    v1[5] = v18;
    v19 = v1[9];
    v1[2] = v1[8];
    v1[3] = v19;
    v16 = MEMORY[0x277D84F90];
    v2[11] = MEMORY[0x277D84F90];

    goto LABEL_20;
  }

  v5 = v4;
  v6 = [v3 propertyCollection];
  if (!v6)
  {

    goto LABEL_19;
  }

  v7 = v6;

  v8 = [v7 properties];
  sub_228183178();
  v9 = sub_2283921A0();

  v2[11] = v9;
  v10 = [v7 properties];
  v11 = sub_2283921A0();

  v28 = MEMORY[0x277D84F90];
  if (v11 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v25 = v7;
    v26 = v5;
    v27 = v3;
    v7 = 0;
    v3 = (v11 & 0xC000000000000001);
    v5 = (v11 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v3)
      {
        v13 = MEMORY[0x22AAB6D80](v7, v11);
      }

      else
      {
        if (v7 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v13 = *(v11 + 8 * v7 + 32);
      }

      v14 = v13;
      v15 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v13 isDeleted])
      {
      }

      else
      {
        sub_228393210();
        sub_228393250();
        sub_228393260();
        sub_228393220();
      }

      ++v7;
      if (v15 == i)
      {
        v17 = v28;
        v5 = v26;
        v3 = v27;
        v7 = v25;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_25:

  v2[12] = v17;
  [v5 rawIdentifier];
  v2[2] = sub_228393420();
  v2[3] = v21;
  v22 = sub_228392940();
  v16 = v23;

  if (!v16)
  {
    v22 = v2[6];
    v16 = v2[7];
  }

  v2[4] = v22;
  v20 = 5;
LABEL_28:
  v2[v20] = v16;
  return v2;
}

unint64_t sub_228183178()
{
  result = qword_27D823928;
  if (!qword_27D823928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D823928);
  }

  return result;
}

uint64_t OntologyIDDataSource.deinit()
{

  return v0;
}

uint64_t OntologyIDDataSource.__deallocating_deinit()
{
  OntologyIDDataSource.deinit();

  return swift_deallocClassInstance();
}

void sub_2281832D0()
{
  v1 = v0 + qword_27D823950;
  if (*(v0 + qword_27D823950 + 8))
  {
    v2 = [objc_opt_self() sharedBehavior];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 isiPad];

      v5 = 38.0;
      if (v4)
      {
        v5 = 72.0;
      }

      *v1 = v5;
      *(v1 + 8) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_228183370()
{
  v1 = qword_27D823980;
  if (*(v0 + qword_27D823980))
  {
    v2 = *(v0 + qword_27D823980);
  }

  else
  {
    v3 = *(v0 + qword_27D8239B0);
    sub_228390EA0();
    swift_allocObject();
    v4 = v3;
    v2 = sub_228390E90();
    *(v0 + v1) = v2;
  }

  return v2;
}

char *sub_228183428(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = *a2;
    v7 = *(v2 + qword_27D8239B0);
    sub_228390890();
    v8 = v6;
    v9 = v7;
    v10 = v2;
    sub_228390880();
    sub_228390830();

    sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
    sub_2283925F0();
    sub_2283907E0();
    swift_allocObject();
    v11 = sub_228390700();
    type metadata accessor for OntologyShardStateObserver(0);
    swift_allocObject();
    v5 = OntologyShardStateObserver.init(identifier:healthStore:settingsManager:)(v8, v9, v11);
    *(v10 + v3) = v5;
  }

  return v5;
}

uint64_t sub_228183554()
{
  v1 = qword_27D823998;
  if (*(v0 + qword_27D823998))
  {
    v2 = *(v0 + qword_27D823998);
  }

  else
  {
    type metadata accessor for NetworkStateObserver(0);
    v2 = swift_allocObject();
    sub_228391920();
    v3 = OBJC_IVAR____TtC19HealthMedicationsUI20NetworkStateObserver_networkMonitor;
    sub_228391B40();
    swift_allocObject();
    *(v2 + v3) = sub_228391B30();
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_228183624()
{
  v1 = qword_27D8239A0;
  v2 = *(v0 + qword_27D8239A0);
  if (v2)
  {
    v3 = *(v0 + qword_27D8239A0);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D10388]) initWithHealthStore_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_2281836A8()
{
  v1 = qword_27D8239A8;
  if (*(v0 + qword_27D8239A8))
  {
    v2 = *(v0 + qword_27D8239A8);
  }

  else
  {
    v3 = v0;
    sub_228390890();
    sub_228390880();
    sub_228390830();

    sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
    sub_2283925F0();
    sub_2283907E0();
    swift_allocObject();
    v2 = sub_228390700();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22818377C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_2281837FC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

uint64_t sub_228183880()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  return v1;
}

uint64_t sub_2281838F4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

uint64_t (*sub_228183970(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_228391950();
  return sub_228183A14;
}

uint64_t (*sub_228183A58(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_22818D028(0, &qword_27D823938, MEMORY[0x277D837D0], MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = qword_27D823930;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_22818D028(0, &unk_27D8278B0, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_228391930();
  swift_endAccess();
  return sub_228183BF8;
}

uint64_t (*sub_228183C4C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_228391950();
  return sub_22818E284;
}

uint64_t sub_228183CF0(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t a6)
{
  swift_beginAccess();
  sub_22818D028(0, a5, a6, MEMORY[0x277CBCED0]);
  sub_228391930();
  return swift_endAccess();
}

uint64_t sub_228183D84(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, void *a7, unint64_t *a8)
{
  v20 = a8;
  sub_22818D028(0, a5, a6, MEMORY[0x277CBCEC0]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  v18 = *(v12 + 16);
  v18(&v20 - v16, a1, v11);
  v18(v15, v17, v11);
  swift_beginAccess();
  sub_22818D028(0, v20, a6, MEMORY[0x277CBCED0]);
  sub_228391940();
  swift_endAccess();
  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_228183F54(void *a1, unint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  sub_22818D028(0, a2, a3, MEMORY[0x277CBCED0]);
  sub_228391930();
  return swift_endAccess();
}

uint64_t sub_228184008(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4, unint64_t *a5)
{
  sub_22818D028(0, a2, a3, MEMORY[0x277CBCEC0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  (*(v10 + 16))(&v13 - v11, a1, v9);
  swift_beginAccess();
  sub_22818D028(0, a5, a3, MEMORY[0x277CBCED0]);
  sub_228391940();
  swift_endAccess();
  return (*(v10 + 8))(a1, v9);
}

uint64_t (*sub_228184168(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_22818D028(0, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = qword_27D823940;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_22818D028(0, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_228391930();
  swift_endAccess();
  return sub_22818E288;
}

uint64_t sub_22818431C@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  *a4 = v6;
  return result;
}

uint64_t sub_2281843AC(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

uint64_t sub_228184430(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  return v3;
}

uint64_t sub_2281844B0(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

uint64_t (*sub_22818451C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_228391950();
  return sub_22818E284;
}

void sub_2281845C0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t (*sub_228184668(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_22818D028(0, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = qword_27D823948;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_22818D028(0, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_228391930();
  swift_endAccess();
  return sub_22818E288;
}

void sub_228184808(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_228391940();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_228391940();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_228184970(char a1)
{
  if (!a1)
  {
    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

    goto LABEL_9;
  }

  if (a1 == 1)
  {
    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

    goto LABEL_9;
  }

  if (qword_280DDCF18 != -1)
  {
LABEL_9:
    swift_once();
  }

  return sub_22838F0C0();
}

uint64_t _s19HealthMedicationsUI30ScheduleUnavailableDeviceStateV0F0O9hashValueSivg_0()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

uint64_t sub_228184B2C(uint64_t a1)
{
  v2 = *v1;
  sub_228393520();
  MEMORY[0x22AAB70D0](v2);
  return sub_228393570();
}

uint64_t sub_228184B70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27D828998;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_228184BCC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27D828998;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return sub_228184C38();
}

id sub_228184C38()
{
  v1 = qword_27D828998;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *(v0 + qword_27D823A00) = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  if ((v19 & 1) == 0)
  {
    if (*(*(v0 + v1) + 16))
    {
      type metadata accessor for NewMedicationsOnboardingDataSource(0);
      v4 = sub_22838FD40();
      v5 = *(v4 + 16);
      if (v5)
      {
        v6 = 0;
        v7 = (v4 + 40);
        while (1)
        {
          v8 = *(v7 - 1) == 0xD000000000000010 && 0x80000002283A7870 == *v7;
          if (v8 || (sub_228393460() & 1) != 0)
          {
            break;
          }

          ++v6;
          v7 += 2;
          if (v5 == v6)
          {
            goto LABEL_14;
          }
        }

        sub_22818C128(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_228397F40;
        if (qword_280DDCF18 != -1)
        {
          swift_once();
        }

        v10 = sub_22838F0C0();
        v12 = v11;
        type metadata accessor for MedicationOnboardingSuggestionsHeaderCell();
        sub_22818B6E8(&qword_27D8239D0, type metadata accessor for MedicationOnboardingSuggestionsHeaderCell, &unk_22839FA9C);
        v13 = sub_22838FBB0();
        v15 = v14;
        *(v9 + 56) = &type metadata for MedicationOnboardingSuggestionsHeaderItem;
        *(v9 + 64) = sub_22818C1E4();
        v16 = swift_allocObject();
        *(v9 + 32) = v16;
        v16[2] = v10;
        v16[3] = v12;
        v16[4] = v13;
        v16[5] = v15;

        v18 = sub_228194A7C(v17);

        sub_2281D55FC(v18);
        sub_22838FF60();
      }

      else
      {
LABEL_14:
      }
    }

    return sub_228188B28();
  }

  return result;
}

id sub_228184F80(uint64_t a1)
{
  v3 = qword_27D828998;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_228184C38();
}

id (*sub_228184FDC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228185040;
}

id sub_228185040(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_228184C38();
  }

  return result;
}

void sub_228185074(uint64_t *a1@<X8>)
{
  v2 = v1;
  v27 = sub_22838F4A0();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390600();
  v7 = sub_2283905D0();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v8 = sub_22838F0C0();
  v25 = v9;
  v26 = v8;
  v10 = 0;
  v11 = 0;
  if (v7)
  {
    v10 = sub_228184970(*(v2 + qword_27D823A00));
    v11 = v12;
  }

  sub_228390970();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = sub_228391FC0();
  v16 = [objc_opt_self() imageNamed:v15 inBundle:v14];

  if (v16)
  {
    type metadata accessor for MedicationOnboardingHeaderCell();
    sub_22818B6E8(&qword_27D8239C8, type metadata accessor for MedicationOnboardingHeaderCell, &unk_22839CEA8);
    v17 = sub_22838FBB0();
    v19 = v18;
    sub_22838F490();
    v20 = sub_22838F450();
    v22 = v21;
    (*(v4 + 8))(v6, v27);
    *a1 = v20;
    a1[1] = v22;
    v23 = v25;
    a1[2] = v26;
    a1[3] = v23;
    a1[4] = v10;
    a1[5] = v11;
    a1[6] = v16;
    a1[7] = v17;
    a1[8] = v19;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22818531C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_228391970();
  }

  return result;
}

uint64_t sub_2281853A0@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = sub_228390460();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818C294(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v28 - v5;
  v6 = sub_22838FFC0();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_228391590();
  v8 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391520();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22818C128(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_228397F40;
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v1;
  sub_228391960();

  v12 = sub_2282AE540(v39[0], v39[1]);
  v14 = v13;

  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_22818E210();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  sub_22838F0C0();
  if (*(v11 + 16))
  {
    sub_228391FD0();
  }

  sub_228391540();
  v15 = [objc_opt_self() preferredFontForTextStyle_];
  v16 = sub_228391450();
  sub_228391410();
  v16(v39, 0);
  v17 = sub_2283914C0();
  *v18 = 0x3FF0000000000000;
  v17(v39, 0);
  v19 = [objc_opt_self() tintColor];
  v20 = sub_228391450();
  sub_228391420();
  v20(v39, 0);
  v21 = v32;
  v39[3] = v32;
  v39[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  (*(v8 + 16))(boxed_opaque_existential_1, v10, v21);
  swift_allocObject();
  swift_weakInit();
  v23 = v30;
  v24 = v31;
  *v31 = 1;
  (*(v29 + 104))(v24, *MEMORY[0x277D10F90], v23);

  v25 = v34;
  sub_228391380();
  v26 = sub_2283913A0();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  (*(v36 + 104))(v35, *MEMORY[0x277D11140], v37);
  sub_228390160();
  (*(v8 + 8))(v10, v21);
}

uint64_t sub_2281859D4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NewMedicationOnboardingViewController(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = *(Strong + qword_27D8239C0);

      v5 = *(v4 + 16);

      LOBYTE(Strong) = v5 != 0;
    }

    return sub_2282FA14C(Strong);
  }

  return result;
}

uint64_t sub_228185A7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  if (v5 == 1)
  {
    if (*(*(v0 + qword_27D8239C0) + 16))
    {
      sub_22818C294(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
      sub_22838FEF0();
      *(swift_allocObject() + 16) = xmmword_228397F30;

      sub_228194894(v2);

      sub_22838FED0();
      sub_22818C128(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_228397F40;
      *(v3 + 56) = sub_228390170();
      *(v3 + 64) = sub_22818B6E8(&qword_27D823AB0, MEMORY[0x277D11000], MEMORY[0x277D10FF0]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));
      sub_2281853A0(boxed_opaque_existential_1);
      sub_22838FED0();
      sub_22838FF50();
    }

    else
    {
      return sub_22838FF50();
    }
  }

  return result;
}

uint64_t sub_228185D08()
{
  v49 = MEMORY[0x277D85248];
  v1 = MEMORY[0x277D83D88];
  sub_22818C294(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v35 - v3;
  v48 = MEMORY[0x277D85250];
  sub_22818C294(0, &qword_27D823BF0, MEMORY[0x277D85250], v1);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v35 - v5;
  v43 = sub_228392770();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D839B0];
  sub_22818D028(0, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  sub_22818DF5C(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818E004(0);
  v42 = v18;
  v44 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v36 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818E098(0);
  v21 = *(v20 - 8);
  v45 = v20;
  v46 = v21;
  MEMORY[0x28223BE20](v20);
  v38 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v0;
  swift_beginAccess();
  sub_22818D028(0, &qword_280DDBBD0, v7, MEMORY[0x277CBCED0]);
  sub_228391930();
  swift_endAccess();
  sub_22818C40C(&qword_280DDBBF0, &unk_280DDBBE0, v7);
  sub_228391A30();
  (*(v10 + 8))(v12, v9);
  sub_22818B6E8(&qword_27D823C08, sub_22818DF5C, MEMORY[0x277CBCC90]);
  sub_228391AA0();
  (*(v15 + 8))(v17, v14);
  v23 = v37;
  sub_228392740();
  v25 = v40;
  v24 = v41;
  v26 = v43;
  (*(v41 + 56))(v40, 1, 1, v43);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v27 = sub_228392790();
  v50 = v27;
  v28 = sub_228392730();
  v29 = v47;
  (*(*(v28 - 8) + 56))(v47, 1, 1, v28);
  sub_22818B6E8(&qword_27D823C18, sub_22818E004, MEMORY[0x277CBCBE0]);
  sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78, MEMORY[0x277D85228]);
  v30 = v38;
  v31 = v42;
  v32 = v36;
  sub_228391A20();
  sub_22818E198(v29, &qword_280DDBAD0, v49);

  sub_22818E198(v25, &qword_27D823BF0, v48);
  (*(v24 + 8))(v23, v26);
  (*(v44 + 8))(v32, v31);
  swift_allocObject();
  swift_weakInit();
  sub_22818B6E8(&unk_27D823C20, sub_22818E098, MEMORY[0x277CBCC48]);
  v33 = v45;
  sub_228391AC0();

  (*(v46 + 8))(v30, v33);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_22818645C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22838FF50();
  }

  return result;
}

uint64_t sub_2281864C0()
{
  v53 = MEMORY[0x277CC9E70];
  sub_22818C294(0, &qword_280DDB938, MEMORY[0x277CC9E70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v51 = &v39 - v1;
  v2 = MEMORY[0x277CBCEC0];
  sub_22818D028(0, &qword_27D823B08, &type metadata for NetworkStateObserver.ConnectionStatus, MEMORY[0x277CBCEC0]);
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - v5;
  sub_22818CD7C(0);
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  MEMORY[0x28223BE20](v7);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D839B0];
  sub_22818D028(0, &unk_280DDBBE0, MEMORY[0x277D839B0], v2);
  v12 = v11;
  v42 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  sub_22818CE24(0);
  v19 = *(v18 - 8);
  v48 = v18;
  v49 = v19;
  MEMORY[0x28223BE20](v18);
  v40 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818CF28(0);
  v50 = v21;
  v52 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v47 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228183400();
  swift_beginAccess();
  v23 = MEMORY[0x277CBCED0];
  sub_22818D028(0, &qword_280DDBBD0, v10, MEMORY[0x277CBCED0]);
  sub_228391930();
  swift_endAccess();

  sub_228183414();
  swift_beginAccess();
  sub_228391930();
  swift_endAccess();

  sub_228183554();
  swift_beginAccess();
  sub_22818D028(0, &qword_27D823B40, &type metadata for NetworkStateObserver.ConnectionStatus, v23);
  sub_228391930();
  swift_endAccess();

  sub_22818C40C(&qword_27D823B18, &qword_27D823B08, &type metadata for NetworkStateObserver.ConnectionStatus);
  sub_22818D078();
  v24 = v41;
  v25 = v43;
  sub_228391AA0();
  (*(v44 + 8))(v6, v25);
  sub_22818C40C(&qword_280DDBBF0, &unk_280DDBBE0, MEMORY[0x277D839B0]);
  sub_22818B6E8(&qword_27D823B28, sub_22818CD7C, MEMORY[0x277CBCBE0]);
  v26 = v40;
  v27 = v24;
  v28 = v45;
  sub_2283919C0();
  (*(v46 + 8))(v27, v28);
  v29 = *(v42 + 8);
  v29(v15, v12);
  v29(v17, v12);
  v30 = [objc_opt_self() mainRunLoop];
  v54 = v30;
  v31 = sub_228392EA0();
  v32 = v51;
  (*(*(v31 - 8) + 56))(v51, 1, 1, v31);
  sub_22817A958(0, &qword_280DDB928, 0x277CBEB88);
  sub_22818B6E8(&qword_27D823B38, sub_22818CE24, MEMORY[0x277CBCAF8]);
  sub_22818C470(&qword_280DDB930, &qword_280DDB928, 0x277CBEB88, MEMORY[0x277CC9E80]);
  v34 = v47;
  v33 = v48;
  sub_228391A70();
  sub_22818E198(v32, &qword_280DDB938, v53);

  (*(v49 + 8))(v26, v33);
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = sub_22818D0CC;
  *(v36 + 24) = v35;
  sub_22818B6E8(&qword_27D823B50, sub_22818CF28, MEMORY[0x277CBCD60]);
  v37 = v50;
  sub_228391AC0();

  (*(v52 + 8))(v34, v37);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228186CD4(char a1, char a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *a3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_228391960();

    if (v17)
    {
    }

    if (a1 & 1) != 0 && (a2 & 1) != 0 || (sub_2281836A8(), v9 = sub_228390740(), , (v9))
    {
      sub_228188B28();
      v10 = *(v8 + qword_27D8239B0);
      v11 = sub_228390660();
      v12 = sub_228390650();
      sub_2281D5860(v12);
      sub_228183370();
      sub_22818D10C(v11);
    }

    if (v6 == 1)
    {
      sub_228187188();
      sub_22818C294(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
      sub_22838FEF0();
      *(swift_allocObject() + 16) = xmmword_228397F40;
      sub_22818C128(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_228397F40;
      v14 = type metadata accessor for ShardSpinnerDownloadItem();
      v15 = swift_allocObject();
      *(v13 + 56) = v14;
      *(v13 + 64) = sub_22818B6E8(&qword_27D823B60, type metadata accessor for ShardSpinnerDownloadItem, &unk_2283A560C);
    }

    else
    {
      sub_22818C294(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
      sub_22838FEF0();
      *(swift_allocObject() + 16) = xmmword_228397F40;
      sub_22818C128(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_228397F40;
      v16 = type metadata accessor for ConnectivityIssueItem();
      v15 = swift_allocObject();
      *(v13 + 56) = v16;
      *(v13 + 64) = sub_22818B6E8(&qword_27D823B58, type metadata accessor for ConnectivityIssueItem, &unk_2283A1A28);
    }

    *(v13 + 32) = v15;
    sub_22838FED0();
    sub_22838FF50();
  }

  return result;
}

void sub_228187188()
{
  v1 = *v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v6 = sub_2283911A0();
  v7 = sub_2283925E0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136446210;
    v10 = sub_228393600();
    v17 = v2;
    v12 = sub_2281C96FC(v10, v11, aBlock);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_22816B000, v6, v7, "[%{public}s] Updating ontology...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AAB7B80](v9, -1, -1);
    MEMORY[0x22AAB7B80](v8, -1, -1);

    (*(v3 + 8))(v5, v17);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v13 = sub_228183624();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  aBlock[4] = sub_22818CD5C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2283282E4;
  aBlock[3] = &block_descriptor_0;
  v15 = _Block_copy(aBlock);

  [v13 updateOntologyForReason:5 completion:v15];
  _Block_release(v15);
}

uint64_t sub_22818742C(char a1, void *a2, uint64_t a3)
{
  v5 = sub_2283911B0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  if (a1)
  {
    sub_228391150();
    v12 = sub_2283911A0();
    v13 = sub_2283925E0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v33 = v15;
      *v14 = 136446210;
      v16 = sub_228393600();
      v18 = sub_2281C96FC(v16, v17, &v33);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_22816B000, v12, v13, "[%{public}s] Updated ontology successfully", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AAB7B80](v15, -1, -1);
      MEMORY[0x22AAB7B80](v14, -1, -1);
    }

    return (*(v6 + 8))(v11, v5);
  }

  else
  {
    sub_228391150();
    v20 = a2;
    v21 = sub_2283911A0();
    v22 = sub_2283925E0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136446466;
      v25 = sub_228393600();
      v27 = sub_2281C96FC(v25, v26, &v33);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      v32 = a2;
      v28 = a2;
      sub_22818C128(0, &qword_27D823B00, &qword_280DDB860, MEMORY[0x277D84948], MEMORY[0x277D83D88]);
      v29 = sub_228392020();
      v31 = sub_2281C96FC(v29, v30, &v33);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_22816B000, v21, v22, "[%{public}s] Error updating ontology: %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v24, -1, -1);
      MEMORY[0x22AAB7B80](v23, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_228187770()
{
  v54 = MEMORY[0x277D85248];
  sub_22818C294(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v39 - v2;
  v51 = sub_228392770();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D837D0];
  sub_22818D028(0, &qword_27D823938, MEMORY[0x277D837D0], MEMORY[0x277CBCEC0]);
  v44 = v7;
  v46 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  sub_22818C2F8(0);
  v50 = v10;
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v40 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818C4B4(0);
  v13 = *(v12 - 8);
  v55 = v12;
  v56 = v13;
  MEMORY[0x28223BE20](v12);
  v45 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818C5B4(0);
  v16 = *(v15 - 8);
  v57 = v15;
  v58 = v16;
  MEMORY[0x28223BE20](v15);
  v47 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818C76C(0);
  v19 = *(v18 - 8);
  v59 = v18;
  v60 = v19;
  MEMORY[0x28223BE20](v18);
  v48 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818C800(0);
  v22 = *(v21 - 8);
  v61 = v21;
  v62 = v22;
  MEMORY[0x28223BE20](v21);
  v53 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v0;
  swift_beginAccess();
  sub_22818D028(0, &unk_27D8278B0, v6, MEMORY[0x277CBCED0]);
  sub_228391930();
  swift_endAccess();
  sub_228392750();
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v24 = sub_228392790();
  v63 = v24;
  v42 = sub_228392730();
  v43 = *(*(v42 - 8) + 56);
  v43(v3, 1, 1, v42);
  sub_22818C40C(&qword_27D823A38, &qword_27D823938, v6);
  v41 = sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78, MEMORY[0x277D85228]);
  v25 = v40;
  v26 = v44;
  sub_228391A80();
  v27 = v54;
  sub_22818E198(v3, &qword_280DDBAD0, v54);

  (*(v49 + 8))(v5, v51);
  (*(v46 + 8))(v9, v26);
  swift_allocObject();
  swift_weakInit();
  sub_22818C560(0);
  sub_22818B6E8(&qword_27D823A58, sub_22818C2F8, MEMORY[0x277CBCCF8]);
  v28 = v45;
  v29 = v50;
  sub_2283919F0();

  (*(v52 + 8))(v25, v29);
  sub_22818B6E8(&qword_27D823A70, sub_22818C4B4, MEMORY[0x277CBCC08]);
  sub_22818B6E8(&qword_27D823A78, sub_22818C560, MEMORY[0x277CBCD90]);
  v30 = v47;
  v31 = v55;
  sub_228391AB0();
  (*(v56 + 8))(v28, v31);
  v63 = MEMORY[0x277D84F90];
  sub_22818B6E8(&qword_27D823A90, sub_22818C5B4, MEMORY[0x277CBCBB0]);
  v32 = v48;
  v33 = v57;
  sub_2283919B0();
  (*(v58 + 8))(v30, v33);
  v34 = sub_228392790();
  v63 = v34;
  v43(v3, 1, 1, v42);
  sub_22818B6E8(&qword_27D823AA0, sub_22818C76C, MEMORY[0x277CBCB78]);
  v35 = v53;
  v36 = v59;
  sub_228391A70();
  sub_22818E198(v3, &qword_280DDBAD0, v27);

  (*(v60 + 8))(v32, v36);
  swift_allocObject();
  swift_weakInit();
  sub_22818B6E8(&qword_27D823AA8, sub_22818C800, MEMORY[0x277CBCD60]);
  v37 = v61;
  sub_228391AC0();

  (*(v62 + 8))(v35, v37);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228188104@<X0>(uint64_t *a3@<X8>)
{
  v23 = a3;
  sub_22818C910(0);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818C294(0, &qword_27D823AD8, sub_22818C580, MEMORY[0x277CBCE78]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  sub_22818CA6C(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_0((Strong + qword_27D823970), *(Strong + qword_27D823970 + 24));
    v24 = sub_228390CA0();
    sub_22818C9BC(0);
    sub_22818C580(0);
    sub_22818B6E8(&qword_27D823AD0, sub_22818C9BC, MEMORY[0x277CBCD90]);
    sub_2283919F0();

    sub_22818B6E8(&qword_27D823AF0, sub_22818C910, MEMORY[0x277CBCC08]);
    v17 = v22;
    v18 = sub_228391990();

    result = (*(v21 + 8))(v5, v17);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
    sub_22818C580(0);
    sub_2283918C0();
    sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
    sub_2283918A0();
    (*(v8 + 8))(v10, v7);
    sub_22818B6E8(&qword_27D823AE8, sub_22818CA6C, MEMORY[0x277CBCF40]);
    v18 = sub_228391990();
    result = (*(v13 + 8))(v15, v12);
  }

  *v23 = v18;
  return result;
}

uint64_t sub_228188514@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v55 = sub_22838F4A0();
  v4 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818CB14(0);
  v53 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v52 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v49 = (&v39 - v10);
  MEMORY[0x28223BE20](v9);
  v51 = &v39 - v11;
  v50 = type metadata accessor for MedicationSearchItem(0);
  v48 = *(v50 - 8);
  result = MEMORY[0x28223BE20](v50);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(*a1 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v39 = a2;
    v56 = MEMORY[0x277D84F90];
    sub_2281C9F74(0, v16, 0);
    v45 = type metadata accessor for MedicationSearchCell();
    v17 = v56;
    v47 = *(v15 + 16);
    result = sub_228390B70();
    v18 = 0;
    v19 = *(result - 8);
    v43 = v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v44 = result;
    v41 = v19 + 32;
    v42 = v19 + 16;
    v40 = (v4 + 8);
    v46 = v16;
    while (v47 != v18)
    {
      v20 = v53;
      v21 = *(v53 + 48);
      v22 = v44;
      v23 = v51;
      (*(v19 + 16))(&v51[v21], v43 + *(v19 + 72) * v18, v44);
      v24 = v49;
      *v49 = v18;
      v25 = *(v19 + 32);
      v25(v24 + *(v20 + 48), &v23[v21], v22);
      v26 = v52;
      sub_22818CC38(v24, v52);
      v25(v14, (v26 + *(v20 + 48)), v22);
      type metadata accessor for MedicationSearchItem.Source(0);
      swift_storeEnumTagMultiPayload();
      v27 = v50;
      v28 = &v14[*(v50 + 24)];
      v29 = v54;
      sub_22838F490();
      v30 = sub_22838F450();
      v32 = v31;
      (*v40)(v29, v55);
      *v28 = v30;
      v28[1] = v32;
      v33 = &v14[*(v27 + 28)];
      sub_22818B6E8(&qword_27D8239E8, type metadata accessor for MedicationSearchCell, &unk_22839FE90);
      v34 = sub_22838FBB0();
      v36 = v35;
      sub_22818CC9C(v24);
      *v33 = v34;
      v33[1] = v36;
      *&v14[*(v27 + 20)] = v18;
      v56 = v17;
      v38 = *(v17 + 16);
      v37 = *(v17 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_2281C9F74((v37 > 1), v38 + 1, 1);
        v17 = v56;
      }

      ++v18;
      *(v17 + 16) = v38 + 1;
      result = sub_22818CCF8(v14, v17 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v38);
      if (v46 == v18)
      {
        a2 = v39;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    *a2 = v17;
  }

  return result;
}

uint64_t sub_22818896C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_228391960();

    if (v5 == 1)
    {
      if (!*(v2 + 16))
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_228391960();

        sub_2283920C0();

        __swift_project_boxed_opaque_existential_0((v4 + qword_27D823970), *(v4 + qword_27D823970 + 24));
        sub_228390CB0();
      }

      swift_getKeyPath();
      swift_getKeyPath();

      sub_228391970();
      *(v4 + qword_27D8239C0) = sub_2281950A0(v2);

      sub_228185A7C();
    }
  }

  return result;
}

id sub_228188B28()
{
  v1 = v0;
  v2 = sub_22838F4A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818C294(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  sub_22838FEF0();
  v6 = swift_allocObject();
  v39 = xmmword_228397F30;
  *(v6 + 16) = xmmword_228397F30;
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v8 = result;
    v9 = [result isiPad];

    sub_22818C128(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
    v10 = &unk_228397000;
    if (v9)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = v39;
      sub_228185074(&v41);
      *(v11 + 56) = &type metadata for MedicationOnboardingHeaderItem;
      *(v11 + 64) = sub_22818C190();
      v12 = swift_allocObject();
      *(v11 + 32) = v12;
      v13 = v44;
      *(v12 + 48) = v43;
      *(v12 + 64) = v13;
      *(v12 + 80) = v45;
      v14 = v42;
      *(v12 + 16) = v41;
      *(v12 + 32) = v14;
      *(v11 + 96) = &type metadata for MedicationSearchFieldItem;
      *(v11 + 104) = sub_22818C238();
      v15 = swift_allocObject();
      *(v11 + 72) = v15;
      v16 = swift_allocObject();
      *&v39 = v6;
      v17 = v16;
      swift_weakInit();

      sub_22838F490();
      v18 = sub_22838F450();
      v20 = v19;
      (*(v3 + 8))(v5, v2);
      v15[2] = v18;
      v15[3] = v20;
      type metadata accessor for MedicationSearchFieldCell();
      sub_22818B6E8(&qword_27D826930, type metadata accessor for MedicationSearchFieldCell, &unk_2283A0A44);
      v15[4] = 0;
      v15[5] = 0;
      v15[6] = sub_22838FBB0();
      v15[7] = v21;
      v22 = v15[4];
      v23 = v15[5];
      v15[4] = sub_22818C28C;
      v15[5] = v17;
      v10 = &unk_228397000;
      sub_228176EC8(v22, v23);
    }

    else
    {
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_228397F40;
      sub_228185074(&v41);
      *(v24 + 56) = &type metadata for MedicationOnboardingHeaderItem;
      *(v24 + 64) = sub_22818C190();
      v25 = swift_allocObject();
      *(v24 + 32) = v25;
      v26 = v44;
      *(v25 + 48) = v43;
      *(v25 + 64) = v26;
      *(v25 + 80) = v45;
      v27 = v42;
      *(v25 + 16) = v41;
      *(v25 + 32) = v27;
    }

    sub_22838FED0();
    v28 = qword_27D828998;
    swift_beginAccess();
    if (*(*(v1 + v28) + 16))
    {
      sub_22818C128(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
      v29 = swift_allocObject();
      *(v29 + 16) = v10[244];
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      v30 = sub_22838F0C0();
      v32 = v31;
      type metadata accessor for MedicationOnboardingSuggestionsHeaderCell();
      sub_22818B6E8(&qword_27D8239D0, type metadata accessor for MedicationOnboardingSuggestionsHeaderCell, &unk_22839FA9C);
      v33 = sub_22838FBB0();
      v35 = v34;
      *(v29 + 56) = &type metadata for MedicationOnboardingSuggestionsHeaderItem;
      *(v29 + 64) = sub_22818C1E4();
      v36 = swift_allocObject();
      *(v29 + 32) = v36;
      v36[2] = v30;
      v36[3] = v32;
      v36[4] = v33;
      v36[5] = v35;

      v38 = sub_228194A7C(v37);

      v40 = v29;
      sub_2281D55FC(v38);
    }

    sub_22838FED0();
    sub_22838FF50();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22818914C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22818DCAC(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  sub_22818DD58(0);
  swift_allocObject();

  v14[1] = sub_2283918F0();
  sub_22818C580(0);
  sub_22818B6E8(&qword_27D823BC8, sub_22818DD58, MEMORY[0x277CBCEB0]);
  sub_2283919F0();

  sub_22818B6E8(&qword_27D823BD0, sub_22818DCAC, MEMORY[0x277CBCC08]);
  v12 = sub_228391990();
  result = (*(v7 + 8))(v9, v6);
  *a3 = v12;
  return result;
}

uint64_t sub_228189374(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = a4;
  v98 = *MEMORY[0x277D85DE8];
  v82 = sub_22838EF60();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_22838F6C0();
  v86 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v88 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22838F080();
  v85 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v87 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v67 - v11;
  v13 = sub_22838F440();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v79 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v84 = &v67 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v67 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  if (Strong)
  {
    v67 = v21;
    v68 = Strong;
    v69 = v14;
    v70 = v13;
    v71 = v8;
    sub_22838F430();
    sub_22838F680();
    sub_22818C294(0, &qword_280DDB8D8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v78 = v23;
    v24 = sub_22838F6A0();
    v25 = *(v24 - 8);
    v26 = v25;
    v90 = v12;
    v27 = *(v25 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v29 = 2 * v27;
    v72 = v27;
    v30 = v27;
    v77 = 3 * v27;
    v31 = swift_allocObject();
    v76 = xmmword_228398270;
    *(v31 + 16) = xmmword_228398270;
    v91 = v20;
    v75 = *MEMORY[0x277CC9988];
    v32 = *(v26 + 104);
    v32(v31 + v28);
    v74 = *MEMORY[0x277CC9998];
    v32(v31 + v28 + v30);
    v73 = *MEMORY[0x277CC9968];
    v32(v31 + v28 + v29);
    sub_2281EF358(v31);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v33 = v88;
    sub_22838F5C0();

    v86 = *(v86 + 8);
    (v86)(v33, v89);
    sub_22838F680();
    v34 = swift_allocObject();
    *(v34 + 16) = v76;
    (v32)(v34 + v28, v75, v24);
    (v32)(v34 + v28 + v72, v74, v24);
    (v32)(v34 + v28 + v29, v73, v24);
    sub_2281EF358(v34);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v35 = v91;
    sub_22838F5C0();

    (v86)(v33, v89);
    v37 = sub_22838F000();
    if (*(v36 + 8))
    {
      v37(&aBlock, 0);
    }

    else
    {
      if (__OFSUB__(*v36, 3))
      {
        __break(1u);
      }

      *v36 -= 3;
      v37(&aBlock, 0);
    }

    v39 = objc_opt_self();
    v40 = sub_22838EFB0();
    v41 = sub_22838EFB0();
    *&aBlock = 0;
    v42 = [v39 _sortDateIntervalFromStartDateComponents_endDateComponents_error_];

    v43 = aBlock;
    v44 = v70;
    v45 = v69;
    if (v42)
    {
      v46 = v80;
      sub_22838EF10();
      v47 = v43;

      v48 = v79;
      sub_22838EF40();
      (*(v81 + 8))(v46, v82);
      v49 = v84;
      (*(v45 + 32))(v84, v48, v44);
    }

    else
    {
      v50 = aBlock;
      v51 = sub_22838F180();

      swift_willThrow();
      v49 = v84;
      (*(v45 + 16))(v84, v35, v44);
    }

    v52 = v67;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_22818DEBC;
    *(v53 + 24) = v52;
    v54 = objc_allocWithZone(MEMORY[0x277D11528]);
    sub_22817A958(0, &qword_27D823BE0, 0x277CCD1D0);
    v55 = v83;
    v56 = sub_228392190();
    v57 = sub_22838F380();
    v96 = sub_22818DEFC;
    v97 = v53;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v94 = sub_22818CB80;
    v95 = &block_descriptor_65;
    v58 = _Block_copy(&aBlock);
    v59 = [v54 initForCHRImportWithExistingMedications:v56 sinceDate:v57 limit:100 resultsHandler:v58];
    _Block_release(v58);

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    v60 = v59;
    sub_2283931D0();

    strcpy(&aBlock, "CHR import: ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v92 = v55;
    sub_22818DF04(0, &qword_27D823BE8, &qword_27D823BE0, 0x277CCD1D0);

    v61 = sub_228392080();
    MEMORY[0x22AAB5C80](v61);

    MEMORY[0x22AAB5C80](0x203A65636E697320, 0xE800000000000000);
    sub_22818B6E8(&qword_27D8283D0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v62 = sub_228393420();
    MEMORY[0x22AAB5C80](v62);

    v63 = sub_228391FC0();

    [v60 setDebugIdentifier_];

    [*(v68 + qword_27D8239B0) executeQuery_];
    v64 = *(v45 + 8);
    v64(v49, v44);
    v65 = *(v85 + 8);
    v66 = v71;
    v65(v87, v71);
    v65(v90, v66);
    v64(v91, v44);
  }

  else
  {

    *&aBlock = MEMORY[0x277D84F90];
    BYTE8(aBlock) = 0;
    return a1(&aBlock);
  }
}

void sub_228189E68(int a1, void *a2, id a3, void (*a4)(id, uint64_t))
{
  if (a3)
  {
    v6 = a3;
    a4(a3, 1);
  }

  else
  {
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    a4(v7, 0);
  }
}

uint64_t sub_228189F14@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v41 = sub_22838F4A0();
  v4 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MedicationSearchItem(0);
  v40 = *(v7 - 1);
  result = MEMORY[0x28223BE20](v7);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  v12 = *a1 >> 62;
  v13 = v11;
  if (v12)
  {
    goto LABEL_21;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = result)
  {
    v15 = MEMORY[0x277D84F90];
    if (!i)
    {
LABEL_18:
      *a2 = v15;
      return result;
    }

    v42 = MEMORY[0x277D84F90];
    result = sub_2281C9F74(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v15 = v42;
    v33 = a2;
    if (v12)
    {
      v34 = v13 & 0xFFFFFFFFFFFFFF8;
      v18 = sub_2283930D0();
      v16 = v13;
      v17 = v18;
    }

    else
    {
      v16 = v13;
      v34 = v13 & 0xFFFFFFFFFFFFFF8;
      v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v16 & 0xC000000000000001;
    v19 = type metadata accessor for MedicationSearchCell();
    v20 = v13;
    v35 = v19;
    v36 = i;
    v12 = 0;
    v13 = (v4 + 1);
    v39 = v17 & ~(v17 >> 63);
    v37 = v20;
    while (v39 != v12)
    {
      if (v38)
      {
        v21 = MEMORY[0x22AAB6D80](v12);
      }

      else
      {
        if (v12 >= *(v34 + 16))
        {
          goto LABEL_20;
        }

        v21 = *(v20 + 8 * v12 + 32);
      }

      v22 = v21;
      sub_22818DE38(0);
      *v10 = [v22 specificProduct];
      v23 = [v22 routedDoseFormProducts];
      sub_22817A958(0, &qword_27D823BD8, 0x277CCD1B0);
      sub_2283921A0();

      sub_228390C40();
      type metadata accessor for MedicationSearchItem.Source(0);
      swift_storeEnumTagMultiPayload();
      v24 = (v10 + v7[6]);
      sub_22838F490();
      v25 = sub_22838F450();
      v27 = v26;
      (*v13)(v6, v41);
      *v24 = v25;
      v24[1] = v27;
      v4 = (v10 + v7[7]);
      sub_22818B6E8(&qword_27D8239E8, type metadata accessor for MedicationSearchCell, &unk_22839FE90);
      v28 = sub_22838FBB0();
      v30 = v29;

      *v4 = v28;
      v4[1] = v30;
      *(v10 + v7[5]) = v12;
      v42 = v15;
      v32 = *(v15 + 16);
      v31 = *(v15 + 24);
      a2 = (v32 + 1);
      if (v32 >= v31 >> 1)
      {
        sub_2281C9F74((v31 > 1), v32 + 1, 1);
        v15 = v42;
      }

      ++v12;
      *(v15 + 16) = a2;
      result = sub_22818CCF8(v10, v15 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32);
      v20 = v37;
      if (v36 == v12)
      {
        a2 = v33;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_2283930D0();
  }

  __break(1u);
  return result;
}

void *sub_22818A308(unint64_t a1, uint64_t a2)
{
  v3 = sub_22838FDE0();
  v33 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v32 = &v30 - v6;
  v7 = sub_2283900D0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  type metadata accessor for NewMedicationsOnboardingDataSource(0);
  v14 = sub_22838FD40();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (*(v14 + 16) <= a1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v30 = v3;
  v15 = v14 + 16 * a1;
  v17 = *(v15 + 32);
  v16 = *(v15 + 40);

  v18 = v17 == 0xD000000000000010 && 0x80000002283A7870 == v16;
  if (!v18 && (sub_228393460() & 1) == 0)
  {
    v21 = v17 == 0xD000000000000019 && 0x80000002283A7890 == v16;
    if (v21 || (sub_228393460() & 1) != 0)
    {

      sub_228390040();
      sub_22838FFE0();
      v22 = *(v8 + 8);
      v22(v11, v7);
      sub_228390080();
      v19 = sub_2283900C0();
      sub_2281832D0();
      [v19 contentInsets];
      [v19 setContentInsets_];
      [v19 contentInsets];
      [v19 setContentInsets_];
      v22(v13, v7);
      return v19;
    }

    if (v17 == 0xD00000000000001ELL && 0x80000002283A78B0 == v16 || (sub_228393460() & 1) != 0)
    {

      sub_228390010();
      sub_228390070();
      v19 = sub_2283900C0();
      [v19 contentInsets];
      [v19 setContentInsets_];
      goto LABEL_9;
    }

    if (v17 == 0xD00000000000001ELL && 0x80000002283A78D0 == v16 || (sub_228393460() & 1) != 0 || v17 == 0xD000000000000023 && 0x80000002283A78F0 == v16 || (sub_228393460() & 1) != 0)
    {

      v23 = v31;
      sub_22838FDD0();
      v24 = v32;
      sub_22838FD90();
      v25 = *(v33 + 8);
      v26 = v30;
      v25(v23, v30);
      v27 = [objc_opt_self() fractionalHeightDimension_];
      sub_22838FD70();
LABEL_28:
      v19 = sub_22838FD80();
      v25(v24, v26);
      return v19;
    }

    if (v17 == 0xD00000000000001CLL && 0x80000002283A7920 == v16)
    {

      goto LABEL_35;
    }

LABEL_34:
    v28 = sub_228393460();

    if ((v28 & 1) == 0)
    {
      v29 = v32;
      sub_22838FDB0();
      v24 = v31;
      sub_22838FD90();
      v25 = *(v33 + 8);
      v26 = v30;
      v25(v29, v30);
      goto LABEL_28;
    }

LABEL_35:
    sub_228390040();
    v19 = sub_2283900C0();
    (*(v8 + 8))(v13, v7);
    [v19 contentInsets];
    [v19 setContentInsets_];
    return v19;
  }

  sub_228390040();
  sub_228390070();
  v19 = sub_2283900C0();
LABEL_9:
  (*(v8 + 8))(v13, v7);
  return v19;
}