uint64_t sub_25E175C94@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel_physicalButtonEdge;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_25E175CEC(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel_physicalButtonEdge;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_25E175E20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E1A4ECC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25E175E78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E1A4F3C();
  *a1 = result;
  return result;
}

uint64_t sub_25E175ECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCCC0, &qword_25E1A69E8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25E175F44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCCC0, &qword_25E1A69E8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25E175FC0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDCC58, &qword_25E1A6950);
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A566C();

  return swift_getWitnessTable();
}

void *sub_25E176074@<X0>(_BYTE *a1@<X8>)
{
  sub_25E1832FC();
  result = sub_25E1A4F9C();
  *a1 = v3;
  return result;
}

uint64_t sub_25E176110()
{

  return swift_deallocObject();
}

uint64_t sub_25E1761AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E1A4F5C();
  *a1 = result;
  return result;
}

uint64_t sub_25E176204@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E1A4EAC();
  *a1 = result;
  return result;
}

uint64_t sub_25E176290()
{

  return swift_deallocObject();
}

uint64_t sub_25E1762C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25E176308()
{
  MEMORY[0x25F8ADAB0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_25E176340()
{

  return swift_deallocObject();
}

uint64_t sub_25E176378()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25E17653C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext_shouldSupportLandscapeOrientation;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_25E176594(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext_shouldSupportLandscapeOrientation;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void *sub_25E1765FC@<X0>(_BYTE *a1@<X8>)
{
  sub_25E18B790();
  result = sub_25E1A4F9C();
  *a1 = v3;
  return result;
}

uint64_t sub_25E176698@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.shouldUseAccessibleLayout.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25E176714(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD0B0, &qword_25E1A7440);
  sub_25E1A566C();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A566C();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD0B8, &qword_25E1A7448);
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD0C0, &qword_25E1A7450);
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD0C8, &qword_25E1A7458);
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A566C();

  return swift_getWitnessTable();
}

uint64_t sub_25E1768CC(void *a1)
{
  sub_25E1A4DDC();
  sub_25E18BB30();
  return swift_getWitnessTable();
}

uint64_t sub_25E176934()
{
  v1 = sub_25E1A4BDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  }

  (*(v2 + 8))(v0 + ((v3 + 72) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_25E176A10()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD130, &qword_25E1A7700);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD138, &qword_25E1A7708);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD140, &qword_25E1A7710);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD148, &qword_25E1A7718);
  sub_25E17F9C0(&qword_28155F9F8, &qword_27FCDD130, &qword_25E1A7700, MEMORY[0x277CE04B0]);
  sub_25E17F9C0(&qword_28155F980, &qword_27FCDD138, &qword_25E1A7708, MEMORY[0x277CE14C0]);
  sub_25E18CE14();
  return swift_getOpaqueTypeConformance2();
}

void *sub_25E176B4C@<X0>(void *a1@<X8>)
{
  sub_25E190900();
  result = sub_25E1A4F9C();
  *a1 = v3;
  return result;
}

uint64_t sub_25E176BA4()
{

  return swift_deallocObject();
}

uint64_t sub_25E176BE4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_25E1A4BFC();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_25E176C9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = sub_25E1A4BFC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_25E176DCC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25E176E18@<X0>(uint64_t *a1@<X8>)
{
  sub_25E191C94();
  result = sub_25E1A567C();
  *a1 = result;
  return result;
}

uint64_t sub_25E176EA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2A0, &unk_25E1A7AD8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E176F20(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2A0, &unk_25E1A7AD8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_25E176FB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryViewStyle(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25E17701C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryViewStyle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25E1770C0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD438, &qword_25E1A8040);
  sub_25E1A4DDC();
  swift_getWitnessTable();
  sub_25E1A566C();
  swift_getTupleTypeMetadata3();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25E17728C(void *a1)
{
  sub_25E1A4DDC();
  sub_25E19694C();
  return swift_getWitnessTable();
}

uint64_t sub_25E1772F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PaymentItemViewBackgroundModifier(255, a1[1], a1[3], a4);
  sub_25E1A4DDC();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_25E177388(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PaymentItemViewBackgroundModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_25E1A517C();
  sub_25E1A513C();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A516C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25E19694C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_25E1775CC(void *a1)
{
  sub_25E1A4DDC();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_25E1A524C();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A58CC();
  type metadata accessor for AccessoryView(255);
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD600, &qword_25E1A8A40);
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A566C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD608, &qword_25E1A8A48);
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD050, &qword_25E1A8A50);
  sub_25E1A4DDC();
  swift_getOpaqueTypeConformance2();
  sub_25E1A2468(&qword_27FCDCCB8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25E17F9C0(&qword_27FCDD610, &qword_27FCDD608, &qword_25E1A8A48, MEMORY[0x277CE0328]);
  swift_getWitnessTable();
  sub_25E17F9C0(&qword_27FCDD0A8, &qword_27FCDD050, &qword_25E1A8A50, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  sub_25E1A562C();
  swift_getOpaqueTypeMetadata2();
  sub_25E1A516C();
  sub_25E1A516C();
  sub_25E1A56CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A566C();
  sub_25E1A516C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_25E177C9C()
{

  return swift_deallocObject();
}

uint64_t sub_25E177CD8()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 72);
  v24[0] = *(v0 + 16);
  v2 = v24[0];
  v24[1] = v1;
  v24[2] = v3;
  v22 = *(v0 + 40);
  v25 = v22;
  v26 = *(v0 + 56);
  v27 = v4;
  v5 = type metadata accessor for PaymentItem(0, v24);
  v6 = *(*(v5 - 1) + 80);
  v23 = *(*(v5 - 1) + 64);
  v7 = sub_25E1A4D7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v0 + ((v6 + 80) & ~v6);
  (*(*(v2 - 8) + 8))(v10, v2);
  (*(*(v1 - 8) + 8))(v10 + v5[21], v1);
  v11 = v5[22];
  v12 = *(v3 - 8);
  if (!(*(v12 + 48))(v10 + v11, 1, v3))
  {
    (*(v12 + 8))(v10 + v11, v3);
  }

  v13 = v10 + v5[23];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2A0, &unk_25E1A7AD8);
  if (!(*(*(v14 - 8) + 48))(v13, 6, v14))
  {

    v15 = *(v14 + 48);
    v16 = sub_25E1A536C();
    (*(*(v16 - 8) + 8))(v13 + v15, v16);
  }

  v17 = v5[24];
  v18 = *(v22 - 8);
  if (!(*(v18 + 48))(v10 + v17, 1, v22))
  {
    (*(v18 + 8))(v10 + v17, v22);
  }

  if (*(v10 + v5[27]))
  {
  }

  if (*(v10 + v5[28]))
  {
  }

  sub_25E1832F0(*(v10 + v5[30]), *(v10 + v5[30] + 8));
  sub_25E1832F0(*(v10 + v5[31]), *(v10 + v5[31] + 8));
  v19 = v5[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD298, &qword_25E1A7AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_25E1A4D0C();
    (*(*(v20 - 8) + 8))(v10 + v19, v20);
  }

  else
  {
  }

  (*(v8 + 8))(v0 + ((((v6 + 80) & ~v6) + v23 + v9) & ~v9), v7);
  return swift_deallocObject();
}

uint64_t sub_25E178128@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

void sub_25E178204()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 16.0;
  if (v1 == 5)
  {
    v2 = 20.0;
  }

  qword_281560408 = *&v2;
}

double sub_25E178294()
{
  if (qword_281560400 != -1)
  {
    swift_once();
  }

  result = *&qword_281560408;
  qword_2815603E8 = qword_281560408;
  return result;
}

double sub_25E178310(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

void sub_25E17836C()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    pearlIDCapability = MobileGestalt_get_pearlIDCapability();

    byte_2815603F8 = pearlIDCapability;
  }

  else
  {
    __break(1u);
  }
}

void sub_25E1783D8()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    homeButtonType = MobileGestalt_get_homeButtonType();

    if ((homeButtonType & 0x80000000) == 0)
    {
      byte_27FCDC9D8 = homeButtonType != 2;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25E178454(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t getEnumTagSinglePayload for SheetConstants(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SheetConstants(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void type metadata accessor for CGRectEdge()
{
  if (!qword_28155F958)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28155F958);
    }
  }
}

uint64_t sub_25E1785DC()
{
  if (qword_28155F940 != -1)
  {
    swift_once();
  }

  v0 = qword_281560F30;
  result = sub_25E1A559C();
  qword_27FCDCB00 = result;
  return result;
}

uint64_t sub_25E178680()
{
  if (qword_28155F940 != -1)
  {
    swift_once();
  }

  v0 = qword_281560F30;
  result = sub_25E1A559C();
  qword_27FCDCB08 = result;
  return result;
}

uint64_t sub_25E178724()
{
  if (qword_28155F940 != -1)
  {
    swift_once();
  }

  v0 = qword_281560F30;
  result = sub_25E1A559C();
  qword_27FCDCB10 = result;
  return result;
}

uint64_t sub_25E1787C8()
{
  if (qword_28155F940 != -1)
  {
    swift_once();
  }

  v0 = qword_281560F30;
  result = sub_25E1A559C();
  qword_28155F9A8 = result;
  return result;
}

uint64_t sub_25E17886C()
{
  if (qword_28155F940 != -1)
  {
    swift_once();
  }

  v0 = qword_281560F30;
  result = sub_25E1A559C();
  qword_27FCDCB18 = result;
  return result;
}

uint64_t sub_25E178910()
{
  if (qword_28155F940 != -1)
  {
    swift_once();
  }

  v0 = qword_281560F30;
  result = sub_25E1A559C();
  qword_27FCDCB20 = result;
  return result;
}

uint64_t sub_25E1789B4()
{
  if (qword_28155F940 != -1)
  {
    swift_once();
  }

  v0 = qword_281560F30;
  result = sub_25E1A559C();
  qword_27FCDCB28 = result;
  return result;
}

uint64_t sub_25E178A58()
{
  if (qword_28155F940 != -1)
  {
    swift_once();
  }

  v0 = qword_281560F30;
  result = sub_25E1A559C();
  qword_27FCDCB30 = result;
  return result;
}

uint64_t sub_25E178AFC()
{
  if (qword_28155F940 != -1)
  {
    swift_once();
  }

  v0 = qword_281560F30;
  result = sub_25E1A559C();
  qword_27FCDCB38 = result;
  return result;
}

uint64_t sub_25E178BA0()
{
  if (qword_28155F940 != -1)
  {
    swift_once();
  }

  v0 = qword_281560F30;
  result = sub_25E1A559C();
  qword_27FCDCB40 = result;
  return result;
}

uint64_t sub_25E178C44()
{
  if (qword_28155F940 != -1)
  {
    swift_once();
  }

  v0 = qword_281560F30;
  result = sub_25E1A559C();
  qword_27FCDCB48 = result;
  return result;
}

uint64_t sub_25E178CE8()
{
  if (qword_28155F940 != -1)
  {
    swift_once();
  }

  v0 = qword_281560F30;
  result = sub_25E1A559C();
  qword_28155F9B8 = result;
  return result;
}

uint64_t sub_25E178DC4()
{
  if (qword_28155F940 != -1)
  {
    swift_once();
  }

  v0 = qword_281560F30;
  result = sub_25E1A559C();
  qword_27FCDCB58 = result;
  return result;
}

uint64_t sub_25E178E68()
{
  if (qword_28155F940 != -1)
  {
    swift_once();
  }

  v0 = qword_281560F30;
  result = sub_25E1A559C();
  qword_27FCDCB60 = result;
  return result;
}

uint64_t sub_25E178F0C()
{
  result = sub_25E1A556C();
  qword_28155F9D8 = result;
  return result;
}

uint64_t sub_25E178F50()
{
  result = sub_25E1A557C();
  qword_28155F9C8 = result;
  return result;
}

uint64_t sub_25E178F94()
{
  if (qword_28155F940 != -1)
  {
    swift_once();
  }

  v0 = qword_281560F30;
  result = sub_25E1A559C();
  qword_27FCDCB68 = result;
  return result;
}

uint64_t sub_25E179118()
{
  if (qword_28155F940 != -1)
  {
    swift_once();
  }

  v0 = qword_281560F30;
  result = sub_25E1A559C();
  qword_27FCDCB90 = result;
  return result;
}

uint64_t sub_25E1791BC()
{
  if (qword_28155F940 != -1)
  {
    swift_once();
  }

  v0 = qword_281560F30;
  result = sub_25E1A559C();
  qword_27FCDCB98 = result;
  return result;
}

uint64_t sub_25E179274(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_25E1A554C();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_25E1A558C();
  *a3 = result;
  return result;
}

uint64_t sub_25E179374()
{
  if (qword_28155F940 != -1)
  {
    swift_once();
  }

  v0 = qword_281560F30;
  result = sub_25E1A559C();
  qword_27FCDCBA8 = result;
  return result;
}

uint64_t sub_25E179418()
{
  if (qword_28155F940 != -1)
  {
    swift_once();
  }

  v0 = qword_281560F30;
  result = sub_25E1A559C();
  qword_27FCDCBB0 = result;
  return result;
}

uint64_t sub_25E1794BC()
{
  if (qword_28155F940 != -1)
  {
    swift_once();
  }

  v0 = qword_281560F30;
  result = sub_25E1A559C();
  qword_27FCDCBB8 = result;
  return result;
}

uint64_t sub_25E1795AC(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_25E1A552C();
  *a3 = result;
  return result;
}

uint64_t sub_25E179618()
{
  result = sub_25E1A553C();
  qword_27FCDCBC8 = result;
  return result;
}

uint64_t sub_25E17965C()
{
  result = sub_25E1A553C();
  qword_27FCDCBD0 = result;
  return result;
}

uint64_t sub_25E1796A0(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t FooterViewType.hashValue.getter()
{
  v1 = *v0;
  sub_25E1A59BC();
  MEMORY[0x25F8AD450](v1);
  return sub_25E1A59DC();
}

uint64_t sub_25E179788()
{
  v1 = *v0;
  sub_25E1A59BC();
  MEMORY[0x25F8AD450](v1);
  return sub_25E1A59DC();
}

uint64_t sub_25E1797FC(uint64_t a1)
{
  v2 = *v1;
  sub_25E1A59BC();
  MEMORY[0x25F8AD450](v2);
  return sub_25E1A59DC();
}

uint64_t static BaseAuthenticatorModel.defaultHasPearl.getter()
{
  if (qword_2815603F0 != -1)
  {
    swift_once();
  }

  return byte_2815603F8;
}

uint64_t (*sub_25E1798F4(uint64_t *a1))()
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
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E17FA78;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t (*sub_25E179A08(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
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

  v10 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__authenticating;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E17FA7C;
}

uint64_t (*sub_25E179BC8(uint64_t *a1))()
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
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E179C6C;
}

uint64_t (*sub_25E179C98(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
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

  v10 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__bypassAuthenticator;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E179E08;
}

uint64_t (*sub_25E179E5C(uint64_t *a1))()
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
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E17FA78;
}

uint64_t (*sub_25E179F28(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
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

  v10 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__isInBioLockout;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E17FA7C;
}

uint64_t (*sub_25E17A0E8(uint64_t *a1))()
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
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E17FA78;
}

uint64_t (*sub_25E17A1B4(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
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

  v10 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__disablePasscodeFallback;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E17FA7C;
}

uint64_t (*sub_25E17A374(uint64_t *a1))()
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
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E17FA78;
}

uint64_t (*sub_25E17A440(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
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

  v10 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__showEnterPasswordButton;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E17FA7C;
}

double sub_25E17A5B0@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_25E17A638(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E17FA08(v2, v3, v4, v5, v6);

  return sub_25E1A4CBC();
}

uint64_t sub_25E17A6E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();
}

uint64_t sub_25E17A75C(__int128 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25E1A4CBC();
}

uint64_t (*sub_25E17A7E4(uint64_t *a1))()
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
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E17FA78;
}

uint64_t sub_25E17A888(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBE8, &qword_25E1A65C8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBE0, &qword_25E1A65C0);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25E17AA28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBE8, &qword_25E1A65C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBE0, &qword_25E1A65C0);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_25E17AB60(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBE8, &qword_25E1A65C8);
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

  v10 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__passcodeEntry;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBE0, &qword_25E1A65C0);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E17FA7C;
}

uint64_t (*sub_25E17AD20(uint64_t *a1))()
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
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E17FA78;
}

uint64_t (*sub_25E17ADEC(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
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

  v10 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__disableInteractivity;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E17FA7C;
}

uint64_t sub_25E17AF5C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();

  *a2 = v4;
  return result;
}

uint64_t sub_25E17AFDC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v5 = v2;
  v3 = v2;
  sub_25E17B060(&v5);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2;

  return sub_25E1A4CBC();
}

void sub_25E17B060(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();

  if (v2)
  {
    if (!v1)
    {
      [v2 resignFirstResponder];
    }
  }
}

uint64_t sub_25E17B0F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();
}

uint64_t sub_25E17B16C(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();

  if (v3)
  {
    if (!v1)
    {
      [v3 resignFirstResponder];
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25E1A4CBC();
}

void (*sub_25E17B240(void *a1))(void **a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();

  return sub_25E17B2CC;
}

void sub_25E17B2CC(void **a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  if (a2)
  {
    v5 = v4;
    sub_25E1A4CAC();

    v6 = a1[1];
    if (v6)
    {
      if (!v4)
      {
        [a1[1] resignFirstResponder];
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;

    sub_25E1A4CBC();
    v7 = *a1;
  }

  else
  {
    sub_25E1A4CAC();

    v8 = a1[1];
    if (v8)
    {
      if (!v4)
      {
        [a1[1] resignFirstResponder];
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;

    sub_25E1A4CBC();
  }
}

uint64_t sub_25E17B474(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBF8, &qword_25E1A6668);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBF0, &qword_25E1A6660);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25E17B614(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBF8, &qword_25E1A6668);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBF0, &qword_25E1A6660);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_25E17B74C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBF8, &qword_25E1A6668);
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

  v10 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__externalPasswordEntry;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBF0, &qword_25E1A6660);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E17FA7C;
}

uint64_t sub_25E17B8BC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();

  *a2 = v4;
  return result;
}

uint64_t sub_25E17B93C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25E1A4CBC();
}

uint64_t sub_25E17B9B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();

  return v1;
}

uint64_t sub_25E17BA24(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25E1A4CBC();
}

uint64_t (*sub_25E17BA94(uint64_t *a1))()
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
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E17FA78;
}

uint64_t sub_25E17BB38(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC08, &qword_25E1A66C0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC00, &qword_25E1A66B8);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25E17BCD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC08, &qword_25E1A66C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC00, &qword_25E1A66B8);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_25E17BE10(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC08, &qword_25E1A66C0);
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

  v10 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__isAuthenticationDetached;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC00, &qword_25E1A66B8);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E17FA7C;
}

uint64_t (*sub_25E17BFD0(uint64_t *a1))()
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
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E17FA78;
}

uint64_t (*sub_25E17C09C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
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

  v10 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__isSheetFullHeightOverrideEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E17FA7C;
}

uint64_t (*sub_25E17C25C(uint64_t *a1))()
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
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E17FA78;
}

uint64_t (*sub_25E17C328(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
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

  v10 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__shouldDisplaySheetFullHeight;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E17FA7C;
}

uint64_t sub_25E17C498()
{
  v1 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel_hasPearl;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_25E17C4DC(char a1)
{
  v3 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel_hasPearl;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_25E17C58C()
{
  v1 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel_physicalButtonEdge;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_25E17C5D0(int a1)
{
  v3 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel_physicalButtonEdge;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t (*sub_25E17C6D4(uint64_t *a1))()
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
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E17FA78;
}

uint64_t (*sub_25E17C7A0(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
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

  v10 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__isEvaluationPaused;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E17FA7C;
}

uint64_t sub_25E17C924@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();

  *a4 = v6;
  return result;
}

uint64_t sub_25E17C9B4(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25E1A4CBC();
}

uint64_t sub_25E17CA38(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();

  return v3;
}

uint64_t sub_25E17CAB8(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25E1A4CBC();
}

uint64_t (*sub_25E17CB24(uint64_t *a1))()
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
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E17FA78;
}

void sub_25E17CBC8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_25E17CC30(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_25E1A4C7C();
  return swift_endAccess();
}

uint64_t sub_25E17CCAC(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = *(v7 + 16);
  v13(&v15 - v11, a1, v6);
  v13(v10, v12, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_25E17CE54(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_25E1A4C7C();
  return swift_endAccess();
}

uint64_t sub_25E17CED8(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v7 - v5, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_25E17D010(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
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

  v10 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__isDetachedAuthenticationSheetPresented;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E17FA7C;
}

void sub_25E17D180(uint64_t a1, char a2)
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
    sub_25E1A4C8C();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_25E1A4C8C();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_25E17D2E8()
{
  v1 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel_alwaysHidePhysicalButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_25E17D32C(char a1)
{
  v3 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel_alwaysHidePhysicalButton;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t BaseAuthenticatorModel.__allocating_init(hasPearl:)(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  BaseAuthenticatorModel.init(hasPearl:)(v1);
  return v2;
}

uint64_t BaseAuthenticatorModel.init(hasPearl:)(int a1)
{
  v37 = a1;
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC00, &qword_25E1A66B8);
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x28223BE20](v2);
  v44 = &v36[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBF0, &qword_25E1A6660);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v36[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBE0, &qword_25E1A65C0);
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v38 = &v36[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC10, &qword_25E1A67E8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36[-v14];
  v16 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__authenticating;
  LOBYTE(v48) = 0;
  sub_25E1A4C6C();
  v17 = *(v13 + 32);
  v17(v1 + v16, v15, v12);
  v18 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__bypassAuthenticator;
  LOBYTE(v48) = 0;
  sub_25E1A4C6C();
  v17(v1 + v18, v15, v12);
  v19 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__isInBioLockout;
  LOBYTE(v48) = 0;
  sub_25E1A4C6C();
  v17(v1 + v19, v15, v12);
  v20 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__disablePasscodeFallback;
  LOBYTE(v48) = 0;
  sub_25E1A4C6C();
  v17(v1 + v20, v15, v12);
  v21 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__footerViewType;
  LOBYTE(v48) = 0;
  sub_25E1A4C6C();
  (*(v9 + 32))(v1 + v21, v11, v8);
  v22 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__showEnterPasswordButton;
  LOBYTE(v48) = 0;
  sub_25E1A4C6C();
  v17(v1 + v22, v15, v12);
  v23 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__passcodeEntry;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC18, &qword_25E1A67F0);
  v24 = v38;
  sub_25E1A4C6C();
  (*(v39 + 32))(v1 + v23, v24, v40);
  v25 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__disableInteractivity;
  LOBYTE(v48) = 1;
  sub_25E1A4C6C();
  v17(v1 + v25, v15, v12);
  v26 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__externalPasswordEntry;
  *&v48 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC20, &qword_25E1A67F8);
  v27 = v41;
  sub_25E1A4C6C();
  (*(v42 + 32))(v1 + v26, v27, v43);
  v28 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__isAuthenticationDetached;
  LOBYTE(v48) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC28, &qword_25E1A6800);
  v29 = v44;
  sub_25E1A4C6C();
  (*(v45 + 32))(v1 + v28, v29, v46);
  v30 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__isSheetFullHeightOverrideEnabled;
  LOBYTE(v48) = 0;
  sub_25E1A4C6C();
  v17(v1 + v30, v15, v12);
  v31 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__shouldDisplaySheetFullHeight;
  LOBYTE(v48) = 0;
  sub_25E1A4C6C();
  v17(v1 + v31, v15, v12);
  *(v1 + OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel_physicalButtonEdge) = 1;
  v32 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__isEvaluationPaused;
  LOBYTE(v48) = 0;
  sub_25E1A4C6C();
  v17(v1 + v32, v15, v12);
  v33 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__isDetachedAuthenticationSheetPresented;
  LOBYTE(v48) = 0;
  sub_25E1A4C6C();
  v17(v1 + v33, v15, v12);
  if (v47 == 2)
  {
    if (qword_2815603F0 != -1)
    {
      swift_once();
    }

    v34 = byte_2815603F8;
  }

  else
  {
    v34 = v37;
  }

  *(v1 + OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel_hasPearl) = v34 & 1;
  *(v1 + OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel_alwaysHidePhysicalButton) = 0;
  sub_25E17DAB8();
  return v1;
}

uint64_t sub_25E17DAB8()
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC38, &qword_25E1A6920);
  MEMORY[0x28223BE20](v36);
  v32 = &v27 - v0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
  v37 = *(v35 - 8);
  v1 = MEMORY[0x28223BE20](v35);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC08, &qword_25E1A66C0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC40, &qword_25E1A6928);
  MEMORY[0x28223BE20](v29);
  v27 = &v27 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC48, &qword_25E1A6930);
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC50, &qword_25E1A6938);
  v16 = *(v15 - 8);
  v33 = v15;
  v34 = v16;
  MEMORY[0x28223BE20](v15);
  v28 = &v27 - v17;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC00, &qword_25E1A66B8);
  sub_25E1A4C7C();
  swift_endAccess();
  v18 = MEMORY[0x277CBCEC8];
  sub_25E17F9C0(&qword_28155FA68, &qword_27FCDCC08, &qword_25E1A66C0, MEMORY[0x277CBCEC8]);
  sub_25E1A4CDC();
  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C7C();
  swift_endAccess();
  swift_beginAccess();
  sub_25E1A4C7C();
  swift_endAccess();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC10, &qword_25E1A67E8);
  sub_25E1A4C7C();
  swift_endAccess();
  v19 = MEMORY[0x277CBCB10];
  sub_25E17F9C0(&qword_28155FA80, &qword_27FCDCC40, &qword_25E1A6928, MEMORY[0x277CBCB10]);
  sub_25E17F9C0(&qword_28155FA60, &qword_27FCDCE80, &qword_25E1A6450, v18);
  sub_25E17F9C0(&qword_28155FA70, &qword_27FCDCC38, &qword_25E1A6920, v18);
  v20 = v3;
  v21 = v35;
  sub_25E1A4C4C();
  sub_25E17F9C0(qword_28155FA88, &qword_27FCDCC48, &qword_25E1A6930, MEMORY[0x277CBCB00]);
  v22 = v28;
  v23 = v30;
  sub_25E1A4CDC();
  (*(v31 + 8))(v14, v23);
  swift_beginAccess();
  sub_25E1A4C7C();
  swift_endAccess();
  sub_25E17F9C0(&qword_28155FA78, &qword_27FCDCC50, &qword_25E1A6938, v19);
  v24 = v33;
  sub_25E1A4CEC();
  (*(v34 + 8))(v22, v24);
  v25 = v37;
  (*(v37 + 16))(v20, v5, v21);
  swift_beginAccess();
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v25 + 8))(v5, v21);
}

_BYTE *sub_25E17E19C@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (result[2])
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  if (*result)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t BaseAuthenticatorModel.deinit()
{
  v1 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__authenticating;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__bypassAuthenticator, v2);
  v3(v0 + OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__isInBioLockout, v2);
  v3(v0 + OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__disablePasscodeFallback, v2);
  v4 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__footerViewType;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC10, &qword_25E1A67E8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__showEnterPasswordButton, v2);
  v6 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__passcodeEntry;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBE0, &qword_25E1A65C0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v3(v0 + OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__disableInteractivity, v2);
  v8 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__externalPasswordEntry;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBF0, &qword_25E1A6660);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__isAuthenticationDetached;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC00, &qword_25E1A66B8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v3(v0 + OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__isSheetFullHeightOverrideEnabled, v2);
  v3(v0 + OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__shouldDisplaySheetFullHeight, v2);
  v3(v0 + OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__isEvaluationPaused, v2);
  v3(v0 + OBJC_IVAR____TtC13PaymentUIBase22BaseAuthenticatorModel__isDetachedAuthenticationSheetPresented, v2);
  return v0;
}

uint64_t BaseAuthenticatorModel.__deallocating_deinit()
{
  BaseAuthenticatorModel.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_25E17E4D4()
{
  result = qword_27FCDCC30;
  if (!qword_27FCDCC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDCC30);
  }

  return result;
}

uint64_t sub_25E17E534@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BaseAuthenticatorModel(0);
  result = sub_25E1A4C5C();
  *a2 = result;
  return result;
}

uint64_t keypath_get_117Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_118Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for FooterViewType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FooterViewType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
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
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for BaseAuthenticatorModel(uint64_t a1)
{
  result = qword_2815601C8;
  if (!qword_2815601C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25E17E7D8(uint64_t a1)
{
  sub_25E17F8D8(319, &qword_28155FA38, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    sub_25E17F8D8(319, &qword_28155FA50, &type metadata for FooterViewType);
    if (v2 <= 0x3F)
    {
      sub_25E17F96C(319, &qword_28155FA48, &qword_27FCDCC18, &qword_25E1A67F0);
      if (v3 <= 0x3F)
      {
        sub_25E17F96C(319, &qword_28155FA40, &qword_27FCDCC20, &qword_25E1A67F8);
        if (v4 <= 0x3F)
        {
          sub_25E17F96C(319, &qword_28155FA30, &qword_27FCDCC28, &qword_25E1A6800);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_25E17F8D8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_25E1A4CCC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_25E17F96C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_25E1A4CCC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_25E17F9C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void *sub_25E17FA08(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v7 = result;

    return sub_25E17FA64(a4, a5);
  }

  return result;
}

uint64_t sub_25E17FA64(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t PaymentItemPrimaryLabel.init(title:subtextView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>, uint64_t a7@<X3>)
{
  v11 = type metadata accessor for PaymentItemPrimaryLabel(0, a4, a5, a7);
  v12 = (a6 + v11[10]);
  if (qword_28155F9C0 != -1)
  {
    swift_once();
  }

  v13 = MEMORY[0x277CE0F60];
  v14 = qword_28155F9C8;
  v12[3] = MEMORY[0x277CE0F78];
  v12[4] = v13;
  *v12 = v14;
  v15 = a6 + v11[11];
  *v15 = 0;
  v15[8] = 1;
  v16 = v11[12];
  v17 = qword_27FCDCAC8;

  if (v17 != -1)
  {
    swift_once();
  }

  *(a6 + v16) = qword_27FCDD410;
  *a6 = a1;
  a6[1] = a2;

  return a3(v18);
}

uint64_t PaymentItemPrimaryLabel.body.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDCC58, &qword_25E1A6950);
  v5 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  v6 = sub_25E1A566C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v17[-v11];
  sub_25E1A503C();
  v13 = *(a1 + 24);
  v18 = v5;
  v19 = v13;
  v20 = v2;
  sub_25E1A565C();
  swift_getWitnessTable();
  v14 = *(v7 + 16);
  v14(v12, v10, v6);
  v15 = *(v7 + 8);
  v15(v10, v6);
  v14(a2, v12, v6);
  return (v15)(v12, v6);
}

uint64_t sub_25E17FDD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a4;
  v67 = a3;
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v65 = v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCD90, &qword_25E1A6B80);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v55 - v13;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC58, &qword_25E1A6950);
  v15 = MEMORY[0x28223BE20](v63);
  v64 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v55 - v18;
  v20 = v5[1];
  if (v20)
  {
    v68 = v5;
    v21 = *v5;
    v22 = type metadata accessor for PaymentItemPrimaryLabel(0, a2, v67, v17);
    v23 = *(v22 + 40);
    v58 = v22;
    v62 = v6;
    v24 = *(v68 + v23 + 24);
    v55[1] = *(v68 + v23 + 32);
    v55[0] = __swift_project_boxed_opaque_existential_1((v68 + v23), v24);
    v69 = v21;
    v70 = v20;
    sub_25E180F4C();
    v59 = v11;

    v25 = sub_25E1A53CC();
    v27 = v26;
    v57 = v12;
    v29 = v28;
    v61 = v9;
    v30 = sub_25E1A539C();
    v60 = v19;
    v31 = v30;
    v33 = v32;
    v56 = v14;
    v35 = v34;
    sub_25E180FA0(v25, v27, v29 & 1);

    v36 = sub_25E1A538C();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_25E180FA0(v31, v33, v35 & 1);

    KeyPath = swift_getKeyPath();
    v69 = v36;
    v70 = v38;
    v40 &= 1u;
    v71 = v40;
    v72 = v42;
    v73 = KeyPath;
    v74 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCDB0, &qword_25E1A6B88);
    sub_25E181948();
    v44 = v56;
    v19 = v60;
    sub_25E1A548C();
    v5 = v68;
    v45 = v38;
    v6 = v62;
    sub_25E180FA0(v36, v45, v40);
    v9 = v61;

    sub_25E181A90(v44, v19, &qword_27FCDCD90, &qword_25E1A6B80);
    (*(v57 + 56))(v19, 0, 1, v59);
    v46 = v58;
  }

  else
  {
    (*(v12 + 56))(v55 - v18, 1, 1, v11);
    v46 = type metadata accessor for PaymentItemPrimaryLabel(0, a2, v67, v47);
  }

  v48 = *(v6 + 16);
  v49 = v65;
  v48(v65, v5 + *(v46 + 36), a2);
  v50 = v19;
  v51 = v19;
  v52 = v64;
  sub_25E1817AC(v50, v64, &qword_27FCDCC58, &qword_25E1A6950);
  v69 = v52;
  v48(v9, v49, a2);
  v70 = v9;
  v77[0] = v63;
  v77[1] = a2;
  v75 = sub_25E181814();
  v76 = v67;
  sub_25E198E40(&v69, 2uLL, v77);
  v53 = *(v6 + 8);
  v53(v49, a2);
  sub_25E1819EC(v51, &qword_27FCDCC58, &qword_25E1A6950);
  v53(v9, a2);
  return sub_25E1819EC(v52, &qword_27FCDCC58, &qword_25E1A6950);
}

uint64_t SubtextView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC60, &qword_25E1A6958);
  MEMORY[0x28223BE20](v3);
  v5 = v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC68, &qword_25E1A6960);
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  v9 = v1[1];
  if (v9)
  {
    v29[1] = v1[2];
    *&v34[0] = *v1;
    *(&v34[0] + 1) = v9;
    sub_25E180F4C();

    v10 = sub_25E1A53CC();
    v12 = v11;
    v14 = v13;
    v29[4] = a1;
    v15 = sub_25E1A539C();
    v29[3] = v6;
    v17 = v16;
    v29[2] = v3;
    v19 = v18;
    sub_25E180FA0(v10, v12, v14 & 1);

    v20 = sub_25E1A537C();
    v22 = v21;
    LOBYTE(v12) = v23;
    v25 = v24;
    sub_25E180FA0(v15, v17, v19 & 1);

    KeyPath = swift_getKeyPath();
    v27 = swift_getKeyPath();
    v33 = v12 & 1;
    *&v30 = v20;
    *(&v30 + 1) = v22;
    LOBYTE(v31) = v12 & 1;
    *(&v31 + 1) = v25;
    *v32 = KeyPath;
    v32[8] = 1;
    *&v32[16] = v27;
    v32[24] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC80, &qword_25E1A6968);
    sub_25E180D58();
    sub_25E1A548C();
    v34[0] = v30;
    v34[1] = v31;
    v35[0] = *v32;
    *(v35 + 9) = *&v32[9];
    sub_25E1819EC(v34, &qword_27FCDCC80, &qword_25E1A6968);
    sub_25E1817AC(v8, v5, &qword_27FCDCC68, &qword_25E1A6960);
    swift_storeEnumTagMultiPayload();
    sub_25E1818C4(&qword_27FCDCC70, &qword_27FCDCC68, &qword_25E1A6960, sub_25E180D58);
    sub_25E1A515C();
    return sub_25E1819EC(v8, &qword_27FCDCC68, &qword_25E1A6960);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_25E1818C4(&qword_27FCDCC70, &qword_27FCDCC68, &qword_25E1A6960, sub_25E180D58);
    return sub_25E1A515C();
  }
}

uint64_t AttributedSubtextView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC60, &qword_25E1A6958);
  MEMORY[0x28223BE20](v26);
  v3 = &v26 - v2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC68, &qword_25E1A6960);
  MEMORY[0x28223BE20](v27);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCCC0, &qword_25E1A69E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_25E1A4B7C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  sub_25E1817AC(v1, v8, &qword_27FCDCCC0, &qword_25E1A69E8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_25E1819EC(v8, &qword_27FCDCCC0, &qword_25E1A69E8);
    swift_storeEnumTagMultiPayload();
    sub_25E1818C4(&qword_27FCDCC70, &qword_27FCDCC68, &qword_25E1A6960, sub_25E180D58);
    return sub_25E1A515C();
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v13, v15, v9);
    v17 = sub_25E1A53BC();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    KeyPath = swift_getKeyPath();
    v25 = swift_getKeyPath();
    v32 = v21 & 1;
    *&v29 = v17;
    *(&v29 + 1) = v19;
    LOBYTE(v30) = v21 & 1;
    *(&v30 + 1) = v23;
    *v31 = KeyPath;
    v31[8] = 1;
    *&v31[16] = v25;
    v31[24] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCC80, &qword_25E1A6968);
    sub_25E180D58();
    sub_25E1A548C();
    v33[0] = v29;
    v33[1] = v30;
    v34[0] = *v31;
    *(v34 + 9) = *&v31[9];
    sub_25E1819EC(v33, &qword_27FCDCC80, &qword_25E1A6968);
    sub_25E1817AC(v5, v3, &qword_27FCDCC68, &qword_25E1A6960);
    swift_storeEnumTagMultiPayload();
    sub_25E1818C4(&qword_27FCDCC70, &qword_27FCDCC68, &qword_25E1A6960, sub_25E180D58);
    sub_25E1A515C();
    sub_25E1819EC(v5, &qword_27FCDCC68, &qword_25E1A6960);
    return (*(v10 + 8))(v15, v9);
  }
}

uint64_t PaymentItemPrimaryLabel<>.init(title:text:textColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (qword_28155F9C0 != -1)
  {
    swift_once();
  }

  v12 = qword_28155F9C8;
  v13 = MEMORY[0x277CE0F60];
  *(a6 + 72) = MEMORY[0x277CE0F78];
  *(a6 + 80) = v13;
  *(a6 + 48) = v12;
  *(a6 + 88) = 0;
  *(a6 + 96) = 1;
  v14 = qword_27FCDCAC8;

  if (v14 != -1)
  {
    swift_once();
  }

  *(a6 + 104) = qword_27FCDD410;
  *a6 = a1;
  *(a6 + 8) = a2;

  result = sub_25E1A52DC();
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = result;
  return result;
}

uint64_t PaymentItemPrimaryLabel<>.init(title:attributedText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FCDCCC8, &qword_25E1A69F0);
  v9 = (a4 + v8[10]);
  if (qword_28155F9C0 != -1)
  {
    swift_once();
  }

  v10 = MEMORY[0x277CE0F60];
  v11 = qword_28155F9C8;
  v9[3] = MEMORY[0x277CE0F78];
  v9[4] = v10;
  *v9 = v11;
  v12 = a4 + v8[11];
  *v12 = 0;
  v12[8] = 1;
  v13 = v8[12];
  v14 = qword_27FCDCAC8;

  if (v14 != -1)
  {
    swift_once();
  }

  *(a4 + v13) = qword_27FCDD410;
  *a4 = a1;
  a4[1] = a2;
  sub_25E181A90(a3, a4 + v8[9], &qword_27FCDCCC0, &qword_25E1A69E8);
}

unint64_t sub_25E180D58()
{
  result = qword_27FCDCC78;
  if (!qword_27FCDCC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDCC80, &qword_25E1A6968);
    sub_25E180DFC();
    sub_25E180EA0(&qword_27FCDCCA8, &qword_27FCDCCB0, &qword_25E1A6980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDCC78);
  }

  return result;
}

unint64_t sub_25E180DFC()
{
  result = qword_27FCDCC88;
  if (!qword_27FCDCC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDCC90, &qword_25E1A6970);
    sub_25E180EA0(&qword_27FCDCC98, &qword_27FCDCCA0, &qword_25E1A6978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDCC88);
  }

  return result;
}

uint64_t sub_25E180EA0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_25E180EF4()
{
  result = qword_27FCDCCB8;
  if (!qword_27FCDCCB8)
  {
    sub_25E1A524C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDCCB8);
  }

  return result;
}

unint64_t sub_25E180F4C()
{
  result = qword_28155F970;
  if (!qword_28155F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28155F970);
  }

  return result;
}

uint64_t sub_25E180FA0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_25E181034(uint64_t a1)
{
  sub_25E1814CC(319, &qword_27FCDCD50, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_25E181468();
      if (v3 <= 0x3F)
      {
        sub_25E1814CC(319, &qword_27FCDCD60, MEMORY[0x277D85048]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25E181114(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 16) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

double sub_25E181274(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v20 = &a1[v8 + 16] & ~v8;
      if (v6 < 0x7FFFFFFF)
      {
        v22 = (v9 + v20) & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          result = 0.0;
          *(v22 + 8) = 0u;
          *(v22 + 24) = 0u;
          *v22 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v22 + 24) = a2 - 1;
        }
      }

      else
      {
        v21 = *(v5 + 56);

        v21(v20);
      }

      return result;
    }
  }

  if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = a1;
    bzero(a1, ((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 8);
    a1 = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&a1[v10] = v16;
    }

    else
    {
      *&a1[v10] = v16;
    }
  }

  else if (v14)
  {
    a1[v10] = v16;
  }

  return result;
}

unint64_t sub_25E181468()
{
  result = qword_27FCDCD58;
  if (!qword_27FCDCD58)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FCDCD58);
  }

  return result;
}

void sub_25E1814CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_25E1A58CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25E181524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25E18156C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t type metadata accessor for AttributedSubtextView(uint64_t a1)
{
  result = qword_27FCDCD68;
  if (!qword_27FCDCD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25E181630(uint64_t a1)
{
  sub_25E18169C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25E18169C(uint64_t a1)
{
  if (!qword_27FCDCD78)
  {
    sub_25E1A4B7C();
    v1 = sub_25E1A58CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27FCDCD78);
    }
  }
}

unint64_t sub_25E1816F4()
{
  result = qword_27FCDCD80;
  if (!qword_27FCDCD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDCD88, &qword_25E1A6B78);
    sub_25E1818C4(&qword_27FCDCC70, &qword_27FCDCC68, &qword_25E1A6960, sub_25E180D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDCD80);
  }

  return result;
}

uint64_t sub_25E1817AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_25E181814()
{
  result = qword_27FCDCD98;
  if (!qword_27FCDCD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDCC58, &qword_25E1A6950);
    sub_25E1818C4(&qword_27FCDCDA0, &qword_27FCDCD90, &qword_25E1A6B80, sub_25E181948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDCD98);
  }

  return result;
}

uint64_t sub_25E1818C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_25E180EF4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25E181948()
{
  result = qword_27FCDCDA8;
  if (!qword_27FCDCDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDCDB0, &qword_25E1A6B88);
    sub_25E180EA0(&qword_27FCDCCA8, &qword_27FCDCCB0, &qword_25E1A6980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDCDA8);
  }

  return result;
}

uint64_t sub_25E1819EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25E181A90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t PhysicalButtonView.init(glyph:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;

  return sub_25E181C24(a1, a2 + 16);
}

void *sub_25E181B88@<X0>(_BYTE *a1@<X8>)
{
  sub_25E1832FC();
  result = sub_25E1A4F9C();
  *a1 = v3;
  return result;
}

uint64_t sub_25E181C24(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id PhysicalButtonView.makeUIView(context:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D24228]) initWithStyle_];
  if (v0)
  {
    v1 = v0;
    sub_25E181D94(v0);
    v2 = type metadata accessor for PhysicalButtonContainerView();
    v3 = objc_allocWithZone(v2);
    *&v3[OBJC_IVAR____TtC13PaymentUIBase27PhysicalButtonContainerView_buttonView] = v1;
    v4 = v1;
    v5 = sub_25E1A57EC();
    [v4 setAccessibilityIdentifier_];

    v8.receiver = v3;
    v8.super_class = v2;
    v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    [v6 addSubview_];

    return v6;
  }

  else
  {
    result = sub_25E1A593C();
    __break(1u);
  }

  return result;
}

id sub_25E181D94(void *a1)
{
  v2 = v1;
  v4 = sub_25E1A4F8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(v2 + 8) == 1)
  {
    v23 = *v2;
    if (v8 != 4)
    {
      goto LABEL_11;
    }
  }

  else
  {

    sub_25E1A588C();
    v9 = sub_25E1A525C();
    sub_25E1A4C0C();

    sub_25E1A4F7C();
    swift_getAtKeyPath();
    sub_25E1832F0(v8, 0);
    (*(v5 + 8))(v7, v4);
    if (v23 != 4)
    {
LABEL_11:
      v10 = 0;
      goto LABEL_12;
    }
  }

  if (qword_2815603F0 != -1)
  {
    swift_once();
  }

  if (byte_2815603F8)
  {
    goto LABEL_11;
  }

  if (qword_27FCDC9D0 != -1)
  {
    swift_once();
  }

  if (byte_27FCDC9D8)
  {
    goto LABEL_11;
  }

  v20 = *(v2 + 40);
  v21 = *(v2 + 48);
  __swift_project_boxed_opaque_existential_1((v2 + 16), v20);
  v10 = (*(v21 + 56))(v20, v21) ^ 1;
LABEL_12:
  v11 = *(v2 + 40);
  v12 = *(v2 + 48);
  __swift_project_boxed_opaque_existential_1((v2 + 16), v11);
  v13 = (*(v12 + 24))(v11, v12);
  v14 = 1;
  if (v10)
  {
    v14 = 2;
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  [a1 setAnimationStyle_];
  sub_25E1823D8(v10 & 1);
  v16 = sub_25E1A57EC();

  [a1 setInstruction_];

  v17 = *(v2 + 40);
  v18 = *(v2 + 48);
  __swift_project_boxed_opaque_existential_1((v2 + 16), v17);
  return [a1 setAnimating_];
}

uint64_t PhysicalButtonView.updateUIView(_:context:)(char *a1)
{
  if (qword_27FCDCAB8 != -1)
  {
    swift_once();
  }

  v3 = sub_25E1A4C3C();
  __swift_project_value_buffer(v3, qword_27FCDD100);
  sub_25E182804(v1, aBlock);
  v4 = sub_25E1A4C1C();
  v5 = sub_25E1A589C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    v8 = v22;
    v9 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    if ((*(v9 + 24))(v8, v9))
    {
      v10 = 2003789907;
    }

    else
    {
      v10 = 1701079368;
    }

    sub_25E18283C(aBlock);
    v11 = sub_25E1828C8(v10, 0xE400000000000000, &v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_25E174000, v4, v5, "Update button view: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x25F8ADA60](v7, -1, -1);
    MEMORY[0x25F8ADA60](v6, -1, -1);
  }

  else
  {

    sub_25E18283C(aBlock);
  }

  sub_25E181D94(*&a1[OBJC_IVAR____TtC13PaymentUIBase27PhysicalButtonContainerView_buttonView]);
  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_25E18286C;
  *(v14 + 24) = v13;
  v21[2] = sub_25E182888;
  v22 = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  v21[0] = sub_25E1823B0;
  v21[1] = &block_descriptor;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  [v12 performWithoutAnimation_];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25E1823D8(char a1)
{
  if (a1)
  {
    if (qword_27FCDCAF0 != -1)
    {
      swift_once();
    }

    v2 = qword_27FCDD5A8;
    v3 = sub_25E1A57EC();
    v4 = sub_25E1A57EC();
    v5 = sub_25E1A57EC();
    v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

    v7 = sub_25E1A580C();
    return v7;
  }

  else
  {
    v9 = v1[5];
    v10 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v9);
    return (*(v10 + 32))(v9, v10);
  }
}

uint64_t sub_25E182570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E18323C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_25E1825D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E18323C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_25E182638(uint64_t a1)
{
  sub_25E18323C();
  sub_25E1A510C();
  __break(1u);
}

id PhysicalButtonContainerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PhysicalButtonContainerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhysicalButtonContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25E1828C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25E182994(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25E183290(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25E182994(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25E182AA0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25E1A592C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_25E182AA0(uint64_t a1, unint64_t a2)
{
  v3 = sub_25E182AEC(a1, a2);
  sub_25E182C1C(&unk_286FDC850);
  return v3;
}

void *sub_25E182AEC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25E182D08(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25E1A592C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25E1A582C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25E182D08(v10, 0);
        result = sub_25E1A590C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25E182C1C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25E182D7C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25E182D08(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCDD0, &qword_25E1A6D70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25E182D7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCDD0, &qword_25E1A6D70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
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

uint64_t _s13PaymentUIBase18PhysicalButtonViewV08physicalD4EdgeSo06CGRectG0VyFZ_0()
{
  LAUIPhysicalButtonNormalizedFrame();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v38 = v6;
  v7 = objc_opt_self();
  v8 = [v7 mainScreen];
  v9 = [v8 coordinateSpace];

  v10 = [v7 mainScreen];
  v11 = [v10 fixedCoordinateSpace];

  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v9 bounds];
  rect_24.origin.x = v20;
  rect_24.origin.y = v21;
  rect_24.size.width = v22;
  rect_24.size.height = v23;
  v39.origin.x = v13;
  v39.origin.y = v15;
  v39.size.width = v17;
  v39.size.height = v19;
  rect = v1;
  rect_16 = v13 + v1 * CGRectGetWidth(v39);
  v40.origin.x = v13;
  v40.origin.y = v15;
  v40.size.width = v17;
  v40.size.height = v19;
  rect_8 = v15 + v3 * CGRectGetHeight(v40);
  v41.origin.x = v1;
  v41.origin.y = v3;
  v41.size.width = v5;
  v41.size.height = v38;
  Width = CGRectGetWidth(v41);
  v42.origin.x = v13;
  v42.origin.y = v15;
  v42.size.width = v17;
  v42.size.height = v19;
  v25 = Width * CGRectGetWidth(v42);
  v43.origin.x = rect;
  v43.origin.y = v3;
  v43.size.width = v5;
  v43.size.height = v38;
  Height = CGRectGetHeight(v43);
  v44.origin.x = v13;
  v44.origin.y = v15;
  v44.size.width = v17;
  v44.size.height = v19;
  [v9 convertRect:v11 fromCoordinateSpace:{rect_16, rect_8, v25, Height * CGRectGetHeight(v44)}];
  if (v29 <= 0.0)
  {
    v32 = v28;
    MidY = CGRectGetMidY(rect_24);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (MidY > v32)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    v30 = CGRectGetMidX(rect_24) <= v27;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return (2 * v30);
  }
}

unint64_t sub_25E1830F8()
{
  result = qword_27FCDCDC0;
  if (!qword_27FCDCDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDCDC0);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25E183180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25E1831C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25E18323C()
{
  result = qword_27FCDCDC8;
  if (!qword_27FCDCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDCDC8);
  }

  return result;
}

uint64_t sub_25E183290(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25E1832F0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_25E1832FC()
{
  result = qword_2815603C8;
  if (!qword_2815603C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815603C8);
  }

  return result;
}

uint64_t ChevronStyle.hashValue.getter()
{
  v1 = *v0;
  sub_25E1A59BC();
  MEMORY[0x25F8AD450](v1);
  return sub_25E1A59DC();
}

uint64_t ChevronView.init(style:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_getKeyPath();
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *a2 = v3;
  return result;
}

uint64_t ChevronView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = sub_25E1A4F8C();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCDD8, &qword_25E1A6DA8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = (&v39 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCDE0, &qword_25E1A6DB0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = *v1;
  v42 = *(v1 + 1);
  v12 = v1[16];
  v13 = sub_25E1A55BC();
  v14 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCDE8, &qword_25E1A6DB8) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCDF0, &qword_25E1A6DC0) + 28);
  v16 = *MEMORY[0x277CE1050];
  v17 = sub_25E1A55CC();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = swift_getKeyPath();
  *v7 = v13;
  sub_25E1A52DC();
  sub_25E1A532C();
  v18 = sub_25E1A534C();

  KeyPath = swift_getKeyPath();
  v20 = (v7 + *(v5 + 44));
  *v20 = KeyPath;
  v20[1] = v18;
  if (v11 == 3)
  {
    if (qword_27FCDCA48 != -1)
    {
      swift_once();
    }

    v21 = qword_27FCDCB68;

    goto LABEL_7;
  }

  if (v11 == 2)
  {
    v21 = sub_25E1A553C();
LABEL_7:
    v23 = v42;
    v22 = v43;
    goto LABEL_11;
  }

  v23 = v42;
  v22 = v43;
  if (qword_27FCDCA68 != -1)
  {
    swift_once();
  }

  v21 = qword_27FCDCB88;

LABEL_11:
  v24 = swift_getKeyPath();
  sub_25E181A90(v7, v10, &qword_27FCDCDD8, &qword_25E1A6DA8);
  v25 = &v10[*(v8 + 36)];
  *v25 = v24;
  v25[1] = v21;
  v26 = sub_25E1A528C();
  if (!v12)
  {

    sub_25E1A588C();
    v27 = sub_25E1A525C();
    sub_25E1A4C0C();

    v28 = v39;
    sub_25E1A4F7C();
    swift_getAtKeyPath();
    sub_25E1832F0(v23, 0);
    (*(v40 + 8))(v28, v41);
  }

  sub_25E1A4CFC();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_25E181A90(v10, v22, &qword_27FCDCDE0, &qword_25E1A6DB0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCDF8, &qword_25E1A6E58);
  v38 = v22 + *(result + 36);
  *v38 = v26;
  *(v38 + 8) = v30;
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = v36;
  *(v38 + 40) = 0;
  return result;
}

uint64_t sub_25E1838A4(uint64_t a1)
{
  v2 = sub_25E1A55CC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25E1A4E5C();
}

uint64_t sub_25E18396C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E1A4F5C();
  *a1 = result;
  return result;
}

uint64_t sub_25E1839C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E1A4EAC();
  *a1 = result;
  return result;
}

unint64_t sub_25E183A20()
{
  result = qword_27FCDCE00;
  if (!qword_27FCDCE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDCE00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChevronStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ChevronStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25E183C00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_25E183C48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_25E183C9C()
{
  result = qword_27FCDCE08;
  if (!qword_27FCDCE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDCDF8, &qword_25E1A6E58);
    sub_25E183D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDCE08);
  }

  return result;
}

unint64_t sub_25E183D28()
{
  result = qword_27FCDCE10;
  if (!qword_27FCDCE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDCDE0, &qword_25E1A6DB0);
    sub_25E183DCC();
    sub_25E180EA0(&qword_27FCDCE40, &qword_27FCDCE48, &qword_25E1A8180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDCE10);
  }

  return result;
}

unint64_t sub_25E183DCC()
{
  result = qword_27FCDCE18;
  if (!qword_27FCDCE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDCDD8, &qword_25E1A6DA8);
    sub_25E183E70();
    sub_25E180EA0(&qword_27FCDCE30, &qword_27FCDCE38, &qword_25E1A7EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDCE18);
  }

  return result;
}

unint64_t sub_25E183E70()
{
  result = qword_27FCDCE20;
  if (!qword_27FCDCE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDCDE8, &qword_25E1A6DB8);
    sub_25E180EA0(&qword_27FCDCE28, &qword_27FCDCDF0, &qword_25E1A6DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDCE20);
  }

  return result;
}

uint64_t AuthorizationViewHostingControllerContext.__allocating_init()()
{
  v0 = swift_allocObject();
  AuthorizationViewHostingControllerContext.init()();
  return v0;
}

uint64_t AuthorizationViewHostingControllerContext.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE50, &qword_25E1A6FD0);
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x28223BE20](v1);
  v26 = &v22 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE58, &qword_25E1A6FD8);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - v4;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE60, &unk_25E1A6FE0);
  v6 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  v13 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__isPresented;
  LOBYTE(v29) = 0;
  sub_25E1A4C6C();
  v14 = *(v10 + 32);
  v14(v0 + v13, v12, v9);
  v15 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__isArmable[0];
  LOBYTE(v29) = 1;
  sub_25E1A4C6C();
  v14(v0 + v15, v12, v9);
  v16 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__armableObserverError;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCDCE68, &qword_25E1A6FF0);
  sub_25E1A4C6C();
  (*(v6 + 32))(v0 + v16, v8, v23);
  v17 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__physicalButtonEdge;
  LODWORD(v29) = _s13PaymentUIBase18PhysicalButtonViewV08physicalD4EdgeSo06CGRectG0VyFZ_0();
  type metadata accessor for CGRectEdge();
  sub_25E1A4C6C();
  (*(v24 + 32))(v0 + v17, v5, v25);
  v18 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__isAnimating;
  LOBYTE(v29) = 0;
  sub_25E1A4C6C();
  v14(v0 + v18, v12, v9);
  v19 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__screen;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE78, &qword_25E1A6FF8);
  v20 = v26;
  sub_25E1A4C6C();
  (*(v27 + 32))(v0 + v19, v20, v28);
  *(v0 + OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext_shouldSupportLandscapeOrientation) = 0;
  *(v0 + OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext_animationDuration) = 0x3FD3333333333333;
  *(v0 + OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext_springAnimationDuration) = 0x3FE199999999999ALL;
  return v0;
}

uint64_t (*sub_25E1843A4(uint64_t *a1))()
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
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E17FA78;
}

uint64_t (*sub_25E184470(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
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

  v10 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__isPresented;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E17FA7C;
}

uint64_t (*sub_25E184630(uint64_t *a1))()
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
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E17FA78;
}

uint64_t (*sub_25E1846FC(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
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

  v10 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__isArmable[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E179E08;
}

uint64_t sub_25E184880(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_25E1A4CBC();
}

uint64_t (*sub_25E184924(uint64_t *a1))()
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
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E17FA78;
}

uint64_t sub_25E1849C8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE88, &qword_25E1A70E0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE60, &unk_25E1A6FE0);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25E184B68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE88, &qword_25E1A70E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE60, &unk_25E1A6FE0);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_25E184CA0(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE88, &qword_25E1A70E0);
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

  v10 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__armableObserverError;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE60, &unk_25E1A6FE0);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E17FA7C;
}

uint64_t sub_25E184E10@<X0>(_DWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();

  *a2 = v4;
  return result;
}

uint64_t sub_25E184E90(int *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25E1A4CBC();
}

uint64_t sub_25E184F04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();

  return v1;
}

uint64_t sub_25E184F78(int a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25E1A4CBC();
}

uint64_t (*sub_25E184FE8(uint64_t *a1))()
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
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E17FA78;
}

uint64_t sub_25E18508C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE90, &qword_25E1A7130);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE58, &qword_25E1A6FD8);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25E18522C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE90, &qword_25E1A7130);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE58, &qword_25E1A6FD8);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_25E185364(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE90, &qword_25E1A7130);
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

  v10 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__physicalButtonEdge;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE58, &qword_25E1A6FD8);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E17FA7C;
}

uint64_t (*sub_25E185524(uint64_t *a1))()
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
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E179C6C;
}

uint64_t sub_25E1855C8(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = *(v7 + 16);
  v13(&v15 - v11, a1, v6);
  v13(v10, v12, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_25E18577C(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v7 - v5, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_25E1858B4(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
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

  v10 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__isAnimating;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E17FA7C;
}

uint64_t sub_25E185A38@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();

  *a4 = v6;
  return result;
}

uint64_t sub_25E185AB4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_25E1A4CBC();
}

uint64_t sub_25E185B40(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();

  return v3;
}

uint64_t sub_25E185BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25E1A4CBC();
}

uint64_t (*sub_25E185C2C(uint64_t *a1))()
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
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E17FA78;
}

uint64_t sub_25E185CD0(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCDCE98, &unk_25E1A71C8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE50, &qword_25E1A6FD0);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25E185E70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCDCE98, &unk_25E1A71C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE50, &qword_25E1A6FD0);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_25E185FA8(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCDCE98, &unk_25E1A71C8);
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

  v10 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__screen;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE50, &qword_25E1A6FD0);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E17FA7C;
}

uint64_t sub_25E186118()
{
  v1 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext_shouldSupportLandscapeOrientation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_25E18615C(char a1)
{
  v3 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext_shouldSupportLandscapeOrientation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AuthorizationViewHostingControllerContext.deinit()
{
  v1 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__isPresented;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__isArmable[0], v2);
  v4 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__armableObserverError;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE60, &unk_25E1A6FE0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__physicalButtonEdge;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE58, &qword_25E1A6FD8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v3(v0 + OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__isAnimating, v2);
  v8 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__screen;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE50, &qword_25E1A6FD0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t AuthorizationViewHostingControllerContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__isPresented;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__isArmable[0], v2);
  v4 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__armableObserverError;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE60, &unk_25E1A6FE0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__physicalButtonEdge;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE58, &qword_25E1A6FD8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v3(v0 + OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__isAnimating, v2);
  v8 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext__screen;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE50, &qword_25E1A6FD0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  return swift_deallocClassInstance();
}

uint64_t sub_25E18659C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AuthorizationViewHostingControllerContext(0);
  result = sub_25E1A4C5C();
  *a2 = result;
  return result;
}

id AuthorizationViewHostingController.__allocating_init(rootView:context:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v2);
  v7 = sub_25E1880A8(a1, a2);

  (*(*(*(v3 + class metadata base offset for AuthorizationViewHostingController) - 8) + 8))(a1);
  return v7;
}

id AuthorizationViewHostingController.init(rootView:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85000] & *v2;
  v5 = sub_25E1880A8(a1, a2);

  (*(*(*(v4 + class metadata base offset for AuthorizationViewHostingController) - 8) + 8))(a1);
  return v5;
}

void sub_25E18671C(void *a1)
{
  userInterface()();
  sub_25E1A593C();
  __break(1u);
}

uint64_t sub_25E186808()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  if (*(v0 + *(v1 + class metadata base offset for AuthorizationViewHostingController + 16)) == 4)
  {
    return 30;
  }

  v3 = *(v0 + *(v1 + class metadata base offset for AuthorizationViewHostingController + 24));
  v4 = OBJC_IVAR____TtC13PaymentUIBase41AuthorizationViewHostingControllerContext_shouldSupportLandscapeOrientation;
  swift_beginAccess();
  if (*(v3 + v4))
  {
    return 26;
  }

  else
  {
    return 2;
  }
}

void sub_25E1868C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AuthorizationViewHostingController(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AuthorizationViewHostingController), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AuthorizationViewHostingController + 8), a4);
  v9.receiver = v4;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v6 = [v4 view];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_25E1869AC(void *a1)
{
  v4 = a1;
  sub_25E1868C4(v4, v1, v2, v3);
}

id sub_25E1869F4(char a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  result = [v1 view];
  if (result)
  {
    v5 = result;
    v6 = [result window];

    if (v6)
    {
      v7 = [v6 screen];
    }

    else
    {
      HIDWORD(v7) = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v13 = HIDWORD(v7);

    sub_25E1A4CBC();
    v8 = _s13PaymentUIBase18PhysicalButtonViewV08physicalD4EdgeSo06CGRectG0VyFZ_0();
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v8;

    sub_25E1A4CBC();
    v10 = type metadata accessor for AuthorizationViewHostingController(0, *(v3 + class metadata base offset for AuthorizationViewHostingController), *(v3 + class metadata base offset for AuthorizationViewHostingController + 8), v9);
    v11.receiver = v1;
    v11.super_class = v10;
    return objc_msgSendSuper2(&v11, sel_viewDidAppear_, a1 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25E186BA0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_25E1869F4(a3);
}

id sub_25E186BF4(void *a1, double a2, double a3)
{
  v7 = *MEMORY[0x277D85000] & *v3;
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  aBlock[4] = sub_25E188258;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25E186E18;
  aBlock[3] = &block_descriptor_0;
  v9 = _Block_copy(aBlock);
  v10 = v3;

  [a1 animateAlongsideTransition:0 completion:v9];
  _Block_release(v9);
  v12 = type metadata accessor for AuthorizationViewHostingController(0, *(v7 + class metadata base offset for AuthorizationViewHostingController), *(v7 + class metadata base offset for AuthorizationViewHostingController + 8), v11);
  v14.receiver = v10;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
}

uint64_t sub_25E186D5C(uint64_t a1, void *a2)
{
  _s13PaymentUIBase18PhysicalButtonViewV08physicalD4EdgeSo06CGRectG0VyFZ_0();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25E1A4CBC();
}

uint64_t sub_25E186E18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_25E186E78(void *a1, uint64_t a2, void *a3, double a4, double a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_25E186BF4(a3, a4, a5);
  swift_unknownObjectRelease();
}

uint64_t sub_25E186EF8()
{
  sub_25E188278(0);

  return swift_unknownObjectRetain();
}

void *sub_25E186F24(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_25E188278(0);
  swift_unknownObjectRetain();

  return v6;
}

uint64_t sub_25E186F88()
{
  sub_25E188278(1);

  return swift_unknownObjectRetain();
}

void *sub_25E186FB4(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_25E188278(1);
  swift_unknownObjectRetain();

  return v12;
}

void sub_25E187060(void *a1)
{
  v86 = *MEMORY[0x277D85000] & *v1;
  v3 = sub_25E1A577C();
  v85 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25E1A579C();
  v84 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v87 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_25E1A576C();
  v8 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v10 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_25E1A57BC();
  v83 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v88 = &v68 - v15;
  v91 = [a1 containerView];
  v90 = [a1 viewControllerForKey_];
  if (!v90)
  {
    goto LABEL_8;
  }

  v16 = [a1 viewControllerForKey_];
  if (!v16)
  {

LABEL_8:
    if (qword_27FCDCAB8 != -1)
    {
      swift_once();
    }

    v42 = sub_25E1A4C3C();
    __swift_project_value_buffer(v42, qword_27FCDD100);
    v43 = sub_25E1A4C1C();
    v44 = sub_25E1A587C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_25E174000, v43, v44, "No transitioning view controllers were found", v45, 2u);
      MEMORY[0x25F8ADA60](v45, -1, -1);
    }

    v46 = v91;

    return;
  }

  v81 = v16;
  v82 = v6;
  v79 = v5;
  v80 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();

  v17 = MEMORY[0x277D84F90];
  v78 = v11;
  if ((aBlock & 1) == 0)
  {
    v77 = sub_25E188380();
    v71 = sub_25E1A58BC();
    sub_25E1A57AC();
    *v10 = 300;
    v47 = *MEMORY[0x277D85178];
    v48 = *(v8 + 104);
    v74 = (v8 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v76 = v47;
    v49 = v89;
    v75 = v48;
    v48(v10);
    MEMORY[0x25F8AD250](v14, v10);
    v50 = *(v8 + 8);
    v72 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v73 = v50;
    v50(v10, v49);
    v69 = *(v83 + 8);
    v83 = (v83 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v69(v14, v11);
    v51 = swift_allocObject();
    v52 = v81;
    *(v51 + 16) = a1;
    *(v51 + 24) = v52;
    v96 = sub_25E1883CC;
    v97 = v51;
    aBlock = MEMORY[0x277D85DD0];
    v93 = 1107296256;
    v94 = sub_25E187CA8;
    v95 = &block_descriptor_43;
    v53 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v54 = v52;

    v39 = v87;
    sub_25E1A578C();
    aBlock = v17;
    sub_25E1883D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCF10, &qword_25E1A71D8);
    sub_25E18842C();
    v33 = v79;
    v22 = v80;
    v40 = v78;
    sub_25E1A58EC();
    v55 = v88;
    v56 = v71;
    MEMORY[0x25F8AD330](v88, v39, v33, v53);
    v57 = v53;
    v36 = v55;
    _Block_release(v57);

    v58 = *(v85 + 1);
    v71 = (v85 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v85 = v58;
    v58(v33, v22);
    v59 = *(v84 + 1);
    v70 = (v84 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v84 = v59;
    v59(v39, v82);
    v41 = v55;
    goto LABEL_16;
  }

  v18 = v90;
  v19 = [v90 view];
  if (v19)
  {
    v20 = v19;
    [v91 bounds];
    [v20 setFrame_];

    v21 = [v18 view];
    v22 = v80;
    if (v21)
    {
      v23 = v21;
      v24 = v11;
      [v91 addSubview_];

      v77 = sub_25E188380();
      v71 = sub_25E1A58BC();
      sub_25E1A57AC();
      *v10 = 300;
      v25 = *MEMORY[0x277D85178];
      v26 = *(v8 + 104);
      v74 = (v8 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v76 = v25;
      v27 = v89;
      v75 = v26;
      v26(v10);
      v28 = v88;
      MEMORY[0x25F8AD250](v14, v10);
      v29 = *(v8 + 8);
      v72 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v73 = v29;
      v29(v10, v27);
      v69 = *(v83 + 8);
      v83 = (v83 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v69(v14, v24);
      v30 = swift_allocObject();
      *(v30 + 16) = a1;
      v96 = sub_25E18849C;
      v97 = v30;
      aBlock = MEMORY[0x277D85DD0];
      v93 = 1107296256;
      v94 = sub_25E187CA8;
      v95 = &block_descriptor_58;
      v31 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v32 = v87;
      sub_25E1A578C();
      aBlock = MEMORY[0x277D84F90];
      sub_25E1883D4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCF10, &qword_25E1A71D8);
      sub_25E18842C();
      v33 = v79;
      sub_25E1A58EC();
      v34 = v71;
      MEMORY[0x25F8AD330](v28, v32, v33, v31);
      v35 = v31;
      v36 = v28;
      _Block_release(v35);

      v37 = *(v85 + 1);
      v71 = (v85 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v85 = v37;
      v37(v33, v22);
      v38 = *(v84 + 1);
      v39 = v32;
      v40 = v78;
      v70 = (v84 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v84 = v38;
      v38(v32, v82);
      v41 = v36;
LABEL_16:
      v60 = v69;
      v69(v41, v40);
      sub_25E188380();
      v88 = sub_25E1A58BC();
      sub_25E1A57AC();
      *v10 = 550;
      v61 = v89;
      v75(v10, v76, v89);
      MEMORY[0x25F8AD250](v14, v10);
      v73(v10, v61);
      v60(v14, v40);
      v62 = v36;
      v63 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v64 = swift_allocObject();
      v65 = v86 + class metadata base offset for AuthorizationViewHostingController;
      v64[2] = *(v86 + class metadata base offset for AuthorizationViewHostingController);
      v64[3] = *(v65 + 8);
      v64[4] = v63;
      v96 = sub_25E188490;
      v97 = v64;
      aBlock = MEMORY[0x277D85DD0];
      v93 = 1107296256;
      v94 = sub_25E187CA8;
      v95 = &block_descriptor_52;
      v66 = _Block_copy(&aBlock);

      sub_25E1A578C();
      aBlock = MEMORY[0x277D84F90];
      sub_25E1883D4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCF10, &qword_25E1A71D8);
      sub_25E18842C();
      sub_25E1A58EC();
      v67 = v88;
      MEMORY[0x25F8AD330](v62, v39, v33, v66);

      _Block_release(v66);
      v85(v33, v22);
      v84(v39, v82);
      v60(v62, v40);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25E187CA8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_25E187CEC(void *a1, void *a2)
{
  [a1 completeTransition_];
  v3 = [a2 view];
  if (v3)
  {
    v4 = v3;
    [v3 removeFromSuperview];
  }

  else
  {
    __break(1u);
  }
}

void *sub_25E187D68(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_25E1A4CBC();
  }

  return result;
}

void sub_25E187E3C(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_25E187060(a3);
  swift_unknownObjectRelease();
}

id AuthorizationViewHostingController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AuthorizationViewHostingController(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AuthorizationViewHostingController), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AuthorizationViewHostingController + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id sub_25E1880A8(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v2) + class metadata base offset for AuthorizationViewHostingController);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - v8;
  userInterface()();
  *(v2 + *((*v5 & *v2) + class metadata base offset for AuthorizationViewHostingController + 24)) = a2;
  (*(v7 + 16))(v9, a1, v6);

  v10 = sub_25E1A506C();
  [v10 setTransitioningDelegate_];
  [v10 setModalPresentationStyle_];

  return v10;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_25E188278(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25E1A4CBC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25E1A4CBC();
  return v1;
}

unint64_t sub_25E188380()
{
  result = qword_28155F950;
  if (!qword_28155F950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28155F950);
  }

  return result;
}

unint64_t sub_25E1883D4()
{
  result = qword_28155F978;
  if (!qword_28155F978)
  {
    sub_25E1A577C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28155F978);
  }

  return result;
}

unint64_t sub_25E18842C()
{
  result = qword_28155F968;
  if (!qword_28155F968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDCF10, &qword_25E1A71D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28155F968);
  }

  return result;
}

uint64_t type metadata accessor for AuthorizationViewHostingControllerContext(uint64_t a1)
{
  result = qword_28155FCB8;
  if (!qword_28155FCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25E188564(uint64_t a1)
{
  sub_25E188D6C();
  if (v1 <= 0x3F)
  {
    sub_25E17F96C(319, &unk_28155FA10, &unk_27FCDCE68, &qword_25E1A6FF0);
    if (v2 <= 0x3F)
    {
      sub_25E188DBC(319);
      if (v3 <= 0x3F)
      {
        sub_25E17F96C(319, &qword_28155FA20, &qword_27FCDCE78, &qword_25E1A6FF8);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_25E188D6C()
{
  if (!qword_28155FA38)
  {
    v0 = sub_25E1A4CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_28155FA38);
    }
  }
}

void sub_25E188DBC(uint64_t a1)
{
  if (!qword_28155FA28)
  {
    type metadata accessor for CGRectEdge();
    v1 = sub_25E1A4CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_28155FA28);
    }
  }
}

void sub_25E189020()
{
  v27 = sub_25E1A4B8C();
  v0 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25E1A4BDC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = objc_opt_self();
  v16 = sub_25E1A57EC();
  v17 = sub_25E1A57EC();
  v18 = [v15 _bundleWithIdentifier_andLibraryName_];

  if (v18)
  {
    v19 = [v18 bundleURL];

    sub_25E1A4BBC();
    sub_25E1A4BAC();
    v20 = *(v4 + 8);
    v20(v9, v3);
    sub_25E1A4BAC();
    v20(v12, v3);
    v28 = 0xD000000000000025;
    v29 = 0x800000025E1A9A80;
    v21 = v27;
    (*(v0 + 104))(v2, *MEMORY[0x277CC91D8], v27);
    sub_25E180F4C();
    v22 = v26;
    sub_25E1A4BCC();
    (*(v0 + 8))(v2, v21);
    v23 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v24 = sub_25E1A4B9C();
    v25 = [v23 initWithURL_];

    if (v25)
    {
      v20(v22, v3);
      v20(v14, v3);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t ItemImageView.init(symbol:foregroundColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (qword_27FCDC9F0 != -1)
  {
    v4 = result;
    v5 = a2;
    v6 = a3;
    v7 = a4;
    swift_once();
    result = v4;
    a2 = v5;
    a4 = v7;
    a3 = v6;
  }

  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = 0x4042000000000000;
  return result;
}

double ItemImageView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_25E1A4E3C();
  MEMORY[0x28223BE20](v3);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD040, &qword_25E1A72C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = *(v1 + 16);

  v24 = sub_25E1A55BC();
  v10 = sub_25E1A52FC();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = sub_25E1A533C();
  sub_25E189700(v8);
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();

  sub_25E1A572C();
  sub_25E1A4D5C();
  if (qword_27FCDC9E8 != -1)
  {
    swift_once();
  }

  v14 = qword_27FCDCB08;
  v15 = sub_25E1A527C();

  if (sub_25E1A56FC())
  {
    v16 = 10.0;
  }

  else
  {
    v16 = 6.0;
  }

  v17 = *(v3 + 20);
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_25E1A4FEC();
  (*(*(v19 - 8) + 104))(v5 + v17, v18, v19);
  *v5 = v16;
  v5[1] = v16;
  v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD048, &qword_25E1A7328) + 36);
  sub_25E18976C(v5, v20);
  *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD050, &qword_25E1A8A50) + 36)) = 256;
  v21 = v26;
  *(a1 + 40) = v25;
  *a1 = v24;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v11;
  *(a1 + 24) = v13;
  *(a1 + 32) = v9;
  *(a1 + 56) = v21;
  result = *&v27;
  *(a1 + 72) = v27;
  *(a1 + 88) = v14;
  *(a1 + 96) = v15;
  return result;
}

uint64_t sub_25E189700(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD040, &qword_25E1A72C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E18976C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E1A4E3C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E1897EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25E189834(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_25E189884()
{
  result = qword_27FCDD058;
  if (!qword_27FCDD058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD048, &qword_25E1A7328);
    sub_25E18993C();
    sub_25E17F9C0(&qword_27FCDD0A8, &qword_27FCDD050, &qword_25E1A8A50, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD058);
  }

  return result;
}

unint64_t sub_25E18993C()
{
  result = qword_27FCDD060;
  if (!qword_27FCDD060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD068, &qword_25E1A73C8);
    sub_25E1899F4();
    sub_25E17F9C0(&qword_28155F9F0, &qword_27FCDD0A0, &unk_25E1A73E0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD060);
  }

  return result;
}

unint64_t sub_25E1899F4()
{
  result = qword_27FCDD070;
  if (!qword_27FCDD070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD078, &qword_25E1A73D0);
    sub_25E189A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD070);
  }

  return result;
}

unint64_t sub_25E189A80()
{
  result = qword_27FCDD080;
  if (!qword_27FCDD080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD088, &qword_25E1A73D8);
    sub_25E189B38();
    sub_25E17F9C0(&qword_27FCDCE40, &qword_27FCDCE48, &qword_25E1A8180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD080);
  }

  return result;
}

unint64_t sub_25E189B38()
{
  result = qword_27FCDD090;
  if (!qword_27FCDD090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD098, &unk_25E1A8170);
    sub_25E17F9C0(&qword_27FCDCE30, &qword_27FCDCE38, &qword_25E1A7EB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD090);
  }

  return result;
}

uint64_t PaymentSheetItemsContainer.init(items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  result = swift_getKeyPath();
  *(a3 + 32) = result;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0x4020000000000000;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_25E189C54()
{
  v1 = sub_25E1A4F8C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {

    sub_25E1A588C();
    v6 = sub_25E1A525C();
    sub_25E1A4C0C();

    sub_25E1A4F7C();
    swift_getAtKeyPath();
    sub_25E1832F0(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

void *sub_25E189D9C@<X0>(_BYTE *a1@<X8>)
{
  sub_25E18B790();
  result = sub_25E1A4F9C();
  *a1 = v3;
  return result;
}

uint64_t sub_25E189E38()
{
  v1 = sub_25E1A4F8C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {

    sub_25E1A588C();
    v6 = sub_25E1A525C();
    sub_25E1A4C0C();

    sub_25E1A4F7C();
    swift_getAtKeyPath();
    sub_25E1832F0(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_25E189F80@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.shouldUseAccessibleLayout.getter();
  *a1 = result & 1;
  return result;
}

uint64_t PaymentSheetItemsContainer.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD0B0, &qword_25E1A7440);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_25E1A566C();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A566C();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD0B8, &qword_25E1A7448);
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD0C0, &qword_25E1A7450);
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD0C8, &qword_25E1A7458);
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  v5 = sub_25E1A566C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v15[-v10];
  v12 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v12;
  v19[2] = *(v1 + 32);
  v20 = *(v1 + 48);
  v16 = v3;
  v17 = v4;
  v18 = v19;
  sub_25E1A502C();
  sub_25E1A565C();
  swift_getWitnessTable();
  sub_25E181B2C();
  v13 = *(v6 + 8);
  v13(v9, v5);
  sub_25E181B2C();
  return (v13)(v11, v5);
}

uint64_t sub_25E18A2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD0D0, &qword_25E1A75C8);
  MEMORY[0x28223BE20](v69);
  v68 = &WitnessTable - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD0C8, &qword_25E1A7458);
  v72 = *(v73 - 8);
  v8 = MEMORY[0x28223BE20](v73);
  v71 = &WitnessTable - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &WitnessTable - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD0D8, &qword_25E1A75D0);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = &WitnessTable - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD0B0, &qword_25E1A7440);
  v59 = a2;
  v60 = a3;
  sub_25E1A566C();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_25E1A566C();
  v56 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &WitnessTable - v14;
  v16 = sub_25E1A4DDC();
  v58 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &WitnessTable - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD0B8, &qword_25E1A7448);
  v19 = sub_25E1A4DDC();
  v63 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v62 = &WitnessTable - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD0C0, &qword_25E1A7450);
  v57 = sub_25E1A4DDC();
  v64 = *(v57 - 8);
  v21 = MEMORY[0x28223BE20](v57);
  v67 = &WitnessTable - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v61 = &WitnessTable - v24;
  MEMORY[0x28223BE20](v23);
  v65 = &WitnessTable - v25;
  v26 = *(a1 + 16);
  v85[0] = *a1;
  v85[1] = v26;
  v85[2] = *(a1 + 32);
  v86 = *(a1 + 48);
  if (sub_25E189C54() & 1) != 0 || (v27 = *(a1 + 16), v83[0] = *a1, v83[1] = v27, v83[2] = *(a1 + 32), v84 = *(a1 + 48), v28 = sub_25E189E38(), (v28))
  {
    v28 = sub_25E1A56FC();
    v29 = v28 ^ 1;
  }

  else
  {
    v29 = 0;
  }

  MEMORY[0x28223BE20](v28);
  v30 = v60;
  *(&WitnessTable - 4) = v59;
  *(&WitnessTable - 3) = v30;
  *(&WitnessTable - 16) = v29 & 1;
  *(&WitnessTable - 1) = a1;
  sub_25E1A502C();
  sub_25E1A565C();
  sub_25E1A526C();
  if ((v29 & 1) == 0 && qword_281560400 != -1)
  {
    swift_once();
  }

  v31 = swift_getWitnessTable();
  sub_25E1A54DC();
  (*(v56 + 8))(v15, v13);
  if (v29)
  {
    v32 = 0;
  }

  else
  {
    v32 = sub_25E1A555C();
  }

  *&v85[0] = v32;
  v81 = v31;
  v82 = MEMORY[0x277CDF918];
  v33 = swift_getWitnessTable();
  v34 = v62;
  View.paymentItemBackground<A>(_:)(v85, v16, MEMORY[0x277CE0F78], v33, MEMORY[0x277CE0F70]);

  (*(v58 + 8))(v18, v16);
  swift_getKeyPath();
  v35 = sub_25E1A56EC();
  v36 = v66;
  (*(*(v35 - 8) + 56))(v66, 1, 1, v35);
  v37 = sub_25E17F9C0(&qword_27FCDD0E0, &qword_27FCDD0B8, &qword_25E1A7448, &unk_25E1A8388);
  v79 = v33;
  v80 = v37;
  v38 = swift_getWitnessTable();
  v39 = v61;
  sub_25E1A541C();

  sub_25E1819EC(v36, &qword_27FCDD0D8, &qword_25E1A75D0);
  (*(v63 + 8))(v34, v19);
  v40 = sub_25E17F9C0(&qword_28155F9E8, &qword_27FCDD0C0, &qword_25E1A7450, MEMORY[0x277CE0868]);
  v77 = v38;
  v78 = v40;
  v41 = v57;
  v42 = swift_getWitnessTable();
  v43 = v65;
  sub_25E181B2C();
  v44 = v64;
  v66 = *(v64 + 8);
  (v66)(v39, v41);
  sub_25E1A570C();
  v45 = MEMORY[0x277CE1340];
  v46 = MEMORY[0x277CE1350];
  sub_25E1A4FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD0E8, &qword_25E1A7608);
  *&v85[0] = v46;
  *(&v85[0] + 1) = v45;
  swift_getOpaqueTypeConformance2();
  sub_25E18B508();
  v47 = v70;
  sub_25E1A571C();
  v48 = v67;
  (*(v44 + 16))(v67, v43, v41);
  *&v85[0] = v48;
  v49 = v72;
  v50 = v71;
  v51 = v73;
  (*(v72 + 16))(v71, v47, v73);
  *(&v85[0] + 1) = v50;
  *&v83[0] = v41;
  *(&v83[0] + 1) = v51;
  v75 = v42;
  v76 = sub_25E18B58C();
  sub_25E198E40(v85, 2uLL, v83);
  v52 = *(v49 + 8);
  v52(v47, v51);
  v53 = v66;
  (v66)(v43, v41);
  v52(v50, v51);
  return (v53)(v48, v41);
}

uint64_t sub_25E18AD80@<X0>(int a1@<W0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a1;
  v37 = a5;
  v34 = a4;
  v6 = sub_25E1A566C();
  v35 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v36 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v31[-v12];
  v14 = sub_25E1A56CC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v31[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD0B0, &qword_25E1A7440);
  v18 = MEMORY[0x28223BE20](v33);
  v20 = &v31[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v31[-v21];
  if (v32)
  {
    sub_25E1A56BC();
    (*(v15 + 32))(v22, v17, v14);
    v23 = (*(v15 + 56))(v22, 0, 1, v14);
  }

  else
  {
    v23 = (*(v15 + 56))(&v31[-v21], 1, 1, v14);
  }

  MEMORY[0x28223BE20](v23);
  v24 = v34;
  *&v31[-32] = a3;
  *&v31[-24] = v24;
  *&v31[-16] = v25;
  sub_25E1A502C();
  sub_25E1A565C();
  WitnessTable = swift_getWitnessTable();
  sub_25E181B2C();
  v27 = v35;
  v28 = *(v35 + 8);
  v28(v11, v6);
  sub_25E1817AC(v22, v20, &qword_27FCDD0B0, &qword_25E1A7440);
  v41[0] = v20;
  v29 = v36;
  (*(v27 + 16))(v36, v13, v6);
  v41[1] = v29;
  v40[0] = v33;
  v40[1] = v6;
  v38 = sub_25E18B660();
  v39 = WitnessTable;
  sub_25E198E40(v41, 2uLL, v40);
  v28(v13, v6);
  sub_25E1819EC(v22, &qword_27FCDD0B0, &qword_25E1A7440);
  v28(v29, v6);
  return sub_25E1819EC(v20, &qword_27FCDD0B0, &qword_25E1A7440);
}

uint64_t sub_25E18B18C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v12 - v8;
  (*v7)();
  sub_25E181B2C();
  v10 = *(v3 + 8);
  v10(v6, a2);
  sub_25E181B2C();
  return (v10)(v9, a2);
}

uint64_t sub_25E18B2C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD0D8, &qword_25E1A75D0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25E1817AC(a1, &v5 - v3, &qword_27FCDD0D8, &qword_25E1A75D0);
  return sub_25E1A4EFC();
}

double sub_25E18B368@<D0>(uint64_t a2@<X8>)
{
  sub_25E1A572C();
  sub_25E1A4D5C();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  result = *&v8;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_25E18B3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25E18B44C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25E18B494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25E18B508()
{
  result = qword_28155FA00;
  if (!qword_28155FA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD0E8, &qword_25E1A7608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28155FA00);
  }

  return result;
}

unint64_t sub_25E18B58C()
{
  result = qword_27FCDD0F0;
  if (!qword_27FCDD0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD0C8, &qword_25E1A7458);
    swift_getOpaqueTypeConformance2();
    sub_25E18B508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD0F0);
  }

  return result;
}

unint64_t sub_25E18B660()
{
  result = qword_28155F988;
  if (!qword_28155F988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD0B0, &qword_25E1A7440);
    sub_25E18B6E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28155F988);
  }

  return result;
}

unint64_t sub_25E18B6E4()
{
  result = qword_27FCDD0F8;
  if (!qword_27FCDD0F8)
  {
    sub_25E1A56CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD0F8);
  }

  return result;
}

unint64_t sub_25E18B73C()
{
  result = qword_28155FDB0;
  if (!qword_28155FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28155FDB0);
  }

  return result;
}

unint64_t sub_25E18B790()
{
  result = qword_281560250;
  if (!qword_281560250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281560250);
  }

  return result;
}

uint64_t sub_25E18B7E4()
{
  v0 = sub_25E1A4C3C();
  __swift_allocate_value_buffer(v0, qword_27FCDD100);
  __swift_project_value_buffer(v0, qword_27FCDD100);
  return sub_25E1A4C2C();
}

uint64_t static Logger.paymentUIBase.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FCDCAB8 != -1)
  {
    swift_once();
  }

  v2 = sub_25E1A4C3C();
  v3 = __swift_project_value_buffer(v2, qword_27FCDD100);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t View.errorAlert(_:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v2, a2);
  sub_25E1817AC(a1, v9, &qword_27FCDD118, &unk_25E1A7610);
  return sub_25E1A4DCC();
}

unint64_t sub_25E18BB30()
{
  result = qword_27FCDD120;
  if (!qword_27FCDD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD120);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13PaymentUIBase10AlertError_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25E18BB9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25E18BBE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25E18BC5C@<X0>(BOOL *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD118, &unk_25E1A7610);
  MEMORY[0x25F8AD110](v5, v2);
  v3 = v5[3] != 0;
  result = sub_25E1819EC(v5, &qword_27FCDD128, &qword_25E1A8E00);
  *a1 = v3;
  return result;
}

_BYTE *sub_25E18BCCC(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    sub_25E1817AC(v2, v1, &qword_27FCDD128, &qword_25E1A8E00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD118, &unk_25E1A7610);
    sub_25E1A569C();
    return sub_25E1819EC(v2, &qword_27FCDD128, &qword_25E1A8E00);
  }

  return result;
}

uint64_t sub_25E18BD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  v37 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD118, &unk_25E1A7610);
  MEMORY[0x25F8AD110](&v38);
  v5 = *(&v39 + 1);
  if (*(&v39 + 1))
  {
    v6 = v40;
    v7 = __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
    v8 = *(v5 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    sub_25E1819EC(&v38, &qword_27FCDD128, &qword_25E1A8E00);
    v11 = (*(v6 + 24))(v5, v6);
    v13 = v12;
    (*(v8 + 8))(v10, v5);
  }

  else
  {
    sub_25E1819EC(&v38, &qword_27FCDD128, &qword_25E1A8E00);
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  *&v38 = v11;
  *(&v38 + 1) = v13;
  sub_25E180F4C();
  v14 = sub_25E1A53CC();
  v34 = v15;
  v35 = v14;
  v32 = v16;
  v33 = v17;
  sub_25E18CD64(v3, &v38);
  sub_25E1A586C();
  v18 = sub_25E1A585C();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v18;
  *(v19 + 24) = v20;
  v21 = v39;
  *(v19 + 32) = v38;
  *(v19 + 48) = v21;
  *(v19 + 64) = v40;
  *(v19 + 80) = v41;
  sub_25E18CD64(v3, &v38);
  v22 = sub_25E1A585C();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v20;
  v24 = v39;
  *(v23 + 32) = v38;
  *(v23 + 48) = v24;
  *(v23 + 64) = v40;
  *(v23 + 80) = v41;
  sub_25E1A56AC();
  v30[1] = v38;
  v31 = v39;
  v25 = MEMORY[0x25F8AD110](&v38, v4);
  v30[0] = v30;
  MEMORY[0x28223BE20](v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD130, &qword_25E1A7700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD138, &qword_25E1A7708);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD140, &qword_25E1A7710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD148, &qword_25E1A7718);
  sub_25E17F9C0(&qword_28155F9F8, &qword_27FCDD130, &qword_25E1A7700, MEMORY[0x277CE04B0]);
  sub_25E17F9C0(&qword_28155F980, &qword_27FCDD138, &qword_25E1A7708, MEMORY[0x277CE14C0]);
  sub_25E18CE14();
  v26 = v32;
  v27 = v35;
  v28 = v34;
  sub_25E1A549C();

  sub_25E180FA0(v27, v28, v26 & 1);

  return sub_25E1819EC(&v38, &qword_27FCDD128, &qword_25E1A8E00);
}

uint64_t sub_25E18C1E4@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v84 = a2;
  v85 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD150, &qword_25E1A7720);
  MEMORY[0x28223BE20](v2 - 8);
  v78 = v75 - v3;
  v4 = sub_25E1A4BDC();
  v87 = *(v4 - 8);
  v88 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v76 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75[1] = v6;
  MEMORY[0x28223BE20](v5);
  v77 = v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD158, &qword_25E1A7728);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v83 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v82 = v75 - v11;
  v12 = sub_25E1A4E2C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD160, &qword_25E1A7730);
  v89 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v75 - v17;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD168, &qword_25E1A7738);
  v79 = *(v81 - 8);
  v19 = MEMORY[0x28223BE20](v81);
  v80 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v75 - v21;
  if (qword_27FCDCAF0 != -1)
  {
    swift_once();
  }

  v23 = qword_27FCDD5A8;
  v24 = sub_25E1A57EC();
  v25 = sub_25E1A57EC();
  v26 = sub_25E1A57EC();
  v27 = [v23 localizedStringForKey:v24 value:v25 table:v26];

  v28 = sub_25E1A580C();
  v30 = v29;

  *&v90 = v28;
  *(&v90 + 1) = v30;
  v31 = sub_25E180F4C();
  sub_25E1A561C();
  sub_25E1A4E1C();
  sub_25E17F9C0(&qword_27FCDD170, &qword_27FCDD160, &qword_25E1A7730, MEMORY[0x277CDF028]);
  sub_25E1A545C();
  (*(v13 + 8))(v15, v12);
  v32 = v89;
  (*(v89 + 8))(v18, v16);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD118, &unk_25E1A7610);
  MEMORY[0x25F8AD110](&v90);
  v34 = *(&v91 + 1);
  v35 = v22;
  v86 = v22;
  if (!*(&v91 + 1))
  {
    v43 = v32;
    sub_25E1819EC(&v90, &qword_27FCDD128, &qword_25E1A8E00);
    v41 = v78;
    (*(v87 + 56))(v78, 1, 1, v88);
    goto LABEL_9;
  }

  v75[0] = v31;
  v36 = v92;
  v37 = __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
  v38 = *(v34 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v38 + 16))(v40);
  sub_25E1819EC(&v90, &qword_27FCDD128, &qword_25E1A8E00);
  v41 = v78;
  (*(v36 + 88))(v34, v36);
  (*(v38 + 8))(v40, v34);
  v42 = v88;
  v43 = v89;
  v44 = v87;
  if ((*(v87 + 48))(v41, 1, v88) == 1)
  {
LABEL_9:
    sub_25E1819EC(v41, &qword_27FCDD150, &qword_25E1A7720);
    v64 = 1;
    v63 = v82;
    goto LABEL_14;
  }

  v45 = *(v44 + 32);
  v46 = v77;
  v45(v77, v41, v42);
  MEMORY[0x25F8AD110](&v90, v33);
  v47 = *(&v91 + 1);
  if (*(&v91 + 1))
  {
    v48 = v92;
    v49 = __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
    v50 = *(v47 - 8);
    MEMORY[0x28223BE20](v49);
    v52 = v75 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v50 + 16))(v52);
    sub_25E1819EC(&v90, &qword_27FCDD128, &qword_25E1A8E00);
    v53 = (*(v48 + 80))(v47, v48);
    v55 = v54;
    (*(v50 + 8))(v52, v47);
    if (v55)
    {
      v94 = v53;
      v95 = v55;
      sub_25E18CD64(v85, &v90);
      v57 = v87;
      v56 = v88;
      v58 = v76;
      v59 = v77;
      (*(v87 + 16))(v76, v77, v88);
      v60 = (*(v57 + 80) + 72) & ~*(v57 + 80);
      v61 = swift_allocObject();
      v62 = v91;
      *(v61 + 16) = v90;
      *(v61 + 32) = v62;
      *(v61 + 48) = v92;
      *(v61 + 64) = v93;
      v45((v61 + v60), v58, v56);
      v63 = v82;
      sub_25E1A561C();
      (*(v57 + 8))(v59, v56);
      v64 = 0;
    }

    else
    {
      (*(v87 + 8))(v77, v88);
      v64 = 1;
      v63 = v82;
    }

    v35 = v86;
  }

  else
  {
    (*(v44 + 8))(v46, v42);
    sub_25E1819EC(&v90, &qword_27FCDD128, &qword_25E1A8E00);
    v64 = 1;
    v63 = v82;
  }

  v43 = v89;
LABEL_14:
  (*(v43 + 56))(v63, v64, 1, v16);
  v65 = v79;
  v66 = v80;
  v67 = *(v79 + 16);
  v68 = v35;
  v69 = v81;
  v67(v80, v68, v81);
  v70 = v83;
  sub_25E1817AC(v63, v83, &qword_27FCDD158, &qword_25E1A7728);
  v71 = v84;
  v67(v84, v66, v69);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD178, &unk_25E1A7740);
  sub_25E1817AC(v70, &v71[*(v72 + 48)], &qword_27FCDD158, &qword_25E1A7728);
  sub_25E1819EC(v63, &qword_27FCDD158, &qword_25E1A7728);
  v73 = *(v65 + 8);
  v73(v86, v69);
  sub_25E1819EC(v70, &qword_27FCDD158, &qword_25E1A7728);
  return (v73)(v66, v69);
}

void sub_25E18CC3C()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_25E1A4B9C();
    [v1 openSensitiveURL:v2 withOptions:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25E18CCC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 32))(v3, v4);
  if (v5)
  {
    sub_25E180F4C();
    result = sub_25E1A53CC();
    v9 = v8 & 1;
  }

  else
  {
    result = 0;
    v9 = 0;
    v7 = 0;
  }

  *a2 = result;
  a2[1] = v5;
  a2[2] = v9;
  a2[3] = v7;
  return result;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  }

  return swift_deallocObject();
}

unint64_t sub_25E18CE14()
{
  result = qword_28155F9E0;
  if (!qword_28155F9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD140, &qword_25E1A7710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28155F9E0);
  }

  return result;
}

void sub_25E18CE90()
{
  sub_25E1A4BDC();

  sub_25E18CC3C();
}

uint64_t KeyPathView.init(path:source:shouldSuspendStateMachine:analyticsTag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  *(a5 + 48) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 16) = a1;
  *(a5 + 24) = 0;

  sub_25E18D370(a2, a5 + 32);
  *(a5 + 64) = a3;
  sub_25E18D370(a4, a5 + 72);
  type metadata accessor for KeyPathView(0);
  sub_25E1A4BEC();

  sub_25E1819EC(a4, &qword_27FCDD180, &qword_25E1A7B40);
  return sub_25E1819EC(a2, &qword_27FCDD180, &qword_25E1A7B40);
}

uint64_t KeyPathView.init<A>(view:shouldSuspendStateMachine:analyticsTag:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 88) = 0u;
  *(a6 + 72) = 0u;
  (*(v11 + 16))(v13, a1, a4);
  *(a6 + 24) = sub_25E1A567C();
  *(a6 + 64) = a2;
  sub_25E18D370(a3, a6 + 72);
  type metadata accessor for KeyPathView(0);
  sub_25E1A4BEC();
  sub_25E1819EC(a3, &qword_27FCDD180, &qword_25E1A7B40);
  return (*(v11 + 8))(a1, a4);
}

uint64_t sub_25E18D170()
{
  v1 = sub_25E1A4F8C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
  }

  else
  {

    sub_25E1A588C();
    v6 = sub_25E1A525C();
    sub_25E1A4C0C();

    sub_25E1A4F7C();
    swift_getAtKeyPath();
    sub_25E1908F4(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

void *sub_25E18D2C0@<X0>(void *a1@<X8>)
{
  sub_25E190900();
  result = sub_25E1A4F9C();
  *a1 = v3;
  return result;
}

uint64_t sub_25E18D310(uint64_t *a1)
{
  sub_25E190900();

  return sub_25E1A4FAC();
}

uint64_t sub_25E18D370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD180, &qword_25E1A7B40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for KeyPathView(uint64_t a1)
{
  result = qword_27FCDD1D0;
  if (!qword_27FCDD1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E18D464(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD180, &qword_25E1A7B40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t KeyPathView.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for KeyPathView(0) + 40);
  v4 = sub_25E1A4BFC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t KeyPathView.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for KeyPathView(0) + 40);
  v4 = sub_25E1A4BFC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_25E18D6BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD260, &qword_25E1A79B8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for KeyPathView(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  if (!*(v0 + 16))
  {
    return 0;
  }

  v20 = 0u;
  v21 = 0u;
  sub_25E1817AC(v0 + 32, &v16, &qword_27FCDD180, &qword_25E1A7B40);
  if (*(&v17 + 1))
  {
    sub_25E1908E4(&v16, &v18);

    swift_getAtAnyKeyPath();
    __swift_destroy_boxed_opaque_existential_0(&v18);
    sub_25E1819EC(&v20, &qword_27FCDD180, &qword_25E1A7B40);
    v11 = v16;
    v12 = v17;
  }

  else
  {

    sub_25E1819EC(&v16, &qword_27FCDD180, &qword_25E1A7B40);
    *&v16 = sub_25E18D170();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD1E8, &unk_25E1A7930);
    swift_getAtAnyKeyPath();

    sub_25E1819EC(&v20, &qword_27FCDD180, &qword_25E1A7B40);
    v11 = v18;
    v12 = v19;
  }

  v20 = v11;
  v21 = v12;
  sub_25E1817AC(&v20, &v18, &qword_27FCDD180, &qword_25E1A7B40);
  if (!*(&v19 + 1))
  {
    sub_25E1819EC(&v18, &qword_27FCDD180, &qword_25E1A7B40);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    sub_25E1817AC(&v20, &v18, &qword_27FCDD180, &qword_25E1A7B40);
    if (*(&v19 + 1))
    {
      v14 = swift_dynamicCast();
      (*(v5 + 56))(v3, v14 ^ 1u, 1, v4);
      if ((*(v5 + 48))(v3, 1, v4) != 1)
      {
        sub_25E1905F4(v3, v10);
        sub_25E1907C0(v10, v8);
        sub_25E19071C(&qword_27FCDD270, type metadata accessor for KeyPathView, &protocol conformance descriptor for KeyPathView);
        v13 = sub_25E1A567C();

        sub_25E190824(v10);
        goto LABEL_16;
      }
    }

    else
    {

      sub_25E1819EC(&v18, &qword_27FCDD180, &qword_25E1A7B40);
      (*(v5 + 56))(v3, 1, 1, v4);
    }

    sub_25E1819EC(&v20, &qword_27FCDD180, &qword_25E1A7B40);
    sub_25E1819EC(v3, &qword_27FCDD260, &qword_25E1A79B8);
    return 0;
  }

  v13 = v16;
LABEL_16:
  sub_25E1819EC(&v20, &qword_27FCDD180, &qword_25E1A7B40);
  return v13;
}

uint64_t KeyPathView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_25E1A502C();
  if (*(v2 + 24))
  {
  }

  else
  {
    result = sub_25E18D6BC();
    if (!result)
    {
      v6 = 0;
      v7 = -1;
      goto LABEL_5;
    }
  }

  result = sub_25E1A515C();
  v6 = v8;
  v7 = v9;
LABEL_5:
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_25E18DB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 24))
  {
  }

  else
  {
    result = sub_25E18D6BC();
    if (!result)
    {
      v4 = 0;
      v5 = -1;
      goto LABEL_5;
    }
  }

  result = sub_25E1A515C();
  v4 = v6;
  v5 = v7;
LABEL_5:
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_25E18DC34@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_25E1A502C();
  result = sub_25E18DB9C(v2, &v8);
  v6 = v8;
  v7 = v9;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_25E18DC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_25E1A4BFC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_25E18DD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25E1A502C();
  sub_25E18DDF8(&v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD198, &qword_25E1A77D8);
  sub_25E18F064();
  return sub_25E1A567C();
}

uint64_t sub_25E18DDF8@<X0>(uint64_t a5@<X8>)
{
  sub_25E180F4C();

  v6 = sub_25E1A53CC();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = sub_25E1A53CC();
  v15 = v14;
  v17 = v16 & 1;
  *a5 = v6;
  *(a5 + 8) = v8;
  *(a5 + 16) = v10 & 1;
  *(a5 + 24) = v12;
  *(a5 + 32) = v13;
  *(a5 + 40) = v14;
  *(a5 + 48) = v16 & 1;
  *(a5 + 56) = v18;
  sub_25E190658(v6, v8, v10 & 1);

  sub_25E190658(v13, v15, v17);

  sub_25E180FA0(v13, v15, v17);

  sub_25E180FA0(v6, v8, v10 & 1);
}

uint64_t sub_25E18DF3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD188, &unk_25E1A77A0);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD190, &qword_25E1A7B10) - 8);
  v1 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25E1A7750;
  v3 = (v2 + v1);
  v4 = v3 + v0[14];
  *v3 = 0x7473726966;
  v3[1] = 0xE500000000000000;
  sub_25E1A4FDC();
  memset(v7, 0, 32);
  sub_25E1A53AC();
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  *(v4 + 2) = 0;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 3) = sub_25E1A567C();
  v4[64] = 0;
  sub_25E18D370(v7, (v4 + 72));
  type metadata accessor for KeyPathView(0);
  sub_25E1A4BEC();
  sub_25E1819EC(v7, &qword_27FCDD180, &qword_25E1A7B40);
  v5 = sub_25E18FF10(v2);
  swift_setDeallocating();
  sub_25E1819EC(v3, &qword_27FCDD190, &qword_25E1A7B10);
  result = swift_deallocClassInstance();
  qword_27FCDEDB0 = v5;
  return result;
}

uint64_t static KeyPathView_Previews.previews.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25E18E530(a1);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD188, &unk_25E1A77A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD190, &qword_25E1A7B10);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25E1A7760;
  v5 = (v4 + v3);
  v6 = v4 + v3 + *(v1 + 48);
  *v5 = 0x4977656976657270;
  v5[1] = 0xEB000000006D6574;
  v7 = swift_getKeyPath();
  *&v19[8] = &type metadata for KeyPathView_Previews.MySource;
  v8 = swift_allocObject();
  *&v18 = v8;
  v8[2] = 0x3120656C746954;
  v8[3] = 0xE700000000000000;
  v8[4] = 0x3220656C746954;
  v8[5] = 0xE700000000000000;
  v23 = 0u;
  v22 = 0u;
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  *(v6 + 48) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 16) = v7;
  *(v6 + 24) = 0;

  sub_25E18D370(&v18, v6 + 32);
  *(v6 + 64) = 0;
  sub_25E18D370(&v22, v6 + 72);
  type metadata accessor for KeyPathView(0);
  sub_25E1A4BEC();

  sub_25E1819EC(&v22, &qword_27FCDD180, &qword_25E1A7B40);
  sub_25E1819EC(&v18, &qword_27FCDD180, &qword_25E1A7B40);
  v9 = (v5 + v2);
  v10 = v5 + v2 + *(v1 + 48);
  *v9 = 0x3277656976657270;
  v9[1] = 0xE800000000000000;
  v11 = sub_25E1A502C();
  LOBYTE(v18) = 1;
  sub_25E18DDF8(&v22);
  *&v21[55] = v25;
  *&v21[39] = v24;
  *&v21[23] = v23;
  *&v21[7] = v22;
  *&v19[17] = *&v21[16];
  *&v19[33] = *&v21[32];
  *v20 = *&v21[48];
  v12 = v18;
  v18 = v11;
  v19[0] = v12;
  *&v20[15] = *(&v25 + 1);
  *&v19[1] = *v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD198, &qword_25E1A77D8);
  sub_25E18F064();
  sub_25E1A567C();
  v18 = 0u;
  *v19 = 0u;
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  *(v10 + 2) = 0;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 3) = sub_25E1A567C();
  v10[64] = 0;
  sub_25E18D370(&v18, (v10 + 72));
  sub_25E1A4BEC();
  sub_25E1819EC(&v18, &qword_27FCDD180, &qword_25E1A7B40);
  v13 = sub_25E18FF10(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD1B8, &qword_25E1A77E8);
  v15 = (a1 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = v13;
  return result;
}

uint64_t sub_25E18E530@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD260, &qword_25E1A79B8);
  v1 = MEMORY[0x28223BE20](v69);
  v68 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v70 = &v68 - v3;
  v4 = type metadata accessor for KeyPathView(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v77 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v76 = &v68 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v75 = &v68 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v74 = &v68 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v73 = &v68 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v81 = &v68 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v72 = (&v68 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v71 = (&v68 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v68 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v68 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v82 = &v68 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v68 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v68 - v33;
  KeyPath = swift_getKeyPath();
  *(&v86 + 1) = &type metadata for KeyPathView_Previews.MySource;
  v36 = swift_allocObject();
  *&v85 = v36;
  v36[2] = 0x3120656C746954;
  v36[3] = 0xE700000000000000;
  v36[4] = 0x3220656C746954;
  v36[5] = 0xE700000000000000;
  v83 = 0u;
  v84 = 0u;
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  *(v34 + 3) = 0u;
  *(v34 + 2) = 0u;
  *(v34 + 88) = 0u;
  *(v34 + 72) = 0u;
  *(v34 + 2) = KeyPath;
  *(v34 + 3) = 0;
  sub_25E18D370(&v85, (v34 + 32));
  v34[64] = 0;
  sub_25E18D370(&v83, (v34 + 72));
  v79 = v34;
  sub_25E1A4BEC();
  sub_25E1819EC(&v83, &qword_27FCDD180, &qword_25E1A7B40);
  sub_25E1819EC(&v85, &qword_27FCDD180, &qword_25E1A7B40);
  sub_25E1A4FDC();
  v37 = sub_25E1A53AC();
  v85 = 0u;
  v86 = 0u;
  *&v83 = v37;
  *(&v83 + 1) = v38;
  LOBYTE(v84) = v39 & 1;
  *(&v84 + 1) = v40;
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  *(v32 + 2) = 0;
  *(v32 + 2) = 0u;
  *(v32 + 3) = 0u;
  *(v32 + 88) = 0u;
  *(v32 + 72) = 0u;
  *(v32 + 3) = sub_25E1A567C();
  v32[64] = 0;
  sub_25E18D370(&v85, (v32 + 72));
  v41 = v4;
  v80 = v32;
  sub_25E1A4BEC();
  sub_25E1819EC(&v85, &qword_27FCDD180, &qword_25E1A7B40);
  if (qword_27FCDCAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v42 = qword_27FCDEDB0;
  if (*(qword_27FCDEDB0 + 16))
  {
    v43 = sub_25E191AA0(0x7473726966, 0xE500000000000000);
    v44 = v70;
    if (v45)
    {
      sub_25E1907C0(*(v42 + 56) + *(v5 + 72) * v43, v70);
      v46 = 0;
    }

    else
    {
      v46 = 1;
    }
  }

  else
  {
    v46 = 1;
    v44 = v70;
  }

  (*(v5 + 56))(v44, v46, 1, v41);
  swift_endAccess();
  v85 = 0u;
  v86 = 0u;
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *(v27 + 2) = 0;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 88) = 0u;
  *(v27 + 72) = 0u;
  sub_25E1817AC(v44, v68, &qword_27FCDD260, &qword_25E1A79B8);
  sub_25E190668();
  *(v27 + 3) = sub_25E1A567C();
  v27[64] = 0;
  sub_25E18D370(&v85, (v27 + 72));
  sub_25E1A4BEC();
  sub_25E1819EC(&v85, &qword_27FCDD180, &qword_25E1A7B40);
  sub_25E1819EC(v44, &qword_27FCDD260, &qword_25E1A79B8);
  v47 = sub_25E1905F4(v27, v82);
  MEMORY[0x28223BE20](v47);
  v48 = swift_getKeyPath();
  v49 = qword_27FCDEDB0;
  *(&v86 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD1E8, &unk_25E1A7930);
  *&v85 = v49;
  v83 = 0u;
  v84 = 0u;
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  *(v24 + 3) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 88) = 0u;
  v50 = v24;
  *(v24 + 72) = 0u;
  *(v24 + 2) = v48;
  *(v24 + 3) = 0;

  sub_25E18D370(&v85, (v24 + 32));
  v24[64] = 0;
  sub_25E18D370(&v83, (v24 + 72));
  sub_25E1A4BEC();
  sub_25E1819EC(&v83, &qword_27FCDD180, &qword_25E1A7B40);
  v51 = sub_25E1819EC(&v85, &qword_27FCDD180, &qword_25E1A7B40);
  MEMORY[0x28223BE20](v51);
  v52 = swift_getKeyPath();
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v53 = swift_getKeyPath();
  v54 = v71;
  *v71 = v53;
  *(v54 + 8) = 0;
  *(v54 + 48) = 0u;
  *(v54 + 32) = 0u;
  *(v54 + 88) = 0u;
  *(v54 + 72) = 0u;
  *(v54 + 16) = v52;
  *(v54 + 24) = 0;
  sub_25E18D370(&v85, v54 + 32);
  *(v54 + 64) = 0;
  sub_25E18D370(&v83, v54 + 72);
  sub_25E1A4BEC();
  sub_25E1819EC(&v83, &qword_27FCDD180, &qword_25E1A7B40);
  v55 = sub_25E1819EC(&v85, &qword_27FCDD180, &qword_25E1A7B40);
  MEMORY[0x28223BE20](v55);
  v56 = swift_getKeyPath();
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v57 = swift_getKeyPath();
  v58 = v72;
  *v72 = v57;
  *(v58 + 8) = 0;
  *(v58 + 48) = 0u;
  *(v58 + 32) = 0u;
  *(v58 + 88) = 0u;
  *(v58 + 72) = 0u;
  *(v58 + 16) = v56;
  *(v58 + 24) = 0;
  sub_25E18D370(&v85, v58 + 32);
  *(v58 + 64) = 0;
  sub_25E18D370(&v83, v58 + 72);
  sub_25E1A4BEC();
  sub_25E1819EC(&v83, &qword_27FCDD180, &qword_25E1A7B40);
  sub_25E1819EC(&v85, &qword_27FCDD180, &qword_25E1A7B40);
  v59 = v81;
  sub_25E1907C0(v79, v81);
  v60 = v73;
  sub_25E1907C0(v80, v73);
  v61 = v74;
  sub_25E1907C0(v82, v74);
  v62 = v75;
  sub_25E1907C0(v50, v75);
  v63 = v76;
  sub_25E1907C0(v54, v76);
  v64 = v77;
  sub_25E1907C0(v58, v77);
  v65 = v78;
  sub_25E1907C0(v59, v78);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD278, &qword_25E1A7A08);
  sub_25E1907C0(v60, v65 + v66[12]);
  sub_25E1907C0(v61, v65 + v66[16]);
  sub_25E1907C0(v62, v65 + v66[20]);
  sub_25E1907C0(v63, v65 + v66[24]);
  sub_25E1907C0(v64, v65 + v66[28]);
  sub_25E190824(v58);
  sub_25E190824(v54);
  sub_25E190824(v50);
  sub_25E190824(v82);
  sub_25E190824(v80);
  sub_25E190824(v79);
  sub_25E190824(v64);
  sub_25E190824(v63);
  sub_25E190824(v62);
  sub_25E190824(v61);
  sub_25E190824(v60);
  return sub_25E190824(v81);
}

uint64_t sub_25E18EF74@<X0>(uint64_t *a2@<X8>)
{
  sub_25E1A502C();
  sub_25E18DDF8(&v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD198, &qword_25E1A77D8);
  sub_25E18F064();
  result = sub_25E1A567C();
  *a2 = result;
  return result;
}

unint64_t sub_25E18F064()
{
  result = qword_27FCDD1A0;
  if (!qword_27FCDD1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD198, &qword_25E1A77D8);
    sub_25E17F9C0(&qword_27FCDD1A8, &qword_27FCDD1B0, &qword_25E1A77E0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD1A0);
  }

  return result;
}

uint64_t sub_25E18F114(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    return 1;
  }

  else
  {
    return sub_25E1A599C();
  }
}

uint64_t sub_25E18F13C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD260, &qword_25E1A79B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v9 = *a3;
  v8 = a3[1];
  sub_25E1817AC(a1, &v11 - v6, &qword_27FCDD260, &qword_25E1A79B8);

  return sub_25E18F204(v7, v9, v8);
}

uint64_t sub_25E18F204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD260, &qword_25E1A79B8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for KeyPathView(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_25E1819EC(a1, &qword_27FCDD260, &qword_25E1A79B8);
    sub_25E18F464(a2, a3, v9);

    return sub_25E1819EC(v9, &qword_27FCDD260, &qword_25E1A79B8);
  }

  else
  {
    sub_25E1905F4(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_25E18FAE4(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_25E18F3CC(uint64_t a1)
{
  v2 = sub_25E1905A0();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_25E18F418(uint64_t a1)
{
  v2 = sub_25E1905A0();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_25E18F464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_25E191AA0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25E18FCE0();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for KeyPathView(0);
    v19 = *(v12 - 8);
    sub_25E1905F4(v11 + *(v19 + 72) * v8, a3);
    sub_25E18F8F8(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for KeyPathView(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_25E18F5BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for KeyPathView(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD258, &qword_25E1A79B0);
  v40 = v4;
  result = sub_25E1A596C();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_25E1905F4(v28, v41);
      }

      else
      {
        sub_25E1907C0(v28, v41);
      }

      sub_25E1A59BC();
      sub_25E1A581C();
      result = sub_25E1A59DC();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_25E1905F4(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_25E18F8F8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25E1A58FC() + 1) & ~v5;
    while (1)
    {
      sub_25E1A59BC();

      sub_25E1A581C();
      v9 = sub_25E1A59DC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for KeyPathView(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25E18FAE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_25E191AA0(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_25E18FCE0();
      goto LABEL_7;
    }

    sub_25E18F5BC(v15, a4 & 1);
    v22 = sub_25E191AA0(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_25E1A59AC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for KeyPathView(0) - 8) + 72) * v12;

    return sub_25E190880(a1, v20);
  }

LABEL_13:
  sub_25E18FC48(v12, a2, a3, a1, v18);
}

uint64_t sub_25E18FC48(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for KeyPathView(0);
  result = sub_25E1905F4(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_25E18FCE0()
{
  v1 = v0;
  v2 = type metadata accessor for KeyPathView(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD258, &qword_25E1A79B0);
  v4 = *v0;
  v5 = sub_25E1A595C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_25E1907C0(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_25E1905F4(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

  return result;
}

unint64_t sub_25E18FF10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD190, &qword_25E1A7B10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD258, &qword_25E1A79B0);
    v7 = sub_25E1A597C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25E1817AC(v9, v5, &qword_27FCDD190, &qword_25E1A7B10);
      v11 = *v5;
      v12 = v5[1];
      result = sub_25E191AA0(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for KeyPathView(0);
      result = sub_25E1905F4(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_25E19014C()
{
  result = qword_27FCDD1C8;
  if (!qword_27FCDD1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD1C8);
  }

  return result;
}

void sub_25E19025C(uint64_t a1)
{
  sub_25E19035C(319);
  if (v1 <= 0x3F)
  {
    sub_25E1903C0(319);
    if (v2 <= 0x3F)
    {
      sub_25E1814CC(319, &qword_27FCDD1F8, MEMORY[0x277CE11C8]);
      if (v3 <= 0x3F)
      {
        sub_25E1814CC(319, &qword_27FCDD200, MEMORY[0x277D84F70] + 8);
        if (v4 <= 0x3F)
        {
          sub_25E1A4BFC();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_25E19035C(uint64_t a1)
{
  if (!qword_27FCDD1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD1E8, &unk_25E1A7930);
    v1 = sub_25E1A4D1C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FCDD1E0);
    }
  }
}

void sub_25E1903C0(uint64_t a1)
{
  if (!qword_27FCDD1F0)
  {
    sub_25E1A58DC();
    v1 = sub_25E1A58CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27FCDD1F0);
    }
  }
}

unint64_t sub_25E190428()
{
  result = qword_27FCDD218;
  if (!qword_27FCDD218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD1B8, &qword_25E1A77E8);
    sub_25E1904E0();
    sub_25E17F9C0(&qword_27FCDD240, &qword_27FCDD248, &qword_25E1A7970, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD218);
  }

  return result;
}

unint64_t sub_25E1904E0()
{
  result = qword_27FCDD220;
  if (!qword_27FCDD220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD228, &qword_25E1A7960);
    sub_25E17F9C0(&qword_27FCDD230, &qword_27FCDD238, &qword_25E1A7968, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD220);
  }

  return result;
}

unint64_t sub_25E1905A0()
{
  result = qword_27FCDD250;
  if (!qword_27FCDD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD250);
  }

  return result;
}

uint64_t sub_25E1905F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyPathView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E190658(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_25E190668()
{
  result = qword_27FCDD268;
  if (!qword_27FCDD268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD260, &qword_25E1A79B8);
    sub_25E19071C(&qword_27FCDD270, type metadata accessor for KeyPathView, &protocol conformance descriptor for KeyPathView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD268);
  }

  return result;
}

uint64_t sub_25E19071C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25E1907C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyPathView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E190824(uint64_t a1)
{
  v2 = type metadata accessor for KeyPathView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E190880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyPathView(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_25E1908E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25E1908F4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_25E190900()
{
  result = qword_27FCDD280;
  if (!qword_27FCDD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD280);
  }

  return result;
}

uint64_t sub_25E190954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_25E191AA0(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for KeyPathView(0);
    v17 = *(v10 - 8);
    sub_25E1907C0(v9 + *(v17 + 72) * v8, a4);
    v11 = *(v17 + 56);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v15 = type metadata accessor for KeyPathView(0);
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a4;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t PlaceholderActionItem.init(viewTag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_getKeyPath();
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  return result;
}

uint64_t PlaceholderActionItem.viewTag.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PlaceholderActionItem.viewTag.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PlaceholderActionItem.body.getter@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD288, &qword_25E1A7A38);
  MEMORY[0x28223BE20](v2);
  v4 = &v63 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD290, &unk_25E1A7A40);
  MEMORY[0x28223BE20](v68);
  v70 = &v63 - v5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD260, &qword_25E1A79B8);
  v6 = MEMORY[0x28223BE20](v69);
  v66 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v67 = &v63 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v63 - v10;
  v12 = sub_25E1A4F8C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v18 = *(v1 + 8);
  v19 = *(v1 + 24);
  v72 = *(v1 + 16);
  v64 = v14;
  v65 = v13;
  if (v18 == 1)
  {

    v20 = v17;
  }

  else
  {

    sub_25E1A588C();
    v21 = sub_25E1A525C();
    LODWORD(v63) = v18;
    v22 = v12;
    v23 = v21;
    sub_25E1A4C0C();

    sub_25E1A4F7C();
    swift_getAtKeyPath();
    sub_25E1908F4(v17, 0);
    v24 = v22;
    v18 = v63;
    (*(v13 + 8))(v16, v24);
    v20 = v74;
  }

  v25 = *(v20 + 16);
  v26 = v19;

  if (v25 && (v27 = sub_25E191AA0(v72, v19), (v28 & 1) != 0))
  {
    v29 = v27;

    v30 = *(v20 + 56);
    v31 = type metadata accessor for KeyPathView(0);
    v32 = *(v31 - 8);
    v63 = *(v32 + 72);
    v33 = v30 + v63 * v29;
    v34 = v32;
    sub_25E1907C0(v33, v11);

    v35 = *(v34 + 56);
    v35(v11, 0, 1, v31);
    sub_25E1819EC(v11, &qword_27FCDD260, &qword_25E1A79B8);
    if (v18)
    {
    }

    else
    {

      sub_25E1A588C();
      v55 = v35;
      v56 = sub_25E1A525C();
      sub_25E1A4C0C();

      v35 = v55;
      sub_25E1A4F7C();
      swift_getAtKeyPath();
      sub_25E1908F4(v17, 0);
      (*(v65 + 8))(v16, v64);
      v17 = v74;
    }

    v57 = v66;
    if (*(v17 + 16) && (v58 = sub_25E191AA0(v72, v26), (v59 & 1) != 0))
    {
      sub_25E1907C0(*(v17 + 56) + v58 * v63, v57);
      v60 = 0;
    }

    else
    {
      v60 = 1;
    }

    v35(v57, v60, 1, v31);
    v61 = v67;
    sub_25E191B18(v57, v67);
    v52 = &qword_27FCDD260;
    v53 = &qword_25E1A79B8;
    sub_25E1817AC(v61, v70, &qword_27FCDD260, &qword_25E1A79B8);
    swift_storeEnumTagMultiPayload();
    sub_25E190668();
    sub_25E17F9C0(&qword_27FCDD2A8, &qword_27FCDD288, &qword_25E1A7A38, &protocol conformance descriptor for PaymentItem<A, B, C, D>);
    sub_25E1A515C();
    v54 = v61;
  }

  else
  {

    v36 = type metadata accessor for KeyPathView(0);
    (*(*(v36 - 8) + 56))(v11, 1, 1, v36);
    sub_25E1819EC(v11, &qword_27FCDD260, &qword_25E1A79B8);
    v37 = &v4[v2[29]];
    v73 = 0;
    sub_25E1A55DC();
    v38 = v75;
    *v37 = v74;
    v37[1] = v38;
    v39 = &v4[v2[30]];
    *v39 = swift_getKeyPath();
    v39[8] = 0;
    v40 = &v4[v2[31]];
    *v40 = swift_getKeyPath();
    v40[8] = 0;
    v41 = v2[32];
    *&v4[v41] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD298, &qword_25E1A7AD0);
    swift_storeEnumTagMultiPayload();
    *&v4[v2[33]] = 0x4052800000000000;
    *&v4[v2[34]] = 0x402C000000000000;
    *&v4[v2[35]] = 0x4044000000000000;
    sub_25E1A4FDC();
    *v4 = sub_25E1A53AC();
    *(v4 + 1) = v42;
    v4[16] = v43 & 1;
    *(v4 + 3) = v44;
    v74 = v72;
    v75 = v19;
    sub_25E180F4C();
    *(v4 + 4) = sub_25E1A53CC();
    *(v4 + 5) = v46;
    *(v4 + 6) = v45 & 1;
    *(v4 + 7) = v47;
    v48 = v2[23];
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2A0, &unk_25E1A7AD8);
    (*(*(v49 - 8) + 56))(&v4[v48], 1, 6, v49);
    v4[v2[24]] = 1;
    v4[v2[25]] = 0;
    v4[v2[26]] = 0;
    v50 = &v4[v2[27]];
    *v50 = 0;
    *(v50 + 1) = 0;
    v51 = &v4[v2[28]];
    *v51 = 0;
    *(v51 + 1) = 0;
    v52 = &qword_27FCDD288;
    v53 = &qword_25E1A7A38;
    sub_25E1817AC(v4, v70, &qword_27FCDD288, &qword_25E1A7A38);
    swift_storeEnumTagMultiPayload();
    sub_25E190668();
    sub_25E17F9C0(&qword_27FCDD2A8, &qword_27FCDD288, &qword_25E1A7A38, &protocol conformance descriptor for PaymentItem<A, B, C, D>);
    sub_25E1A515C();
    v54 = v4;
  }

  return sub_25E1819EC(v54, v52, v53);
}

uint64_t static PlaceholderActionItem_Previews.previews.getter@<X0>(uint64_t a1@<X8>)
{
  v13[0] = &unk_286FDC878;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2B0, &unk_25E1A7B00);
  sub_25E17F9C0(&qword_27FCDD2B8, &qword_27FCDD2B0, &unk_25E1A7B00, MEMORY[0x277D83980]);
  sub_25E191B88();
  sub_25E1A56DC();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD188, &unk_25E1A77A0);
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD190, &qword_25E1A7B10) - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25E1A7750;
  v6 = (v5 + v4);
  v7 = v6 + v3[14];
  *v6 = 0x4977656976657270;
  v6[1] = 0xEB000000006D6574;
  v8 = swift_getKeyPath();
  v13[3] = &type metadata for PreviewItem;
  memset(v12, 0, sizeof(v12));
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  *(v7 + 3) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 2) = v8;
  *(v7 + 3) = 0;

  sub_25E18D370(v13, (v7 + 32));
  v7[64] = 0;
  sub_25E18D370(v12, (v7 + 72));
  type metadata accessor for KeyPathView(0);
  sub_25E1A4BEC();

  sub_25E1819EC(v12, &qword_27FCDD180, &qword_25E1A7B40);
  sub_25E1819EC(v13, &qword_27FCDD180, &qword_25E1A7B40);
  v9 = sub_25E18FF10(v5);
  swift_setDeallocating();
  sub_25E1819EC(v6, &qword_27FCDD190, &qword_25E1A7B10);
  swift_deallocClassInstance();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2C8, &qword_25E1A7B48);
  v11 = (a1 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = v9;
  return result;
}

uint64_t sub_25E191638@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
}

uint64_t PreviewItem.asAnyView.getter()
{
  sub_25E191C94();

  return sub_25E1A567C();
}

uint64_t sub_25E1916C8(uint64_t a1)
{
  v2 = sub_25E19204C();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_25E191714(uint64_t a1)
{
  v2 = sub_25E19204C();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t PreviewItem.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD288, &qword_25E1A7A38);
  v3 = (a1 + v2[29]);
  sub_25E1A55DC();
  *v3 = v18;
  v3[1] = v19;
  v4 = a1 + v2[30];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = a1 + v2[31];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = v2[32];
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD298, &qword_25E1A7AD0);
  swift_storeEnumTagMultiPayload();
  *(a1 + v2[33]) = 0x4052800000000000;
  *(a1 + v2[34]) = 0x402C000000000000;
  *(a1 + v2[35]) = 0x4044000000000000;
  sub_25E1A4FDC();
  *a1 = sub_25E1A53AC();
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  sub_25E1A4FDC();
  *(a1 + 32) = sub_25E1A53AC();
  *(a1 + 40) = v11;
  *(a1 + 48) = v10 & 1;
  *(a1 + 56) = v12;
  v13 = v2[23];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2A0, &unk_25E1A7AD8);
  result = (*(*(v14 - 8) + 56))(a1 + v13, 1, 6, v14);
  *(a1 + v2[24]) = 1;
  *(a1 + v2[25]) = 0;
  *(a1 + v2[26]) = 0;
  v16 = (a1 + v2[27]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a1 + v2[28]);
  *v17 = 0;
  v17[1] = 0;
  return result;
}

uint64_t sub_25E1919D8(uint64_t a1)
{
  v2 = sub_25E1A4D0C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25E1A4E7C();
}

unint64_t sub_25E191AA0(uint64_t a1, uint64_t a2)
{
  sub_25E1A59BC();
  sub_25E1A581C();
  v4 = sub_25E1A59DC();

  return sub_25E191BDC(a1, a2, v4);
}

uint64_t sub_25E191B18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD260, &qword_25E1A79B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E191B88()
{
  result = qword_27FCDD2C0;
  if (!qword_27FCDD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD2C0);
  }

  return result;
}