uint64_t _s14ClassroomUIKit13EMSDeviceTypeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_2436CC368();
  MEMORY[0x245D3C5D0](v1);
  return sub_2436CC398();
}

uint64_t sub_24366B8DC(uint64_t a1)
{
  v2 = *v1;
  sub_2436CC368();
  MEMORY[0x245D3C5D0](v2);
  return sub_2436CC398();
}

uint64_t sub_24366B920(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_2436CB4E8();

    return sub_2436CB108();
  }

  else
  {
    sub_2436CB178();
    swift_getWitnessTable();
    sub_2436CB458();
    sub_2436CB108();
    sub_2436CBF38();
    swift_getWitnessTable();
    sub_2436CB178();
    swift_getWitnessTable();
    sub_2436CB458();
    return sub_2436CB108();
  }
}

uint64_t sub_24366BA84(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_2436CB4E8();
    sub_2436CB108();
  }

  else
  {
    sub_2436CB178();
    swift_getWitnessTable();
    sub_2436CB458();
    sub_2436CB108();
    sub_2436CBF38();
    swift_getWitnessTable();
    sub_2436CB178();
    swift_getWitnessTable();
    sub_2436CB458();
    sub_2436CB108();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24366BCAC(uint64_t a1, id *a2)
{
  result = sub_2436CBD18();
  *a2 = 0;
  return result;
}

uint64_t sub_24366BD24(uint64_t a1, id *a2)
{
  v3 = sub_2436CBD28();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24366BDA4@<X0>(uint64_t *a1@<X8>)
{
  sub_2436CBD38();
  v2 = sub_2436CBD08();

  *a1 = v2;
  return result;
}

uint64_t sub_24366BDE8()
{
  v0 = sub_2436CBD38();
  v1 = MEMORY[0x245D3C020](v0);

  return v1;
}

uint64_t sub_24366BE24(uint64_t a1)
{
  sub_2436CBD38();
  sub_2436CBD88();
}

uint64_t sub_24366BE78(uint64_t a1)
{
  sub_2436CBD38();
  sub_2436CC368();
  sub_2436CBD88();
  v1 = sub_2436CC398();

  return v1;
}

void *sub_24366BEEC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24366BEFC(void *a1, uint64_t *a2)
{
  v2 = sub_2436CBD38();
  v4 = v3;
  if (v2 == sub_2436CBD38() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2436CC2E8();
  }

  return v7 & 1;
}

uint64_t sub_24366BF84@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2436CBD08();

  *a2 = v3;
  return result;
}

uint64_t sub_24366BFCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2436CBD38();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24366BFF8(uint64_t a1)
{
  v2 = sub_24366C56C(&qword_27ED7F620, &unk_2436CD870);
  v3 = sub_24366C56C(&unk_27ED7E280, "eӶ>he");
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24366C090(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24366C0A4()
{
  result = qword_27ED7DF30;
  if (!qword_27ED7DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7DF30);
  }

  return result;
}

unint64_t sub_24366C0FC()
{
  result = qword_27ED7DF38;
  if (!qword_27ED7DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7DF38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EMSDeviceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EMSDeviceType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for EMSBiometryType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EMSBiometryType(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24366C45C(uint64_t a1, int a2)
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

uint64_t sub_24366C47C(uint64_t result, int a2, int a3)
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

void sub_24366C4B8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_24366C56C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24366C634(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24366C67C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_24366C6DC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24366C72C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24366C784(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24366C79C(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_24366C7D4()
{
  sub_2436CC368();
  MEMORY[0x245D3C5D0](0);
  return sub_2436CC398();
}

uint64_t sub_24366C840(uint64_t a1)
{
  sub_2436CC368();
  MEMORY[0x245D3C5D0](0);
  return sub_2436CC398();
}

id sub_24366C920()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___rosterProvider;
  v2 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___rosterProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___rosterProvider);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CFA608]) init];
    v5 = [v4 makeEasyMAIDSignInRosterProvider];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_24366C9BC()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___rosterProviderContainer;
  v2 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___rosterProviderContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___rosterProviderContainer);
  }

  else
  {
    v4 = sub_24366C920();
    v5 = [v4 instructorRosterProviderWithoutKeychain];

    v6 = type metadata accessor for EMSProductionDataSource.RosterProviderContainer();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtCC14ClassroomUIKit23EMSProductionDataSourceP33_0E980FA52DC5DDFDA33EF957E6B75ED923RosterProviderContainer_rosterProvider] = v5;
    v12.receiver = v7;
    v12.super_class = v6;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_24366CA74(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EMSUserInterfaceRecord(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_2436CBD08();
  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    v9 = sub_2436CBD08();
    v10 = [v8 objectForKey_];

    if (v10)
    {
      sub_2436CBFB8();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    if (*(&v14 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E3E8, &unk_2436CD9F0);
      if (swift_dynamicCast())
      {
        sub_24366CF68(v12[5], v5);
        sub_243671A10(v5, a1);
        v11 = 0;
LABEL_10:
        (*(v3 + 56))(a1, v11, 1, v2);
        return;
      }
    }

    else
    {
      sub_243671AC8(v15, &qword_27ED7E4B0, &qword_2436CDAB8);
    }

    v11 = 1;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_24366CF68(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4F0, &qword_2436CF910);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_2436CAD38();
  v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v9 = qword_27ED7E2F0, v10 = unk_27ED7E2F8, , v11 = sub_24366FE3C(v9, v10), v13 = v12, , (v13 & 1) == 0) || (sub_243670ED0(*(a1 + 56) + 32 * v11, v46), (swift_dynamicCast() & 1) == 0) || (v14 = objc_allocWithZone(MEMORY[0x277D04C00]), v15 = sub_2436CBD08(), , v16 = [v14 initWithString_], v15, !v16))
  {

    v25 = qword_27ED7E2F0;
    v24 = unk_27ED7E2F8;
    sub_243671A74();
    swift_allocError();
    *v26 = v25;
    v26[1] = v24;
    swift_willThrow();

    return;
  }

  v42 = v16;
  *v47 = v16;
  if (!*(a1 + 16) || (v17 = *aDate_1, v18 = unk_27ED7E308, , v19 = sub_24366FE3C(v17, v18), v21 = v20, , (v21 & 1) == 0))
  {

    (*(v43 + 56))(v5, 1, 1, v6);
    goto LABEL_11;
  }

  sub_243670ED0(*(a1 + 56) + 32 * v19, v46);
  v22 = swift_dynamicCast();
  v23 = v43;
  (*(v43 + 56))(v5, v22 ^ 1u, 1, v6);
  if ((*(v23 + 48))(v5, 1, v6) == 1)
  {

LABEL_11:
    sub_243671AC8(v5, &qword_27ED7E4F0, &qword_2436CF910);
    v28 = *aDate_1;
    v27 = unk_27ED7E308;
    sub_243671A74();
    swift_allocError();
    *v29 = v28;
    v29[1] = v27;
    swift_willThrow();

    return;
  }

  (*(v23 + 32))(v8, v5, v6);
  v30 = *(type metadata accessor for EMSUserInterfaceRecord(0) + 24);
  (*(v23 + 16))(&v47[v30], v8, v6);
  if (*(a1 + 16) && (v31 = aUseridentifier_0[0], v32 = aUseridentifier_0[1], , v33 = sub_24366FE3C(v31, v32), v35 = v34, , (v35 & 1) != 0))
  {
    sub_243670ED0(*(a1 + 56) + 32 * v33, v46);

    if (swift_dynamicCast())
    {
      (*(v43 + 8))(v8, v6);
      v36 = v45;
      v37 = v47;
      *(v47 + 1) = v44;
      *(v37 + 2) = v36;
      return;
    }
  }

  else
  {
  }

  v39 = aUseridentifier_0[0];
  v38 = aUseridentifier_0[1];
  sub_243671A74();
  swift_allocError();
  *v40 = v39;
  v40[1] = v38;
  swift_willThrow();
  v41 = *(v43 + 8);

  v41(v8, v6);

  v41(&v47[v30], v6);
}

void sub_24366D454(uint64_t a1@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_2436CBD08();
  v5 = [v3 initWithSuiteName_];

  if (!v5)
  {
    __break(1u);
  }

  v6 = sub_24366D680(0xD00000000000001CLL, 0x80000002436E5000);

  if (!v1)
  {
    if (v6)
    {
      v7 = objc_opt_self();
      v8 = sub_2436CBC28();

      *&v16 = 0;
      v9 = [v7 dataWithJSONObject:v8 options:0 error:&v16];

      v10 = v16;
      if (v9)
      {
        v11 = sub_2436CACB8();
        v13 = v12;

        sub_2436CAB18();
        swift_allocObject();
        sub_2436CAB08();
        sub_243671924();
        sub_2436CAAF8();
        sub_243670E7C(v11, v13);

        v14 = v17;
        *a1 = v16;
        *(a1 + 16) = v14;
      }

      else
      {
        v15 = v10;
        sub_2436CAC28();

        swift_willThrow();
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }
  }
}

uint64_t sub_24366D680(uint64_t a1, uint64_t a2)
{
  v3 = sub_2436CBD08();
  v4 = [v2 objectForKey_];

  if (!v4)
  {
    return 0;
  }

  sub_2436CBFB8();
  swift_unknownObjectRelease();
  sub_243670ED0(v15, v14);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E3E8, &unk_2436CD9F0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v15);
    return v15[5];
  }

  else
  {
    v14[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4D0, &qword_2436CDAC0);
    v7 = sub_2436CBD68();
    v9 = v8;
    __swift_project_boxed_opaque_existential_0(v15, v15[3]);
    v14[0] = swift_getDynamicType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4D8, &qword_2436CDAC8);
    v10 = sub_2436CBD68();
    v12 = v11;
    sub_2436719BC();
    swift_allocError();
    *v13 = v7;
    v13[1] = v9;
    v13[2] = v10;
    v13[3] = v12;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }
}

void sub_24366D80C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = sub_2436CBC38();

  v8 = a4;
  v6(a2, v7, a4);
}

void *sub_24366D8C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = a4;
    v10[3] = v9;
    v10[4] = v6;
    swift_beginAccess();
    v11 = *(a4 + 16);
    swift_unknownObjectRetain();

    [v11 invalidate];
    swift_beginAccess();
    v12 = *(a4 + 16);
    *(a4 + 16) = 0;

    if ((v11 || (swift_beginAccess(), *(a3 + 16) == 1)) && !v6)
    {

      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = sub_2436718F0;
      *(v18 + 24) = v10;
      aBlock[4] = sub_2436718FC;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_243689660;
      aBlock[3] = &block_descriptor_71;
      v19 = _Block_copy(aBlock);

      v20 = [v17 scheduledTimerWithTimeInterval:0 repeats:v19 block:2.0];

      _Block_release(v19);
      swift_beginAccess();
      v21 = *(a4 + 16);
      *(a4 + 16) = v20;
    }

    else
    {
      swift_beginAccess();
      v13 = *(a4 + 16);
      if (v13)
      {
        [v13 invalidate];
      }

      swift_beginAccess();
      v14 = *(a4 + 16);
      *(a4 + 16) = 0;

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v16 = Strong;

        aBlock[6] = v6;
        swift_unknownObjectRetain();
        sub_2436CAE48();

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    result = swift_beginAccess();
    *(a3 + 16) = 0;
  }

  return result;
}

void *sub_24366DC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4)
  {
    [v4 invalidate];
  }

  swift_beginAccess();
  v5 = *(a1 + 16);
  *(a1 + 16) = 0;

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;

    swift_unknownObjectRetain();
    sub_2436CAE48();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24366DCEC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CFA648]) init];
  v2 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_studentProxy;
  v3 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_studentProxy);
  *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_studentProxy) = v1;
  v4 = v1;

  if (v4)
  {
    [v4 addObserver_];
  }

  [*(v0 + v2) connect];

  return sub_24366DE24();
}

void sub_24366DD80()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_currentFetchHistoryOperation;
  v2 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_currentFetchHistoryOperation);
  if (v2)
  {
    [v2 cancel];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
    if (v3)
    {
      [v3 cancel];
    }
  }

  v4 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_studentProxy;
  v5 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_studentProxy);
  if (v5)
  {
    [v5 removeObserver_];
    v5 = *(v0 + v4);
  }

  [v5 disconnect];
  v6 = *(v0 + v4);
  *(v0 + v4) = 0;
}

uint64_t sub_24366DE24()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CFA620]) init];
  v2 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_studentProxy);
  if (v2)
  {
    v2 = [v2 enqueuedOperationForRequest_];
  }

  v3 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_currentFetchHistoryOperation;
  v4 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_currentFetchHistoryOperation);
  *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_currentFetchHistoryOperation) = v2;
  if (v4)
  {
    [v4 cancel];

    v2 = *(v0 + v3);
  }

  if (v2)
  {
    v5 = v2;
    [v5 addTarget:v0 selector:sel_fetchSignInHistoryOperationDidFinishWithOperation_ forOperationEvents:6];
  }

  return MEMORY[0x2821F96F8]();
}

void sub_24366DF10(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_currentFetchHistoryOperation;
  v4 = *(v1 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_currentFetchHistoryOperation);
  if (!v4 || (sub_243671B28(0, &qword_27ED7E4A8, 0x277CF9558), v6 = v4, v7 = a1, LOBYTE(a1) = sub_2436CBF18(), v7, v6, (a1 & 1) == 0))
  {
    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v19 = sub_2436CADE8();
    __swift_project_value_buffer(v19, qword_27ED7FD78);
    oslog = sub_2436CADC8();
    v20 = sub_2436CBED8();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24366A000, oslog, v20, "Old fetch sign in history operation is still in progress", v21, 2u);
      MEMORY[0x245D3CD90](v21, -1, -1);
    }

LABEL_17:

    return;
  }

  v8 = *(v2 + v3);
  *(v2 + v3) = 0;
  if (v8)
  {
    [v8 cancel];
  }

  v9 = [v7 error];
  if (v9)
  {
    v10 = v9;
    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v11 = sub_2436CADE8();
    __swift_project_value_buffer(v11, qword_27ED7FD78);
    v12 = v10;
    oslog = sub_2436CADC8();
    v13 = sub_2436CBEC8();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v33 = v15;
      *v14 = 136446210;
      swift_getErrorValue();
      Error.crkui_verboseDescription.getter(v28, v29);
      v18 = sub_2436AFA70(v16, v17, &v33);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_24366A000, oslog, v13, "Failed to fetch sign in history: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x245D3CD90](v15, -1, -1);
      MEMORY[0x245D3CD90](v14, -1, -1);

      return;
    }

    goto LABEL_17;
  }

  if ([v7 resultObject])
  {
    sub_2436CBFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33 = v31;
  v34 = v32;
  if (*(&v32 + 1))
  {
    sub_243671B28(0, &qword_27ED7E4B8, 0x277CFA628);
    if (swift_dynamicCast())
    {
      v22 = [v30 history];
      if (v22)
      {
        v23 = v22;
        sub_243671B28(0, &qword_27ED7E4C0, 0x277CFA640);
        v24 = sub_2436CBE08();
      }

      else
      {
        v24 = MEMORY[0x277D84F90];
      }

      v25 = [v30 isTruncated];
      v26 = [v30 limit];
      if ((v26 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        *&v33 = v24;
        *(&v33 + 1) = v25;
        *&v34 = v26;

        sub_2436CAE48();
      }
    }
  }

  else
  {
    sub_243671AC8(&v33, &qword_27ED7E4B0, &qword_2436CDAB8);
  }
}

uint64_t sub_24366E48C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E478, &qword_2436CDA50);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  v5 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___roster;
  if (*(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___roster))
  {
    v6 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___roster);
  }

  else
  {
    v9[1] = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_rosterSubject);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E480, &qword_2436CDA58);
    sub_243671838(&qword_27ED7E488, &qword_27ED7E480, &qword_2436CDA58, MEMORY[0x277CBCE48]);
    v7 = v0;
    sub_2436CAF28();

    sub_243671838(&qword_27ED7E490, &qword_27ED7E478, &qword_2436CDA50, MEMORY[0x277CBCB60]);
    v6 = sub_2436CAF08();
    (*(v2 + 8))(v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

void sub_24366E6D4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E498, qword_2436CDA60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_rosterPassthroughSubscription;
    if (*&Strong[OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_rosterPassthroughSubscription])
    {
    }

    else
    {
      v8 = Strong;
      v9 = swift_allocObject();
      *(v9 + 16) = 1;
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      v11 = sub_24366C9BC();
      swift_getKeyPath("83k;");
      sub_2436CAC78();

      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = v9;
      v13[4] = v10;
      sub_243671838(&qword_27ED7E4A0, &qword_27ED7E498, qword_2436CDA60, MEMORY[0x277CC9E08]);

      v14 = sub_2436CAF68();

      (*(v3 + 8))(v5, v2);
      *&v8[v7] = v14;
    }
  }
}

uint64_t sub_24366E944()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___history;
  if (*(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___history))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___history);
  }

  else
  {
    v2 = sub_24366E9AC(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_24366E9AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E458, &qword_2436CDA40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - v4;
  v8[1] = *(a1 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_historySubject);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E460, &qword_2436CDA48);
  sub_243671838(&qword_27ED7E468, &qword_27ED7E460, &qword_2436CDA48, MEMORY[0x277CBCE48]);
  sub_2436CAF28();

  sub_243671838(&qword_27ED7E470, &qword_27ED7E458, &qword_2436CDA40, MEMORY[0x277CBCB60]);
  v6 = sub_2436CAF08();
  (*(v3 + 8))(v5, v2);
  return v6;
}

void sub_24366EC3C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_historySubscriptionCount);
    if (v4 == -1)
    {
      __break(1u);
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_historySubscriptionCount) = v4 + 1;
      if (!v4)
      {
        sub_24366DCEC();
      }
    }
  }
}

void sub_24366ECB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_historySubscriptionCount);
    v5 = v4 != 0;
    v6 = v4 - 1;
    if (v5)
    {
      *(Strong + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_historySubscriptionCount) = v6;
      if (!v6)
      {
        sub_24366DD80();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_24366ED24(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_historySubscriptionCount);
    v4 = v3 != 0;
    v5 = v3 - 1;
    if (v4)
    {
      *(Strong + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_historySubscriptionCount) = v5;
      if (!v5)
      {
        sub_24366DD80();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_24366ED98(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_studentProxy);
  if (v6)
  {
    v8 = objc_allocWithZone(MEMORY[0x277CFA638]);
    v9 = v6;
    v10 = [v8 init];
    if (v10)
    {
      v11 = v10;
      [v10 setItem_];
      v12 = [v9 enqueuedOperationForRequest_];
      if (v12)
      {
        v13 = v12;
        v14 = swift_allocObject();
        v14[2] = v13;
        v14[3] = a2;
        v14[4] = a3;
        v21[4] = sub_2436716A0;
        v21[5] = v14;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 1107296256;
        v21[2] = sub_24366F258;
        v21[3] = &block_descriptor_45;
        v15 = _Block_copy(v21);
        v16 = objc_opt_self();
        v17 = v13;

        v18 = [v16 blockOperationWithBlock_];
        _Block_release(v15);

        [v18 addDependency_];
        v19 = [objc_opt_self() mainQueue];
        [v19 addOperation_];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_24367160C();
    v20 = swift_allocError();
    a2();
  }
}

void sub_24366EFE4(void *a1, void (*a2)(void *))
{
  v3 = [a1 error];
  if (v3)
  {
    v4 = v3;
    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v5 = sub_2436CADE8();
    __swift_project_value_buffer(v5, qword_27ED7FD78);
    v6 = v4;
    v7 = sub_2436CADC8();
    v8 = sub_2436CBEC8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136446210;
      swift_getErrorValue();
      Error.crkui_verboseDescription.getter(v19, v20);
      v13 = sub_2436AFA70(v11, v12, &v21);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_24366A000, v7, v8, "Failed to save sign in history: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x245D3CD90](v10, -1, -1);
      MEMORY[0x245D3CD90](v9, -1, -1);
    }

    v14 = v6;
    a2(v4);
  }

  else
  {
    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v15 = sub_2436CADE8();
    __swift_project_value_buffer(v15, qword_27ED7FD78);
    v16 = sub_2436CADC8();
    v17 = sub_2436CBED8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24366A000, v16, v17, "EMSProductionDataSource history saved", v18, 2u);
      MEMORY[0x245D3CD90](v18, -1, -1);
    }

    a2(0);
  }
}

uint64_t sub_24366F258(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_24366F29C(uint64_t a1)
{
  v8 = [objc_allocWithZone(MEMORY[0x277CFA630]) init];
  if (v8)
  {
    v2 = v8;
    v3 = sub_2436CBDF8();
    [v2 setIdentifiers_];
  }

  v4 = *(v1 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_studentProxy);
  if (v4)
  {
    v5 = [v4 enqueuedOperationForRequest_];
    if (v5)
    {
      v6 = v5;
      [v6 addTarget:v1 selector:sel_removeSignInHistoryOperationDidFinishWithOperation_ forOperationEvents:6];
    }
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_24366F3A4()
{
  [objc_allocWithZone(MEMORY[0x277CFA610]) init];
  v1 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_studentProxy);
  if (v1)
  {
    v2 = [v1 enqueuedOperationForRequest_];
    if (v2)
    {
      v3 = v2;
      [v3 addTarget:v0 selector:sel_clearSignInHistoryOperationDidFinishWithOperation_ forOperationEvents:6];
    }
  }

  return MEMORY[0x2821F9730]();
}

unint64_t sub_24366F460()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E408, &qword_2436CDA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2436CD980;
  v2 = unk_27ED7E2F8;
  *(inited + 32) = qword_27ED7E2F0;
  *(inited + 40) = v2;
  v3 = *v0;

  v4 = [v3 stringValue];
  v5 = sub_2436CBD38();
  v7 = v6;

  v8 = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  v9 = *aDate_1;
  v10 = unk_27ED7E308;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  *(inited + 88) = v10;
  v11 = *(type metadata accessor for EMSUserInterfaceRecord(0) + 24);
  v12 = sub_2436CAD38();
  *(inited + 120) = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 96));
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, v0 + v11, v12);
  v14 = aUseridentifier_0[1];
  *(inited + 128) = aUseridentifier_0[0];
  *(inited + 136) = v14;
  v15 = *(v0 + 8);
  v16 = *(v0 + 16);
  *(inited + 168) = v8;
  *(inited + 144) = v15;
  *(inited + 152) = v16;

  v17 = sub_243670978(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E410, &qword_2436CDA08);
  swift_arrayDestroy();
  return v17;
}

uint64_t sub_24366F5F8(uint64_t a1, uint64_t a2, double a3)
{
  v15[4] = *MEMORY[0x277D85DE8];
  sub_2436CAB48();
  swift_allocObject();
  sub_2436CAB38();
  sub_243670E28();
  v4 = sub_2436CAB28();
  v6 = v5;

  if (!v3)
  {
    v8 = objc_opt_self();
    v9 = sub_2436CACA8();
    v14[0] = 0;
    v10 = [v8 JSONObjectWithData:v9 options:0 error:v14];

    v11 = v14[0];
    if (v10)
    {
      sub_2436CBFB8();
      swift_unknownObjectRelease();
      sub_243670ED0(v15, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E3E8, &unk_2436CD9F0);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v15);
        sub_243670E7C(v4, v6);
        return v13;
      }

      else
      {
        sub_243670F2C();
        swift_allocError();
        swift_willThrow();
        sub_243670E7C(v4, v6);
        return __swift_destroy_boxed_opaque_existential_0(v15);
      }
    }

    else
    {
      v12 = v11;
      sub_2436CAC28();

      swift_willThrow();
      return sub_243670E7C(v4, v6);
    }
  }

  return result;
}

id sub_24366F7F8()
{
  *&v0[OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___rosterProvider] = 0;
  *&v0[OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___rosterProviderContainer] = 0;
  v1 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_rosterSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E480, &qword_2436CDA58);
  swift_allocObject();
  *&v0[v1] = sub_2436CAE78();
  v2 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_historySubject;
  v6 = 0;
  v7 = 0;
  v5 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E460, &qword_2436CDA48);
  swift_allocObject();
  *&v0[v2] = sub_2436CAE78();
  *&v0[OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_studentProxy] = 0;
  *&v0[OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_currentFetchHistoryOperation] = 0;
  *&v0[OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_rosterPassthroughSubscription] = 0;
  *&v0[OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_historySubscriptionCount] = 0;
  *&v0[OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___roster] = 0;
  *&v0[OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___history] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for EMSProductionDataSource();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_24366F95C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_24366FAE0()
{
  v0 = sub_24366C9BC();
  v1 = *&v0[OBJC_IVAR____TtCC14ClassroomUIKit23EMSProductionDataSourceP33_0E980FA52DC5DDFDA33EF957E6B75ED923RosterProviderContainer_rosterProvider];
  swift_unknownObjectRetain();

  v2 = [v1 studentDirectoryForLocationIDs_];
  swift_unknownObjectRelease();
  return v2;
}

void sub_24366FC04(uint64_t a1, uint64_t a2)
{
  v4 = sub_24366C920();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_24366FDFC;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_24366D80C;
  v7[3] = &block_descriptor;
  v6 = _Block_copy(v7);

  [v4 fetchEligibilityForEasyMAIDSignInWithCompletion_];
  _Block_release(v6);
}

uint64_t sub_24366FDC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24366FE3C(uint64_t a1, uint64_t a2)
{
  sub_2436CC368();
  sub_2436CBD88();
  v4 = sub_2436CC398();

  return sub_24366FFD0(a1, a2, v4);
}

unint64_t sub_24366FEB4(uint64_t a1)
{
  sub_2436CBD38();
  sub_2436CC368();
  sub_2436CBD88();
  v2 = sub_2436CC398();

  return sub_243670088(a1, v2);
}

unint64_t sub_24366FF48(uint64_t a1)
{
  v2 = sub_2436CBF08();

  return sub_24367018C(a1, v2);
}

unint64_t sub_24366FF8C(uint64_t a1)
{
  v2 = sub_2436CC028();

  return sub_243670260(a1, v2);
}

unint64_t sub_24366FFD0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2436CC2E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_243670088(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_2436CBD38();
      v8 = v7;
      if (v6 == sub_2436CBD38() && v8 == v9)
      {
        break;
      }

      v11 = sub_2436CC2E8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24367018C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_243671B28(0, &qword_27ED7EBA0, 0x277D04C00);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2436CBF18();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_243670260(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2436713F8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245D3C290](v9, a1);
      sub_243671454(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_243670328(void *a1)
{
  v2 = [a1 error];
  if (!v2)
  {
    if ([a1 resultObject])
    {
      sub_2436CBFB8();
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    v21[0] = v19;
    v21[1] = v20;
    if (*(&v20 + 1))
    {
      sub_243671B28(0, &qword_27ED7E4B8, 0x277CFA628);
      if (swift_dynamicCast())
      {
        v5 = [v18 history];

        if (v5)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_243671AC8(v21, &qword_27ED7E4B0, &qword_2436CDAB8);
    }

    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v12 = sub_2436CADE8();
    __swift_project_value_buffer(v12, qword_27ED7FD78);
    v5 = sub_2436CADC8();
    v13 = sub_2436CBEC8();
    if (os_log_type_enabled(v5, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24366A000, v5, v13, "Failed to cast remove sign in history result", v14, 2u);
      MEMORY[0x245D3CD90](v14, -1, -1);
    }

    goto LABEL_21;
  }

  v3 = v2;
  if (qword_27ED7DF10 != -1)
  {
    swift_once();
  }

  v4 = sub_2436CADE8();
  __swift_project_value_buffer(v4, qword_27ED7FD78);
  v5 = v3;
  oslog = sub_2436CADC8();
  v6 = sub_2436CBEC8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v21[0] = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    Error.crkui_verboseDescription.getter(v16, v17);
    v11 = sub_2436AFA70(v9, v10, v21);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_24366A000, oslog, v6, "Failed to remove sign in history: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x245D3CD90](v8, -1, -1);
    MEMORY[0x245D3CD90](v7, -1, -1);

LABEL_21:
    return;
  }
}

void sub_243670660(void *a1)
{
  v2 = [a1 error];
  if (!v2)
  {
    if ([a1 resultObject])
    {
      sub_2436CBFB8();
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    v21[0] = v19;
    v21[1] = v20;
    if (*(&v20 + 1))
    {
      sub_243671B28(0, &unk_27ED7E500, 0x277CFA618);
      if (swift_dynamicCast())
      {

        return;
      }
    }

    else
    {
      sub_243671AC8(v21, &qword_27ED7E4B0, &qword_2436CDAB8);
    }

    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v12 = sub_2436CADE8();
    __swift_project_value_buffer(v12, qword_27ED7FD78);
    v5 = sub_2436CADC8();
    v13 = sub_2436CBEC8();
    if (os_log_type_enabled(v5, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24366A000, v5, v13, "Failed to cast clear sign in history result", v14, 2u);
      MEMORY[0x245D3CD90](v14, -1, -1);
    }

    goto LABEL_20;
  }

  v3 = v2;
  if (qword_27ED7DF10 != -1)
  {
    swift_once();
  }

  v4 = sub_2436CADE8();
  __swift_project_value_buffer(v4, qword_27ED7FD78);
  v5 = v3;
  oslog = sub_2436CADC8();
  v6 = sub_2436CBEC8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v21[0] = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    Error.crkui_verboseDescription.getter(v16, v17);
    v11 = sub_2436AFA70(v9, v10, v21);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_24366A000, oslog, v6, "Failed to clear sign in history: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x245D3CD90](v8, -1, -1);
    MEMORY[0x245D3CD90](v7, -1, -1);

LABEL_20:
    return;
  }
}

unint64_t sub_243670978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E418, &qword_2436CDA10);
    v3 = sub_2436CC238();
    v4 = a1 + 32;

    while (1)
    {
      sub_2436714A8(v4, &v13, &qword_27ED7E410, &qword_2436CDA08);
      v5 = v13;
      v6 = v14;
      result = sub_24366FE3C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24367108C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void sub_243670AA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E400, &qword_2436CF400);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_2436CBD08();
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    sub_2436714A8(a1, v4, &qword_27ED7E400, &qword_2436CF400);
    v8 = type metadata accessor for EMSUserInterfaceRecord(0);
    if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
    {
      sub_243671AC8(v4, &qword_27ED7E400, &qword_2436CF400);
      v9 = 0;
    }

    else
    {
      v12 = sub_24366F460();
      sub_243670FCC(v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E3E8, &unk_2436CD9F0);
      v9 = sub_2436CC2D8();
      sub_243671AC8(&v12, &qword_27ED7E3E8, &unk_2436CD9F0);
    }

    v10 = sub_2436CBD08();
    [v7 setObject:v9 forKey:v10];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_243670C8C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 2);
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_2436CBD08();
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    if (v3)
    {
      v8 = sub_24366F5F8(v2, v3, v4);
      if (v1)
      {

        return;
      }

      v11 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E3E8, &unk_2436CD9F0);
      v9 = sub_2436CC2D8();
      sub_243671AC8(&v11, &qword_27ED7E3E8, &unk_2436CD9F0);
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_2436CBD08();
    [v7 setObject:v9 forKey:v10];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
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

unint64_t sub_243670E28()
{
  result = qword_27ED7E3F0;
  if (!qword_27ED7E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E3F0);
  }

  return result;
}

uint64_t sub_243670E7C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_243670ED0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_243670F2C()
{
  result = qword_27ED7E3F8;
  if (!qword_27ED7E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E3F8);
  }

  return result;
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

uint64_t sub_243670FCC(uint64_t a1)
{
  v2 = type metadata accessor for EMSUserInterfaceRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_24367108C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_24367109C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E430, &qword_2436CDA28);
    v3 = sub_2436CC238();
    v4 = a1 + 32;

    while (1)
    {
      sub_2436714A8(v4, &v11, &qword_27ED7E438, &qword_2436CDA30);
      v5 = v11;
      result = sub_24366FEB4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_24367108C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_2436711C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EBB0, &qword_2436CDAE0);
    v3 = sub_2436CC238();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_24366FF48(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_2436712BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E420, &qword_2436CDA18);
    v3 = sub_2436CC238();
    v4 = a1 + 32;

    while (1)
    {
      sub_2436714A8(v4, v13, &qword_27ED7E428, &qword_2436CDA20);
      result = sub_24366FF8C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_24367108C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_2436714A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_243671510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7E440, &qword_2436CDA38);
    v3 = sub_2436CC238();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24366FE3C(v5, v6);
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

unint64_t sub_24367160C()
{
  result = qword_27ED7E450;
  if (!qword_27ED7E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E450);
  }

  return result;
}

uint64_t sub_243671660()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2436716E4()
{
  MEMORY[0x245D3CDF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
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

uint64_t sub_243671794()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2436717D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 roster];
  *a2 = result;
  return result;
}

uint64_t sub_243671838(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t objectdestroy_60Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

unint64_t sub_243671924()
{
  result = qword_27ED7E4C8;
  if (!qword_27ED7E4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E4C8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2436719BC()
{
  result = qword_27ED7E4E0;
  if (!qword_27ED7E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E4E0);
  }

  return result;
}

uint64_t sub_243671A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EMSUserInterfaceRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_243671A74()
{
  result = qword_27ED7E4F8;
  if (!qword_27ED7E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E4F8);
  }

  return result;
}

uint64_t sub_243671AC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_243671B28(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_243671B70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_243671BB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EMSProductionDataSource.ProductionDataSourceError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for EMSProductionDataSource.ProductionDataSourceError(_WORD *result, int a2, int a3)
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

unint64_t sub_243671CF0()
{
  result = qword_27ED7E510;
  if (!qword_27ED7E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E510);
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

uint64_t sub_243671D64(uint64_t a1, int a2)
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

uint64_t sub_243671DAC(uint64_t result, int a2, int a3)
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

uint64_t sub_243671E18@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  *(&v43 + 1) = a3;
  *&v43 = a2;
  v52 = a4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E580, &qword_2436CDDB0);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v42 = (&v42 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E588, &qword_2436CDDB8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v51 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E590, &qword_2436CDDC0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E598, &qword_2436CDDC8);
  v44 = *(v47 - 8);
  v15 = MEMORY[0x28223BE20](v47);
  v46 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v19 = sub_24368DF04();
  v57[0] = a2;
  v57[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E560, &qword_2436CDD08);
  sub_2436CBA18();
  v57[0] = v19;
  v53 = v57;
  v54 = sub_24367258C;
  v55 = 0;
  type metadata accessor for EMSConfigurationViewModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E5A0, &qword_2436CDDD0);
  sub_24367373C(&qword_27ED7E5A8, type metadata accessor for EMSConfigurationViewModel, &unk_2436D0568);
  sub_2436734D8();
  sub_2436CB618();

  swift_getKeyPath(byte_2436CDDD8);
  swift_getKeyPath("x2k;");
  sub_2436CAED8();

  sub_243671838(&qword_27ED7E5B8, &qword_27ED7E590, &qword_2436CDDC0, MEMORY[0x277CDE5A0]);
  sub_2436732AC();
  v45 = v18;
  sub_2436CB748();

  (*(v12 + 8))(v14, v11);
  v56 = v43;
  sub_2436CB9F8();
  if (v57[0])
  {
    v20 = *(v57[0] + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_actions);

    if (!(v20 >> 62))
    {
      goto LABEL_3;
    }

LABEL_6:
    if (sub_2436CC008())
    {
      goto LABEL_4;
    }

LABEL_7:

    v31 = 1;
    v25 = v49;
    v24 = v50;
    goto LABEL_8;
  }

  v20 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_4:
  v21 = sub_2436CB358();
  v22 = v42;
  *v42 = v21;
  *(v22 + 8) = 0x4024000000000000;
  *(v22 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E5C0, &qword_2436CDE20);
  *&v56 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E5C8, &qword_2436CDE28);
  sub_2436CAD98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E5D0, &qword_2436CDE30);
  sub_243671838(&qword_27ED7E5D8, &qword_27ED7E5C8, &qword_2436CDE28, MEMORY[0x277D83980]);
  sub_243671838(&qword_27ED7E5E0, &qword_27ED7E5D0, &qword_2436CDE30, MEMORY[0x277CDF028]);
  sub_24367373C(&qword_27ED7E5E8, type metadata accessor for EMSConfigurationViewModel.Action, &unk_2436D0508);
  sub_2436CBAC8();
  v23 = sub_2436CB538();
  sub_2436CAF88();
  v25 = v49;
  v24 = v50;
  v26 = v22 + *(v50 + 36);
  *v26 = v23;
  *(v26 + 8) = v27;
  *(v26 + 16) = v28;
  *(v26 + 24) = v29;
  *(v26 + 32) = v30;
  *(v26 + 40) = 0;
  sub_243673620(v22, v25);
  v31 = 0;
LABEL_8:
  (*(v48 + 56))(v25, v31, 1, v24);
  v32 = v44;
  v33 = v45;
  v34 = *(v44 + 16);
  v36 = v46;
  v35 = v47;
  v34(v46, v45, v47);
  v37 = v51;
  sub_2436714A8(v25, v51, &qword_27ED7E588, &qword_2436CDDB8);
  v38 = v52;
  v34(v52, v36, v35);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E5F0, &qword_2436CDE38);
  sub_2436714A8(v37, &v38[*(v39 + 48)], &qword_27ED7E588, &qword_2436CDDB8);
  sub_243671AC8(v25, &qword_27ED7E588, &qword_2436CDDB8);
  v40 = *(v32 + 8);
  v40(v33, v35);
  sub_243671AC8(v37, &qword_27ED7E588, &qword_2436CDDB8);
  return (v40)(v36, v35);
}

uint64_t sub_24367258C@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  sub_2436732AC();

  *a3 = sub_2436CB698();
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  *(a3 + 32) = v4;
  *(a3 + 40) = 1;
}

uint64_t sub_24367261C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_243672800(a3, a4, v10);
  v12[0] = v10[0];
  v12[1] = v10[1];
  v13[0] = v11[0];
  *(v13 + 9) = *(v11 + 9);
  type metadata accessor for EMSConfigurationPickerViewModel(0);
  sub_24367373C(&qword_27ED7E568, type metadata accessor for EMSConfigurationPickerViewModel, &unk_2436CFAF8);
  sub_2436CB0A8();
  swift_getKeyPath("@3k;");
  sub_2436CB0B8();

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E538, &qword_2436CDCF0);
  sub_243672FA8();
  sub_2436CB828();

  return sub_243671AC8(v12, &qword_27ED7E538, &qword_2436CDCF0);
}

double sub_243672800@<D0>(uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  *&v28 = a2;
  *(&v28 + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E560, &qword_2436CDD08);
  sub_2436CB9F8();
  if (v19)
  {
    type metadata accessor for EMSFlowViewModel();
    swift_allocObject();

    sub_2436A9F68(v5, 0, 0);

    sub_243675768(v6, &v22);
    v18 = v22;
    v7 = v23;
    v8 = v24;
    v9 = sub_2436A990C();
    v11 = v10;

    v25 = v23;
    v26 = v24;
    v27 = v22;
    v28 = v18;
    v29 = v7;
    v30[0] = v8;
    *&v30[8] = v9;
    *&v30[16] = v11;
    v30[24] = 0;
    sub_2436714A8(&v27, &v19, &qword_27ED7E570, &qword_2436CDDA0);
    sub_2436714A8(&v25, &v19, &qword_27ED7E578, &qword_2436CDDA8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E550, &qword_2436CDCF8);
    sub_243671838(&qword_27ED7E548, &qword_27ED7E550, &qword_2436CDCF8, MEMORY[0x277CE1148]);
    sub_2436CB398();

    sub_243671AC8(&v27, &qword_27ED7E570, &qword_2436CDDA0);
    sub_243671AC8(&v25, &qword_27ED7E578, &qword_2436CDDA8);

    v28 = v19;
    v29 = v20;
    *v30 = *v21;
    *&v30[9] = *&v21[9];
  }

  else
  {
    swift_getKeyPath("\b3k;");
    swift_getKeyPath(byte_2436CDD80);
    sub_2436CAED8();

    sub_2436732AC();
    v12 = sub_2436CB698();
    LOBYTE(v22) = v13 & 1;
    LOBYTE(v25) = 1;
    *&v19 = v12;
    *(&v19 + 1) = v14;
    LOBYTE(v20) = v13 & 1;
    *(&v20 + 1) = v15;
    v21[24] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E550, &qword_2436CDCF8);
    sub_243671838(&qword_27ED7E548, &qword_27ED7E550, &qword_2436CDCF8, MEMORY[0x277CE1148]);
    sub_2436CB398();
  }

  v16 = v29;
  *a4 = v28;
  a4[1] = v16;
  a4[2] = *v30;
  result = *&v30[9];
  *(a4 + 41) = *&v30[9];
  return result;
}

uint64_t sub_243672B34@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath("@3k;");
  swift_getKeyPath(" 3k;");
  sub_2436CAED8();

  *a2 = v4;
  return result;
}

uint64_t sub_243672BB4(char *a1, uint64_t *a2)
{
  swift_getKeyPath("@3k;");
  swift_getKeyPath(" 3k;");

  return sub_2436CAEE8();
}

unint64_t sub_243672C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_24368DF04();
  if (result >> 62)
  {
    v5 = result;
    v6 = sub_2436CC008();
    result = v5;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E560, &qword_2436CDD08);
    return sub_2436CBA08();
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x245D3C2F0](0);
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_243672D1C(uint64_t *a1, uint64_t a2)
{
  sub_2436732AC();

  return sub_2436CBA48();
}

uint64_t sub_243672DD4@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E520, &qword_2436CDCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E528, &qword_2436CDCE8);
  sub_243671838(&qword_27ED7E530, &qword_27ED7E520, &qword_2436CDCE0, MEMORY[0x277CE14C0]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E538, &qword_2436CDCF0);
  sub_243672FA8();
  swift_getOpaqueTypeConformance2();
  sub_2436CB378();
  v7 = swift_allocObject();
  *(v7 + 2) = v4;
  *(v7 + 3) = v3;
  *(v7 + 4) = v5;
  *(v7 + 5) = v6;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E558, &qword_2436CDD00) + 36));
  *v8 = sub_243673064;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;
}

unint64_t sub_243672FA8()
{
  result = qword_27ED7E540;
  if (!qword_27ED7E540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E538, &qword_2436CDCF0);
    sub_243671838(&qword_27ED7E548, &qword_27ED7E550, &qword_2436CDCF8, MEMORY[0x277CE1148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E540);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

double sub_2436730C0@<D0>(_OWORD *a1@<X8>)
{
  sub_243672800(*(v1 + 32), *(v1 + 40), v5);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  a1[2] = v6[0];
  result = *(v6 + 9);
  *(a1 + 41) = *(v6 + 9);
  return result;
}

uint64_t sub_24367314C@<X0>(const char *a2@<X3>, const char *a3@<X4>, void *a4@<X8>)
{
  swift_getKeyPath(a2);
  swift_getKeyPath(a3);
  sub_2436CAED8();

  *a4 = v7;
  a4[1] = v8;
  return result;
}

uint64_t sub_243673204(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  swift_getKeyPath(a5);
  swift_getKeyPath(a6);

  return sub_2436CAEE8();
}

unint64_t sub_2436732AC()
{
  result = qword_27ED7EBD0;
  if (!qword_27ED7EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EBD0);
  }

  return result;
}

uint64_t sub_243673300(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E5F8, &qword_2436CDE40);
  sub_2436CAD98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E600, &qword_2436CDE48);
  sub_243671838(&qword_27ED7E608, &qword_27ED7E5F8, &qword_2436CDE40, MEMORY[0x277D83980]);
  type metadata accessor for EMSConfigurationViewModel(255);
  sub_24367373C(&qword_27ED7E5A8, type metadata accessor for EMSConfigurationViewModel, &unk_2436D0568);
  swift_getOpaqueTypeConformance2();
  sub_24367373C(&qword_27ED7E610, type metadata accessor for EMSConfigurationViewModel, &unk_2436D05A8);
  return sub_2436CBAC8();
}

unint64_t sub_2436734D8()
{
  result = qword_27ED7E5B0;
  if (!qword_27ED7E5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E5A0, &qword_2436CDDD0);
    type metadata accessor for EMSConfigurationViewModel(255);
    sub_24367373C(&qword_27ED7E5A8, type metadata accessor for EMSConfigurationViewModel, &unk_2436D0568);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E5B0);
  }

  return result;
}

uint64_t sub_243673620(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E580, &qword_2436CDDB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2436736C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243673700(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_24367373C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_243673788()
{
  result = qword_27ED7E618;
  if (!qword_27ED7E618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E558, &qword_2436CDD00);
    sub_243671838(&qword_27ED7E620, &qword_27ED7E628, &qword_2436CDE50, MEMORY[0x277CDDF08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E618);
  }

  return result;
}

uint64_t EMSFacade.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for EMSConfigurationPickerViewModel(0);
  swift_allocObject();
  sub_24368E240();
  v1 = sub_24368DC28();

  *(v0 + 16) = v1;
  return v0;
}

uint64_t EMSFacade.init()()
{
  type metadata accessor for EMSConfigurationPickerViewModel(0);
  swift_allocObject();
  sub_24368E240();
  v1 = sub_24368DC28();

  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_243673914(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  type metadata accessor for EMSFlowViewModel();
  swift_allocObject();

  swift_unknownObjectRetain();
  sub_2436A9F68(v5, a1, a2);

  sub_243675768(v6, v9);
  sub_2436744A4();
  v7 = sub_2436CBA98();

  return v7;
}

uint64_t sub_2436739C8(uint64_t a1, uint64_t a2)
{
  sub_2436744F8(*(v2 + 16) + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_dataSource, v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_0(v8, v9);
  (*(v6 + 88))(a1, a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_243673A60(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v38 = a3;
  v4 = sub_2436CAD38();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2436CAD98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2436CAD88();
  sub_2436CAD58();
  (*(v8 + 8))(v10, v7);
  v11 = [a1 appleID];
  if (!v11)
  {
    sub_2436CBD38();
    v12 = sub_2436CBD08();

    v11 = v12;
  }

  v33 = v11;
  sub_2436CAD28();
  v13 = [objc_msgSend(a1 nameComponents)];
  swift_unknownObjectRelease();
  if (v13)
  {
    v32 = sub_2436CBD38();
  }

  else
  {
    v32 = 0;
  }

  v14 = [objc_msgSend(a1 nameComponents)];
  swift_unknownObjectRelease();
  if (v14)
  {
    v31 = sub_2436CBD38();
  }

  else
  {
    v31 = 0;
  }

  v15 = [objc_msgSend(a1 nameComponents)];
  swift_unknownObjectRelease();
  if (!v15)
  {
    sub_2436CBD38();
    v15 = sub_2436CBD08();
  }

  v16 = [objc_msgSend(a1 nameComponents)];
  swift_unknownObjectRelease();
  if (!v16)
  {
    sub_2436CBD38();
    v16 = sub_2436CBD08();
  }

  v17 = objc_allocWithZone(MEMORY[0x277CFA640]);
  v18 = sub_2436CBD08();

  v19 = sub_2436CACD8();
  v20 = sub_2436CBD08();
  v21 = sub_2436CBD08();
  v30 = v6;
  v22 = v21;
  v23 = sub_2436CBD08();

  v24 = sub_2436CBD08();

  v25 = v33;
  v26 = [v17 initWithIdentifier:v18 appleID:v33 date:v19 deviceName:v20 deviceSerialNumber:v22 userGivenName:v23 userFamilyName:v24 userFullName:v15 userMonogram:v16];

  (*(v34 + 8))(v30, v35);
  sub_2436744F8(*(v36 + 16) + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_dataSource, v39);
  v27 = v40;
  v28 = v41;
  __swift_project_boxed_opaque_existential_0(v39, v40);
  (*(v28 + 48))(v26, v37, v38, v27, v28);

  return __swift_destroy_boxed_opaque_existential_0(v39);
}

uint64_t sub_243673EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2436CAC58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ED7DEF8 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v7, qword_27ED83B68 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings13SuccessScreen_title, v4);
  v8 = sub_2436CBD58();
  sub_24369B78C(a1, a2);
  sub_2436CBD58();
  return v8;
}

uint64_t sub_243674030(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_2436CAC58();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-v11];
  v13 = *a3;
  type metadata accessor for EMSStrings.ProxCard();
  swift_initStaticObject();
  v17 = v13;
  sub_24369BAA4(&v17, a1, a2);
  (*(v7 + 16))(v10, v12, v6);
  v14 = sub_2436CBD58();
  (*(v7 + 8))(v12, v6);
  return v14;
}

uint64_t sub_243674194(_BYTE *a1, char *a2)
{
  v4 = sub_2436CAC58();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-v9];
  LOBYTE(a1) = *a1;
  v11 = *a2;
  type metadata accessor for EMSStrings.ProxCard();
  swift_initStaticObject();
  v16 = a1;
  v15 = v11;
  sub_24369BE24(&v16, &v15);
  (*(v5 + 16))(v8, v10, v4);
  v12 = sub_2436CBD58();
  (*(v5 + 8))(v10, v4);
  return v12;
}

uint64_t sub_2436742F8()
{
  sub_2436744F8(*(v0 + 16) + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_dataSource, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_0(v4, v5);
  (*(v2 + 40))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_243674398(__int128 *a1)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  sub_2436744F8(*(v1 + 16) + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_dataSource, v9);
  v3 = v10;
  v4 = v11;
  __swift_project_boxed_opaque_existential_0(v9, v10);
  v7 = v6;
  v8 = v2;
  (*(v4 + 80))(&v7, v3, v4);
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t EMSFacade.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_2436744A4()
{
  result = qword_27ED7E630;
  if (!qword_27ED7E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E630);
  }

  return result;
}

uint64_t sub_2436744F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_243674714(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_24367475C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2436747CC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_2436CDF70);
  swift_getKeyPath(byte_2436CE018);
  sub_2436CAED8();

  *a2 = v4;
  return result;
}

uint64_t sub_24367484C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_2436CDF70);
  swift_getKeyPath(byte_2436CE018);

  return sub_2436CAEE8();
}

uint64_t sub_2436748C8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E670, &qword_2436CDFB0);
  v28 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E678, &qword_2436CDFB8);
  MEMORY[0x28223BE20](v5);
  v7 = (&v23 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E668, &qword_2436CDFA8);
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = *(a1 + 2);
  v12 = *(a1 + 3);
  v13 = *(a1 + 32);
  type metadata accessor for EMSNavigationStackViewModel(0);
  sub_2436758D4(&qword_27ED7E638, type metadata accessor for EMSNavigationStackViewModel, &unk_2436CEE18);
  v26 = v12;
  v27 = v11;
  v25 = v13;
  sub_2436CAFC8();
  swift_getKeyPath("81k;");
  swift_getKeyPath(byte_2436CDFF8);
  sub_2436CAED8();

  v15 = v31;
  if ((~v31 & 0xF000000000000007) != 0)
  {
    sub_243693598(v31, v7);
    sub_2436755C4(v15);
    v16 = sub_24367519C();
    sub_2436CB7F8();
    v31 = v5;
    v32 = v16;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v18 = MEMORY[0x277CE1428];
    v19 = MEMORY[0x277CE1410];
    v20 = v24;
    sub_2436CB848();
    (*(v28 + 8))(v4, v20);
    sub_2436755FC(v7);
    v35 = *a1;
    v21 = swift_allocObject();
    v22 = a1[1];
    *(v21 + 16) = *a1;
    *(v21 + 32) = v22;
    *(v21 + 48) = *(a1 + 32);
    sub_2436756B8(&v35, &v31);
    sub_243675728(v27, v26);
    v31 = v20;
    v32 = v18;
    v33 = OpaqueTypeConformance2;
    v34 = v19;
    swift_getOpaqueTypeConformance2();
    sub_24367546C();
    sub_2436CB7C8();

    return (*(v29 + 8))(v10, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243674CE0(unint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E670, &qword_2436CDFB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E678, &qword_2436CDFB8);
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  sub_243693598(*a1, (v11 - v7));
  v9 = sub_24367519C();
  sub_2436CB7F8();
  v11[0] = v6;
  v11[1] = v9;
  swift_getOpaqueTypeConformance2();
  sub_2436CB848();
  (*(v3 + 8))(v5, v2);
  return sub_2436755FC(v8);
}

uint64_t sub_243674EA4()
{
  type metadata accessor for EMSNavigationStackViewModel(0);
  sub_2436758D4(&qword_27ED7E638, type metadata accessor for EMSNavigationStackViewModel, &unk_2436CEE18);
  sub_2436CAFD8();
  swift_getKeyPath(byte_2436CDF70);
  sub_2436CB0B8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E640, &qword_2436CDF98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E648, &qword_2436CDFA0);
  sub_243671838(&qword_27ED7E650, &qword_27ED7E640, &qword_2436CDF98, MEMORY[0x277D83960]);
  sub_243671838(&qword_27ED7E658, &qword_27ED7E640, &qword_2436CDF98, MEMORY[0x277D83980]);
  sub_243671838(&qword_27ED7E660, &qword_27ED7E640, &qword_2436CDF98, MEMORY[0x277D83990]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E668, &qword_2436CDFA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E670, &qword_2436CDFB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E678, &qword_2436CDFB8);
  sub_24367519C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_24367546C();
  swift_getOpaqueTypeConformance2();
  return sub_2436CB118();
}

unint64_t sub_24367519C()
{
  result = qword_27ED7E680;
  if (!qword_27ED7E680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E678, &qword_2436CDFB8);
    sub_243675228();
    sub_243675338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E680);
  }

  return result;
}

unint64_t sub_243675228()
{
  result = qword_27ED7E688;
  if (!qword_27ED7E688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E690, &qword_2436CDFC0);
    sub_2436758D4(&qword_27ED7E698, type metadata accessor for EMSStudentPickerView, &unk_2436D1008);
    sub_2436752E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E688);
  }

  return result;
}

unint64_t sub_2436752E4()
{
  result = qword_27ED7E6A0;
  if (!qword_27ED7E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E6A0);
  }

  return result;
}

unint64_t sub_243675338()
{
  result = qword_27ED7E6A8;
  if (!qword_27ED7E6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E6B0, &qword_2436CDFC8);
    sub_2436753C4();
    sub_243675418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E6A8);
  }

  return result;
}

unint64_t sub_2436753C4()
{
  result = qword_27ED7E6B8;
  if (!qword_27ED7E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E6B8);
  }

  return result;
}

unint64_t sub_243675418()
{
  result = qword_27ED7E6C0;
  if (!qword_27ED7E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E6C0);
  }

  return result;
}

unint64_t sub_24367546C()
{
  result = qword_27ED7E6C8;
  if (!qword_27ED7E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E6C8);
  }

  return result;
}

uint64_t sub_2436754C0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath("81k;");
  swift_getKeyPath(byte_2436CDFF8);
  sub_2436CAED8();

  *a2 = v4;
  return result;
}

uint64_t sub_243675544(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath("81k;");
  swift_getKeyPath(byte_2436CDFF8);

  sub_243675730(v2);
  return sub_2436CAEE8();
}

unint64_t sub_2436755C4(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_2436755D8(result);
  }

  return result;
}

uint64_t sub_2436755FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E678, &qword_2436CDFB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243675664()
{

  sub_2436756A8(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2436756B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E570, &qword_2436CDDA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_243675730(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_243675744(result);
  }

  return result;
}

uint64_t sub_243675768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for EMSFlowViewModel();
  sub_2436758D4(&qword_27ED7E6D0, type metadata accessor for EMSFlowViewModel, &unk_2436D1500);
  swift_retain_n();
  v4 = sub_2436CB098();
  v6 = v5;
  swift_retain_n();
  sub_2436A9A24();
  type metadata accessor for EMSCoursePickerViewModel(0);
  swift_allocObject();

  sub_24367C7C0(v7);

  sub_243683CEC(v8);
  swift_getKeyPath(byte_2436CE038);
  swift_getKeyPath(byte_2436CE060);
  sub_2436CAEE8();

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = sub_2436758CC;
  *(a2 + 24) = a1;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_2436758D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243675968@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v38 = sub_2436CB2E8();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2436CAC58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E6F8, &unk_2436D1420);
  MEMORY[0x28223BE20](v37);
  v11 = (&v35 - v10);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E700, &qword_2436CE240);
  MEMORY[0x28223BE20](v39);
  v36 = &v35 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E708, &qword_2436CE248);
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x28223BE20](v13);
  v40 = &v35 - v14;
  sub_243675F4C(v11);
  v51 = *v1;
  v41 = *(&v51 + 1);
  (*(v7 + 16))(v9, *(&v51 + 1) + OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_title, v6);
  v15 = sub_2436CB688();
  v17 = v16;
  v19 = v18;
  v20 = v5;
  v21 = v5;
  v22 = v38;
  (*(v3 + 104))(v21, *MEMORY[0x277CDDDB0], v38);
  sub_2436798E8();
  sub_2436CB778();
  sub_243679F68(v15, v17, v19 & 1);

  (*(v3 + 8))(v20, v22);
  sub_243671AC8(v11, &qword_27ED7E6F8, &unk_2436D1420);
  v23 = [objc_opt_self() systemBackgroundColor];
  v24 = sub_2436CB8E8();
  v25 = sub_2436CB538();
  v26 = v36;
  v27 = &v36[*(v39 + 36)];
  *v27 = v24;
  v27[8] = v25;
  v45 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E7E0, &qword_2436CE2B0);
  sub_243679F80();
  sub_243671838(&qword_27ED7E800, &qword_27ED7E7E0, &qword_2436CE2B0, MEMORY[0x277CDDF68]);
  v28 = v40;
  sub_2436CB838();
  sub_243671AC8(v26, &qword_27ED7E700, &qword_2436CE240);
  swift_getKeyPath(byte_2436CE2C0);
  swift_getKeyPath(byte_2436CE2E8);
  sub_2436CAED8();

  v29 = v44;
  sub_2436A1ADC(v49, v44);

  (*(v42 + 8))(v28, v43);
  v49 = v2[1];
  v50 = *(v2 + 32);
  v30 = *(v2 + 5);
  v47 = *(v2 + 6);
  v48 = v30;
  v31 = swift_allocObject();
  v32 = v2[1];
  *(v31 + 16) = *v2;
  *(v31 + 32) = v32;
  *(v31 + 48) = v2[2];
  *(v31 + 64) = *(v2 + 6);
  v33 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E808, &qword_2436CE308) + 36));
  *v33 = 0;
  v33[1] = 0;
  v33[2] = sub_24367A080;
  v33[3] = v31;
  sub_2436714A8(&v51, v46, &qword_27ED7E810, &qword_2436CE310);
  sub_2436714A8(&v49, v46, &qword_27ED7E6F0, &qword_2436CE0C0);
  sub_2436714A8(&v48, v46, &qword_27ED7E818, &qword_2436CE318);
  return sub_2436714A8(&v47, v46, &qword_27ED7E820, &unk_2436CE320);
}

uint64_t sub_243675F4C@<X0>(void *a1@<X8>)
{
  v64 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E780, &unk_2436CE280);
  MEMORY[0x28223BE20](v56);
  v50 = (&v49 - v2);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E880, &qword_2436CE3E8);
  MEMORY[0x28223BE20](v53);
  v55 = &v49 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E770, &unk_2436D1430);
  MEMORY[0x28223BE20](v63);
  v57 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E888, &unk_2436CE3F0);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v49 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E740, &qword_2436CE260);
  MEMORY[0x28223BE20](v59);
  v58 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ED7FF30, &unk_2436D1E00);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v52 = &v49 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E890, &qword_2436CE400);
  MEMORY[0x28223BE20](v60);
  v62 = &v49 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E898, &qword_2436CE408);
  MEMORY[0x28223BE20](v51);
  v13 = (&v49 - v12);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E720, &unk_2436CE250);
  MEMORY[0x28223BE20](v61);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB80, &qword_2436CE410);
  MEMORY[0x28223BE20](v16);
  v18 = (&v49 - v17);
  swift_getKeyPath(byte_2436CE418);
  swift_getKeyPath(byte_2436CE440);
  sub_2436CAED8();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v33 = *v18;
      v34 = v50;
      sub_24367745C(*v18, v50);
      sub_24367A1F8(v33);
      sub_2436714A8(v34, v55, &qword_27ED7E780, &unk_2436CE280);
      swift_storeEnumTagMultiPayload();
      sub_243679A2C();
      sub_243679B9C();
      v35 = v57;
      sub_2436CB398();
      sub_2436714A8(v35, v62, &qword_27ED7E770, &unk_2436D1430);
      swift_storeEnumTagMultiPayload();
      sub_243679974();
      sub_243679B10();
      sub_2436CB398();
      sub_243671AC8(v35, &qword_27ED7E770, &unk_2436D1430);
      return sub_243671AC8(v34, &qword_27ED7E780, &unk_2436CE280);
    }

    *v13 = sub_24367ADD8;
    v13[1] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E730, &qword_2436D1120);
    sub_243671838(&qword_27ED7E728, &qword_27ED7E730, &qword_2436D1120, &unk_2436D1E70);
    sub_243679A2C();
    sub_2436CB398();
    v46 = &qword_27ED7E720;
    v47 = &unk_2436CE250;
    sub_2436714A8(v15, v62, &qword_27ED7E720, &unk_2436CE250);
    swift_storeEnumTagMultiPayload();
    sub_243679974();
    sub_243679B10();
    sub_2436CB398();
    v30 = v15;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    v37 = *v18;
    v38 = v54;
    v39 = (*(v9 + 56))(v54, 1, 1, v8);
    MEMORY[0x28223BE20](v39);
    *(&v49 - 2) = v1;
    *(&v49 - 1) = v37;
    sub_2436CB528();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8A0, &qword_2436CE460);
    sub_243671838(&qword_27ED7E8A8, &qword_27ED7E8A0, &qword_2436CE460, MEMORY[0x277CE14C0]);
    v40 = v58;
    sub_2436CAFB8();

    v41 = sub_2436CBB48();
    v43 = v42;
    v44 = v40 + *(v59 + 36);
    sub_2436A26F8(v38, v44);
    v45 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E760, &unk_2436CE270) + 36));
    *v45 = v41;
    v45[1] = v43;
    sub_243671AC8(v38, &qword_27ED7E888, &unk_2436CE3F0);
    v46 = &qword_27ED7E740;
    v47 = &qword_2436CE260;
    sub_2436714A8(v40, v55, &qword_27ED7E740, &qword_2436CE260);
    swift_storeEnumTagMultiPayload();
    sub_243679A2C();
    sub_243679B9C();
    v48 = v57;
    sub_2436CB398();
    sub_2436714A8(v48, v62, &qword_27ED7E770, &unk_2436D1430);
    swift_storeEnumTagMultiPayload();
    sub_243679974();
    sub_243679B10();
    sub_2436CB398();
    sub_243671AC8(v48, &qword_27ED7E770, &unk_2436D1430);
    v30 = v40;
LABEL_8:
    v31 = v46;
    v32 = v47;
    return sub_243671AC8(v30, v31, v32);
  }

  v20 = v52;
  sub_24367A8C0(v18, v52, qword_27ED7FF30, &unk_2436D1E00);
  v21 = v54;
  sub_2436714A8(v20, v54, qword_27ED7FF30, &unk_2436D1E00);
  v22 = (*(v9 + 56))(v21, 0, 1, v8);
  MEMORY[0x28223BE20](v22);
  v23 = MEMORY[0x277D84F90];
  *(&v49 - 2) = v1;
  *(&v49 - 1) = v23;
  sub_2436CB528();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8A0, &qword_2436CE460);
  sub_243671838(&qword_27ED7E8A8, &qword_27ED7E8A0, &qword_2436CE460, MEMORY[0x277CE14C0]);
  v24 = v58;
  sub_2436CAFB8();
  v25 = sub_2436CBB48();
  v27 = v26;
  v28 = v24 + *(v59 + 36);
  sub_2436A26F8(v21, v28);
  v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E760, &unk_2436CE270) + 36));
  *v29 = v25;
  v29[1] = v27;
  sub_243671AC8(v21, &qword_27ED7E888, &unk_2436CE3F0);
  sub_2436714A8(v24, v13, &qword_27ED7E740, &qword_2436CE260);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E730, &qword_2436D1120);
  sub_243671838(&qword_27ED7E728, &qword_27ED7E730, &qword_2436D1120, &unk_2436D1E70);
  sub_243679A2C();
  sub_2436CB398();
  sub_2436714A8(v15, v62, &qword_27ED7E720, &unk_2436CE250);
  swift_storeEnumTagMultiPayload();
  sub_243679974();
  sub_243679B10();
  sub_2436CB398();
  sub_243671AC8(v15, &qword_27ED7E720, &unk_2436CE250);
  sub_243671AC8(v24, &qword_27ED7E740, &qword_2436CE260);
  v30 = v52;
  v31 = qword_27ED7FF30;
  v32 = &unk_2436D1E00;
  return sub_243671AC8(v30, v31, v32);
}

uint64_t sub_243676A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E830, &qword_2436CE330);
  MEMORY[0x28223BE20](v46);
  v45 = v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E838, &qword_2436CE338);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = v38 - v6;
  v7 = sub_2436CB418();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E840, &qword_2436CE340);
  v48 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E848, &qword_2436CE348);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v44 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v38 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v38 - v19;
  v21 = *(a1 + 8);
  swift_getKeyPath("p.k;");
  swift_getKeyPath("P.k;");
  v42 = v21;
  sub_2436CAED8();

  v43 = v20;
  v38[1] = v9;
  v41 = v5;
  if (v49)
  {
    sub_2436CB3F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E858, &qword_2436CE3E0);
    sub_24367A0BC();
    sub_2436CAFE8();
    v22 = sub_243671838(&qword_27ED7E850, &qword_27ED7E840, &qword_2436CE340, MEMORY[0x277CDD7A8]);
    v23 = v40;
    MEMORY[0x245D3B690](v12, v10, v22);
    (*(v5 + 16))(v18, v23, v4);
    v39 = *(v5 + 56);
    v39(v18, 0, 1, v4);
    v49 = v10;
    v50 = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x245D3B6A0](v18, v4, OpaqueTypeConformance2);

    sub_243671AC8(v18, &qword_27ED7E848, &qword_2436CE348);
    (*(v5 + 8))(v23, v4);
    (*(v48 + 8))(v12, v10);
  }

  else
  {
    v39 = *(v5 + 56);
    v39(v18, 1, 1, v4);
    v25 = sub_243671838(&qword_27ED7E850, &qword_27ED7E840, &qword_2436CE340, MEMORY[0x277CDD7A8]);
    v49 = v10;
    v50 = v25;
    v26 = swift_getOpaqueTypeConformance2();
    MEMORY[0x245D3B6A0](v18, v4, v26);
    sub_243671AC8(v18, &qword_27ED7E848, &qword_2436CE348);
    v23 = v40;
  }

  v27 = v10;
  swift_getKeyPath("8.k;");
  swift_getKeyPath(byte_2436CE3C0);
  sub_2436CAED8();

  if (v49)
  {
    sub_2436CB3E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E858, &qword_2436CE3E0);
    sub_24367A0BC();
    sub_2436CAFE8();
    v28 = sub_243671838(&qword_27ED7E850, &qword_27ED7E840, &qword_2436CE340, MEMORY[0x277CDD7A8]);
    MEMORY[0x245D3B690](v12, v10, v28);
    v29 = v41;
    (*(v41 + 16))(v18, v23, v4);
    v39(v18, 0, 1, v4);
    v49 = v10;
    v50 = v28;
    v30 = swift_getOpaqueTypeConformance2();
    v31 = v44;
    MEMORY[0x245D3B6A0](v18, v4, v30);

    sub_243671AC8(v18, &qword_27ED7E848, &qword_2436CE348);
    (*(v29 + 8))(v23, v4);
    (*(v48 + 8))(v12, v27);
  }

  else
  {
    v39(v18, 1, 1, v4);
    v32 = sub_243671838(&qword_27ED7E850, &qword_27ED7E840, &qword_2436CE340, MEMORY[0x277CDD7A8]);
    v49 = v10;
    v50 = v32;
    v33 = swift_getOpaqueTypeConformance2();
    v31 = v44;
    MEMORY[0x245D3B6A0](v18, v4, v33);
    sub_243671AC8(v18, &qword_27ED7E848, &qword_2436CE348);
  }

  v34 = v43;
  v35 = v45;
  v36 = *(v46 + 48);
  sub_2436714A8(v43, v45, &qword_27ED7E848, &qword_2436CE348);
  sub_2436714A8(v31, v35 + v36, &qword_27ED7E848, &qword_2436CE348);
  sub_2436CB388();
  sub_243671AC8(v31, &qword_27ED7E848, &qword_2436CE348);
  return sub_243671AC8(v34, &qword_27ED7E848, &qword_2436CE348);
}

uint64_t sub_243677224(uint64_t a1, void *a2)
{
  v3 = sub_2436CAC58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRKUIButtonViewModel(0);
  sub_24367AB98(&qword_27ED7E878, type metadata accessor for CRKUIButtonViewModel, &unk_2436D03CC);

  v14[2] = sub_2436CB098();
  v14[3] = v7;
  if (qword_27ED7DED0 != -1)
  {
    swift_once();
  }

  (*(v4 + 16))(v6, qword_27ED83B40 + *a2, v3);
  v8 = sub_2436CB688();
  v10 = v9;
  v12 = v11;
  sub_24367A178();
  sub_2436CB718();
  sub_243679F68(v8, v10, v12 & 1);
}

uint64_t sub_24367745C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v21[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E968, &qword_2436CE518);
  MEMORY[0x28223BE20](v3);
  v5 = v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E970, &unk_2436CE520);
  MEMORY[0x28223BE20](v6);
  v8 = (v21 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E790, &unk_2436D1440);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E7A0, &unk_2436CE290);
  MEMORY[0x28223BE20](v12);
  v14 = v21 - v13;
  if (a1)
  {
    if (a1 == 1)
    {
      *v8 = sub_24367ADD8;
      v8[1] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E730, &qword_2436D1120);
      sub_243679CE0();
      sub_243671838(&qword_27ED7E728, &qword_27ED7E730, &qword_2436D1120, &unk_2436D1E70);
      sub_2436CB398();
      v15 = &qword_27ED7E790;
      v16 = &unk_2436D1440;
      sub_2436714A8(v11, v5, &qword_27ED7E790, &unk_2436D1440);
      swift_storeEnumTagMultiPayload();
      sub_243679C28();
      sub_2436CB398();
      v17 = v11;
    }

    else
    {
      sub_24367858C(a1, v21 - v13);
      v15 = &qword_27ED7E7A0;
      v16 = &unk_2436CE290;
      sub_2436714A8(v14, v5, &qword_27ED7E7A0, &unk_2436CE290);
      swift_storeEnumTagMultiPayload();
      sub_243679C28();
      sub_243679CE0();
      sub_2436CB398();
      v17 = v14;
    }

    v18 = v15;
    v19 = v16;
  }

  else
  {
    sub_24367858C(MEMORY[0x277D84F90], v21 - v13);
    sub_2436714A8(v14, v8, &qword_27ED7E7A0, &unk_2436CE290);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E730, &qword_2436D1120);
    sub_243679CE0();
    v21[0] = v3;
    sub_243671838(&qword_27ED7E728, &qword_27ED7E730, &qword_2436D1120, &unk_2436D1E70);
    sub_2436CB398();
    sub_2436714A8(v11, v5, &qword_27ED7E790, &unk_2436D1440);
    swift_storeEnumTagMultiPayload();
    sub_243679C28();
    sub_2436CB398();
    sub_243671AC8(v11, &qword_27ED7E790, &unk_2436D1440);
    v17 = v14;
    v18 = &qword_27ED7E7A0;
    v19 = &unk_2436CE290;
  }

  return sub_243671AC8(v17, v18, v19);
}

uint64_t sub_243677894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a2;
  v93 = a3;
  v4 = sub_2436CB428();
  MEMORY[0x28223BE20](v4);
  v92 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8B0, &qword_2436CE468);
  v6 = MEMORY[0x28223BE20](v94);
  v96 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v95 = &v78 - v8;
  v9 = sub_2436CB338();
  v85 = *(v9 - 8);
  v86 = v9;
  MEMORY[0x28223BE20](v9);
  v84 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8B8, &unk_2436CE470);
  v88 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v87 = &v78 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8C0, &unk_2436CE980);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v78 - v14;
  v16 = sub_2436CAC58();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8C8, &qword_2436CE480);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v91 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v97 = &v78 - v23;
  v89 = a1;
  swift_getKeyPath("h-k;");
  swift_getKeyPath("H-k;");
  sub_2436CAED8();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_243671AC8(v15, &qword_27ED7E8C0, &unk_2436CE980);
    v24 = (*(v88 + 56))(v97, 1, 1, v11);
  }

  else
  {
    v82 = v16;
    v83 = v17;
    v25 = *(v17 + 32);
    v81 = v19;
    v25(v19, v15, v16);
    v79 = sub_2436CB2F8();
    sub_24367816C(v19, &v114);
    v80 = v11;
    v26 = v114;
    v27 = v115;
    v28 = *(&v115 + 1);
    v29 = v116;
    v30 = BYTE8(v116);
    v111 = 1;
    v110 = v115;
    v109 = BYTE8(v116);
    v31 = sub_2436CB548();
    sub_2436CAF88();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    LOBYTE(v114) = 0;
    v40 = sub_2436CB558();
    sub_2436CAF88();
    v108 = 0;
    v98 = v79;
    v99[0] = 1;
    *&v99[8] = v26;
    v99[24] = v27;
    *&v100 = v28;
    *(&v100 + 1) = v29;
    LOBYTE(v101) = v30;
    BYTE8(v101) = v31;
    *&v102 = v33;
    *(&v102 + 1) = v35;
    *&v103 = v37;
    *(&v103 + 1) = v39;
    LOBYTE(v104) = 0;
    *(&v104 + 1) = *v113;
    DWORD1(v104) = *&v113[3];
    BYTE8(v104) = v40;
    HIDWORD(v104) = *&v112[3];
    *(&v104 + 9) = *v112;
    *&v105 = v41;
    *(&v105 + 1) = v42;
    *&v106 = v43;
    *(&v106 + 1) = v44;
    v107 = 0;
    v45 = v84;
    sub_2436CB328();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E920, &qword_2436CE4F8);
    sub_24367A408();
    v46 = v87;
    sub_2436CB7D8();
    (*(v85 + 8))(v45, v86);
    v122 = v105;
    v123 = v106;
    v124 = v107;
    v118 = v101;
    v119 = v102;
    v120 = v103;
    v121 = v104;
    v114 = v98;
    v115 = *v99;
    v116 = *&v99[16];
    v117 = v100;
    sub_243671AC8(&v114, &qword_27ED7E920, &qword_2436CE4F8);
    v47 = sub_2436CB568();
    sub_2436CAF88();
    v48 = v80;
    v49 = v46 + *(v80 + 36);
    *v49 = v47;
    *(v49 + 8) = v50;
    *(v49 + 16) = v51;
    *(v49 + 24) = v52;
    *(v49 + 32) = v53;
    *(v49 + 40) = 0;
    v54 = v97;
    sub_24367A8C0(v46, v97, &qword_27ED7E8B8, &unk_2436CE470);
    (*(v88 + 56))(v54, 0, 1, v48);
    v24 = (*(v83 + 8))(v81, v82);
  }

  MEMORY[0x28223BE20](v24);

  sub_2436CB358();
  LODWORD(v114) = 0;
  sub_24367AB98(&qword_27ED7E8D0, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_2436CC3E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8D8, &qword_2436CE4D0);
  sub_24367A220(&qword_27ED7E8E0, &qword_27ED7E8D8, &qword_2436CE4D0, sub_24367A29C);
  v55 = v95;
  sub_2436CBB68();
  v56 = sub_2436CB568();
  sub_2436CAF88();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E910, &qword_2436CE4E8) + 36);
  *v65 = v56;
  *(v65 + 8) = v58;
  *(v65 + 16) = v60;
  *(v65 + 24) = v62;
  *(v65 + 32) = v64;
  *(v65 + 40) = 0;
  v66 = sub_2436CB578();
  sub_2436CAF88();
  v67 = v55 + *(v94 + 36);
  *v67 = v66;
  *(v67 + 8) = v68;
  *(v67 + 16) = v69;
  *(v67 + 24) = v70;
  *(v67 + 32) = v71;
  *(v67 + 40) = 0;
  v72 = v97;
  v73 = v91;
  sub_2436714A8(v97, v91, &qword_27ED7E8C8, &qword_2436CE480);
  v74 = v96;
  sub_2436714A8(v55, v96, &qword_27ED7E8B0, &qword_2436CE468);
  v75 = v93;
  sub_2436714A8(v73, v93, &qword_27ED7E8C8, &qword_2436CE480);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E918, &qword_2436CE4F0);
  sub_2436714A8(v74, v75 + *(v76 + 48), &qword_27ED7E8B0, &qword_2436CE468);
  sub_243671AC8(v55, &qword_27ED7E8B0, &qword_2436CE468);
  sub_243671AC8(v72, &qword_27ED7E8C8, &qword_2436CE480);
  sub_243671AC8(v74, &qword_27ED7E8B0, &qword_2436CE468);
  return sub_243671AC8(v73, &qword_27ED7E8C8, &qword_2436CE480);
}

uint64_t sub_24367816C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2436CAC58();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v7 = sub_2436CB688();
  v9 = v8;
  v11 = v10;
  sub_2436CB598();
  v12 = sub_2436CB658();
  v14 = v13;
  v16 = v15;

  sub_243679F68(v7, v9, v11 & 1);

  sub_2436CB5B8();
  v17 = sub_2436CB628();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_243679F68(v12, v14, v16 & 1);

  *a2 = v17;
  *(a2 + 8) = v19;
  v21 &= 1u;
  *(a2 + 16) = v21;
  *(a2 + 24) = v23;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_24366C090(v17, v19, v21);

  sub_243679F68(v17, v19, v21);
}

uint64_t sub_24367833C(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED803B0, &qword_2436CE510);
  sub_24367A54C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8F0, &qword_2436CE4D8);
  sub_243671838(&qword_27ED7E950, &qword_27ED803B0, &qword_2436CE510, MEMORY[0x277D83980]);
  sub_24367A29C();
  sub_24367AB98(&qword_27ED7E958, type metadata accessor for EMSCourseTileViewModel, &unk_2436CE758);
  return sub_2436CBAC8();
}

void sub_243678464(uint64_t a2@<X8>)
{
  type metadata accessor for EMSCourseTileViewModel(0);
  sub_24367AB98(&qword_27ED7E960, type metadata accessor for EMSCourseTileViewModel, &unk_2436CE790);

  v3 = sub_2436CB098();
  v5 = v4;
  sub_2436CBB48();
  sub_2436CB068();
  v6 = sub_2436CB558();
  sub_2436CAF88();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 48) = v15;
  *(a2 + 56) = v16;
  *(a2 + 64) = v6;
  *(a2 + 72) = v7;
  *(a2 + 80) = v8;
  *(a2 + 88) = v9;
  *(a2 + 96) = v10;
  *(a2 + 104) = 0;
}

uint64_t sub_24367858C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E978, &unk_2436D13B0);
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v45 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E980, &unk_2436CE530);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = &v44 - v6;
  v53 = sub_2436CB0E8();
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E7B0, &qword_2436CE2A0);
  v52 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v10 = &v44 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E7A8, &unk_2436D1450);
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = &v44 - v11;
  KeyPath = swift_getKeyPath(byte_2436CE540);
  v77 = v2[1];
  v13 = *(v2 + 5);
  v78 = *(v2 + 4);
  v72 = v2[1];
  v73 = *(v2 + 4);
  v74 = v13;
  v14 = v13;
  v49 = v13;

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E828, &qword_2436D1180);
  sub_2436CBA18();
  v46 = v68;
  v15 = v69;
  v16 = v70;
  v17 = v71;
  v18 = v2[1];
  v76 = *v2;
  v72 = v18;
  LOBYTE(v73) = *(v2 + 32);
  v79 = v14;
  v75 = *(v2 + 6);
  v19 = swift_allocObject();
  v20 = v2[1];
  *(v19 + 16) = *v2;
  *(v19 + 32) = v20;
  *(v19 + 48) = v2[2];
  *(v19 + 64) = *(v2 + 6);
  v67 = a1;
  v47 = a1;
  v68 = v46;
  v69 = v15;
  v70 = v16;
  v71 = v17;
  v61 = &v67;
  v62 = KeyPath;
  v63 = sub_24367A600;
  v64 = v19;
  sub_2436714A8(&v76, v65, &qword_27ED7E810, &qword_2436CE310);
  sub_2436714A8(&v72, v65, &qword_27ED7E6F0, &qword_2436CE0C0);
  sub_2436714A8(&v79, v65, &qword_27ED7E818, &qword_2436CE318);
  sub_2436714A8(&v75, v65, &qword_27ED7E820, &unk_2436CE320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E988, &qword_2436CE558);
  sub_24367A614();
  sub_24367A220(&qword_27ED7E998, &qword_27ED7E988, &qword_2436CE558, sub_24367A668);
  v21 = v55;
  sub_2436CB618();

  sub_2436CB0D8();
  v22 = sub_243671838(&qword_27ED7E7B8, &qword_27ED7E7B0, &qword_2436CE2A0, MEMORY[0x277CDE5A0]);
  v23 = MEMORY[0x277CDD980];
  v24 = v51;
  v25 = v48;
  v26 = v53;
  sub_2436CB878();
  v27 = v26;
  (*(v54 + 8))(v8, v26);
  (*(v52 + 8))(v10, v25);
  v68 = v77;
  v69 = v78;
  v70 = v49;
  sub_2436CB9F8();
  v28 = v65[0];
  v29 = v65[1];
  LOBYTE(v10) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E6F0, &qword_2436CE0C0);
  *&v68 = v25;
  *(&v68 + 1) = v27;
  v69 = v22;
  v70 = v23;
  v30 = 1;
  swift_getOpaqueTypeConformance2();
  sub_243679E90();
  v31 = v56;
  v32 = v59;
  sub_2436CB868();
  v33 = v29;
  v34 = v60;
  v35 = v10;
  v36 = v58;
  sub_24367A874(v28, v33, v35);
  (*(v57 + 8))(v24, v31);
  v37 = sub_2436CBB48();
  v39 = v38;
  if (!*(v47 + 16))
  {
    v40 = v45;
    sub_2436CB478();
    (*(v34 + 32))(v36, v40, v32);
    v30 = 0;
  }

  (*(v34 + 56))(v36, v30, 1, v32);
  v41 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E7A0, &unk_2436CE290) + 36);
  sub_24367A8C0(v36, v41, &qword_27ED7E980, &unk_2436CE530);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E7D8, &qword_2436CE2A8);
  v43 = (v41 + *(result + 36));
  *v43 = v37;
  v43[1] = v39;
  return result;
}

uint64_t sub_243678D54@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  sub_243678FD0(*a1, &v27);
  v8 = v27;
  v9 = v28;
  v10 = BYTE1(v28);
  v11 = a2[1];
  v26 = *a2;
  v24 = v11;
  v25 = *(a2 + 32);
  v12 = *(a2 + 5);
  v22 = *(a2 + 6);
  v23 = v12;
  v13 = swift_allocObject();
  v14 = a2[1];
  *(v13 + 16) = *a2;
  *(v13 + 32) = v14;
  *(v13 + 48) = a2[2];
  *(v13 + 64) = *(a2 + 6);
  *(v13 + 72) = v5;
  *(v13 + 80) = v6;
  *(v13 + 88) = v7;
  LOBYTE(v19) = v9;
  BYTE1(v19) = v10;
  *(&v19 + 1) = v5;
  *&v20 = v6;
  BYTE8(v20) = v7;
  *&v21 = sub_24367AA20;
  *(&v21 + 1) = v13;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  sub_2436714A8(&v26, &v27, &qword_27ED7E810, &qword_2436CE310);
  sub_2436714A8(&v24, &v27, &qword_27ED7E6F0, &qword_2436CE0C0);
  sub_2436714A8(&v23, &v27, &qword_27ED7E818, &qword_2436CE318);
  sub_2436714A8(&v22, &v27, &qword_27ED7E820, &unk_2436CE320);
  sub_2436CB028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E9C0, &qword_2436CE570);
  sub_24367A7BC();
  sub_2436CB7B8();
  v29 = v20;
  v30 = v21;
  v31 = 0uLL;
  v27 = v8;
  v28 = v19;
  sub_243671AC8(&v27, &qword_27ED7E9C0, &qword_2436CE570);
  LOBYTE(a2) = sub_2436CB538();
  v15 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E9B8, &qword_2436CE568) + 36);
  *v15 = a2;
  *(v15 + 8) = xmmword_2436CE090;
  *(v15 + 24) = xmmword_2436CE0A0;
  *(v15 + 40) = 0;
  v16 = sub_2436CB348();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E9A8, &qword_2436CE560);
  v18 = (a3 + *(result + 36));
  *v18 = v16;
  v18[1] = sub_2436792B4;
  v18[2] = 0;
  return result;
}

double sub_243678FD0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 0)
  {
    type metadata accessor for EMSStudentViewModel(0);
    sub_24367AB98(&qword_27ED7E9F0, type metadata accessor for EMSStudentViewModel, &unk_2436D0908);
    swift_retain_n();
    sub_2436CB098();
    swift_getKeyPath(byte_2436CE588);
    sub_2436CAED8();
  }

  else
  {
    type metadata accessor for EMSCourseSearchResultViewModel(0);
    sub_24367AB98(&qword_27ED7EA28, type metadata accessor for EMSCourseSearchResultViewModel, &unk_2436D3648);
    swift_retain_n();
    sub_2436CB098();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E9F8, &unk_2436CE5D0);
  sub_24367AA38();
  sub_24367AA8C();
  sub_2436CB398();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 17) = v6;
  return result;
}

uint64_t sub_24367920C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(*(a1 + 8) + 24);
  v7 = OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher_resultProvider;
  swift_beginAccess();
  sub_2436744F8(v6 + v7, v11);
  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_0(v11, v12);
  (*(v9 + 40))(a3, a4 & 1, v8, v9);
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

void sub_2436792E4(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 16) != 255)
  {
    v2 = *a2;
    if (*a2 < 0)
    {
      v5 = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);

      v6 = swift_unknownObjectRetain();
      v5(v6);

      swift_unknownObjectRelease();
    }

    else
    {
      v3 = *(v2 + OBJC_IVAR____TtC14ClassroomUIKit30EMSCourseSearchResultViewModel_selectionHandler);
      v4 = *(v2 + 16);

      v7 = v4;
      v3();
    }
  }
}

uint64_t sub_243679418(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E9E0, &qword_2436CE580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E9A8, &qword_2436CE560);
  sub_243671838(&qword_27ED7E9E8, &qword_27ED7E9E0, &qword_2436CE580, MEMORY[0x277D83980]);
  sub_24367A614();
  sub_24367A668();
  return sub_2436CBAB8();
}

uint64_t sub_24367954C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_2436CBB08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2436CBB18();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EMSCoursePickerViewModel(0);
  sub_24367AB98(&qword_27ED7E6E8, type metadata accessor for EMSCoursePickerViewModel, &unk_2436CE9C8);
  v11 = sub_2436CB098();
  v21 = v12;
  v22 = v11;
  v23 = 0;
  v24 = 0;
  v25 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E6F0, &qword_2436CE0C0);
  sub_2436CB9E8();
  v14 = v26;
  v13 = v27;
  v15 = v28;
  v20 = v29;
  *v6 = xmmword_2436CE0B0;
  (*(v4 + 104))(v6, *MEMORY[0x277CDF108], v3);
  sub_2436CBB28();
  v16 = sub_2436CBE28();
  *(v16 + 16) = 2;
  v17 = v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  (*(v8 + 16))(v17, v10, v7);
  result = (*(v8 + 32))(v17 + *(v8 + 72), v10, v7);
  v19 = v21;
  *a2 = v22;
  *(a2 + 8) = v19;
  *(a2 + 16) = v14;
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;
  *(a2 + 40) = v20;
  *(a2 + 48) = v16;
  return result;
}

uint64_t get_enum_tag_for_layout_string_14ClassroomUIKit24EMSViewModelSearchResultVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
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

uint64_t sub_243679828(uint64_t a1, int a2)
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

uint64_t sub_243679870(uint64_t result, int a2, int a3)
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

unint64_t sub_2436798E8()
{
  result = qword_27ED7E710;
  if (!qword_27ED7E710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E6F8, &unk_2436D1420);
    sub_243679974();
    sub_243679B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E710);
  }

  return result;
}

unint64_t sub_243679974()
{
  result = qword_27ED7E718;
  if (!qword_27ED7E718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E720, &unk_2436CE250);
    sub_243671838(&qword_27ED7E728, &qword_27ED7E730, &qword_2436D1120, &unk_2436D1E70);
    sub_243679A2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E718);
  }

  return result;
}

unint64_t sub_243679A2C()
{
  result = qword_27ED7E738;
  if (!qword_27ED7E738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E740, &qword_2436CE260);
    sub_243671838(&qword_27ED7E748, &qword_27ED7E750, &qword_2436CE268, MEMORY[0x277CDD6E0]);
    sub_243671838(&qword_27ED7E758, &qword_27ED7E760, &unk_2436CE270, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E738);
  }

  return result;
}

unint64_t sub_243679B10()
{
  result = qword_27ED7E768;
  if (!qword_27ED7E768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E770, &unk_2436D1430);
    sub_243679A2C();
    sub_243679B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E768);
  }

  return result;
}

unint64_t sub_243679B9C()
{
  result = qword_27ED7E778;
  if (!qword_27ED7E778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E780, &unk_2436CE280);
    sub_243679C28();
    sub_243679CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E778);
  }

  return result;
}

unint64_t sub_243679C28()
{
  result = qword_27ED7E788;
  if (!qword_27ED7E788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E790, &unk_2436D1440);
    sub_243679CE0();
    sub_243671838(&qword_27ED7E728, &qword_27ED7E730, &qword_2436D1120, &unk_2436D1E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E788);
  }

  return result;
}

unint64_t sub_243679CE0()
{
  result = qword_27ED7E798;
  if (!qword_27ED7E798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E7A0, &unk_2436CE290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E7A8, &unk_2436D1450);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E6F0, &qword_2436CE0C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E7B0, &qword_2436CE2A0);
    sub_2436CB0E8();
    sub_243671838(&qword_27ED7E7B8, &qword_27ED7E7B0, &qword_2436CE2A0, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    sub_243679E90();
    swift_getOpaqueTypeConformance2();
    sub_243671838(&qword_27ED7E7D0, &qword_27ED7E7D8, &qword_2436CE2A8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E798);
  }

  return result;
}

unint64_t sub_243679E90()
{
  result = qword_27ED7E7C0;
  if (!qword_27ED7E7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E6F0, &qword_2436CE0C0);
    sub_243679F14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E7C0);
  }

  return result;
}

unint64_t sub_243679F14()
{
  result = qword_27ED7E7C8;
  if (!qword_27ED7E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E7C8);
  }

  return result;
}

uint64_t sub_243679F68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_243679F80()
{
  result = qword_27ED7E7E8;
  if (!qword_27ED7E7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E700, &qword_2436CE240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E6F8, &unk_2436D1420);
    sub_2436798E8();
    swift_getOpaqueTypeConformance2();
    sub_243671838(&qword_27ED7E7F0, &qword_27ED7E7F8, &qword_2436CE2B8, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E7E8);
  }

  return result;
}

unint64_t sub_24367A0BC()
{
  result = qword_27ED7E860;
  if (!qword_27ED7E860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E858, &qword_2436CE3E0);
    sub_24367A178();
    sub_24367AB98(&qword_27ED7E870, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E860);
  }

  return result;
}

unint64_t sub_24367A178()
{
  result = qword_27ED7E868;
  if (!qword_27ED7E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E868);
  }

  return result;
}

unint64_t sub_24367A1F8(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_24367A220(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24367A29C()
{
  result = qword_27ED7E8E8;
  if (!qword_27ED7E8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E8F0, &qword_2436CE4D8);
    sub_24367A328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E8E8);
  }

  return result;
}

unint64_t sub_24367A328()
{
  result = qword_27ED7E8F8;
  if (!qword_27ED7E8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E900, &qword_2436CE4E0);
    sub_24367A3B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E8F8);
  }

  return result;
}

unint64_t sub_24367A3B4()
{
  result = qword_27ED7E908;
  if (!qword_27ED7E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E908);
  }

  return result;
}

unint64_t sub_24367A408()
{
  result = qword_27ED7E928;
  if (!qword_27ED7E928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E920, &qword_2436CE4F8);
    sub_24367A494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E928);
  }

  return result;
}

unint64_t sub_24367A494()
{
  result = qword_27ED7E930;
  if (!qword_27ED7E930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E938, &qword_2436CE500);
    sub_243671838(&qword_27ED7E940, &qword_27ED7E948, &qword_2436CE508, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E930);
  }

  return result;
}

unint64_t sub_24367A54C()
{
  result = qword_27ED7EBA0;
  if (!qword_27ED7EBA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED7EBA0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  if (*(v0 + 48) != 255)
  {

    swift_unknownObjectRelease();
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_24367A614()
{
  result = qword_27ED7E990;
  if (!qword_27ED7E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E990);
  }

  return result;
}

unint64_t sub_24367A668()
{
  result = qword_27ED7E9A0;
  if (!qword_27ED7E9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E9A8, &qword_2436CE560);
    sub_24367A6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E9A0);
  }

  return result;
}

unint64_t sub_24367A6F4()
{
  result = qword_27ED7E9B0;
  if (!qword_27ED7E9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E9B8, &qword_2436CE568);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E9C0, &qword_2436CE570);
    sub_24367A7BC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E9B0);
  }

  return result;
}

unint64_t sub_24367A7BC()
{
  result = qword_27ED7E9C8;
  if (!qword_27ED7E9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E9C0, &qword_2436CE570);
    sub_243671838(&qword_27ED7E9D0, &qword_27ED7E9D8, &qword_2436CE578, MEMORY[0x277CE1148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E9C8);
  }

  return result;
}

uint64_t sub_24367A874(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {

    return swift_unknownObjectRelease();
  }

  return v4;
}

uint64_t sub_24367A8C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24367A928()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24367A960(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

uint64_t sub_24367A9A4()
{

  if (*(v0 + 48) != 255)
  {

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

unint64_t sub_24367AA38()
{
  result = qword_27ED7EA00;
  if (!qword_27ED7EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EA00);
  }

  return result;
}

unint64_t sub_24367AA8C()
{
  result = qword_27ED7EA08;
  if (!qword_27ED7EA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E9F8, &unk_2436CE5D0);
    sub_24367AB44();
    sub_243671838(&qword_27ED7EA18, &qword_27ED7EA20, &qword_2436D12E0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EA08);
  }

  return result;
}

unint64_t sub_24367AB44()
{
  result = qword_27ED7EA10;
  if (!qword_27ED7EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EA10);
  }

  return result;
}

uint64_t sub_24367AB98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24367ABE4()
{
  result = qword_27ED7EA30;
  if (!qword_27ED7EA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E808, &qword_2436CE308);
    sub_24367AC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EA30);
  }

  return result;
}

unint64_t sub_24367AC70()
{
  result = qword_27ED7EA38;
  if (!qword_27ED7EA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7EA40, &unk_2436CE5E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E708, &qword_2436CE248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E700, &qword_2436CE240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E7E0, &qword_2436CE2B0);
    sub_243679F80();
    sub_243671838(&qword_27ED7E800, &qword_27ED7E7E0, &qword_2436CE2B0, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EA38);
  }

  return result;
}

uint64_t sub_24367ADE4@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(byte_2436CE688);
  swift_getKeyPath(byte_2436CE6B0);
  sub_2436CAED8();

  if (v8)
  {
    type metadata accessor for CRKUIButtonViewModel(0);
    sub_24367B2FC(&qword_27ED7E878, type metadata accessor for CRKUIButtonViewModel, &unk_2436D03CC);
    v4 = sub_2436CB098();
    v6 = v5;
    swift_getKeyPath(byte_2436CE6D0);
    swift_getKeyPath(byte_2436CE6F8);
    sub_2436CAED8();

    result = sub_2436CB098();
    *a2 = v4;
    *(a2 + 8) = v6;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    *(a2 + 32) = result;
    *(a2 + 40) = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24367AF44(uint64_t a1)
{
  v2 = sub_2436CB418();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EA48, &qword_2436CE5F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_2436CB408();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EA50, &qword_2436CE5F8);
  sub_24367B1E8();
  sub_2436CB188();
  v7 = sub_243671838(&qword_27ED7EA68, &qword_27ED7EA48, &qword_2436CE5F0, MEMORY[0x277CDDB60]);
  MEMORY[0x245D3B690](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

double sub_24367B0FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    type metadata accessor for EMSSelectionToolbarViewModel(0);
    sub_24367B2FC(&qword_27ED7EA70, type metadata accessor for EMSSelectionToolbarViewModel, &unk_2436D0DC8);

    sub_2436CB098();
  }

  sub_24367B274();
  sub_2436CB398();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

unint64_t sub_24367B1E8()
{
  result = qword_27ED7EA58;
  if (!qword_27ED7EA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7EA50, &qword_2436CE5F8);
    sub_24367B274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EA58);
  }

  return result;
}

unint64_t sub_24367B274()
{
  result = qword_27ED7EA60;
  if (!qword_27ED7EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EA60);
  }

  return result;
}

uint64_t sub_24367B2FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24367B3B8(const char *a1, const char *a2)
{
  swift_getKeyPath(a1);
  swift_getKeyPath(a2);
  sub_2436CAED8();

  return v4;
}

uint64_t sub_24367B44C(const char *a1, const char *a2)
{
  swift_getKeyPath(a1);
  swift_getKeyPath(a2);
  sub_2436CAED8();

  return v4;
}

uint64_t sub_24367B4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EBE0, &qword_2436CE7C8);
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v25 = &v23 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EAD8, &unk_2436CE7D0);
  v6 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = OBJC_IVAR____TtC14ClassroomUIKit22EMSCourseTileViewModel__title;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_2436CAE98();
  v14 = *(v10 + 32);
  v14(v3 + v13, v12, v9);
  v15 = OBJC_IVAR____TtC14ClassroomUIKit22EMSCourseTileViewModel__subtitle;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_2436CAE98();
  v14(v3 + v15, v12, v9);
  v16 = OBJC_IVAR____TtC14ClassroomUIKit22EMSCourseTileViewModel__color;
  v31 = 0;
  type metadata accessor for CRKCourseColorType(0);
  sub_2436CAE98();
  (*(v6 + 32))(v3 + v16, v8, v24);
  v17 = OBJC_IVAR____TtC14ClassroomUIKit22EMSCourseTileViewModel__mascot;
  v31 = 0;
  type metadata accessor for CRKCourseMascotType(0);
  v18 = v25;
  sub_2436CAE98();
  (*(v26 + 32))(v3 + v17, v18, v27);
  v19 = v29;
  *(v3 + 16) = v28;
  v20 = (v3 + OBJC_IVAR____TtC14ClassroomUIKit22EMSCourseTileViewModel_selectionHandler);
  v21 = v30;
  *v20 = v19;
  v20[1] = v21;
  return v3;
}

uint64_t sub_24367B7A0()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit22EMSCourseTileViewModel__title;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14ClassroomUIKit22EMSCourseTileViewModel__subtitle, v2);
  v4 = OBJC_IVAR____TtC14ClassroomUIKit22EMSCourseTileViewModel__color;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EAD8, &unk_2436CE7D0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC14ClassroomUIKit22EMSCourseTileViewModel__mascot;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EBE0, &qword_2436CE7C8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  v8 = *(*v0 + 12);
  v9 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v8, v9);
}

uint64_t type metadata accessor for EMSCourseTileViewModel(uint64_t a1)
{
  result = qword_27ED7EAB0;
  if (!qword_27ED7EAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24367B980(uint64_t a1)
{
  sub_24367BAD8();
  if (v1 <= 0x3F)
  {
    sub_24367BB28(319, &qword_27ED7EAC0, type metadata accessor for CRKCourseColorType);
    if (v2 <= 0x3F)
    {
      sub_24367BB28(319, &qword_27ED7EAC8, type metadata accessor for CRKCourseMascotType);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24367BAD8()
{
  if (!qword_27ED80310)
  {
    v0 = sub_2436CAEF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED80310);
    }
  }
}

void sub_24367BB28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2436CAEF8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24367BB80()
{
  result = qword_27ED7EAD0;
  if (!qword_27ED7EAD0)
  {
    sub_24367A54C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EAD0);
  }

  return result;
}

uint64_t sub_24367BBD8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EMSCourseTileViewModel(0);
  result = sub_2436CAE38();
  *a2 = result;
  return result;
}

id sub_24367BC18@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = v2;
  return v2;
}

id sub_24367BC54(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = a1 / 255.0;
  v6 = a2 / 255.0;
  v7 = a3 / 255.0;
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithRed:v5 green:v6 blue:v7 alpha:a4];
}

id sub_24367BCD4(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  sub_24367BEEC();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  if (v1 == 2)
  {
    v3 = 0.756862745;
    v4 = 0.776470588;
    v5 = 1.0;
  }

  else
  {
    v3 = 0.556862745;
    v4 = 0.576470588;
    v5 = 0.3;
  }

  return [v2 initWithRed:v3 green:v3 blue:v4 alpha:v5];
}

id sub_24367BD6C(double a1)
{
  swift_getObjectType();
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  [v1 getHue:&v7 saturation:&v6 brightness:&v5 alpha:&v4];
  return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHue:v7 saturation:v6 * a1 brightness:v5 alpha:v4];
}

unint64_t sub_24367BEEC()
{
  result = qword_27ED7EAE0;
  if (!qword_27ED7EAE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED7EAE0);
  }

  return result;
}

uint64_t sub_24367BF38()
{
  swift_getKeyPath(" (k;");
  swift_getKeyPath(byte_2436CED28);
  sub_2436CAED8();

  return v1;
}

void sub_24367BFD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8C0, &unk_2436CE980);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v31 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB80, &qword_2436CE410);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  swift_getKeyPath("p)k;");
  swift_getKeyPath("P)k;");
  sub_2436CAED8();

  LOBYTE(a1) = sub_2436ABDA8(a1);
  sub_243671AC8(v12, &unk_27ED7EB80, &qword_2436CE410);
  if (a1)
  {
    return;
  }

  swift_getKeyPath("p)k;");
  swift_getKeyPath("P)k;");
  sub_2436CAED8();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_243671AC8(v10, &unk_27ED7EB80, &qword_2436CE410);
    swift_getKeyPath(byte_2436CEBE0);
    swift_getKeyPath(byte_2436CEC08);
    v33 = 0;

    sub_2436CAEE8();
    v18 = sub_2436CAC58();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      v22 = sub_2436CAC58();
      (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
      swift_getKeyPath("8)k;");
      swift_getKeyPath(byte_2436CEBC0);
      sub_2436714A8(v6, v31, &qword_27ED7E8C0, &unk_2436CE980);

      sub_2436CAEE8();
      sub_243671AC8(v6, &qword_27ED7E8C0, &unk_2436CE980);
      swift_getKeyPath(byte_2436CEBE0);
      swift_getKeyPath(byte_2436CEC08);
      v35 = 1;

      sub_2436CAEE8();
      v20 = &unk_27ED7EB80;
      v21 = &qword_2436CE410;
      v19 = v10;
      goto LABEL_10;
    }

    sub_243671AC8(v10, &unk_27ED7EB80, &qword_2436CE410);
    swift_getKeyPath(byte_2436CEBE0);
    swift_getKeyPath(byte_2436CEC08);
    v32 = 1;

    sub_2436CAEE8();
    if (qword_27ED7DED0 != -1)
    {
      swift_once();
    }

    v14 = qword_27ED83B40;
    v15 = OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_subtitle;
    v16 = sub_2436CAC58();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v6, v14 + v15, v16);
    (*(v17 + 56))(v6, 0, 1, v16);
  }

  swift_getKeyPath("8)k;");
  swift_getKeyPath(byte_2436CEBC0);
  sub_2436714A8(v6, v31, &qword_27ED7E8C0, &unk_2436CE980);

  sub_2436CAEE8();
  v19 = v6;
  v20 = &qword_27ED7E8C0;
  v21 = &unk_2436CE980;
LABEL_10:
  sub_243671AC8(v19, v20, v21);
  if (qword_27ED7DF10 != -1)
  {
    swift_once();
  }

  v23 = sub_2436CADE8();
  __swift_project_value_buffer(v23, qword_27ED7FD78);

  v24 = sub_2436CADC8();
  v25 = sub_2436CBED8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34 = v27;
    *v26 = 136446210;
    swift_getKeyPath("p)k;");
    swift_getKeyPath("P)k;");
    sub_2436CAED8();

    v28 = sub_2436CBD68();
    v30 = sub_2436AFA70(v28, v29, &v34);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_24366A000, v24, v25, "New course picker content: %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x245D3CD90](v27, -1, -1);
    MEMORY[0x245D3CD90](v26, -1, -1);
  }
}

uint64_t sub_24367C6A8(const char *a1, const char *a2)
{
  swift_getKeyPath(a1);
  swift_getKeyPath(a2);
  sub_2436CAED8();
}

uint64_t sub_24367C740(const char *a1, const char *a2)
{
  swift_getKeyPath(a1);
  swift_getKeyPath(a2);
  sub_2436CAED8();

  return v4;
}

uint64_t sub_24367C7C0(void *a1)
{
  v2 = v1;
  v121 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EC20, &unk_2436CED70);
  MEMORY[0x28223BE20](v97);
  v96 = &v89 - v3;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FEF0, &qword_2436D1DE0);
  MEMORY[0x28223BE20](v94);
  v93 = &v89 - v4;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EC30, &unk_2436CED80);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v89 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E400, &qword_2436CF400);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v90 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v120 = &v89 - v9;
  v10 = type metadata accessor for EMSUserInterfaceRecord(0);
  v118 = *(v10 - 8);
  v119 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v92 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v12;
  MEMORY[0x28223BE20](v11);
  v95 = &v89 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC40, &unk_2436CED90);
  MEMORY[0x28223BE20](v114);
  v113 = &v89 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC48, &unk_2436CEDA0);
  v116 = *(v15 - 8);
  v117 = v15;
  MEMORY[0x28223BE20](v15);
  v115 = &v89 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F750, &unk_2436D0E10);
  v111 = *(v17 - 8);
  v112 = v17;
  MEMORY[0x28223BE20](v17);
  v110 = &v89 - v18;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EC10, &unk_2436CED60);
  v109 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v108 = &v89 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB80, &qword_2436CE410);
  v20 = MEMORY[0x28223BE20](v105);
  v104 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v103 = &v89 - v22;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  v107 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v106 = &v89 - v23;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC00, &unk_2436CED50);
  v24 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v26 = &v89 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8C0, &unk_2436CE980);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v89 - v31;
  *(v2 + 32) = sub_2436711C4(MEMORY[0x277D84F90]);
  v101 = v2;
  v33 = v2 + OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_title;
  if (qword_27ED7DED0 != -1)
  {
    swift_once();
  }

  v34 = qword_27ED83B40;
  v35 = OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_title;
  v36 = sub_2436CAC58();
  v37 = *(v36 - 8);
  (*(v37 + 16))(v33, v34 + v35, v36);
  v38 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__subtitle;
  (*(v37 + 56))(v32, 1, 1, v36);
  sub_2436714A8(v32, v30, &qword_27ED7E8C0, &unk_2436CE980);
  sub_2436CAE98();
  sub_243671AC8(v32, &qword_27ED7E8C0, &unk_2436CE980);
  v39 = v101;
  (*(v24 + 32))(v101 + v38, v26, v102);
  v40 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__showHistoryButton;
  LOBYTE(v125) = 1;
  v41 = v106;
  sub_2436CAE98();
  v107 = *(v107 + 32);
  v42 = v122;
  (v107)(v39 + v40, v41, v122);
  v102 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__content;
  v43 = v103;
  swift_storeEnumTagMultiPayload();
  sub_2436714A8(v43, v104, &unk_27ED7EB80, &qword_2436CE410);
  v44 = v108;
  sub_2436CAE98();
  sub_243671AC8(v43, &unk_27ED7EB80, &qword_2436CE410);
  (*(v109 + 32))(v39 + v102, v44, v123);
  v45 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__viewHistoryButton;
  v125 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB90, &qword_2436CE990);
  v46 = v110;
  sub_2436CAE98();
  v47 = v112;
  v48 = *(v111 + 32);
  v48(v39 + v45, v46, v112);
  v49 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__addedToStack;
  LOBYTE(v125) = 0;
  sub_2436CAE98();
  (v107)(v39 + v49, v41, v42);
  v50 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__cancelButton;
  v125 = 0;
  sub_2436CAE98();
  v48(v39 + v50, v46, v47);
  *(v39 + OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_inputSubscription) = 0;
  *(v39 + OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_lastUsedCourseSubscription) = 0;
  swift_weakInit();
  v51 = v121;
  *(v39 + 16) = v121;
  sub_2436744F8((v51 + 2), &v125);

  v52 = sub_2436C5BA4(&v125);
  *(v39 + 24) = v52;
  v53 = v51[5];
  v54 = v51[6];
  __swift_project_boxed_opaque_existential_0(v51 + 2, v53);

  v55 = sub_2436C4784(v53, v54);
  type metadata accessor for EMSSearchBarViewModel(0);
  swift_allocObject();
  v56 = sub_24368A650(v52, v55, 0, 1);

  swift_beginAccess();
  v124 = v56;
  sub_2436CAE98();
  swift_endAccess();
  v57 = sub_24367F738();
  swift_getKeyPath("X(k;");
  swift_getKeyPath("8(k;");
  v125 = v57;

  sub_2436CAEE8();
  v58 = sub_24367F9B4();
  swift_getKeyPath(byte_2436CEC28);
  swift_getKeyPath(byte_2436CEC50);
  v125 = v58;

  sub_2436CAEE8();
  v59 = v51[5];
  v60 = v51[6];
  __swift_project_boxed_opaque_existential_0(v51 + 2, v59);
  v124 = (*(v60 + 8))(v59, v60);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EC50, &qword_2436CF6A0);
  sub_2436CAEA8();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED70, &qword_2436CEDB0);
  sub_243671838(&qword_27ED7EC60, &unk_27ED7ED70, &qword_2436CEDB0, MEMORY[0x277CBCD90]);
  sub_243671838(&qword_27ED7FEB0, &qword_27ED7EC40, &unk_2436CED90, MEMORY[0x277CBCEC8]);
  v61 = v115;
  sub_2436CADF8();
  swift_allocObject();
  swift_weakInit();
  sub_243671838(&unk_27ED7EC70, &qword_27ED7EC48, &unk_2436CEDA0, MEMORY[0x277CBCAF0]);

  v62 = v117;
  v63 = sub_2436CAF68();

  (*(v116 + 8))(v61, v62);
  *(v39 + OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_inputSubscription) = v63;

  v64 = v51[5];
  v65 = v51[6];
  __swift_project_boxed_opaque_existential_0(v51 + 2, v64);
  v66 = v120;
  (*(v65 + 32))(v64, v65);
  v67 = v118;
  v68 = v119;
  v69 = v51;
  if ((*(v118 + 48))(v66, 1, v119) == 1)
  {

    sub_243671AC8(v66, &qword_27ED7E400, &qword_2436CF400);
  }

  else
  {
    v70 = v67;
    v71 = v95;
    sub_243671A10(v66, v95);
    v72 = v69[5];
    v73 = v69[6];
    __swift_project_boxed_opaque_existential_0(v69 + 2, v72);
    v74 = v90;
    (*(v67 + 56))(v90, 1, 1, v68);
    (*(v73 + 72))(v74, v72, v73);
    sub_243671AC8(v74, &qword_27ED7E400, &qword_2436CF400);
    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v75 = sub_2436CADE8();
    __swift_project_value_buffer(v75, qword_27ED7FD78);
    v76 = sub_2436CADC8();
    v77 = sub_2436CBED8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_24366A000, v76, v77, "Found lastAssignedCourseIdentifier, waiting for student picker vm to load", v78, 2u);
      MEMORY[0x245D3CD90](v78, -1, -1);
    }

    swift_beginAccess();
    sub_2436CAEA8();
    swift_endAccess();
    swift_beginAccess();
    sub_2436CAEA8();
    swift_endAccess();
    v79 = MEMORY[0x277CBCEC8];
    sub_243671838(&qword_27ED7FF00, &qword_27ED7FEF0, &qword_2436D1DE0, MEMORY[0x277CBCEC8]);
    sub_243671838(&qword_27ED7EC80, &unk_27ED7EC20, &unk_2436CED70, v79);
    v80 = v98;
    sub_2436CADF8();
    v81 = swift_allocObject();
    swift_weakInit();

    v82 = v92;
    sub_243682B6C(v71, v92);
    v83 = (*(v70 + 80) + 24) & ~*(v70 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v81;
    sub_243671A10(v82, v84 + v83);
    v85 = swift_allocObject();
    *(v85 + 16) = sub_243682CC8;
    *(v85 + 24) = v84;
    sub_243671838(&qword_27ED7EC88, &unk_27ED7EC30, &unk_2436CED80, MEMORY[0x277CBCAF0]);
    v86 = v100;
    v87 = sub_2436CAF68();

    (*(v99 + 8))(v80, v86);
    sub_243670FCC(v71);
    *(v39 + OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_lastUsedCourseSubscription) = v87;
  }

  return v39;
}

uint64_t sub_24367D968(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24367DEFC(v2, v3, v4);
  }

  return result;
}

void sub_24367D9E0(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for EMSUserInterfaceRecord(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v41 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = (&v41 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB80, &qword_2436CE410);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  if (a1)
  {
    v42 = a4;
    sub_2436714A8(a2, &v41 - v17, &unk_27ED7EB80, &qword_2436CE410);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v20 = v42;
    sub_243671AC8(v18, &unk_27ED7EB80, &qword_2436CE410);
    if (EnumCaseMultiPayload == 1)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        *(Strong + OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_lastUsedCourseSubscription) = 0;

        v20 = v42;
      }

      sub_2436CACF8();
      if (*MEMORY[0x277CFA5F0] <= -v22)
      {
        if (qword_27ED7DF10 != -1)
        {
          swift_once();
        }

        v30 = sub_2436CADE8();
        __swift_project_value_buffer(v30, qword_27ED7FD78);
        sub_243682B6C(v20, v13);
        sub_243682B6C(v20, v10);
        v31 = sub_2436CADC8();
        v32 = sub_2436CBED8();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v43[0] = v35;
          *v33 = 136446466;
          sub_2436CAD38();
          sub_243682DDC();
          v36 = sub_2436CC2B8();
          v38 = v37;
          sub_243670FCC(v13);
          v39 = sub_2436AFA70(v36, v38, v43);

          *(v33 + 4) = v39;
          *(v33 + 12) = 2114;
          v40 = *v10;
          sub_243670FCC(v10);
          *(v33 + 14) = v40;
          *v34 = v40;
          _os_log_impl(&dword_24366A000, v31, v32, "Date: %{public}s of lastAssignedCourseIdentifier: %{public}@ is more than 24 hours ago", v33, 0x16u);
          sub_243671AC8(v34, &unk_27ED7ECA0, &unk_2436CEDC0);
          MEMORY[0x245D3CD90](v34, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x245D3CD90](v35, -1, -1);
          MEMORY[0x245D3CD90](v33, -1, -1);
        }

        else
        {

          sub_243670FCC(v10);
          sub_243670FCC(v13);
        }
      }

      else
      {
        if (qword_27ED7DF10 != -1)
        {
          swift_once();
        }

        v23 = sub_2436CADE8();
        __swift_project_value_buffer(v23, qword_27ED7FD78);
        sub_243682B6C(v20, v15);
        v24 = sub_2436CADC8();
        v25 = sub_2436CBED8();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *v26 = 138543362;
          v28 = *v15;
          sub_243670FCC(v15);
          *(v26 + 4) = v28;
          *v27 = v28;
          _os_log_impl(&dword_24366A000, v24, v25, "Pushing ViewModel for lastAssignedCourseIdentifier: %{public}@", v26, 0xCu);
          sub_243671AC8(v27, &unk_27ED7ECA0, &unk_2436CEDC0);
          MEMORY[0x245D3CD90](v27, -1, -1);
          v29 = v26;
          v20 = v42;
          MEMORY[0x245D3CD90](v29, -1, -1);
        }

        else
        {

          sub_243670FCC(v15);
        }

        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24367F584(*v20, *(v20 + 8), *(v20 + 16));
        }
      }
    }
  }
}

uint64_t sub_24367DEFC(void *a1, uint64_t a2, int a3)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EBE0, &qword_2436CE7C8);
  v7 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v50 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EAD8, &unk_2436CE7D0);
  v9 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v50 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v11 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB80, &qword_2436CE410);
  v14 = MEMORY[0x28223BE20](v13);
  v54 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v50 - v17;
  MEMORY[0x28223BE20](v16);
  v21 = &v50 - v20;
  if (a2)
  {
    v64 = v3;
    v22 = *(a2 + 16);
    if (v22)
    {
      v50 = v19;
      v51 = &v50 - v20;
      v52 = a3;
      v53 = v18;
      v67 = MEMORY[0x277D84F90];
      sub_2436C19E8(0, v22, 0);
      v23 = v67;
      v56 = (v9 + 32);
      v57 = (v11 + 32);
      v55 = (v7 + 32);
      v24 = (a2 + 40);
      do
      {
        v25 = *(v24 - 1);
        v26 = *v24;
        v27 = swift_allocObject();
        swift_weakInit();
        if (v26 == 1)
        {
          type metadata accessor for EMSStudentViewModel(0);
          v28 = swift_allocObject();
          ObjectType = swift_getObjectType();
          v30 = swift_unknownObjectRetain_n();
          v31 = sub_24369E7E0(v30, sub_2436829E8, v27, v28, ObjectType);
          swift_unknownObjectRelease();

          v32 = v31 | 0x8000000000000000;
        }

        else
        {
          type metadata accessor for EMSCourseSearchResultViewModel(0);
          v32 = swift_allocObject();
          v33 = OBJC_IVAR____TtC14ClassroomUIKit30EMSCourseSearchResultViewModel__title;
          v65 = 0;
          v66 = 0xE000000000000000;
          swift_unknownObjectRetain_n();

          v34 = v58;
          sub_2436CAE98();
          (*v57)(v32 + v33, v34, v59);
          v35 = OBJC_IVAR____TtC14ClassroomUIKit30EMSCourseSearchResultViewModel__color;
          v65 = 0;
          type metadata accessor for CRKCourseColorType(0);
          v36 = v60;
          sub_2436CAE98();
          (*v56)(v32 + v35, v36, v61);
          v37 = OBJC_IVAR____TtC14ClassroomUIKit30EMSCourseSearchResultViewModel__mascot;
          v65 = 0;
          type metadata accessor for CRKCourseMascotType(0);
          v38 = v62;
          sub_2436CAE98();
          (*v55)(v32 + v37, v38, v63);
          *(v32 + 16) = [v25 identifier];
          v39 = (v32 + OBJC_IVAR____TtC14ClassroomUIKit30EMSCourseSearchResultViewModel_selectionHandler);
          *v39 = sub_2436829B4;
          v39[1] = v27;

          v40 = [v25 name];
          v41 = sub_2436CBD38();
          v43 = v42;

          sub_2436C7DA0(v41, v43, [v25 color], objc_msgSend(v25, sel_mascot));
          swift_unknownObjectRelease();
        }

        v67 = v23;
        v45 = *(v23 + 16);
        v44 = *(v23 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_2436C19E8((v44 > 1), v45 + 1, 1);
          v23 = v67;
        }

        *(v23 + 16) = v45 + 1;
        v46 = v23 + 24 * v45;
        *(v46 + 32) = v32;
        *(v46 + 40) = v25;
        *(v46 + 48) = v26;
        v24 += 16;
        --v22;
      }

      while (v22);
      v47 = v52 & 1;
      v48 = v51;
      *v51 = v23;
      v21 = v48;
      v48[8] = v47;
      swift_storeEnumTagMultiPayload();
      v18 = v53;
    }

    else
    {
      *v21 = (a3 & 1) != 0;
      v21[8] = 0;
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_24367E840(a1, &v50 - v20);
  }

  swift_getKeyPath("p)k;");
  swift_getKeyPath("P)k;");
  sub_2436CAED8();

  swift_getKeyPath("p)k;");
  swift_getKeyPath("P)k;");
  sub_2436714A8(v21, v54, &unk_27ED7EB80, &qword_2436CE410);

  sub_2436CAEE8();
  sub_24367BFD4(v18);
  sub_243671AC8(v18, &unk_27ED7EB80, &qword_2436CE410);
  return sub_243671AC8(v21, &unk_27ED7EB80, &qword_2436CE410);
}

uint64_t sub_24367E5D8(uint64_t a1)
{
  v1 = a1;
  v21 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2436CC008();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v26 = MEMORY[0x277D84F90];
    sub_2436CC0E8();
    result = sub_2436CC118();
    v23 = result;
    v24 = v4;
    v25 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v26 = MEMORY[0x277D84F90];
  sub_2436CC0E8();
  result = sub_2436CBFD8();
  v5 = *(v1 + 36);
  v23 = result;
  v24 = v5;
  v25 = 0;
LABEL_7:
  v6 = 0;
  v20 = v2;
  while (v6 < v2)
  {
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_20;
    }

    v14 = v23;
    v15 = v24;
    v16 = v25;
    sub_243682648(v22, v23, v24, v25, v1);

    v18 = v1;
    sub_2436CC0C8();
    sub_2436CC0F8();
    sub_2436CC108();
    result = sub_2436CC0D8();
    if (v21)
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      if (sub_2436CC148())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBD8, &unk_2436CEB40);
      v19 = sub_2436CBC48();
      sub_2436CC1C8();
      result = v19(v22, 0);
    }

    else
    {
      sub_2436824E4(v14, v15, v16, v1);
      v8 = v7;
      v10 = v9;
      v12 = v11;
      result = sub_2436829A8(v14, v15, v16);
      v23 = v8;
      v24 = v10;
      v25 = v12 & 1;
      v1 = v18;
      v2 = v20;
    }

    ++v6;
    if (v13 == v2)
    {
      sub_2436829A8(v23, v24, v25);
      return v26;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_24367E840@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  if (a1 == 1)
  {
    sub_24367ED8C(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB80, &qword_2436CE410);
    goto LABEL_11;
  }

  sub_24367ED8C(a1);

  sub_24367E5D8(v3);

  v19 = sub_2436C3A90(v4);
  sub_2436804D8(&v19);

  v5 = v19;
  if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
  {
    v6 = v19;
    v7 = sub_2436CC008();
    v5 = v6;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (*(v19 + 16))
  {
LABEL_6:
    *a2 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB80, &qword_2436CE410);
    goto LABEL_11;
  }

  if (qword_27ED7DED0 != -1)
  {
    swift_once();
  }

  v8 = qword_27ED83B40;
  v9 = OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_noCoursesPlaceholderTextTitle;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ED7FF30, &unk_2436D1E00);
  v11 = v10[7];
  v12 = sub_2436CAC58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v14(&a2[v11], v8 + v9, v12);
  v15 = v10[8];
  v14(&a2[v15], v8 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_noCoursesPlaceholderTextSubtitle, v12);
  (*(v13 + 56))(&a2[v15], 0, 1, v12);
  v16 = v10[9];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC0, &qword_2436CEB30);
  (*(*(v17 - 8) + 56))(&a2[v16], 1, 1, v17);
  *a2 = 0x64746E6564757473;
  *(a2 + 1) = 0xEB000000006B7365;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB80, &qword_2436CE410);
LABEL_11:

  return swift_storeEnumTagMultiPayload();
}

BOOL sub_24367EB08(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC8, &qword_2436CEB38);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = *a1;
  v8 = *a2;
  swift_getKeyPath(byte_2436CEA00);
  sub_2436CAED8();

  v10 = v26;
  v9 = v27;
  swift_getKeyPath(byte_2436CEA00);
  sub_2436CAED8();

  v11 = v26;
  v12 = v27;
  v26 = v10;
  v27 = v9;
  v24 = v11;
  v25 = v12;
  sub_2436732AC();
  v13 = sub_2436CBF58();

  if (!v13)
  {
    v14 = [*(v7 + 16) stringValue];
    v15 = sub_2436CBD38();
    v17 = v16;

    v18 = [*(v8 + 16) stringValue];
    v19 = sub_2436CBD38();
    v21 = v20;

    v26 = v15;
    v27 = v17;
    v24 = v19;
    v25 = v21;
    v22 = sub_2436CADB8();
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    v13 = sub_2436CBF98();
    sub_243671AC8(v6, &qword_27ED7EBC8, &qword_2436CEB38);
  }

  return v13 == -1;
}

uint64_t sub_24367ED8C(void *a1)
{
  if (a1)
  {
    v1 = [a1 courses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F5E0, &unk_2436D1DF0);
    v2 = sub_2436CBE08();

    v3 = v2;
    if (!(v2 >> 62))
    {
      goto LABEL_3;
    }

LABEL_59:
    v43 = v3;
    v4 = sub_2436CC008();
    v3 = v43;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_60:

    v6 = MEMORY[0x277D84F98];
LABEL_61:
    *(v49 + 32) = v6;
  }

  v3 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_59;
  }

LABEL_3:
  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_60;
  }

LABEL_4:
  v5 = 0;
  v48 = v3 & 0xC000000000000001;
  v45 = v3 & 0xFFFFFFFFFFFFFF8;
  v6 = MEMORY[0x277D84F98];
  v46 = v4;
  v47 = v3;
  while (v48)
  {
    v7 = MEMORY[0x245D3C2F0](v5);
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_62;
    }

LABEL_13:
    v9 = [v7 identifier];
    v10 = *(v49 + 32);
    v50 = v8;
    if ((v10 & 0xC000000000000001) != 0)
    {

      v11 = v9;
      v12 = sub_2436CC1A8();

      if (v12)
      {
        type metadata accessor for EMSCourseTileViewModel(0);
        swift_dynamicCast();
        v13 = v52;
        goto LABEL_19;
      }

LABEL_21:

      goto LABEL_22;
    }

    if (*(v10 + 16))
    {

      v14 = sub_24366FF48(v9);
      if (v15)
      {
        v13 = *(*(v10 + 56) + 8 * v14);

LABEL_19:

        if (v13)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      goto LABEL_21;
    }

LABEL_22:
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v9;
    type metadata accessor for EMSCourseTileViewModel(0);
    swift_allocObject();
    v13 = sub_24367B4B8(v9, sub_243682860, v17);
LABEL_23:
    v18 = [v7 name];
    v19 = sub_2436CBD38();
    v51 = v20;

    v21 = [objc_msgSend(v7 location)];
    swift_unknownObjectRelease();
    if (v21)
    {
      v22 = sub_2436CBD38();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0xE000000000000000;
    }

    v25 = [v7 color];
    v26 = [v7 mascot];
    swift_getKeyPath(byte_2436CEA00);
    sub_2436CAED8();

    if (v52 == v19 && v53 == v51)
    {
    }

    else
    {
      v27 = sub_2436CC2E8();

      if ((v27 & 1) == 0)
      {
        swift_getKeyPath(byte_2436CEA00);
        v52 = v19;
        v53 = v51;

        sub_2436CAEE8();
      }
    }

    swift_getKeyPath("H*k;");
    swift_getKeyPath("(*k;");
    sub_2436CAED8();

    if (v52 == v22 && v53 == v24)
    {
    }

    else
    {
      v28 = sub_2436CC2E8();

      if ((v28 & 1) == 0)
      {
        swift_getKeyPath("H*k;");
        swift_getKeyPath("(*k;");
        v52 = v22;
        v53 = v24;

        sub_2436CAEE8();
      }
    }

    swift_getKeyPath(byte_2436CEA90);
    swift_getKeyPath(byte_2436CEAB8);
    sub_2436CAED8();

    if (v52 != v25)
    {
      swift_getKeyPath(byte_2436CEA90);
      swift_getKeyPath(byte_2436CEAB8);
      v52 = v25;

      sub_2436CAEE8();
    }

    swift_getKeyPath(byte_2436CEAD8);
    swift_getKeyPath(byte_2436CEB00);
    sub_2436CAED8();

    if (v52 != v26)
    {
      swift_getKeyPath(byte_2436CEAD8);
      swift_getKeyPath(byte_2436CEB00);

      sub_2436CAEE8();
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      if (v6 < 0)
      {
        v29 = v6;
      }

      else
      {
        v29 = v6 & 0xFFFFFFFFFFFFFF8;
      }

      v30 = sub_2436CC008();
      if (__OFADD__(v30, 1))
      {
        goto LABEL_64;
      }

      v6 = sub_2436822B0(v29, v30 + 1);
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v6;
    v32 = sub_24366FF48(v9);
    v34 = *(v6 + 16);
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
      goto LABEL_63;
    }

    v38 = v33;
    if (*(v6 + 24) < v37)
    {
      sub_2436B80A8(v37, isUniquelyReferenced_nonNull_native);
      v32 = sub_24366FF48(v9);
      if ((v38 & 1) != (v39 & 1))
      {
        goto LABEL_67;
      }

LABEL_52:
      if (v38)
      {
        goto LABEL_5;
      }

      goto LABEL_53;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_52;
    }

    v42 = v32;
    sub_2436B8A0C();
    v32 = v42;
    if (v38)
    {
LABEL_5:
      *(*(v6 + 56) + 8 * v32) = v13;

      swift_unknownObjectRelease();

      goto LABEL_6;
    }

LABEL_53:
    *(v6 + 8 * (v32 >> 6) + 64) |= 1 << v32;
    *(*(v6 + 48) + 8 * v32) = v9;
    *(*(v6 + 56) + 8 * v32) = v13;

    swift_unknownObjectRelease();
    v40 = *(v6 + 16);
    v36 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v36)
    {
      goto LABEL_65;
    }

    *(v6 + 16) = v41;
LABEL_6:
    ++v5;
    v3 = v47;
    if (v50 == v46)
    {

      goto LABEL_61;
    }
  }

  if (v5 >= *(v45 + 16))
  {
    goto LABEL_66;
  }

  v7 = *(v3 + 8 * v5 + 32);
  swift_unknownObjectRetain();
  v8 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    goto LABEL_13;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  sub_243671B28(0, &qword_27ED7EBA0, 0x277D04C00);
  result = sub_2436CC318();
  __break(1u);
  return result;
}

uint64_t sub_24367F584(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v9 = Strong;
  sub_243671B28(0, &unk_27ED7FF20, 0x277D82BB8);
  v10 = *(v9 + 16);
  v11 = sub_2436CBF18();

  if ((v11 & 1) == 0)
  {

LABEL_4:
    v12 = *(v4 + 16);
    type metadata accessor for EMSStudentPickerViewModel(0);
    swift_allocObject();

    v13 = a1;
    v9 = sub_2436B180C(v12, v13);
  }

  swift_weakAssign();
  v14 = (v9 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_scrollToUserIdentifierPrivate);
  *v14 = a2;
  *(v14 + 1) = a3;

  swift_unownedRetainStrong();

  sub_243683944(v9 | 0x4000000000000000);
}

uint64_t sub_24367F6D0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24367F584(a2, 0, 0);
  }

  return result;
}

uint64_t sub_24367F738()
{
  v0 = sub_2436CAD98();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  swift_weakInit();
  sub_2436CAD88();
  v5 = sub_2436CAD58();
  v7 = v6;
  v8 = *(v1 + 8);

  v8(v3, v0);
  type metadata accessor for CRKUIButtonViewModel(0);
  v9 = swift_allocObject();
  v14 = 0;
  sub_2436CAE98();
  *(v9 + 16) = v5;
  *(v9 + 24) = v7;
  swift_beginAccess();
  v12 = xmmword_2436CE930;
  v13 = 0x80;
  sub_2436CAE98();
  swift_endAccess();

  v10 = (v9 + OBJC_IVAR____TtC14ClassroomUIKit20CRKUIButtonViewModel_action);
  *v10 = sub_2436804D0;
  v10[1] = v4;
  return v9;
}

uint64_t sub_24367F8FC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for EMSHistoryViewModel(0);
    swift_allocObject();

    v3 = sub_2436BACC4(v2);

    swift_unownedRetainStrong();
    sub_243683944(v3 | 0x8000000000000000);
  }

  return result;
}

uint64_t sub_24367F9B4()
{
  v0 = sub_2436CAD98();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2436CAC58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ED7DED0 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v7, qword_27ED83B40 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_cancelButtonLabel, v4);
  v8 = sub_2436CBD58();
  v10 = v9;
  v11 = swift_allocObject();
  swift_weakInit();
  sub_2436CAD88();
  v12 = sub_2436CAD58();
  v14 = v13;
  v15 = *(v1 + 8);

  v15(v3, v0);
  type metadata accessor for CRKUIButtonViewModel(0);
  v16 = swift_allocObject();
  v21 = 0;
  sub_2436CAE98();
  *(v16 + 16) = v12;
  *(v16 + 24) = v14;
  swift_beginAccess();
  v19[0] = v8;
  v19[1] = v10;
  v20 = 0;
  sub_2436CAE98();
  swift_endAccess();

  v17 = (v16 + OBJC_IVAR____TtC14ClassroomUIKit20CRKUIButtonViewModel_action);
  *v17 = sub_2436804C8;
  v17[1] = v11;
  return v16;
}

uint64_t sub_24367FC5C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 16);
    if (*(v2 + 56))
    {
      v3 = *(v2 + 64);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 8);
      swift_unknownObjectRetain();
      v5(ObjectType, v3);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_24367FD10(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_2436A9D1C(a1);
  }

  return result;
}

uint64_t sub_24367FD8C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24367F584(a1, 0, 0);
  }

  return result;
}

char *sub_24367FDF4()
{

  v1 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_title;
  v2 = sub_2436CAC58();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__searchBar;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF8, &qword_2436CED48);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__subtitle;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC00, &unk_2436CED50);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__showHistoryButton;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v10 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__content;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EC10, &unk_2436CED60);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__viewHistoryButton;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F750, &unk_2436D0E10);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v9(v0 + OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__addedToStack, v8);
  v14(v0 + OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__cancelButton, v13);

  swift_weakDestroy();
  return v0;
}

uint64_t sub_243680070()
{
  sub_24367FDF4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for EMSCoursePickerViewModel(uint64_t a1)
{
  result = qword_27ED7EB48;
  if (!qword_27ED7EB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24368011C(uint64_t a1)
{
  sub_2436CAC58();
  if (v1 <= 0x3F)
  {
    sub_243680354(319);
    if (v2 <= 0x3F)
    {
      sub_2436803FC(319, &unk_27ED7EB60, &qword_27ED7E8C0, &unk_2436CE980);
      if (v3 <= 0x3F)
      {
        sub_2436803AC();
        if (v4 <= 0x3F)
        {
          sub_2436803FC(319, &qword_27ED7EB78, &unk_27ED7EB80, &qword_2436CE410);
          if (v5 <= 0x3F)
          {
            sub_2436803FC(319, &unk_27ED7F740, &unk_27ED7EB90, &qword_2436CE990);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_243680354(uint64_t a1)
{
  if (!qword_27ED7EB58)
  {
    type metadata accessor for EMSSearchBarViewModel(255);
    v1 = sub_2436CAEF8();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED7EB58);
    }
  }
}

void sub_2436803AC()
{
  if (!qword_27ED7EB70)
  {
    v0 = sub_2436CAEF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED7EB70);
    }
  }
}

void sub_2436803FC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2436CAEF8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_243680450@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EMSCoursePickerViewModel(0);
  result = sub_2436CAE38();
  *a2 = result;
  return result;
}

uint64_t sub_243680490()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2436804D8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2436C466C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_243680D40(v6);
  return sub_2436CC0D8();
}

uint64_t sub_2436805E0@<X0>(const char *a2@<X3>, const char *a3@<X4>, void *a4@<X8>)
{
  swift_getKeyPath(a2);
  swift_getKeyPath(a3);
  sub_2436CAED8();

  *a4 = v7;
  return result;
}

uint64_t sub_243680670(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  swift_getKeyPath(a5);
  swift_getKeyPath(a6);

  return sub_2436CAEE8();
}

uint64_t sub_2436806E0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(" (k;");
  swift_getKeyPath(byte_2436CED28);
  sub_2436CAED8();

  *a2 = v4;
  return result;
}

uint64_t sub_243680760(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(" (k;");
  swift_getKeyPath(byte_2436CED28);

  return sub_2436CAEE8();
}

uint64_t sub_24368082C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  swift_getKeyPath(a5);
  swift_getKeyPath(a6);

  return sub_2436CAEE8();
}

uint64_t sub_2436808B8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8C0, &unk_2436CE980);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_2436714A8(a1, &v10 - v7, &qword_27ED7E8C0, &unk_2436CE980);
  swift_getKeyPath("8)k;");
  swift_getKeyPath(byte_2436CEBC0);
  sub_2436714A8(v8, v6, &qword_27ED7E8C0, &unk_2436CE980);

  sub_2436CAEE8();
  return sub_243671AC8(v8, &qword_27ED7E8C0, &unk_2436CE980);
}

uint64_t sub_2436809FC(uint64_t *a1, void x1_0, void x2_0, const char *a2, const char *a3)
{
  swift_getKeyPath(a2);
  swift_getKeyPath(a3);
  sub_2436CAED8();
}

uint64_t sub_243680A74(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB80, &qword_2436CE410);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  sub_2436714A8(a1, &v13 - v10, &unk_27ED7EB80, &qword_2436CE410);
  swift_getKeyPath("p)k;");
  swift_getKeyPath("P)k;");
  sub_2436CAED8();

  swift_getKeyPath("p)k;");
  swift_getKeyPath("P)k;");
  sub_2436714A8(v11, v6, &unk_27ED7EB80, &qword_2436CE410);

  sub_2436CAEE8();
  sub_24367BFD4(v9);
  sub_243671AC8(v9, &unk_27ED7EB80, &qword_2436CE410);
  return sub_243671AC8(v11, &unk_27ED7EB80, &qword_2436CE410);
}

uint64_t sub_243680C40@<X0>(const char *a2@<X3>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  swift_getKeyPath(a2);
  swift_getKeyPath(a3);
  sub_2436CAED8();

  *a4 = v7;
  return result;
}

uint64_t sub_243680CD0(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  swift_getKeyPath(a5);
  swift_getKeyPath(a6);

  return sub_2436CAEE8();
}

uint64_t sub_243680D40(unint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC8, &qword_2436CEB38);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = v33 - v4;
  v5 = a1[1];
  result = sub_2436CC2A8();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for EMSCourseTileViewModel(0);
        v9 = sub_2436CBE28();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v32 = v9 & 0xFFFFFFFFFFFFFF8;
      v42 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
      v43 = v8;
      sub_243681118(&v42, &v40, a1, v7);
      *(v32 + 16) = 0;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v5 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (v5 >= 2)
  {
    v33[1] = v1;
    v34 = v5;
    v10 = *a1;
    v11 = -1;
    v12 = 1;
    v44 = *a1;
    do
    {
      v36 = v12;
      v37 = v11;
      v13 = *(v44 + 8 * v12);
      v35 = v10;
      do
      {
        v14 = *v10;
        swift_getKeyPath(byte_2436CEA00);

        sub_2436CAED8();

        v15 = v42;
        v16 = v43;
        swift_getKeyPath(byte_2436CEA00);
        sub_2436CAED8();

        v17 = v42;
        v18 = v43;
        v42 = v15;
        v43 = v16;
        v40 = v17;
        v41 = v18;
        sub_2436732AC();
        v19 = sub_2436CBF58();

        if (v19)
        {

          if (v19 != -1)
          {
            break;
          }
        }

        else
        {
          v20 = [*(v13 + 16) stringValue];
          v39 = sub_2436CBD38();
          v22 = v21;

          v23 = [*(v14 + 16) stringValue];
          v24 = sub_2436CBD38();
          v26 = v25;

          v42 = v39;
          v43 = v22;
          v40 = v24;
          v41 = v26;
          v27 = sub_2436CADB8();
          v28 = v38;
          (*(*(v27 - 8) + 56))(v38, 1, 1, v27);
          v29 = sub_2436CBF98();
          sub_243671AC8(v28, &qword_27ED7EBC8, &qword_2436CEB38);

          if (v29 != -1)
          {
            break;
          }
        }

        if (!v44)
        {
          goto LABEL_23;
        }

        v30 = *v10;
        v13 = v10[1];
        *v10 = v13;
        v10[1] = v30;
        --v10;
      }

      while (!__CFADD__(v11++, 1));
      v12 = v36 + 1;
      v10 = v35 + 1;
      v11 = v37 - 1;
    }

    while (v36 + 1 != v34);
  }

  return result;
}

uint64_t sub_243681118(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v119 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC8, &qword_2436CEB38);
  result = MEMORY[0x28223BE20](v9 - 8);
  v124 = &v114 - v11;
  v12 = a3[1];
  if (v12 < 1)
  {
    v14 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v119;
    if (!*v119)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_96:
      v132 = v14;
      v110 = *(v14 + 2);
      if (v110 >= 2)
      {
        while (*a3)
        {
          v111 = *&v14[16 * v110];
          v112 = *&v14[16 * v110 + 24];
          sub_243681BD4((*a3 + 8 * v111), (*a3 + 8 * *&v14[16 * v110 + 16]), (*a3 + 8 * v112), v5);
          if (v6)
          {
          }

          if (v112 < v111)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_2436C3A7C(v14);
          }

          if (v110 - 2 >= *(v14 + 2))
          {
            goto LABEL_121;
          }

          v113 = &v14[16 * v110];
          *v113 = v111;
          *(v113 + 1) = v112;
          v132 = v14;
          result = sub_2436C39F0(v110 - 1);
          v14 = v132;
          v110 = *(v132 + 2);
          if (v110 <= 1)
          {
          }
        }

        goto LABEL_131;
      }
    }

LABEL_127:
    result = sub_2436C3A7C(v14);
    v14 = result;
    goto LABEL_96;
  }

  v118 = a4;
  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  v114 = a3;
LABEL_4:
  v15 = v13 + 1;
  if (v13 + 1 < v12)
  {
    v5 = *a3;
    v130 = *(*a3 + 8 * v15);
    v128 = *(v5 + 8 * v13);

    LODWORD(v127) = sub_24367EB08(&v130, &v128);
    if (v6)
    {
    }

    v15 = v13 + 2;
    if (v13 + 2 < v12)
    {
      v126 = v12;
      v116 = v14;
      v117 = 0;
      v115 = v13;
      v16 = (v5 + 8 * v13 + 16);
      do
      {
        v123 = v15;
        v5 = *(v16 - 1);
        v27 = *v16;
        swift_getKeyPath(byte_2436CEA00, v114);

        sub_2436CAED8();

        v28 = v130;
        v29 = v131;
        swift_getKeyPath(byte_2436CEA00);
        sub_2436CAED8();

        v30 = v130;
        v31 = v131;
        v130 = v28;
        v131 = v29;
        v128 = v30;
        v129 = v31;
        sub_2436732AC();
        v32 = sub_2436CBF58();

        if (v32)
        {

          if ((v127 & 1) == (v32 != -1))
          {
LABEL_12:
            v14 = v116;
            v6 = v117;
            a3 = v114;
            v15 = v123;
            goto LABEL_14;
          }
        }

        else
        {
          v17 = [*(v27 + 16) stringValue];
          v125 = sub_2436CBD38();
          v19 = v18;

          v20 = [*(v5 + 16) stringValue];
          v21 = sub_2436CBD38();
          v23 = v22;

          v130 = v125;
          v131 = v19;
          v128 = v21;
          v129 = v23;
          v24 = sub_2436CADB8();
          v25 = v124;
          (*(*(v24 - 8) + 56))(v124, 1, 1, v24);
          v26 = sub_2436CBF98();
          sub_243671AC8(v25, &qword_27ED7EBC8, &qword_2436CEB38);

          if (((v127 ^ (v26 != -1)) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v15 = v123 + 1;
        ++v16;
      }

      while (v126 != v123 + 1);
      v15 = v126;
      v14 = v116;
      v6 = v117;
      a3 = v114;
LABEL_14:
      v13 = v115;
    }

    if (v127)
    {
      if (v15 < v13)
      {
        goto LABEL_126;
      }

      if (v13 < v15)
      {
        v33 = 8 * v15 - 8;
        v34 = 8 * v13;
        v35 = v15;
        v36 = v13;
        do
        {
          if (v36 != --v35)
          {
            v37 = *a3;
            if (!*a3)
            {
              goto LABEL_130;
            }

            v38 = *(v37 + v34);
            *(v37 + v34) = *(v37 + v33);
            *(v37 + v33) = v38;
          }

          ++v36;
          v33 -= 8;
          v34 += 8;
        }

        while (v36 < v35);
      }
    }
  }

  v39 = a3[1];
  if (v15 >= v39)
  {
    goto LABEL_43;
  }

  if (__OFSUB__(v15, v13))
  {
    goto LABEL_123;
  }

  if (v15 - v13 >= v118)
  {
    goto LABEL_43;
  }

  v40 = v13 + v118;
  if (__OFADD__(v13, v118))
  {
    goto LABEL_124;
  }

  if (v40 >= v39)
  {
    v40 = a3[1];
  }

  if (v40 < v13)
  {
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v15 == v40)
  {
    goto LABEL_43;
  }

  v116 = v14;
  v117 = v6;
  v125 = *a3;
  v41 = (v125 + 8 * v15 - 8);
  v115 = v13;
  v42 = v13 - v15;
  v120 = v40;
LABEL_33:
  v122 = v41;
  v123 = v15;
  v43 = *(v125 + 8 * v15);
  v121 = v42;
  v44 = v42;
  while (1)
  {
    v126 = v44;
    v45 = *v41;
    swift_getKeyPath(byte_2436CEA00, v114);

    sub_2436CAED8();

    v46 = v130;
    v47 = v131;
    swift_getKeyPath(byte_2436CEA00);
    v127 = v45;
    sub_2436CAED8();

    v48 = v130;
    v49 = v131;
    v130 = v46;
    v131 = v47;
    v128 = v48;
    v129 = v49;
    sub_2436732AC();
    v50 = sub_2436CBF58();

    if (v50)
    {

      if (v50 != -1)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v51 = [*(v43 + 16) stringValue];
      v52 = sub_2436CBD38();
      v5 = v53;

      v54 = [*(v127 + 16) stringValue];
      v55 = sub_2436CBD38();
      v57 = v56;

      v130 = v52;
      v131 = v5;
      v128 = v55;
      v129 = v57;
      v58 = sub_2436CADB8();
      v59 = v124;
      (*(*(v58 - 8) + 56))(v124, 1, 1, v58);
      v60 = sub_2436CBF98();
      sub_243671AC8(v59, &qword_27ED7EBC8, &qword_2436CEB38);

      if (v60 != -1)
      {
        goto LABEL_32;
      }
    }

    v61 = v126;
    if (!v125)
    {
      break;
    }

    v62 = *v41;
    v43 = v41[1];
    *v41 = v43;
    v41[1] = v62;
    --v41;
    v63 = __CFADD__(v61, 1);
    v44 = v61 + 1;
    if (v63)
    {
LABEL_32:
      v15 = v123 + 1;
      v41 = v122 + 1;
      v42 = v121 - 1;
      if (v123 + 1 != v120)
      {
        goto LABEL_33;
      }

      v15 = v120;
      v14 = v116;
      v6 = v117;
      a3 = v114;
      v13 = v115;
LABEL_43:
      if (v15 < v13)
      {
        goto LABEL_122;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2436C1290(0, *(v14 + 2) + 1, 1, v14);
        v14 = result;
      }

      v65 = *(v14 + 2);
      v64 = *(v14 + 3);
      v66 = v65 + 1;
      if (v65 >= v64 >> 1)
      {
        result = sub_2436C1290((v64 > 1), v65 + 1, 1, v14);
        v14 = result;
      }

      *(v14 + 2) = v66;
      v67 = &v14[16 * v65];
      *(v67 + 4) = v13;
      *(v67 + 5) = v15;
      v13 = v15;
      v68 = *v119;
      if (!*v119)
      {
        goto LABEL_132;
      }

      if (v65)
      {
        while (1)
        {
          v5 = v66 - 1;
          if (v66 >= 4)
          {
            break;
          }

          if (v66 == 3)
          {
            v69 = *(v14 + 4);
            v70 = *(v14 + 5);
            v79 = __OFSUB__(v70, v69);
            v71 = v70 - v69;
            v72 = v79;
LABEL_63:
            if (v72)
            {
              goto LABEL_111;
            }

            v85 = &v14[16 * v66];
            v87 = *v85;
            v86 = *(v85 + 1);
            v88 = __OFSUB__(v86, v87);
            v89 = v86 - v87;
            v90 = v88;
            if (v88)
            {
              goto LABEL_114;
            }

            v91 = &v14[16 * v5 + 32];
            v93 = *v91;
            v92 = *(v91 + 1);
            v79 = __OFSUB__(v92, v93);
            v94 = v92 - v93;
            if (v79)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v89, v94))
            {
              goto LABEL_118;
            }

            if (v89 + v94 >= v71)
            {
              if (v71 < v94)
              {
                v5 = v66 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          v95 = &v14[16 * v66];
          v97 = *v95;
          v96 = *(v95 + 1);
          v79 = __OFSUB__(v96, v97);
          v89 = v96 - v97;
          v90 = v79;
LABEL_77:
          if (v90)
          {
            goto LABEL_113;
          }

          v98 = &v14[16 * v5];
          v100 = *(v98 + 4);
          v99 = *(v98 + 5);
          v79 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v79)
          {
            goto LABEL_116;
          }

          if (v101 < v89)
          {
            goto LABEL_3;
          }

LABEL_84:
          v106 = v5 - 1;
          if (v5 - 1 >= v66)
          {
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          if (!*a3)
          {
            goto LABEL_129;
          }

          v107 = *&v14[16 * v106 + 32];
          v108 = *&v14[16 * v5 + 40];
          sub_243681BD4((*a3 + 8 * v107), (*a3 + 8 * *&v14[16 * v5 + 32]), (*a3 + 8 * v108), v68);
          if (v6)
          {
          }

          if (v108 < v107)
          {
            goto LABEL_107;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_2436C3A7C(v14);
          }

          if (v106 >= *(v14 + 2))
          {
            goto LABEL_108;
          }

          v109 = &v14[16 * v106];
          *(v109 + 4) = v107;
          *(v109 + 5) = v108;
          v132 = v14;
          result = sub_2436C39F0(v5);
          v14 = v132;
          v66 = *(v132 + 2);
          if (v66 <= 1)
          {
            goto LABEL_3;
          }
        }

        v73 = &v14[16 * v66 + 32];
        v74 = *(v73 - 64);
        v75 = *(v73 - 56);
        v79 = __OFSUB__(v75, v74);
        v76 = v75 - v74;
        if (v79)
        {
          goto LABEL_109;
        }

        v78 = *(v73 - 48);
        v77 = *(v73 - 40);
        v79 = __OFSUB__(v77, v78);
        v71 = v77 - v78;
        v72 = v79;
        if (v79)
        {
          goto LABEL_110;
        }

        v80 = &v14[16 * v66];
        v82 = *v80;
        v81 = *(v80 + 1);
        v79 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v79)
        {
          goto LABEL_112;
        }

        v79 = __OFADD__(v71, v83);
        v84 = v71 + v83;
        if (v79)
        {
          goto LABEL_115;
        }

        if (v84 >= v76)
        {
          v102 = &v14[16 * v5 + 32];
          v104 = *v102;
          v103 = *(v102 + 1);
          v79 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v79)
          {
            goto LABEL_119;
          }

          if (v71 < v105)
          {
            v5 = v66 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_63;
      }

LABEL_3:
      v12 = a3[1];
      if (v13 >= v12)
      {
        goto LABEL_94;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_243681BD4(char *a1, char *a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC8, &qword_2436CEB38);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v57 - v9;
  v10 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v10 = a2 - a1;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v11 < v12 >> 3)
  {
    if (a4 != a1 || &a1[8 * v11] <= a4)
    {
      memmove(a4, a1, 8 * v11);
    }

    v70 = &a4[8 * v11];
    if (a2 - a1 < 8)
    {
LABEL_10:
      a2 = a1;
      goto LABEL_41;
    }

    while (1)
    {
      if (a2 >= a3)
      {
        goto LABEL_10;
      }

      v63 = a1;
      v64 = a2;
      v16 = *a2;
      v65 = a4;
      v17 = *a4;
      swift_getKeyPath(byte_2436CEA00);

      sub_2436CAED8();

      v19 = v68;
      v18 = v69;
      swift_getKeyPath(byte_2436CEA00);
      sub_2436CAED8();

      v20 = v68;
      v21 = v69;
      v68 = v19;
      v69 = v18;
      v66 = v20;
      v67 = v21;
      sub_2436732AC();
      v22 = sub_2436CBF58();

      if (v22)
      {

        if (v22 != -1)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v23 = [*(v16 + 16) stringValue];
        v61 = sub_2436CBD38();
        v62 = v24;
        v25 = v24;

        v26 = [*(v17 + 16) stringValue];
        v27 = sub_2436CBD38();
        v29 = v28;

        v68 = v61;
        v69 = v25;
        v66 = v27;
        v67 = v29;
        v30 = sub_2436CADB8();
        v31 = v60;
        (*(*(v30 - 8) + 56))(v60, 1, 1, v30);
        v32 = sub_2436CBF98();
        sub_243671AC8(v31, &qword_27ED7EBC8, &qword_2436CEB38);

        if (v32 != -1)
        {
LABEL_19:
          a2 = v64;
          v15 = v65;
          a4 = v65 + 8;
          v14 = v63;
          if (v63 == v65)
          {
            goto LABEL_13;
          }

LABEL_12:
          *v14 = *v15;
          goto LABEL_13;
        }
      }

      v14 = v63;
      v15 = v64;
      a2 = v64 + 8;
      a4 = v65;
      if (v63 != v64)
      {
        goto LABEL_12;
      }

LABEL_13:
      a1 = v14 + 8;
      if (a4 >= v70)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != a2 || &a2[8 * v13] <= a4)
  {
    memmove(a4, a2, 8 * v13);
  }

  v70 = &a4[8 * v13];
  if (a3 - a2 >= 8 && a2 > a1)
  {
    v65 = a4;
    v63 = a1;
LABEL_27:
    v64 = a2;
    v33 = a2 - 8;
    v34 = a3 - 8;
    v35 = v70;
    v61 = v33;
    do
    {
      v62 = v34;
      v37 = *(v35 - 1);
      v35 -= 8;
      v36 = v37;
      v38 = *v33;
      swift_getKeyPath(byte_2436CEA00);

      sub_2436CAED8();

      v40 = v68;
      v39 = v69;
      swift_getKeyPath(byte_2436CEA00);
      sub_2436CAED8();

      v41 = v68;
      v42 = v69;
      v68 = v40;
      v69 = v39;
      v66 = v41;
      v67 = v42;
      sub_2436732AC();
      v43 = sub_2436CBF58();

      if (v43)
      {
      }

      else
      {
        v44 = [*(v36 + 16) stringValue];
        v58 = sub_2436CBD38();
        v59 = v45;
        v46 = v45;

        v47 = [*(v38 + 16) stringValue];
        v48 = sub_2436CBD38();
        v50 = v49;

        v68 = v58;
        v69 = v46;
        v66 = v48;
        v67 = v50;
        v51 = sub_2436CADB8();
        v52 = v60;
        (*(*(v51 - 8) + 56))(v60, 1, 1, v51);
        v43 = sub_2436CBF98();
        sub_243671AC8(v52, &qword_27ED7EBC8, &qword_2436CEB38);
      }

      a3 = v62;
      v53 = v62 + 8;
      if (v43 == -1)
      {
        a4 = v65;
        v54 = v63;
        v55 = v61;
        if (v53 != v64)
        {
          *v62 = *v61;
        }

        if (v70 <= a4 || (a2 = v55, v55 <= v54))
        {
          a2 = v55;
          goto LABEL_41;
        }

        goto LABEL_27;
      }

      a4 = v65;
      if (v53 != v70)
      {
        *v62 = *v35;
      }

      v34 = a3 - 8;
      v70 = v35;
      v33 = v61;
    }

    while (v35 > a4);
    v70 = v35;
    a2 = v64;
  }

LABEL_41:
  if (a2 != a4 || a2 >= &a4[(v70 - a4 + (v70 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, a4, 8 * ((v70 - a4) / 8));
  }

  return 1;
}

uint64_t sub_2436822B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EBB0, &qword_2436CDAE0);
    v2 = sub_2436CC228();
    v19 = v2;
    sub_2436CC128();
    v3 = sub_2436CC1B8();
    if (v3)
    {
      v4 = v3;
      sub_243671B28(0, &qword_27ED7EBA0, 0x277D04C00);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for EMSCourseTileViewModel(0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_2436B80A8(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_2436CBF08();
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
        v5 = sub_2436CC1B8();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

void sub_2436824E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_2436CC158() == *(a4 + 36))
    {
      sub_2436CC168();
      sub_243671B28(0, &qword_27ED7EBA0, 0x277D04C00);
      swift_dynamicCast();
      sub_24366FF48(v6);
      v5 = v4;

      if (v5)
      {
        sub_2436CC138();
        sub_2436CC188();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_2436CBFE8();
}

void sub_243682648(void *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_2436CC198();
      sub_243671B28(0, &qword_27ED7EBA0, 0x277D04C00);
      swift_dynamicCast();
      type metadata accessor for EMSCourseTileViewModel(0);
      swift_dynamicCast();
      *a1 = v11;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_2436CC158() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_2436CC168();
  sub_243671B28(0, &qword_27ED7EBA0, 0x277D04C00);
  swift_dynamicCast();
  a2 = sub_24366FF48(v11);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  *a1 = *(*(a5 + 56) + 8 * a2);
  v10;
}

uint64_t sub_243682820()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2436829A8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_243682B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EMSUserInterfaceRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243682BD0()
{
  v1 = (type metadata accessor for EMSUserInterfaceRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_2436CAD38();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_243682CC8(char a1, uint64_t a2)
{
  v5 = *(type metadata accessor for EMSUserInterfaceRecord(0) - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));

  sub_24367D9E0(a1, a2, v6, v7);
}

uint64_t sub_243682D4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243682D84(unsigned __int8 *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC90, &qword_2436CEDB8);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_243682DDC()
{
  result = qword_27ED7EC98;
  if (!qword_27ED7EC98)
  {
    sub_2436CAD38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EC98);
  }

  return result;
}

uint64_t sub_243682E34()
{
  swift_getKeyPath("@'k;");
  sub_2436CAED8();

  return v1;
}

uint64_t sub_243682EA8()
{
  swift_getKeyPath("('k;");
  swift_getKeyPath("\b'k;");
  sub_2436CAED8();

  return v1;
}

uint64_t sub_243682F1C()
{
  v1 = v0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ED00, &qword_2436CEEF0);
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = &v25 - v2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ED08, &qword_2436CEEF8);
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v4 = &v25 - v3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ED10, &qword_2436CEF00);
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ECF8, &qword_2436CEEE8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ECF0, &qword_2436CEEE0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = OBJC_IVAR____TtC14ClassroomUIKit27EMSNavigationStackViewModel__root;
  v32 = 0xF000000000000007;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ECE0, &unk_2436CEDF0);
  sub_2436CAE98();
  (*(v12 + 32))(v1 + v15, v14, v11);
  v16 = OBJC_IVAR____TtC14ClassroomUIKit27EMSNavigationStackViewModel__path;
  v32 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E640, &qword_2436CDF98);
  sub_2436CAE98();
  (*(v8 + 32))(v1 + v16, v10, v7);
  v17 = OBJC_IVAR____TtC14ClassroomUIKit27EMSNavigationStackViewModel_pathSubscription;
  *(v1 + OBJC_IVAR____TtC14ClassroomUIKit27EMSNavigationStackViewModel_pathSubscription) = 0;
  swift_beginAccess();
  sub_2436CAEA8();
  swift_endAccess();
  v32 = 0;
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ED18, &qword_2436CEF08);
  sub_243671838(&qword_27ED7ED20, &qword_27ED7ED10, &qword_2436CEF00, MEMORY[0x277CBCEC8]);
  v19 = v25;
  v18 = v26;
  sub_2436CAF48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ED28, &qword_2436CEF10);
  sub_243671838(&qword_27ED7ED30, &qword_27ED7ED00, &qword_2436CEEF0, MEMORY[0x277CBCC28]);
  v20 = v29;
  sub_2436CAF18();
  (*(v31 + 8))(v18, v20);
  sub_243671838(&qword_27ED7ED38, &qword_27ED7ED08, &qword_2436CEEF8, MEMORY[0x277CBCB10]);
  v21 = v28;
  v22 = sub_2436CAF08();
  (*(v30 + 8))(v4, v21);
  (*(v27 + 8))(v6, v19);
  v32 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ED40, &qword_2436CEF18);
  sub_243671838(&unk_27ED7ED48, &qword_27ED7ED40, &qword_2436CEF18, MEMORY[0x277CBCD90]);
  v23 = sub_2436CAF68();

  *(v1 + v17) = v23;

  return v1;
}

double sub_2436834F0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (*(a2 + 16) < v2)
    {

      v17 = sub_2436BBCCC(a2);

      v5 = a1 + 24;
      v16 = v5;
      while (1)
      {
        v6 = *(v5 + 8 * v2);
        if (sub_24368370C(v6, v17))
        {
          break;
        }

        sub_243675744(v6);
        if (qword_27ED7DF10 != -1)
        {
          swift_once();
        }

        v7 = sub_2436CADE8();
        __swift_project_value_buffer(v7, qword_27ED7FD78);
        sub_243675744(v6);
        v8 = sub_2436CADC8();
        v9 = sub_2436CBED8();
        sub_2436755D8(v6);
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v18 = v11;
          *v10 = 136446210;
          sub_243675744(v6);
          v12 = sub_2436CBD68();
          v14 = sub_2436AFA70(v12, v13, &v18);
          v5 = v16;

          *(v10 + 4) = v14;
          _os_log_impl(&dword_24366A000, v8, v9, "Popping screen: %{public}s", v10, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v11);
          MEMORY[0x245D3CD90](v11, -1, -1);
          MEMORY[0x245D3CD90](v10, -1, -1);
          sub_2436755D8(v6);

          if (!--v2)
          {
            break;
          }
        }

        else
        {

          sub_2436755D8(v6);
          if (!--v2)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_24368370C(unint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_2436CC368();
  sub_2436933F8(v12, a1);
  v4 = sub_2436CC398();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  v8 = a1 & 0xC000000000000000;
  while (1)
  {
    v9 = *(*(a2 + 48) + 8 * v6);
    v10 = v9 >> 62;
    if ((v9 >> 62) <= 1)
    {
      break;
    }

    if (v10 == 2)
    {
      if (v8 != 0x8000000000000000)
      {
        goto LABEL_5;
      }
    }

    else if (a1 >> 62 != 3)
    {
      goto LABEL_5;
    }

LABEL_4:
    if (((v9 ^ a1) & 0x3FFFFFFFFFFFFFFFLL) == 0)
    {
      return 1;
    }

LABEL_5:
    v6 = (v6 + 1) & v7;
    if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  if (v10)
  {
    if (v8 != 0x4000000000000000)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (a1 >> 62 || v9 != a1)
  {
    goto LABEL_5;
  }

  return 1;
}

uint64_t sub_243683848()
{
  swift_getKeyPath("('k;");
  swift_getKeyPath("\b'k;");
  sub_2436CAED8();

  v0 = *(v3 + 16);
  if (v0)
  {
    v1 = *(v3 + 8 * v0 + 24);
    sub_243675744(v1);

    return v1;
  }

  swift_getKeyPath("@'k;");
  sub_2436CAED8();

  v1 = v3;
  if ((~v3 & 0xF000000000000007) != 0)
  {
    return v1;
  }

  __break(1u);
  return result;
}

void sub_243683944(unint64_t a1)
{
  swift_getKeyPath("('k;");
  swift_getKeyPath("\b'k;");
  v2 = sub_2436CAEC8();
  v4 = v3;
  v5 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_2436C1184(0, *(v5 + 2) + 1, 1, v5);
    *v4 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_2436C1184((v7 > 1), v8 + 1, 1, v5);
    *v4 = v5;
  }

  *(v5 + 2) = v8 + 1;
  *&v5[8 * v8 + 32] = a1;
  sub_243675744(a1);
  v2(v17, 0);

  if (qword_27ED7DF10 != -1)
  {
    swift_once();
  }

  v9 = sub_2436CADE8();
  __swift_project_value_buffer(v9, qword_27ED7FD78);
  sub_243675744(a1);
  v10 = sub_2436CADC8();
  v11 = sub_2436CBED8();
  sub_2436755D8(a1);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    sub_243675744(a1);
    v14 = sub_2436CBD68();
    v16 = sub_2436AFA70(v14, v15, v17);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_24366A000, v10, v11, "Pushing %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x245D3CD90](v13, -1, -1);
    MEMORY[0x245D3CD90](v12, -1, -1);
  }
}

void sub_243683B98()
{
  swift_getKeyPath("('k;");
  swift_getKeyPath("\b'k;");
  v0 = sub_2436CAEC8();
  *v1 = MEMORY[0x277D84F90];

  v0(&v6, 0);

  if (qword_27ED7DF10 != -1)
  {
    swift_once();
  }

  v2 = sub_2436CADE8();
  __swift_project_value_buffer(v2, qword_27ED7FD78);
  v3 = sub_2436CADC8();
  v4 = sub_2436CBED8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24366A000, v3, v4, "Popping to root", v5, 2u);
    MEMORY[0x245D3CD90](v5, -1, -1);
  }
}

void sub_243683CEC(unint64_t a1)
{
  if (qword_27ED7DF10 != -1)
  {
    swift_once();
  }

  v2 = sub_2436CADE8();
  __swift_project_value_buffer(v2, qword_27ED7FD78);
  sub_243675744(a1);
  v3 = sub_2436CADC8();
  v4 = sub_2436CBED8();
  sub_2436755D8(a1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    sub_243675744(a1);
    v7 = sub_2436CBD68();
    v9 = sub_2436AFA70(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24366A000, v3, v4, "Resetting navigation stack with root %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x245D3CD90](v6, -1, -1);
    MEMORY[0x245D3CD90](v5, -1, -1);
  }

  swift_getKeyPath("@'k;");
  v10 = a1;
  sub_243675744(a1);

  sub_2436CAEE8();
  sub_243683B98();
}

uint64_t sub_243683EAC()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit27EMSNavigationStackViewModel__root;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ECF0, &qword_2436CEEE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ClassroomUIKit27EMSNavigationStackViewModel__path;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ECF8, &qword_2436CEEE8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for EMSNavigationStackViewModel(uint64_t a1)
{
  result = qword_27ED7ECC8;
  if (!qword_27ED7ECC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243684004(uint64_t a1)
{
  sub_2436803FC(319, &qword_27ED7ECD8, &qword_27ED7ECE0, &unk_2436CEDF0);
  if (v1 <= 0x3F)
  {
    sub_2436803FC(319, &qword_27ED7ECE8, &qword_27ED7E640, &qword_2436CDF98);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_243684104@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EMSNavigationStackViewModel(0);
  result = sub_2436CAE38();
  *a2 = result;
  return result;
}

uint64_t sub_243684154@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  if (v4)
  {
  }

  *a3 = v4;
  a3[1] = v5;
}

uint64_t sub_24368419C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  a2[1] = v2;
  return sub_2436841B4(v3, v2);
}

uint64_t sub_2436841B4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_243684204(__int128 *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 72) = MEMORY[0x277D84F98];
  *(v3 + 80) = 0;
  v7 = MEMORY[0x277D84FA0];
  *(v3 + 88) = 0;
  *(v3 + 96) = v7;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED80, &qword_2436CF070);
  swift_allocObject();
  *(v3 + 128) = sub_2436CAE78();
  sub_2436854AC(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

void sub_2436842BC()
{
  v1 = *(v0 + 88);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = v0;
    *(v0 + 88) = v3;
    sub_243684504();
    *(v0 + 104) = 0;
    swift_unknownObjectRelease();
    *(v0 + 80) = 0;
    v5 = sub_243671510(MEMORY[0x277D84F90]);
    swift_beginAccess();
    v4[9] = v5;

    v6 = v4[15];
    v7 = v4[14] & 0xFFFFFFFFFFFFLL;
    if ((v6 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v6) & 0xF;
    }

    if (v7)
    {
      sub_2436CAE68();
      v8 = v4[5];
      v9 = v4[6];
      __swift_project_boxed_opaque_existential_0(v4 + 2, v8);
      (*(v9 + 8))(v8, v9);
      swift_allocObject();
      swift_weakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED70, &qword_2436CEDB0);
      sub_243685448();
      sub_2436CAF68();

      swift_beginAccess();
      sub_2436CAE08();
      swift_endAccess();
    }

    else
    {
      sub_2436CAE68();
    }
  }
}

uint64_t sub_243684474(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2436CAE68();
    if (v2 != 1)
    {
      sub_2436846F8();
    }
  }

  return result;
}

void sub_243684504()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 96);
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_2436CBFF8();
    sub_2436CAE28();
    sub_2436853E0();
    sub_2436CBEB8();
    v2 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
LABEL_18:
      sub_243685438(v2);
      *(v1 + 96) = MEMORY[0x277D84FA0];

      return;
    }

    while (1)
    {
      sub_2436CAE18();

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_2436CC018())
      {
        sub_2436CAE28();
        swift_dynamicCast();
        v12 = v5;
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}