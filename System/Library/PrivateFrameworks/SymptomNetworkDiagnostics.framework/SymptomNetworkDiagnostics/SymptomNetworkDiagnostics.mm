uint64_t sub_22B0FE3F4()
{
  MEMORY[0x23188B0A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B0FE42C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B0FE464()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B0FE4B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B0FE504(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t NetworkDiagnosticsPayload.description.getter()
{
  v1 = type metadata accessor for WiFiDisassociationPayload(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InternetOutagePayload(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DHCPAcquisitionFailurePayload(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DNSServerOutagePayload(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NetworkMisconfigurationPayload(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RadioLinkCongestionPayload(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NetworkDiagnosticsPayload(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B0FEC84(v0, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_22B0FEE74(v21, v9, type metadata accessor for DHCPAcquisitionFailurePayload);
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_22B1104A4();

      v33 = 0xD00000000000001ALL;
      v34 = 0x800000022B110ED0;
      v29 = sub_22B0FECE8(type metadata accessor for DHCPAcquisitionFailurePayload);
      MEMORY[0x23188A7E0](v29);

      MEMORY[0x23188A7E0](62, 0xE100000000000000);
      v24 = v33;
      v25 = v9;
      v26 = type metadata accessor for DHCPAcquisitionFailurePayload;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_22B0FEE74(v21, v6, type metadata accessor for InternetOutagePayload);
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_22B1104A4();

      v33 = 0xD000000000000011;
      v34 = 0x800000022B110EB0;
      v27 = sub_22B0FECE8(type metadata accessor for InternetOutagePayload);
      MEMORY[0x23188A7E0](v27);

      MEMORY[0x23188A7E0](62, 0xE100000000000000);
      v24 = v33;
      v25 = v6;
      v26 = type metadata accessor for InternetOutagePayload;
    }

    else
    {
      sub_22B0FEE74(v21, v3, type metadata accessor for WiFiDisassociationPayload);
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_22B1104A4();

      v33 = 0xD000000000000016;
      v34 = 0x800000022B110E90;
      v31 = sub_22B0FECE8(type metadata accessor for WiFiDisassociationPayload);
      MEMORY[0x23188A7E0](v31);

      MEMORY[0x23188A7E0](62, 0xE100000000000000);
      v24 = v33;
      v25 = v3;
      v26 = type metadata accessor for WiFiDisassociationPayload;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22B0FEE74(v21, v15, type metadata accessor for NetworkMisconfigurationPayload);
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_22B1104A4();

      v33 = 0xD00000000000001ALL;
      v34 = 0x800000022B110F10;
      v23 = sub_22B0FECE8(type metadata accessor for NetworkMisconfigurationPayload);
      MEMORY[0x23188A7E0](v23);

      MEMORY[0x23188A7E0](62, 0xE100000000000000);
      v24 = v33;
      v25 = v15;
      v26 = type metadata accessor for NetworkMisconfigurationPayload;
    }

    else
    {
      sub_22B0FEE74(v21, v12, type metadata accessor for DNSServerOutagePayload);
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_22B1104A4();

      v33 = 0xD000000000000013;
      v34 = 0x800000022B110EF0;
      v30 = DNSServerOutagePayload.description.getter();
      MEMORY[0x23188A7E0](v30);

      MEMORY[0x23188A7E0](62, 0xE100000000000000);
      v24 = v33;
      v25 = v12;
      v26 = type metadata accessor for DNSServerOutagePayload;
    }
  }

  else
  {
    sub_22B0FEE74(v21, v18, type metadata accessor for RadioLinkCongestionPayload);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_22B1104A4();

    v33 = 0xD000000000000017;
    v34 = 0x800000022B110F30;
    v28 = sub_22B0FECE8(type metadata accessor for RadioLinkCongestionPayload);
    MEMORY[0x23188A7E0](v28);

    MEMORY[0x23188A7E0](62, 0xE100000000000000);
    v24 = v33;
    v25 = v18;
    v26 = type metadata accessor for RadioLinkCongestionPayload;
  }

  sub_22B0FEEDC(v25, v26);
  return v24;
}

uint64_t sub_22B0FEC4C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B0FEC84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkDiagnosticsPayload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B0FECE8(uint64_t (*a1)(void))
{
  v3 = v1;
  BYTE8(v6) = 0;
  sub_22B1104A4();
  MEMORY[0x23188A7E0](0x697720746E657645, 0xEE00204449206874);
  MEMORY[0x23188A7E0](v3[4], v3[5]);
  MEMORY[0x23188A7E0](23328, 0xE200000000000000);
  *&v6 = *(v1 + 48);
  sub_22B110514();
  MEMORY[0x23188A7E0](0x656767697274205DLL, 0xEF20746120646572);
  a1(0);
  sub_22B110244();
  sub_22B0FF41C();
  v4 = sub_22B1105A4();
  MEMORY[0x23188A7E0](v4);

  MEMORY[0x23188A7E0](0x76656420726F6620, 0xEC00000020656369);
  MEMORY[0x23188A7E0](*v3, v3[1]);
  MEMORY[0x23188A7E0](0x656D6F68206E6920, 0xE900000000000020);
  MEMORY[0x23188A7E0](v3[2], v3[3]);
  return *(&v6 + 1);
}

uint64_t sub_22B0FEE74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B0FEEDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NetworkDiagnosticsPayloadCommon.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B110244();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_22B1104A4();
  MEMORY[0x23188A7E0](0x697720746E657645, 0xEE00204449206874);
  v8 = (*(a2 + 24))(a1, a2);
  MEMORY[0x23188A7E0](v8);

  MEMORY[0x23188A7E0](23328, 0xE200000000000000);
  (*(a2 + 32))(&v14, a1, a2);
  sub_22B110514();
  MEMORY[0x23188A7E0](0x656767697274205DLL, 0xEF20746120646572);
  (*(a2 + 40))(a1, a2);
  sub_22B0FF41C();
  v9 = sub_22B1105A4();
  MEMORY[0x23188A7E0](v9);

  (*(v5 + 8))(v7, v4);
  MEMORY[0x23188A7E0](0x76656420726F6620, 0xEC00000020656369);
  v10 = (*(a2 + 8))(a1, a2);
  MEMORY[0x23188A7E0](v10);

  MEMORY[0x23188A7E0](0x656D6F68206E6920, 0xE900000000000020);
  v11 = (*(a2 + 16))(a1, a2);
  MEMORY[0x23188A7E0](v11);

  return v15;
}

uint64_t DNSServerOutagePayload.description.getter()
{
  v1 = v0;
  sub_22B1104A4();
  MEMORY[0x23188A7E0](0x697720746E657645, 0xEE00204449206874);
  MEMORY[0x23188A7E0](v1[4], v1[5]);
  MEMORY[0x23188A7E0](23328, 0xE200000000000000);
  sub_22B110514();
  MEMORY[0x23188A7E0](0x656767697274205DLL, 0xEF20746120646572);
  v2 = type metadata accessor for DNSServerOutagePayload(0);
  sub_22B110244();
  sub_22B0FF41C();
  v3 = sub_22B1105A4();
  MEMORY[0x23188A7E0](v3);

  MEMORY[0x23188A7E0](0x76656420726F6620, 0xEC00000020656369);
  MEMORY[0x23188A7E0](*v1, v1[1]);
  MEMORY[0x23188A7E0](0x656D6F68206E6920, 0xE900000000000020);
  MEMORY[0x23188A7E0](v1[2], v1[3]);
  result = 0;
  v5 = *(v0 + *(v2 + 40));
  if (v5)
  {
    sub_22B1104A4();

    v6 = MEMORY[0x23188A830](v5, MEMORY[0x277D837D0]);
    MEMORY[0x23188A7E0](v6);

    MEMORY[0x23188A7E0](62, 0xE100000000000000);
    MEMORY[0x23188A7E0](0xD000000000000019, 0x800000022B110F50);

    return 0;
  }

  return result;
}

unint64_t sub_22B0FF41C()
{
  result = qword_28106CD40;
  if (!qword_28106CD40)
  {
    sub_22B110244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106CD40);
  }

  return result;
}

uint64_t RadioLinkCongestionPayload.isSyntheticPayload.setter(char a1)
{
  result = type metadata accessor for RadioLinkCongestionPayload(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t NetworkMisconfigurationPayload.deviceID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NetworkMisconfigurationPayload.deviceID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NetworkMisconfigurationPayload.groupUUID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NetworkMisconfigurationPayload.groupUUID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NetworkMisconfigurationPayload.eventUUID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NetworkMisconfigurationPayload.eventUUID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_22B0FF860@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_22B110244();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22B0FF8FC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = sub_22B110244();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t NetworkMisconfigurationPayload.isSyntheticPayload.setter(char a1)
{
  result = type metadata accessor for NetworkMisconfigurationPayload(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t NetworkMisconfigurationPayload.sameNetwork.setter(char a1)
{
  result = type metadata accessor for NetworkMisconfigurationPayload(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t NetworkMisconfigurationPayload.doubleNAT.setter(char a1)
{
  result = type metadata accessor for NetworkMisconfigurationPayload(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t NetworkMisconfigurationPayload.p2pTrafficBlocked.setter(char a1)
{
  result = type metadata accessor for NetworkMisconfigurationPayload(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t sub_22B0FFC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11, char a12, char a13)
{
  v15 = *a7;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v15;
  v16 = type metadata accessor for NetworkMisconfigurationPayload(0);
  v17 = v16[8];
  v18 = sub_22B110244();
  result = (*(*(v18 - 8) + 32))(a9 + v17, a8, v18);
  *(a9 + v16[9]) = a10;
  *(a9 + v16[10]) = a11;
  *(a9 + v16[11]) = a12;
  *(a9 + v16[12]) = a13;
  return result;
}

uint64_t sub_22B0FFD08()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_22B0FFD38()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_22B0FFD68()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DNSServerOutagePayload.isSyntheticPayload.setter(char a1)
{
  result = type metadata accessor for DNSServerOutagePayload(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t DNSServerOutagePayload.unresponsiveServers.getter()
{
  type metadata accessor for DNSServerOutagePayload(0);
}

uint64_t DNSServerOutagePayload.unresponsiveServers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DNSServerOutagePayload(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22B100038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v13 = *a7;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v13;
  v14 = type metadata accessor for DNSServerOutagePayload(0);
  v15 = v14[8];
  v16 = sub_22B110244();
  result = (*(*(v16 - 8) + 32))(a9 + v15, a8, v16);
  *(a9 + v14[9]) = a10;
  *(a9 + v14[10]) = a11;
  return result;
}

uint64_t DHCPAcquisitionFailurePayload.isSyntheticPayload.setter(char a1)
{
  result = type metadata accessor for DHCPAcquisitionFailurePayload(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_22B1002B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t (*a11)(void))
{
  v13 = *a7;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v13;
  v14 = a11(0);
  v15 = *(v14 + 32);
  v16 = sub_22B110244();
  result = (*(*(v16 - 8) + 32))(a9 + v15, a8, v16);
  *(a9 + *(v14 + 36)) = a10;
  return result;
}

uint64_t InternetOutagePayload.isSyntheticPayload.setter(char a1)
{
  result = type metadata accessor for InternetOutagePayload(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t WiFiDisassociationPayload.isSyntheticPayload.setter(char a1)
{
  result = type metadata accessor for WiFiDisassociationPayload(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_22B100758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_22B110244();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22B100848(uint64_t a1)
{
  result = type metadata accessor for RadioLinkCongestionPayload(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NetworkMisconfigurationPayload(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for DNSServerOutagePayload(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for DHCPAcquisitionFailurePayload(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for InternetOutagePayload(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for WiFiDisassociationPayload(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_22B1009E8(uint64_t a1)
{
  sub_22B110244();
  if (v1 <= 0x3F)
  {
    sub_22B100A98();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22B100A98()
{
  if (!qword_28106C7D0)
  {
    v0 = sub_22B110444();
    if (!v1)
    {
      atomic_store(v0, &qword_28106C7D0);
    }
  }
}

void sub_22B100B10(uint64_t a1)
{
  sub_22B110244();
  if (v1 <= 0x3F)
  {
    sub_22B100BB8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22B100BB8(uint64_t a1)
{
  if (!qword_28106C7D8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B9240, &qword_22B111B00);
    v1 = sub_22B110444();
    if (!v2)
    {
      atomic_store(v1, qword_28106C7D8);
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22B110244();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22B110244();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B100E30(uint64_t a1)
{
  result = sub_22B110244();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22B101044(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22B1102B4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_22B1102A4();
}

uint64_t sub_22B1010E0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_22B1102B4();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_22B101158@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_22B1102B4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
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

id sub_22B101254()
{
  result = [objc_allocWithZone(type metadata accessor for XPCManager(0)) init];
  qword_28106D060 = result;
  return result;
}

uint64_t *sub_22B101288()
{
  if (qword_28106CE00 != -1)
  {
    swift_once();
  }

  return &qword_28106D060;
}

id sub_22B1012D8()
{
  if (qword_28106CE00 != -1)
  {
    swift_once();
  }

  v0 = qword_28106D060;

  return v0;
}

uint64_t sub_22B101390(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_xpcManagerDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_22B1013FC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_xpcManagerDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_22B10149C;
}

void sub_22B10149C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_22B10152C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22B100FA0();
  v3 = sub_22B1102B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_22B10159C()
{
  v1 = *&v0[OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_connection];
  if (!v1)
  {
    return 0;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  aBlock[4] = sub_22B106504;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B1016F4;
  aBlock[3] = &block_descriptor_69;
  v3 = _Block_copy(aBlock);
  v4 = v1;
  v5 = v0;

  v6 = [v4 remoteObjectProxyWithErrorHandler_];
  _Block_release(v3);

  sub_22B110454();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9300, &qword_22B1117A8);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void sub_22B1016F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_22B101774(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22B1017F4(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_22B0FE504(*v2, v2[1]);
  return v3;
}

uint64_t sub_22B101858(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_22B101774(v7, v8);
}

void sub_22B10193C(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol_];

  *a3 = v7;
}

id sub_22B1019A8()
{
  *&v0[OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_xpcManagerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_subscriptionIsActive] = 0;
  v1 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_logger;
  v2 = sub_22B100FA0();
  v3 = sub_22B1102B4();
  (*(*(v3 - 8) + 16))(&v0[v1], v2, v3);
  *&v0[OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_connection] = 0;
  v4 = &v0[OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_clientInterruptionHandler];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v0[OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_clientInvalidationHandler];
  v6 = type metadata accessor for XPCManager(0);
  *v5 = 0;
  v5[1] = 0;
  v9.receiver = v0;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_22B101AC8();

  return v7;
}

void sub_22B101AC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9250, &qword_22B111640);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v36 - v2;
  v4 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_connection;
  if (*&v0[OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_connection])
  {
    v37 = sub_22B110294();
    v5 = sub_22B110404();
    if (os_log_type_enabled(v37, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B0FD000, v37, v5, "XPC connection already established", v6, 2u);
      MEMORY[0x23188B000](v6, -1, -1);
    }

    v7 = v37;
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277D6B6A0] options:4096];
    if (qword_28106CE10 != -1)
    {
      swift_once();
    }

    [v8 setRemoteObjectInterface_];
    if (qword_28106CE20 != -1)
    {
      swift_once();
    }

    [v8 setExportedInterface_];
    [v8 setExportedObject_];
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = sub_22B10628C;
    v43 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_22B102480;
    v41 = &block_descriptor_47;
    v10 = _Block_copy(&aBlock);

    [v8 setInterruptionHandler_];
    _Block_release(v10);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = sub_22B1062AC;
    v43 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_22B102480;
    v41 = &block_descriptor_51;
    v12 = _Block_copy(&aBlock);

    [v8 setInvalidationHandler_];
    _Block_release(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9280, &qword_22B111770);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_22B111630;
    v14 = type metadata accessor for NDFEventXPCPayload(0);
    *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9288, &qword_22B111778);
    *(v13 + 32) = v14;
    v15 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v16 = sub_22B110354();

    v17 = [v15 initWithArray_];

    aBlock = 0;
    sub_22B1103C4();

    if (aBlock)
    {
      v18 = [v8 exportedInterface];
      if (v18)
      {
        v19 = v18;
        v20 = sub_22B1103B4();

        [v19 setClasses:v20 forSelector:sel_didReceiveEvent_ argumentIndex:0 ofReply:0];
      }

      else
      {
      }

      [v8 activate];
      v24 = *&v0[v4];
      *&v0[v4] = v8;
      v25 = v8;

      v26 = v25;
      v27 = v0;
      v28 = sub_22B110294();
      v29 = sub_22B110414();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        *(v30 + 4) = v26;
        *v31 = v8;
        v32 = v26;
        _os_log_impl(&dword_22B0FD000, v28, v29, "XPC connection %@ established", v30, 0xCu);
        sub_22B106694(v31, &qword_27D8B9258, &qword_22B111658);
        MEMORY[0x23188B000](v31, -1, -1);
        MEMORY[0x23188B000](v30, -1, -1);
      }

      v33 = sub_22B1103A4();
      (*(*(v33 - 8) + 56))(v3, 1, 1, v33);
      v34 = swift_allocObject();
      v34[2] = 0;
      v34[3] = 0;
      v34[4] = v27;
      v35 = v27;
      sub_22B1030E8(0, 0, v3, &unk_22B111780, v34);
    }

    else
    {
      v21 = sub_22B110294();
      v22 = sub_22B110404();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_22B0FD000, v21, v22, "Cannot convert list of allowed classes to NSSet representation", v23, 2u);
        MEMORY[0x23188B000](v23, -1, -1);
      }
    }
  }
}

void *sub_22B102184(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9250, &qword_22B111640);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_22B110294();
    v7 = sub_22B110414();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22B0FD000, v6, v7, "XPC connection interrupted, invoking internal and client-supplied handlers", v8, 2u);
      MEMORY[0x23188B000](v8, -1, -1);
    }

    v9 = MEMORY[0x277D85000];
    v10 = (*((*MEMORY[0x277D85000] & *v5) + 0x80))();
    if (v10)
    {
      v12 = v11;
      ObjectType = swift_getObjectType();
      v14 = *(v5 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_connection);
      v15 = *(v12 + 16);
      v16 = v14;
      v15(v14, ObjectType, v12);

      v10 = swift_unknownObjectRelease();
    }

    v17 = (*((*v9 & *v5) + 0xD8))(v10);
    if (v17)
    {
      v19 = v18;
      v20 = v17;
      v17();
      sub_22B101774(v20, v19);
    }

    v21 = sub_22B1103A4();
    (*(*(v21 - 8) + 56))(v3, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v5;
    sub_22B1030E8(0, 0, v3, &unk_22B111788, v22);
  }

  return result;
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

uint64_t sub_22B102480(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_22B1024C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B1025B0(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_22B110294();
  v5 = sub_22B1103F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_22B0FD000, v4, v5, "Received message %@ from server, informing delegate", v6, 0xCu);
    sub_22B106694(v7, &qword_27D8B9258, &qword_22B111658);
    MEMORY[0x23188B000](v7, -1, -1);
    MEMORY[0x23188B000](v6, -1, -1);
  }

  result = (*((*MEMORY[0x277D85000] & *v2) + 0x80))();
  if (result)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    (*(v11 + 24))(v3, ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22B1027A8(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_22B110294();
  v5 = sub_22B1103F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_22B0FD000, v4, v5, "Received event %@ from server, informing delegate", v6, 0xCu);
    sub_22B106694(v7, &qword_27D8B9258, &qword_22B111658);
    MEMORY[0x23188B000](v7, -1, -1);
    MEMORY[0x23188B000](v6, -1, -1);
  }

  result = (*((*MEMORY[0x277D85000] & *v2) + 0x80))();
  if (result)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    (*(v11 + 32))(v3, ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22B1029A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_22B102A34;

  return sub_22B102D68();
}

uint64_t sub_22B102A34()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B102B68, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22B102B68()
{
  v1 = *(v0 + 32);
  v2 = v1;
  v3 = sub_22B110294();
  v4 = sub_22B110404();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22B0FD000, v3, v4, "Error sending check-in to server: %@", v7, 0xCu);
    sub_22B106694(v8, &qword_27D8B9258, &qword_22B111658);
    MEMORY[0x23188B000](v8, -1, -1);
    MEMORY[0x23188B000](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22B102CD4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B1068B0;

  return sub_22B1029A0(v3, v4, v5, v2);
}

uint64_t sub_22B102D88(uint64_t a1)
{
  v2 = sub_22B110294();
  v3 = sub_22B110414();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B0FD000, v2, v3, "Sending a check-in message to server", v4, 2u);
    MEMORY[0x23188B000](v4, -1, -1);
  }

  v5 = sub_22B10159C();
  v1[19] = v5;
  if (v5)
  {
    v6 = v5;
    v1[2] = v1;
    v1[3] = sub_22B102FD8;
    v7 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9260, &qword_22B111668);
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_22B10344C;
    v1[13] = &block_descriptor;
    v1[14] = v7;
    [v6 ndfClientCheckInWithReply_];

    return MEMORY[0x282200938](v1 + 2);
  }

  else
  {
    v8 = sub_22B110294();
    v9 = sub_22B110404();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22B0FD000, v8, v9, "Cannot check in, no remote object", v10, 2u);
      MEMORY[0x23188B000](v10, -1, -1);
    }

    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_22B102FD8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_22B1068BC;
  }

  else
  {
    v2 = sub_22B1068B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B1030E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9250, &qword_22B111640);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_22B106624(a3, v25 - v10);
  v12 = sub_22B1103A4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22B106694(v11, &qword_27D8B9250, &qword_22B111640);
  }

  else
  {
    sub_22B110394();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22B110384();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22B1102F4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_22B106694(a3, &qword_27D8B9250, &qword_22B111640);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B106694(a3, &qword_27D8B9250, &qword_22B111640);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t type metadata accessor for XPCManager(uint64_t a1)
{
  result = qword_28106CDF0;
  if (!qword_28106CDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B10344C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B92F8, &unk_22B111798);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_22B103518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_22B1035AC;

  return sub_22B10384C();
}

uint64_t sub_22B1035AC()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B1036E0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22B1036E0()
{
  v1 = *(v0 + 32);
  v2 = v1;
  v3 = sub_22B110294();
  v4 = sub_22B110404();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22B0FD000, v3, v4, "Error sending unsubscription notification to server: %@", v7, 0xCu);
    sub_22B106694(v8, &qword_27D8B9258, &qword_22B111658);
    MEMORY[0x23188B000](v8, -1, -1);
    MEMORY[0x23188B000](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22B10386C(uint64_t a1)
{
  v2 = v1[18];
  if (*(v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_subscriptionIsActive) == 1)
  {
    *(v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_subscriptionIsActive) = 0;
    v3 = sub_22B110294();
    v4 = sub_22B110414();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22B0FD000, v3, v4, "Sending indication to server that there are no active subscriptions", v5, 2u);
      MEMORY[0x23188B000](v5, -1, -1);
    }

    v6 = sub_22B10159C();
    v1[19] = v6;
    if (v6)
    {
      v7 = v6;
      v1[2] = v1;
      v1[3] = sub_22B102FD8;
      v8 = swift_continuation_init();
      v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9260, &qword_22B111668);
      v1[10] = MEMORY[0x277D85DD0];
      v1[11] = 1107296256;
      v1[12] = sub_22B10344C;
      v1[13] = &block_descriptor_10;
      v1[14] = v8;
      [v7 ndfClientSubscriptionIsActive:0 reply:v1 + 10];

      return MEMORY[0x282200938](v1 + 2);
    }

    v9 = sub_22B110294();
    v10 = sub_22B110404();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Cannot note full unsubscription, no remote object";
      goto LABEL_12;
    }
  }

  else
  {
    v9 = sub_22B110294();
    v10 = sub_22B110414();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Note unsubscription called, but subscription is already inactive";
LABEL_12:
      _os_log_impl(&dword_22B0FD000, v9, v10, v12, v11, 2u);
      MEMORY[0x23188B000](v11, -1, -1);
    }
  }

  v13 = v1[1];

  return v13();
}

uint64_t sub_22B103B4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9250, &qword_22B111640);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_22B1103A4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v9 = v2;
  sub_22B1030E8(0, 0, v6, a2, v8);
}

uint64_t sub_22B103C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_22B103CD8;

  return sub_22B103F78();
}

uint64_t sub_22B103CD8()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B103E0C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22B103E0C()
{
  v1 = *(v0 + 32);
  v2 = v1;
  v3 = sub_22B110294();
  v4 = sub_22B110404();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22B0FD000, v3, v4, "Error sending subscription notification to server: %@", v7, 0xCu);
    sub_22B106694(v8, &qword_27D8B9258, &qword_22B111658);
    MEMORY[0x23188B000](v8, -1, -1);
    MEMORY[0x23188B000](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22B103F98(uint64_t a1)
{
  v2 = v1[18];
  if (*(v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_subscriptionIsActive))
  {
    v3 = sub_22B110294();
    v4 = sub_22B110414();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Note subscription called, but subscription is already active";
LABEL_12:
      _os_log_impl(&dword_22B0FD000, v3, v4, v6, v5, 2u);
      MEMORY[0x23188B000](v5, -1, -1);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  *(v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_subscriptionIsActive) = 1;
  v7 = sub_22B110294();
  v8 = sub_22B110414();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22B0FD000, v7, v8, "Sending indication to symptomsd that there is an active subscription", v9, 2u);
    MEMORY[0x23188B000](v9, -1, -1);
  }

  v10 = sub_22B10159C();
  v1[19] = v10;
  if (!v10)
  {
    v3 = sub_22B110294();
    v4 = sub_22B110404();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Cannot note subscription, no remote object";
      goto LABEL_12;
    }

LABEL_13:

    v13 = v1[1];

    return v13();
  }

  v11 = v10;
  v1[2] = v1;
  v1[3] = sub_22B104258;
  v12 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9260, &qword_22B111668);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_22B10344C;
  v1[13] = &block_descriptor_18;
  v1[14] = v12;
  [v11 ndfClientSubscriptionIsActive:1 reply:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_22B104258()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_22B1043CC;
  }

  else
  {
    v2 = sub_22B104368;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B104368()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B1043CC()
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B104440(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x2822009F8](sub_22B104460, 0, 0);
}

uint64_t sub_22B104460(uint64_t a1)
{
  v2 = sub_22B110294();
  v3 = sub_22B110414();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B0FD000, v2, v3, "Sending a ping to discovered endpoints", v4, 2u);
    MEMORY[0x23188B000](v4, -1, -1);
  }

  v5 = sub_22B10159C();
  v1[22] = v5;
  if (v5)
  {
    v6 = v5;
    v7 = v1[20];
    v1[2] = v1;
    v1[7] = v1 + 18;
    v1[3] = sub_22B1046C8;
    v8 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9270, &qword_22B1116A8);
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_22B1048B4;
    v1[13] = &block_descriptor_22;
    v1[14] = v8;
    [v6 pingEndpoints:v7 reply:v1 + 10];

    return MEMORY[0x282200938](v1 + 2);
  }

  else
  {
    v9 = sub_22B110294();
    v10 = sub_22B110404();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22B0FD000, v9, v10, "Cannot send ping, no remote object", v11, 2u);
      MEMORY[0x23188B000](v11, -1, -1);
    }

    v12 = v1[1];

    return v12(0, 0);
  }
}

uint64_t sub_22B1046C8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_22B104840;
  }

  else
  {
    v2 = sub_22B1047D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B1047D8()
{
  swift_unknownObjectRelease();
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_22B104840()
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B1048B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B92F8, &unk_22B111798);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_22B1102D4();
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v11 = *(*(v5 + 64) + 40);
    *v11 = v9;
    v11[1] = v10;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_22B104998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  return MEMORY[0x2822009F8](sub_22B1049BC, 0, 0);
}

uint64_t sub_22B1049BC()
{
  v18 = v0;

  v1 = sub_22B110294();
  v2 = sub_22B110414();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[20];
    v3 = v0[21];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_22B105BD4(v4, v3, &v17);
    _os_log_impl(&dword_22B0FD000, v1, v2, "Sending message %s to discovered endpoints", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23188B000](v6, -1, -1);
    MEMORY[0x23188B000](v5, -1, -1);
  }

  v7 = sub_22B10159C();
  v0[24] = v7;
  if (v7)
  {
    v8 = v7;
    v9 = v0[22];
    v10 = sub_22B1102C4();
    v0[25] = v10;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_22B104CB0;
    v11 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9270, &qword_22B1116A8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22B1048B4;
    v0[13] = &block_descriptor_26;
    v0[14] = v11;
    [v8 sendMessage:v10 toEndpoints:v9 reply:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v12 = sub_22B110294();
    v13 = sub_22B110404();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22B0FD000, v12, v13, "Cannot send message, no remote object", v14, 2u);
      MEMORY[0x23188B000](v14, -1, -1);
    }

    v15 = v0[1];

    return v15(0, 0);
  }
}

uint64_t sub_22B104CB0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_22B104E3C;
  }

  else
  {
    v2 = sub_22B104DC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B104DC0()
{
  v1 = v0[25];
  swift_unknownObjectRelease();
  v3 = v0[18];
  v2 = v0[19];

  v4 = v0[1];

  return v4(v3, v2);
}

uint64_t sub_22B104E3C()
{
  v1 = *(v0 + 200);
  swift_willThrow();
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B104ED8(uint64_t a1)
{
  v2 = sub_22B110294();
  v3 = sub_22B110414();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B0FD000, v2, v3, "Sending signal to symptomsd to send an arbitrary payload to symptomsd-distributed", v4, 2u);
    MEMORY[0x23188B000](v4, -1, -1);
  }

  v5 = sub_22B10159C();
  v1[19] = v5;
  if (v5)
  {
    v6 = v5;
    v1[2] = v1;
    v1[7] = v1 + 20;
    v1[3] = sub_22B105130;
    v7 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9278, &qword_22B1116C0);
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_22B105274;
    v1[13] = &block_descriptor_30;
    v1[14] = v7;
    [v6 sendPayloadToDaemonWithReply_];

    return MEMORY[0x282200938](v1 + 2);
  }

  else
  {
    v8 = sub_22B110294();
    v9 = sub_22B110404();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22B0FD000, v8, v9, "Cannot send payload, no remote object", v10, 2u);
      MEMORY[0x23188B000](v10, -1, -1);
    }

    v11 = v1[1];

    return v11(0);
  }
}

uint64_t sub_22B105130()
{

  return MEMORY[0x2822009F8](sub_22B105210, 0, 0);
}

uint64_t sub_22B105210()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 160);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22B105274(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_22B1052D0(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_22B1052F4, 0, 0);
}

uint64_t sub_22B1052F4(uint64_t a1)
{
  v2 = v1[18];
  v3 = sub_22B110294();
  v4 = sub_22B110414();
  v5 = os_log_type_enabled(v3, v4);
  if (v2 < 1)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Sending signal to symptomsd to stop periodically sending payloads";
    v10 = v4;
    v11 = v3;
    v12 = v8;
    v13 = 2;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v7 = v1[18];
    v6 = v1[19];
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v6;
    v9 = "Sending signal to symptomsd to periodically send payloads to symptomsd-distributed with interval %ld and leeway %ld seconds";
    v10 = v4;
    v11 = v3;
    v12 = v8;
    v13 = 22;
  }

  _os_log_impl(&dword_22B0FD000, v11, v10, v9, v12, v13);
  MEMORY[0x23188B000](v8, -1, -1);
LABEL_7:

  v14 = sub_22B10159C();
  v1[21] = v14;
  if (v14)
  {
    v15 = v14;
    v17 = v1[18];
    v16 = v1[19];
    v1[2] = v1;
    v1[7] = v1 + 22;
    v1[3] = sub_22B1055C4;
    v18 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9278, &qword_22B1116C0);
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_22B105274;
    v1[13] = &block_descriptor_33;
    v1[14] = v18;
    [v15 triggerSendPayloadToDaemonWithInterval:v17 leeway:v16 reply:v1 + 10];

    return MEMORY[0x282200938](v1 + 2);
  }

  else
  {
    v19 = sub_22B110294();
    v20 = sub_22B110404();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22B0FD000, v19, v20, "Cannot trigger payload, no remote object", v21, 2u);
      MEMORY[0x23188B000](v21, -1, -1);
    }

    v22 = v1[1];

    return v22(0);
  }
}

uint64_t sub_22B1055C4()
{

  return MEMORY[0x2822009F8](sub_22B1056A4, 0, 0);
}

uint64_t sub_22B1056A4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 176);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22B105708(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B105800;

  return v6(a1);
}

uint64_t sub_22B105800()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B105908(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_22B1059B8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B1068B0;

  return sub_22B103518(v3, v4, v5, v2);
}

uint64_t sub_22B105A4C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B105AE0;

  return sub_22B103C44(v3, v4, v5, v2);
}

uint64_t sub_22B105AE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_22B105BD4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22B105CA0(v11, 0, 0, 1, a1, a2);
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
    sub_22B105908(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22B105CA0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22B105DAC(a5, a6);
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
    result = sub_22B1104B4();
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

void *sub_22B105DAC(uint64_t a1, unint64_t a2)
{
  v3 = sub_22B105DF8(a1, a2);
  sub_22B105F28(&unk_283EF4550);
  return v3;
}

void *sub_22B105DF8(uint64_t a1, unint64_t a2)
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

  v6 = sub_22B106014(v5, 0);
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

  result = sub_22B1104B4();
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
        v10 = sub_22B110324();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22B106014(v10, 0);
        result = sub_22B110494();
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

uint64_t sub_22B105F28(uint64_t result)
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

  result = sub_22B106088(result, v11, 1, v3);
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

void *sub_22B106014(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B92F0, &qword_22B111790);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22B106088(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B92F0, &qword_22B111790);
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

uint64_t sub_22B1061D4(uint64_t a1)
{
  result = sub_22B1102B4();
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

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22B1062AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_22B110294();
    v3 = sub_22B110414();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_22B0FD000, v2, v3, "XPC connection invalidated, invoking internal and client-supplied handlers", v4, 2u);
      MEMORY[0x23188B000](v4, -1, -1);
    }

    v5 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v1) + 0x80))())
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      v9 = *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_connection);
      v10 = *(v7 + 8);
      v11 = v9;
      v10(v9, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    v12 = (*((*v5 & *v1) + 0xF0))();
    if (v12)
    {
      v14 = v13;
      v15 = v12;
      v12();
      sub_22B101774(v15, v14);
    }

    v16 = *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_connection);
    *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics10XPCManager_connection) = 0;
  }
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_22B106504(void *a1)
{
  v2 = a1;
  oslog = sub_22B110294();
  v3 = sub_22B110404();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = a1;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v7;
    *v5 = v7;
    _os_log_impl(&dword_22B0FD000, oslog, v3, "Failed to retrieve remote object: %@", v4, 0xCu);
    sub_22B106694(v5, &qword_27D8B9258, &qword_22B111658);
    MEMORY[0x23188B000](v5, -1, -1);
    MEMORY[0x23188B000](v4, -1, -1);
  }
}

uint64_t sub_22B106624(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9250, &qword_22B111640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B106694(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22B1066F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B1068B0;

  return sub_22B105708(a1, v4);
}

uint64_t sub_22B1067AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B105AE0;

  return sub_22B105708(a1, v4);
}

id sub_22B1068C8()
{
  v0 = *sub_22B101288();

  return v0;
}

uint64_t sub_22B1068FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22B1010BC();
  v3 = sub_22B1102B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_22B106978()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9308, &unk_22B1117E0);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_22B1069B0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 168))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_22B10B6F0;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_22B106A40(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22B10B694;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 176);
  sub_22B0FE504(v3, v4);
  return v7(v6, v5);
}

uint64_t (*sub_22B106AF8())()
{
  v1 = *(v0 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_22B10A6D0(&v4);
  os_unfair_lock_unlock(v1 + 4);
  if (!v4)
  {
    return 0;
  }

  v3 = v4;
  *(swift_allocObject() + 16) = v3;
  return sub_22B10A6E8;
}

uint64_t sub_22B106BB4@<X0>(uint64_t (**a1)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **(v1 + 16)) + 0xD8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_22B10B6F0;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
  a1[1] = result;
  return result;
}

uint64_t sub_22B106C5C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock);
  os_unfair_lock_lock(v5 + 4);
  sub_22B10A728();
  os_unfair_lock_unlock(v5 + 4);
  return sub_22B101774(a1, a2);
}

uint64_t (*sub_22B106CEC(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_22B106AF8();
  a1[1] = v3;
  return sub_22B106D34;
}

uint64_t sub_22B106D34(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = *(a1[2] + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock);
  if (a2)
  {
    sub_22B0FE504(v3, v2);
    os_unfair_lock_lock(v4 + 4);
    sub_22B10B6D8();
    os_unfair_lock_unlock(v4 + 4);
    sub_22B101774(v3, v2);
  }

  else
  {
    os_unfair_lock_lock(v4 + 4);
    sub_22B10B6D8();
    os_unfair_lock_unlock(v4 + 4);
  }

  return sub_22B101774(v3, v2);
}

uint64_t sub_22B106E30@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 192))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_22B10B640;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_22B106EC0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22B10B694;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 200);
  sub_22B0FE504(v3, v4);
  return v7(v6, v5);
}

uint64_t (*sub_22B106F78())()
{
  v1 = *(v0 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_22B10B66C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  if (!v4)
  {
    return 0;
  }

  v3 = v4;
  *(swift_allocObject() + 16) = v3;
  return sub_22B10B694;
}

uint64_t sub_22B107034(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock);
  os_unfair_lock_lock(v5 + 4);
  sub_22B10B6D8();
  os_unfair_lock_unlock(v5 + 4);
  return sub_22B101774(a1, a2);
}

uint64_t (*sub_22B1070C4(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_22B106F78();
  a1[1] = v3;
  return sub_22B10710C;
}

uint64_t sub_22B10710C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = *(a1[2] + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock);
  if (a2)
  {
    sub_22B0FE504(v3, v2);
    os_unfair_lock_lock(v4 + 4);
    sub_22B10B6D8();
    os_unfair_lock_unlock(v4 + 4);
    sub_22B101774(v3, v2);
  }

  else
  {
    os_unfair_lock_lock(v4 + 4);
    sub_22B10B6D8();
    os_unfair_lock_unlock(v4 + 4);
  }

  return sub_22B101774(v3, v2);
}

uint64_t SymptomNetworkDiagnosticsManager.__allocating_init(withDelegate:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_22B10A964(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t SymptomNetworkDiagnosticsManager.init(withDelegate:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_22B10A964(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

void sub_22B107298(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock);
  os_unfair_lock_lock(v3 + 4);
  sub_22B10B6D8();
  os_unfair_lock_unlock(v3 + 4);

  v4 = sub_22B110294();
  v5 = sub_22B110414();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    *v6 = 136315394;
    v8 = MEMORY[0x23188A830](a1, &type metadata for NetworkDiagnosticsEvent);
    v10 = sub_22B105BD4(v8, v9, v16);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    swift_beginAccess();
    sub_22B10AB74();

    v11 = sub_22B1103D4();
    v13 = v12;

    v14 = sub_22B105BD4(v11, v13, v16);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_22B0FD000, v4, v5, "Subscribed to %s, all subscriptions: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188B000](v7, -1, -1);
    MEMORY[0x23188B000](v6, -1, -1);
  }

  MEMORY[0x28223BE20](v15);
  os_unfair_lock_lock(v3 + 4);
  sub_22B10B6D8();
  os_unfair_lock_unlock(v3 + 4);
}

void sub_22B1074F0(uint64_t a1)
{
  v2 = sub_22B110244();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B9330, &qword_22B111AB8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v43 = type metadata accessor for NetworkDiagnosticsPayload(0);
  v9 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_subscribedEvents;
  swift_beginAccess();
  v12 = *(a1 + v11);
  v13 = v12 + 56;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 56);
  v38 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_logger;
  v17 = (v14 + 63) >> 6;
  v41 = (v9 + 48);
  v42 = (v3 + 8);
  v18 = v8;
  v44 = v12;
  swift_bridgeObjectRetain_n();
  v19 = 0;
  *&v20 = 136315138;
  v34 = v20;
  v35 = v2;
  v36 = a1;
  v40 = v8;
  if (v16)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v22 >= v17)
    {

      return;
    }

    v16 = *(v13 + 8 * v22);
    ++v19;
    if (v16)
    {
      while (1)
      {
        v23 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v24 = *(*(v44 + 48) + (v23 | (v22 << 6)));
        LOBYTE(v46) = v24;
        sub_22B110234();
        sub_22B107934(&v46, v5, v18);
        (*v42)(v5, v2);
        if ((*v41)(v18, 1, v43) == 1)
        {
          sub_22B106694(v18, &unk_27D8B9330, &qword_22B111AB8);
          v25 = sub_22B110294();
          v26 = sub_22B110404();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v46 = v37;
            *v27 = v34;
            v45 = v24;
            v28 = sub_22B1102E4();
            v30 = v5;
            v31 = sub_22B105BD4(v28, v29, &v46);

            *(v27 + 4) = v31;
            v5 = v30;
            _os_log_impl(&dword_22B0FD000, v25, v26, "Failed to synthesize payload for event: %s", v27, 0xCu);
            v32 = v37;
            __swift_destroy_boxed_opaque_existential_0(v37);
            MEMORY[0x23188B000](v32, -1, -1);
            v33 = v27;
            v2 = v35;
            MEMORY[0x23188B000](v33, -1, -1);
          }

          v19 = v22;
          v18 = v40;
          if (!v16)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v21 = v39;
          sub_22B10ADBC(v18, v39, type metadata accessor for NetworkDiagnosticsPayload);
          sub_22B1082E8(v21);
          sub_22B10AC30(v21, type metadata accessor for NetworkDiagnosticsPayload);
          v19 = v22;
          if (!v16)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v22 = v19;
      }
    }
  }

  __break(1u);
}

uint64_t sub_22B107934@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v5 = type metadata accessor for WiFiDisassociationPayload(0);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InternetOutagePayload(0);
  MEMORY[0x28223BE20](v7 - 8);
  v72 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DHCPAcquisitionFailurePayload(0);
  MEMORY[0x28223BE20](v9 - 8);
  v71 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DNSServerOutagePayload(0);
  MEMORY[0x28223BE20](v70);
  v73 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for NetworkMisconfigurationPayload(0);
  MEMORY[0x28223BE20](v69);
  v68 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RadioLinkCongestionPayload(0);
  MEMORY[0x28223BE20](v13 - 8);
  v67 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_22B110284();
  v15 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22B110244();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v78 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v67 - v22;
  v82 = *a1;
  v24 = *(v19 + 16);
  v79 = a2;
  v76 = v24;
  v77 = v19 + 16;
  v24(&v67 - v22, a2, v18);
  v25 = sub_22B110294();
  v26 = sub_22B1103E4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v84 = v75;
    *v27 = 136315394;
    v83 = v82;
    v28 = sub_22B1102E4();
    v30 = sub_22B105BD4(v28, v29, &v84);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    sub_22B0FF41C();
    v31 = sub_22B1105A4();
    v33 = v32;
    v34 = v23;
    v35 = v18;
    (*(v19 + 8))(v34, v18);
    v36 = sub_22B105BD4(v31, v33, &v84);

    *(v27 + 14) = v36;
    _os_log_impl(&dword_22B0FD000, v25, v26, "Synthetically generating event %s at %s", v27, 0x16u);
    v37 = v75;
    swift_arrayDestroy();
    MEMORY[0x23188B000](v37, -1, -1);
    MEMORY[0x23188B000](v27, -1, -1);
  }

  else
  {

    v38 = v23;
    v35 = v18;
    (*(v19 + 8))(v38, v18);
  }

  sub_22B110274();
  v39 = sub_22B110254();
  v75 = v40;
  v41 = *(v15 + 8);
  v42 = v81;
  v41(v17, v81);
  sub_22B110274();
  v43 = sub_22B110254();
  v45 = v44;
  v41(v17, v42);
  sub_22B110274();
  v46 = sub_22B110254();
  v48 = v47;
  v41(v17, v42);
  if (v82 > 2)
  {
    if (v82 == 3)
    {
      v88 = 1;
      v57 = v78;
      v76(v78, v79, v35);
      v58 = v71;
      sub_22B10027C(v43, v45, v39, v75, v46, v48, &v88, v57, v71, 1);
      v51 = v80;
      sub_22B10ADBC(v58, v80, type metadata accessor for DHCPAcquisitionFailurePayload);
      v52 = type metadata accessor for NetworkDiagnosticsPayload(0);
    }

    else
    {
      if (v82 == 4)
      {
        v89 = 1;
        v53 = v78;
        v76(v78, v79, v35);
        v54 = v72;
        sub_22B100520(v43, v45, v39, v75, v46, v48, &v89, v53, v72, 1);
        v51 = v80;
        sub_22B10ADBC(v54, v80, type metadata accessor for InternetOutagePayload);
      }

      else
      {
        v90 = 1;
        v65 = v78;
        v76(v78, v79, v35);
        v66 = v74;
        sub_22B10071C(v43, v45, v39, v75, v46, v48, &v90, v65, v74, 1);
        v51 = v80;
        sub_22B10ADBC(v66, v80, type metadata accessor for WiFiDisassociationPayload);
      }

      v52 = type metadata accessor for NetworkDiagnosticsPayload(0);
    }
  }

  else if (v82)
  {
    if (v82 != 1)
    {
      v87 = 1;
      v59 = v78;
      v76(v78, v79, v35);
      v60 = v73;
      sub_22B100038(v43, v45, v39, v75, v46, v48, &v87, v59, v73, 1, 0);
      v61 = *(v70 + 40);

      *(v60 + v61) = &unk_283EF48C0;
      v62 = v80;
      sub_22B10ABC8(v60, v80, type metadata accessor for DNSServerOutagePayload);
      v63 = type metadata accessor for NetworkDiagnosticsPayload(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
      return sub_22B10AC30(v60, type metadata accessor for DNSServerOutagePayload);
    }

    v86 = 1;
    v49 = v78;
    v76(v78, v79, v35);
    v50 = v68;
    sub_22B0FFC3C(v43, v45, v39, v75, v46, v48, &v86, v49, v68, 1, 2, 2, 2);
    *(v50 + *(v69 + 40)) = 0;
    v51 = v80;
    sub_22B10ADBC(v50, v80, type metadata accessor for NetworkMisconfigurationPayload);
    v52 = type metadata accessor for NetworkDiagnosticsPayload(0);
  }

  else
  {
    v85 = 1;
    v55 = v78;
    v76(v78, v79, v35);
    v56 = v67;
    sub_22B0FF610(v43, v45, v39, v75, v46, v48, &v85, v55, v67, 1);
    v51 = v80;
    sub_22B10ADBC(v56, v80, type metadata accessor for RadioLinkCongestionPayload);
    v52 = type metadata accessor for NetworkDiagnosticsPayload(0);
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
}

uint64_t sub_22B1082E8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NetworkDiagnosticsPayload(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B10ABC8(a1, v6, type metadata accessor for NetworkDiagnosticsPayload);
  v7 = sub_22B110294();
  v8 = sub_22B110414();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    v11 = NetworkDiagnosticsPayload.description.getter();
    v13 = v12;
    sub_22B10AC30(v6, type metadata accessor for NetworkDiagnosticsPayload);
    v14 = sub_22B105BD4(v11, v13, &v20);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_22B0FD000, v7, v8, "Delivering event %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23188B000](v10, -1, -1);
    MEMORY[0x23188B000](v9, -1, -1);
  }

  else
  {

    sub_22B10AC30(v6, type metadata accessor for NetworkDiagnosticsPayload);
  }

  v15 = v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_clientDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(a1, ObjectType, v17);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_22B108500(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock);
  os_unfair_lock_lock(v3 + 4);
  sub_22B10B6D8();
  os_unfair_lock_unlock(v3 + 4);

  v4 = sub_22B110294();
  v5 = sub_22B110414();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15[0] = v7;
    *v6 = 136315394;
    v8 = MEMORY[0x23188A830](a1, &type metadata for NetworkDiagnosticsEvent);
    v10 = sub_22B105BD4(v8, v9, v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    swift_beginAccess();
    sub_22B10AB74();

    v11 = sub_22B1103D4();
    v13 = v12;

    v14 = sub_22B105BD4(v11, v13, v15);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_22B0FD000, v4, v5, "Unsubscribed from %s, all subscriptions: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188B000](v7, -1, -1);
    MEMORY[0x23188B000](v6, -1, -1);
  }
}

uint64_t SymptomNetworkDiagnosticsManager.deinit()
{
  v1 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_logger;
  v2 = sub_22B1102B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_22B103424(v0 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_clientDelegate);
  return v0;
}

uint64_t SymptomNetworkDiagnosticsManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_logger;
  v2 = sub_22B1102B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_22B103424(v0 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_clientDelegate);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

SymptomNetworkDiagnostics::NetworkDiagnosticsEvent_optional __swiftcall NetworkDiagnosticsEvent.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 6)
  {
    v2 = 6;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

SymptomNetworkDiagnostics::NetworkDiagnosticsEventContext_optional __swiftcall NetworkDiagnosticsEventContext.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22B1088DC()
{
  sub_22B1105D4();
  sub_22B1105E4();
  return sub_22B1105F4();
}

uint64_t sub_22B108954(uint64_t a1)
{
  sub_22B1105D4();
  sub_22B1105E4();
  return sub_22B1105F4();
}

void sub_22B1089AC(void *a1)
{
  v1 = a1;
  oslog = sub_22B110294();
  v2 = sub_22B1103E4();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    *(v3 + 4) = v1;
    *v4 = v1;
    v5 = v1;
    _os_log_impl(&dword_22B0FD000, oslog, v2, "Received message: %@ from server", v3, 0xCu);
    sub_22B106694(v4, &qword_27D8B9258, &qword_22B111658);
    MEMORY[0x23188B000](v4, -1, -1);
    MEMORY[0x23188B000](v3, -1, -1);
  }
}

void sub_22B108AD0(void *a1, const char *a2, ...)
{
  v4 = a1;
  oslog = sub_22B110294();
  v5 = sub_22B110414();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v4;
    *v7 = a1;
    v8 = v4;
    _os_log_impl(&dword_22B0FD000, oslog, v5, a2, v6, 0xCu);
    sub_22B106694(v7, &qword_27D8B9258, &qword_22B111658);
    MEMORY[0x23188B000](v7, -1, -1);
    MEMORY[0x23188B000](v6, -1, -1);
  }
}

uint64_t sub_22B108BE8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v83 = a2;
  v3 = type metadata accessor for WiFiDisassociationPayload(0);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InternetOutagePayload(0);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DHCPAcquisitionFailurePayload(0);
  MEMORY[0x28223BE20](v7 - 8);
  v73 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DNSServerOutagePayload(0);
  MEMORY[0x28223BE20](v71);
  v76 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for NetworkMisconfigurationPayload(0);
  MEMORY[0x28223BE20](v72);
  v74 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RadioLinkCongestionPayload(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_22B110244();
  v14 = *(v84 - 8);
  v15 = MEMORY[0x28223BE20](v84);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v71 - v18;
  v20 = sub_22B110284();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B9340, &qword_22B1117F0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v71 - v25;
  v80 = sub_22B110254();
  v82 = v27;
  sub_22B10AD4C(a1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_groupUUID, v26);
  if ((*(v21 + 48))(v26, 1, v20) == 1)
  {
    sub_22B106694(v26, &unk_27D8B9340, &qword_22B1117F0);
    sub_22B110274();
    v26 = v23;
  }

  v79 = sub_22B110254();
  v81 = v28;
  (*(v21 + 8))(v26, v20);
  v78 = sub_22B110254();
  v30 = v29;
  v90[2] = *(a1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventContext);
  v31 = NDFEventXPCPayload.NDFEventContext.rawValue.getter();
  if (v31 >= 4)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  v33 = *(v14 + 16);
  v33(v19, a1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_timestamp, v84);
  v34 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventType;
  v35 = *(a1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventType);
  if (v35 > 2)
  {
    if (*(a1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventType) <= 4u)
    {
      if (v35 == 3)
      {
        v87 = v32;
        v36 = v84;
        v33(v17, v19, v84);
        v37 = v76;
        v38 = sub_22B100038(v80, v82, v79, v81, v78, v30, &v87, v17, v76, 0, 0);
        v39 = (*((*MEMORY[0x277D85000] & *a1) + 0xA0))(v38);
        (*(v14 + 8))(v19, v36);
        v40 = *(v71 + 40);

        *(v37 + v40) = v39;
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9310, &qword_22B1117F8);
        v42 = *(v41 + 48);
        v43 = v83;
        *v83 = 2;
        sub_22B10ABC8(v37, &v43[v42], type metadata accessor for DNSServerOutagePayload);
        type metadata accessor for NetworkDiagnosticsPayload(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v41 - 8) + 56))(v43, 0, 1, v41);
        return sub_22B10AC30(v37, type metadata accessor for DNSServerOutagePayload);
      }

      v88 = v32;
      v63 = v84;
      v33(v17, v19, v84);
      v64 = v73;
      sub_22B10027C(v80, v82, v79, v81, v78, v30, &v88, v17, v73, 0);
      (*(v14 + 8))(v19, v63);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9310, &qword_22B1117F8);
      v65 = *(v46 + 48);
      v48 = v83;
      *v83 = 3;
      sub_22B10ADBC(v64, &v48[v65], type metadata accessor for DHCPAcquisitionFailurePayload);
      type metadata accessor for NetworkDiagnosticsPayload(0);
      goto LABEL_21;
    }

    if (v35 == 5)
    {
      v89 = v32;
      v49 = v84;
      v33(v17, v19, v84);
      v50 = v75;
      sub_22B100520(v80, v82, v79, v81, v78, v30, &v89, v17, v75, 0);
      (*(v14 + 8))(v19, v49);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9310, &qword_22B1117F8);
      v51 = *(v46 + 48);
      v48 = v83;
      *v83 = 4;
      sub_22B10ADBC(v50, &v48[v51], type metadata accessor for InternetOutagePayload);
    }

    else
    {
      v90[0] = v32;
      v66 = v84;
      v33(v17, v19, v84);
      v67 = v77;
      sub_22B10071C(v80, v82, v79, v81, v78, v30, v90, v17, v77, 0);
      (*(v14 + 8))(v19, v66);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9310, &qword_22B1117F8);
      v68 = *(v46 + 48);
      v48 = v83;
      *v83 = 5;
      sub_22B10ADBC(v67, &v48[v68], type metadata accessor for WiFiDisassociationPayload);
    }

LABEL_13:
    type metadata accessor for NetworkDiagnosticsPayload(0);
LABEL_21:
    swift_storeEnumTagMultiPayload();
    return (*(*(v46 - 8) + 56))(v48, 0, 1, v46);
  }

  if (*(a1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventType))
  {
    if (v35 == 1)
    {
      v85 = v32;
      v45 = v84;
      v33(v17, v19, v84);
      sub_22B0FF610(v80, v82, v79, v81, v78, v30, &v85, v17, v13, 0);
      (*(v14 + 8))(v19, v45);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9310, &qword_22B1117F8);
      v47 = *(v46 + 48);
      v48 = v83;
      *v83 = 0;
      sub_22B10ADBC(v13, &v48[v47], type metadata accessor for RadioLinkCongestionPayload);
    }

    else
    {
      v86 = v32;
      v56 = v84;
      v33(v17, v19, v84);
      v57 = v74;
      v58 = sub_22B0FFC3C(v80, v82, v79, v81, v78, v30, &v86, v17, v74, 0, 2, 2, 2);
      v59 = MEMORY[0x277D85000];
      v60 = (*((*MEMORY[0x277D85000] & *a1) + 0xB8))(v58);
      v61 = v72;
      *(v57 + *(v72 + 40)) = v60;
      *(v57 + *(v61 + 44)) = (*((*v59 & *a1) + 0xD0))();
      LOBYTE(v59) = (*((*v59 & *a1) + 0xE8))();
      (*(v14 + 8))(v19, v56);
      *(v57 + *(v61 + 48)) = v59;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9310, &qword_22B1117F8);
      v62 = *(v46 + 48);
      v48 = v83;
      *v83 = 1;
      sub_22B10ADBC(v57, &v48[v62], type metadata accessor for NetworkMisconfigurationPayload);
    }

    goto LABEL_13;
  }

  v52 = a1;
  v53 = sub_22B110294();
  v54 = sub_22B110404();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 67109120;
    v90[1] = *(a1 + v34);
    *(v55 + 4) = NDFEventXPCPayload.NDFEventType.rawValue.getter();

    _os_log_impl(&dword_22B0FD000, v53, v54, "Unknown event type: %u", v55, 8u);
    MEMORY[0x23188B000](v55, -1, -1);
  }

  else
  {

    v53 = v52;
  }

  v69 = v83;

  (*(v14 + 8))(v19, v84);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9310, &qword_22B1117F8);
  return (*(*(v70 - 8) + 56))(v69, 1, 1, v70);
}

void sub_22B1097E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9318, &qword_22B111800);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for NetworkDiagnosticsPayload(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B108BE8(a1, v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9310, &qword_22B1117F8);
  if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
  {
    sub_22B106694(v5, &qword_27D8B9318, &qword_22B111800);
    v10 = a1;
    v11 = sub_22B110294();
    v12 = sub_22B110404();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 136315138;
      v15 = [v10 description];
      v16 = sub_22B1102D4();
      v18 = v17;

      v19 = sub_22B105BD4(v16, v18, &v26);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_22B0FD000, v11, v12, "Error extracting payload from event: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x23188B000](v14, -1, -1);
      MEMORY[0x23188B000](v13, -1, -1);
    }
  }

  else
  {
    v20 = *v5;
    v21 = sub_22B10ADBC(&v5[*(v9 + 48)], v8, type metadata accessor for NetworkDiagnosticsPayload);
    v22 = *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock);
    v23 = MEMORY[0x28223BE20](v21);
    *(&v25 - 4) = v1;
    *(&v25 - 24) = v20;
    *(&v25 - 2) = v8;
    *(&v25 - 1) = a1;
    MEMORY[0x28223BE20](v23);
    *(&v25 - 2) = sub_22B10AE24;
    *(&v25 - 1) = v24;
    os_unfair_lock_lock(v22 + 4);
    sub_22B10B6D8();
    os_unfair_lock_unlock(v22 + 4);
    sub_22B10AC30(v8, type metadata accessor for NetworkDiagnosticsPayload);
  }
}

BOOL sub_22B109B08(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_22B1105D4();
  sub_22B1105E4();
  v4 = sub_22B1105F4();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_22B109C1C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_22B1105D4();
  sub_22B1105E4();
  v6 = sub_22B1105F4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_22B109F64(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22B109D14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9328, &unk_22B111AA8);
  result = sub_22B110484();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_22B1105D4();
      sub_22B1105E4();
      result = sub_22B1105F4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22B109F64(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22B109D14(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22B10A0BC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22B10A1FC(v5 + 1);
  }

  v8 = *v3;
  sub_22B1105D4();
  sub_22B1105E4();
  result = sub_22B1105F4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22B1105C4();
  __break(1u);
  return result;
}

void *sub_22B10A0BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9328, &unk_22B111AA8);
  v2 = *v0;
  v3 = sub_22B110474();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

uint64_t sub_22B10A1FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9328, &unk_22B111AA8);
  result = sub_22B110484();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_22B1105D4();
      sub_22B1105E4();
      result = sub_22B1105F4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

uint64_t sub_22B10A41C@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = a1;
  v5 = *v2;
  sub_22B1105D4();
  sub_22B1105E4();
  result = sub_22B1105F4();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != v4)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    v12 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22B10A0BC();
      v11 = v12;
    }

    *a2 = *(*(v11 + 48) + v8);
    result = sub_22B10A528(v8);
    *v2 = v12;
  }

  else
  {
LABEL_5:
    *a2 = 6;
  }

  return result;
}

unint64_t sub_22B10A528(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22B110464();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_22B1105D4();
        sub_22B1105E4();
        v10 = sub_22B1105F4() & v7;
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
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
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

  return result;
}

uint64_t sub_22B10A750()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *((*MEMORY[0x277D85000] & **(v0[2] + 16)) + 0xE0);
  sub_22B0FE504(v1, v2);
  return v3(v1, v2);
}

uint64_t sub_22B10A7D8@<X0>(uint64_t (**a1)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **(v1 + 16)) + 0xF0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_22B10B6F0;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
  a1[1] = result;
  return result;
}

double sub_22B10A880@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

uint64_t sub_22B10A8DC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *((*MEMORY[0x277D85000] & **(v0[2] + 16)) + 0xF8);
  sub_22B0FE504(v1, v2);
  return v3(v1, v2);
}

uint64_t sub_22B10A964(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_22B101288();
  v6 = *v5;
  *(v2 + 16) = *v5;
  v7 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_logger;
  v8 = v6;
  v9 = sub_22B1010BC();
  v10 = sub_22B1102B4();
  (*(*(v10 - 8) + 16))(v2 + v7, v9, v10);
  *(v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_subscribedEvents) = MEMORY[0x277D84FA0];
  v11 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9308, &unk_22B1117E0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v2 + v11) = v12;
  *(v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_clientDelegate + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  v13 = *(v2 + 16);
  v14 = *((*MEMORY[0x277D85000] & *v13) + 0x88);
  v15 = v13;

  v14(v16, &off_283EF4950);

  return v3;
}

uint64_t sub_22B10AAB8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    swift_beginAccess();
    do
    {
      v4 = *v3++;
      sub_22B109C1C(&v6, v4);
      --v2;
    }

    while (v2);
    swift_endAccess();
  }

  return sub_22B103B2C();
}

unint64_t sub_22B10AB74()
{
  result = qword_28106CB58[0];
  if (!qword_28106CB58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28106CB58);
  }

  return result;
}

uint64_t sub_22B10ABC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B10AC30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B10AC90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    swift_beginAccess();
    do
    {
      v5 = *v4++;
      sub_22B10A41C(v5, &v8);
      --v3;
    }

    while (v3);
    swift_endAccess();
  }

  v6 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_subscribedEvents;
  result = swift_beginAccess();
  if (!*(*(v2 + v6) + 16))
  {
    return sub_22B1034F8();
  }

  return result;
}

uint64_t sub_22B10AD4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B9340, &qword_22B1117F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B10ADBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22B10AE24()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics32SymptomNetworkDiagnosticsManager_subscribedEvents;
  v6 = *(v1 + 24);
  swift_beginAccess();
  if (sub_22B109B08(v6, *(v2 + v5)))
  {
    sub_22B1082E8(v3);
  }

  else
  {
    v7 = v4;
    v8 = sub_22B110294();
    v9 = sub_22B1103E4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      v12 = [v7 description];
      v13 = sub_22B1102D4();
      v15 = v14;

      v16 = sub_22B105BD4(v13, v15, &v17);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_22B0FD000, v8, v9, "Not delivering event %s [no subscription]", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23188B000](v11, -1, -1);
      MEMORY[0x23188B000](v10, -1, -1);
    }
  }
}

unint64_t sub_22B10AFB8()
{
  result = qword_28106CB50;
  if (!qword_28106CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106CB50);
  }

  return result;
}

unint64_t sub_22B10B010()
{
  result = qword_27D8B9320;
  if (!qword_27D8B9320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B9320);
  }

  return result;
}

uint64_t type metadata accessor for SymptomNetworkDiagnosticsManager(uint64_t a1)
{
  result = qword_28106CFD0;
  if (!qword_28106CFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B10B0B8(uint64_t a1)
{
  result = sub_22B1102B4();
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

uint64_t getEnumTagSinglePayload for NetworkDiagnosticsEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkDiagnosticsEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkDiagnosticsEventContext(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NetworkDiagnosticsEventContext(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22B10B5A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B10B5C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_28106C7C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28106C7C8);
    }
  }
}

uint64_t SymptomNetworkDiagnosticsManager.ping(endpoints:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22B10B714, 0, 0);
}

uint64_t sub_22B10B714()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22B10B7B4;
  v2 = *(v0 + 16);

  return sub_22B104440(v2);
}

uint64_t sub_22B10B7B4(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t SymptomNetworkDiagnosticsManager.sendMessage(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22B10B8E8, 0, 0);
}

uint64_t sub_22B10B8E8()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_22B10B98C;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_22B104998(v4, v2, v3);
}

uint64_t sub_22B10B98C(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_22B10BABC()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22B10BB54;

  return sub_22B104EB8();
}

uint64_t sub_22B10BB54(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t SymptomNetworkDiagnosticsManager.sendPayloadToDaemon(interval:leeway:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22B10BC74, 0, 0);
}

uint64_t sub_22B10BC74()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_22B10BD14;
  v3 = v0[2];
  v2 = v0[3];

  return sub_22B1052D0(v3, v2);
}

uint64_t sub_22B10BD14(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_22B10BE20(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7774654E656D6173;
    v6 = 0x414E656C62756F64;
    if (a1 != 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x495555746E657665;
    if (a1 != 5)
    {
      v7 = 0xD000000000000013;
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
    v1 = 0x6D617473656D6974;
    v2 = 0x6E6F43746E657665;
    v3 = 0x4449656369766564;
    if (a1 != 3)
    {
      v3 = 0x49555570756F7267;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x707954746E657665;
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

uint64_t sub_22B10BF70(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_22B10BE20(*a1);
  v5 = v4;
  if (v3 == sub_22B10BE20(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22B1105B4();
  }

  return v8 & 1;
}

uint64_t sub_22B10BFF8()
{
  v1 = *v0;
  sub_22B1105D4();
  sub_22B10BE20(v1);
  sub_22B110304();

  return sub_22B1105F4();
}

uint64_t sub_22B10C05C(uint64_t a1)
{
  sub_22B10BE20(*v1);
  sub_22B110304();
}

uint64_t sub_22B10C0B0(uint64_t a1)
{
  v2 = *v1;
  sub_22B1105D4();
  sub_22B10BE20(v2);
  sub_22B110304();

  return sub_22B1105F4();
}

unint64_t sub_22B10C110@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22B11011C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22B10C140@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22B10BE20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22B10C188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B11011C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B10C1C8(uint64_t a1)
{
  v2 = sub_22B10EAD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B10C204(uint64_t a1)
{
  v2 = sub_22B10EAD8();

  return MEMORY[0x2821FE720](a1, v2);
}

SymptomNetworkDiagnostics::NDFEventXPCPayload::NDFEventType_optional __swiftcall NDFEventXPCPayload.NDFEventType.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 7)
  {
    v2 = 7;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

SymptomNetworkDiagnostics::NDFEventXPCPayload::NDFEventContext_optional __swiftcall NDFEventXPCPayload.NDFEventContext.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22B10C47C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_22B10C4F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_22B10C550(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);

  return v2(v3);
}

uint64_t sub_22B10C5FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_unresponsiveServers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_22B10C6B4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_22B10C768()
{
  v1 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_sameNetwork;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22B10C7AC(char a1)
{
  v3 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_sameNetwork;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22B10C85C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_22B10C910()
{
  v1 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_doubleNAT;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22B10C954(char a1)
{
  v3 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_doubleNAT;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22B10CA04@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t sub_22B10CAB8()
{
  v1 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_p2pTrafficBlocked;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22B10CAFC(char a1)
{
  v3 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_p2pTrafficBlocked;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_22B10CBAC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B9340, &qword_22B1117F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_22B110214();
  v8 = sub_22B1102C4();
  [a1 encodeObject:v7 forKey:v8];

  v9 = sub_22B110604();
  v10 = sub_22B1102C4();
  [a1 encodeObject:v9 forKey:v10];

  v11 = sub_22B110604();
  v12 = sub_22B1102C4();
  [a1 encodeObject:v11 forKey:v12];

  v13 = sub_22B110264();
  v14 = sub_22B1102C4();
  [a1 encodeObject:v13 forKey:v14];

  sub_22B10AD4C(v2 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_groupUUID, v6);
  v15 = sub_22B110284();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v6, 1, v15) != 1)
  {
    v17 = sub_22B110264();
    (*(v16 + 8))(v6, v15);
  }

  v18 = sub_22B1102C4();
  [a1 encodeObject:v17 forKey:v18];
  swift_unknownObjectRelease();

  v19 = sub_22B110264();
  v20 = sub_22B1102C4();
  [a1 encodeObject:v19 forKey:v20];

  v21 = MEMORY[0x277D85000];
  v22 = (*((*MEMORY[0x277D85000] & *v2) + 0xA0))();
  if (v22)
  {
    sub_22B10D124(v22);

    sub_22B10DEE8(0, &unk_28106CD78, 0x277CCACA8);
    v23 = sub_22B110354();
  }

  else
  {
    v23 = 0;
  }

  v24 = sub_22B1102C4();
  [a1 encodeObject:v23 forKey:v24];
  swift_unknownObjectRelease();

  if ((*((*v21 & *v2) + 0xB8))() == 2)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_22B110374();
  }

  v26 = sub_22B1102C4();
  [a1 encodeObject:v25 forKey:v26];
  swift_unknownObjectRelease();

  if ((*((*v21 & *v2) + 0xD0))() == 2)
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_22B110374();
  }

  v28 = sub_22B1102C4();
  [a1 encodeObject:v27 forKey:v28];
  swift_unknownObjectRelease();

  if ((*((*v21 & *v2) + 0xE8))() == 2)
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_22B110374();
  }

  v30 = sub_22B1102C4();
  [a1 encodeObject:v29 forKey:v30];
  swift_unknownObjectRelease();
}

uint64_t sub_22B10D124(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_22B1104E4();
    v4 = a1 + 40;
    do
    {

      sub_22B1102C4();

      sub_22B1104C4();
      sub_22B1104F4();
      sub_22B110504();
      sub_22B1104D4();
      v4 += 16;
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

id NDFEventXPCPayload.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B9340, &qword_22B1117F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v90 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v92 = v80 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v96 = v80 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = v80 - v11;
  v13 = sub_22B110284();
  v14 = *(v13 - 8);
  v99 = v13;
  v100 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v91 = v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v97 = v80 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v80 - v20;
  MEMORY[0x28223BE20](v19);
  v98 = v80 - v22;
  v23 = sub_22B110244();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = v80 - v28;
  v101 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_unresponsiveServers;
  *&v1[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_unresponsiveServers] = 0;
  v93 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_sameNetwork;
  v1[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_sameNetwork] = 2;
  v94 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_doubleNAT;
  v1[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_doubleNAT] = 2;
  v95 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_p2pTrafficBlocked;
  v1[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_p2pTrafficBlocked] = 2;
  sub_22B10DEE8(0, &qword_28106C7C0, 0x277CBEAA8);
  v30 = sub_22B110424();
  if (!v30)
  {
    goto LABEL_6;
  }

  v31 = v30;
  sub_22B110224();

  (*(v24 + 32))(v29, v27, v23);
  sub_22B10DEE8(0, &qword_28106C7A8, 0x277CCABB0);
  v32 = sub_22B110424();
  if (!v32)
  {
    (*(v24 + 8))(v29, v23);
    goto LABEL_6;
  }

  v88 = v29;
  v89 = v23;
  LODWORD(v104) = 0;
  BYTE4(v104) = 1;
  v33 = v32;
  sub_22B110614();

  if ((v104 & 0x100000000) != 0)
  {
    (*(v24 + 8))(v88, v89);
LABEL_6:

LABEL_7:

    type metadata accessor for NDFEventXPCPayload(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v35 = v104;
  v36 = a1;
  v37 = sub_22B110424();
  v38 = v24;
  if (!v37 || (LODWORD(v104) = 0, BYTE4(v104) = 1, v39 = v37, sub_22B110614(), v39, BYTE4(v104) == 1) || (v40 = v104, v41 = sub_22B10DEE8(0, &unk_28106C7B0, 0x277CCAD78), (v42 = sub_22B110424()) == 0) || (v43 = v42, v83 = v40, v87 = v41, v84 = v35, v45 = v99, v44 = v100, v46 = v100 + 56, v86 = *(v100 + 56), v86(v12, 1, 1, v99), v85 = sub_22B10F674(&qword_28106CD38, MEMORY[0x277CC95F0], MEMORY[0x277CC9620]), sub_22B110524(), v43, v47 = *(v44 + 48), v47(v12, 1, v45) == 1))
  {
    (*(v38 + 8))(v88, v89);

    goto LABEL_7;
  }

  v80[2] = v44 + 48;
  v81 = v47;
  v82 = v46;
  v48 = *(v44 + 32);
  v48(v21, v12, v45);
  v49 = v98;
  v80[1] = v44 + 32;
  v80[0] = v48;
  v48(v98, v21, v45);
  v50 = sub_22B110424();
  if (!v50)
  {

    (*(v44 + 8))(v49, v45);
    (*(v38 + 8))(v88, v89);
    goto LABEL_7;
  }

  v51 = v50;
  v52 = v96;
  v86(v96, 1, 1, v45);
  sub_22B110524();

  v53 = v81(v52, 1, v45);
  v54 = v88;
  if (v53 == 1)
  {

    (*(v100 + 8))(v98, v45);
    (*(v38 + 8))(v54, v89);
    goto LABEL_7;
  }

  v55 = v91;
  v56 = v80[0];
  (v80[0])(v91, v52, v45);
  v57 = v97;
  v56(v97, v55, v45);
  (*(v38 + 16))(&v2[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_timestamp], v54, v89);
  NDFEventXPCPayload.NDFEventType.init(rawValue:)(v84);
  v58 = v104;
  if (v104 == 7)
  {
    v58 = 0;
  }

  v2[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventType] = v58;
  v59 = v83;
  if (v83 >= 4)
  {
    v59 = 0;
  }

  v2[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventContext] = v59;
  v60 = v100;
  v61 = *(v100 + 16);
  v61(&v2[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_deviceID], v98, v45);
  v61(&v2[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventUUID], v57, v45);
  v62 = sub_22B110424();
  if (v62)
  {
    v63 = v62;
    v64 = 1;
    v65 = v90;
    v86(v90, 1, 1, v45);
    sub_22B110524();

    v66 = v81(v65, 1, v45);
    v67 = v92;
    if (v66 != 1)
    {
      (v80[0])(v92, v65, v45);
      v64 = 0;
    }
  }

  else
  {
    v64 = 1;
    v67 = v92;
  }

  v86(v67, v64, 1, v45);
  sub_22B10DF30(v67, &v2[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_groupUUID]);
  sub_22B10DEE8(0, &unk_28106CD78, 0x277CCACA8);
  v68 = sub_22B110434();
  if (v68)
  {
    v104 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B9350, &qword_22B111AF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9240, &qword_22B111B00);
    if (swift_dynamicCast())
    {
      v69 = v103;
    }

    else
    {
      v69 = 0;
    }
  }

  else
  {
    v69 = 0;
  }

  v70 = v101;
  swift_beginAccess();
  *&v2[v70] = v69;

  v71 = sub_22B1102C4();
  LOBYTE(v70) = [v36 decodeBoolForKey_];

  v72 = v93;
  swift_beginAccess();
  v2[v72] = v70;
  v73 = sub_22B1102C4();
  LOBYTE(v70) = [v36 decodeBoolForKey_];

  v74 = v94;
  swift_beginAccess();
  v2[v74] = v70;
  v75 = sub_22B1102C4();
  LOBYTE(v70) = [v36 decodeBoolForKey_];

  v76 = *(v60 + 8);
  v76(v97, v45);
  v76(v98, v45);
  (*(v38 + 8))(v88, v89);
  v77 = v95;
  swift_beginAccess();
  v2[v77] = v70;
  v78 = type metadata accessor for NDFEventXPCPayload(0);
  v102.receiver = v2;
  v102.super_class = v78;
  v79 = objc_msgSendSuper2(&v102, sel_init);

  return v79;
}

uint64_t type metadata accessor for NDFEventXPCPayload(uint64_t a1)
{
  result = qword_28106D020;
  if (!qword_28106D020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B10DEE8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_22B10DF30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B9340, &qword_22B1117F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id NDFEventXPCPayload.__allocating_init(timesamp:eventType:eventContext:deviceID:groupUUID:eventUUID:)(uint64_t a1, _BYTE *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = objc_allocWithZone(v7);
  LOBYTE(a2) = *a2;
  v14 = *a3;
  *&v13[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_unresponsiveServers] = 0;
  v13[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_sameNetwork] = 2;
  v13[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_doubleNAT] = 2;
  v13[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_p2pTrafficBlocked] = 2;
  v15 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_timestamp;
  v24 = sub_22B110244();
  v16 = *(v24 - 8);
  (*(v16 + 16))(&v13[v15], a1, v24);
  v13[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventType] = a2;
  v13[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventContext] = v14;
  v17 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_deviceID;
  v18 = sub_22B110284();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(&v13[v17], a4, v18);
  sub_22B10AD4C(a5, &v13[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_groupUUID]);
  v20(&v13[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventUUID], a6, v18);
  v28.receiver = v13;
  v28.super_class = v27;
  v21 = objc_msgSendSuper2(&v28, sel_init);
  v22 = *(v19 + 8);
  v22(a6, v18);
  sub_22B10E3EC(a5);
  v22(a4, v18);
  (*(v16 + 8))(a1, v24);
  return v21;
}

id NDFEventXPCPayload.init(timesamp:eventType:eventContext:deviceID:groupUUID:eventUUID:)(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  v11 = *a3;
  *&v6[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_unresponsiveServers] = 0;
  v6[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_sameNetwork] = 2;
  v6[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_doubleNAT] = 2;
  v6[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_p2pTrafficBlocked] = 2;
  v12 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_timestamp;
  v13 = sub_22B110244();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v6[v12], a1, v13);
  v6[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventType] = v10;
  v6[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventContext] = v11;
  v15 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_deviceID;
  v16 = sub_22B110284();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v18(&v6[v15], a4, v16);
  sub_22B10AD4C(a5, &v6[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_groupUUID]);
  v18(&v6[OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventUUID], a6, v16);
  v24.receiver = v6;
  v24.super_class = type metadata accessor for NDFEventXPCPayload(0);
  v19 = objc_msgSendSuper2(&v24, sel_init);
  v20 = *(v17 + 8);
  v20(a6, v16);
  sub_22B10E3EC(a5);
  v20(a4, v16);
  (*(v14 + 8))(a1, v13);
  return v19;
}

uint64_t sub_22B10E3EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B9340, &qword_22B1117F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id NDFEventXPCPayload.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NDFEventXPCPayload.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDFEventXPCPayload(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B10E61C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9360, &qword_22B111B08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22B10EAD8();
  sub_22B110634();
  LOBYTE(v15) = 0;
  sub_22B110244();
  sub_22B10F674(&qword_27D8B9368, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_22B110594();
  if (!v2)
  {
    LOBYTE(v15) = *(v3 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventType);
    v16 = 1;
    sub_22B10EB2C();
    sub_22B110594();
    LOBYTE(v15) = *(v3 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventContext);
    v16 = 2;
    sub_22B10EB80();
    sub_22B110594();
    LOBYTE(v15) = 3;
    sub_22B110284();
    sub_22B10F674(&qword_27D8B9380, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_22B110594();
    LOBYTE(v15) = 4;
    sub_22B110584();
    LOBYTE(v15) = 5;
    v9 = sub_22B110594();
    v10 = MEMORY[0x277D85000];
    v15 = (*((*MEMORY[0x277D85000] & *v3) + 0xA0))(v9);
    v16 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9240, &qword_22B111B00);
    sub_22B10F6BC(&qword_27D8B9388, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_22B110584();

    (*((*v10 & *v3) + 0xB8))(v11);
    LOBYTE(v15) = 7;
    v12 = sub_22B110574();
    (*((*v10 & *v3) + 0xD0))(v12);
    LOBYTE(v15) = 8;
    v13 = sub_22B110574();
    (*((*v10 & *v3) + 0xE8))(v13);
    LOBYTE(v15) = 9;
    sub_22B110574();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_22B10EAD8()
{
  result = qword_27D8B9630[0];
  if (!qword_27D8B9630[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8B9630);
  }

  return result;
}

unint64_t sub_22B10EB2C()
{
  result = qword_27D8B9370;
  if (!qword_27D8B9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B9370);
  }

  return result;
}

unint64_t sub_22B10EB80()
{
  result = qword_27D8B9378;
  if (!qword_27D8B9378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B9378);
  }

  return result;
}

void *NDFEventXPCPayload.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B9340, &qword_22B1117F0);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = v33 - v4;
  v39 = sub_22B110284();
  v38 = *(v39 - 8);
  v5 = MEMORY[0x28223BE20](v39);
  v36 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41 = v33 - v7;
  v8 = sub_22B110244();
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9390, &qword_22B111B10);
  v40 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v11 = v33 - v10;
  v54 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_unresponsiveServers;
  *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_unresponsiveServers) = 0;
  v12 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_sameNetwork;
  *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_sameNetwork) = 2;
  v13 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_doubleNAT;
  *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_doubleNAT) = 2;
  v14 = OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_p2pTrafficBlocked;
  v47 = a1;
  v48 = v1;
  *(v1 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_p2pTrafficBlocked) = 2;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22B10EAD8();
  v45 = v11;
  v15 = v46;
  sub_22B110624();
  if (v15)
  {
    v32 = v48;
    __swift_destroy_boxed_opaque_existential_0(v47);

    type metadata accessor for NDFEventXPCPayload(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v41;
    v17 = v42;
    v46 = v12;
    v35 = v13;
    v34 = v14;
    v18 = v40;
    v53 = 0;
    sub_22B10F674(&qword_27D8B9398, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_22B110564();
    v20 = v48;
    (*(v37 + 32))(v48 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_timestamp, v44, v8);
    LOBYTE(v52) = 1;
    sub_22B10F5CC();
    sub_22B110564();
    v33[1] = v8;
    *(v20 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventType) = v53;
    LOBYTE(v52) = 2;
    sub_22B10F620();
    sub_22B110564();
    v21 = v39;
    *(v20 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventContext) = v53;
    v53 = 3;
    v44 = sub_22B10F674(&qword_27D8B93B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_22B110564();
    v22 = v21;
    v23 = v38 + 32;
    v41 = *(v38 + 32);
    (v41)(v20 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_deviceID, v16, v22);
    v53 = 4;
    sub_22B110554();
    v33[0] = v23;
    sub_22B10DF30(v17, v20 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_groupUUID);
    v53 = 5;
    v24 = v36;
    sub_22B110564();
    (v41)(v20 + OBJC_IVAR____TtC25SymptomNetworkDiagnostics18NDFEventXPCPayload_eventUUID, v24, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B9240, &qword_22B111B00);
    v53 = 6;
    sub_22B10F6BC(&qword_27D8B93B8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_22B110554();
    v25 = v52;
    v26 = v54;
    swift_beginAccess();
    *(v20 + v26) = v25;

    LOBYTE(v52) = 7;
    LOBYTE(v25) = sub_22B110544();
    v27 = v46;
    swift_beginAccess();
    *(v20 + v27) = v25;
    v51 = 8;
    LOBYTE(v25) = sub_22B110544();
    v28 = v35;
    swift_beginAccess();
    *(v20 + v28) = v25;
    v50 = 9;
    LOBYTE(v25) = sub_22B110544();
    v29 = v48;
    v30 = v34;
    swift_beginAccess();
    v29[v30] = v25;
    v31 = type metadata accessor for NDFEventXPCPayload(0);
    v49.receiver = v29;
    v49.super_class = v31;
    v32 = objc_msgSendSuper2(&v49, sel_init);
    (*(v18 + 8))(v45, v43);
    __swift_destroy_boxed_opaque_existential_0(v47);
  }

  return v32;
}

unint64_t sub_22B10F5CC()
{
  result = qword_27D8B93A0;
  if (!qword_27D8B93A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B93A0);
  }

  return result;
}

unint64_t sub_22B10F620()
{
  result = qword_27D8B93A8;
  if (!qword_27D8B93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B93A8);
  }

  return result;
}

uint64_t sub_22B10F674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B10F6BC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B9240, &qword_22B111B00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22B10F72C()
{
  result = qword_27D8B93C0;
  if (!qword_27D8B93C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B93C0);
  }

  return result;
}

unint64_t sub_22B10F784()
{
  result = qword_27D8B93C8;
  if (!qword_27D8B93C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B93C8);
  }

  return result;
}

uint64_t sub_22B10F7D8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 288))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_22B10F878(uint64_t a1)
{
  sub_22B110244();
  if (v1 <= 0x3F)
  {
    sub_22B110284();
    if (v2 <= 0x3F)
    {
      sub_22B10FD0C(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_22B10FD0C(uint64_t a1)
{
  if (!qword_28106CD88)
  {
    sub_22B110284();
    v1 = sub_22B110444();
    if (!v2)
    {
      atomic_store(v1, &qword_28106CD88);
    }
  }
}

uint64_t getEnumTagSinglePayload for NDFEventXPCPayload.NDFEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDFEventXPCPayload.NDFEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDFEventXPCPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDFEventXPCPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B110018()
{
  result = qword_27D8B9DC0[0];
  if (!qword_27D8B9DC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8B9DC0);
  }

  return result;
}

unint64_t sub_22B110070()
{
  result = qword_27D8B9ED0;
  if (!qword_27D8B9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B9ED0);
  }

  return result;
}

unint64_t sub_22B1100C8()
{
  result = qword_27D8B9ED8[0];
  if (!qword_27D8B9ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8B9ED8);
  }

  return result;
}

unint64_t sub_22B11011C(uint64_t a1, uint64_t a2)
{
  v2 = sub_22B110534();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22B110168()
{
  result = qword_27D8B9440;
  if (!qword_27D8B9440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B9440);
  }

  return result;
}

unint64_t sub_22B1101BC()
{
  result = qword_27D8B9448;
  if (!qword_27D8B9448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B9448);
  }

  return result;
}