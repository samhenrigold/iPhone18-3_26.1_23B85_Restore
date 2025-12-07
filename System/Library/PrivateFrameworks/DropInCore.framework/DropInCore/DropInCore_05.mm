unint64_t sub_249E600B4()
{
  result = qword_27EF24148;
  if (!qword_27EF24148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF24148);
  }

  return result;
}

uint64_t sub_249E60134@<X0>(void *a2@<X8>)
{
  sub_249E7A5D8();
  sub_249DFC4FC();
  v3 = sub_249E7AFD8();

  if (v3[2] >= 5uLL)
  {
    v7 = v3[5];
    v8 = v3[7];
    v13 = v3[6];
    v14 = v3[4];
    v4 = v3[8];
    v9 = v3[9];
    v5 = v3[10];
    v10 = v3[11];
    v6 = v3[12];
    v11 = v3[13];
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0xE000000000000000;
    v8 = 0xE000000000000000;
    v9 = 0xE000000000000000;
    v10 = 0xE000000000000000;
    v11 = 0xE000000000000000;
  }

  *a2 = v14;
  a2[1] = v7;
  a2[2] = v13;
  a2[3] = v8;
  a2[4] = v4;
  a2[5] = v9;
  a2[6] = v5;
  a2[7] = v10;
  a2[8] = v6;
  a2[9] = v11;
  return result;
}

uint64_t sub_249E60260(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_249E602A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_249E60304(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_249E7B318() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_249E7B318() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (sub_249E7B318() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[6] == a2[6] && a1[7] == a2[7];
  if (!v7 && (sub_249E7B318() & 1) == 0)
  {
    return 0;
  }

  if (a1[8] == a2[8] && a1[9] == a2[9])
  {
    return 1;
  }

  return sub_249E7B318();
}

void *sub_249E603F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_249E7A6B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  sub_249E7A6A8();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtC10DropInCore24HomeParticipantValidator_logger, v12, v9);
  return v4;
}

uint64_t sub_249E6051C()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC10DropInCore24HomeParticipantValidator_logger;
  v2 = sub_249E7A6B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_249E60594()
{
  sub_249E6051C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for HomeParticipantValidator(uint64_t a1)
{
  result = qword_28130D690;
  if (!qword_28130D690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E60640(uint64_t a1)
{
  result = sub_249E7A6B8();
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

id sub_249E606F4(void *a1)
{
  v1 = a1;
  HMUser.description.getter();

  v2 = sub_249E7AA88();

  return v2;
}

uint64_t HMUser.description.getter()
{
  v1 = v0;
  v2 = sub_249E7A628();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_249E7B128();

  v15 = 0x204449726573555BLL;
  v16 = 0xEA0000000000203DLL;
  v6 = sub_249E60944(v0);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v10 = [v0 name];
    v8 = sub_249E7AAA8();
    v9 = v11;
  }

  MEMORY[0x24C204750](v8, v9);

  MEMORY[0x24C204750](0x69746E656449202CLL, 0xEF203D2072656966);
  v12 = [v1 uniqueIdentifier];
  sub_249E7A608();

  sub_249DF49D8();
  v13 = sub_249E7B2D8();
  MEMORY[0x24C204750](v13);

  (*(v3 + 8))(v5, v2);
  MEMORY[0x24C204750](93, 0xE100000000000000);
  return v15;
}

uint64_t sub_249E60944(void *a1)
{
  v1 = [a1 userID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_249E7AAA8();

  return v3;
}

uint64_t sub_249E609A8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = (v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (v49 - v9);
  v11 = sub_249E7A628();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v49 - v16;
  sub_249E55870(0x696E6F6973736573, 0xE900000000000064, a1, &v54);
  if (!v55)
  {
    goto LABEL_10;
  }

  v56 = v2;
  if ((OUTLINED_FUNCTION_0_16(v18, v19, v20, MEMORY[0x277D837D0]) & 1) == 0)
  {
    goto LABEL_14;
  }

  v50 = a2;
  v51 = v12;
  sub_249E55870(0x6469656D6F68, 0xE600000000000000, a1, &v54);
  if (!v55)
  {

LABEL_10:

LABEL_11:
    v24 = &unk_27EF23C40;
    v25 = &qword_249E7D8E0;
    v26 = &v54;
    goto LABEL_12;
  }

  if ((OUTLINED_FUNCTION_0_16(v21, v22, v23, MEMORY[0x277D837D0]) & 1) == 0)
  {

LABEL_14:

    goto LABEL_15;
  }

  v49[0] = v52;
  v49[1] = v53;
  sub_249E7A5C8();

  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {

    v24 = &qword_27EF234B0;
    v25 = &qword_249E7D910;
    v26 = v10;
LABEL_12:
    sub_249DF6A78(v26, v24, v25);
LABEL_15:
    sub_249DFE8A4();
    swift_allocError();
    return swift_willThrow();
  }

  v28 = v10;
  v29 = *(v51 + 32);
  v29(v17, v28, v11);
  sub_249E7A5C8();

  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    v30 = OUTLINED_FUNCTION_13();
    v31(v30);

    v24 = &qword_27EF234B0;
    v25 = &qword_249E7D910;
    v26 = v8;
    goto LABEL_12;
  }

  v29(v15, v8, v11);
  sub_249E55870(0x726F727265, 0xE500000000000000, a1, &v54);

  if (!v55)
  {
    v42 = OUTLINED_FUNCTION_1_10();
    a1(v42);
    v43 = OUTLINED_FUNCTION_13();
    a1(v43);
    goto LABEL_11;
  }

  if ((OUTLINED_FUNCTION_0_16(v32, v33, v34, MEMORY[0x277CC9318]) & 1) == 0)
  {
    v44 = OUTLINED_FUNCTION_1_10();
    a1(v44);
    v45 = OUTLINED_FUNCTION_13();
    a1(v45);
    goto LABEL_15;
  }

  v35 = v29;
  v37 = v52;
  v36 = v53;
  sub_249DF691C(0, &qword_27EF23528, 0x277CCAAC8);
  sub_249DF691C(0, &qword_28130D168, 0x277CCA9B8);
  v38 = v56;
  v39 = sub_249E7AE38();
  if (v38)
  {
    goto LABEL_21;
  }

  v46 = v39;
  if (!v39)
  {
    sub_249DFE8A4();
    swift_allocError();
    swift_willThrow();
LABEL_21:
    sub_249DFE8F8(v37, v36);
    v40 = *(v51 + 8);
    v40(v15, v11);
    v41 = OUTLINED_FUNCTION_13();
    return (v40)(v41);
  }

  sub_249DFE8F8(v37, v36);
  v47 = v50;
  v35(v50, v15, v11);
  v48 = type metadata accessor for DropInSessionFailureEvent(0);
  result = (v35)(v47 + *(v48 + 20), v17, v11);
  *(v47 + *(v48 + 24)) = v46;
  return result;
}

uint64_t sub_249E60EAC(uint64_t a1, uint64_t a2)
{
  if ((sub_249E7A5F8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DropInSessionFailureEvent(0);
  if ((sub_249E7A5F8() & 1) == 0)
  {
    return 0;
  }

  sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
  return sub_249E7AF78() & 1;
}

uint64_t sub_249E60F40()
{
  v15[23] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = *(v0 + *(type metadata accessor for DropInSessionFailureEvent(0) + 24));
  v15[0] = 0;
  v3 = [v1 archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v15];
  v4 = v15[0];
  if (v3)
  {
    v5 = sub_249E7A4F8();
    v7 = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249E7DF30;
    *(inited + 32) = 0x696E6F6973736573;
    *(inited + 40) = 0xE900000000000064;
    v9 = sub_249E7A5D8();
    v10 = MEMORY[0x277D837D0];
    *(inited + 48) = v9;
    *(inited + 56) = v11;
    *(inited + 72) = v10;
    *(inited + 80) = 0x6469656D6F68;
    *(inited + 88) = 0xE600000000000000;
    *(inited + 96) = sub_249E7A5D8();
    *(inited + 104) = v12;
    *(inited + 120) = v10;
    *(inited + 128) = 0x726F727265;
    *(inited + 168) = MEMORY[0x277CC9318];
    *(inited + 136) = 0xE500000000000000;
    *(inited + 144) = v5;
    *(inited + 152) = v7;
    return sub_249E7AA08();
  }

  else
  {
    v14 = v4;
    sub_249E7A4D8();

    return swift_willThrow();
  }
}

uint64_t sub_249E61124(uint64_t a1)
{
  result = sub_249E611F8(&qword_27EF24150, &unk_249E805C0);
  *(a1 + 32) = result;
  return result;
}

uint64_t type metadata accessor for DropInSessionFailureEvent(uint64_t a1)
{
  result = qword_28130E388;
  if (!qword_28130E388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E611B4(uint64_t a1)
{
  result = sub_249E611F8(&qword_27EF24158, &unk_249E805F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_249E611F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DropInSessionFailureEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249E6123C(uint64_t a1)
{
  result = sub_249E611F8(&qword_27EF24158, &unk_249E805F8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_249E612A8(uint64_t a1)
{
  result = sub_249E7A628();
  if (v2 <= 0x3F)
  {
    result = sub_249DF691C(319, &qword_28130D168, 0x277CCA9B8);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

id sub_249E61370()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  [v1 setDestinationDevice_];
  v2 = sub_249E7AA88();
  [v1 setServiceType_];

  return v1;
}

uint64_t sub_249E613F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](sub_249E6141C, 0, 0);
}

uint64_t sub_249E6141C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v5;
  *(v4 + 48) = v2;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24160, &qword_249E806A8);
  *v6 = v0;
  v6[1] = sub_249E6153C;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000021, 0x8000000249E831A0, sub_249E61B18, v4, v7);
}

uint64_t sub_249E6153C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_249E61674;
  }

  else
  {

    v2 = sub_249E61658;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_249E61674()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_249E616D8()
{
  v1 = sub_249E61DF8(v0);
  if (v1)
  {
    v2 = v1;
    v6[0] = 0xD000000000000016;
    v6[1] = 0x8000000249E82FB0;
    MEMORY[0x28223BE20](v1);
    v5[2] = v6;
    v3 = sub_249E365F8(sub_249E61F6C, v5, v2);
  }

  else
  {
    return 0;
  }

  return v3;
}

BOOL sub_249E61798()
{
  v1 = v0;
  v2 = sub_249E7A628();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v9 = [v1 homeKitIdentifier];
  if (v9)
  {
    sub_249E7A608();

    (*(v3 + 32))(v8, v5, v2);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v10, 1, v2);
  sub_249E61F8C(v8);
  return v9 != 0;
}

void sub_249E6190C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24168, &unk_249E806B0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = aBlock - v11;
  v13 = sub_249E7AA88();
  v14 = sub_249E7A9C8();
  (*(v10 + 16))(v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v12, v9);
  aBlock[4] = sub_249E61C24;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249E61CB8;
  aBlock[3] = &block_descriptor_7;
  v17 = _Block_copy(aBlock);

  sub_249E61E50(v13, v14, a6, v17, a2);
  _Block_release(v17);
}

uint64_t sub_249E61B28(void *a1, uint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24168, &unk_249E806B0);
    return sub_249E7AC38();
  }

  if (!a1 || (sub_249E57980(a1), !v5))
  {
    sub_249E61EEC();
    swift_allocError();
    goto LABEL_8;
  }

  if (!a2)
  {
    sub_249E7AA08();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24168, &unk_249E806B0);
  return sub_249E7AC48();
}

uint64_t sub_249E61C24(void *a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24168, &unk_249E806B0);

  return sub_249E61B28(a1, a2, a3);
}

uint64_t sub_249E61CB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_249E7A9D8();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    v5 = sub_249E7A9D8();
  }

LABEL_4:

  v8 = a4;
  v6(v7, v5, a4);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249E61DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_249E7B318() & 1;
  }
}

uint64_t sub_249E61DF8(void *a1)
{
  v1 = [a1 serviceTypes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_249E7ABE8();

  return v3;
}

void sub_249E61E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_249E7A9C8();
  [a5 sendRequestID:a1 request:a2 options:v9 responseHandler:a4];
}

unint64_t sub_249E61EEC()
{
  result = qword_27EF24170;
  if (!qword_27EF24170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF24170);
  }

  return result;
}

uint64_t sub_249E61F8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *_s26RPCompanionLinkClientErrorOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_249E620A4()
{
  result = qword_27EF24178;
  if (!qword_27EF24178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF24178);
  }

  return result;
}

uint64_t sub_249E620F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = sub_249E7B3F8();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 8 * v7) != a1);
  }

  return v2;
}

uint64_t sub_249E62184(double a1)
{
  sub_249E63CF8(&v2, a1 * 1000000000.0);
  if ((v3 & 1) == 0)
  {
    return v2;
  }

  v2 = 0;
  v3 = 0xE000000000000000;
  sub_249E7B128();
  MEMORY[0x24C204750](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x24C204750](0xD00000000000001ELL, 0x8000000249E832F0);
  MEMORY[0x24C204750](0x3436746E4955, 0xE600000000000000);
  MEMORY[0x24C204750](0xD00000000000002ELL, 0x8000000249E83310);
  result = sub_249E7B228();
  __break(1u);
  return result;
}

id sub_249E62290()
{
  sub_249E62AD8();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioPowerManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AudioPowerManager(uint64_t a1)
{
  result = qword_28130DAA8;
  if (!qword_28130DAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E62444(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_249E6914C;
  *(v4 + 24) = v3;
  v12[4] = sub_249E69240;
  v12[5] = v4;
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_2_15();
  v12[2] = v5;
  v12[3] = &block_descriptor_37;
  v6 = _Block_copy(v12);
  v7 = v1;

  v8 = OUTLINED_FUNCTION_145();
  dispatch_sync(v8, v9);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_249E62570(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24200, &qword_249E80860);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - v6;
  v8 = OBJC_IVAR____TtC10DropInCore17AudioPowerManager_audioFrequencyController;
  v9 = *&a1[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_audioFrequencyController];
  if (v9)
  {
    v10 = *&a1[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_audioFrequencyController];
    v11 = v10;
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D6EDC8]) initWithDelegate:a1 queue:*&a1[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_queue]];
    v10 = 0;
    v9 = *&a1[v8];
  }

  *&a1[v8] = v11;
  v12 = v10;
  v13 = v11;

  v14 = OBJC_IVAR____TtC10DropInCore17AudioPowerManager_registeredStreamTokens;
  swift_beginAccess();
  if ((sub_249E620F8(a2, *&a1[v14]) & 1) == 0)
  {
    v25 = v5;
    v15 = a1;
    v16 = sub_249E7A698();
    v17 = sub_249E7AE28();
    v24[1] = v15;

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[0] = v4;
      v20 = v19;
      *v18 = 134218242;
      *(v18 + 4) = a2;
      *(v18 + 12) = 2112;
      v21 = *&a1[v8];
      *(v18 + 14) = v21;
      *v19 = v21;
      v22 = v21;
      _os_log_impl(&dword_249DEE000, v16, v17, "Audio power manager registered stream token: %ld with audio frequency controller: %@", v18, 0x16u);
      sub_249DF4A68(v20);
      v23 = v20;
      v4 = v24[0];
      MEMORY[0x24C205870](v23, -1, -1);
      MEMORY[0x24C205870](v18, -1, -1);
    }

    [v13 registerParticipantPowerSpectrum_];
    swift_beginAccess();
    sub_249E649F0(v27, a2);
    swift_endAccess();
    sub_249E7A7A8();
    sub_249E42168(&qword_28130D338, &unk_27EF24200, &qword_249E80860, MEMORY[0x277D06990]);
    sub_249E42168(&qword_28130D330, &unk_27EF24200, &qword_249E80860, MEMORY[0x277D06998]);
    sub_249E42168(&qword_28130D328, &unk_27EF24200, &qword_249E80860, MEMORY[0x277D069A0]);
    sub_249E7A6E8();
    (*(v25 + 8))(v7, v4);
    if (v26 == 1)
    {
      sub_249E628E0(v13, a2);
    }
  }
}

uint64_t sub_249E628E0(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_249E7A998();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v2[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_queue];
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_249E7A9B8();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v15 = sub_249E7AC78();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v2;
    v16[5] = a1;
    v16[6] = a2;
    v17 = v2;
    v18 = a1;
    *&v17[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_mockDataTask] = sub_249E5ED90(0, 0, v7, &unk_249E80870, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_249E62AD8()
{
  OUTLINED_FUNCTION_22();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_249E63E18;
  *(v2 + 24) = v1;
  v10[4] = sub_249E63E20;
  v10[5] = v2;
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_2_15();
  v10[2] = v3;
  v10[3] = &block_descriptor_27_0;
  v4 = _Block_copy(v10);
  v5 = v0;

  v6 = OUTLINED_FUNCTION_145();
  dispatch_sync(v6, v7);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_249E62BFC(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_audioFrequencyController];
  if (v2)
  {
    v35 = OBJC_IVAR____TtC10DropInCore17AudioPowerManager_audioFrequencyController;
    v3 = v2;
    v4 = sub_249E7A698();
    v5 = sub_249E7AE28();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_249DEE000, v4, v5, "Deregistering all stream tokens", v6, 2u);
      MEMORY[0x24C205870](v6, -1, -1);
    }

    v7 = OBJC_IVAR____TtC10DropInCore17AudioPowerManager_registeredStreamTokens;
    swift_beginAccess();
    v8 = *&a1[v7];
    v11 = *(v8 + 56);
    v10 = v8 + 56;
    v9 = v11;
    v12 = 1 << *(*&a1[v7] + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v9;
    v15 = (v12 + 63) >> 6;
    v36 = *&a1[v7];
    swift_bridgeObjectRetain_n();
    v16 = 0;
    if (v14)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        v24 = *&a1[v35];
        *&a1[v35] = 0;

        return;
      }

      v14 = *(v10 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        do
        {
LABEL_11:
          v18 = *(*(v36 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v14)))));
          v19 = sub_249E7A698();
          v20 = sub_249E7AE28();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = v3;
            v22 = swift_slowAlloc();
            *v22 = 134217984;
            *(v22 + 4) = v18;
            _os_log_impl(&dword_249DEE000, v19, v20, "Audio power manager deregistered stream token: %ld", v22, 0xCu);
            v23 = v22;
            v3 = v21;
            MEMORY[0x24C205870](v23, -1, -1);
          }

          v14 &= v14 - 1;

          [v3 unregisterParticipantPowerSpectrum_];
          swift_beginAccess();
          sub_249E6879C(v18);
          swift_endAccess();
        }

        while (v14);
      }
    }

    __break(1u);
  }

  else
  {
    v25 = OBJC_IVAR____TtC10DropInCore17AudioPowerManager_registeredStreamTokens;
    swift_beginAccess();
    if (*(*&a1[v25] + 16))
    {
      v26 = a1;
      v27 = sub_249E7A698();
      v28 = sub_249E7AE08();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v37[0] = v30;
        *v29 = 136315138;

        v31 = sub_249E7AD68();
        v33 = v32;

        v34 = sub_249E3A958(v31, v33, v37);

        *(v29 + 4) = v34;
        _os_log_impl(&dword_249DEE000, v27, v28, "Audio power manager could not deregister all stream tokens. Audio frequency controller is nil. Registered Stream Tokens = %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x24C205870](v30, -1, -1);
        MEMORY[0x24C205870](v29, -1, -1);
      }
    }
  }
}

uint64_t sub_249E63000(uint64_t a1)
{
  result = sub_249E7A6B8();
  if (v2 <= 0x3F)
  {
    result = sub_249E7A688();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_249E630FC(float a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_249E7A928();
  OUTLINED_FUNCTION_3();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  v14 = sub_249E7A958();
  OUTLINED_FUNCTION_3();
  v51 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v50 = v18 - v17;
  v19 = sub_249E7A658();
  OUTLINED_FUNCTION_3();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_0();
  v25 = v24 - v23;
  v26 = OBJC_IVAR____TtC10DropInCore17AudioPowerManager_registeredStreamTokens;
  swift_beginAccess();
  result = sub_249E620F8(a3, *(v4 + v26));
  if (result)
  {
    v46 = v13;
    v47 = v14;
    v48 = v9;
    v49 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF241E8, &unk_249E80848);
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D83A90];
    *(v28 + 16) = xmmword_249E7D7D0;
    v30 = MEMORY[0x277D83B08];
    *(v28 + 56) = v29;
    *(v28 + 64) = v30;
    *(v28 + 32) = a1;
    v31 = sub_249E7AAB8();
    v33 = v32;
    sub_249E7A648();
    v34 = sub_249E7A678();
    v35 = sub_249E7AF08();
    if (sub_249E7AFB8())
    {
      v36 = swift_slowAlloc();
      v45 = v35;
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v36 = 136315138;
      v38 = sub_249E3A958(v31, v33, aBlock);

      *(v36 + 4) = v38;
      v39 = sub_249E7A638();
      _os_signpost_emit_with_name_impl(&dword_249DEE000, v34, v45, v39, "AudioPower", "%s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x24C205870](v37, -1, -1);
      MEMORY[0x24C205870](v36, -1, -1);
    }

    else
    {
    }

    (*(v21 + 8))(v25, v19);
    OUTLINED_FUNCTION_22();
    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *(v41 + 24) = a1;
    aBlock[4] = sub_249E63700;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_249E52140;
    aBlock[3] = &block_descriptor_8;
    v42 = _Block_copy(aBlock);

    sub_249E7A938();
    sub_249E63724();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
    OUTLINED_FUNCTION_4_12();
    sub_249E42168(v43, &unk_27EF23D50, &unk_249E80260, v44);
    sub_249E7B018();
    MEMORY[0x24C204A90](0, v50, v46, v42);
    _Block_release(v42);
    (*(v48 + 8))(v46, v49);
    (*(v51 + 8))(v50, v47);
  }

  return result;
}

void sub_249E635CC(uint64_t a1, float a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC10DropInCore17AudioPowerManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v4, ObjectType, v6, a2);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_249E63724()
{
  result = qword_28130D2D0;
  if (!qword_28130D2D0)
  {
    sub_249E7A928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130D2D0);
  }

  return result;
}

uint64_t sub_249E6377C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = sub_249E7A928();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v8 = sub_249E7A958();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = OBJC_IVAR____TtC10DropInCore17AudioPowerManager_queue;
  v6[19] = v9;
  v6[20] = v10;
  v11 = swift_task_alloc();
  v6[21] = v11;
  *v11 = v6;
  v11[1] = sub_249E638DC;

  return MEMORY[0x282200480](66000000);
}

uint64_t sub_249E638DC()
{

  if (v0)
  {

    v1 = sub_249E69250;
  }

  else
  {
    v1 = sub_249E639F4;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_249E639F4()
{
  if (sub_249E7ACB8())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 64) = 0;
    MEMORY[0x24C205890](v0 + 64, 8);
    for (i = 16777217 * *(v0 + 64); i < 0xFFFF01; i = 16777217 * *(v0 + 80))
    {
      *(v0 + 80) = 0;
      MEMORY[0x24C205890](v0 + 80, 8);
    }

    v4 = *(v0 + 152);
    v19 = *(v0 + 144);
    v20 = *(v0 + 136);
    v5 = *(v0 + 128);
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = vcvts_n_f32_u64(HIDWORD(i), 0x18uLL) + 0.0;
    v18 = *(v0 + 120);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v8;
    *(v11 + 32) = v10;
    *(v11 + 40) = v7;
    *(v0 + 48) = sub_249E6921C;
    *(v0 + 56) = v11;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_249E52140;
    *(v0 + 40) = &block_descriptor_47_0;
    v12 = _Block_copy((v0 + 16));
    v13 = v9;
    v14 = v8;
    sub_249E7A938();
    *(v0 + 72) = MEMORY[0x277D84F90];
    sub_249E63724();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
    OUTLINED_FUNCTION_4_12();
    sub_249E42168(v15, &unk_27EF23D50, &unk_249E80260, v16);
    sub_249E7B018();
    MEMORY[0x24C204A90](0, v4, v5, v12);
    _Block_release(v12);
    (*(v18 + 8))(v5, v6);
    (*(v19 + 8))(v4, v20);

    v17 = swift_task_alloc();
    *(v0 + 168) = v17;
    *v17 = v0;
    v17[1] = sub_249E638DC;

    return MEMORY[0x282200480](66000000);
  }
}

BOOL sub_249E63CF8(uint64_t a1, double a2)
{
  v3 = (*&a2 >> 52) & 0x7FFLL;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  if (v3 | *&a2 & 0xFFFFFFFFFFFFFLL)
  {
    if (v3 != 2047 && a2 > -1.0)
    {
      v9 = sub_249E7AD28();
      if (v9 <= 63)
      {
        v10 = v9;
        v11 = sub_249E7AD08();
        v12 = v11 + __clz(__rbit64(v4));
        v13 = v10 - v12;
        if (__OFSUB__(v10, v12))
        {
          __break(1u);
        }

        else
        {
          if (v13 < -64 || v13 > 64)
          {
LABEL_12:
            v14 = 0;
            v15 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

LABEL_23:
            v8 = 0;
            result = v10 >= v11;
            v6 = v14 | v15;
            goto LABEL_24;
          }

          if ((v13 & 0x8000000000000000) == 0)
          {
            if (v13 == 64)
            {
              goto LABEL_12;
            }

            v14 = v4 << v13;
            if (v10 < 0)
            {
              goto LABEL_17;
            }

            goto LABEL_22;
          }
        }

        if (v13 == -64)
        {
          goto LABEL_12;
        }

        v14 = v4 >> (v12 - v10);
        if (v10 < 0)
        {
LABEL_17:
          v15 = 0;
          goto LABEL_23;
        }

LABEL_22:
        v15 = 1 << v10;
        goto LABEL_23;
      }
    }

    v6 = 0;
    result = 0;
    v8 = 1;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    result = 1;
  }

LABEL_24:
  *a1 = v6;
  *(a1 + 8) = v8;
  return result;
}

BOOL sub_249E63E28(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_249E7B408();
  sub_249E7AB18();
  sub_249E7B438();
  OUTLINED_FUNCTION_5_10();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_249E7B318() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_249E65C68(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_249E63F70(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_249E7B078();

    if (v9)
    {

      sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = sub_249E7B068();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_249E64AC0(v7, result + 1);
        if (*(v17 + 24) <= *(v17 + 16))
        {
          sub_249E64EF8();
        }

        v18 = v8;
        sub_249E51518(v18, v17);

        *v3 = v17;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
    sub_249E7AF68();
    OUTLINED_FUNCTION_5_10();
    v13 = ~v12;
    while (1)
    {
      v14 = v11 & v13;
      if (((*(v6 + 56 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v13)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v18 = a2;
        sub_249E65DD0(v18, v14, isUniquelyReferenced_nonNull_native);
        *v3 = v23;
        goto LABEL_16;
      }

      v15 = *(*(v6 + 48) + 8 * v14);
      v16 = sub_249E7AF78();

      if (v16)
      {
        break;
      }

      v11 = v14 + 1;
    }

    v20 = *(*(v6 + 48) + 8 * v14);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  return result;
}

void sub_249E64190()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v69 = v3;
  v4 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v67 - v11;
  v68 = v0;
  v13 = *v0;
  sub_249E7B408();
  sub_249E4D760(v87);
  sub_249E7B438();
  OUTLINED_FUNCTION_5_10();
  v16 = v15 & ~v14;
  v83 = v17;
  if (((*(v17 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
LABEL_14:
    v64 = v68;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86[0] = *v64;
    sub_249E2A248(v2, v87);
    sub_249E65F34(v2, v16, isUniquelyReferenced_nonNull_native);
    *v64 = v86[0];
    memcpy(v69, v2, 0x51uLL);
    goto LABEL_15;
  }

  v82 = ~v14;
  v70 = (v6 + 8);
  v71 = v12;
  v74 = v4;
  v75 = v2;
  v72 = v13;
  v73 = v10;
  while (1)
  {
    memcpy(v87, (*(v13 + 48) + 88 * v16), 0x51uLL);
    v18 = v87[1];
    v19 = SLOBYTE(v87[10]);
    v20 = *(v2 + 80);
    if ((v19 & 0x80000000) != 0)
    {
      break;
    }

    if ((v20 & 0x80000000) == 0)
    {
      v84 = v16;
      v21 = *(v2 + 8);
      v80 = *v2;
      v81 = 88 * v16;
      v22 = v87[2];
      v23 = v87[3];
      v24 = v87[5];
      v79 = v87[4];
      v26 = v87[6];
      v25 = v87[7];
      v27 = v87[8];
      v77 = v21;
      v78 = v87[9];
      v28 = v87[0];
      v76 = v18;
      v29 = v22;
      v30 = v74;
      v31 = v25;
      v32 = v70;
      v33 = sub_249E4A270(v29, v23, v79, v24, v26, v31, v27, v78, v19 & 1);
      v34 = v71;
      v35 = [v28 uniqueIdentifier];
      sub_249E7A608();

      OUTLINED_FUNCTION_12_6([v80 uniqueIdentifier]);
      LOBYTE(v35) = sub_249E7A5F8();
      v36 = *v32;
      v37 = OUTLINED_FUNCTION_9_7();
      v36(v37);
      (v36)(v34, v30);
      if ((v35 & 1) == 0)
      {
        goto LABEL_12;
      }

      v38 = [v76 uniqueIdentifier];
      sub_249E7A608();

      OUTLINED_FUNCTION_12_6([v77 uniqueIdentifier]);
      v39 = sub_249E7A5F8();
      sub_249E2A2A4(v87);
      v40 = OUTLINED_FUNCTION_9_7();
      v36(v40);
      v41 = v34;
      v42 = v30;
      goto LABEL_10;
    }

LABEL_13:
    v16 = (v16 + 1) & v82;
    if (((*(v83 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  v84 = v16;
  v43 = *v2;
  v77 = *(v2 + 8);
  v80 = v43;
  v81 = 88 * v16;
  v44 = v87[2];
  v45 = v87[3];
  v46 = v87[4];
  v47 = v87[5];
  v48 = v87[6];
  v49 = v87[7];
  v50 = v87[9];
  v79 = v87[8];
  v78 = v87[0];
  v76 = v18;
  v51 = v44;
  v52 = v45;
  v54 = v73;
  v53 = v74;
  v55 = v46;
  v56 = v47;
  v58 = v70;
  v57 = v71;
  v59 = sub_249E4A270(v51, v52, v55, v56, v48, v49, v79, v50, v19 & 1);
  OUTLINED_FUNCTION_12_6([v78 uniqueIdentifier]);

  v60 = [v80 uniqueIdentifier];
  sub_249E7A608();

  OUTLINED_FUNCTION_9_7();
  v61 = sub_249E7A5F8();
  v36 = *v58;
  (*v58)(v54, v53);
  (v36)(v57, v53);
  if ((v61 & 1) == 0)
  {
LABEL_12:
    sub_249E2A2A4(v87);
    v2 = v75;
    v13 = v72;
    v16 = v84;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_12_6([v76 uniqueIdentifier]);

  v62 = [v77 uniqueIdentifier];
  sub_249E7A608();

  OUTLINED_FUNCTION_9_7();
  v39 = sub_249E7A5F8();
  sub_249E2A2A4(v87);
  (v36)(v54, v53);
  v41 = v57;
  v42 = v53;
LABEL_10:
  (v36)(v41, v42);
  v2 = v75;
  v13 = v72;
  v16 = v84;
  v63 = v81;
  if ((v39 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_249E2A2A4(v75);
  v66 = *(v13 + 48);
  memcpy(v86, (v66 + v63), 0x51uLL);
  memcpy(v69, (v66 + v63), 0x51uLL);
  sub_249E2A248(v86, &v85);
LABEL_15:
  OUTLINED_FUNCTION_6_1();
}

BOOL sub_249E646A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  sub_249E7B408();
  sub_249E7AB18();
  sub_249E7B438();
  OUTLINED_FUNCTION_5_10();
  v11 = ~v10;
  while (1)
  {
    v12 = v9 & v11;
    v13 = (1 << (v9 & v11)) & *(v8 + 56 + (((v9 & v11) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v13)
    {
      break;
    }

    v14 = *(v8 + 48) + 24 * v12;
    v15 = *(v14 + 8) == a3 && *(v14 + 16) == a4;
    if (v15 || (sub_249E7B318() & 1) != 0)
    {

      swift_unknownObjectRelease();
      v16 = (*(v8 + 48) + 24 * v12);
      v17 = v16[1];
      v18 = v16[2];
      *a1 = *v16;
      a1[1] = v17;
      a1[2] = v18;
      swift_unknownObjectRetain();

      return v13 == 0;
    }

    v9 = v12 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v23;
  swift_unknownObjectRetain();

  v20 = OUTLINED_FUNCTION_145();
  sub_249E664D4(v20, v21, a4, v12, isUniquelyReferenced_nonNull_native);
  *v23 = v25;
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  return v13 == 0;
}

void sub_249E6481C()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v21 = v3;
  type metadata accessor for XPCClient(0);
  OUTLINED_FUNCTION_3();
  v22 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v19 = v0;
  v9 = *v0;
  sub_249E7B408();
  v20 = v2;
  sub_249E7AF88();
  sub_249E7B438();
  OUTLINED_FUNCTION_5_10();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    if (((1 << (v10 & v12)) & *(v9 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = OUTLINED_FUNCTION_145();
      sub_249DF76A8(v17, v18);
      v23 = *v19;
      sub_249E66654(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v23;
      sub_249E04524(v20, v21);
      goto LABEL_7;
    }

    v14 = *(v22 + 72) * v13;
    sub_249DF76A8(*(v9 + 48) + v14, v8);
    sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
    v15 = sub_249E7AF78();
    sub_249DF770C(v8);
    if (v15)
    {
      break;
    }

    v10 = v13 + 1;
  }

  sub_249DF770C(v20);
  sub_249DF76A8(*(v9 + 48) + v14, v21);
LABEL_7:
  OUTLINED_FUNCTION_6_1();
}

BOOL sub_249E649F0(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_249E7B3F8();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  sub_249E66878(a2, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_249E64AC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24210, &unk_249E80038);
    v2 = sub_249E7B0F8();
    v14 = v2;
    sub_249E7B058();
    while (1)
    {
      if (!sub_249E7B088())
      {

        return v2;
      }

      sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_249E64EF8();
      }

      v2 = v14;
      result = sub_249E7AF68();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_249E64C9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24220, &qword_249E80880);
  result = sub_249E7B0E8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_249E6697C(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_249E7B408();
    sub_249E7AB18();
    result = sub_249E7B438();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_249E64EF8()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24210, &unk_249E80038);
  v3 = sub_249E7B0E8();
  v4 = v3;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    OUTLINED_FUNCTION_6_1();
    return;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v3 + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      sub_249E6697C(0, (v25 + 63) >> 6, v2 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_5_10();
      *v6 = v26;
    }

    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    v16 = sub_249E7AF68();
    v17 = -1 << *(v4 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v4 + 48) + 8 * v20) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v11 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_249E65108(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24240, &qword_249E80898);
  result = sub_249E7B0E8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_35:

    *v2 = v5;
    return result;
  }

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
  v36 = v3;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v38 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      sub_249E6697C(0, (v35 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v35;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_35;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v38 = (v10 - 1) & v10;
LABEL_12:
    v16 = *(v3 + 48) + 88 * (v13 | (v6 << 6));
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    v45 = *(v16 + 40);
    v46 = *(v16 + 24);
    v43 = *(v16 + 56);
    v44 = *(v16 + 32);
    v40 = *(v16 + 64);
    v41 = *(v16 + 48);
    v42 = *(v16 + 72);
    v20 = *(v16 + 80);
    sub_249E7B408();
    v39 = v18;
    v37 = v20;
    MEMORY[0x24C205020](v20 < 0);
    sub_249E7AF88();
    sub_249E7AF88();
    if (v20)
    {
      MEMORY[0x24C205020](1);
      sub_249E7AB18();
      sub_249E7B428();
      if (v45)
      {
        sub_249E7AB18();
      }

      v22 = v41;
      sub_249E7B428();
      if (v43)
      {
        sub_249E7AB18();
      }

      v21 = v40;
      sub_249E7B428();
      if (v42)
      {
        sub_249E7AB18();
      }
    }

    else
    {
      MEMORY[0x24C205020](0);
      sub_249E7AB18();
      sub_249E7AB18();
      v21 = v40;
      v22 = v41;
    }

    result = sub_249E7B438();
    v23 = -1 << *(v5 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    v27 = v39;
    v29 = v42;
    v28 = v43;
LABEL_29:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v34 = *(v5 + 48) + 88 * v26;
    *v34 = v27;
    *(v34 + 8) = v17;
    *(v34 + 16) = v19;
    *(v34 + 24) = v46;
    *(v34 + 32) = v44;
    *(v34 + 40) = v45;
    *(v34 + 48) = v22;
    *(v34 + 56) = v28;
    *(v34 + 64) = v21;
    *(v34 + 72) = v29;
    *(v34 + 80) = v37;
    ++*(v5 + 16);
    v3 = v36;
    v10 = v38;
    if (!v38)
    {
      goto LABEL_7;
    }
  }

  v30 = 0;
  v31 = (63 - v23) >> 6;
  v27 = v39;
  v29 = v42;
  v28 = v43;
  while (++v25 != v31 || (v30 & 1) == 0)
  {
    v32 = v25 == v31;
    if (v25 == v31)
    {
      v25 = 0;
    }

    v30 |= v32;
    v33 = *(v12 + 8 * v25);
    if (v33 != -1)
    {
      v26 = __clz(__rbit64(~v33)) + (v25 << 6);
      goto LABEL_29;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_249E654EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24238, &qword_249E80890);
  result = sub_249E7B0E8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v30 = v3;
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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_249E6697C(0, (v29 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 24 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    sub_249E7B408();
    sub_249E7AB18();
    result = sub_249E7B438();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v5 + 48) + 24 * v23);
    *v28 = v17;
    v28[1] = v18;
    v28[2] = v19;
    ++*(v5 + 16);
    v3 = v30;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_249E6575C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for XPCClient(0);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24230, &qword_249E80888);
  result = sub_249E7B0E8();
  v8 = result;
  if (!*(v6 + 16))
  {
LABEL_27:

    *v2 = v8;
    return result;
  }

  v29 = v1;
  v9 = 0;
  v10 = (v6 + 56);
  v11 = 1 << *(v6 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v6 + 56);
  v14 = (v11 + 63) >> 6;
  v15 = result + 56;
  if (!v13)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      sub_249E6697C(0, (v28 + 63) >> 6, v6 + 56);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v29;
    *(v6 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = *(v30 + 72);
    sub_249E04524(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5);
    sub_249E7B408();
    sub_249E7AF88();
    result = sub_249E7B438();
    v20 = -1 << *(v8 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_249E04524(v5, *(v8 + 48) + v23 * v19);
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v15 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_249E65A44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF241F8, &qword_249E80858);
  result = sub_249E7B0E8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_249E6697C(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_249E7B3F8();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_249E65C68(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_249E64C9C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_249E6729C(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_249E7B408();
      sub_249E7AB18();
      v16 = sub_249E7B438();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_249E7B318() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_249E669E0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_249E7B368();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

unint64_t sub_249E65DD0(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_249E64EF8();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_249E674D0(v6 + 1);
LABEL_8:
      v8 = *v3;
      result = sub_249E7AF68();
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = sub_249E7AF78();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_249E66B38();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = sub_249E7B368();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

void *sub_249E65F34(id *a1, unint64_t a2, char a3)
{
  v7 = sub_249E7A628();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v66 - v12;
  v14 = *(*v3 + 16);
  v15 = *(*v3 + 24);
  v66 = v3;
  if (v15 <= v14 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_249E65108(v14 + 1);
    }

    else
    {
      if (v15 > v14)
      {
        sub_249E66C88();
        goto LABEL_20;
      }

      sub_249E676E0(v14 + 1);
    }

    v16 = *v3;
    sub_249E7B408();
    sub_249E4D760(__dst);
    v17 = sub_249E7B438();
    v77 = v16 + 56;
    v78 = v16;
    v18 = -1 << *(v16 + 32);
    a2 = v17 & ~v18;
    if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v76 = ~v18;
      v67 = (v8 + 8);
      v70 = v7;
      v71 = a1;
      v69 = v11;
      v68 = v13;
      do
      {
        memcpy(__dst, (*(v78 + 48) + 88 * a2), 0x51uLL);
        v19 = __dst[1];
        v20 = __dst[10];
        v21 = *(a1 + 80);
        if (SLOBYTE(__dst[10]) < 0)
        {
          if (v21 < 0)
          {
            v79 = a2;
            v41 = *a1;
            v73 = a1[1];
            v75 = v41;
            v42 = __dst[2];
            v43 = __dst[3];
            v44 = __dst[4];
            v45 = __dst[5];
            v46 = __dst[6];
            v47 = __dst[7];
            v48 = __dst[8];
            v49 = __dst[9];
            v74 = __dst[0];
            v72 = v19;
            v65 = v20 & 1;
            v50 = v42;
            v51 = v43;
            v33 = v70;
            v52 = v44;
            v36 = v68;
            v37 = v69;
            v53 = v67;
            v54 = sub_249E4A270(v50, v51, v52, v45, v46, v47, v48, v49, v65);
            v55 = [v74 uniqueIdentifier];
            sub_249E7A608();

            v56 = [v75 uniqueIdentifier];
            sub_249E7A608();

            LOBYTE(v56) = sub_249E7A5F8();
            v40 = *v53;
            (*v53)(v37, v33);
            v40(v36, v33);
            if (v56)
            {
LABEL_16:
              v57 = [v72 uniqueIdentifier];
              sub_249E7A608();

              v58 = [v73 uniqueIdentifier];
              sub_249E7A608();

              LOBYTE(v58) = sub_249E7A5F8();
              sub_249E2A2A4(__dst);
              v40(v37, v33);
              v40(v36, v33);
              a1 = v71;
              a2 = v79;
              if (v58)
              {
                goto LABEL_23;
              }

              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }

        else if ((v21 & 0x80000000) == 0)
        {
          v79 = a2;
          v22 = a1[1];
          v75 = *a1;
          v24 = __dst[2];
          v23 = __dst[3];
          v26 = __dst[4];
          v25 = __dst[5];
          v27 = __dst[7];
          v73 = v22;
          v74 = __dst[6];
          v28 = __dst[8];
          v29 = __dst[9];
          v30 = __dst[0];
          v72 = v19;
          v64 = v20 & 1;
          v31 = v23;
          v32 = v26;
          v33 = v70;
          v34 = v27;
          v35 = v67;
          v36 = v68;
          v37 = v69;
          v38 = [v30 uniqueIdentifier];
          sub_249E7A608();

          v39 = [v75 uniqueIdentifier];
          sub_249E7A608();

          LOBYTE(v39) = sub_249E7A5F8();
          v40 = *v35;
          (*v35)(v37, v33);
          v40(v36, v33);
          if (v39)
          {
            goto LABEL_16;
          }

LABEL_18:
          sub_249E2A2A4(__dst);
          a1 = v71;
          a2 = v79;
        }

LABEL_19:
        a2 = (a2 + 1) & v76;
      }

      while (((*(v77 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_20:
  v59 = *v66;
  *(*v66 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v59 + 48) + 88 * a2), a1, 0x51uLL);
  v61 = *(v59 + 16);
  v62 = __OFADD__(v61, 1);
  v63 = v61 + 1;
  if (v62)
  {
    __break(1u);
LABEL_23:
    result = sub_249E7B368();
    __break(1u);
  }

  else
  {
    *(v59 + 16) = v63;
  }

  return result;
}

void sub_249E664D4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 <= v10 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_249E654EC(v10 + 1);
      goto LABEL_10;
    }

    if (v11 <= v10)
    {
      sub_249E67C30(v10 + 1);
LABEL_10:
      v17 = *v5;
      sub_249E7B408();
      sub_249E7AB18();
      v18 = sub_249E7B438();
      v19 = ~(-1 << *(v17 + 32));
      while (1)
      {
        a4 = v18 & v19;
        if (((*(v17 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v20 = *(v17 + 48) + 24 * a4;
        v21 = *(v20 + 8) == a2 && *(v20 + 16) == a3;
        if (v21 || (sub_249E7B318() & 1) != 0)
        {
          goto LABEL_19;
        }

        v18 = a4 + 1;
      }
    }

    sub_249E66E10();
  }

LABEL_7:
  v12 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v13 = (*(v12 + 48) + 24 * a4);
  *v13 = result;
  v13[1] = a2;
  v13[2] = a3;
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_19:
    sub_249E7B368();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v16;
  }
}

uint64_t sub_249E66654(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for XPCClient(0);
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_249E6575C(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_249E67E80(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_249E7B408();
      v22 = a1;
      sub_249E7AF88();
      v13 = sub_249E7B438();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        sub_249DF76A8(*(v12 + 48) + *(v23 + 72) * a2, v9);
        sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
        v15 = sub_249E7AF78();
        sub_249DF770C(v9);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      a1 = v22;
      goto LABEL_13;
    }

    sub_249E66F7C();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_249E04524(a1, *(v16 + 48) + *(v23 + 72) * a2);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_249E7B368();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

unint64_t sub_249E66878(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_249E65A44(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_249E68138(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = sub_249E7B3F8();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_249E6715C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_249E7B368();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_249E6697C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_249E807C0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_249E669E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24220, &qword_249E80880);
  v2 = *v0;
  v3 = sub_249E7B0D8();
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
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_249E66B38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24210, &unk_249E80038);
  v2 = *v0;
  v3 = sub_249E7B0D8();
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
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

void *sub_249E66C88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24240, &qword_249E80898);
  v2 = *v0;
  v3 = sub_249E7B0D8();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_249E2A248(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = *(v2 + 48);
      v17 = 88 * (v13 | (v8 << 6));
      memcpy(__dst, (v16 + v17), 0x51uLL);
      memmove((*(v4 + 48) + v17), (v16 + v17), 0x51uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void sub_249E66E10()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24238, &qword_249E80890);
  v2 = *v0;
  v3 = sub_249E7B0D8();
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
    v10 = *(v2 + 56);
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + 8 * v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;
        swift_unknownObjectRetain();
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_249E66F7C()
{
  v1 = v0;
  v2 = type metadata accessor for XPCClient(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24230, &qword_249E80888);
  v6 = *v0;
  v7 = sub_249E7B0D8();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_249DF76A8(*(v6 + 48) + v21, v5);
        result = sub_249E04524(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }

  return result;
}

void *sub_249E6715C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF241F8, &qword_249E80858);
  v2 = *v0;
  v3 = sub_249E7B0D8();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

uint64_t sub_249E6729C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24220, &qword_249E80880);
  result = sub_249E7B0E8();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_249E7B408();

        sub_249E7AB18();
        result = sub_249E7B438();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_249E674D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24210, &unk_249E80038);
  result = sub_249E7B0E8();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_249E7AF68();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v24;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_249E676E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24240, &qword_249E80898);
  result = sub_249E7B0E8();
  v5 = result;
  if (!*(v3 + 16))
  {
    v43 = result;

LABEL_45:
    *v2 = v43;
    return result;
  }

  v44 = v1;
  v6 = 0;
  v7 = v3 + 56;
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
  v45 = (v8 + 63) >> 6;
  v46 = v3 + 56;
  v47 = v3;
  v48 = result + 56;
  v49 = result;
  if (!v10)
  {
LABEL_7:
    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v45)
      {
        v43 = v5;

        v2 = v44;
        goto LABEL_45;
      }

      v13 = *(v7 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v50 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  while (1)
  {
    v11 = __clz(__rbit64(v10));
    v50 = (v10 - 1) & v10;
LABEL_12:
    v14 = *(v3 + 48) + 88 * (v11 | (v6 << 6));
    v16 = *v14;
    v15 = *(v14 + 8);
    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    v56 = *(v14 + 32);
    v57 = *(v14 + 40);
    v19 = *(v14 + 48);
    v20 = *(v14 + 56);
    v22 = *(v14 + 64);
    v21 = *(v14 + 72);
    v23 = *(v14 + 80);
    sub_249E7B408();
    v52 = v16;
    v53 = v19;
    v54 = v22;
    v55 = v21;
    v51 = v15;
    if (v23 < 0)
    {
      v59 = v16;
      v60 = v15;
      v61 = v18;
      v62 = v17;
      v63 = v56;
      v64 = v57;
      v65 = v19;
      v66 = v20;
      v67 = v22;
      v68 = v21;
      v69 = v23 & 0x7F;
      MEMORY[0x24C205020](1);
      sub_249E49F10(&v59, v58, &qword_27EF24248, &qword_249E808A0);
      sub_249E7AF88();
      sub_249E7AF88();
      v24 = v23;
      if ((v23 & 1) == 0)
      {
LABEL_19:
        MEMORY[0x24C205020](0);
        v25 = v18;
        v26 = v17;
        sub_249E7AB18();
        v27 = v56;
        v28 = v57;
        sub_249E7AB18();
        v29 = v53;
        goto LABEL_32;
      }

      MEMORY[0x24C205020](1);
      v25 = v18;
      v26 = v17;
      sub_249E7AB18();
      sub_249E7B428();
      v27 = v56;
      if (v57)
      {
        v28 = v57;
        sub_249E7AB18();
      }

      else
      {
        v28 = 0;
      }

      v29 = v53;
      sub_249E7B428();
      if (v20)
      {
        sub_249E7AB18();
      }

      sub_249E7B428();
      if (v55)
      {
        sub_249E7AB18();
      }

      v24 = v23;
    }

    else
    {
      v59 = v16;
      v60 = v15;
      v61 = v18;
      v62 = v17;
      v63 = v56;
      v64 = v57;
      v65 = v19;
      v66 = v20;
      v67 = v22;
      v68 = v21;
      v69 = v23;
      MEMORY[0x24C205020](0);
      sub_249E49F10(&v59, v58, &unk_27EF24250, &qword_249E808A8);
      sub_249E7AF88();
      sub_249E7AF88();
      v24 = v23;
      if ((v23 & 1) == 0)
      {
        goto LABEL_19;
      }

      MEMORY[0x24C205020](1);
      v25 = v18;
      v26 = v17;
      sub_249E7AB18();
      sub_249E7B428();
      v27 = v56;
      if (v57)
      {
        v28 = v57;
        sub_249E7AB18();
      }

      else
      {
        v28 = 0;
      }

      v29 = v53;
      sub_249E7B428();
      if (v20)
      {
        sub_249E7AB18();
      }

      sub_249E7B428();
      if (v55)
      {
        sub_249E7AB18();
      }

      v24 = v23;
    }

LABEL_32:
    result = sub_249E7B438();
    v5 = v49;
    v30 = -1 << *(v49 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v48 + 8 * (v31 >> 6))) == 0)
    {
      break;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v48 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    v35 = v51;
    v34 = v52;
    v36 = v54;
    v37 = v55;
LABEL_41:
    *(v48 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    v42 = *(v49 + 48) + 88 * v33;
    *v42 = v34;
    *(v42 + 8) = v35;
    *(v42 + 16) = v25;
    *(v42 + 24) = v26;
    *(v42 + 32) = v27;
    *(v42 + 40) = v28;
    *(v42 + 48) = v29;
    *(v42 + 56) = v20;
    *(v42 + 64) = v36;
    *(v42 + 72) = v37;
    *(v42 + 80) = v24;
    ++*(v49 + 16);
    v7 = v46;
    v3 = v47;
    v10 = v50;
    if (!v50)
    {
      goto LABEL_7;
    }
  }

  v38 = 0;
  v39 = (63 - v30) >> 6;
  v35 = v51;
  v34 = v52;
  v36 = v54;
  v37 = v55;
  while (++v32 != v39 || (v38 & 1) == 0)
  {
    v40 = v32 == v39;
    if (v32 == v39)
    {
      v32 = 0;
    }

    v38 |= v40;
    v41 = *(v48 + 8 * v32);
    if (v41 != -1)
    {
      v33 = __clz(__rbit64(~v41)) + (v32 << 6);
      goto LABEL_41;
    }
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_249E67C30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24238, &qword_249E80890);
  result = sub_249E7B0E8();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = (*(v3 + 48) + 24 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        sub_249E7B408();
        swift_unknownObjectRetain();

        sub_249E7AB18();
        result = sub_249E7B438();
        v20 = -1 << *(v5 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v5 + 48) + 24 * v23);
        *v28 = v17;
        v28[1] = v18;
        v28[2] = v19;
        ++*(v5 + 16);
        v3 = v29;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_249E67E80(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for XPCClient(0);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24230, &qword_249E80888);
  result = sub_249E7B0E8();
  v8 = result;
  if (*(v6 + 16))
  {
    v27 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v28 + 72);
        sub_249DF76A8(*(v6 + 48) + v18 * (v15 | (v9 << 6)), v5);
        sub_249E7B408();
        sub_249E7AF88();
        result = sub_249E7B438();
        v19 = -1 << *(v8 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        result = sub_249E04524(v5, *(v8 + 48) + v22 * v18);
        ++*(v8 + 16);
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v9;
      while (1)
      {
        v9 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v9 >= v13)
        {

          v2 = v27;
          goto LABEL_25;
        }

        v17 = *(v6 + 56 + 8 * v9);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_249E68138(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF241F8, &qword_249E80858);
  result = sub_249E7B0E8();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_249E7B3F8();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_249E68324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_249E7B408();
  sub_249E7AB18();
  sub_249E7B438();
  OUTLINED_FUNCTION_5_10();
  v9 = ~v8;
  while (1)
  {
    v10 = v7 & v9;
    if (((*(v6 + 56 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v9)) & 1) == 0)
    {
      break;
    }

    v11 = *(v6 + 48) + 24 * v10;
    v12 = *(v11 + 8) == a2 && *(v11 + 16) == a3;
    if (v12 || (sub_249E7B318() & 1) != 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_249E66E10();
      }

      sub_249E689E4(v10);
      *v3 = v15;
      return OUTLINED_FUNCTION_145();
    }

    v7 = v10 + 1;
  }

  return OUTLINED_FUNCTION_145();
}

uint64_t sub_249E68458(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
    sub_249E7AF68();
    OUTLINED_FUNCTION_5_10();
    v11 = ~v10;
    while (1)
    {
      v12 = v9 & v11;
      if (((*(v4 + 56 + (((v9 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v11)) & 1) == 0)
      {
        break;
      }

      v13 = *(*(v4 + 48) + 8 * v12);
      v14 = sub_249E7AF78();

      if (v14)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *v2;
        v18 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_249E66B38();
          v16 = v18;
        }

        v8 = *(*(v16 + 48) + 8 * v12);
        sub_249E68BC4(v12);
        *v2 = v18;
        return v8;
      }

      v9 = v12 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = a1;
  v7 = sub_249E7B098();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_249E68888(v5, v6);

  return v8;
}

void sub_249E685D4()
{
  OUTLINED_FUNCTION_15_0();
  v21 = v1;
  v2 = type metadata accessor for XPCClient(0);
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v20 = v0;
  v9 = *v0;
  sub_249E7B408();
  sub_249E7AF88();
  sub_249E7B438();
  OUTLINED_FUNCTION_5_10();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    if (((*(v9 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v12)) & 1) == 0)
    {
      v16 = 1;
      v17 = v21;
      goto LABEL_9;
    }

    v14 = *(v4 + 72) * v13;
    sub_249DF76A8(*(v9 + 48) + v14, v8);
    sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
    v15 = sub_249E7AF78();
    sub_249DF770C(v8);
    if (v15)
    {
      break;
    }

    v10 = v13 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v20;
  v22 = *v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_249E66F7C();
    v19 = v22;
  }

  v17 = v21;
  sub_249E04524(*(v19 + 48) + v14, v21);
  sub_249E68D58(v13);
  v16 = 0;
  *v20 = v22;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v17, v16, 1, v2);
  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E6879C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_249E7B3F8();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((1 << (v5 & v6)) & *(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (*(*(v4 + 48) + 8 * v7) == a1)
    {
      break;
    }

    v5 = v7 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  v12 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_249E6715C();
    v10 = v12;
  }

  v8 = *(*(v10 + 48) + 8 * v7);
  sub_249E68FD4(v7);
  *v2 = v12;
  return v8;
}

uint64_t sub_249E68888(uint64_t a1, uint64_t a2)
{

  v2 = sub_249E7B068();
  v3 = swift_unknownObjectRetain();
  v4 = sub_249E64AC0(v3, v2);
  v13 = v4;

  v5 = sub_249E7AF68();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((*(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v5 & v6)) & 1) == 0)
    {
      break;
    }

    sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
    v8 = *(*(v4 + 48) + 8 * v7);
    v9 = sub_249E7AF78();

    if (v9)
    {

      v10 = *(*(v4 + 48) + 8 * v7);
      sub_249E68BC4(v7);
      if (sub_249E7AF78())
      {
        *v12 = v13;
        return v10;
      }

      __break(1u);
      break;
    }

    v5 = v7 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_249E689E4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_249E7B038();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_249E7B408();
        swift_unknownObjectRetain();

        sub_249E7AB18();
        v10 = sub_249E7B438();

        swift_unknownObjectRelease();
        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = v14 + 24 * v2;
            v16 = (v14 + 24 * v6);
            if (v2 != v6 || v15 >= v16 + 24)
            {
              v18 = *v16;
              *(v15 + 16) = *(v16 + 2);
              *v15 = v18;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

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

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_249E68BC4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_249E7B038();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_249E7AF68();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

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

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_249E68D58(int64_t a1)
{
  v3 = type metadata accessor for XPCClient(0);
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_249E7B038();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v29 = v9;
      v14 = (v13 + 1) & v12;
      v15 = *(v4 + 72);
      while (1)
      {
        v16 = v15 * v11;
        sub_249DF76A8(*(v8 + 48) + v15 * v11, v7);
        sub_249E7B408();
        sub_249E7AF88();
        v17 = sub_249E7B438();
        sub_249DF770C(v7);
        v18 = v17 & v12;
        if (a1 >= v14)
        {
          if (v18 < v14 || a1 < v18)
          {
            goto LABEL_24;
          }
        }

        else if (v18 < v14 && a1 < v18)
        {
          goto LABEL_24;
        }

        v21 = *(v8 + 48);
        v22 = v15 * a1;
        v23 = v21 + v15 * a1;
        v24 = v21 + v16 + v15;
        if (v15 * a1 < v16 || v23 >= v24)
        {
          break;
        }

        a1 = v11;
        if (v22 != v16)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v11 = (v11 + 1) & v12;
        if (((*(v29 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {

          v9 = v29;
          goto LABEL_28;
        }
      }

      swift_arrayInitWithTakeFrontToBack();
LABEL_23:
      a1 = v11;
      goto LABEL_24;
    }

LABEL_28:
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v26 = *(v8 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v28;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_249E68FD4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_249E7B038();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_249E7B3F8() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_249E69154(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_249E3046C;

  return sub_249E6377C(a1, v4, v5, v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_12_6(uint64_t a1)
{

  return sub_249E7A608();
}

uint64_t sub_249E692D4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_249E7B068();
  }

  else
  {
    return *(a1 + 16);
  }
}

id sub_249E692F4(void *a1)
{
  v1 = a1;
  IDSService.description.getter();

  v2 = sub_249E7AA88();

  return v2;
}

uint64_t IDSService.description.getter()
{
  v1 = 0xE000000000000000;
  sub_249E7B128();
  MEMORY[0x24C204750](0x6669746E6564495BLL, 0xEE00203D20726569);
  v2 = sub_249E695E4(v0);
  if (v3)
  {
    v1 = v3;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x24C204750](v2, v1);

  MEMORY[0x24C204750](0x6553206E6143202CLL, 0xED0000203D20646ELL);
  v4 = [v0 canSend];
  v5 = v4 == 0;
  if (v4)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x24C204750](v6, v7);

  MEMORY[0x24C204750](0x6E756F636341202CLL, 0xED0000203D207374);
  v8 = sub_249E69648(v0);
  if (v8)
  {
    sub_249E692D4(v8);
  }

  v9 = sub_249E7B2D8();
  MEMORY[0x24C204750](v9);

  MEMORY[0x24C204750](0x656369766544202CLL, 0xEC000000203D2073);
  v10 = sub_249E69574(v0);
  if (v10)
  {
    sub_249E514A8(v10);
  }

  v11 = sub_249E7B2D8();
  MEMORY[0x24C204750](v11);

  MEMORY[0x24C204750](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_249E69574(void *a1)
{
  v1 = [a1 devices];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_249DF691C(0, &qword_27EF24260, 0x277D186E0);
  v3 = sub_249E7ABE8();

  return v3;
}

uint64_t sub_249E695E4(void *a1)
{
  v1 = [a1 serviceIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_249E7AAA8();

  return v3;
}

uint64_t sub_249E69648(void *a1)
{
  v1 = [a1 accounts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_249DF691C(0, &qword_27EF24268, 0x277D186C0);
  sub_249E696C4();
  v3 = sub_249E7AD58();

  return v3;
}

unint64_t sub_249E696C4()
{
  result = qword_27EF24270;
  if (!qword_27EF24270)
  {
    sub_249DF691C(255, &qword_27EF24268, 0x277D186C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF24270);
  }

  return result;
}

uint64_t type metadata accessor for XPCClient(uint64_t a1)
{
  result = qword_28130D400;
  if (!qword_28130D400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E697A4(uint64_t a1)
{
  result = sub_249E7A6B8();
  if (v2 <= 0x3F)
  {
    result = sub_249DF691C(319, &qword_27EF235E0, 0x277CCAE80);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_249E69850(char a1, uint64_t a2)
{
  v2 = 0x656C646E6168;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xEE00657461446E6FLL;
    }

    else
    {
      v3 = 0xEE00657079546E6FLL;
    }

    v4 = 0x6974617269707865;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x656C646E6168;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0xEE00657461446E6FLL;
    }

    else
    {
      v5 = 0xEE00657079546E6FLL;
    }

    v2 = 0x6974617269707865;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (v4 == v2 && v3 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_5_11(v4, a2, v2);
  }

  return v7 & 1;
}

uint64_t sub_249E69954(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x657669746341;
  }

  else
  {
    v3 = 0x676E6974696157;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x657669746341;
  }

  else
  {
    v5 = 0x676E6974696157;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
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
    v8 = OUTLINED_FUNCTION_5_11(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_249E699E4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x666C65536C696ELL;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x666C65536C696ELL;
  switch(v4)
  {
    case 1:
      v5 = 0x69766F72506C696ELL;
      v6 = 7497060;
      goto LABEL_5;
    case 2:
      v5 = 0x6F64756573506F6ELL;
      v6 = 7174510;
LABEL_5:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 3:
      v5 = 0xD000000000000018;
      v3 = 0x8000000249E81BF0;
      break;
    case 4:
      v3 = 0x8000000249E81C10;
      v5 = 0xD000000000000023;
      break;
    case 5:
      v3 = 0x8000000249E81C40;
      v5 = 0xD00000000000001DLL;
      break;
    case 6:
      v5 = 0x6576697463416F6ELL;
      v3 = 0xEC0000006C6C6143;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x69766F72506C696ELL;
      v8 = 7497060;
      goto LABEL_13;
    case 2:
      v2 = 0x6F64756573506F6ELL;
      v8 = 7174510;
LABEL_13:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 3:
      v2 = 0xD000000000000018;
      v7 = 0x8000000249E81BF0;
      break;
    case 4:
      v7 = 0x8000000249E81C10;
      v2 = 0xD000000000000023;
      break;
    case 5:
      v7 = 0x8000000249E81C40;
      v2 = 0xD00000000000001DLL;
      break;
    case 6:
      v2 = 0x6576697463416F6ELL;
      v7 = 0xEC0000006C6C6143;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_5_11(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_249E69C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_5_11(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_249E69C90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_249E69CE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_249E7A6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_7();
  v78 = v6;
  OUTLINED_FUNCTION_2_13();
  MEMORY[0x28223BE20](v7);
  v80 = &v70 - v8;
  OUTLINED_FUNCTION_2_13();
  MEMORY[0x28223BE20](v9);
  v79 = &v70 - v10;
  OUTLINED_FUNCTION_2_13();
  MEMORY[0x28223BE20](v11);
  v13 = &v70 - v12;
  v14 = type metadata accessor for XPCClient(0);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_7();
  v75 = v15;
  OUTLINED_FUNCTION_2_13();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v70 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v70 - v20;
  sub_249DF76A8(v2, &v70 - v20);
  v22 = *(v14 + 24);
  v23 = *(v2 + v22);
  v76 = a1;
  v24 = *(a1 + v22);
  v72 = v23;
  v73 = v14;
  v74 = v24 | v23;
  *(v2 + v22) = v24 | v23;
  v82 = *(v5 + 16);
  v82(v13, v2, v4);
  v77 = v21;
  sub_249DF76A8(v21, v19);
  v25 = sub_249E7A698();
  v26 = sub_249E7AE28();
  v27 = os_log_type_enabled(v25, v26);
  v81 = v2;
  if (v27)
  {
    OUTLINED_FUNCTION_4();
    v28 = OUTLINED_FUNCTION_4_13();
    v71 = v5;
    v29 = v28;
    v83 = v28;
    *v2 = 136315138;
    v30 = sub_249E6A23C();
    v32 = v31;
    sub_249DF770C(v19);
    v33 = sub_249E3A958(v30, v32, &v83);

    *(v2 + 4) = v33;
    _os_log_impl(&dword_249DEE000, v25, v26, "Update options for Connection: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v34 = v29;
    v5 = v71;
    MEMORY[0x24C205870](v34, -1, -1);
    OUTLINED_FUNCTION_3_12();
  }

  else
  {

    sub_249DF770C(v19);
  }

  v35 = *(v5 + 8);
  v35(v13, v4);
  v36 = v79;
  OUTLINED_FUNCTION_6_8();
  v37();
  v38 = sub_249E7A698();
  v39 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_9_8(v39))
  {
    OUTLINED_FUNCTION_4();
    v83 = OUTLINED_FUNCTION_4_13();
    *v2 = 136315138;
    v40 = sub_249E6A3E8(v72);
    v42 = sub_249E3A958(v40, v41, &v83);

    *(v2 + 4) = v42;
    OUTLINED_FUNCTION_19_4(&dword_249DEE000, v43, v44, "Old options: %s");
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_3_12();

    v45 = v79;
  }

  else
  {

    v45 = v36;
  }

  v35(v45, v4);
  v46 = v80;
  v47 = v75;
  OUTLINED_FUNCTION_6_8();
  v48();
  sub_249DF76A8(v76, v47);
  v49 = sub_249E7A698();
  v50 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_9_8(v50))
  {
    OUTLINED_FUNCTION_4();
    v83 = OUTLINED_FUNCTION_4_13();
    *v2 = 136315138;
    v51 = sub_249E6A3E8(*(v47 + *(v73 + 24)));
    v52 = v47;
    v53 = v51;
    v55 = v54;
    sub_249DF770C(v52);
    v56 = sub_249E3A958(v53, v55, &v83);

    *(v2 + 4) = v56;
    OUTLINED_FUNCTION_19_4(&dword_249DEE000, v57, v58, "New options: %s");
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_3_12();

    v59 = v80;
  }

  else
  {

    sub_249DF770C(v47);
    v59 = v46;
  }

  v35(v59, v4);
  v60 = v78;
  OUTLINED_FUNCTION_6_8();
  v61();
  v62 = sub_249E7A698();
  v63 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_9_8(v63))
  {
    OUTLINED_FUNCTION_4();
    v83 = OUTLINED_FUNCTION_4_13();
    *v2 = 136315138;
    v64 = sub_249E6A3E8(v74);
    v66 = sub_249E3A958(v64, v65, &v83);

    *(v2 + 4) = v66;
    OUTLINED_FUNCTION_19_4(&dword_249DEE000, v67, v68, "Updated options: %s");
    OUTLINED_FUNCTION_64();
    MEMORY[0x24C205870](v2, -1, -1);
  }

  v35(v60, v4);
  return sub_249DF770C(v77);
}

uint64_t sub_249E6A23C()
{
  v1 = v0;
  sub_249E7B128();

  strcpy(v15, "\nConnection = ");
  HIBYTE(v15[1]) = -18;
  v2 = type metadata accessor for XPCClient(0);
  v3 = *(v0 + *(v2 + 20));
  v4 = [v3 description];
  v5 = sub_249E7AAA8();
  v7 = v6;

  MEMORY[0x24C204750](v5, v7);

  MEMORY[0x24C204750](0x656C646E7542202CLL, 0xEC000000203A4449);
  v8 = [v3 bundleIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_249E7AAA8();
    v12 = v11;
  }

  else
  {
    v12 = 0xE300000000000000;
    v10 = 7104878;
  }

  MEMORY[0x24C204750](v10, v12);

  MEMORY[0x24C204750](0x6E6F6974704F202CLL, 0xED00005B203D2073);
  v13 = sub_249E6A3E8(*(v1 + *(v2 + 24)));
  MEMORY[0x24C204750](v13);

  MEMORY[0x24C204750](93, 0xE100000000000000);
  return v15[0];
}

uint64_t sub_249E6A3E8(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_249E3A324(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v2 + 3);
  if (*(v2 + 2) >= v3 >> 1)
  {
    v2 = OUTLINED_FUNCTION_1_11(v3);
  }

  OUTLINED_FUNCTION_8_6("audioPowerUpdates");
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = OUTLINED_FUNCTION_0_17();
    }

    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    if (v5 >= v4 >> 1)
    {
      v2 = OUTLINED_FUNCTION_1_11(v4);
    }

    *(v2 + 2) = v5 + 1;
    v6 = &v2[16 * v5];
    strcpy(v6 + 32, "deviceUpdates");
    *(v6 + 23) = -4864;
  }

LABEL_12:
  if ((a1 & 4) == 0)
  {
    if ((a1 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = OUTLINED_FUNCTION_0_17();
  }

  v7 = *(v2 + 3);
  if (*(v2 + 2) >= v7 >> 1)
  {
    v2 = OUTLINED_FUNCTION_1_11(v7);
  }

  OUTLINED_FUNCTION_8_6("deviceListUpdates");
  if ((a1 & 8) != 0)
  {
LABEL_20:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = OUTLINED_FUNCTION_0_17();
    }

    v9 = *(v2 + 2);
    v8 = *(v2 + 3);
    if (v9 >= v8 >> 1)
    {
      v2 = sub_249E3A324((v8 > 1), v9 + 1, 1, v2);
    }

    *(v2 + 2) = v9 + 1;
    v10 = &v2[16 * v9];
    strcpy(v10 + 32, "sessionUpdates");
    v10[47] = -18;
  }

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24298, &qword_249E80B28);
  sub_249E6AB9C();
  v11 = sub_249E7AA58();

  return v11;
}

uint64_t sub_249E6A60C@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_15_5();
  *a1 = result;
  return result;
}

uint64_t sub_249E6A634@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_249E6A234(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_249E6A664@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_249E556D0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_249E6A694@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_249E6A6C4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_249E6A6D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_249E6A708(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_249E6A708(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_249E6A72C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_249E6A760(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_249E6A760(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_249E6A7A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_249E6A7D0(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_249E6A84C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_249E6A874@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_249E69C90(a1);
  *a2 = result;
  return result;
}

unint64_t sub_249E6A8A0()
{
  result = qword_27EF24278;
  if (!qword_27EF24278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF24278);
  }

  return result;
}

unint64_t sub_249E6A8F8()
{
  result = qword_27EF24280;
  if (!qword_27EF24280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF24280);
  }

  return result;
}

unint64_t sub_249E6A950()
{
  result = qword_27EF24288;
  if (!qword_27EF24288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF24288);
  }

  return result;
}

unint64_t sub_249E6A9A8()
{
  result = qword_27EF24290;
  if (!qword_27EF24290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF24290);
  }

  return result;
}

unint64_t sub_249E6AA00()
{
  result = qword_28130D410[0];
  if (!qword_28130D410[0])
  {
    type metadata accessor for XPCClient(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28130D410);
  }

  return result;
}

uint64_t sub_249E6AA58(uint64_t a1, uint64_t a2)
{
  sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
  type metadata accessor for XPCClient(0);
  return sub_249E7AF78() & 1;
}

uint64_t sub_249E6AAFC()
{
  sub_249E7B408();
  type metadata accessor for XPCClient(0);
  sub_249E7AF88();
  return sub_249E7B438();
}

uint64_t sub_249E6AB54(uint64_t a1)
{
  sub_249E7B408();
  sub_249E7AF88();
  return sub_249E7B438();
}

unint64_t sub_249E6AB9C()
{
  result = qword_28130D298;
  if (!qword_28130D298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF24298, &qword_249E80B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130D298);
  }

  return result;
}

char *OUTLINED_FUNCTION_0_17()
{
  v2 = *(v0 + 16) + 1;

  return sub_249E3A324(0, v2, 1, v0);
}

char *OUTLINED_FUNCTION_1_11@<X0>(unint64_t a1@<X8>)
{

  return sub_249E3A324((a1 > 1), v2, 1, v1);
}

void OUTLINED_FUNCTION_3_12()
{

  JUMPOUT(0x24C205870);
}

uint64_t OUTLINED_FUNCTION_4_13()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_5_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_249E7B318();
}

void OUTLINED_FUNCTION_8_6(uint64_t a1@<X8>)
{
  *(v1 + 16) = v2;
  v5 = v1 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = (a1 - 32) | 0x8000000000000000;
}

BOOL OUTLINED_FUNCTION_9_8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

char *OneshotTimer.init(timeInterval:queue:identifier:label:timerFiredHandler:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5, uint64_t a6, double a7)
{
  v8 = v7;
  v95 = a6;
  v88 = a5;
  v80 = a4;
  v79 = a3;
  v96 = a1;
  v97 = a2;
  sub_249E7A928();
  OUTLINED_FUNCTION_3();
  v92 = v11;
  v93 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_14(v13 - v12);
  v91 = sub_249E7A958();
  OUTLINED_FUNCTION_3();
  v90 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_14(v17 - v16);
  v94 = sub_249E7A918();
  OUTLINED_FUNCTION_3();
  v82 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_14(v21 - v20);
  v78 = sub_249E7A988();
  OUTLINED_FUNCTION_3();
  v101 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_5_12();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_12();
  MEMORY[0x28223BE20](v25);
  v100 = &v77 - v26;
  sub_249E7A6B8();
  OUTLINED_FUNCTION_3();
  v98 = v27;
  v99 = v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_5_12();
  MEMORY[0x28223BE20](v29);
  v31 = &v77 - v30;
  v32 = sub_249E7AEA8();
  OUTLINED_FUNCTION_3();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_0();
  v38 = v37 - v36;
  sub_249E6B65C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_249E6C814(&qword_27EF242A8, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF242B0, &qword_249E80B70);
  sub_249E550C0(&unk_27EF242B8, &qword_27EF242B0, &qword_249E80B70);
  sub_249E7B018();
  v39 = sub_249E7AEB8();
  (*(v34 + 8))(v38, v32);
  *&v8[OBJC_IVAR___DIOneshotTimer_timer] = v39;
  v40 = &v8[OBJC_IVAR___DIOneshotTimer_label];
  v41 = v80;
  *v40 = v79;
  v40[1] = v41;
  v42 = OBJC_IVAR___DIOneshotTimer_identifier;
  v43 = sub_249E7A628();
  v86 = *(v43 - 8);
  v44 = *(v86 + 16);
  v87 = v43;
  v44(&v8[v42], v97);
  *&v8[OBJC_IVAR___DIOneshotTimer_timeInterval] = a7;

  sub_249E7A6A8();
  (*(v99 + 32))(&v8[OBJC_IVAR___DIOneshotTimer_logger], v31, v98);
  sub_249E7A968();
  v45 = v77;
  sub_249E7A9A8();
  v46 = v101;
  v47 = v78;
  (*(v101 + 32))(&v8[OBJC_IVAR___DIOneshotTimer_deadline], v45, v78);
  v48 = type metadata accessor for OneshotTimer(0);
  v103.receiver = v8;
  v103.super_class = v48;
  v49 = objc_msgSendSuper2(&v103, sel_init);
  v50 = OBJC_IVAR___DIOneshotTimer_timer;
  ObjectType = swift_getObjectType();
  v52 = v46;
  v80 = *(v46 + 16);
  v80(v45, &v49[OBJC_IVAR___DIOneshotTimer_deadline], v47);
  v53 = v81;
  sub_249E6BD14(v81);
  v54 = v49;
  swift_unknownObjectRetain();
  MEMORY[0x24C204B50](v45, v53, ObjectType, INFINITY);
  swift_unknownObjectRelease();
  (*(v82 + 8))(v53, v94);
  v55 = *(v52 + 8);
  v101 = v52 + 8;
  v94 = v55;
  v55(v45, v47);
  v82 = v50;
  swift_getObjectType();
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = swift_allocObject();
  v58 = v88;
  v57[2] = v56;
  v57[3] = v58;
  v57[4] = v95;
  aBlock[4] = sub_249E6BF30;
  aBlock[5] = v57;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249E52140;
  aBlock[3] = &block_descriptor_9;
  v59 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v60 = v85;
  sub_249E7A938();
  v61 = v89;
  sub_249E6BF54();
  v62 = v84;
  sub_249E7AED8();
  _Block_release(v59);
  swift_unknownObjectRelease();
  (*(v92 + 8))(v61, v93);
  (*(v90 + 8))(v60, v91);
  v63 = v47;

  v64 = v83;
  (*(v99 + 16))(v83, &v54[OBJC_IVAR___DIOneshotTimer_logger], v98);
  v80(v62, v100, v47);
  v65 = v64;
  v66 = sub_249E7A698();
  v67 = sub_249E7AE28();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = OUTLINED_FUNCTION_6();
    *v68 = 138412546;
    *(v68 + 4) = v54;
    *v69 = v54;
    *(v68 + 12) = 2048;
    v70 = v54;
    v71 = sub_249E7A978();
    v72 = OUTLINED_FUNCTION_7_8();
    v73(v72);
    *(v68 + 14) = v71;
    _os_log_impl(&dword_249DEE000, v66, v67, "Timer created: %@, Now = %llu", v68, 0x16u);
    sub_249DF4A68(v69);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  else
  {
    v74 = OUTLINED_FUNCTION_7_8();
    v75(v74);
  }

  (*(v99 + 8))(v65, v98);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_249E7AEF8();

  swift_unknownObjectRelease();
  (*(v86 + 8))(v97, v87);
  v94(v100, v63);
  return v54;
}

unint64_t sub_249E6B65C()
{
  result = qword_27EF242A0;
  if (!qword_27EF242A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF242A0);
  }

  return result;
}

uint64_t type metadata accessor for OneshotTimer(uint64_t a1)
{
  result = qword_28130E048;
  if (!qword_28130E048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_249E6B6EC(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_249E7AA88();
  v8 = sub_249E7A5E8();
  (*(a5 + 16))(a5, v7, v8, a3);
}

void sub_249E6B770()
{
  v1 = v0;
  swift_getObjectType();
  if (sub_249E7AEC8())
  {
    v2 = v0;
    v3 = sub_249E7A698();
    v4 = sub_249E7ADE8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = OUTLINED_FUNCTION_6();
      *v5 = 138412290;
      *(v5 + 4) = v2;
      *v6 = v2;
      v7 = v2;
      _os_log_impl(&dword_249DEE000, v3, v4, "Timer is already canceled %@", v5, 0xCu);
      sub_249DF4A68(v6);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }
  }

  sub_249E7AEE8();
  v8 = v1;
  oslog = sub_249E7A698();
  v9 = sub_249E7AE28();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = OUTLINED_FUNCTION_6();
    *v10 = 138412290;
    *(v10 + 4) = v8;
    *v11 = v8;
    v12 = v8;
    _os_log_impl(&dword_249DEE000, oslog, v9, "Timer cancelled %@", v10, 0xCu);
    sub_249DF4A68(v11);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }
}

uint64_t sub_249E6B940()
{
  swift_getObjectType();
  v1 = sub_249E7AEC8();
  v2 = v0;
  v3 = sub_249E7A698();
  v4 = sub_249E7AE28();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_6();
    *v5 = 67109378;
    *(v5 + 4) = v1 & 1;
    *(v5 + 8) = 2112;
    *(v5 + 10) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_249DEE000, v3, v4, "Timer isCancelled: %{BOOL}d, %@", v5, 0x12u);
    sub_249DF4A68(v6);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  return v1 & 1;
}

uint64_t sub_249E6BB34()
{
  sub_249E7B128();
  MEMORY[0x24C204750](60, 0xE100000000000000);
  sub_249E7B1F8();
  MEMORY[0x24C204750](8236, 0xE200000000000000);
  MEMORY[0x24C204750](*(v0 + OBJC_IVAR___DIOneshotTimer_label), *(v0 + OBJC_IVAR___DIOneshotTimer_label + 8));
  MEMORY[0x24C204750](8236, 0xE200000000000000);
  sub_249E7A628();
  sub_249E6C814(&qword_28130D350, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v1 = sub_249E7B2D8();
  MEMORY[0x24C204750](v1);

  MEMORY[0x24C204750](0xD000000000000012, 0x8000000249E833A0);
  sub_249E7AD18();
  MEMORY[0x24C204750](0x696C64616544202CLL, 0xED0000203D20656ELL);
  sub_249E7A978();
  v2 = sub_249E7B2D8();
  MEMORY[0x24C204750](v2);

  return 0;
}

uint64_t sub_249E6BD14@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_249E7A918();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_249E6BD8C(uint64_t a1, void (*a2)(uint64_t, uint64_t, char *, double))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (sub_249E6B940())
    {
    }

    else
    {
      v5 = v4;
      v6 = sub_249E7A698();
      v7 = sub_249E7AE28();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        *(v8 + 4) = v5;
        *v9 = v4;
        v10 = v5;
        _os_log_impl(&dword_249DEE000, v6, v7, "Timer fired: %@", v8, 0xCu);
        sub_249DF4A68(v9);
        MEMORY[0x24C205870](v9, -1, -1);
        MEMORY[0x24C205870](v8, -1, -1);
      }

      sub_249E6B770();
      v11 = *&v5[OBJC_IVAR___DIOneshotTimer_label];
      v12 = *&v5[OBJC_IVAR___DIOneshotTimer_label + 8];
      v13 = OBJC_IVAR___DIOneshotTimer_identifier;
      v14 = *&v5[OBJC_IVAR___DIOneshotTimer_timeInterval];

      a2(v11, v12, &v5[v13], v14);
    }
  }
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249E6BF54()
{
  sub_249E7A928();
  sub_249E6C814(&qword_28130D2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  sub_249E550C0(&qword_28130D2A0, &unk_27EF23D50, &unk_249E80260);
  return sub_249E7B018();
}

id OneshotTimer.__deallocating_deinit()
{
  sub_249E7A6B8();
  OUTLINED_FUNCTION_3();
  v28 = v1;
  v29 = v2;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  v27 = v4 - v3;
  v5 = sub_249E7A928();
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = sub_249E7A958();
  OUTLINED_FUNCTION_3();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v18 = v17 - v16;
  swift_getObjectType();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249E52140;
  aBlock[3] = &block_descriptor_6;
  v19 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_249E7A938();
  sub_249E6BF54();
  sub_249E7AED8();
  _Block_release(v19);
  swift_unknownObjectRelease();
  (*(v7 + 8))(v11, v5);
  (*(v14 + 8))(v18, v12);
  sub_249E6B770();
  (*(v29 + 16))(v27, v0 + OBJC_IVAR___DIOneshotTimer_logger, v28);
  v20 = v0;
  v21 = sub_249E7A698();
  v22 = sub_249E7AE28();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = OUTLINED_FUNCTION_6();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_249DEE000, v21, v22, "Timer destroyed %@", v23, 0xCu);
    sub_249DF4A68(v24);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  (*(v29 + 8))(v27, v28);
  v30.receiver = v20;
  v30.super_class = type metadata accessor for OneshotTimer(0);
  return objc_msgSendSuper2(&v30, sel_dealloc);
}

id OneshotTimer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_249E6C684(uint64_t a1)
{
  result = sub_249E7A628();
  if (v2 <= 0x3F)
  {
    result = sub_249E7A988();
    if (v3 <= 0x3F)
    {
      result = sub_249E7A6B8();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_249E6C814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_249E6C8D4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return sub_249E7AAC8();
}

_BYTE *storeEnumTagSinglePayload for MessageDecodableError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

BOOL sub_249E6CB08(uint64_t a1, uint64_t a2)
{
  v2 = sub_249E7B268();

  return v2 != 0;
}

BOOL sub_249E6CB78@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_249E6CB08(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_249E6CBAC@<X0>(void *a1@<X8>)
{
  result = sub_249E6CB50();
  *a1 = 0xD000000000000014;
  a1[1] = v3;
  return result;
}

unint64_t sub_249E6CBE4()
{
  result = qword_27EF242F0;
  if (!qword_27EF242F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF242F0);
  }

  return result;
}

uint64_t type metadata accessor for DropInStateEvent(uint64_t a1)
{
  result = qword_28130E638;
  if (!qword_28130E638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E6CCE8(uint64_t a1, uint64_t a2)
{
  if ((sub_249E7A5F8() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DropInStateEvent(0);
  if ((sub_249E7A5F8() & 1) == 0 || *(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_249E7B318() & 1) == 0)
  {
    return 0;
  }

  return sub_249E7A578();
}

uint64_t sub_249E6CDB4(uint64_t a1)
{
  result = sub_249E6CEA4(&qword_27EF24300, &unk_249E80E64);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_249E6CDF8(uint64_t a1)
{
  result = sub_249E6CEA4(&qword_27EF24308, &unk_249E80E9C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_249E6CE3C(uint64_t a1)
{
  *(a1 + 8) = sub_249E6CEA4(&qword_27EF24310, &unk_249E80EE0);
  result = sub_249E6CEA4(qword_27EF24318, &unk_249E80EB8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_249E6CEA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DropInStateEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249E6CEE8(uint64_t a1)
{
  result = sub_249E6CEA4(&qword_27EF24308, &unk_249E80E9C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_249E6CF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Loader.CacheEntry(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = sub_249E7A6B8();
    if (v6 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_249E6D010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = type metadata accessor for Loader.CacheEntry(0, *(*v4 + 80), a3, a4);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v17[-v11];
  v13 = *(v5 + 104);
  swift_beginAccess();
  (*(v7 + 16))(v12, v4 + v13, v6);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
    sub_249E7AC98();
  }

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  (*(v7 + 40))(v4 + v13, v10, v6);
  swift_endAccess();
  sub_249DF2D58(v4[14], v4[15]);
  (*(v7 + 8))(v4 + v13, v6);
  v14 = *(*v4 + 112);
  v15 = sub_249E7A6B8();
  (*(*(v15 - 8) + 8))(v4 + v14, v15);
  swift_defaultActor_destroy();
  return v4;
}

uint64_t sub_249E6D274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_249E6D010(a1, a2, a3, a4);

  return MEMORY[0x282200960](v4);
}

uint64_t sub_249E6D2D0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF237C0, &qword_249E7E220);
  result = sub_249E7ACA8();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_249E6D370(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_249E6D494(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *sub_249E6D660(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_249E6D730(uint64_t a1)
{
  sub_249E7B408();
  sub_249E5FABC();
  return sub_249E7B438();
}

void sub_249E6D76C()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v0;
  v4 = v3;
  v5 = sub_249E7A998();
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_4();
  v9 = *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  *v1 = v9;
  (*(v7 + 104))(v1, *MEMORY[0x277D85200], v5);
  v10 = v9;
  LOBYTE(v9) = sub_249E7A9B8();
  (*(v7 + 8))(v1, v5);
  if (v9)
  {
    v11 = sub_249E7A698();
    v12 = sub_249E7AE28();
    if (OUTLINED_FUNCTION_201(v12))
    {
      OUTLINED_FUNCTION_70();
      v13 = swift_slowAlloc();
      v14 = OUTLINED_FUNCTION_4_0();
      v36 = v14;
      *v13 = 136315138;
      v15 = sub_249E6DA94(v4);
      v17 = sub_249E3A958(v15, v16, &v36);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_249DEE000, v11, v12, "End conversation with reason: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      v18 = OUTLINED_FUNCTION_7_9();
      MEMORY[0x24C205870](v18);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v19 = *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_audioPowerManager);
    if (v19)
    {
      v20 = v19;
      sub_249E62AD8();

      v21 = *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation);
      if (v21)
      {
        v22 = *((*MEMORY[0x277D85000] & *v2) + 0x1D8);
        v23 = v21;
        v22();
      }

      else
      {
        v24 = *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeCall);
        if (!v24)
        {
LABEL_12:
          sub_249E73838();
          *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_someoneJoined) = 0;
          sub_249E71F48();
          OUTLINED_FUNCTION_6_1();
          return;
        }

        v23 = v24;
        v25 = sub_249E7A698();
        sub_249E7AE28();

        if (OUTLINED_FUNCTION_272())
        {
          OUTLINED_FUNCTION_70();
          swift_slowAlloc();
          OUTLINED_FUNCTION_17_4();
          v26 = swift_slowAlloc();
          *v12 = 138412290;
          *(v12 + 4) = v23;
          *v26 = v24;
          v27 = v23;
          OUTLINED_FUNCTION_11_6();
          _os_log_impl(v28, v29, v30, v31, v32, v33);
          sub_249E2A8CC(v26, &unk_27EF23C30, &qword_249E7DA20);
          v34 = OUTLINED_FUNCTION_7_9();
          MEMORY[0x24C205870](v34);
          v35 = OUTLINED_FUNCTION_9_9();
          MEMORY[0x24C205870](v35);
        }

        [*(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter) disconnectCall_];
        sub_249E6E4DC(0);
      }

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_249E6DA94(char a1)
{
  result = 0x6F4C206465646E45;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0x66654C2074736F48;
      break;
    case 3:
      result = 0xD000000000000021;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void sub_249E6DB74()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v0;
  v88 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v7);
  v87 = &v83 - v8;
  sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v90 = v10;
  v91 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v89 = v12 - v11;
  v13 = sub_249E7A998();
  OUTLINED_FUNCTION_3();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_4();
  v17 = *&v2[OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue];
  *v1 = v17;
  OUTLINED_FUNCTION_77();
  v18(v1);
  v19 = v17;
  LOBYTE(v17) = sub_249E7A9B8();
  (*(v15 + 8))(v1, v13);
  if (v17)
  {
    v20 = v5;
    v21 = sub_249E7A698();
    v22 = sub_249E7AE28();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_4_0();
      v86 = v6;
      v24 = v23;
      OUTLINED_FUNCTION_26_3();
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v92[0] = v85;
      *v24 = 136315650;
      v25 = [v20 UUID];
      v26 = v89;
      sub_249E7A608();

      OUTLINED_FUNCTION_5_13();
      sub_249E78F10(v27, v28, MEMORY[0x277CC9628]);
      v29 = v91;
      v30 = sub_249E7B2D8();
      v32 = v31;
      (*(v90 + 8))(v26, v29);
      v33 = sub_249E3A958(v30, v32, v92);

      *(v24 + 4) = v33;
      *(v24 + 12) = 2080;
      v34 = sub_249E6DA94(v88);
      v36 = sub_249E3A958(v34, v35, v92);

      *(v24 + 14) = v36;
      *(v24 + 22) = 2112;
      *(v24 + 24) = v20;
      v37 = v84;
      *v84 = v20;
      v38 = v20;
      _os_log_impl(&dword_249DEE000, v21, v22, "End conversation: %s with reason: %s\n%@", v24, 0x20u);
      sub_249E2A8CC(v37, &unk_27EF23C30, &qword_249E7DA20);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    sub_249E6EE20();
    if (v39)
    {
      v40 = *&v2[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation];
      if (v40)
      {
        v41 = v40;
        sub_249E6E2C0(0, v42, v43, v44, v45, v46, v47, v48, v83);
        if (swift_unknownObjectWeakLoadStrong())
        {
          OUTLINED_FUNCTION_126();
          sub_249E1DB78();
          swift_unknownObjectRelease();
        }

        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24478, &qword_249E811E0);
        sub_249E7AA18();
        swift_endAccess();
        v49 = *&v2[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeCall];
        if (v49)
        {
          v50 = v49;
          v51 = sub_249E7A698();
          v52 = sub_249E7AE28();

          if (os_log_type_enabled(v51, v52))
          {
            OUTLINED_FUNCTION_70();
            v53 = swift_slowAlloc();
            OUTLINED_FUNCTION_26_3();
            v54 = swift_slowAlloc();
            *v53 = 138412290;
            *(v53 + 4) = v50;
            *v54 = v49;
            v55 = v50;
            OUTLINED_FUNCTION_25_1();
            _os_log_impl(v56, v57, v58, v59, v60, 0xCu);
            sub_249E2A8CC(v54, &unk_27EF23C30, &qword_249E7DA20);
            OUTLINED_FUNCTION_65();
            MEMORY[0x24C205870]();
            v61 = OUTLINED_FUNCTION_7_9();
            MEMORY[0x24C205870](v61);
          }

          [*&v2[OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter] disconnectCall_];
          sub_249E6E4DC(0);
        }
      }

      sub_249E73838();
      v2[OBJC_IVAR____TtC10DropInCore17CallCenterManager_someoneJoined] = 0;
      sub_249E71F48();
    }

    else
    {
      v62 = v20;
      v63 = v2;
      v64 = sub_249E7A698();
      v65 = sub_249E7AE28();

      if (os_log_type_enabled(v64, v65))
      {
        v88 = v65;
        v66 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v92[0] = v86;
        *v66 = 136315394;
        v67 = [v62 UUID];
        v68 = v89;
        sub_249E7A608();

        OUTLINED_FUNCTION_5_13();
        sub_249E78F10(v69, v70, MEMORY[0x277CC9628]);
        v71 = v91;
        v72 = sub_249E7B2D8();
        v74 = v73;
        (*(v90 + 8))(v68, v71);
        v75 = sub_249E3A958(v72, v74, v92);

        *(v66 + 4) = v75;
        *(v66 + 12) = 2080;
        v76 = *&v63[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation];
        if (v76)
        {
          v77 = [v76 &off_278FBA2F8];
          v78 = v87;
          sub_249E7A608();

          v79 = 0;
        }

        else
        {
          v79 = 1;
          v78 = v87;
        }

        __swift_storeEnumTagSinglePayload(v78, v79, 1, v91);
        v80 = sub_249E7AAC8();
        v82 = sub_249E3A958(v80, v81, v92);

        *(v66 + 14) = v82;
        _os_log_impl(&dword_249DEE000, v64, v88, "Conversation to end %s is different from active conversation %s. Ignoring.", v66, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
      }
    }

    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_249E6E2E4()
{
  v1 = sub_249E7A998();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  v8 = *&v0[OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue];
  *(v6 - v5) = v8;
  OUTLINED_FUNCTION_77();
  v9(v7);
  v10 = v8;
  LOBYTE(v8) = sub_249E7A9B8();
  result = (*(v3 + 8))(v7, v1);
  if (v8)
  {
    v12 = v0;
    v13 = sub_249E7A698();
    v14 = sub_249E7AE28();

    if (OUTLINED_FUNCTION_272())
    {
      OUTLINED_FUNCTION_70();
      v15 = swift_slowAlloc();
      v16 = OUTLINED_FUNCTION_4_0();
      *v15 = 136315138;
      v22 = *&v12[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation];
      v23 = v16;
      v17 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24468, &qword_249E811D8);
      v18 = sub_249E7AAC8();
      v20 = sub_249E3A958(v18, v19, &v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_249DEE000, v13, v14, "Active Conversation: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      v21 = OUTLINED_FUNCTION_9_9();
      MEMORY[0x24C205870](v21);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    return *&v12[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation] != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_249E6E500(void *a1, void *a2, uint64_t *a3, uint64_t *a4, const char *a5, ...)
{
  v10 = *(v5 + *a2);
  *(v5 + *a2) = a1;
  v11 = a1;

  sub_249E72028(a2, a3, a4, a5);
}

uint64_t sub_249E6E598()
{
  OUTLINED_FUNCTION_23();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_58_0(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v0 + 32) = v2;
  *v2 = v3;
  v2[1] = sub_249E6E67C;
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822007B8]();
}

uint64_t sub_249E6E67C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v2 = v1;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E6E7C0(void *a1)
{
  v4 = sub_249E7A998();
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_4();
  v8 = *(v1 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  *v2 = v8;
  (*(v6 + 104))(v2, *MEMORY[0x277D85200], v4);
  v9 = v8;
  LOBYTE(v8) = sub_249E7A9B8();
  result = (*(v6 + 8))(v2, v4);
  if (v8)
  {
    if (!*(v1 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation))
    {
      v11 = a1;
      sub_249E6E2C0(a1, v12, v13, v14, v15, v16, v17, v18, v19);
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_249E1C36C();
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_249E6E908(void *a1)
{
  v3 = v1;
  v59 = sub_249E7A658();
  OUTLINED_FUNCTION_3();
  v60 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_7();
  v58 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_76_0();
  v9 = sub_249E7A998();
  OUTLINED_FUNCTION_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v16 = *(v3 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  *(v14 - v13) = v16;
  OUTLINED_FUNCTION_77();
  v17(v15);
  v18 = v16;
  v19 = sub_249E7A9B8();
  result = (*(v11 + 8))(v15, v9);
  if (v19)
  {
    v21 = a1;
    sub_249E7A648();
    v22 = sub_249E7A678();
    v23 = sub_249E7AF08();

    if (sub_249E7AFB8())
    {
      OUTLINED_FUNCTION_70();
      v24 = swift_slowAlloc();
      OUTLINED_FUNCTION_26_3();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      v27 = sub_249E7A638();
      _os_signpost_emit_with_name_impl(&dword_249DEE000, v22, v23, v27, "JoiningConversation", "%@", v24, 0xCu);
      sub_249E2A8CC(v25, &unk_27EF23C30, &qword_249E7DA20);
      v28 = OUTLINED_FUNCTION_9_9();
      MEMORY[0x24C205870](v28);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v29 = *(v60 + 8);
    (v29)(v2, v59);
    v30 = [*(v3 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter) joinConversationWithConversationRequest_];
    v31 = v30;
    if (v30)
    {
      v57 = v29;
      v32 = v30;
      v33 = sub_249E7A698();
      v34 = sub_249E7AE28();

      if (os_log_type_enabled(v33, v34))
      {
        OUTLINED_FUNCTION_70();
        swift_slowAlloc();
        OUTLINED_FUNCTION_17_4();
        v35 = swift_slowAlloc();
        *v29 = 138412290;
        *(v29 + 4) = v32;
        *v35 = v31;
        v36 = v32;
        OUTLINED_FUNCTION_11_6();
        _os_log_impl(v37, v38, v39, v40, v41, v42);
        sub_249E2A8CC(v35, &unk_27EF23C30, &qword_249E7DA20);
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
        v43 = OUTLINED_FUNCTION_9_9();
        MEMORY[0x24C205870](v43);
      }

      v44 = v21;
      v45 = v58;
      sub_249E7A648();
      v46 = sub_249E7A678();
      v47 = sub_249E7AF08();

      if (sub_249E7AFB8())
      {
        OUTLINED_FUNCTION_70();
        swift_slowAlloc();
        OUTLINED_FUNCTION_17_4();
        v48 = swift_slowAlloc();
        *v58 = 138412290;
        *(v58 + 4) = v44;
        *v48 = v44;
        v49 = v44;
        v50 = sub_249E7A638();
        _os_signpost_emit_with_name_impl(&dword_249DEE000, v46, v47, v50, "JoinedConversation", "%@", v58, 0xCu);
        sub_249E2A8CC(v48, &unk_27EF23C30, &qword_249E7DA20);
        v51 = OUTLINED_FUNCTION_7_9();
        MEMORY[0x24C205870](v51);
        v45 = v58;
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
      }

      v57(v45, v59);
      v52 = v32;
      sub_249E6E4DC(v31);
      *(v3 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_someoneJoined) = 0;
      sub_249E71F48();
    }

    else
    {
      v53 = sub_249E7A698();
      v54 = sub_249E7AE08();
      if (os_log_type_enabled(v53, v54))
      {
        OUTLINED_FUNCTION_32_2();
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_249DEE000, v53, v54, "Failed to join Conversation", v55, 2u);
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
      }

      sub_249E0881C();
      OUTLINED_FUNCTION_81_0();
      swift_allocError();
      *v56 = 3;
      swift_willThrow();
    }

    return v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_249E6EE20()
{
  OUTLINED_FUNCTION_15_0();
  v76 = v2;
  v3 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v73 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v72 = v7 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23750, &qword_249E7E130);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v8);
  v10 = &v70[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v12 = OUTLINED_FUNCTION_37(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_7();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v70[-v17];
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_76_0();
  v19 = sub_249E7A998();
  OUTLINED_FUNCTION_3();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_0();
  v25 = v24 - v23;
  v26 = *&v0[OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue];
  *(v24 - v23) = v26;
  (*(v21 + 104))(v24 - v23, *MEMORY[0x277D85200], v19);
  v27 = v26;
  LOBYTE(v26) = sub_249E7A9B8();
  (*(v21 + 8))(v25, v19);
  if (v26)
  {
    v28 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation;
    v74 = v0;
    v29 = *&v0[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation];
    if (v29)
    {
      v30 = [v29 UUID];
      sub_249E7A608();

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    v32 = v76;
    v33 = v14;
    __swift_storeEnumTagSinglePayload(v1, v31, 1, v3);
    v34 = [v32 UUID];
    sub_249E7A608();

    __swift_storeEnumTagSinglePayload(v18, 0, 1, v3);
    v35 = *(v75 + 48);
    sub_249E79390(v1, v10, &qword_27EF234B0, &qword_249E7D910);
    sub_249E79390(v18, &v10[v35], &qword_27EF234B0, &qword_249E7D910);
    OUTLINED_FUNCTION_0_11(v10);
    if (v42)
    {
      OUTLINED_FUNCTION_79();
      sub_249E2A8CC(v36, v37, v38);
      OUTLINED_FUNCTION_79();
      sub_249E2A8CC(v39, v40, v41);
      OUTLINED_FUNCTION_0_11(&v10[v35]);
      if (v42)
      {
        sub_249E2A8CC(v10, &qword_27EF234B0, &qword_249E7D910);
LABEL_18:
        OUTLINED_FUNCTION_6_1();
        return;
      }
    }

    else
    {
      sub_249E79390(v10, v33, &qword_27EF234B0, &qword_249E7D910);
      OUTLINED_FUNCTION_0_11(&v10[v35]);
      if (!v42)
      {
        v75 = v28;
        v63 = v72;
        v64 = v73;
        (*(v73 + 32))(v72, &v10[v35], v3);
        OUTLINED_FUNCTION_5_13();
        sub_249E78F10(v65, v66, MEMORY[0x277CC9610]);
        v67 = sub_249E7AA78();
        v32 = v76;
        v71 = v67;
        v68 = v33;
        v69 = *(v64 + 8);
        v69(v63, v3);
        sub_249E2A8CC(v18, &qword_27EF234B0, &qword_249E7D910);
        sub_249E2A8CC(v1, &qword_27EF234B0, &qword_249E7D910);
        v69(v68, v3);
        v28 = v75;
        sub_249E2A8CC(v10, &qword_27EF234B0, &qword_249E7D910);
        if (v71)
        {
          goto LABEL_18;
        }

LABEL_14:
        v49 = v32;
        v50 = v74;
        v51 = v74;
        v52 = sub_249E7A698();
        v53 = sub_249E7AE28();

        if (OUTLINED_FUNCTION_92_0())
        {
          v54 = swift_slowAlloc();
          OUTLINED_FUNCTION_26_3();
          swift_slowAlloc();
          v55 = OUTLINED_FUNCTION_24();
          *v54 = 138412546;
          *(v54 + 4) = v49;
          *v3 = v49;
          *(v54 + 12) = 2080;
          v77 = *&v50[v28];
          v78 = v55;
          v56 = v77;
          v57 = v49;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24468, &qword_249E811D8);
          v58 = sub_249E7AAC8();
          v60 = sub_249E3A958(v58, v59, &v78);

          *(v54 + 14) = v60;
          _os_log_impl(&dword_249DEE000, v52, v53, "Not the active conversation. Other = %@. Active Conversation = %s", v54, 0x16u);
          sub_249E2A8CC(v3, &unk_27EF23C30, &qword_249E7DA20);
          v61 = OUTLINED_FUNCTION_7_9();
          MEMORY[0x24C205870](v61);
          __swift_destroy_boxed_opaque_existential_0(v55);
          v62 = OUTLINED_FUNCTION_9_9();
          MEMORY[0x24C205870](v62);
          OUTLINED_FUNCTION_65();
          MEMORY[0x24C205870]();
        }

        goto LABEL_18;
      }

      OUTLINED_FUNCTION_79();
      sub_249E2A8CC(v43, v44, v45);
      OUTLINED_FUNCTION_79();
      sub_249E2A8CC(v46, v47, v48);
      (*(v73 + 8))(v33, v3);
    }

    sub_249E2A8CC(v10, &qword_27EF23750, &qword_249E7E130);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_249E6F400(void *a1)
{
  v3 = v1;
  if ([a1 streamToken])
  {
    v5 = a1;
    v6 = sub_249E7A698();
    sub_249E7AE28();

    if (OUTLINED_FUNCTION_92_0())
    {
      OUTLINED_FUNCTION_70();
      swift_slowAlloc();
      OUTLINED_FUNCTION_17_4();
      v7 = swift_slowAlloc();
      *v2 = 138412290;
      *(v2 + 4) = v5;
      *v7 = v5;
      v8 = v5;
      OUTLINED_FUNCTION_11_6();
      _os_log_impl(v9, v10, v11, v12, v13, v14);
      sub_249E2A8CC(v7, &unk_27EF23C30, &qword_249E7DA20);
      v15 = OUTLINED_FUNCTION_7_9();
      MEMORY[0x24C205870](v15);
      v16 = OUTLINED_FUNCTION_9_9();
      MEMORY[0x24C205870](v16);
    }

    v17 = [v5 streamToken];
    v18 = *(v3 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_audioPowerManager);
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      sub_249E62444(v19);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_249E6F564()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  sub_249E7A928();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_4();
  sub_249E7A958();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_22();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v5);
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  *(v6 + 24) = v2 & 1;
  v19[4] = sub_249E79538;
  v19[5] = v6;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v19[2] = v7;
  v19[3] = &block_descriptor_78;
  v8 = _Block_copy(v19);

  sub_249E7A938();
  OUTLINED_FUNCTION_1_12();
  sub_249E78F10(v9, v10, MEMORY[0x277D851A0]);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_94_0(v11, v12, v13, v14);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_22_4();
  _Block_release(v8);
  v15 = OUTLINED_FUNCTION_6_7();
  v16(v15);
  v17 = OUTLINED_FUNCTION_7_7();
  v18(v17);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E6F78C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_8_0();
}

uint64_t sub_249E6F7A4()
{
  OUTLINED_FUNCTION_23();
  v2 = *(v1 + 48);
  v3 = swift_task_alloc();
  *(OUTLINED_FUNCTION_58_0(v3) + 24) = v2;
  v4 = swift_task_alloc();
  *(v1 + 32) = v4;
  *v4 = v1;
  v4[1] = sub_249E6F890;
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822008A0](v5, v6, v7, 0xD000000000000018, v8, v9, v0, v10);
}

uint64_t sub_249E6F890()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E6F9B4()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_9_0();

  return v0();
}

uint64_t sub_249E6FA24()
{
  OUTLINED_FUNCTION_23();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_58_0(v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v1 + 32) = v3;
  *v3 = v4;
  v3[1] = sub_249E6FB08;
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822008A0](v5, v6, v7, 0xD000000000000013, v8, v9, v0, v10);
}

uint64_t sub_249E6FB08()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E6FC24()
{
  OUTLINED_FUNCTION_11();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_249E6FC8C(char a1)
{
  result = 0x4D64696C61766E69;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0xD000000000000014;
      break;
    case 2:
      return result;
    case 3:
      v3 = 1701670760;
      goto LABEL_8;
    case 4:
      v3 = 1919251317;
LABEL_8:
      result = v3 | 0x46746F4E00000000;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 8:
      result = 0xD000000000000025;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t sub_249E6FE04(char a1)
{
  result = 0x666C65536C696ELL;
  switch(a1)
  {
    case 1:
      result = 0x69766F72506C696ELL;
      break;
    case 2:
      result = 0x6F64756573506F6ELL;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000023;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0x6576697463416F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_249E6FF00()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v7);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_64_0();
  sub_249E79390(v9, v10, &unk_27EF236B0, &qword_249E7DFD0);
  v11 = sub_249E7AC78();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_249E2A8CC(v0, &unk_27EF236B0, &qword_249E7DFD0);
  }

  else
  {
    sub_249E7AC68();
    (*(*(v11 - 8) + 8))(v0, v11);
  }

  v13 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v13)
  {
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_249E2A8CC(v4, &unk_27EF236B0, &qword_249E7DFD0);
    OUTLINED_FUNCTION_91_0();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_249E7AC28();
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_249E7AAF8();

  OUTLINED_FUNCTION_91_0();

  sub_249E2A8CC(v4, &unk_27EF236B0, &qword_249E7DFD0);

LABEL_9:
  OUTLINED_FUNCTION_6_1();
}

void sub_249E70148()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v11);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_64_0();
  sub_249E79390(v13, v14, &unk_27EF236B0, &qword_249E7DFD0);
  v15 = sub_249E7AC78();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_249E2A8CC(v0, &unk_27EF236B0, &qword_249E7DFD0);
  }

  else
  {
    sub_249E7AC68();
    (*(*(v15 - 8) + 8))(v0, v15);
  }

  v17 = *(v6 + 16);
  swift_unknownObjectRetain();

  if (!v17)
  {
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_249E2A8CC(v8, &unk_27EF236B0, &qword_249E7DFD0);
    sub_249DF691C(0, v4, v2);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_249E7AC28();
  swift_unknownObjectRelease();
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_249E7AAF8();
  sub_249DF691C(0, v4, v2);

  swift_task_create();

  sub_249E2A8CC(v8, &unk_27EF236B0, &qword_249E7DFD0);

LABEL_9:
  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E703C8()
{
  OUTLINED_FUNCTION_11();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_249E7A6B8();
  v1[10] = v4;
  OUTLINED_FUNCTION_34_0(v4);
  v1[11] = v5;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E70498, v0, 0);
}

uint64_t sub_249E70498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_63_1();
  v16 = *(v15 + 16);
  v17 = OUTLINED_FUNCTION_54_2();
  v16(v17);
  v18 = sub_249E7A698();
  v19 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_120(v19))
  {
    OUTLINED_FUNCTION_32_2();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_6_0(v20);
    OUTLINED_FUNCTION_35_1(&dword_249DEE000, v21, v22, "Loading element");
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v23 = v14[11];
  v24 = v14[7];

  v25 = *(v23 + 8);
  v26 = OUTLINED_FUNCTION_126();
  v25(v26);
  if (v24)
  {
    v28 = v14[7];
    v27 = v14[8];
    v29 = v14[9];
  }

  else
  {
    v29 = v14[9];
    v28 = *(v29 + 112);
    if (!v28)
    {
      v73 = OUTLINED_FUNCTION_81();
      __swift_instantiateConcreteTypeFromMangledNameV2(v73, v74);
      OUTLINED_FUNCTION_33_1(&qword_27EF24488);
      OUTLINED_FUNCTION_81_0();
      swift_allocError();
      swift_willThrow();
      OUTLINED_FUNCTION_71();

      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_72();

      return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14);
    }

    v27 = *(v29 + 120);
  }

  OUTLINED_FUNCTION_69_0();
  v30 = *(v29 + 128);
  v14[16] = v30;
  if (*(v29 + 136))
  {
    a10 = v25;
    if (*(v29 + 136) == 1)
    {
      v31 = OUTLINED_FUNCTION_54_2();
      v16(v31);
      v32 = OUTLINED_FUNCTION_96();
      v33 = sub_249E7AE28();
      if (OUTLINED_FUNCTION_201(v33))
      {
        OUTLINED_FUNCTION_32_2();
        v34 = swift_slowAlloc();
        OUTLINED_FUNCTION_82_0(v34);
        OUTLINED_FUNCTION_25_1();
        _os_log_impl(v35, v36, v37, v38, v39, 2u);
        v40 = OUTLINED_FUNCTION_7_9();
        MEMORY[0x24C205870](v40);
      }

      OUTLINED_FUNCTION_74_0();
      v41();

      OUTLINED_FUNCTION_41_2();
      OUTLINED_FUNCTION_72();

      return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
    }

    v53 = OUTLINED_FUNCTION_53_2();
    v16(v53);
    sub_249DF1A08(v28, v30);
    v54 = sub_249E7A698();
    v55 = sub_249E7AE28();
    if (os_log_type_enabled(v54, v55))
    {
      OUTLINED_FUNCTION_32_2();
      v56 = swift_slowAlloc();
      OUTLINED_FUNCTION_82_0(v56);
      OUTLINED_FUNCTION_89(&dword_249DEE000, v57, v58, "Starting task");
      v59 = OUTLINED_FUNCTION_7_9();
      MEMORY[0x24C205870](v59);
    }

    v60 = v14[13];

    OUTLINED_FUNCTION_74_0();
    v61();
    sub_249E715BC(a9, v27);
    OUTLINED_FUNCTION_60_0(v62);
    sub_249DF2CB0(v27, v60);
    v63 = swift_task_alloc();
    v14[20] = v63;
    sub_249DF691C(0, &unk_28130D1E0, 0x277D44160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
    OUTLINED_FUNCTION_73_0();
    *v63 = v64;
    v63[1] = sub_249E709F4;
    OUTLINED_FUNCTION_75_0();
  }

  else
  {
    sub_249DF1A08(v14[7], v14[8]);
    sub_249DF2C94(v30, 0);
    v51 = swift_task_alloc();
    v14[17] = v51;
    sub_249DF691C(0, &unk_28130D1E0, 0x277D44160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
    OUTLINED_FUNCTION_73_0();
    *v51 = v52;
    v51[1] = sub_249E708E0;
    OUTLINED_FUNCTION_79_0();
  }

  OUTLINED_FUNCTION_72();

  return MEMORY[0x282200430](v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E708E0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_6_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_50_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E709F4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_6_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_50_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E70B08()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 72);

  v2 = *(v0 + 48);
  v3 = *(v1 + 128);
  *(v1 + 128) = v2;
  v4 = *(v1 + 136);
  *(v1 + 136) = 1;
  v5 = v2;
  sub_249DF2CB0(v3, v4);

  v6 = OUTLINED_FUNCTION_41_2();

  return v7(v6);
}

uint64_t sub_249E70BC0()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 72);
  v2 = *(v1 + 128);
  *(v1 + 128) = 0;
  v3 = *(v1 + 136);
  *(v1 + 136) = 2;
  sub_249DF2CB0(v2, v3);
  swift_willThrow();

  OUTLINED_FUNCTION_71();

  OUTLINED_FUNCTION_9_0();

  return v4();
}

uint64_t sub_249E70C6C()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 128);

  sub_249DF2CB0(v1, 0);
  OUTLINED_FUNCTION_71();

  v2 = OUTLINED_FUNCTION_85_0();

  return v3(v2);
}

uint64_t sub_249E70CF0()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 128);

  sub_249DF2CB0(v1, 0);
  OUTLINED_FUNCTION_71();

  OUTLINED_FUNCTION_9_0();

  return v2();
}

uint64_t sub_249E70D74(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_249E7A6B8();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E70E50, v2, 0);
}

uint64_t sub_249E70E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_63_1();
  v16 = *(v15 + 16);
  v17 = OUTLINED_FUNCTION_54_2();
  v16(v17);
  v18 = sub_249E7A698();
  v19 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_120(v19))
  {
    OUTLINED_FUNCTION_32_2();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_6_0(v20);
    OUTLINED_FUNCTION_35_1(&dword_249DEE000, v21, v22, "Loading element");
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v23 = v14[11];
  v24 = v14[7];

  v25 = *(v23 + 8);
  v26 = OUTLINED_FUNCTION_126();
  v25(v26);
  if (v24)
  {
    v28 = v14[7];
    v27 = v14[8];
    v29 = v14[9];
  }

  else
  {
    v29 = v14[9];
    v28 = *(v29 + 112);
    if (!v28)
    {
      v73 = OUTLINED_FUNCTION_81();
      __swift_instantiateConcreteTypeFromMangledNameV2(v73, v74);
      OUTLINED_FUNCTION_33_1(&unk_27EF24450);
      OUTLINED_FUNCTION_81_0();
      swift_allocError();
      swift_willThrow();
      OUTLINED_FUNCTION_71();

      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_72();

      return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14);
    }

    v27 = *(v29 + 120);
  }

  OUTLINED_FUNCTION_69_0();
  v30 = *(v29 + 128);
  v14[16] = v30;
  if (*(v29 + 136))
  {
    a10 = v25;
    if (*(v29 + 136) == 1)
    {
      v31 = OUTLINED_FUNCTION_54_2();
      v16(v31);
      v32 = OUTLINED_FUNCTION_96();
      v33 = sub_249E7AE28();
      if (OUTLINED_FUNCTION_201(v33))
      {
        OUTLINED_FUNCTION_32_2();
        v34 = swift_slowAlloc();
        OUTLINED_FUNCTION_82_0(v34);
        OUTLINED_FUNCTION_25_1();
        _os_log_impl(v35, v36, v37, v38, v39, 2u);
        v40 = OUTLINED_FUNCTION_7_9();
        MEMORY[0x24C205870](v40);
      }

      OUTLINED_FUNCTION_74_0();
      v41();

      OUTLINED_FUNCTION_41_2();
      OUTLINED_FUNCTION_72();

      return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
    }

    v53 = OUTLINED_FUNCTION_53_2();
    v16(v53);
    sub_249DF1A08(v28, v30);
    v54 = sub_249E7A698();
    v55 = sub_249E7AE28();
    if (os_log_type_enabled(v54, v55))
    {
      OUTLINED_FUNCTION_32_2();
      v56 = swift_slowAlloc();
      OUTLINED_FUNCTION_82_0(v56);
      OUTLINED_FUNCTION_89(&dword_249DEE000, v57, v58, "Starting task");
      v59 = OUTLINED_FUNCTION_7_9();
      MEMORY[0x24C205870](v59);
    }

    v60 = v14[13];

    OUTLINED_FUNCTION_74_0();
    v61();
    sub_249E71700(a9, v27);
    OUTLINED_FUNCTION_60_0(v62);
    sub_249DF2CB0(v27, v60);
    v63 = swift_task_alloc();
    v14[20] = v63;
    sub_249DF691C(0, &unk_28130D1D0, 0x277D6EEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
    OUTLINED_FUNCTION_73_0();
    *v63 = v64;
    v63[1] = sub_249E713AC;
    OUTLINED_FUNCTION_75_0();
  }

  else
  {
    sub_249DF1A08(v14[7], v14[8]);
    sub_249DF2C94(v30, 0);
    v51 = swift_task_alloc();
    v14[17] = v51;
    sub_249DF691C(0, &unk_28130D1D0, 0x277D6EEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
    OUTLINED_FUNCTION_73_0();
    *v51 = v52;
    v51[1] = sub_249E71298;
    OUTLINED_FUNCTION_79_0();
  }

  OUTLINED_FUNCTION_72();

  return MEMORY[0x282200430](v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E71298()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_6_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_50_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E713AC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_6_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_50_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E714E8(unint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  if (!*(v3 + 136))
  {
    v7 = *(v3 + 128);
    sub_249DF691C(0, a1, a2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
    sub_249E7AC98();
    (a3)(v7, 0);
  }

  v8 = *(v3 + 128);
  *(v3 + 128) = 0;
  *(v3 + 136) = 2;
  return a3(v8);
}

void sub_249E715BC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_249E7AC78();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = sub_249E42168(qword_28130D4C8, &unk_27EF24490, &unk_249E7FA60, &unk_249E80FC8);
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v9;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v2;
  swift_retain_n();

  sub_249E70148();
}

void sub_249E71700(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_249E7AC78();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = sub_249E42168(&unk_28130D4B8, &qword_27EF24460, &qword_249E811B0, &unk_249E80FC8);
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v9;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v2;
  swift_retain_n();

  sub_249E70148();
}

uint64_t sub_249E71844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a3;
  v7 = sub_249E7A6B8();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E7190C, a5, 0);
}

uint64_t sub_249E7190C()
{
  OUTLINED_FUNCTION_23();
  sub_249E7ACD8();
  OUTLINED_FUNCTION_20_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v0 + 72) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_62_1(v1);

  return v4(v3);
}

uint64_t sub_249E71A08()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_6_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v0;

  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_50_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E71B1C()
{
  OUTLINED_FUNCTION_23();
  (*(v0[7] + 16))(v0[8], v0[5] + *(*v0[5] + 112), v0[6]);
  v1 = sub_249E7A698();
  v2 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_120(v2))
  {
    OUTLINED_FUNCTION_32_2();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_6_0(v3);
    OUTLINED_FUNCTION_35_1(&dword_249DEE000, v4, v5, "Task completed");
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v6 = OUTLINED_FUNCTION_126();
  v7(v6);

  v8 = OUTLINED_FUNCTION_85_0();

  return v9(v8);
}

uint64_t sub_249E71C14()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_9_0();

  return v0();
}

uint64_t sub_249E71C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a3;
  v7 = sub_249E7A6B8();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E71D38, a5, 0);
}

uint64_t sub_249E71D38()
{
  OUTLINED_FUNCTION_23();
  sub_249E7ACD8();
  OUTLINED_FUNCTION_20_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v0 + 72) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_62_1(v1);

  return v4(v3);
}

uint64_t sub_249E71E34()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_6_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v0;

  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_50_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_249E71F48()
{
  v1 = v0;
  oslog = sub_249E7A698();
  v2 = sub_249E7AE28();
  if (os_log_type_enabled(oslog, v2))
  {
    OUTLINED_FUNCTION_26_3();
    v3 = swift_slowAlloc();
    *v3 = 67109120;
    *(v3 + 4) = *(&v1->isa + OBJC_IVAR____TtC10DropInCore17CallCenterManager_someoneJoined);

    _os_log_impl(&dword_249DEE000, oslog, v2, "Did Set Someone Joined to %{BOOL}d", v3, 8u);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    v4 = oslog;
  }

  else
  {

    v4 = v1;
  }
}

void sub_249E72028(void *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  v9 = v4;
  oslog = sub_249E7A698();
  v10 = sub_249E7AE28();

  if (os_log_type_enabled(oslog, v10))
  {
    OUTLINED_FUNCTION_70();
    v11 = swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_4_0();
    *v11 = 136315138;
    v19 = *&v9[*a1];
    v20 = v12;
    v13 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v14 = sub_249E7AAC8();
    v16 = sub_249E3A958(v14, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_249DEE000, oslog, v10, a4, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v17 = OUTLINED_FUNCTION_7_9();
    MEMORY[0x24C205870](v17);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {
  }
}

uint64_t sub_249E7218C()
{
  OUTLINED_FUNCTION_22();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24460, &qword_249E811B0);
  swift_allocObject();
  return sub_249E498AC(&unk_249E81258, v0);
}

void sub_249E72208(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter);
  v3 = [v2 conversationManager];
  [v3 addDelegate:a1 queue:*(a1 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue)];

  v4 = [v2 conversationManager];
  [v4 refreshActiveConversations];
}

uint64_t sub_249E722B8()
{
  OUTLINED_FUNCTION_11();
  v0[12] = v1;
  v2 = sub_249E7A928();
  v0[13] = v2;
  OUTLINED_FUNCTION_34_0(v2);
  v0[14] = v3;
  v0[15] = swift_task_alloc();
  v4 = sub_249E7A958();
  v0[16] = v4;
  OUTLINED_FUNCTION_34_0(v4);
  v0[17] = v5;
  v0[18] = swift_task_alloc();
  v6 = sub_249E7AC78();
  v0[19] = v6;
  OUTLINED_FUNCTION_34_0(v6);
  v0[20] = v7;
  v0[21] = swift_task_alloc();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_249E7265C()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v5 + 200) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249E72770()
{
  v2 = v0[15];
  v15 = v0[17];
  v16 = v0[16];
  v3 = v0[13];
  v13 = v0[22];
  v14 = v0[14];
  v12 = v0[18];
  OUTLINED_FUNCTION_22();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v4);
  swift_unknownObjectWeakInit();
  v0[6] = sub_249E797D0;
  v0[7] = v1;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_249E52140;
  v0[5] = &block_descriptor_123;
  v5 = _Block_copy(v0 + 2);

  sub_249E7A938();
  v0[11] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_1_12();
  sub_249E78F10(v6, v7, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  OUTLINED_FUNCTION_4_12();
  sub_249E42168(v8, &unk_27EF23D50, &unk_249E80260, v9);
  sub_249E7B018();
  MEMORY[0x24C204A90](0, v12, v2, v5);
  _Block_release(v5);
  (*(v14 + 8))(v2, v3);
  (*(v15 + 8))(v12, v16);

  OUTLINED_FUNCTION_9_0();

  return v10();
}

uint64_t sub_249E729BC()
{
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

void sub_249E72A4C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter;
    v4 = [*(Strong + OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter) currentCalls];
    v5 = sub_249DF691C(0, &unk_28130D180, 0x277D6EDE0);
    v6 = sub_249E7ABE8();

    v7 = sub_249E7A698();
    v8 = sub_249E7AE28();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36 = v10;
      *v9 = 136315138;
      v11 = MEMORY[0x24C204800](v6, v5);
      v13 = sub_249E3A958(v11, v12, &v36);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_249DEE000, v7, v8, "Current Calls: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C205870](v10, -1, -1);
      MEMORY[0x24C205870](v9, -1, -1);
    }

    v14 = sub_249E51FB4();
    v15 = 0;
    v34 = v6 & 0xFFFFFFFFFFFFFF8;
    v35 = v6 & 0xC000000000000001;
    v32 = v14;
    v33 = v6;
    while (1)
    {
      if (v14 == v15)
      {

        return;
      }

      if (v35)
      {
        v16 = MEMORY[0x24C204D50](v15, v6);
      }

      else
      {
        if (v15 >= *(v34 + 16))
        {
          goto LABEL_19;
        }

        v16 = *(v6 + 8 * v15 + 32);
      }

      v17 = v16;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v18 = *&v2[v3];
      v19 = sub_249E2E1F4(v16);
      if (v19)
      {
        v20 = v19;
        v21 = v17;
        v22 = sub_249E7A698();
        v23 = sub_249E7AE28();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = v2;
          v26 = v3;
          v27 = swift_slowAlloc();
          *v24 = 138412290;
          *(v24 + 4) = v21;
          *v27 = v21;
          v28 = v21;
          _os_log_impl(&dword_249DEE000, v22, v23, "Ending Call %@", v24, 0xCu);
          sub_249E2A8CC(v27, &unk_27EF23C30, &qword_249E7DA20);
          v29 = v27;
          v3 = v26;
          v2 = v25;
          v14 = v32;
          MEMORY[0x24C205870](v29, -1, -1);
          v30 = v24;
          v6 = v33;
          MEMORY[0x24C205870](v30, -1, -1);
        }

        v31 = [v18 conversationManager];
        sub_249E2DE24(v20);

        [v18 disconnectCall_];
        v17 = v20;
      }

      ++v15;
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }
}

id sub_249E72DC4()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x277D6F0A0] object:0];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:*MEMORY[0x277D6EFF0] object:0];

  v5.receiver = v0;
  v5.super_class = type metadata accessor for CallCenterManager(0);
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t type metadata accessor for CallCenterManager(uint64_t a1)
{
  result = qword_28130DA58;
  if (!qword_28130DA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_249E73060()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  sub_249E7A928();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_4();
  sub_249E7A958();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_22();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v5);
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  *(v6 + 24) = v2;
  v19[4] = sub_249E79440;
  v19[5] = v6;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v19[2] = v7;
  v19[3] = &block_descriptor_60;
  v8 = _Block_copy(v19);

  sub_249E7A938();
  OUTLINED_FUNCTION_1_12();
  sub_249E78F10(v9, v10, MEMORY[0x277D851A0]);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_94_0(v11, v12, v13, v14);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_22_4();
  _Block_release(v8);
  v15 = OUTLINED_FUNCTION_6_7();
  v16(v15);
  v17 = OUTLINED_FUNCTION_7_7();
  v18(v17);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

void sub_249E73284(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x1D0))(a2);
  }
}

void sub_249E73318()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v4 = v3;
  sub_249E7A928();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_4();
  sub_249E7A958();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_22();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v7);
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  *(v8 + 24) = v4;
  *(v8 + 32) = v2;
  v22[4] = sub_249E79434;
  v22[5] = v8;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v22[2] = v9;
  v22[3] = &block_descriptor_53_0;
  v10 = _Block_copy(v22);

  v11 = v4;
  sub_249E7A938();
  OUTLINED_FUNCTION_1_12();
  sub_249E78F10(v12, v13, MEMORY[0x277D851A0]);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_94_0(v14, v15, v16, v17);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_22_4();
  _Block_release(v10);
  v18 = OUTLINED_FUNCTION_6_7();
  v19(v18);
  v20 = OUTLINED_FUNCTION_7_7();
  v21(v20);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

void sub_249E73544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x1D8))(a2, a3);
  }
}

uint64_t sub_249E735EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF244A0, &qword_249E81218);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_249E6E798(sub_249E79564, v7);
}

uint64_t sub_249E73780(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter;
    v7 = *(Strong + OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter);
    sub_249E2E2EC();

    v8 = *&v5[v6];
    sub_249E2E5EC();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return a1(v10 & 1);
}

void sub_249E73838()
{
  v1 = v0;
  v2 = sub_249E7A998();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = *(v1 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  *(v7 - v6) = v9;
  OUTLINED_FUNCTION_77();
  v10(v8);
  v11 = v9;
  LOBYTE(v9) = sub_249E7A9B8();
  (*(v4 + 8))(v8, v2);
  if (v9)
  {
    v12 = sub_249E7A698();
    v13 = sub_249E7AE28();
    if (OUTLINED_FUNCTION_201(v13))
    {
      OUTLINED_FUNCTION_32_2();
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_249DEE000, v12, v13, "Invalidating Conversation Timer", v14, 2u);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v15 = *(v1 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationTimer);
    *(v1 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationTimer) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_249E739F0(uint64_t a1)
{
  result = sub_249E7A6B8();
  if (v2 <= 0x3F)
  {
    result = sub_249E7A688();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_249E73B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23690, &qword_249E7DF10);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  sub_249E73C58();
}

void sub_249E73C58()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_249E7A928();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_4();
  sub_249E7A958();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_22();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v9);
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v2;
  *(v10 + 32) = v0;
  *(v10 + 40) = v6;
  v23[4] = sub_249E797C0;
  v23[5] = v10;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v23[2] = v11;
  v23[3] = &block_descriptor_117;
  v12 = _Block_copy(v23);

  sub_249E7A938();
  OUTLINED_FUNCTION_1_12();
  sub_249E78F10(v13, v14, MEMORY[0x277D851A0]);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_94_0(v15, v16, v17, v18);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_22_4();
  _Block_release(v12);
  v19 = OUTLINED_FUNCTION_6_7();
  v20(v19);
  v21 = OUTLINED_FUNCTION_7_7();
  v22(v21);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

void sub_249E73E90(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_6:
    a1(Strong);
    return;
  }

  v7 = Strong;
  v8 = *(Strong + OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeCall);
  if (v8)
  {
    v9 = v8;
    v10 = a4 & 1;
    [v9 setUplinkMuted_];
    v11 = sub_249E7A698();
    v12 = sub_249E7AE28();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = v10;
      _os_log_impl(&dword_249DEE000, v11, v12, "Set Uplink Muted Status to %{BOOL}d", v13, 8u);
      MEMORY[0x24C205870](v13, -1, -1);
    }

    Strong = 0;
    goto LABEL_6;
  }

  v14 = sub_249E7A698();
  v15 = sub_249E7AE08();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_249DEE000, v14, v15, "Failed to Set Uplink Muted Status. No Active Call", v16, 2u);
    MEMORY[0x24C205870](v16, -1, -1);
  }

  sub_249E0881C();
  v17 = swift_allocError();
  *v18 = 6;

  a1(v17);
}

uint64_t sub_249E74088(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF244B0, &qword_249E81230);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_249E74278();
}

uint64_t sub_249E741F4(char a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF244B0, &qword_249E81230);
    return sub_249E7AC38();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF244B0, &qword_249E81230);
    return sub_249E7AC48();
  }
}

void sub_249E74278()
{
  OUTLINED_FUNCTION_15_0();
  v24 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_249E7A928();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_4();
  sub_249E7A958();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_22();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v12);
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v7;
  v13[4] = v2;
  v25[4] = v5;
  v25[5] = v13;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v25[2] = v14;
  v25[3] = v24;
  v15 = _Block_copy(v25);

  sub_249E7A938();
  OUTLINED_FUNCTION_1_12();
  sub_249E78F10(v16, v17, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  OUTLINED_FUNCTION_4_12();
  sub_249E42168(v18, &unk_27EF23D50, &unk_249E80260, v19);
  sub_249E7B018();
  MEMORY[0x24C204A90](0, v1, v0, v15);
  _Block_release(v15);
  v20 = OUTLINED_FUNCTION_6_7();
  v21(v20);
  v22 = OUTLINED_FUNCTION_7_7();
  v23(v22);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

void sub_249E744D8(void (*a1)(uint64_t, void *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_6:
    a1(Strong, 0);
    return;
  }

  v5 = Strong;
  v6 = *(Strong + OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeCall);
  if (v6)
  {
    v7 = v6;
    v8 = [v7 isUplinkMuted];
    v9 = sub_249E7A698();
    v10 = sub_249E7AE28();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v8;
      _os_log_impl(&dword_249DEE000, v9, v10, "Uplink Muted Status is %{BOOL}d", v11, 8u);
      MEMORY[0x24C205870](v11, -1, -1);
    }

    Strong = v8;
    goto LABEL_6;
  }

  v12 = sub_249E7A698();
  v13 = sub_249E7AE08();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_249DEE000, v12, v13, "Failed to Set Uplink Muted Status. No Active Call", v14, 2u);
    MEMORY[0x24C205870](v14, -1, -1);
  }

  sub_249E0881C();
  v15 = swift_allocError();
  *v16 = 6;

  a1(0, v15);
}

void sub_249E746D0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_249E7472C(a2 & 1);
  }
}

void sub_249E7472C(char a1)
{
  v2 = v1;
  v4 = sub_249E7A5B8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = sub_249E7A998();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v32 = v15;
  LOBYTE(v15) = sub_249E7A9B8();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v16 = sub_249E7A698();
    v17 = sub_249E7AE28();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_249DEE000, v16, v17, "Starting Conversation Timer", v18, 2u);
      MEMORY[0x24C205870](v18, -1, -1);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_249E7A598();
      v19 = a1 & 1;
      sub_249E3C8E0(v19);
      sub_249E7A528();
      v20 = *(v5 + 8);
      v20(v8, v4);
      sub_249E1FA50(v2, v10, v19, v21, v22, v23, v24, v25, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
      swift_unknownObjectRelease();
      v20(v10, v4);
    }

    else
    {
      LOBYTE(v19) = a1 & 1;
    }

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v19;
    v28 = objc_allocWithZone(type metadata accessor for ConversationTimer(0));
    v29 = sub_249E3C76C(v19, v32, sub_249E79544, v27);
    v30 = *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationTimer);
    *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationTimer) = v29;
  }

  else
  {
    __break(1u);
  }
}

void sub_249E74A84(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;

    v10 = sub_249E7A698();
    v11 = sub_249E7AE28();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_249E3A958(a1, a2, &v24);
      _os_log_impl(&dword_249DEE000, v10, v11, "Conversation timer fired. Max time limit for %s reached. Ending call.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C205870](v13, -1, -1);
      MEMORY[0x24C205870](v12, -1, -1);
    }

    v14 = MEMORY[0x277D85000];
    if (a5)
    {
      v15 = 5;
    }

    else
    {
      v16 = sub_249E7A698();
      v17 = sub_249E7AE08();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_249DEE000, v16, v17, "Timed out waiting for participant to join conversation", v18, 2u);
        MEMORY[0x24C205870](v18, -1, -1);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_249E0881C();
        v19 = swift_allocError();
        *v20 = 5;
        sub_249E1E598();
        swift_unknownObjectRelease();
      }

      v15 = (*((*v14 & *v9) + 0x198))();
    }

    (*((*v14 & *v9) + 0x1A8))(v15);
    v21 = *(v9 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation);
    if (v21)
    {
      v22 = *((*v14 & *v9) + 0x1B0);
      v23 = v21;
      v22();
    }
  }
}

void sub_249E74D84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_92_0())
  {
    OUTLINED_FUNCTION_70();
    swift_slowAlloc();
    OUTLINED_FUNCTION_17_4();
    v5 = swift_slowAlloc();
    *v2 = 138412290;
    *(v2 + 4) = v3;
    *v5 = v3;
    v6 = v3;
    OUTLINED_FUNCTION_11_6();
    _os_log_impl(v7, v8, v9, v10, v11, v12);
    sub_249E2A8CC(v5, &unk_27EF23C30, &qword_249E7DA20);
    v13 = OUTLINED_FUNCTION_7_9();
    MEMORY[0x24C205870](v13);
    v14 = OUTLINED_FUNCTION_9_9();
    MEMORY[0x24C205870](v14);
  }

  v15 = v3;
  v16 = sub_249E7A698();
  v17 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_201(v17))
  {
    OUTLINED_FUNCTION_70();
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    v19 = [v15 activeRemoteParticipants];
    sub_249DF691C(0, &qword_28130D1C8, 0x277D6EEA8);
    sub_249E79328();
    sub_249E7AD58();

    v20 = sub_249E6972C();

    *(v18 + 4) = v20;

    OUTLINED_FUNCTION_11_6();
    _os_log_impl(v21, v22, v23, v24, v25, v26);
    v27 = OUTLINED_FUNCTION_9_9();
    MEMORY[0x24C205870](v27);
  }

  else
  {

    v16 = v15;
  }

  v28 = v15;
  v29 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_92_0())
  {
    OUTLINED_FUNCTION_70();
    v30 = swift_slowAlloc();
    v31 = OUTLINED_FUNCTION_4_0();
    v46 = v31;
    *v30 = 136315138;
    v32 = [v28 initiator];
    v33 = [v32 debugDescription];

    v34 = sub_249E7AAA8();
    v36 = v35;

    v37 = sub_249E3A958(v34, v36, &v46);

    *(v30 + 4) = v37;
    OUTLINED_FUNCTION_11_6();
    _os_log_impl(v38, v39, v40, v41, v42, v43);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v44 = OUTLINED_FUNCTION_7_9();
    MEMORY[0x24C205870](v44);
    v45 = OUTLINED_FUNCTION_9_9();
    MEMORY[0x24C205870](v45);
  }

  sub_249E6EE20();
}

void sub_249E750C8(uint64_t a1, uint64_t a2)
{

  oslog = sub_249E7A698();
  v3 = sub_249E7AE28();

  if (os_log_type_enabled(oslog, v3))
  {
    OUTLINED_FUNCTION_70();
    v4 = swift_slowAlloc();
    v5 = OUTLINED_FUNCTION_4_0();
    v11 = v5;
    *v4 = 136315138;
    v6 = sub_249DF691C(0, &qword_27EF238C0, 0x277D6EE60);
    v7 = MEMORY[0x24C204800](a2, v6);
    v9 = sub_249E3A958(v7, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_249DEE000, oslog, v3, "Updated Incoming Pending Conversations: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }
}

void sub_249E75284()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0;
  v3 = v2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v4);
  v81 = &v77 - v5;
  v6 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_logger;
  v14 = v3;
  v83 = v13;
  v15 = sub_249E7A698();
  v16 = sub_249E7AE28();
  v17 = os_log_type_enabled(v15, v16);
  v80 = v6;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v78 = v16;
    v19 = v18;
    v79 = swift_slowAlloc();
    v84 = v79;
    *v19 = 67109890;
    *(v19 + 4) = sub_249E2D838() & 1;

    *(v19 + 8) = 2080;
    v20 = TUConversationState.description.getter([v14 state]);
    v22 = sub_249E3A958(v20, v21, &v84);

    *(v19 + 10) = v22;
    *(v19 + 18) = 2080;
    v23 = [v14 UUID];
    sub_249E7A608();

    OUTLINED_FUNCTION_5_13();
    sub_249E78F10(v24, v25, MEMORY[0x277CC9628]);
    v26 = sub_249E7B2D8();
    v28 = v27;
    (*(v8 + 8))(v12, v6);
    v29 = sub_249E3A958(v26, v28, &v84);

    *(v19 + 20) = v29;
    *(v19 + 28) = 2080;
    v30 = [v14 provider];
    v31 = [v30 identifier];

    sub_249E7AAA8();
    v32 = OUTLINED_FUNCTION_126();
    v35 = sub_249E3A958(v32, v33, v34);

    *(v19 + 30) = v35;
    _os_log_impl(&dword_249DEE000, v15, v78, "State Changed For Conversation. IsDropInConversation = %{BOOL}d, State = %s, Conversation = %s, Provider = %s", v19, 0x26u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {
  }

  v36 = v14;
  v37 = sub_249E7A698();
  v38 = sub_249E7AE28();

  if (os_log_type_enabled(v37, v38))
  {
    OUTLINED_FUNCTION_70();
    v39 = swift_slowAlloc();
    v40 = OUTLINED_FUNCTION_4_0();
    v84 = v40;
    *v39 = 136315138;
    v41 = [v36 initiator];
    v42 = [v41 debugDescription];

    v43 = sub_249E7AAA8();
    v45 = v44;

    v46 = sub_249E3A958(v43, v45, &v84);

    *(v39 + 4) = v46;
    _os_log_impl(&dword_249DEE000, v37, v38, "Conversation initiator: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v47 = v36;
  v48 = sub_249E7A698();
  v49 = sub_249E7AE28();

  if (os_log_type_enabled(v48, v49))
  {
    OUTLINED_FUNCTION_70();
    swift_slowAlloc();
    v50 = OUTLINED_FUNCTION_24();
    v84 = v50;
    *v36 = 136315138;
    v51 = [v47 activeRemoteParticipants];
    sub_249DF691C(0, &qword_28130D1C8, 0x277D6EEA8);
    sub_249E79328();
    sub_249E7AD58();

    v52 = sub_249E7AD68();
    v54 = v53;

    v55 = sub_249E3A958(v52, v54, &v84);

    *(v36 + 1) = v55;
    OUTLINED_FUNCTION_67(&dword_249DEE000, v48, v49, "Active Remote Participants = %s", v77);
    __swift_destroy_boxed_opaque_existential_0(v50);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    v56 = OUTLINED_FUNCTION_7_9();
    MEMORY[0x24C205870](v56);
  }

  v57 = v1;
  v58 = sub_249E7A698();
  v59 = sub_249E7AE28();

  if (os_log_type_enabled(v58, v59))
  {
    OUTLINED_FUNCTION_70();
    v60 = swift_slowAlloc();
    v61 = OUTLINED_FUNCTION_4_0();
    v84 = v61;
    *v60 = 136315138;
    v62 = *&v57[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation];
    if (v62)
    {
      v63 = [v62 UUID];
      v64 = v81;
      sub_249E7A608();

      v65 = 0;
    }

    else
    {
      v65 = 1;
      v64 = v81;
    }

    __swift_storeEnumTagSinglePayload(v64, v65, 1, v80);
    v66 = sub_249E7AAC8();
    v68 = sub_249E3A958(v66, v67, &v84);

    *(v60 + 4) = v68;
    OUTLINED_FUNCTION_11_6();
    _os_log_impl(v69, v70, v71, v72, v73, v74);
    __swift_destroy_boxed_opaque_existential_0(v61);
    v75 = OUTLINED_FUNCTION_7_9();
    MEMORY[0x24C205870](v75);
    v76 = OUTLINED_FUNCTION_9_9();
    MEMORY[0x24C205870](v76);
  }

  OUTLINED_FUNCTION_6_1();
}

void sub_249E7595C()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - v5;
  v7 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  v14 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_logger;
  v15 = v2;
  v50 = v14;
  v51 = v0;
  v16 = sub_249E7A698();
  v17 = sub_249E7AE28();

  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_70();
    v18 = swift_slowAlloc();
    v49 = v3;
    v19 = v18;
    v20 = OUTLINED_FUNCTION_4_0();
    v48 = v6;
    v21 = v20;
    v52 = v20;
    *v19 = 136315138;
    v22 = [v15 UUID];
    sub_249E7A608();

    OUTLINED_FUNCTION_5_13();
    sub_249E78F10(v23, v24, MEMORY[0x277CC9628]);
    sub_249E7B2D8();
    v25 = v13;
    v26 = v7;
    (*(v9 + 8))(v25, v7);
    v27 = OUTLINED_FUNCTION_83();
    v30 = sub_249E3A958(v27, v28, v29);

    *(v19 + 4) = v30;
    _os_log_impl(&dword_249DEE000, v16, v17, "Removed Active Conversation: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v6 = v48;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {
    v26 = v7;
  }

  v31 = v51;
  v32 = sub_249E7A698();
  v33 = sub_249E7AE28();

  if (os_log_type_enabled(v32, v33))
  {
    OUTLINED_FUNCTION_70();
    swift_slowAlloc();
    v34 = OUTLINED_FUNCTION_24();
    v52 = v34;
    *v16 = 136315138;
    v35 = *&v31[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation];
    if (v35)
    {
      v36 = [v35 UUID];
      sub_249E7A608();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    __swift_storeEnumTagSinglePayload(v6, v37, 1, v26);
    v38 = sub_249E7AAC8();
    v40 = sub_249E3A958(v38, v39, &v52);

    *(v16 + 4) = v40;
    OUTLINED_FUNCTION_25_1();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    v46 = OUTLINED_FUNCTION_7_9();
    MEMORY[0x24C205870](v46);
  }

  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E75D1C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v4);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = a1;
  v9 = sub_249E7A698();
  v10 = sub_249E7AE08();

  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_70();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_26_3();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    OUTLINED_FUNCTION_25_1();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    sub_249E2A8CC(v12, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    v19 = OUTLINED_FUNCTION_7_9();
    MEMORY[0x24C205870](v19);
  }

  v20 = [*(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter) conversationManager];
  [v20 refreshActiveConversations];

  sub_249E7AC58();
  v21 = sub_249E7AC78();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v21);
  OUTLINED_FUNCTION_22();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v22;
  sub_249E5ED90(0, 0, v7, &unk_249E81190, v23);
}

uint64_t sub_249E75F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_249E7AC78();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E75FD4, 0, 0);
}

uint64_t sub_249E76230()
{
  OUTLINED_FUNCTION_11();
  sub_249E714E8(&unk_28130D1D0, 0x277D6EEB0, sub_249E79A0C);

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

void sub_249E762BC()
{
  OUTLINED_FUNCTION_23();
  v1 = sub_249E7A698();
  v2 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_120(v2))
  {
    OUTLINED_FUNCTION_32_2();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_6_0(v3);
    OUTLINED_FUNCTION_35_1(&dword_249DEE000, v4, v5, "Reloading Conversation Provider");
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v6 = v0[11];
  v7 = v0[9];

  v8 = *(v7 + v6);
  v0[13] = v8;
  if (v8)
  {

    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v10 = OUTLINED_FUNCTION_80(v9);

    sub_249E70D74(v10, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_249E763CC()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v5 + 120) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249E764E0()
{
  OUTLINED_FUNCTION_82();
  v2 = *(v0 + 120);

  v3 = v2;
  v4 = sub_249E7A698();
  sub_249E7AE08();

  v5 = OUTLINED_FUNCTION_272();
  v6 = *(v0 + 120);
  v7 = *(v0 + 72);
  if (v5)
  {
    OUTLINED_FUNCTION_70();
    swift_slowAlloc();
    OUTLINED_FUNCTION_17_4();
    v8 = swift_slowAlloc();
    *v1 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_11_6();
    _os_log_impl(v11, v12, v13, v14, v15, v16);
    sub_249E2A8CC(v8, &unk_27EF23C30, &qword_249E7DA20);
    v17 = OUTLINED_FUNCTION_7_9();
    MEMORY[0x24C205870](v17);
    v18 = OUTLINED_FUNCTION_9_9();
    MEMORY[0x24C205870](v18);
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_0();

  return v19();
}

uint64_t sub_249E76694(float a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_249E1EE5C(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_249E7670C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_249E7A928();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_249E7A958();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_249E7A468();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_logger;
  (*(v8 + 16))(v10, a1, v7);
  v12 = sub_249E7A698();
  v13 = sub_249E7AE28();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v40 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v39[1] = v11;
    v17 = v16;
    aBlock[0] = v16;
    *v15 = 136315138;
    sub_249E78F10(qword_28130D370, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
    v18 = sub_249E7B2D8();
    v20 = v19;
    (*(v8 + 8))(v10, v7);
    v21 = sub_249E3A958(v18, v20, aBlock);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_249DEE000, v12, v13, "Uplink Muted changed with notification: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C205870](v17, -1, -1);
    v22 = v15;
    v2 = v40;
    MEMORY[0x24C205870](v22, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  sub_249E7A458();
  if (v48)
  {
    sub_249DF691C(0, &unk_28130D180, 0x277D6EDE0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v23 = v51;
    v24 = [v51 callCenter];
    if (v24)
    {
      v25 = v24;
      sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
      if (sub_249E7AF78())
      {
        v40 = *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
        v26 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        *(v27 + 24) = v23;
        v49 = sub_249E78EF0;
        v50 = v27;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_249E52140;
        v48 = &block_descriptor_10;
        v28 = _Block_copy(aBlock);

        v29 = v23;
        v30 = v41;
        sub_249E7A938();
        v51 = MEMORY[0x277D84F90];
        sub_249E78F10(&qword_28130D2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
        sub_249E42168(&qword_28130D2A0, &unk_27EF23D50, &unk_249E80260, MEMORY[0x277D83970]);
        v31 = v43;
        v32 = v46;
        sub_249E7B018();
        MEMORY[0x24C204A90](0, v30, v31, v28);
        _Block_release(v28);

        (*(v45 + 8))(v31, v32);
        (*(v42 + 8))(v30, v44);

        return;
      }
    }

    v33 = v23;
    v34 = sub_249E7A698();
    v35 = sub_249E7AE28();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = [v33 callCenter];
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&dword_249DEE000, v34, v35, "Ignoring TUCall from different call center: %@", v36, 0xCu);
      sub_249E2A8CC(v37, &unk_27EF23C30, &qword_249E7DA20);
      MEMORY[0x24C205870](v37, -1, -1);
      MEMORY[0x24C205870](v36, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_249E2A8CC(aBlock, &unk_27EF23C40, &qword_249E7D8E0);
  }
}

void sub_249E76DEC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_249E76E48(a2);
  }
}

void sub_249E76E48(void *a1)
{
  v2 = v1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  MEMORY[0x28223BE20](v57);
  v5 = &v54 - v4;
  v6 = sub_249E7A628();
  v58 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v54 - v10;
  v12 = sub_249E7A998();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v2[OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue];
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v17 = v16;
  LOBYTE(v16) = sub_249E7A9B8();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if ([a1 status] != 1)
  {
    v26 = a1;
    v27 = sub_249E7A698();
    v28 = sub_249E7AE28();

    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_16;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    v32 = "Ignoring uplink mute changed. Call is not active: %@";
LABEL_15:
    _os_log_impl(&dword_249DEE000, v27, v28, v32, v29, 0xCu);
    sub_249E2A8CC(v30, &unk_27EF23C30, &qword_249E7DA20);
    MEMORY[0x24C205870](v30, -1, -1);
    MEMORY[0x24C205870](v29, -1, -1);
    goto LABEL_16;
  }

  if (![a1 isConversation])
  {
    v33 = a1;
    v27 = sub_249E7A698();
    v28 = sub_249E7AE28();

    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_16;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v33;
    *v30 = v33;
    v34 = v33;
    v32 = "Ignoring uplink mute changed. Call is not conversation: %@";
    goto LABEL_15;
  }

  v18 = sub_249E2E1F4(a1);
  if (!v18)
  {
    v35 = a1;
    v27 = sub_249E7A698();
    v28 = sub_249E7AE28();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v35;
      *v30 = v35;
      v36 = v35;
      v32 = "Ignoring uplink mute changed. Failed to find active conversation for call: %@";
      goto LABEL_15;
    }

LABEL_16:

    return;
  }

  v19 = v18;
  v56 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation;
  v20 = *&v2[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation];
  if (v20)
  {
    v21 = v20;
    v22 = [v19 UUID];
    sub_249E7A608();

    v55 = v21;
    v23 = [v21 UUID];
    sub_249E7A608();

    LOBYTE(v23) = sub_249E7A5F8();
    v24 = *(v58 + 8);
    v24(v9, v6);
    v24(v11, v6);
    if (v23)
    {
      v25 = v55;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_249E1F358(v2, [a1 isUplinkMuted]);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }
  }

  v37 = v19;
  v38 = v2;
  v39 = sub_249E7A698();
  v40 = sub_249E7AE28();

  if (os_log_type_enabled(v39, v40))
  {
    LODWORD(v55) = v40;
    v41 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v59 = v54;
    *v41 = 136315394;
    v42 = [v37 UUID];
    sub_249E7A608();

    sub_249E78F10(&qword_28130D350, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v43 = sub_249E7B2D8();
    v45 = v44;
    (*(v58 + 8))(v11, v6);
    v46 = sub_249E3A958(v43, v45, &v59);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2080;
    v47 = *&v2[v56];
    if (v47)
    {
      v48 = [v47 UUID];
      sub_249E7A608();

      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    __swift_storeEnumTagSinglePayload(v5, v49, 1, v6);
    v50 = sub_249E7AAC8();
    v52 = sub_249E3A958(v50, v51, &v59);

    *(v41 + 14) = v52;
    _os_log_impl(&dword_249DEE000, v39, v55, "Ignoring uplink mute changed. Conversation UUID mismatch. callUUID=%s, activeConverationUUID=%s", v41, 0x16u);
    v53 = v54;
    swift_arrayDestroy();
    MEMORY[0x24C205870](v53, -1, -1);
    MEMORY[0x24C205870](v41, -1, -1);
  }

  else
  {
  }
}

void sub_249E775C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_249E7A468();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_logger;
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_249E7A698();
  v10 = sub_249E7AE28();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v40 = v8;
    v12 = v11;
    v39 = swift_slowAlloc();
    v42[0] = v39;
    *v12 = 136315138;
    sub_249E78F10(qword_28130D370, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
    v13 = sub_249E7B2D8();
    v14 = v2;
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_249E3A958(v13, v16, v42);
    v2 = v14;

    *(v12 + 4) = v17;
    _os_log_impl(&dword_249DEE000, v9, v10, "Call status changed with notification: %s", v12, 0xCu);
    v18 = v39;
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x24C205870](v18, -1, -1);
    MEMORY[0x24C205870](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  sub_249E7A458();
  if (!v42[3])
  {
    sub_249E2A8CC(v42, &unk_27EF23C40, &qword_249E7D8E0);
    return;
  }

  sub_249DF691C(0, &unk_28130D180, 0x277D6EDE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v19 = v41;
  v20 = [v41 callCenter];
  if (v20)
  {
    v21 = v20;
    sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
    if (sub_249E7AF78())
    {
      v22 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeCall;
      v23 = *&v2[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeCall];
      if (v23)
      {
        v19 = v19;
        v24 = v23;
        v25 = sub_249E7AF78();

        if ((v25 & 1) == 0)
        {
LABEL_15:

          return;
        }

        if ([v19 status] == 5 || objc_msgSend(v19, sel_status) == 6)
        {
          v26 = v2;
          v27 = sub_249E7A698();
          v28 = sub_249E7AE28();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            *v29 = 138412290;
            v31 = *&v2[v22];
            *(v29 + 4) = v31;
            *v30 = v31;
            v32 = v31;
            _os_log_impl(&dword_249DEE000, v27, v28, "Active call was disconnected ending conversation. Active Call: %@", v29, 0xCu);
            sub_249E2A8CC(v30, &unk_27EF23C30, &qword_249E7DA20);
            MEMORY[0x24C205870](v30, -1, -1);
            MEMORY[0x24C205870](v29, -1, -1);
          }

          (*((*MEMORY[0x277D85000] & *v26) + 0x1A8))(0);
          goto LABEL_15;
        }
      }

      goto LABEL_22;
    }
  }

  v21 = v19;
  v33 = sub_249E7A698();
  v34 = sub_249E7AE28();

  if (!os_log_type_enabled(v33, v34))
  {

    return;
  }

  v35 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  *v35 = 138412290;
  v37 = [v21 callCenter];
  *(v35 + 4) = v37;
  *v36 = v37;
  _os_log_impl(&dword_249DEE000, v33, v34, "Ignoring TUCall from different call center: %@", v35, 0xCu);
  sub_249E2A8CC(v36, &unk_27EF23C30, &qword_249E7DA20);
  MEMORY[0x24C205870](v36, -1, -1);
  MEMORY[0x24C205870](v35, -1, -1);

LABEL_22:
}

uint64_t sub_249E77B68(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = sub_249E7A468();
  OUTLINED_FUNCTION_3();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_52_2();
  sub_249E7A448();
  v11 = a1;
  a4(v4);

  return (*(v9 + 8))(v4, v7);
}

uint64_t sub_249E77C40(uint64_t a1, uint64_t a2)
{
  v2[57] = a1;
  v2[58] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24200, &qword_249E80860);
  v2[59] = v3;
  v2[60] = *(v3 - 8);
  v2[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E77D0C, 0, 0);
}

uint64_t sub_249E77D0C()
{
  v21 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[62] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_249E7A8A8();
    v5 = v4;
    v0[63] = v3;
    v0[64] = v4;
    v0[65] = OBJC_IVAR____TtC10DropInCore17CallCenterManager_logger;

    v6 = sub_249E7A698();
    v7 = sub_249E7AE28();

    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_70();
      v8 = swift_slowAlloc();
      v9 = OUTLINED_FUNCTION_4_0();
      v20 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_249E3A958(v3, v5, &v20);
      OUTLINED_FUNCTION_90_0(&dword_249DEE000, v10, v11, "Looking up Conversation Provider with Service Name %s");
      __swift_destroy_boxed_opaque_existential_0(v9);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v12 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationProviderManager;
    v0[66] = OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationProviderManager;
    v13 = *(v2 + v12);
    v0[67] = v13;
    v14 = v13;
    v15 = sub_249E7AA88();
    v0[68] = v15;
    v0[2] = v0;
    v0[7] = v0 + 55;
    v0[3] = sub_249E77FB8;
    v16 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF244B8, &qword_249E81268);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_249E78C60;
    v0[29] = &block_descriptor_128;
    v0[30] = v16;
    [v14 conversationProviderForIdentifier:v15 completionHandler:v0 + 26];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_249E0881C();
    OUTLINED_FUNCTION_81_0();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_9_0();

    return v18();
  }
}

uint64_t sub_249E77FB8()
{
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v2 = v1;
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E78088()
{
  v54 = v0;
  v3 = *(v0 + 544);
  v4 = *(v0 + 440);

  if (v4)
  {
    v5 = v4;
    v6 = sub_249E7A698();
    sub_249E7AE28();

    if (OUTLINED_FUNCTION_272())
    {
      OUTLINED_FUNCTION_70();
      swift_slowAlloc();
      OUTLINED_FUNCTION_17_4();
      v7 = swift_slowAlloc();
      *v1 = 138412290;
      *(v1 + 4) = v5;
      *v7 = v4;
      v8 = v5;
      OUTLINED_FUNCTION_11_6();
      _os_log_impl(v9, v10, v11, v12, v13, v14);
      sub_249E2A8CC(v7, &unk_27EF23C30, &qword_249E7DA20);
      v15 = OUTLINED_FUNCTION_7_9();
      MEMORY[0x24C205870](v15);
      v16 = OUTLINED_FUNCTION_9_9();
      MEMORY[0x24C205870](v16);
    }

    *(v0 + 576) = v5;
    v17 = *(v0 + 528);
    v18 = *(v0 + 496);

    v19 = *(v18 + v17);
    *(v0 + 584) = v19;
    v20 = v19;
    v21 = sub_249E7AA88();
    *(v0 + 592) = v21;

    *(v0 + 144) = v0;
    OUTLINED_FUNCTION_30_2();
    swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C98, &qword_249E7F9A0);
    *(v0 + 336) = MEMORY[0x277D85DD0];
    *(v0 + 344) = 1107296256;
    OUTLINED_FUNCTION_29_2();
    [v20 registerForCallbacksForProvider:v21 completionHandler:v0 + 336];
    v22 = v0 + 144;
  }

  else
  {

    v23 = sub_249E7A698();
    v24 = sub_249E7AE28();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = *(v0 + 504);
      v25 = *(v0 + 512);
      OUTLINED_FUNCTION_70();
      swift_slowAlloc();
      v27 = OUTLINED_FUNCTION_24();
      v53 = v27;
      *v2 = 136315138;
      *(v2 + 4) = sub_249E3A958(v26, v25, &v53);
      OUTLINED_FUNCTION_67(&dword_249DEE000, v23, v24, "Attempting to Register Conversation Provider with Service Name %s", v53);
      __swift_destroy_boxed_opaque_existential_0(v27);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      v28 = OUTLINED_FUNCTION_7_9();
      MEMORY[0x24C205870](v28);
    }

    v30 = *(v0 + 480);
    v29 = *(v0 + 488);
    v31 = *(v0 + 472);
    sub_249DF691C(0, &unk_28130D1B0, 0x277D6EEB8);

    v32 = OUTLINED_FUNCTION_83();
    v34 = sub_249E78CAC(v32, v33);
    *(v0 + 552) = v34;
    v35 = sub_249E7AA88();
    [v34 setPseudonymFeatureID_];

    [v34 setWantsLeaveOnInvalidation_];
    sub_249E7A828();
    OUTLINED_FUNCTION_68_0(&qword_28130D338);
    OUTLINED_FUNCTION_68_0(&qword_28130D330);
    OUTLINED_FUNCTION_68_0(&qword_28130D328);
    sub_249E7A6E8();
    v36 = (*(v30 + 8))(v29, v31);
    if (*(v0 + 608) == 1)
    {
      v37 = (*((*MEMORY[0x277D85000] & **(v0 + 496)) + 0x188))(v36);
      v39 = v38;

      v40 = sub_249E7A698();
      v41 = sub_249E7AE28();

      if (os_log_type_enabled(v40, v41))
      {
        OUTLINED_FUNCTION_70();
        v42 = swift_slowAlloc();
        v43 = OUTLINED_FUNCTION_4_0();
        v53 = v43;
        *v42 = 136315138;
        *(v0 + 424) = v37;
        *(v0 + 432) = v39;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23FA0, &unk_249E7DF00);
        v44 = sub_249E7AAC8();
        v46 = sub_249E3A958(v44, v45, &v53);

        *(v42 + 4) = v46;
        OUTLINED_FUNCTION_90_0(&dword_249DEE000, v47, v48, "Using client bundle ID: %s");
        __swift_destroy_boxed_opaque_existential_0(v43);
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
      }

      if (v39)
      {
        v49 = sub_249E7AA88();
      }

      else
      {
        v49 = 0;
      }

      [v34 setBundleID_];
    }

    v50 = *(*(v0 + 496) + *(v0 + 528));
    *(v0 + 560) = v50;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 448;
    *(v0 + 88) = sub_249E786A4;
    v51 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF244C0, &unk_249E81270);
    *(v0 + 272) = MEMORY[0x277D85DD0];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_249E1937C;
    *(v0 + 296) = &block_descriptor_131;
    *(v0 + 304) = v51;
    [v50 registerConversationProviderForConfiguration:v34 completionHandler:v0 + 272];
    v22 = v0 + 80;
  }

  return MEMORY[0x282200938](v22);
}

uint64_t sub_249E786A4()
{
  OUTLINED_FUNCTION_11();
  v1 = *(*v0 + 112);
  *(*v0 + 568) = v1;
  if (v1)
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E787B4()
{
  OUTLINED_FUNCTION_82();
  v1 = *(v0 + 560);
  v2 = *(v0 + 496);
  v3 = *(v0 + 448);

  v4 = v3;
  v5 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_272())
  {
    OUTLINED_FUNCTION_70();
    swift_slowAlloc();
    OUTLINED_FUNCTION_17_4();
    v6 = swift_slowAlloc();
    *v2 = 138412290;
    *(v2 + 4) = v4;
    *v6 = v4;
    OUTLINED_FUNCTION_11_6();
    _os_log_impl(v7, v8, v9, v10, v11, v12);
    sub_249E2A8CC(v6, &unk_27EF23C30, &qword_249E7DA20);
    v13 = OUTLINED_FUNCTION_7_9();
    MEMORY[0x24C205870](v13);
    v14 = OUTLINED_FUNCTION_9_9();
    MEMORY[0x24C205870](v14);

    v15 = *(v0 + 552);
  }

  else
  {

    v15 = v4;
  }

  *(v0 + 576) = v4;
  v16 = *(v0 + 528);
  v17 = *(v0 + 496);

  v18 = *(v17 + v16);
  *(v0 + 584) = v18;
  v19 = v18;
  v20 = sub_249E7AA88();
  *(v0 + 592) = v20;

  *(v0 + 144) = v0;
  OUTLINED_FUNCTION_30_2();
  swift_continuation_init();
  *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C98, &qword_249E7F9A0);
  *(v0 + 336) = MEMORY[0x277D85DD0];
  *(v0 + 344) = 1107296256;
  OUTLINED_FUNCTION_29_2();
  [v19 registerForCallbacksForProvider:v20 completionHandler:v0 + 336];

  return MEMORY[0x282200938](v0 + 144);
}

uint64_t sub_249E789AC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 600) = *(v0 + 176);
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E78AB0()
{
  OUTLINED_FUNCTION_82();
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 456);

  *v4 = v3;

  OUTLINED_FUNCTION_9_0();

  return v5();
}

uint64_t sub_249E78B40()
{
  OUTLINED_FUNCTION_82();
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[62];
  swift_willThrow();

  OUTLINED_FUNCTION_9_0();

  return v4();
}

uint64_t sub_249E78BCC()
{
  OUTLINED_FUNCTION_82();
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[62];
  swift_willThrow();

  OUTLINED_FUNCTION_9_0();

  return v5();
}

uint64_t sub_249E78C60(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_249DF5DE4(v3, a2);
}

id sub_249E78CAC(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_249E7AA88();

  v4 = [v2 initWithServiceName_];

  return v4;
}

unint64_t sub_249E78D20(uint64_t a1, uint64_t a2)
{
  v2 = sub_249E7B268();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_249E78D6C(char a1)
{
  result = 0x666C65536C696ELL;
  switch(a1)
  {
    case 1:
      result = 0x69766F72506C696ELL;
      break;
    case 2:
      result = 0x6F64756573506F6ELL;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000023;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0x6576697463416F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_249E78E8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_249E78D20(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_249E78EBC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_249E78D6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249E78F10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_249E78F58()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3_3(v2);
  *v3 = v4;
  v3[1] = sub_249E042BC;
  OUTLINED_FUNCTION_79();

  return sub_249E75F14(v5, v6, v7, v1);
}

uint64_t sub_249E78FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_249E790C4;

  return sub_249E71844(a2, a3, a4, a5, a6);
}

uint64_t sub_249E790C4()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_249E791BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_249E799E8;

  return sub_249E71C70(a2, a3, a4, a5, a6);
}

uint64_t sub_249E79284()
{
  OUTLINED_FUNCTION_87_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_34_3(v1);

  return v4(v3);
}

unint64_t sub_249E79328()
{
  result = qword_28130D1C0;
  if (!qword_28130D1C0)
  {
    sub_249DF691C(255, &qword_28130D1C8, 0x277D6EEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130D1C0);
  }

  return result;
}

uint64_t sub_249E79390(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_28_0();
  v5 = OUTLINED_FUNCTION_83();
  v6(v5);
  return a2;
}

uint64_t objectdestroy_28Tm_0()
{

  v1 = OUTLINED_FUNCTION_81();

  return MEMORY[0x2821FE8E8](v1, v2, 7);
}

uint64_t objectdestroy_40Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249E79494()
{
  OUTLINED_FUNCTION_87_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_34_3(v1);

  return v4(v3);
}

uint64_t sub_249E79564(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF244A0, &qword_249E81218);
  OUTLINED_FUNCTION_37(v2);

  return sub_249E73734(a1);
}

uint64_t sub_249E795E4(char a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF244B0, &qword_249E81230);
  OUTLINED_FUNCTION_37(v4);

  return sub_249E741F4(a1, a2);
}

uint64_t objectdestroy_92Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_28_0();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v2 + v5);

  return MEMORY[0x2821FE8E8](v2, v5 + v6, v4 | 7);
}

uint64_t sub_249E79700(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23690, &qword_249E7DF10);
  OUTLINED_FUNCTION_37(v2);

  return sub_249E05F84(a1);
}

uint64_t objectdestroy_85Tm()
{

  v0 = OUTLINED_FUNCTION_81();

  return MEMORY[0x2821FE8E8](v0, v1, 7);
}

uint64_t sub_249E797D8()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  *v4 = v5;
  v4[1] = sub_249E042BC;

  return sub_249E77C40(v2, v0);
}

_BYTE *storeEnumTagSinglePayload for CallCenterManager.CallCenterManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_249E79964()
{
  result = qword_27EF244C8;
  if (!qword_27EF244C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF244C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_5()
{

  return sub_249E7B018();
}

void OUTLINED_FUNCTION_22_4()
{

  JUMPOUT(0x24C204A90);
}

void OUTLINED_FUNCTION_29_2()
{
  v1[44] = sub_249E4518C;
  v1[45] = v0;
  v1[46] = v2;
}

uint64_t OUTLINED_FUNCTION_33_1(unint64_t *a1)
{

  return sub_249E42168(a1, v2, v1, &unk_249E81078);
}

void OUTLINED_FUNCTION_35_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_58_0(uint64_t result)
{
  *(v2 + 24) = result;
  *(result + 16) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_0(uint64_t a1)
{
  *(v1 + 152) = a1;
  *(v2 + 128) = a1;
  *(v2 + 136) = 0;
}

void OUTLINED_FUNCTION_67(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_68_0(unint64_t *a1)
{

  return sub_249E42168(a1, v2, v3, v1);
}

uint64_t OUTLINED_FUNCTION_69_0()
{
  *(v1 + 120) = v0;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_71()
{
}

void OUTLINED_FUNCTION_89(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

void OUTLINED_FUNCTION_90_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_91_0()
{

  return swift_task_create();
}

BOOL OUTLINED_FUNCTION_92_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_94_0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_249E42168(a1, v4, v5, a4);
}

uint64_t OUTLINED_FUNCTION_96()
{
  sub_249DF1A08(v2, v1);
  sub_249DF2C94(v0, 1);

  return sub_249E7A698();
}

uint64_t sub_249E79F30()
{
  v1 = OBJC_IVAR____TtC10DropInCore22PhoneCallVolumeBooster_logger;
  v2 = sub_249E7A6B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249E79FA0()
{
  sub_249E79F30();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for PhoneCallVolumeBooster(uint64_t a1)
{
  result = qword_27EF244D8;
  if (!qword_27EF244D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E7A020(uint64_t a1)
{
  result = sub_249E7A6B8();
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

void sub_249E7A0D4(uint64_t a1)
{
  sub_249E7A5B8();
  if (v1 <= 0x3F)
  {
    sub_249E7A3D8(319, &qword_28130D348, MEMORY[0x277CC95F0]);
    if (v2 <= 0x3F)
    {
      sub_249E7A3D8(319, qword_28130D470, type metadata accessor for Pseudonym);
      if (v3 <= 0x3F)
      {
        sub_249E7A6B8();
        if (v4 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_249E7A278()
{
  v1 = qword_28130DB90;
  sub_249E7A5B8();
  OUTLINED_FUNCTION_21();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_1_13(qword_28130E758);
  OUTLINED_FUNCTION_1_13(qword_28130E740);

  OUTLINED_FUNCTION_1_13(qword_28130E748);
  sub_249E044D0(v0 + qword_28130E750, &qword_27EF236D0, &qword_249E7E010);

  v3 = qword_28130DB88;
  sub_249E7A6B8();
  OUTLINED_FUNCTION_21();
  (*(v4 + 8))(v0 + v3);
  sub_249DF77C0(v0 + qword_28130DB98);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249E7A394()
{
  sub_249E7A278();

  return MEMORY[0x282200960](v0);
}

void sub_249E7A3D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_249E7AFC8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_13@<X0>(uint64_t a1@<X8>)
{

  return sub_249E044D0(v2 + a1, v1, v3);
}