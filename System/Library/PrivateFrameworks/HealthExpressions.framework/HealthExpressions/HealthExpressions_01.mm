uint64_t getEnumTagSinglePayload for ArithmeticExpression.Operation(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ArithmeticExpression.Operation(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t ProtoNotExpressionConfiguration.argument.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25173F430(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for ProtoNotExpressionConfiguration(0);
  sub_251730C0C(v1 + *(v6 + 20), v5);
  v7 = sub_25175007C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_25175006C();
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_251730C70(v5);
  }

  return result;
}

uint64_t type metadata accessor for ProtoNotExpressionConfiguration(uint64_t a1)
{
  result = qword_27F458620;
  if (!qword_27F458620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25173DAE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25173F430(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ProtoNotExpressionConfiguration(0);
  sub_251730C0C(a1 + *(v7 + 20), v6);
  v8 = sub_25175007C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v6, v8);
  }

  sub_25175006C();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_251730C70(v6);
  }

  return result;
}

uint64_t sub_25173DC50(uint64_t a1, uint64_t a2)
{
  v4 = sub_25175007C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *(type metadata accessor for ProtoNotExpressionConfiguration(0) + 20);
  sub_251730C70(a2 + v8);
  (*(v5 + 32))(a2 + v8, v7, v4);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoNotExpressionConfiguration.argument.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoNotExpressionConfiguration(0) + 20);
  sub_251730C70(v1 + v3);
  v4 = sub_25175007C();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoNotExpressionConfiguration.argument.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_25173F430(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_25175007C();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoNotExpressionConfiguration(0) + 20);
  *(v5 + 12) = v16;
  sub_251730C0C(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_25175006C();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251730C70(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_25173E04C;
}

void sub_25173E04C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_251730C70(v9 + v3);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_251730C70(v9 + v3);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL ProtoNotExpressionConfiguration.hasArgument.getter()
{
  sub_25173F430(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for ProtoNotExpressionConfiguration(0);
  sub_251730C0C(v0 + *(v4 + 20), v3);
  v5 = sub_25175007C();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_251730C70(v3);
  return v6;
}

Swift::Void __swiftcall ProtoNotExpressionConfiguration.clearArgument()()
{
  v1 = *(type metadata accessor for ProtoNotExpressionConfiguration(0) + 20);
  sub_251730C70(v0 + v1);
  v2 = sub_25175007C();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t ProtoNotExpressionConfiguration.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2517500AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ProtoNotExpressionConfiguration.unknownFields.setter(uint64_t a1)
{
  v3 = sub_2517500AC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ProtoNotExpressionConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  sub_25175009C();
  v2 = *(type metadata accessor for ProtoNotExpressionConfiguration(0) + 20);
  v3 = sub_25175007C();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_25173E490()
{
  v0 = sub_25175026C();
  __swift_allocate_value_buffer(v0, qword_27F4585F0);
  __swift_project_value_buffer(v0, qword_27F4585F0);
  sub_25173F430(0, &qword_27F458038, sub_25172CD04, MEMORY[0x277D84560]);
  sub_25172CD04(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_251751FD0;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "argument";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_25175024C();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_25175025C();
}

uint64_t static ProtoNotExpressionConfiguration._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F457F18 != -1)
  {
    swift_once();
  }

  v2 = sub_25175026C();
  v3 = __swift_project_value_buffer(v2, qword_27F4585F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ProtoNotExpressionConfiguration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_25175011C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_25173E730(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_25173E730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoNotExpressionConfiguration(0);
  sub_25175007C();
  sub_25173F3E8(&qword_27F458030, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  return sub_25175018C();
}

uint64_t ProtoNotExpressionConfiguration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25173E83C(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_25175008C();
  }

  return result;
}

uint64_t sub_25173E83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25173F430(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_25175007C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoNotExpressionConfiguration(0);
  sub_251730C0C(a1 + *(v12 + 20), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251730C70(v7);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_25173F3E8(&qword_27F458030, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  sub_25175023C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t ProtoNotExpressionConfiguration.hashValue.getter()
{
  sub_2517505BC();
  type metadata accessor for ProtoNotExpressionConfiguration(0);
  sub_25173F3E8(&qword_27F458608, type metadata accessor for ProtoNotExpressionConfiguration, &protocol conformance descriptor for ProtoNotExpressionConfiguration);
  sub_2517502CC();
  return sub_2517505DC();
}

uint64_t sub_25173EAE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25175009C();
  v4 = *(a1 + 20);
  v5 = sub_25175007C();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_25173EBA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25173F3E8(&qword_27F458630, type metadata accessor for ProtoNotExpressionConfiguration, &protocol conformance descriptor for ProtoNotExpressionConfiguration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25173EC24@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F457F18 != -1)
  {
    swift_once();
  }

  v2 = sub_25175026C();
  v3 = __swift_project_value_buffer(v2, qword_27F4585F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25173ECCC(uint64_t a1)
{
  v2 = sub_25173F3E8(&qword_27F458158, type metadata accessor for ProtoNotExpressionConfiguration, &protocol conformance descriptor for ProtoNotExpressionConfiguration);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25173ED38(uint64_t a1, uint64_t a2)
{
  sub_25173F3E8(&qword_27F458158, type metadata accessor for ProtoNotExpressionConfiguration, &protocol conformance descriptor for ProtoNotExpressionConfiguration);

  return sub_2517501CC();
}

uint64_t _s17HealthExpressions31ProtoNotExpressionConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25175007C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25173F430(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  sub_25173F2F8(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for ProtoNotExpressionConfiguration(0) + 20);
  v16 = *(v12 + 56);
  sub_251730C0C(a1 + v15, v14);
  sub_251730C0C(a2 + v15, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_251730C70(v14);
LABEL_9:
      sub_2517500AC();
      sub_25173F3E8(&qword_27F458020, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_25175031C();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  sub_251730C0C(v14, v10);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_25173F38C(v14);
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, &v14[v16], v4);
  sub_25173F3E8(&qword_27F458028, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v19 = sub_25175031C();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  sub_251730C70(v14);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

void sub_25173F244(uint64_t a1)
{
  sub_2517500AC();
  if (v1 <= 0x3F)
  {
    sub_25173F430(319, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25173F2F8(uint64_t a1)
{
  if (!qword_27F458018)
  {
    sub_25173F430(255, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F458018);
    }
  }
}

uint64_t sub_25173F38C(uint64_t a1)
{
  sub_25173F2F8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25173F3E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_25173F430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t ProtoAndExpressionConfiguration.arguments.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ProtoAndExpressionConfiguration.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProtoAndExpressionConfiguration(0) + 20);
  v4 = sub_2517500AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ProtoAndExpressionConfiguration(uint64_t a1)
{
  result = qword_27F458668;
  if (!qword_27F458668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProtoAndExpressionConfiguration.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoAndExpressionConfiguration(0) + 20);
  v4 = sub_2517500AC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProtoAndExpressionConfiguration.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for ProtoAndExpressionConfiguration(0);
  return sub_25175009C();
}

uint64_t sub_25173F6D0()
{
  v0 = sub_25175026C();
  __swift_allocate_value_buffer(v0, qword_27F458638);
  __swift_project_value_buffer(v0, qword_27F458638);
  sub_251740378(0, &qword_27F458038, sub_25172CD04, MEMORY[0x277D84560]);
  sub_25172CD04(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_251751FD0;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "arguments";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_25175024C();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_25175025C();
}

uint64_t static ProtoAndExpressionConfiguration._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F457F20 != -1)
  {
    swift_once();
  }

  v2 = sub_25175026C();
  v3 = __swift_project_value_buffer(v2, qword_27F458638);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ProtoAndExpressionConfiguration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25175011C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_25175007C();
        sub_251740330(&qword_27F458030, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
        sub_25175017C();
      }

      result = sub_25175011C();
    }
  }

  return result;
}

uint64_t ProtoAndExpressionConfiguration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_25175007C(), sub_251740330(&qword_27F458030, MEMORY[0x277D215C8], MEMORY[0x277D215C0]), result = sub_25175022C(), !v4))
  {
    type metadata accessor for ProtoAndExpressionConfiguration(0);
    return sub_25175008C();
  }

  return result;
}

uint64_t static ProtoAndExpressionConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_25173FF20(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ProtoAndExpressionConfiguration(0);
  sub_2517500AC();
  sub_251740330(&qword_27F458020, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25175031C() & 1;
}

uint64_t ProtoAndExpressionConfiguration.hashValue.getter()
{
  sub_2517505BC();
  type metadata accessor for ProtoAndExpressionConfiguration(0);
  sub_251740330(&qword_27F458650, type metadata accessor for ProtoAndExpressionConfiguration, &protocol conformance descriptor for ProtoAndExpressionConfiguration);
  sub_2517502CC();
  return sub_2517505DC();
}

uint64_t sub_25173FC6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251740330(&qword_27F458680, type metadata accessor for ProtoAndExpressionConfiguration, "yϬ0D3");

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25173FCE8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F457F20 != -1)
  {
    swift_once();
  }

  v2 = sub_25175026C();
  v3 = __swift_project_value_buffer(v2, qword_27F458638);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25173FD90(uint64_t a1)
{
  v2 = sub_251740330(qword_27F458430, type metadata accessor for ProtoAndExpressionConfiguration, &protocol conformance descriptor for ProtoAndExpressionConfiguration);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25173FDFC(uint64_t a1, uint64_t a2)
{
  sub_251740330(qword_27F458430, type metadata accessor for ProtoAndExpressionConfiguration, &protocol conformance descriptor for ProtoAndExpressionConfiguration);

  return sub_2517501CC();
}

uint64_t sub_25173FE78(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_25173FF20(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_2517500AC();
  sub_251740330(&qword_27F458020, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25175031C() & 1;
}

uint64_t sub_25173FF20(uint64_t a1, uint64_t a2)
{
  v4 = sub_25175007C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_251740330(&qword_27F458028, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
    v21 = sub_25175031C();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

void sub_25174027C(uint64_t a1)
{
  sub_251740378(319, &qword_27F458678, MEMORY[0x277D215C8], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2517500AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_251740330(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251740378(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t CodableOrExpressionConstructor.constructExpression(from:factory:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 16);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v10 = a2;
    v13 = MEMORY[0x277D84F90];
    result = sub_2517329BC(0, v4, 0);
    v6 = 0;
    v5 = v13;
    v7 = v3 + 32;
    while (v6 < *(v3 + 16))
    {
      sub_25172DC88(v7, v11);
      sub_25173191C(v11, v12);
      if (v2)
      {
        sub_25172E8C8(v11);
      }

      sub_25172E8C8(v11);
      v13 = v5;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2517329BC((v8 > 1), v9 + 1, 1);
        v5 = v13;
      }

      ++v6;
      *(v5 + 16) = v9 + 1;
      result = sub_25172F5E8(v12, v5 + 40 * v9 + 32);
      v7 += 40;
      if (v4 == v6)
      {
        a2 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    a2[3] = &type metadata for OrExpression;
    a2[4] = &protocol witness table for OrExpression;
    *a2 = v5;
  }

  return result;
}

uint64_t CodableOrExpressionConfiguration.expressionIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t CodableOrExpressionConfiguration.expressionIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t CodableOrExpressionConfiguration.arguments.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_251740640(uint64_t a1)
{
  v2 = sub_251740B80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25174067C(uint64_t a1)
{
  v2 = sub_251740B80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CodableOrExpressionConfiguration.encode(to:)(void *a1)
{
  sub_251740BD4(0, &qword_27F458688, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v12[0] = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251740B80();

  sub_25175063C();
  v13 = v8;
  v14 = v9;
  v15 = 0;
  sub_25172E31C();
  v10 = v12[1];
  sub_2517504CC();

  if (!v10)
  {
    v13 = v12[0];
    v15 = 1;
    sub_251732A30();
    sub_251732AE4(&qword_27F4581B8, sub_25172E3C4, MEMORY[0x277D83948]);
    sub_2517504CC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CodableOrExpressionConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_251740BD4(0, &qword_27F458698, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251740B80();
  sub_25175061C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_25172E820();
  sub_2517504AC();
  v11 = v14[0];
  v10 = v14[1];
  sub_251732A30();
  v15 = 1;
  sub_251732AE4(&qword_27F4581C8, sub_25172E91C, MEMORY[0x277D83978]);
  sub_2517504AC();
  (*(v7 + 8))(v9, v6);
  v12 = v14[0];
  *a2 = v11;
  a2[1] = v10;
  a2[2] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

HealthExpressions::CodableOrExpressionConfiguration __swiftcall CodableOrExpressionConfiguration.init(arguments:)(Swift::OpaquePointer arguments)
{
  v1->_rawValue = 0xD000000000000028;
  v1[1]._rawValue = 0x8000000251754050;
  v1[2]._rawValue = arguments._rawValue;
  result.expressionIdentifier.rawValue._countAndFlagsBits = arguments._rawValue;
  return result;
}

unint64_t sub_251740B80()
{
  result = qword_27F458690;
  if (!qword_27F458690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458690);
  }

  return result;
}

void sub_251740BD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251740B80();
    v7 = a3(a1, &type metadata for CodableOrExpressionConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_251740C3C()
{
  result = qword_27F4586A0;
  if (!qword_27F4586A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4586A0);
  }

  return result;
}

unint64_t sub_251740C90(uint64_t a1)
{
  *(a1 + 8) = sub_251740CC0();
  result = sub_251740D14();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_251740CC0()
{
  result = qword_27F4586A8;
  if (!qword_27F4586A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4586A8);
  }

  return result;
}

unint64_t sub_251740D14()
{
  result = qword_27F4586B0;
  if (!qword_27F4586B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4586B0);
  }

  return result;
}

unint64_t sub_251740D9C()
{
  result = qword_27F4586B8;
  if (!qword_27F4586B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4586B8);
  }

  return result;
}

unint64_t sub_251740DF4()
{
  result = qword_27F4586C0;
  if (!qword_27F4586C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4586C0);
  }

  return result;
}

unint64_t sub_251740E4C()
{
  result = qword_27F4586C8;
  if (!qword_27F4586C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4586C8);
  }

  return result;
}

uint64_t ProtoCountTrueExpressionConfiguration.arguments.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ProtoCountTrueExpressionConfiguration.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProtoCountTrueExpressionConfiguration(0) + 20);
  v4 = sub_2517500AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ProtoCountTrueExpressionConfiguration(uint64_t a1)
{
  result = qword_27F458708;
  if (!qword_27F458708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProtoCountTrueExpressionConfiguration.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoCountTrueExpressionConfiguration(0) + 20);
  v4 = sub_2517500AC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProtoCountTrueExpressionConfiguration.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for ProtoCountTrueExpressionConfiguration(0);
  return sub_25175009C();
}

uint64_t sub_2517410E0()
{
  v0 = sub_25175026C();
  __swift_allocate_value_buffer(v0, qword_27F4586D0);
  __swift_project_value_buffer(v0, qword_27F4586D0);
  sub_251740378(0, &qword_27F458038, sub_25172CD04, MEMORY[0x277D84560]);
  sub_25172CD04(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_251751FD0;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "arguments";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_25175024C();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_25175025C();
}

uint64_t static ProtoCountTrueExpressionConfiguration._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F457F28 != -1)
  {
    swift_once();
  }

  v2 = sub_25175026C();
  v3 = __swift_project_value_buffer(v2, qword_27F4586D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ProtoCountTrueExpressionConfiguration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25175011C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_25175007C();
        sub_251741A4C(&qword_27F458030, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
        sub_25175017C();
      }

      result = sub_25175011C();
    }
  }

  return result;
}

uint64_t ProtoCountTrueExpressionConfiguration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_25175007C(), sub_251741A4C(&qword_27F458030, MEMORY[0x277D215C8], MEMORY[0x277D215C0]), result = sub_25175022C(), !v4))
  {
    type metadata accessor for ProtoCountTrueExpressionConfiguration(0);
    return sub_25175008C();
  }

  return result;
}

uint64_t static ProtoCountTrueExpressionConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_25173FF20(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ProtoCountTrueExpressionConfiguration(0);
  sub_2517500AC();
  sub_251741A4C(&qword_27F458020, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25175031C() & 1;
}

uint64_t ProtoCountTrueExpressionConfiguration.hashValue.getter()
{
  sub_2517505BC();
  type metadata accessor for ProtoCountTrueExpressionConfiguration(0);
  sub_251741A4C(&qword_27F4586E8, type metadata accessor for ProtoCountTrueExpressionConfiguration, &protocol conformance descriptor for ProtoCountTrueExpressionConfiguration);
  sub_2517502CC();
  return sub_2517505DC();
}

uint64_t sub_251741650(uint64_t a1, uint64_t a2)
{
  v4 = sub_251741A4C(&qword_27F458718, type metadata accessor for ProtoCountTrueExpressionConfiguration, &protocol conformance descriptor for ProtoCountTrueExpressionConfiguration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2517416CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F457F28 != -1)
  {
    swift_once();
  }

  v2 = sub_25175026C();
  v3 = __swift_project_value_buffer(v2, qword_27F4586D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_251741774(uint64_t a1)
{
  v2 = sub_251741A4C(&qword_27F4586F8, type metadata accessor for ProtoCountTrueExpressionConfiguration, "Qά0p0");

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2517417E0(uint64_t a1, uint64_t a2)
{
  sub_251741A4C(&qword_27F4586F8, type metadata accessor for ProtoCountTrueExpressionConfiguration, "Qά0p0");

  return sub_2517501CC();
}

uint64_t sub_25174185C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_25173FF20(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_2517500AC();
  sub_251741A4C(&qword_27F458020, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25175031C() & 1;
}

uint64_t sub_251741A4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CountTrueExpressionConstructor.constructExpression(from:factory:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v25 = a2;
  v6 = sub_25175007C();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v24 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(*a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v19 = a3;
    v20 = v11;
    v27 = MEMORY[0x277D84F90];
    result = sub_2517329BC(0, v11, 0);
    v13 = 0;
    v12 = v27;
    v22 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v21 = v7 + 16;
    v23 = (v7 + 8);
    while (v13 < *(v10 + 16))
    {
      v14 = v24;
      (*(v7 + 16))(v24, v22 + *(v7 + 72) * v13, v6);
      sub_251730CCC(v14, v26);
      if (v3)
      {
        (*v23)(v14, v6);
      }

      v15 = v7;
      v16 = v6;
      (*v23)(v14, v6);
      v27 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2517329BC((v17 > 1), v18 + 1, 1);
        v12 = v27;
      }

      ++v13;
      *(v12 + 16) = v18 + 1;
      result = sub_25172F5E8(v26, v12 + 40 * v18 + 32);
      v6 = v16;
      v7 = v15;
      if (v20 == v13)
      {
        a3 = v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    a3[3] = &type metadata for CountTrueExpression;
    a3[4] = &protocol witness table for CountTrueExpression;
    *a3 = v12;
  }

  return result;
}

unint64_t sub_251741D04()
{
  result = qword_27F4586F8;
  if (!qword_27F4586F8)
  {
    type metadata accessor for ProtoCountTrueExpressionConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4586F8);
  }

  return result;
}

uint64_t ComparatorExpressionConstructor.constructExpression(from:factory:)@<X0>(char ***a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v79 = a2;
  v80 = a3;
  v4 = type metadata accessor for ProtoComparatorExpressionConfiguration(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25174277C(0, &qword_27F457F70, MEMORY[0x277D215C8]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v72 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v75 = &v69 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v70 = &v69 - v13;
  MEMORY[0x28223BE20](v12);
  v73 = &v69 - v14;
  v81 = sub_25175007C();
  v15 = *(v81 - 8);
  v16 = MEMORY[0x28223BE20](v81);
  v71 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v74 = &v69 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v69 = &v69 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v69 - v22;
  v78 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  v24 = MEMORY[0x28223BE20](v78);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v77 = (&v69 - v27);
  sub_25174277C(0, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v69 - v29;
  sub_251742898(a1 + *(v4 + 20), &v69 - v29, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  v31 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands(0);
  if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
  {
    *&v83[0] = 0;
    *(&v83[0] + 1) = 0xE000000000000000;
    sub_2517503EC();

    *&v83[0] = 0xD000000000000015;
    *(&v83[0] + 1) = 0x80000002517540B0;
    sub_2517427D0(a1, v6);
    v32 = sub_25175032C();
    MEMORY[0x253080820](v32);

    v33 = v83[0];
    sub_2517315B0();
    swift_allocError();
    *v34 = v33;
    *(v34 + 16) = 1;
    return swift_willThrow();
  }

  v36 = v15;
  v37 = (v15 + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = v26;
    sub_251742834(v30, v26);
    v77 = *a1;
    LODWORD(v73) = *(a1 + 8);
    sub_25172D38C(0, &qword_27F458050, MEMORY[0x277D837D0], MEMORY[0x277D837F0]);
    v39 = v80;
    v80[3] = v40;
    v39[4] = &protocol witness table for ComparatorExpression<A>;
    v41 = swift_allocObject();
    *v39 = v41;
    v42 = v75;
    sub_251742898(v38 + *(v78 + 20), v75, &qword_27F457F70, MEMORY[0x277D215C8]);
    v43 = *v37;
    v44 = v81;
    if ((*v37)(v42, 1, v81) == 1)
    {
      v45 = v74;
      sub_25175006C();
      if (v43(v42, 1, v44) != 1)
      {
        sub_251730C70(v42);
      }
    }

    else
    {
      v45 = v74;
      (*(v36 + 32))(v74, v42, v44);
    }

    v55 = v76;
    sub_251730D1C(v45, v83);
    if (v55)
    {
      (*(v36 + 8))(v45, v81);
      v56 = v38;
LABEL_26:
      sub_251742904(v56);
      return __swift_deallocate_boxed_opaque_existential_1(v80);
    }

    v58 = v81;
    v76 = *(v36 + 8);
    v76(v45, v81);
    v59 = v72;
    sub_251742898(v38 + *(v78 + 24), v72, &qword_27F457F70, MEMORY[0x277D215C8]);
    if (v43(v59, 1, v58) == 1)
    {
      v60 = v71;
      sub_25175006C();
      v61 = v60;
      if (v43(v59, 1, v58) != 1)
      {
        sub_251730C70(v59);
      }
    }

    else
    {
      v61 = v71;
      (*(v36 + 32))(v71, v59, v58);
    }

    sub_251730D1C(v61, v82);
    v76(v61, v81);
    sub_251742960(v77, v73, &v84);
    v67 = v84;
    sub_251726638(v83, v41 + 16);
    sub_251726638(v82, v41 + 64);
    *(v41 + 56) = v67;
    return sub_251742904(v38);
  }

  else
  {
    v46 = v77;
    sub_251742834(v30, v77);
    v47 = *a1;
    LODWORD(v75) = *(a1 + 8);
    sub_25172D38C(0, &qword_27F458058, MEMORY[0x277D839F8], MEMORY[0x277D83A20]);
    v48 = v80;
    v80[3] = v49;
    v48[4] = &protocol witness table for ComparatorExpression<A>;
    v50 = swift_allocObject();
    *v48 = v50;
    v51 = v46 + *(v78 + 20);
    v52 = v73;
    sub_251742898(v51, v73, &qword_27F457F70, MEMORY[0x277D215C8]);
    v53 = *v37;
    v54 = v81;
    if ((*v37)(v52, 1, v81) == 1)
    {
      sub_25175006C();
      if (v53(v52, 1, v54) != 1)
      {
        sub_251730C70(v52);
      }
    }

    else
    {
      (*(v36 + 32))(v23, v52, v54);
    }

    v57 = v76;
    sub_25173128C(v23, v83);
    if (v57)
    {
      (*(v36 + 8))(v23, v81);
      v56 = v77;
      goto LABEL_26;
    }

    v76 = v47;
    v62 = *(v36 + 8);
    v63 = v81;
    v62(v23, v81);
    v64 = v70;
    sub_251742898(v77 + *(v78 + 24), v70, &qword_27F457F70, MEMORY[0x277D215C8]);
    if (v53(v64, 1, v63) == 1)
    {
      v65 = v69;
      sub_25175006C();
      if (v53(v64, 1, v63) != 1)
      {
        sub_251730C70(v64);
      }
    }

    else
    {
      v66 = v69;
      (*(v36 + 32))(v69, v64, v63);
      v65 = v66;
    }

    sub_25173128C(v65, v82);
    v62(v65, v81);
    sub_251742960(v76, v75, &v84);
    v68 = v84;
    sub_251726638(v83, v50 + 16);
    sub_251726638(v82, v50 + 64);
    *(v50 + 56) = v68;
    return sub_251742904(v77);
  }
}

void sub_25174277C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2517503CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2517427D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoComparatorExpressionConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251742834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251742898(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25174277C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251742904(uint64_t a1)
{
  v2 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251742960@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  if (a2)
  {
    *a3 = 0x40503020100uLL >> (8 * result);
  }

  else
  {
    sub_2517503EC();

    v3 = sub_2517504DC();
    MEMORY[0x253080820](v3);

    sub_2517315B0();
    swift_allocError();
    *v4 = 0xD000000000000013;
    *(v4 + 8) = 0x8000000251753F00;
    *(v4 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_251742A58()
{
  result = qword_27F458728;
  if (!qword_27F458728)
  {
    type metadata accessor for ProtoComparatorExpressionConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458728);
  }

  return result;
}

uint64_t ProtoComparatorExpressionConfiguration.Operands.leftArgument.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D215C8];
  sub_251742EDC(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  sub_25174976C(v1 + *(v7 + 20), v6, &qword_27F457F70, v3);
  v8 = sub_25175007C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_25175006C();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_2517496FC(v6, &qword_27F457F70, MEMORY[0x277D215C8]);
  }

  return result;
}

uint64_t ProtoComparatorExpressionConfiguration.Operands.rightArgument.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D215C8];
  sub_251742EDC(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  sub_25174976C(v1 + *(v7 + 24), v6, &qword_27F457F70, v3);
  v8 = sub_25175007C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_25175006C();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_2517496FC(v6, &qword_27F457F70, MEMORY[0x277D215C8]);
  }

  return result;
}

void ProtoComparatorExpressionConfiguration.operation.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t ProtoComparatorExpressionConfiguration.operation.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void sub_251742EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t ProtoComparatorExpressionConfiguration.operands.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ProtoComparatorExpressionConfiguration(0) + 20);

  return sub_251742FA4(a1, v3);
}

uint64_t sub_251742FA4(uint64_t a1, uint64_t a2)
{
  sub_251742EDC(0, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ProtoComparatorExpressionConfiguration.doubles.getter@<X0>(uint64_t a1@<X8>)
{
  sub_251742EDC(0, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for ProtoComparatorExpressionConfiguration(0);
  sub_25174976C(v1 + *(v6 + 20), v5, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  v7 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_2517496FC(v5, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
LABEL_5:
    sub_25175009C();
    v8 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
    v9 = *(v8 + 20);
    v10 = sub_25175007C();
    v11 = *(*(v10 - 8) + 56);
    v11(a1 + v9, 1, 1, v10);
    return (v11)(a1 + *(v8 + 24), 1, 1, v10);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_251743838(v5, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
    goto LABEL_5;
  }

  return sub_251749694(v5, a1, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
}

uint64_t sub_25174328C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251742EDC(0, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for ProtoComparatorExpressionConfiguration(0);
  sub_25174976C(a1 + *(v7 + 20), v6, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  v8 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_2517496FC(v6, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
LABEL_5:
    sub_25175009C();
    v9 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
    v10 = *(v9 + 20);
    v11 = sub_25175007C();
    v12 = *(*(v11 - 8) + 56);
    v12(a2 + v10, 1, 1, v11);
    return (v12)(a2 + *(v9 + 24), 1, 1, v11);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_251743838(v6, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
    goto LABEL_5;
  }

  return sub_251749694(v6, a2, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
}

uint64_t ProtoComparatorExpressionConfiguration.Operands.init()@<X0>(uint64_t a2@<X8>)
{
  sub_25175009C();
  v3 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  v4 = *(v3 + 20);
  v5 = sub_25175007C();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(v3 + 24);

  return v8(v6, 1, 1, v5);
}

void (*ProtoComparatorExpressionConfiguration.doubles.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_251742EDC(0, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for ProtoComparatorExpressionConfiguration(0) + 20);
  *(v5 + 12) = v14;
  sub_25174976C(v1 + v14, v9, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  v15 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_2517496FC(v9, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_251749694(v9, v13, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
      return sub_251743830;
    }

    sub_251743838(v9, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  }

  sub_25175009C();
  v17 = *(v10 + 20);
  v18 = sub_25175007C();
  v19 = *(*(v18 - 8) + 56);
  v19(v13 + v17, 1, 1, v18);
  v19(v13 + *(v10 + 24), 1, 1, v18);
  return sub_251743830;
}

uint64_t sub_251743838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ProtoComparatorExpressionConfiguration.strings.getter@<X0>(uint64_t a1@<X8>)
{
  sub_251742EDC(0, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for ProtoComparatorExpressionConfiguration(0);
  sub_25174976C(v1 + *(v6 + 20), v5, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  v7 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_2517496FC(v5, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_251749694(v5, a1, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
    }

    sub_251743838(v5, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  }

  sub_25175009C();
  v9 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  v10 = *(v9 + 20);
  v11 = sub_25175007C();
  v12 = *(*(v11 - 8) + 56);
  v12(a1 + v10, 1, 1, v11);
  return (v12)(a1 + *(v9 + 24), 1, 1, v11);
}

uint64_t sub_251743AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251742EDC(0, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for ProtoComparatorExpressionConfiguration(0);
  sub_25174976C(a1 + *(v7 + 20), v6, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  v8 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_2517496FC(v6, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_251749694(v6, a2, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
    }

    sub_251743838(v6, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  }

  sub_25175009C();
  v10 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  v11 = *(v10 + 20);
  v12 = sub_25175007C();
  v13 = *(*(v12 - 8) + 56);
  v13(a2 + v11, 1, 1, v12);
  return (v13)(a2 + *(v10 + 24), 1, 1, v12);
}

uint64_t sub_251743CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517498C8(a1, v9, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
  v10 = *(type metadata accessor for ProtoComparatorExpressionConfiguration(0) + 20);
  sub_2517496FC(a2 + v10, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  sub_251749694(v9, a2 + v10, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
  v11 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v11 - 8) + 56))(a2 + v10, 0, 1, v11);
}

uint64_t sub_251743DF4(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ProtoComparatorExpressionConfiguration(0) + 20);
  sub_2517496FC(v2 + v4, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  sub_251749694(a1, v2 + v4, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
  v5 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*ProtoComparatorExpressionConfiguration.strings.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_251742EDC(0, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for ProtoComparatorExpressionConfiguration(0) + 20);
  *(v5 + 12) = v14;
  sub_25174976C(v1 + v14, v9, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  v15 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_2517496FC(v9, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
LABEL_15:
    sub_25175009C();
    v17 = *(v10 + 20);
    v18 = sub_25175007C();
    v19 = *(*(v18 - 8) + 56);
    v19(v13 + v17, 1, 1, v18);
    v19(v13 + *(v10 + 24), 1, 1, v18);
    return sub_25174419C;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_251743838(v9, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
    goto LABEL_15;
  }

  sub_251749694(v9, v13, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
  return sub_25174419C;
}

void sub_2517441A4(uint64_t **a1, char a2, uint64_t a3)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = *(*a1 + 12);
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    sub_2517498C8((*a1)[3], v7, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
    sub_2517496FC(v10 + v6, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
    sub_251749694(v7, v10 + v6, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v10 + v6, 0, 1, v4);
    sub_251743838(v8, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
  }

  else
  {
    sub_2517496FC(v10 + v6, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
    sub_251749694(v8, v10 + v6, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v10 + v6, 0, 1, v4);
  }

  free(v8);
  free(v7);
  free(v9);

  free(v3);
}

uint64_t ProtoComparatorExpressionConfiguration.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProtoComparatorExpressionConfiguration(0) + 24);
  v4 = sub_2517500AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProtoComparatorExpressionConfiguration.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoComparatorExpressionConfiguration(0) + 24);
  v4 = sub_2517500AC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t ProtoComparatorExpressionConfiguration.Operation.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 6;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_2517444E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251748F34();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251744534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D215C8];
  sub_251742EDC(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  sub_25174976C(a1 + *(v8 + 20), v7, &qword_27F457F70, v4);
  v9 = sub_25175007C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_25175006C();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_2517496FC(v7, &qword_27F457F70, MEMORY[0x277D215C8]);
  }

  return result;
}

uint64_t sub_2517446CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25175007C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *(type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0) + 20);
  sub_2517496FC(a2 + v8, &qword_27F457F70, MEMORY[0x277D215C8]);
  (*(v5 + 32))(a2 + v8, v7, v4);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoComparatorExpressionConfiguration.Operands.leftArgument.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0) + 20);
  sub_2517496FC(v1 + v3, &qword_27F457F70, MEMORY[0x277D215C8]);
  v4 = sub_25175007C();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoComparatorExpressionConfiguration.Operands.leftArgument.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_251742EDC(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_25175007C();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0) + 20);
  *(v5 + 12) = v16;
  sub_25174976C(v1 + v16, v9, &qword_27F457F70, MEMORY[0x277D215C8]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_25175006C();
    if (v17(v9, 1, v10) != 1)
    {
      sub_2517496FC(v9, &qword_27F457F70, MEMORY[0x277D215C8]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_251744B38;
}

BOOL ProtoComparatorExpressionConfiguration.Operands.hasLeftArgument.getter()
{
  v1 = MEMORY[0x277D215C8];
  sub_251742EDC(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  sub_25174976C(v0 + *(v5 + 20), v4, &qword_27F457F70, v1);
  v6 = sub_25175007C();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_2517496FC(v4, &qword_27F457F70, v1);
  return v7;
}

Swift::Void __swiftcall ProtoComparatorExpressionConfiguration.Operands.clearLeftArgument()()
{
  v1 = *(type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0) + 20);
  sub_2517496FC(v0 + v1, &qword_27F457F70, MEMORY[0x277D215C8]);
  v2 = sub_25175007C();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_251744CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D215C8];
  sub_251742EDC(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  sub_25174976C(a1 + *(v8 + 24), v7, &qword_27F457F70, v4);
  v9 = sub_25175007C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_25175006C();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_2517496FC(v7, &qword_27F457F70, MEMORY[0x277D215C8]);
  }

  return result;
}

uint64_t sub_251744E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_25175007C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *(type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0) + 24);
  sub_2517496FC(a2 + v8, &qword_27F457F70, MEMORY[0x277D215C8]);
  (*(v5 + 32))(a2 + v8, v7, v4);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoComparatorExpressionConfiguration.Operands.rightArgument.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0) + 24);
  sub_2517496FC(v1 + v3, &qword_27F457F70, MEMORY[0x277D215C8]);
  v4 = sub_25175007C();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoComparatorExpressionConfiguration.Operands.rightArgument.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_251742EDC(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_25175007C();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0) + 24);
  *(v5 + 12) = v16;
  sub_25174976C(v1 + v16, v9, &qword_27F457F70, MEMORY[0x277D215C8]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_25175006C();
    if (v17(v9, 1, v10) != 1)
    {
      sub_2517496FC(v9, &qword_27F457F70, MEMORY[0x277D215C8]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_251749930;
}

void sub_2517452F0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_2517496FC(v9 + v3, &qword_27F457F70, MEMORY[0x277D215C8]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_2517496FC(v9 + v3, &qword_27F457F70, MEMORY[0x277D215C8]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL ProtoComparatorExpressionConfiguration.Operands.hasRightArgument.getter()
{
  v1 = MEMORY[0x277D215C8];
  sub_251742EDC(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  sub_25174976C(v0 + *(v5 + 24), v4, &qword_27F457F70, v1);
  v6 = sub_25175007C();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_2517496FC(v4, &qword_27F457F70, v1);
  return v7;
}

Swift::Void __swiftcall ProtoComparatorExpressionConfiguration.Operands.clearRightArgument()()
{
  v1 = *(type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0) + 24);
  sub_2517496FC(v0 + v1, &qword_27F457F70, MEMORY[0x277D215C8]);
  v2 = sub_25175007C();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t ProtoComparatorExpressionConfiguration.Operands.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2517500AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ProtoComparatorExpressionConfiguration.Operands.unknownFields.setter(uint64_t a1)
{
  v3 = sub_2517500AC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ProtoComparatorExpressionConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = *(type metadata accessor for ProtoComparatorExpressionConfiguration(0) + 20);
  v3 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands(0);
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  return sub_25175009C();
}

uint64_t sub_2517457BC()
{
  v0 = sub_25175026C();
  __swift_allocate_value_buffer(v0, qword_27F458730);
  __swift_project_value_buffer(v0, qword_27F458730);
  sub_251742EDC(0, &qword_27F458038, sub_25172CD04, MEMORY[0x277D84560]);
  sub_25172CD04(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251752E70;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "operation";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25175024C();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "doubles";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "strings";
  *(v12 + 8) = 7;
  *(v12 + 16) = 2;
  v10();
  return sub_25175025C();
}

uint64_t ProtoComparatorExpressionConfiguration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_25175011C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_251746148(v5, a1, a2, a3);
          break;
        case 2:
          sub_251745AEC(v5, a1, a2, a3);
          break;
        case 1:
          sub_251748F34();
          sub_25175014C();
          break;
      }

      result = sub_25175011C();
    }
  }

  return result;
}

uint64_t sub_251745AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands;
  v9 = MEMORY[0x277D83D88];
  sub_251742EDC(0, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251742EDC(0, &qword_27F458828, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for ProtoComparatorExpressionConfiguration(0) + 20);
  sub_25174976C(v48 + v37, v12, &qword_27F458720, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_2517496FC(v12, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_251749694(v12, v19, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
    sub_251749694(v19, v17, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_251743838(v17, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
      v27 = v44;
    }

    else
    {
      sub_2517496FC(v24, &qword_27F458828, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
      v29 = v39;
      sub_251749694(v17, v39, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
      sub_251749694(v29, v24, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }
  }

  v30 = v42;
  sub_251748F88(&qword_27F4587D0, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands, &protocol conformance descriptor for ProtoComparatorExpressionConfiguration.Operands);
  v31 = v43;
  sub_25175018C();
  if (v31)
  {
    return sub_2517496FC(v24, &qword_27F458828, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
  }

  sub_25174976C(v24, v30, &qword_27F458828, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_2517496FC(v24, &qword_27F458828, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
    return sub_2517496FC(v30, &qword_27F458828, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
  }

  else
  {
    v33 = v38;
    sub_251749694(v30, v38, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
    if (v26 != 1)
    {
      sub_25175012C();
    }

    sub_2517496FC(v24, &qword_27F458828, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
    v34 = v48;
    v35 = v37;
    sub_2517496FC(v48 + v37, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
    sub_251749694(v33, v34 + v35, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251746148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands;
  v9 = MEMORY[0x277D83D88];
  sub_251742EDC(0, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251742EDC(0, &qword_27F458828, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for ProtoComparatorExpressionConfiguration(0) + 20);
  sub_25174976C(v48 + v37, v12, &qword_27F458720, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_2517496FC(v12, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_251749694(v12, v19, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
    sub_251749694(v19, v17, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2517496FC(v24, &qword_27F458828, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
      v29 = v39;
      sub_251749694(v17, v39, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
      sub_251749694(v29, v24, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_251743838(v17, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_251748F88(&qword_27F4587D0, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands, &protocol conformance descriptor for ProtoComparatorExpressionConfiguration.Operands);
  v31 = v43;
  sub_25175018C();
  if (v31)
  {
    return sub_2517496FC(v24, &qword_27F458828, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
  }

  sub_25174976C(v24, v30, &qword_27F458828, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_2517496FC(v24, &qword_27F458828, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
    return sub_2517496FC(v30, &qword_27F458828, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
  }

  else
  {
    v33 = v38;
    sub_251749694(v30, v38, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
    if (v26 != 1)
    {
      sub_25175012C();
    }

    sub_2517496FC(v24, &qword_27F458828, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
    v34 = v48;
    v35 = v37;
    sub_2517496FC(v48 + v37, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
    sub_251749694(v33, v34 + v35, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t ProtoComparatorExpressionConfiguration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  sub_251742EDC(0, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  if (*v3)
  {
    v13 = *(v3 + 8);
    v17 = *v3;
    v18 = v13;
    sub_251748F34();
    result = sub_2517501FC();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v15 = type metadata accessor for ProtoComparatorExpressionConfiguration(0);
  sub_25174976C(v6 + *(v15 + 20), v12, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  v16 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands(0);
  if ((*(*(v16 - 8) + 48))(v12, 1, v16) == 1)
  {
    return sub_25175008C();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_251746C30(v6, a1, a2, a3);
  }

  else
  {
    sub_2517469BC(v6, a1, a2, a3);
  }

  result = sub_251743838(v12, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  if (!v5)
  {
    return sub_25175008C();
  }

  return result;
}

uint64_t sub_2517469BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251742EDC(0, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProtoComparatorExpressionConfiguration(0);
  sub_25174976C(a1 + *(v11 + 20), v7, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  v12 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_2517496FC(v7, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_251749694(v7, v10, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
    sub_251748F88(&qword_27F4587D0, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands, &protocol conformance descriptor for ProtoComparatorExpressionConfiguration.Operands);
    sub_25175023C();
    return sub_251743838(v10, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
  }

  result = sub_251743838(v7, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  __break(1u);
  return result;
}

uint64_t sub_251746C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251742EDC(0, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProtoComparatorExpressionConfiguration(0);
  sub_25174976C(a1 + *(v11 + 20), v7, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  v12 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_2517496FC(v7, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_251749694(v7, v10, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
    sub_251748F88(&qword_27F4587D0, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands, &protocol conformance descriptor for ProtoComparatorExpressionConfiguration.Operands);
    sub_25175023C();
    return sub_251743838(v10, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
  }

  result = sub_251743838(v7, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  __break(1u);
  return result;
}

uint64_t sub_251746EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v3 = *(a1 + 20);
  v4 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands(0);
  (*(*(v4 - 8) + 56))(a2 + v3, 1, 1, v4);
  return sub_25175009C();
}

uint64_t sub_251746F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_2517500AC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251747008(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_2517500AC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2517470D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251748F88(&qword_27F458818, type metadata accessor for ProtoComparatorExpressionConfiguration, &protocol conformance descriptor for ProtoComparatorExpressionConfiguration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251747170(uint64_t a1)
{
  v2 = sub_251748F88(&qword_27F458728, type metadata accessor for ProtoComparatorExpressionConfiguration, &protocol conformance descriptor for ProtoComparatorExpressionConfiguration);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2517471DC(uint64_t a1, uint64_t a2)
{
  sub_251748F88(&qword_27F458728, type metadata accessor for ProtoComparatorExpressionConfiguration, &protocol conformance descriptor for ProtoComparatorExpressionConfiguration);

  return sub_2517501CC();
}

uint64_t sub_25174725C()
{
  v0 = sub_25175026C();
  __swift_allocate_value_buffer(v0, qword_27F458748);
  __swift_project_value_buffer(v0, qword_27F458748);
  sub_251742EDC(0, &qword_27F458038, sub_25172CD04, MEMORY[0x277D84560]);
  sub_25172CD04(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_251752E80;
  v5 = v19 + v4 + *(v2 + 56);
  *(v19 + v4) = 0;
  *v5 = "OPERATION_LESS_THAN";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_25175024C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v19 + v4 + v3 + *(v2 + 56);
  *(v19 + v4 + v3) = 1;
  *v9 = "OPERATION_LESS_THAN_OR_EQUAL_TO";
  *(v9 + 8) = 31;
  *(v9 + 16) = 2;
  v8();
  v10 = (v19 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 2;
  *v11 = "OPERATION_EQUAL_TO";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v19 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "OPERATION_NOT_EQUAL_TO";
  *(v13 + 1) = 22;
  v13[16] = 2;
  v8();
  v14 = (v19 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "OPERATION_GREATER_THAN";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v19 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "OPERATION_GREATER_THAN_OR_EQUAL_TO";
  *(v17 + 1) = 34;
  v17[16] = 2;
  v8();
  return sub_25175025C();
}

uint64_t sub_251747598()
{
  v0 = sub_25175026C();
  __swift_allocate_value_buffer(v0, qword_27F458760);
  __swift_project_value_buffer(v0, qword_27F458760);
  sub_251742EDC(0, &qword_27F458038, sub_25172CD04, MEMORY[0x277D84560]);
  sub_25172CD04(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251750B10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "leftArgument";
  *(v7 + 8) = 12;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25175024C();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "rightArgument";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v10();
  return sub_25175025C();
}

uint64_t ProtoComparatorExpressionConfiguration.Operands.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_25175011C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_251747830(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_2517478E4(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_251747830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  sub_25175007C();
  sub_251748F88(&qword_27F458030, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  return sub_25175018C();
}

uint64_t sub_2517478E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  sub_25175007C();
  sub_251748F88(&qword_27F458030, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  return sub_25175018C();
}

uint64_t ProtoComparatorExpressionConfiguration.Operands.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251747A08(v3, a1, a2, a3);
  if (!v4)
  {
    sub_251747C54(v3, a1, a2, a3);
    return sub_25175008C();
  }

  return result;
}

uint64_t sub_251747A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = MEMORY[0x277D215C8];
  sub_251742EDC(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  v9 = sub_25175007C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  sub_25174976C(a1 + *(v13 + 20), v8, &qword_27F457F70, v5);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_2517496FC(v8, &qword_27F457F70, MEMORY[0x277D215C8]);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_251748F88(&qword_27F458030, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  sub_25175023C();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_251747C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = MEMORY[0x277D215C8];
  sub_251742EDC(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  v9 = sub_25175007C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  sub_25174976C(a1 + *(v13 + 24), v8, &qword_27F457F70, v5);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_2517496FC(v8, &qword_27F457F70, MEMORY[0x277D215C8]);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_251748F88(&qword_27F458030, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  sub_25175023C();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_251747EE8(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_2517505BC();
  a1(0);
  sub_251748F88(a2, a3, a4);
  sub_2517502CC();
  return sub_2517505DC();
}

uint64_t sub_251747FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251748F88(&qword_27F458810, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands, &protocol conformance descriptor for ProtoComparatorExpressionConfiguration.Operands);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25174805C(uint64_t a1)
{
  v2 = sub_251748F88(&qword_27F4587D0, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands, &protocol conformance descriptor for ProtoComparatorExpressionConfiguration.Operands);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2517480C8(uint64_t a1, uint64_t a2)
{
  sub_251748F88(&qword_27F4587D0, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands, &protocol conformance descriptor for ProtoComparatorExpressionConfiguration.Operands);

  return sub_2517501CC();
}

uint64_t _s17HealthExpressions38ProtoComparatorExpressionConfigurationV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251742EDC(0, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - v9;
  sub_2517497EC(0, &qword_27F458820, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = *a1;
  v16 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v16 > 2)
    {
      if (v16 == 3)
      {
        if (v15 != 3)
        {
          goto LABEL_18;
        }
      }

      else if (v16 == 4)
      {
        if (v15 != 4)
        {
          goto LABEL_18;
        }
      }

      else if (v15 != 5)
      {
        goto LABEL_18;
      }
    }

    else if (v16)
    {
      if (v16 == 1)
      {
        if (v15 != 1)
        {
          goto LABEL_18;
        }
      }

      else if (v15 != 2)
      {
        goto LABEL_18;
      }
    }

    else if (v15)
    {
      goto LABEL_18;
    }
  }

  else if (v15 != v16)
  {
    goto LABEL_18;
  }

  v17 = type metadata accessor for ProtoComparatorExpressionConfiguration(0);
  v18 = a1;
  v25[0] = v17;
  v25[1] = a1;
  v19 = *(v17 + 20);
  v20 = *(v12 + 48);
  sub_25174976C(v18 + v19, v14, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  sub_25174976C(a2 + v19, &v14[v20], &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  v21 = *(v5 + 48);
  if (v21(v14, 1, v4) == 1)
  {
    if (v21(&v14[v20], 1, v4) == 1)
    {
      sub_2517496FC(v14, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
LABEL_21:
      sub_2517500AC();
      sub_251748F88(&qword_27F458020, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v22 = sub_25175031C();
      return v22 & 1;
    }

    goto LABEL_17;
  }

  sub_25174976C(v14, v10, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  if (v21(&v14[v20], 1, v4) == 1)
  {
    sub_251743838(v10, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
LABEL_17:
    sub_251749638(v14, &qword_27F458820, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
    goto LABEL_18;
  }

  sub_251749694(&v14[v20], v7, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  v24 = _s17HealthExpressions38ProtoComparatorExpressionConfigurationV14OneOf_OperandsO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_251743838(v7, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  sub_251743838(v10, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  sub_2517496FC(v14, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  if (v24)
  {
    goto LABEL_21;
  }

LABEL_18:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s17HealthExpressions38ProtoComparatorExpressionConfigurationV8OperandsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25175007C();
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x277D215C8];
  sub_251742EDC(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v40 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v38[-v10];
  sub_2517497EC(0, &qword_27F458018, &qword_27F457F70, v6);
  v13 = v12;
  v14 = MEMORY[0x28223BE20](v12);
  v43 = &v38[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v38[-v16];
  v42 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  v18 = *(v42 + 20);
  v19 = *(v13 + 48);
  v44 = a1;
  v20 = a1 + v18;
  v21 = v46;
  sub_25174976C(v20, v17, &qword_27F457F70, v6);
  v45 = a2;
  sub_25174976C(a2 + v18, &v17[v19], &qword_27F457F70, v6);
  v22 = *(v21 + 48);
  if (v22(v17, 1, v4) != 1)
  {
    sub_25174976C(v17, v11, &qword_27F457F70, MEMORY[0x277D215C8]);
    if (v22(&v17[v19], 1, v4) != 1)
    {
      v25 = v41;
      (*(v21 + 32))(v41, &v17[v19], v4);
      sub_251748F88(&qword_27F458028, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
      v39 = sub_25175031C();
      v26 = *(v21 + 8);
      v26(v25, v4);
      v26(v11, v4);
      sub_2517496FC(v17, &qword_27F457F70, MEMORY[0x277D215C8]);
      if ((v39 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    (*(v21 + 8))(v11, v4);
LABEL_6:
    v23 = MEMORY[0x277D215C8];
    v24 = v17;
LABEL_14:
    sub_251749638(v24, &qword_27F458018, &qword_27F457F70, v23);
    goto LABEL_15;
  }

  if (v22(&v17[v19], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_2517496FC(v17, &qword_27F457F70, MEMORY[0x277D215C8]);
LABEL_8:
  v27 = v43;
  v28 = *(v42 + 24);
  v29 = *(v13 + 48);
  v30 = MEMORY[0x277D215C8];
  sub_25174976C(v44 + v28, v43, &qword_27F457F70, MEMORY[0x277D215C8]);
  sub_25174976C(v45 + v28, &v27[v29], &qword_27F457F70, v30);
  if (v22(v27, 1, v4) == 1)
  {
    if (v22(&v27[v29], 1, v4) == 1)
    {
      sub_2517496FC(v27, &qword_27F457F70, MEMORY[0x277D215C8]);
LABEL_18:
      sub_2517500AC();
      sub_251748F88(&qword_27F458020, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_25175031C();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v40;
  sub_25174976C(v27, v40, &qword_27F457F70, MEMORY[0x277D215C8]);
  if (v22(&v27[v29], 1, v4) == 1)
  {
    (*(v21 + 8))(v31, v4);
LABEL_13:
    v23 = MEMORY[0x277D215C8];
    v24 = v27;
    goto LABEL_14;
  }

  v34 = v41;
  (*(v21 + 32))(v41, &v27[v29], v4);
  sub_251748F88(&qword_27F458028, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v35 = v31;
  v36 = sub_25175031C();
  v37 = *(v21 + 8);
  v37(v34, v4);
  v37(v35, v4);
  sub_2517496FC(v27, &qword_27F457F70, MEMORY[0x277D215C8]);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s17HealthExpressions38ProtoComparatorExpressionConfigurationV14OneOf_OperandsO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  sub_251749864(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 56);
  sub_2517498C8(a1, v19, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  sub_2517498C8(a2, &v19[v20], type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2517498C8(v19, v13, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_251749694(&v19[v20], v7, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
      v21 = _s17HealthExpressions38ProtoComparatorExpressionConfigurationV8OperandsV2eeoiySbAE_AEtFZ_0(v13, v7);
      v9 = v7;
      v15 = v13;
LABEL_8:
      sub_251743838(v9, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
      v22 = type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands;
      goto LABEL_9;
    }

    v22 = sub_251749864;
    v21 = 0;
    v15 = v13;
  }

  else
  {
    sub_2517498C8(v19, v15, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_251749694(&v19[v20], v9, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
      v21 = _s17HealthExpressions38ProtoComparatorExpressionConfigurationV8OperandsV2eeoiySbAE_AEtFZ_0(v15, v9);
      goto LABEL_8;
    }

    v22 = sub_251749864;
    v21 = 0;
  }

LABEL_9:
  sub_251743838(v15, type metadata accessor for ProtoComparatorExpressionConfiguration.Operands);
  sub_251743838(v19, v22);
  return v21 & 1;
}

unint64_t sub_251748F34()
{
  result = qword_27F458778;
  if (!qword_27F458778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458778);
  }

  return result;
}

uint64_t sub_251748F88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_251748FD4()
{
  result = qword_27F458790;
  if (!qword_27F458790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458790);
  }

  return result;
}

unint64_t sub_25174902C()
{
  result = qword_27F458798;
  if (!qword_27F458798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458798);
  }

  return result;
}

void sub_2517490C8()
{
  if (!qword_27F4587A8)
  {
    v0 = sub_25175038C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4587A8);
    }
  }
}

unint64_t sub_25174911C()
{
  result = qword_27F4587B0;
  if (!qword_27F4587B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4587B0);
  }

  return result;
}

void sub_2517493D8(uint64_t a1)
{
  sub_251742EDC(319, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2517500AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2517494EC(uint64_t a1)
{
  result = type metadata accessor for ProtoComparatorExpressionConfiguration.Operands(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251749584(uint64_t a1)
{
  sub_2517500AC();
  if (v1 <= 0x3F)
  {
    sub_251742EDC(319, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_251749638(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2517497EC(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_251749694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2517496FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251742EDC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25174976C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251742EDC(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2517497EC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_251742EDC(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_251749864(uint64_t a1)
{
  if (!qword_27F458830)
  {
    type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F458830);
    }
  }
}

uint64_t sub_2517498C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t CodableLiteralExpressionConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_25175041C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v16 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = a1[3];
  v18 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2517505FC();
  if (!v2)
  {
    v16[8] = v8;
    v16[9] = v11;
    v13 = v17;
    v16[10] = v5;
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    v14 = sub_25175051C() & 1;
    __swift_destroy_boxed_opaque_existential_1(v19);
    *v13 = v14;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

unint64_t sub_251749F44()
{
  result = qword_27F458120;
  if (!qword_27F458120)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F458120);
  }

  return result;
}

unint64_t sub_251749FA8()
{
  result = qword_27F458838;
  if (!qword_27F458838)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F458838);
  }

  return result;
}

uint64_t CodableLiteralExpressionConstructor.constructExpression(from:factory:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      v5 = MEMORY[0x277D839F8];
      sub_25173CE34(0, &qword_27F4585C0, MEMORY[0x277D839F8], a2);
      a3[3] = v6;
      result = sub_25173CDE4(&qword_27F4585C8, &qword_27F4585C0, v5, v7);
      a3[4] = result;
      *a3 = v4;
    }

    else
    {
      v12 = a1[1];
      v13 = MEMORY[0x277D837D0];
      sub_25173CE34(0, &qword_27F4585B0, MEMORY[0x277D837D0], a2);
      a3[3] = v14;
      a3[4] = sub_25173CDE4(&qword_27F4585B8, &qword_27F4585B0, v13, v15);
      *a3 = v4;
      a3[1] = v12;
    }
  }

  else
  {
    v9 = MEMORY[0x277D839B0];
    sub_25173CE34(0, &qword_27F4585D0, MEMORY[0x277D839B0], a2);
    a3[3] = v10;
    result = sub_25173CDE4(&qword_27F4585D8, &qword_27F4585D0, v9, v11);
    a3[4] = result;
    *a3 = v4 & 1;
  }

  return result;
}

uint64_t sub_25174A158@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      v5 = MEMORY[0x277D839F8];
      sub_25173CE34(0, &qword_27F4585C0, MEMORY[0x277D839F8], a2);
      a3[3] = v6;
      result = sub_25173CDE4(&qword_27F4585C8, &qword_27F4585C0, v5, v7);
      a3[4] = result;
      *a3 = v4;
    }

    else
    {
      v12 = a1[1];
      v13 = MEMORY[0x277D837D0];
      sub_25173CE34(0, &qword_27F4585B0, MEMORY[0x277D837D0], a2);
      a3[3] = v14;
      a3[4] = sub_25173CDE4(&qword_27F4585B8, &qword_27F4585B0, v13, v15);
      *a3 = v4;
      a3[1] = v12;
    }
  }

  else
  {
    v9 = MEMORY[0x277D839B0];
    sub_25173CE34(0, &qword_27F4585D0, MEMORY[0x277D839B0], a2);
    a3[3] = v10;
    result = sub_25173CDE4(&qword_27F4585D8, &qword_27F4585D0, v9, v11);
    a3[4] = result;
    *a3 = v4 & 1;
  }

  return result;
}

uint64_t CodableLiteralExpressionConfiguration.encode(to:)(void *a1)
{
  v2 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25175062C();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  if (v2)
  {
    if (v2 == 1)
    {
      sub_25175055C();
    }

    else
    {
      sub_25175053C();
    }
  }

  else
  {
    sub_25175054C();
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
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

uint64_t CodableLiteralExpressionConfiguration.init(BOOLeanLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

unsigned __int8 *sub_25174A40C@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

void CodableLiteralExpressionConfiguration.init(floatLiteral:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t CodableLiteralExpressionConfiguration.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 2;
  return result;
}

unint64_t sub_25174A444(uint64_t a1)
{
  *(a1 + 8) = sub_25174A474();
  result = sub_25174A4C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25174A474()
{
  result = qword_27F458840;
  if (!qword_27F458840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458840);
  }

  return result;
}

unint64_t sub_25174A4C8()
{
  result = qword_27F458848;
  if (!qword_27F458848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458848);
  }

  return result;
}

unint64_t sub_25174A544()
{
  result = qword_27F458850;
  if (!qword_27F458850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458850);
  }

  return result;
}

unint64_t sub_25174A59C()
{
  result = qword_27F458858;
  if (!qword_27F458858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458858);
  }

  return result;
}

uint64_t sub_25174A60C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25174A654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t ProtoLiteralExpressionConfiguration.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_25174A6D4(v2, v3, v4);
}

uint64_t sub_25174A6D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_25173CDCC(a1, a2, a3);
  }

  return a1;
}

uint64_t ProtoLiteralExpressionConfiguration.value.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_25174A728(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t sub_25174A728(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_25174A73C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_25174A73C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t ProtoLiteralExpressionConfiguration.BOOL.setter(char a1)
{
  v2 = a1 & 1;
  result = sub_25174A728(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  return result;
}

uint64_t (*ProtoLiteralExpressionConfiguration.BOOL.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = (*(v1 + 16) == 0) & *v1;
  return sub_25174A7FC;
}

uint64_t sub_25174A7FC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  result = sub_25174A728(**a1, v1[1], *(v1 + 16));
  *v1 = v2;
  v1[1] = 0;
  *(v1 + 16) = 0;
  return result;
}

uint64_t ProtoLiteralExpressionConfiguration.string.getter()
{
  if (*(v0 + 16) != 1)
  {
    return 0;
  }

  v2 = v0;
  v1 = *v0;
  sub_25173CDCC(v1, *(v2 + 8), 1);
  return v1;
}

uint64_t ProtoLiteralExpressionConfiguration.string.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25174A728(*v2, *(v2 + 8), *(v2 + 16));
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 16) = 1;
  return result;
}

uint64_t (*ProtoLiteralExpressionConfiguration.string.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if (*(v1 + 16) == 1)
  {
    v3 = *v1;
    v4 = *(v1 + 8);
    sub_25173CDCC(*v1, v4, 1);
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  *a1 = v3;
  a1[1] = v4;
  return sub_25174A940;
}

uint64_t sub_25174A940(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  if (a2)
  {

    sub_25174A728(v5, v6, v7);
    *v3 = v4;
    *(v3 + 8) = v2;
    *(v3 + 16) = 1;
  }

  else
  {
    result = sub_25174A728(*v3, *(v3 + 8), *(v3 + 16));
    *v3 = v4;
    *(v3 + 8) = v2;
    *(v3 + 16) = 1;
  }

  return result;
}

double ProtoLiteralExpressionConfiguration.double.getter()
{
  result = *v0;
  if (*(v0 + 16) != 2)
  {
    return 0.0;
  }

  return result;
}

uint64_t ProtoLiteralExpressionConfiguration.double.setter(double a1)
{
  result = sub_25174A728(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 2;
  return result;
}

uint64_t (*ProtoLiteralExpressionConfiguration.double.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 16) != 2)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_25174AA78;
}

uint64_t sub_25174AA78(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  result = sub_25174A728(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = 0;
  *(v1 + 16) = 2;
  return result;
}

uint64_t ProtoLiteralExpressionConfiguration.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProtoLiteralExpressionConfiguration(0) + 20);
  v4 = sub_2517500AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ProtoLiteralExpressionConfiguration(uint64_t a1)
{
  result = qword_27F458890;
  if (!qword_27F458890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProtoLiteralExpressionConfiguration.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoLiteralExpressionConfiguration(0) + 20);
  v4 = sub_2517500AC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProtoLiteralExpressionConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  type metadata accessor for ProtoLiteralExpressionConfiguration(0);
  return sub_25175009C();
}

uint64_t sub_25174ACA0()
{
  v0 = sub_25175026C();
  __swift_allocate_value_buffer(v0, qword_27F458860);
  __swift_project_value_buffer(v0, qword_27F458860);
  sub_25174BC5C(0);
  sub_25172CD04(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251752E70;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "BOOL";
  *(v7 + 8) = 4;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25175024C();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "string";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "double";
  *(v12 + 8) = 6;
  *(v12 + 16) = 2;
  v10();
  return sub_25175025C();
}

uint64_t static ProtoLiteralExpressionConfiguration._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F457F48 != -1)
  {
    swift_once();
  }

  v2 = sub_25175026C();
  v3 = __swift_project_value_buffer(v2, qword_27F458860);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ProtoLiteralExpressionConfiguration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_25175011C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_25174B170(a1, v5, a2, a3);
        break;
      case 2:
        sub_25174B0A4(a1, v5, a2, a3);
        break;
      case 1:
        sub_25174AFF8(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_25174B0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_25175016C();
  if (v4)
  {
  }

  return result;
}

uint64_t ProtoLiteralExpressionConfiguration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 16) > 1u)
  {
    if (*(v3 + 16) != 2)
    {
      goto LABEL_7;
    }

    result = sub_25175020C();
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (!*(v3 + 16))
    {
      result = sub_2517501EC();
      if (v4)
      {
        return result;
      }

      goto LABEL_7;
    }

    result = sub_25175021C();
    if (!v4)
    {
LABEL_7:
      type metadata accessor for ProtoLiteralExpressionConfiguration(0);
      return sub_25175008C();
    }
  }

  return result;
}

uint64_t ProtoLiteralExpressionConfiguration.hashValue.getter()
{
  sub_2517505BC();
  type metadata accessor for ProtoLiteralExpressionConfiguration(0);
  sub_25174BC14(&qword_27F458878, type metadata accessor for ProtoLiteralExpressionConfiguration, &protocol conformance descriptor for ProtoLiteralExpressionConfiguration);
  sub_2517502CC();
  return sub_2517505DC();
}

uint64_t sub_25174B390@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = -1;
  return sub_25175009C();
}

uint64_t sub_25174B408(uint64_t a1, uint64_t a2)
{
  v4 = sub_25174BC14(&qword_27F4588A8, type metadata accessor for ProtoLiteralExpressionConfiguration, &protocol conformance descriptor for ProtoLiteralExpressionConfiguration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25174B484@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F457F48 != -1)
  {
    swift_once();
  }

  v2 = sub_25175026C();
  v3 = __swift_project_value_buffer(v2, qword_27F458860);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25174B52C(uint64_t a1)
{
  v2 = sub_25174BC14(&qword_27F4585E0, type metadata accessor for ProtoLiteralExpressionConfiguration, &protocol conformance descriptor for ProtoLiteralExpressionConfiguration);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25174B598(uint64_t a1, uint64_t a2)
{
  sub_25174BC14(&qword_27F4585E0, type metadata accessor for ProtoLiteralExpressionConfiguration, &protocol conformance descriptor for ProtoLiteralExpressionConfiguration);

  return sub_2517501CC();
}

uint64_t _s17HealthExpressions35ProtoLiteralExpressionConfigurationV11OneOf_ValueO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_25174A73C(*a1, v3, 0);
      sub_25174A73C(v5, v6, 0);
      v11 = v5 ^ v2 ^ 1;
      return v11 & 1;
    }

    goto LABEL_15;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      sub_25174A73C(*a1, v3, 2);
      sub_25174A73C(v5, v6, 2);
      if (*&v2 == *&v5)
      {
        v11 = 1;
        return v11 & 1;
      }

LABEL_16:
      v11 = 0;
      return v11 & 1;
    }

LABEL_15:
    sub_25173CDCC(v5, v6, v7);
    sub_25174A73C(v2, v3, v4);
    sub_25174A73C(v5, v6, v7);
    goto LABEL_16;
  }

  if (v7 != 1)
  {

    goto LABEL_15;
  }

  if (v2 != v5 || v3 != v6)
  {
    v9 = sub_2517504FC();
    sub_25173CDCC(v5, v6, 1);
    sub_25173CDCC(v2, v3, 1);
    sub_25174A73C(v2, v3, 1);
    sub_25174A73C(v5, v6, 1);
    return v9 & 1;
  }

  v11 = 1;
  sub_25173CDCC(*a1, v3, 1);
  sub_25173CDCC(v2, v3, 1);
  sub_25174A73C(v2, v3, 1);
  sub_25174A73C(v2, v3, 1);
  return v11 & 1;
}

uint64_t _s17HealthExpressions35ProtoLiteralExpressionConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 != 255)
  {
    v13 = *a1;
    v14 = v2;
    v15 = v4;
    if (v7 != 255)
    {
      v10 = v6;
      v11 = v5;
      v12 = v7;
      sub_25174A6D4(v3, v2, v4);
      sub_25174A6D4(v6, v5, v7);
      sub_25174A6D4(v3, v2, v4);
      v8 = _s17HealthExpressions35ProtoLiteralExpressionConfigurationV11OneOf_ValueO2eeoiySbAE_AEtFZ_0(&v13, &v10);
      sub_25174A73C(v10, v11, v12);
      sub_25174A73C(v13, v14, v15);
      sub_25174A728(v3, v2, v4);
      if ((v8 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    sub_25174A6D4(v3, v2, v4);
    sub_25174A6D4(v6, v5, 255);
    sub_25174A6D4(v3, v2, v4);
    sub_25174A73C(v3, v2, v4);
LABEL_8:
    sub_25174A728(v3, v2, v4);
    sub_25174A728(v6, v5, v7);
    return 0;
  }

  sub_25174A6D4(*a1, v2, 255);
  if (v7 != 255)
  {
    sub_25174A6D4(v6, v5, v7);
    goto LABEL_8;
  }

  sub_25174A6D4(v6, v5, 255);
  sub_25174A728(v3, v2, 255);
LABEL_10:
  type metadata accessor for ProtoLiteralExpressionConfiguration(0);
  sub_2517500AC();
  sub_25174BC14(&qword_27F458020, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25175031C() & 1;
}

void sub_25174BB24(uint64_t a1)
{
  sub_25174BBA8();
  if (v1 <= 0x3F)
  {
    sub_2517500AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25174BBA8()
{
  if (!qword_27F4588A0)
  {
    v0 = sub_2517503CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4588A0);
    }
  }
}

uint64_t sub_25174BC14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_25174BC5C(uint64_t a1)
{
  if (!qword_27F458038)
  {
    sub_25172CD04(255);
    v1 = sub_2517504EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27F458038);
    }
  }
}

uint64_t ProtoOrExpressionConfiguration.arguments.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ProtoOrExpressionConfiguration.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProtoOrExpressionConfiguration(0) + 20);
  v4 = sub_2517500AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ProtoOrExpressionConfiguration(uint64_t a1)
{
  result = qword_27F4588E8;
  if (!qword_27F4588E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProtoOrExpressionConfiguration.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoOrExpressionConfiguration(0) + 20);
  v4 = sub_2517500AC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProtoOrExpressionConfiguration.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for ProtoOrExpressionConfiguration(0);
  return sub_25175009C();
}

uint64_t sub_25174BEF0()
{
  v0 = sub_25175026C();
  __swift_allocate_value_buffer(v0, qword_27F4588B0);
  __swift_project_value_buffer(v0, qword_27F4588B0);
  sub_251740378(0, &qword_27F458038, sub_25172CD04, MEMORY[0x277D84560]);
  sub_25172CD04(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_251751FD0;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "arguments";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_25175024C();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_25175025C();
}

uint64_t static ProtoOrExpressionConfiguration._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F457F50 != -1)
  {
    swift_once();
  }

  v2 = sub_25175026C();
  v3 = __swift_project_value_buffer(v2, qword_27F4588B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ProtoOrExpressionConfiguration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25175011C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_25175007C();
        sub_25174C85C(&qword_27F458030, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
        sub_25175017C();
      }

      result = sub_25175011C();
    }
  }

  return result;
}

uint64_t ProtoOrExpressionConfiguration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_25175007C(), sub_25174C85C(&qword_27F458030, MEMORY[0x277D215C8], MEMORY[0x277D215C0]), result = sub_25175022C(), !v4))
  {
    type metadata accessor for ProtoOrExpressionConfiguration(0);
    return sub_25175008C();
  }

  return result;
}

uint64_t static ProtoOrExpressionConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_25173FF20(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ProtoOrExpressionConfiguration(0);
  sub_2517500AC();
  sub_25174C85C(&qword_27F458020, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25175031C() & 1;
}

uint64_t ProtoOrExpressionConfiguration.hashValue.getter()
{
  sub_2517505BC();
  type metadata accessor for ProtoOrExpressionConfiguration(0);
  sub_25174C85C(&qword_27F4588C8, type metadata accessor for ProtoOrExpressionConfiguration, &protocol conformance descriptor for ProtoOrExpressionConfiguration);
  sub_2517502CC();
  return sub_2517505DC();
}

uint64_t sub_25174C460(uint64_t a1, uint64_t a2)
{
  v4 = sub_25174C85C(&qword_27F4588F8, type metadata accessor for ProtoOrExpressionConfiguration, &protocol conformance descriptor for ProtoOrExpressionConfiguration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25174C4DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F457F50 != -1)
  {
    swift_once();
  }

  v2 = sub_25175026C();
  v3 = __swift_project_value_buffer(v2, qword_27F4588B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25174C584(uint64_t a1)
{
  v2 = sub_25174C85C(&qword_27F4588D8, type metadata accessor for ProtoOrExpressionConfiguration, &protocol conformance descriptor for ProtoOrExpressionConfiguration);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25174C5F0(uint64_t a1, uint64_t a2)
{
  sub_25174C85C(&qword_27F4588D8, type metadata accessor for ProtoOrExpressionConfiguration, &protocol conformance descriptor for ProtoOrExpressionConfiguration);

  return sub_2517501CC();
}

uint64_t sub_25174C66C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_25173FF20(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_2517500AC();
  sub_25174C85C(&qword_27F458020, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25175031C() & 1;
}

uint64_t sub_25174C85C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25174C8E8()
{
  v0 = sub_25175029C();
  __swift_allocate_value_buffer(v0, qword_27F458900);
  __swift_project_value_buffer(v0, qword_27F458900);
  return sub_25175028C();
}

uint64_t static Logger.expressions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F457F58 != -1)
  {
    swift_once();
  }

  v2 = sub_25175029C();
  v3 = __swift_project_value_buffer(v2, qword_27F458900);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ProtoExpressionFactory.expression<A>(from:valueType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = sub_25175005C();
  v10 = v8;
  v11 = v9;
  v12 = *(v3 + 16);
  if (*(v12 + 16) && (v13 = sub_2517303DC(v8, v9), (v14 & 1) != 0))
  {
    sub_25172FBB4(*(v12 + 56) + 40 * v13, &v38);

    sub_251726638(&v38, v40);
    v15 = v41;
    v16 = v42;
    v17 = __swift_project_boxed_opaque_existential_1(v40, v41);
    sub_25174D7F4(a1, v17, v15, v16, &v38);
    if (!v4)
    {
      sub_25172FBB4(&v38, &v36);
      sub_25173001C(0, &qword_27F458168, &protocol descriptor for HealthExpression);
      v43 = a2;
      swift_getExtendedExistentialTypeMetadata();
      if (swift_dynamicCast())
      {
        sub_251726638(&v35, a3);
      }

      else
      {
        v36 = 0;
        v37 = 0xE000000000000000;
        sub_2517503EC();
        MEMORY[0x253080820](0x63757274736E6F43, 0xEC00000020726F74);
        v21 = __swift_project_boxed_opaque_existential_1(v40, v41);
        MEMORY[0x28223BE20](v21);
        (*(v23 + 16))(&v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
        v24 = sub_25175032C();
        MEMORY[0x253080820](v24);

        MEMORY[0x253080820](0xD000000000000030, 0x8000000251753E90);
        __swift_project_boxed_opaque_existential_1(&v38, v39);
        swift_getAssociatedTypeWitness();
        *&v35 = swift_getMetatypeMetadata();
        swift_getMetatypeMetadata();
        v25 = sub_25175032C();
        MEMORY[0x253080820](v25);

        MEMORY[0x253080820](540877088, 0xE400000000000000);
        *&v35 = a2;
        swift_getMetatypeMetadata();
        v26 = sub_25175032C();
        MEMORY[0x253080820](v26);

        MEMORY[0x253080820](0x736572707845202ELL, 0xED00003D6E6F6973);
        v27 = __swift_project_boxed_opaque_existential_1(&v38, v39);
        MEMORY[0x28223BE20](v27);
        (*(v29 + 16))(&v34 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
        v30 = sub_25175032C();
        MEMORY[0x253080820](v30);

        v31 = v36;
        v32 = v37;
        sub_2517315B0();
        swift_allocError();
        *v33 = v31;
        *(v33 + 8) = v32;
        *(v33 + 16) = 1;
        swift_willThrow();
      }

      __swift_destroy_boxed_opaque_existential_1(&v38);
    }

    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_2517503EC();

    v40[0] = 0xD000000000000013;
    v40[1] = 0x8000000251753E70;
    MEMORY[0x253080820](v10, v11);

    MEMORY[0x253080820](0x7473676E6F6D6120, 0xE900000000000020);
    *&v38 = *(v12 + 16);
    v18 = sub_2517504DC();
    MEMORY[0x253080820](v18);

    MEMORY[0x253080820](0x7274736967657220, 0xEE00736E6F697461);
    sub_2517315B0();
    swift_allocError();
    *v19 = 0xD000000000000013;
    *(v19 + 8) = 0x8000000251753E70;
    *(v19 + 16) = 0;
    return swift_willThrow();
  }
}

unint64_t sub_25174CF44()
{
  sub_25174EEE4(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_251753BA0;
  *(v0 + 56) = &type metadata for AndExpressionConstructor;
  *(v0 + 64) = sub_25174EF4C();
  *(v0 + 96) = &type metadata for ComparatorExpressionConstructor;
  *(v0 + 104) = sub_25174EFA0();
  *(v0 + 136) = &type metadata for LiteralExpressionConstructor;
  *(v0 + 144) = sub_25174EFF4();
  *(v0 + 176) = &type metadata for NotExpressionConstructor;
  *(v0 + 184) = sub_25174F048();
  *(v0 + 216) = &type metadata for OrExpressionConstructor;
  *(v0 + 224) = sub_25174F09C();
  *(v0 + 256) = &type metadata for ArithmeticExpressionConstructor;
  *(v0 + 264) = sub_25174F0F0();
  *(v0 + 296) = &type metadata for CountTrueExpressionConstructor;
  result = sub_25174F144();
  *(v0 + 304) = result;
  qword_27F458918 = v0;
  return result;
}

uint64_t static ProtoExpressionFactory.defaultConstructors.getter()
{
  if (qword_27F457F60 != -1)
  {
    swift_once();
  }
}

uint64_t ProtoExpressionFactory.__allocating_init(allConstructors:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_25174D158(a1, v3);

  return v2;
}

uint64_t ProtoExpressionFactory.init(allConstructors:)(uint64_t a1, __n128 a2)
{
  *(v2 + 16) = sub_25174D158(a1, a2);

  return v2;
}

void *sub_25174D158(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = v2;
  v5 = a1 + 32;
  v6 = MEMORY[0x277D84F98];
  a2.n128_u64[0] = 136315906;
  v54 = a2;
  while (1)
  {
    sub_25172FBB4(v5, v61);
    v10 = sub_25174DB08(v61);
    if (!v11)
    {
      goto LABEL_4;
    }

    v12 = v10;
    v13 = v11;
    if (v6[2])
    {
      v14 = sub_2517303DC(v10, v11);
      if (v15)
      {
        sub_25172FBB4(v6[7] + 40 * v14, v60);
        if (qword_27F457F58 != -1)
        {
          swift_once();
        }

        v16 = sub_25175029C();
        __swift_project_value_buffer(v16, qword_27F458900);
        sub_25172FBB4(v61, v59);
        sub_25172FBB4(v60, v58);

        v17 = sub_25175027C();
        v18 = sub_2517503BC();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v57 = v56;
          *v19 = v54.n128_u32[0];
          v20 = sub_25175066C();
          v22 = sub_25174DF94(v20, v21, &v57);

          *(v19 + 4) = v22;
          *(v19 + 12) = 2080;
          v23 = sub_25174DF94(v12, v13, &v57);

          *(v19 + 14) = v23;
          *(v19 + 22) = 2080;
          v24 = __swift_project_boxed_opaque_existential_1(v59, v59[3]);
          MEMORY[0x28223BE20](v24);
          (*(v26 + 16))(&v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
          v27 = sub_25175032C();
          v29 = v28;
          __swift_destroy_boxed_opaque_existential_1(v59);
          v30 = sub_25174DF94(v27, v29, &v57);

          *(v19 + 24) = v30;
          *(v19 + 32) = 2080;
          v31 = __swift_project_boxed_opaque_existential_1(v58, v58[3]);
          MEMORY[0x28223BE20](v31);
          (*(v33 + 16))(&v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
          v34 = sub_25175032C();
          v36 = v35;
          __swift_destroy_boxed_opaque_existential_1(v58);
          v37 = sub_25174DF94(v34, v36, &v57);

          *(v19 + 34) = v37;
          v4 = v55;
          _os_log_impl(&dword_251725000, v17, v18, "[%s]: Duplicate registration for %s ignoring: %s in favor of existing %s", v19, 0x2Au);
          v38 = v56;
          swift_arrayDestroy();
          MEMORY[0x253080F10](v38, -1, -1);
          MEMORY[0x253080F10](v19, -1, -1);

          __swift_destroy_boxed_opaque_existential_1(v60);
LABEL_4:
          v9 = v61;
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v60);
          __swift_destroy_boxed_opaque_existential_1(v61);
          __swift_destroy_boxed_opaque_existential_1(v58);
          v9 = v59;
        }

        __swift_destroy_boxed_opaque_existential_1(v9);
        goto LABEL_6;
      }
    }

    sub_25172FBB4(v61, v60);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59[0] = v6;
    v40 = sub_2517303DC(v12, v13);
    v42 = v6[2];
    v43 = (v41 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
      break;
    }

    v46 = v41;
    if (v6[3] < v45)
    {
      sub_25174E7DC(v45, isUniquelyReferenced_nonNull_native);
      v40 = sub_2517303DC(v12, v13);
      if ((v46 & 1) != (v47 & 1))
      {
        goto LABEL_29;
      }

LABEL_19:
      if (v46)
      {
        goto LABEL_3;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v51 = v4;
    v52 = v40;
    sub_25174EC30();
    v40 = v52;
    v4 = v51;
    if (v46)
    {
LABEL_3:
      v7 = v40;

      v6 = v59[0];
      v8 = (*(v59[0] + 56) + 40 * v7);
      __swift_destroy_boxed_opaque_existential_1(v8);
      sub_251726638(v60, v8);
      goto LABEL_4;
    }

LABEL_20:
    v6 = v59[0];
    *(v59[0] + 8 * (v40 >> 6) + 64) |= 1 << v40;
    v48 = (v6[6] + 16 * v40);
    *v48 = v12;
    v48[1] = v13;
    sub_251726638(v60, v6[7] + 40 * v40);
    __swift_destroy_boxed_opaque_existential_1(v61);
    v49 = v6[2];
    v44 = __OFADD__(v49, 1);
    v50 = v49 + 1;
    if (v44)
    {
      goto LABEL_28;
    }

    v6[2] = v50;
LABEL_6:
    v5 += 40;
    if (!--v3)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_25175056C();
  __break(1u);
  return result;
}

uint64_t ProtoExpressionFactory.__allocating_init(additionalConstructors:)(uint64_t a1)
{
  if (qword_27F457F60 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v6 = a1;

  sub_251735028(v1);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_25174D158(v6, v3);

  return v2;
}

uint64_t sub_25174D7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28[2] = a2;
  v36 = a1;
  v28[1] = a5;
  v7 = sub_2517500CC();
  MEMORY[0x28223BE20](v7 - 8);
  v31 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25175007C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v28 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28[0] = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = v28 - v17;
  v29 = a3;
  v30 = a4;
  v19 = v36;
  swift_getAssociatedConformanceWitness();
  v20 = sub_25175003C();
  v21 = *(v10 + 16);
  if (v20)
  {
    v21(v15, v19, v9);
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    sub_2517500BC();
    v22 = v32;
    result = sub_25175019C();
    if (!v22)
    {
      (*(v30 + 24))(v18, v28[3], v29);
      return (*(v28[0] + 8))(v18, AssociatedTypeWitness);
    }
  }

  else
  {
    v21(v13, v19, v9);
    v24 = sub_25175032C();
    v26 = v25;
    sub_2517315B0();
    swift_allocError();
    *v27 = v24;
    *(v27 + 8) = v26;
    *(v27 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25174DB08(void *a1)
{
  v2 = sub_25175007C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v11[3] = swift_getAssociatedTypeWitness();
  v11[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v11);
  sub_25174DEB0(v6, v7);
  sub_2517500DC();
  sub_25175004C();
  v8 = sub_25175005C();
  (*(v3 + 8))(v5, v2);
  return v8;
}

uint64_t sub_25174DEB0(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_2517501DC();
}

uint64_t ProtoExpressionFactory.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_25174DF94(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25174E060(v11, 0, 0, 1, a1, a2);
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
    sub_251730458(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25174E060(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25174E16C(a5, a6);
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
    result = sub_25175042C();
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

void *sub_25174E16C(uint64_t a1, unint64_t a2)
{
  v3 = sub_25174E1B8(a1, a2);
  sub_25174E2E8(&unk_2863A10A0);
  return v3;
}

void *sub_25174E1B8(uint64_t a1, unint64_t a2)
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

  v6 = sub_25174E3D4(v5, 0);
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

  result = sub_25175042C();
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
        v10 = sub_25175035C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25174E3D4(v10, 0);
        result = sub_2517503DC();
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

uint64_t sub_25174E2E8(uint64_t result)
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

  result = sub_25174E43C(result, v11, 1, v3);
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

void *sub_25174E3D4(uint64_t a1, uint64_t a2)
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

  sub_25174EE1C();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25174E43C(char *result, int64_t a2, char a3, char *a4)
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
    sub_25174EE1C();
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

uint64_t sub_25174E524(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_25173C7D8(0);
  v33 = v4;
  result = sub_25175046C();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_251726638(v24, v34);
      }

      else
      {
        sub_25172FBB4(v24, v34);
      }

      sub_2517505BC();
      sub_25175033C();
      result = sub_2517505DC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_251726638(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_25174E7DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_25174EE6C(0);
  v33 = v4;
  result = sub_25175046C();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_251726638(v24, v34);
      }

      else
      {
        sub_25172FBB4(v24, v34);
      }

      sub_2517505BC();
      sub_25175033C();
      result = sub_2517505DC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_251726638(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_25174EA94()
{
  v1 = v0;
  sub_25173C7D8(0);
  v2 = *v0;
  v3 = sub_25175045C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_25172FBB4(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_251726638(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_25174EC30()
{
  v1 = v0;
  sub_25174EE6C(0);
  v2 = *v0;
  v3 = sub_25175045C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_25172FBB4(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_251726638(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_25174EE1C()
{
  if (!qword_27F458920)
  {
    v0 = sub_2517504EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F458920);
    }
  }
}

void sub_25174EE6C(uint64_t a1)
{
  if (!qword_27F458928)
  {
    sub_25173001C(255, &qword_27F458210, &protocol descriptor for ProtoExpressionConstructor);
    v1 = sub_25175048C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F458928);
    }
  }
}

void sub_25174EEE4(uint64_t a1)
{
  if (!qword_27F458218)
  {
    sub_25173001C(255, &qword_27F458210, &protocol descriptor for ProtoExpressionConstructor);
    v1 = sub_2517504EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27F458218);
    }
  }
}

unint64_t sub_25174EF4C()
{
  result = qword_27F458930;
  if (!qword_27F458930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458930);
  }

  return result;
}

unint64_t sub_25174EFA0()
{
  result = qword_27F458938;
  if (!qword_27F458938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458938);
  }

  return result;
}

unint64_t sub_25174EFF4()
{
  result = qword_27F458940;
  if (!qword_27F458940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458940);
  }

  return result;
}

unint64_t sub_25174F048()
{
  result = qword_27F458948;
  if (!qword_27F458948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458948);
  }

  return result;
}

unint64_t sub_25174F09C()
{
  result = qword_27F458950;
  if (!qword_27F458950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458950);
  }

  return result;
}

unint64_t sub_25174F0F0()
{
  result = qword_27F458958;
  if (!qword_27F458958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458958);
  }

  return result;
}

unint64_t sub_25174F144()
{
  result = qword_27F458960;
  if (!qword_27F458960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458960);
  }

  return result;
}

uint64_t AndExpression.arguments.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void sub_25174F218()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  v0[8] = v2;
  v0[9] = 0;
  if (v2)
  {
    if (*(v1 + 16))
    {
      sub_25172FBB4(v1 + 32, (v0 + 2));
      v3 = v0[5];
      v4 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
      v7 = (*(v4 + 24) + **(v4 + 24));
      v5 = swift_task_alloc();
      v0[10] = v5;
      *v5 = v0;
      v5[1] = sub_25174F3A8;

      v7(v0 + 12, v3, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v6 = v0[1];

    v6(1);
  }
}

uint64_t sub_25174F3A8()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  if (v0)
  {
    v3 = sub_251734900;
  }

  else
  {
    v3 = sub_25174F4C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_25174F4C4()
{
  v1 = *(v0 + 72);
  if (*(v0 + 96))
  {
    v2 = v1 + 1;
    *(v0 + 72) = v1 + 1;
    v1 = v2;
    if (v2 != *(v0 + 64))
    {
      v3 = *(v0 + 56);
      if (v2 >= *(v3 + 16))
      {
        __break(1u);
      }

      else
      {
        sub_25172FBB4(v3 + 40 * v2 + 32, v0 + 16);
        v4 = *(v0 + 40);
        v5 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
        v8 = (*(v5 + 24) + **(v5 + 24));
        v6 = swift_task_alloc();
        *(v0 + 80) = v6;
        *v6 = v0;
        v6[1] = sub_25174F3A8;

        v8(v0 + 96, v4, v5);
      }

      return;
    }
  }

  else
  {
    v2 = *(v0 + 64);
  }

  v7 = *(v0 + 8);

  v7(v1 == v2);
}

void sub_25174F6A4()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  v0[8] = v2;
  if (v2)
  {
    v0[9] = MEMORY[0x277D84F90];
    v0[10] = 0;
    if (*(v1 + 16))
    {
      sub_25172FBB4(v1 + 32, (v0 + 2));
      v3 = v0[5];
      v4 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
      v8 = (*(v4 + 16) + **(v4 + 16));
      v5 = swift_task_alloc();
      v0[11] = v5;
      *v5 = v0;
      v5[1] = sub_25174F83C;

      v8(v3, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v6 = v0[1];
    v7 = MEMORY[0x277D84F90];

    v6(v7);
  }
}

uint64_t sub_25174F83C(uint64_t a1)
{
  v3 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  __swift_destroy_boxed_opaque_existential_1(v3 + 2);
  if (v1)
  {

    v4 = sub_251734EAC;
  }

  else
  {
    v4 = sub_25174F96C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void *sub_25174F96C()
{
  v1 = v0[12];
  result = v0[9];
  v3 = *(v1 + 16);
  v4 = result[2];
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0[9];
  if (result && v5 <= v6[3] >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v3;
  }

  else
  {
    v10 = v4;
  }

  result = sub_251735374(result, v10, 1, v0[9]);
  v6 = result;
  if (!*(v1 + 16))
  {
LABEL_13:

    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_5:
  if ((v6[3] >> 1) - v6[2] < v3)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_251738854();
  swift_arrayInitWithCopy();

  if (v3)
  {
    v7 = v6[2];
    v8 = __OFADD__(v7, v3);
    v9 = v7 + v3;
    if (v8)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v6[2] = v9;
  }

LABEL_14:
  v11 = v0[10] + 1;
  if (v11 == v0[8])
  {
    v12 = v0[1];

    return v12(v6);
  }

  v0[9] = v6;
  v0[10] = v11;
  v13 = v0[7];
  if (v11 >= *(v13 + 16))
  {
    goto LABEL_25;
  }

  sub_25172FBB4(v13 + 40 * v11 + 32, (v0 + 2));
  v14 = v0[5];
  v15 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v14);
  v17 = (*(v15 + 16) + **(v15 + 16));
  v16 = swift_task_alloc();
  v0[11] = v16;
  *v16 = v0;
  v16[1] = sub_25174F83C;

  return v17(v14, v15);
}

uint64_t sub_25174FBE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2517350D0;

  return AndExpression.orchestrationInputSignals()();
}

uint64_t sub_25174FC74(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_251735260;

  return AndExpression.resolve()();
}

uint64_t OrExpressionConstructor.constructExpression(from:factory:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v25 = a2;
  v6 = sub_25175007C();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v24 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(*a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v19 = a3;
    v20 = v11;
    v27 = MEMORY[0x277D84F90];
    result = sub_2517329BC(0, v11, 0);
    v13 = 0;
    v12 = v27;
    v22 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v21 = v7 + 16;
    v23 = (v7 + 8);
    while (v13 < *(v10 + 16))
    {
      v14 = v24;
      (*(v7 + 16))(v24, v22 + *(v7 + 72) * v13, v6);
      sub_251730CCC(v14, v26);
      if (v3)
      {
        (*v23)(v14, v6);
      }

      v15 = v7;
      v16 = v6;
      (*v23)(v14, v6);
      v27 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2517329BC((v17 > 1), v18 + 1, 1);
        v12 = v27;
      }

      ++v13;
      *(v12 + 16) = v18 + 1;
      result = sub_25172F5E8(v26, v12 + 40 * v18 + 32);
      v6 = v16;
      v7 = v15;
      if (v20 == v13)
      {
        a3 = v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    a3[3] = &type metadata for OrExpression;
    a3[4] = &protocol witness table for OrExpression;
    *a3 = v12;
  }

  return result;
}

unint64_t sub_25174FF84()
{
  result = qword_27F4588D8;
  if (!qword_27F4588D8)
  {
    type metadata accessor for ProtoOrExpressionConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4588D8);
  }

  return result;
}