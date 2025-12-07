unint64_t sub_24AEFE6DC()
{
  result = qword_27EFC09C0;
  if (!qword_27EFC09C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC09C0);
  }

  return result;
}

uint64_t sub_24AEFE730()
{
  sub_24AF35D0C();
  sub_24AF35D3C();
  return sub_24AF35D4C();
}

uint64_t sub_24AEFE79C(uint64_t a1)
{
  sub_24AF35D0C();
  sub_24AF35D3C();
  return sub_24AF35D4C();
}

unint64_t sub_24AEFE7FC()
{
  result = qword_27EFC09C8;
  if (!qword_27EFC09C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC09D0, &qword_24AF384F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC09C8);
  }

  return result;
}

unint64_t sub_24AEFE870(void *a1)
{
  a1[1] = sub_24AEFE8A8();
  a1[2] = sub_24AEFE8FC();
  result = sub_24AEFE950();
  a1[3] = result;
  return result;
}

unint64_t sub_24AEFE8A8()
{
  result = qword_27EFC09D8;
  if (!qword_27EFC09D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC09D8);
  }

  return result;
}

unint64_t sub_24AEFE8FC()
{
  result = qword_27EFC09E0;
  if (!qword_27EFC09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC09E0);
  }

  return result;
}

unint64_t sub_24AEFE950()
{
  result = qword_27EFC09E8;
  if (!qword_27EFC09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC09E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NullMessageType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NullMessageType(_WORD *result, int a2, int a3)
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

unint64_t sub_24AEFEB5C()
{
  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  else
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_24AEFEBE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24AF00848(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24AEFEC28(uint64_t a1)
{
  v2 = sub_24AEFF55C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AEFEC64(uint64_t a1)
{
  v2 = sub_24AEFF55C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AEFECAC(uint64_t a1)
{
  v2 = sub_24AEFF700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AEFECE8(uint64_t a1)
{
  v2 = sub_24AEFF700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AEFED24(uint64_t a1)
{
  v2 = sub_24AEFF658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AEFED60(uint64_t a1)
{
  v2 = sub_24AEFF658();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AEFED9C(uint64_t a1)
{
  v2 = sub_24AEFF604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AEFEDD8(uint64_t a1)
{
  v2 = sub_24AEFF604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AEFEE14(uint64_t a1)
{
  v2 = sub_24AEFF754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AEFEE50(uint64_t a1)
{
  v2 = sub_24AEFF754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AEFEE8C(uint64_t a1)
{
  v2 = sub_24AEFF5B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AEFEEC8(uint64_t a1)
{
  v2 = sub_24AEFF5B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AEFEF04(uint64_t a1)
{
  v2 = sub_24AEFF6AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AEFEF40(uint64_t a1)
{
  v2 = sub_24AEFF6AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessagingCapability.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC09F0, "h<");
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC09F8, &qword_24AF385D8);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A00, &qword_24AF385E0);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A08, &qword_24AF385E8);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A10, &qword_24AF385F0);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x28223BE20](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A18, &qword_24AF385F8);
  v26 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A20, &qword_24AF38600);
  v16 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AEFF55C();
  sub_24AF35D6C();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_24AEFF658();
      v21 = v33;
      v22 = v42;
      sub_24AF35B5C();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_24AEFF604();
      v21 = v36;
      v22 = v42;
      sub_24AF35B5C();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_24AEFF5B0();
      v21 = v39;
      v22 = v42;
      sub_24AF35B5C();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_24AEFF700();
      v21 = v27;
      v22 = v42;
      sub_24AF35B5C();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_24AEFF6AC();
      v21 = v30;
      v22 = v42;
      sub_24AF35B5C();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_24AEFF754();
  v22 = v42;
  sub_24AF35B5C();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

unint64_t sub_24AEFF55C()
{
  result = qword_27EFC0A28;
  if (!qword_27EFC0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0A28);
  }

  return result;
}

unint64_t sub_24AEFF5B0()
{
  result = qword_27EFC0A30;
  if (!qword_27EFC0A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0A30);
  }

  return result;
}

unint64_t sub_24AEFF604()
{
  result = qword_27EFC0A38;
  if (!qword_27EFC0A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0A38);
  }

  return result;
}

unint64_t sub_24AEFF658()
{
  result = qword_27EFC0A40;
  if (!qword_27EFC0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0A40);
  }

  return result;
}

unint64_t sub_24AEFF6AC()
{
  result = qword_27EFC0A48;
  if (!qword_27EFC0A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0A48);
  }

  return result;
}

unint64_t sub_24AEFF700()
{
  result = qword_27EFC0A50;
  if (!qword_27EFC0A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0A50);
  }

  return result;
}

unint64_t sub_24AEFF754()
{
  result = qword_27EFC0A58;
  if (!qword_27EFC0A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0A58);
  }

  return result;
}

uint64_t MessagingCapability.hashValue.getter()
{
  v1 = *v0;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v1);
  return sub_24AF35D4C();
}

uint64_t MessagingCapability.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A60, &qword_24AF38608);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v43[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A68, &qword_24AF38610);
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  MEMORY[0x28223BE20](v5);
  v57 = &v43[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A70, &qword_24AF38618);
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  MEMORY[0x28223BE20](v8);
  v61 = &v43[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A78, &qword_24AF38620);
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  v60 = &v43[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A80, &qword_24AF38628);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v43[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A88, &qword_24AF38630);
  v46 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v43[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A90, &qword_24AF38638);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v43[-v21];
  v23 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24AEFF55C();
  v24 = v62;
  sub_24AF35D5C();
  if (!v24)
  {
    v45 = v16;
    v25 = v15;
    v27 = v60;
    v26 = v61;
    v62 = v20;
    v28 = v22;
    v29 = sub_24AF35B3C();
    if (*(v29 + 16) != 1 || (v30 = *(v29 + 32), v30 == 6))
    {
      v33 = sub_24AF3596C();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A98, &qword_24AF38640);
      *v35 = &type metadata for MessagingCapability;
      sub_24AF35ABC();
      sub_24AF3595C();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
      swift_willThrow();
      (*(v62 + 8))(v28, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = *(v29 + 32);
      if (v30 > 2)
      {
        if (v30 == 3)
        {
          v39 = v59;
          v67 = 3;
          sub_24AEFF658();
          sub_24AF35AAC();
          v40 = v62;
          (*(v52 + 8))(v26, v51);
          (*(v40 + 8))(v22, v19);
          swift_unknownObjectRelease();
          v36 = v39;
        }

        else
        {
          v36 = v59;
          v37 = v62;
          if (v30 == 4)
          {
            v68 = 4;
            sub_24AEFF604();
            v38 = v57;
            sub_24AF35AAC();
            (*(v54 + 8))(v38, v53);
          }

          else
          {
            v69 = 5;
            sub_24AEFF5B0();
            v41 = v58;
            sub_24AF35AAC();
            (*(v55 + 8))(v41, v56);
          }

          (*(v37 + 8))(v22, v19);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v30)
        {
          if (v30 == 1)
          {
            v65 = 1;
            sub_24AEFF700();
            v31 = v25;
            sub_24AF35AAC();
            v32 = v62;
            (*(v47 + 8))(v31, v48);
          }

          else
          {
            v66 = 2;
            sub_24AEFF6AC();
            sub_24AF35AAC();
            v32 = v62;
            (*(v49 + 8))(v27, v50);
          }
        }

        else
        {
          v64 = 0;
          sub_24AEFF754();
          sub_24AF35AAC();
          (*(v46 + 8))(v18, v45);
          v32 = v62;
        }

        (*(v32 + 8))(v22, v19);
        swift_unknownObjectRelease();
        v36 = v59;
      }

      *v36 = v44;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v63);
}

unint64_t sub_24AF00064()
{
  result = qword_281393268;
  if (!qword_281393268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281393268);
  }

  return result;
}

unint64_t sub_24AF000BC()
{
  result = qword_27EFC0AA0;
  if (!qword_27EFC0AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0AA8, &qword_24AF386B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Destination.DestinationType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Destination.DestinationType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24AF00324()
{
  result = qword_27EFC0AB0;
  if (!qword_27EFC0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AB0);
  }

  return result;
}

unint64_t sub_24AF0037C()
{
  result = qword_27EFC0AB8;
  if (!qword_27EFC0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AB8);
  }

  return result;
}

unint64_t sub_24AF003D4()
{
  result = qword_27EFC0AC0;
  if (!qword_27EFC0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AC0);
  }

  return result;
}

unint64_t sub_24AF0042C()
{
  result = qword_27EFC0AC8;
  if (!qword_27EFC0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AC8);
  }

  return result;
}

unint64_t sub_24AF00484()
{
  result = qword_27EFC0AD0;
  if (!qword_27EFC0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AD0);
  }

  return result;
}

unint64_t sub_24AF004DC()
{
  result = qword_27EFC0AD8;
  if (!qword_27EFC0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AD8);
  }

  return result;
}

unint64_t sub_24AF00534()
{
  result = qword_27EFC0AE0;
  if (!qword_27EFC0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AE0);
  }

  return result;
}

unint64_t sub_24AF0058C()
{
  result = qword_27EFC0AE8;
  if (!qword_27EFC0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AE8);
  }

  return result;
}

unint64_t sub_24AF005E4()
{
  result = qword_27EFC0AF0;
  if (!qword_27EFC0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AF0);
  }

  return result;
}

unint64_t sub_24AF0063C()
{
  result = qword_27EFC0AF8;
  if (!qword_27EFC0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AF8);
  }

  return result;
}

unint64_t sub_24AF00694()
{
  result = qword_27EFC0B00;
  if (!qword_27EFC0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0B00);
  }

  return result;
}

unint64_t sub_24AF006EC()
{
  result = qword_27EFC0B08;
  if (!qword_27EFC0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0B08);
  }

  return result;
}

unint64_t sub_24AF00744()
{
  result = qword_27EFC0B10;
  if (!qword_27EFC0B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0B10);
  }

  return result;
}

unint64_t sub_24AF0079C()
{
  result = qword_27EFC0B18;
  if (!qword_27EFC0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0B18);
  }

  return result;
}

unint64_t sub_24AF007F4()
{
  result = qword_27EFC0B20;
  if (!qword_27EFC0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0B20);
  }

  return result;
}

uint64_t sub_24AF00848(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x800000024AF37110 == a2;
  if (v4 || (sub_24AF35C4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024AF37130 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024AF37150 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024AF37170 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024AF37190 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024AF371B0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24AF35C4C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24AF00A90(uint64_t a1, const char *a2, ...)
{
  v2 = a1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v35 = v8;
  while (1)
  {
    v11 = v9;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v12 = __clz(__rbit64(v6)) | (v9 << 6);
    sub_24AEE2A84(*(v2 + 48) + 40 * v12, v44);
    sub_24AED0E50(*(v2 + 56) + 32 * v12, v45);
    sub_24AEE2A84(v44, &v37);
    if (swift_dynamicCast())
    {
      v41 = v40;
      v13 = v46;
      v14 = __swift_project_boxed_opaque_existential_1(v45, v46);
      *(&v43 + 1) = v13;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v42);
      (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v14, v13);
    }

    else
    {
      if (qword_27EFC0728 != -1)
      {
        swift_once();
      }

      v16 = sub_24AF3529C();
      __swift_project_value_buffer(v16, qword_27EFC4C00);
      sub_24AEE2A84(v44, &v37);
      v17 = sub_24AF3527C();
      v18 = sub_24AF3570C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v36 = v10;
        v20 = swift_slowAlloc();
        *&v40 = v20;
        *v19 = 136446210;
        v21 = sub_24AF358AC();
        v23 = v22;
        sub_24AEE2AE0(&v37);
        v24 = sub_24AEF599C(v21, v23, &v40);
        v2 = v35;

        *(v19 + 4) = v24;
        _os_log_impl(&dword_24AECF000, v17, v18, a2, v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        v25 = v20;
        v10 = v36;
        MEMORY[0x24C236490](v25, -1, -1);
        MEMORY[0x24C236490](v19, -1, -1);
      }

      else
      {

        sub_24AEE2AE0(&v37);
      }

      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
    }

    v6 &= v6 - 1;
    sub_24AEE2E10(v44, &qword_27EFC0810, &qword_24AF37C18);
    if (*(&v41 + 1))
    {
      v37 = v41;
      v38 = v42;
      v39 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_24AEF5854(0, v10[2] + 1, 1, v10);
      }

      v27 = v10[2];
      v26 = v10[3];
      if (v27 >= v26 >> 1)
      {
        v10 = sub_24AEF5854((v26 > 1), v27 + 1, 1, v10);
      }

      v10[2] = v27 + 1;
      v28 = &v10[6 * v27];
      v29 = v37;
      v30 = v39;
      v28[3] = v38;
      v28[4] = v30;
      v28[2] = v29;
    }

    else
    {
      sub_24AEE2E10(&v41, &qword_27EFC0B28, &unk_24AF38D70);
    }
  }

  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v11;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  if (v10[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0770, &qword_24AF37B90);
    v31 = sub_24AF35A7C();
  }

  else
  {
    v31 = MEMORY[0x277D84F98];
  }

  v44[0] = v31;

  sub_24AF00F3C(v32, 1, v44);

  return v44[0];
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

void sub_24AF00F3C(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_24AF012F8(a1 + 32, &v44);
  v8 = v44;
  v7 = v45;
  v42 = v44;
  v43 = v45;
  sub_24AEE2FBC(v46, v41);
  v9 = *a3;
  v10 = sub_24AEDA1DC(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_24AEDB744(v15, a2 & 1);
    v10 = sub_24AEDA1DC(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_24AF35C8C();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_24AEDD390();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v47 = v18;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0898, &qword_24AF37D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_0(v41);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_24AEE2FBC(v41, (v21[7] + 32 * v10));
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v25 = a1 + 80;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_24AF012F8(v25, &v44);
      v28 = v44;
      v27 = v45;
      v42 = v44;
      v43 = v45;
      sub_24AEE2FBC(v46, v41);
      v29 = *a3;
      v30 = sub_24AEDA1DC(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_24AEDB744(v34, 1);
        v30 = sub_24AEDA1DC(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_24AEE2FBC(v41, (v37[7] + 32 * v30));
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 48;
      if (v4 == v26)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_24AF3592C();
  MEMORY[0x24C235440](0xD00000000000001BLL, 0x800000024AF37210);
  sub_24AF35A0C();
  MEMORY[0x24C235440](39, 0xE100000000000000);
  sub_24AF35A3C();
  __break(1u);
}

uint64_t sub_24AF012F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0778, &qword_24AF38080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AF01368(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_24AEF6148(0, v1, 0);
  v2 = v26;
  v25 = a1 + 56;
  result = sub_24AF357DC();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_24AF353AC();
    v13 = *(v26 + 16);
    v12 = *(v26 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_24AEF6148((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    *(v26 + 16) = v13 + 1;
    v14 = v26 + 16 * v13;
    *(v14 + 32) = result;
    *(v14 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      v8 = v24;
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_24AF04640(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_24AF04640(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t MessagingOptions.dictionaryValue.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v66[-v3];
  v5 = sub_24AF3521C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v66[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0B30, &qword_24AF38DC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AF37AB0;
  *(inited + 32) = sub_24AF353AC();
  *(inited + 40) = v10;
  v11 = MEMORY[0x277D839B0];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v12 = sub_24AEE2824(inited);
  swift_setDeallocating();
  sub_24AEE2E10(inited + 32, &qword_27EFC07D8, &qword_24AF38DD0);
  v13 = sub_24AF353AC();
  v15 = v14;
  v16 = sub_24AF351CC();
  v70 = MEMORY[0x277CC9318];
  *&v69 = v16;
  *(&v69 + 1) = v17;
  sub_24AED0F00(&v69, v68);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = v12;
  sub_24AF0305C(v68, v13, v15, isUniquelyReferenced_nonNull_native);

  v19 = v67;
  v20 = type metadata accessor for MessagingOptions(0);
  if (*(v1 + v20[6]) == 1)
  {
    v21 = sub_24AF353AC();
    v22 = v11;
    v24 = v23;
    v70 = v22;
    LOBYTE(v69) = 1;
    sub_24AED0F00(&v69, v68);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v19;
    sub_24AF0305C(v68, v21, v24, v25);

    v19 = v67;
  }

  sub_24AEF8C60(v1 + v20[7], v4);
  v26 = (*(v6 + 48))(v4, 1, v5);
  v27 = MEMORY[0x277D837D0];
  if (v26 == 1)
  {
    sub_24AEE2E10(v4, &qword_27EFC11C0, &qword_24AF38DC0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v28 = sub_24AF353AC();
    v30 = v29;
    v31 = sub_24AF351EC();
    v70 = v27;
    *&v69 = v31;
    *(&v69 + 1) = v32;
    sub_24AED0F00(&v69, v68);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v19;
    sub_24AF0305C(v68, v28, v30, v33);

    (*(v6 + 8))(v8, v5);
    v19 = v67;
  }

  v34 = (v1 + v20[8]);
  if ((v34[1] & 1) == 0)
  {
    v35 = *v34;
    v36 = sub_24AF353AC();
    v38 = v37;
    v70 = MEMORY[0x277D839F8];
    *&v69 = v35;
    sub_24AED0F00(&v69, v68);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v19;
    sub_24AF0305C(v68, v36, v38, v39);

    v19 = v67;
  }

  if (*(v1 + v20[9]) == 1)
  {
    v40 = sub_24AF353AC();
    v42 = v41;
    v70 = MEMORY[0x277D839B0];
    LOBYTE(v69) = 1;
    sub_24AED0F00(&v69, v68);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v19;
    sub_24AF0305C(v68, v40, v42, v43);

    v19 = v67;
  }

  v44 = (v1 + v20[12]);
  v45 = v44[1];
  if (v45)
  {
    v46 = *v44;
    v47 = sub_24AF353AC();
    v49 = v48;
    v70 = v27;
    *&v69 = v46;
    *(&v69 + 1) = v45;
    sub_24AED0F00(&v69, v68);

    v50 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v19;
    sub_24AF0305C(v68, v47, v49, v50);

    v19 = v67;
  }

  v51 = *(v1 + v20[10]);
  if (*(v51 + 16))
  {
    v52 = sub_24AF01368(v51);
    v53 = sub_24AEF69F8(v52);

    v54 = sub_24AF353AC();
    v56 = v55;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0B38, &qword_24AF38DD8);
    *&v69 = v53;
    sub_24AED0F00(&v69, v68);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v19;
    sub_24AF0305C(v68, v54, v56, v57);

    v19 = v67;
  }

  v58 = *(v1 + v20[11]);
  if (*(v58 + 16))
  {
    v59 = sub_24AF01368(v58);
    v60 = sub_24AEF69F8(v59);

    v61 = sub_24AF353AC();
    v63 = v62;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0B38, &qword_24AF38DD8);
    *&v69 = v60;
    sub_24AED0F00(&v69, v68);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v19;
    sub_24AF0305C(v68, v61, v63, v64);

    return v67;
  }

  return v19;
}

double MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = type metadata accessor for MessagingOptions(0);
  v19 = v18[7];
  v20 = sub_24AF3521C();
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  sub_24AF3520C();
  *(a9 + v18[5]) = a1;
  *(a9 + v18[6]) = a2;
  sub_24AEF8E70(a3, a9 + v19);
  v21 = a9 + v18[8];
  *v21 = a4;
  *(v21 + 8) = a5 & 1;
  *(a9 + v18[9]) = a6;
  *(a9 + v18[10]) = a7;
  *(a9 + v18[11]) = a8;
  v22 = (a9 + v18[12]);
  *v22 = a10;
  v22[1] = a11;
  result = 3433.05319;
  *(a9 + v18[13]) = xmmword_24AF37E10;
  return result;
}

uint64_t MessagingOptions.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AF3521C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MessagingOptions.destinations.getter()
{
  type metadata accessor for MessagingOptions(0);
}

uint64_t MessagingOptions.expectsPeerResponse.setter(char a1)
{
  result = type metadata accessor for MessagingOptions(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t MessagingOptions.responseIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MessagingOptions(0) + 28);

  return sub_24AEF8C60(v3, a1);
}

uint64_t MessagingOptions.responseIdentifier.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MessagingOptions(0) + 28);

  return sub_24AEF8E70(a1, v3);
}

uint64_t MessagingOptions.requiredCapabilities.getter()
{
  type metadata accessor for MessagingOptions(0);
}

uint64_t MessagingOptions.lackingCapabilities.getter()
{
  type metadata accessor for MessagingOptions(0);
}

uint64_t MessagingOptions.queueOneIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessagingOptions(0) + 48));

  return v1;
}

uint64_t MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:timeout:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = type metadata accessor for MessagingOptions(0);
  v20 = v19[7];
  v21 = sub_24AF3521C();
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  sub_24AF3520C();
  *(a9 + v19[5]) = a1;
  *(a9 + v19[6]) = a2;
  result = sub_24AEF8E70(a3, a9 + v20);
  v23 = a9 + v19[8];
  *v23 = a4;
  *(v23 + 8) = a5 & 1;
  *(a9 + v19[9]) = a6;
  *(a9 + v19[10]) = a7;
  *(a9 + v19[11]) = a8;
  v24 = (a9 + v19[12]);
  *v24 = a10;
  v24[1] = a11;
  v25 = (a9 + v19[13]);
  *v25 = a12;
  v25[1] = a13;
  return result;
}

uint64_t sub_24AF021F0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000013;
    v6 = 0x74756F656D6974;
    if (a1 == 8)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000014;
    if (a1 == 5)
    {
      v7 = 0x46646E4165726966;
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
    v1 = 0x696669746E656469;
    v2 = 0xD000000000000013;
    v3 = 0xD000000000000012;
    if (a1 != 3)
    {
      v3 = 0x694C6F54656D6974;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x74616E6974736564;
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

uint64_t sub_24AF02364@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24AF03E90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24AF02398(uint64_t a1)
{
  v2 = sub_24AF03678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AF023D4(uint64_t a1)
{
  v2 = sub_24AF03678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessagingOptions.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0B40, &qword_24AF38DE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF03678();
  sub_24AF35D6C();
  LOBYTE(v11) = 0;
  sub_24AF3521C();
  sub_24AF037EC(&qword_27EFC0B50, MEMORY[0x277CC95F8]);
  sub_24AF35BCC();
  if (!v2)
  {
    v9 = type metadata accessor for MessagingOptions(0);
    *&v11 = *(v3 + v9[5]);
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0B58, &qword_24AF38DE8);
    sub_24AF03830(&qword_27EFC0B60, sub_24AF036CC, MEMORY[0x277D83948]);
    sub_24AF35BCC();
    LOBYTE(v11) = 2;
    sub_24AF35BAC();
    LOBYTE(v11) = 3;
    sub_24AF35B8C();
    LOBYTE(v11) = 4;
    sub_24AF35B7C();
    LOBYTE(v11) = 5;
    sub_24AF35BAC();
    *&v11 = *(v3 + v9[10]);
    v12 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0760, &qword_24AF38DF0);
    sub_24AF03720(&qword_27EFC0B68, sub_24AF03798, MEMORY[0x277D83B50]);
    sub_24AF35BCC();
    *&v11 = *(v3 + v9[11]);
    v12 = 7;
    sub_24AF35BCC();
    LOBYTE(v11) = 8;
    sub_24AF35B6C();
    v11 = *(v3 + v9[13]);
    v12 = 9;
    sub_24AF35BCC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MessagingOptions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v32 - v4;
  v5 = sub_24AF3521C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0B78, &qword_24AF38DF8);
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v9 = &v32 - v8;
  v10 = type metadata accessor for MessagingOptions(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 28);
  v37 = v6;
  (*(v6 + 56))(&v13[v14], 1, 1, v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF03678();
  v42 = v9;
  v15 = v43;
  sub_24AF35D5C();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_24AEE2E10(&v13[v14], &qword_27EFC11C0, &qword_24AF38DC0);
  }

  else
  {
    v16 = v38;
    v17 = v39;
    v43 = v14;
    v34 = v13;
    v35 = a1;
    v33 = v10;
    LOBYTE(v44) = 0;
    v18 = sub_24AF037EC(&qword_27EFC0B80, MEMORY[0x277CC9618]);
    sub_24AF35B2C();
    v32 = v18;
    v19 = v34;
    (*(v37 + 32))(v34, v40, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0B58, &qword_24AF38DE8);
    v45 = 1;
    sub_24AF03830(&qword_27EFC0B88, sub_24AF038A8, MEMORY[0x277D83978]);
    sub_24AF35B2C();
    v20 = v33;
    *&v19[v33[5]] = v44;
    LOBYTE(v44) = 2;
    v40 = 0;
    v19[v20[6]] = sub_24AF35B0C() & 1;
    LOBYTE(v44) = 3;
    sub_24AF35AEC();
    sub_24AEF8E70(v17, &v19[v43]);
    LOBYTE(v44) = 4;
    v21 = sub_24AF35ADC();
    v22 = v33;
    v23 = &v19[v33[8]];
    *v23 = v21;
    v23[8] = v24 & 1;
    LOBYTE(v44) = 5;
    v25 = sub_24AF35B0C();
    v39 = v5;
    v19[v22[9]] = v25 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0760, &qword_24AF38DF0);
    v45 = 6;
    sub_24AF03720(&qword_27EFC0B98, sub_24AF038FC, MEMORY[0x277D83B70]);
    sub_24AF35B2C();
    *&v19[v22[10]] = v44;
    v45 = 7;
    sub_24AF35B2C();
    v26 = v34;
    *&v34[v33[11]] = v44;
    LOBYTE(v44) = 8;
    v27 = sub_24AF35ACC();
    v28 = &v26[v33[12]];
    *v28 = v27;
    v28[1] = v29;
    v45 = 9;
    sub_24AF35B2C();
    (*(v16 + 8))(v42, v41);
    v30 = v34;
    *&v34[v33[13]] = v44;
    sub_24AF045D8(v30, v36, type metadata accessor for MessagingOptions);
    __swift_destroy_boxed_opaque_existential_0(v35);
    return sub_24AF03950(v30);
  }
}

_OWORD *sub_24AF0305C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24AEDA1DC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24AEDCC54();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24AEDAABC(v16, a4 & 1);
    v11 = sub_24AEDA1DC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_24AF35C8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_24AED0F00(a1, v22);
  }

  else
  {
    sub_24AEDBDD0(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_24AF031AC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24AF3521C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24AEDA254(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_24AEDCC7C();
      goto LABEL_7;
    }

    sub_24AEDAAE4(v17, a3 & 1);
    v22 = sub_24AEDA254(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_24AEDBE3C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_24AF35C8C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_24AF03378(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v29 = a1;
  v11 = type metadata accessor for CorrelationIdentifier(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_24AEDA2F0(a4);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a5 & 1) == 0)
  {
    if (v21 >= v19 && (a5 & 1) == 0)
    {
      sub_24AEDCEFC();
      goto LABEL_9;
    }

    sub_24AEDAEC4(v19, a5 & 1);
    v22 = sub_24AEDA2F0(a4);
    if ((v20 & 1) == (v23 & 1))
    {
      v16 = v22;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_24AF35C8C();
    __break(1u);
    return result;
  }

LABEL_9:
  v24 = v29;
  v25 = *v6;
  if (v20)
  {
    v26 = v25[7] + 24 * v16;
    *v26 = v29;
    *(v26 + 8) = a2;
    *(v26 + 16) = a3;
  }

  else
  {
    sub_24AF045D8(a4, v13, type metadata accessor for CorrelationIdentifier);
    return sub_24AEDBEF4(v16, v13, v24, a2, a3, v25);
  }
}

uint64_t sub_24AF0353C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = a1[3];
  v8 = __swift_mutable_project_boxed_opaque_existential_0(a1, v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  sub_24AF041E0(v10, a2, v4, v3, v7);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t type metadata accessor for MessagingOptions(uint64_t a1)
{
  result = qword_281393258;
  if (!qword_281393258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24AF03678()
{
  result = qword_27EFC0B48;
  if (!qword_27EFC0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0B48);
  }

  return result;
}

unint64_t sub_24AF036CC()
{
  result = qword_281393188;
  if (!qword_281393188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281393188);
  }

  return result;
}

uint64_t sub_24AF03720(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0760, &qword_24AF38DF0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24AF03798()
{
  result = qword_27EFC0B70;
  if (!qword_27EFC0B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0B70);
  }

  return result;
}

uint64_t sub_24AF037EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_24AF3521C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24AF03830(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0B58, &qword_24AF38DE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24AF038A8()
{
  result = qword_27EFC0B90;
  if (!qword_27EFC0B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0B90);
  }

  return result;
}

unint64_t sub_24AF038FC()
{
  result = qword_27EFC0BA0;
  if (!qword_27EFC0BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0BA0);
  }

  return result;
}

uint64_t sub_24AF03950(uint64_t a1)
{
  v2 = type metadata accessor for MessagingOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24AF039D4(uint64_t a1)
{
  sub_24AF3521C();
  if (v1 <= 0x3F)
  {
    sub_24AF03BE8(319, &qword_281392DD8, &type metadata for Destination, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_24AF03B34(319);
      if (v3 <= 0x3F)
      {
        sub_24AF03BE8(319, &qword_281392DD0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24AF03B8C(319);
          if (v5 <= 0x3F)
          {
            sub_24AF03BE8(319, qword_281392DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_24AF03B34(uint64_t a1)
{
  if (!qword_2813933F8)
  {
    sub_24AF3521C();
    v1 = sub_24AF3579C();
    if (!v2)
    {
      atomic_store(v1, &qword_2813933F8);
    }
  }
}

void sub_24AF03B8C(uint64_t a1)
{
  if (!qword_281392DC8)
  {
    sub_24AEF74EC();
    v1 = sub_24AF356BC();
    if (!v2)
    {
      atomic_store(v1, &qword_281392DC8);
    }
  }
}

void sub_24AF03BE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for MessagingOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MessagingOptions.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24AF03D8C()
{
  result = qword_27EFC0BA8;
  if (!qword_27EFC0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0BA8);
  }

  return result;
}

unint64_t sub_24AF03DE4()
{
  result = qword_27EFC0BB0;
  if (!qword_27EFC0BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0BB0);
  }

  return result;
}

unint64_t sub_24AF03E3C()
{
  result = qword_27EFC0BB8;
  if (!qword_27EFC0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0BB8);
  }

  return result;
}

uint64_t sub_24AF03E90(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24AF35C4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEC000000736E6F69 || (sub_24AF35C4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024AF37230 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024AF37250 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x694C6F54656D6974 && a2 == 0xEA00000000006576 || (sub_24AF35C4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x46646E4165726966 && a2 == 0xED0000746567726FLL || (sub_24AF35C4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024AF37270 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024AF37290 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024AF372B0 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v5 = sub_24AF35C4C();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

_OWORD *sub_24AF041E0(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_24AF35A2C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  v15 = *a4;
  v17 = sub_24AEDA4FC(a2);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a3 & 1) != 0)
  {
LABEL_7:
    v23 = *a4;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 32 * v17);
      __swift_destroy_boxed_opaque_existential_0(v24);
      return sub_24AED0F00(&v32, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a3 & 1) == 0)
  {
    sub_24AEDD558();
    goto LABEL_7;
  }

  sub_24AEDBA30(v20, a3 & 1);
  v26 = sub_24AEDA4FC(a2);
  if ((v21 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_24AF35C8C();
    __break(1u);
    return result;
  }

  v17 = v26;
  v23 = *a4;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v11 + 16))(v13, a2, v10);
  v28 = __swift_mutable_project_boxed_opaque_existential_0(&v32, v33);
  MEMORY[0x28223BE20](v28);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  sub_24AF044D0(v17, v13, v30, v23, a5);
  return __swift_destroy_boxed_opaque_existential_0(&v32);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

_OWORD *sub_24AF044D0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v18 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = sub_24AF35A2C();
  (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  result = sub_24AED0F00(&v17, (a4[7] + 32 * a1));
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_24AF045D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AF04640(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t Account.uniqueID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static Account.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AF35C4C();
  }
}

uint64_t sub_24AF046AC()
{
  sub_24AF35D0C();
  MEMORY[0x24C235D70](0);
  return sub_24AF35D4C();
}

uint64_t sub_24AF04718(uint64_t a1)
{
  sub_24AF35D0C();
  MEMORY[0x24C235D70](0);
  return sub_24AF35D4C();
}

uint64_t sub_24AF04770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449657571696E75 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24AF35C4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24AF047F8(uint64_t a1)
{
  v2 = sub_24AF049AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AF04834(uint64_t a1)
{
  v2 = sub_24AF049AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Account.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0BC0, &qword_24AF38FD8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF049AC();
  sub_24AF35D6C();
  sub_24AF35B9C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24AF049AC()
{
  result = qword_27EFC0BC8;
  if (!qword_27EFC0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0BC8);
  }

  return result;
}

uint64_t Account.hashValue.getter()
{
  sub_24AF35D0C();
  sub_24AF353DC();
  return sub_24AF35D4C();
}

uint64_t Account.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0BD0, &qword_24AF38FE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF049AC();
  sub_24AF35D5C();
  if (!v2)
  {
    v9 = sub_24AF35AFC();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_24AF04BC8()
{
  sub_24AF35D0C();
  sub_24AF353DC();
  return sub_24AF35D4C();
}

uint64_t sub_24AF04C1C(uint64_t a1)
{
  sub_24AF35D0C();
  sub_24AF353DC();
  return sub_24AF35D4C();
}

unint64_t sub_24AF04C68()
{
  result = qword_281392EE8;
  if (!qword_281392EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392EE8);
  }

  return result;
}

uint64_t sub_24AF04CD4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0BC0, &qword_24AF38FD8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF049AC();
  sub_24AF35D6C();
  sub_24AF35B9C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24AF04E10(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AF35C4C();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24AF04E4C(uint64_t a1, int a2)
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

uint64_t sub_24AF04E94(uint64_t result, int a2, int a3)
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

unint64_t sub_24AF04EF4()
{
  result = qword_27EFC0BD8;
  if (!qword_27EFC0BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0BD8);
  }

  return result;
}

unint64_t sub_24AF04F4C()
{
  result = qword_27EFC0BE0;
  if (!qword_27EFC0BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0BE0);
  }

  return result;
}

unint64_t sub_24AF04FA4()
{
  result = qword_27EFC0BE8;
  if (!qword_27EFC0BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0BE8);
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

uint64_t getEnumTagSinglePayload for IDSSessionLinkSelectionStrategy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IDSSessionLinkSelectionStrategy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_24AF0505C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AF05078(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_24AF050A8(void *a1, void *a2, uint64_t *a3)
{
  v4 = v3;
  v40 = a1;
  v41 = a2;
  v6 = sub_24AF3523C();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24AF3526C();
  MEMORY[0x28223BE20](v8 - 8);
  v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0CF8, &unk_24AF39490);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D00, &qword_24AF37D08);
  v38 = *(v14 - 8);
  v39 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D08, &qword_24AF394A0);
  v17 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v19 = &v32 - v18;
  v20 = *a3;
  v21 = *(a3 + 8);
  swift_defaultActor_initialize();
  *(v4 + 144) = [objc_allocWithZone(type metadata accessor for IDSSessionDelegateTrampoline(0)) init];
  *(v4 + 152) = 2;
  v22 = OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionStateContinuation;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0C40, &qword_24AF37D10);
  (*(*(v23 - 8) + 56))(v4 + v22, 1, 1, v23);
  *(v4 + OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionEventStreamTask) = 0;
  (*(v11 + 104))(v13, *MEMORY[0x277D85778], v10);
  sub_24AF3558C();
  (*(v11 + 8))(v13, v10);
  if (v21)
  {
    sub_24AF3524C();
  }

  else
  {
    v24 = v33;
    sub_24AF3522C();
    sub_24AF3525C();
    (*(v34 + 8))(v24, v35);
  }

  v25 = v41;
  sub_24AF356DC();
  v26 = v40;
  *(v4 + 112) = v40;
  *(v4 + 120) = v25;
  *(v4 + 128) = v20;
  *(v4 + 136) = v21;
  v27 = v26;
  v28 = v25;
  v29 = sub_24AF08578([v28 state]);

  v30 = *(v4 + 152);
  *(v4 + 152) = v29;
  sub_24AF08644(v30);
  (*(v17 + 32))(v4 + OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_packetStream, v19, v37);
  (*(v38 + 32))(v4 + OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_packetStreamContinuation, v16, v39);
  return v4;
}

id *sub_24AF05518()
{
  if (*(v0 + OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionEventStreamTask))
  {

    sub_24AF3562C();
  }

  sub_24AF08644(v0[19]);
  sub_24AEE2E10(v0 + OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionStateContinuation, &unk_27EFC0D50, &unk_24AF394D0);

  v1 = OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_packetStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D08, &qword_24AF394A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_packetStreamContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D00, &qword_24AF37D08);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24AF05668()
{
  sub_24AF05518();

  return MEMORY[0x282200960](v0);
}

void sub_24AF056BC(uint64_t a1)
{
  sub_24AF07724(319);
  if (v1 <= 0x3F)
  {
    sub_24AF07F04(319, &qword_27EFC0C48, MEMORY[0x277CC9318], MEMORY[0x277D857B8]);
    if (v2 <= 0x3F)
    {
      sub_24AF07F04(319, &qword_27EFC0C50, MEMORY[0x277CC9318], MEMORY[0x277D85788]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24AF05840()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D28, &qword_24AF394C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v12 = OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionEventStreamTask;
  if (*(v1 + OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionEventStreamTask))
  {
    v13 = [*(v1 + 120) sessionID];
    if (v13)
    {
      v14 = v13;
      v15 = sub_24AF353AC();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    if (qword_27EFC0708 != -1)
    {
      swift_once();
    }

    v24 = sub_24AF3529C();
    __swift_project_value_buffer(v24, qword_27EFC0BF0);

    v35 = sub_24AF3527C();
    v25 = sub_24AF3570C();

    if (os_log_type_enabled(v35, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36 = v27;
      *v26 = 136315394;
      v28 = sub_24AF35DDC();
      v30 = sub_24AEF599C(v28, v29, &v36);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      v31 = sub_24AEF599C(v15, v17, &v36);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_24AECF000, v35, v25, "Startup already called on %s for session %{public}s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v27, -1, -1);
      MEMORY[0x24C236490](v26, -1, -1);
    }

    else
    {

      v32 = v35;
    }
  }

  else
  {
    v18 = *(v1 + 144);
    v34 = *(v6 + 16);
    v35 = v18;
    (v34)(&v33 - v10, v18 + OBJC_IVAR____TtC15FindMyMessagingP33_73A3C7F96E9958422E460E2154E4F64F28IDSSessionDelegateTrampoline_stream, v5);
    v19 = sub_24AF3557C();
    (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
    v20 = swift_allocObject();
    swift_weakInit();
    (v34)(v9, v11, v5);
    v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v34 = v4;
    v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    (*(v6 + 32))(v23 + v21, v9, v5);
    *(v23 + v22) = v20;
    *(v1 + v12) = sub_24AF08F10(0, 0, v34, &unk_24AF394E8, v23);

    [*(v1 + 120) setDelegate:v35 queue:*(&v35->isa + OBJC_IVAR____TtC15FindMyMessagingP33_73A3C7F96E9958422E460E2154E4F64F28IDSSessionDelegateTrampoline_queue)];
    (*(v6 + 8))(v11, v5);
  }
}

uint64_t sub_24AF05D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0C40, &qword_24AF37D10);
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D50, &unk_24AF394D0);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D60, &unk_24AF394F0);
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF05E8C, 0, 0);
}

uint64_t sub_24AF05E8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D28, &qword_24AF394C0);
  sub_24AF355FC();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_24AF05F74;
  v2 = *(v0 + 168);

  return MEMORY[0x2822003E8](v0 + 88, 0, 0, v2);
}

uint64_t sub_24AF05F74()
{

  return MEMORY[0x2822009F8](sub_24AF06070, 0, 0);
}

uint64_t sub_24AF06070()
{
  v1 = v0[11];
  v2 = v0[12];
  v0[25] = v1;
  v0[26] = v2;
  if (v2 == 2)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
LABEL_11:

    v10 = v0[1];

    return v10();
  }

  Strong = swift_weakLoadStrong();
  v0[27] = Strong;
  if (!Strong)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    sub_24AF087F4(v1, v2);
    goto LABEL_11;
  }

  v4 = Strong;
  if (v2 == 1)
  {
    if (qword_27EFC0708 != -1)
    {
      swift_once();
    }

    v5 = sub_24AF3529C();
    __swift_project_value_buffer(v5, qword_27EFC0BF0);
    v6 = sub_24AF3527C();
    v7 = sub_24AF3572C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24AECF000, v6, v7, "Session started", v8, 2u);
      MEMORY[0x24C236490](v8, -1, -1);
    }

    v9 = sub_24AF064A4;
    goto LABEL_26;
  }

  if (v2)
  {
    sub_24AF08888(v1, v2);
    if (qword_27EFC0708 != -1)
    {
      swift_once();
    }

    v12 = sub_24AF3529C();
    __swift_project_value_buffer(v12, qword_27EFC0BF0);
    sub_24AF08888(v1, v2);
    v13 = sub_24AF3527C();
    v14 = sub_24AF3572C();
    sub_24AF087F4(v1, v2);
    if (!os_log_type_enabled(v13, v14))
    {

      sub_24AF087F4(v1, v2);
      goto LABEL_25;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 67109378;
    *(v15 + 4) = v1;
    *(v15 + 8) = 2112;
    sub_24AF08888(v1, v2);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 10) = v17;
    *v16 = v17;
    _os_log_impl(&dword_24AECF000, v13, v14, "Session ended with reason: %u, error: %@", v15, 0x12u);
    sub_24AEE2E10(v16, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v16, -1, -1);
    MEMORY[0x24C236490](v15, -1, -1);
    sub_24AF087F4(v1, v2);
  }

  else
  {
    if (qword_27EFC0708 != -1)
    {
      swift_once();
    }

    v18 = sub_24AF3529C();
    __swift_project_value_buffer(v18, qword_27EFC0BF0);
    v13 = sub_24AF3527C();
    v19 = sub_24AF3572C();
    if (os_log_type_enabled(v13, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = v1;
      _os_log_impl(&dword_24AECF000, v13, v19, "Session ended with reason: %u", v20, 8u);
      MEMORY[0x24C236490](v20, -1, -1);
    }
  }

LABEL_25:
  v9 = sub_24AF066CC;
LABEL_26:

  return MEMORY[0x2822009F8](v9, v4, 0);
}

uint64_t sub_24AF064A4()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 160);
  v3 = OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionStateContinuation;
  swift_beginAccess();
  sub_24AF08818(v1 + v3, v2);

  return MEMORY[0x2822009F8](sub_24AF0653C, 0, 0);
}

uint64_t sub_24AF0653C()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[25];
  if (v4)
  {

    sub_24AF087F4(v5, 1);
    sub_24AEE2E10(v1, &unk_27EFC0D50, &unk_24AF394D0);
  }

  else
  {
    v6 = v0[18];
    (*(v3 + 16))(v6, v1, v2);
    sub_24AEE2E10(v1, &unk_27EFC0D50, &unk_24AF394D0);
    sub_24AF3553C();

    sub_24AF087F4(v5, 1);
    (*(v3 + 8))(v6, v2);
  }

  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_24AF05F74;
  v8 = v0[21];

  return MEMORY[0x2822003E8](v0 + 11, 0, 0, v8);
}

uint64_t sub_24AF066CC()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 152);
  v3 = OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionStateContinuation;
  swift_beginAccess();
  sub_24AF08818(v1 + v3, v2);

  return MEMORY[0x2822009F8](sub_24AF06764, 0, 0);
}

uint64_t sub_24AF06764()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  if ((*(v3 + 48))(v1, 1, v2))
  {
    v4 = v0[26];
    v5 = v0[25];

    sub_24AF087F4(v5, v4);
    sub_24AEE2E10(v1, &unk_27EFC0D50, &unk_24AF394D0);
  }

  else
  {
    v6 = v0[26];
    v7 = v0[25];
    v8 = v0[18];
    (*(v3 + 16))(v8, v1, v2);
    sub_24AEE2E10(v1, &unk_27EFC0D50, &unk_24AF394D0);
    sub_24AEF7038();
    v9 = swift_allocError();
    *v10 = v7;
    *(v10 + 8) = 0;
    v0[13] = v9;
    sub_24AF3552C();
    sub_24AF087F4(v7, v6);

    (*(v3 + 8))(v8, v2);
  }

  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_24AF05F74;
  v12 = v0[21];

  return MEMORY[0x2822003E8](v0 + 11, 0, 0, v12);
}

void sub_24AF06934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 120);
  v4 = sub_24AF3516C();
  [v3 acceptInvitationWithData_];
}

void sub_24AF06994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 120);
  v4 = sub_24AF3516C();
  [v3 sendInvitationWithData:v4 declineOnError:1];
}

uint64_t sub_24AF069F8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D50, &unk_24AF394D0);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF06A98, v2, 0);
}

uint64_t sub_24AF06A98()
{
  v1 = *(v0 + 80);
  v2 = sub_24AF08E4C(&unk_27EFC0D90, type metadata accessor for IDSSessionWrapper, &unk_24AF39428);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = *(v0 + 64);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_24AF06BCC;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, v1, v2, 0xD000000000000033, 0x800000024AF37510, sub_24AF08E94, v3, v6);
}

uint64_t sub_24AF06BCC()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_24AF06DE0;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_24AF06CF4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AF06CF4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0C40, &qword_24AF37D10);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionStateContinuation;
  swift_beginAccess();
  sub_24AF08EA0(v2, v1 + v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AF06DE0()
{
  v1 = v0[11];
  v2 = v0[10];

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0C40, &qword_24AF37D10);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionStateContinuation;
  swift_beginAccess();
  sub_24AF08EA0(v1, v2 + v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AF06ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v22 = a4;
  v23 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D50, &unk_24AF394D0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionStateContinuation;
  swift_beginAccess();
  sub_24AF08818(a2 + v12, v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0C40, &qword_24AF37D10);
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v11, 1, v13);
  sub_24AEE2E10(v11, &unk_27EFC0D50, &unk_24AF394D0);
  if (v15 != 1)
  {
    if (qword_27EFC0708 != -1)
    {
      swift_once();
    }

    v16 = sub_24AF3529C();
    __swift_project_value_buffer(v16, qword_27EFC0BF0);
    v17 = sub_24AF3527C();
    v18 = sub_24AF3570C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24AECF000, v17, v18, "Overriding an existing continuation, this is a programming error", v19, 2u);
      MEMORY[0x24C236490](v19, -1, -1);
    }
  }

  (*(v14 + 16))(v9, a1, v13);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_24AF08EA0(v9, a2 + v12);
  v20 = swift_endAccess();
  return v23(v20);
}

uint64_t sub_24AF07168()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D00, &qword_24AF37D08);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF07260, v0, 0);
}

uint64_t sub_24AF07260()
{
  v1 = [*(v0[3] + 120) destination];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0[3] + 112);
    v0[2] = 0;
    v4 = [v3 datagramConnectionForSessionDestination:v2 error:v0 + 2];
    v0[7] = v4;

    v5 = v0[2];
    if (v4)
    {
      (*(v0[5] + 16))(v0[6], v0[3] + OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_packetStreamContinuation, v0[4]);
      type metadata accessor for SessionMessagingDatagramConnection(0);
      swift_allocObject();
      v6 = v5;
      v7 = v4;
      v8 = swift_task_alloc();
      v0[8] = v8;
      *v8 = v0;
      v8[1] = sub_24AF07544;
      v9 = v0[6];

      return sub_24AEE2FC4(v7, v9);
    }

    v16 = v5;
    sub_24AF350DC();
  }

  else
  {
    if (qword_27EFC0708 != -1)
    {
      swift_once();
    }

    v11 = sub_24AF3529C();
    __swift_project_value_buffer(v11, qword_27EFC0BF0);
    v12 = sub_24AF3527C();
    v13 = sub_24AF3570C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24AECF000, v12, v13, "No session destination", v14, 2u);
      MEMORY[0x24C236490](v14, -1, -1);
    }

    sub_24AEF7038();
    swift_allocError();
    *v15 = 2;
    *(v15 + 8) = 2;
  }

  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_24AF07544(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_24AF07688, v2, 0);
}

uint64_t sub_24AF07688()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

void sub_24AF07724(uint64_t a1)
{
  if (!qword_27EFC0C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0C40, &qword_24AF37D10);
    v1 = sub_24AF3579C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFC0C38);
    }
  }
}

id sub_24AF07788()
{
  ObjectType = swift_getObjectType();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D20, &qword_24AF394B8);
  v30 = *(v0 - 8);
  v31 = v0;
  MEMORY[0x28223BE20](v0);
  v29 = &v23 - v1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D18, &qword_24AF394B0);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v26 = &v23 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D28, &qword_24AF394C0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  v25 = sub_24AF3574C();
  v6 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24AF3573C();
  MEMORY[0x28223BE20](v9);
  v10 = sub_24AF352CC();
  MEMORY[0x28223BE20](v10 - 8);
  v24 = OBJC_IVAR____TtC15FindMyMessagingP33_73A3C7F96E9958422E460E2154E4F64F28IDSSessionDelegateTrampoline_queue;
  sub_24AED0EAC(0, &qword_281392DC0, 0x277D85C78);
  sub_24AF352BC();
  v37 = MEMORY[0x277D84F90];
  sub_24AF08E4C(&qword_27EFC0D38, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D40, &qword_24AF394C8);
  sub_24AF08664();
  sub_24AF357CC();
  (*(v6 + 104))(v8, *MEMORY[0x277D85260], v25);
  v11 = sub_24AF3575C();
  v12 = v33;
  *&v33[v24] = v11;
  v14 = v29;
  v13 = v30;
  v15 = v31;
  (*(v30 + 104))(v29, *MEMORY[0x277D85778], v31);
  v16 = v26;
  sub_24AF3558C();
  (*(v13 + 8))(v14, v15);
  v18 = v27;
  v17 = v28;
  (*(v27 + 16))(v12 + OBJC_IVAR____TtC15FindMyMessagingP33_73A3C7F96E9958422E460E2154E4F64F28IDSSessionDelegateTrampoline_stream, v5, v28);
  v19 = v32;
  v20 = v34;
  (*(v32 + 16))(v12 + OBJC_IVAR____TtC15FindMyMessagingP33_73A3C7F96E9958422E460E2154E4F64F28IDSSessionDelegateTrampoline_continuation, v16, v34);
  v36.receiver = v12;
  v36.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v36, sel_init);
  (*(v19 + 8))(v16, v20);
  (*(v18 + 8))(v5, v17);
  return v21;
}

id sub_24AF07CB4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24AF07DE8(uint64_t a1)
{
  sub_24AF07F04(319, &qword_27EFC0C88, &type metadata for IDSSessionDelegateTrampoline.Event, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_24AF07F04(319, &qword_27EFC0C90, &type metadata for IDSSessionDelegateTrampoline.Event, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24AF07F04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_15FindMyMessaging28IDSSessionDelegateTrampoline33_73A3C7F96E9958422E460E2154E4F64FLLC5EventO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AF081C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AF08220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_24AF0827C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15FindMyMessaging17IDSSessionWrapperC12SessionStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AF082E8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AF08344(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_24AF083A0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15FindMyMessaging17IDSSessionWrapperC7FailureO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_24AF083FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24AF08444(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_24AF08488(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_24AF084B0()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_27EFC0BF0);
  v1 = __swift_project_value_buffer(v0, qword_27EFC0BF0);
  if (qword_27EFC0710 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EFC4BD0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AF08578(unsigned int a1)
{
  if (a1 < 3)
  {
    return 2 - a1;
  }

  sub_24AF3592C();

  v2 = sub_24AF35C0C();
  MEMORY[0x24C235440](v2);

  result = sub_24AF35A3C();
  __break(1u);
  return result;
}

void sub_24AF08644(id result)
{
  if (result != 2)
  {
    sub_24AF08654(result);
  }
}

void sub_24AF08654(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_24AF08664()
{
  result = qword_27EFC0D48;
  if (!qword_27EFC0D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0D40, &qword_24AF394C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0D48);
  }

  return result;
}

uint64_t sub_24AF086C8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D28, &qword_24AF394C0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AEE555C;

  return sub_24AF05D14(a1, v6, v7, v1 + v5, v8);
}

void sub_24AF087F4(int result, id a2)
{
  if (a2 != 2)
  {
    sub_24AF08804(result, a2);
  }
}

void sub_24AF08804(int a1, id a2)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_24AF08818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D50, &unk_24AF394D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_24AF08888(int a1, id a2)
{
  if (a2 != 1)
  {
    return a2;
  }

  return result;
}

void sub_24AF0889C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = [a1 accounts];
  if (!v8)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  v9 = v8;
  v43 = v5;
  v44 = v4;
  v41 = v7;
  sub_24AED0EAC(0, &qword_27EFC0D78, 0x277D186C0);
  sub_24AF08DE4();
  v10 = sub_24AF3566C();

  v45 = a1;
  v42 = v6;
  if ((v10 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24AF3581C();
    sub_24AF356AC();
    v12 = v48;
    v11 = v49;
    v13 = v50;
    v14 = v51;
    v15 = v52;
  }

  else
  {
    v16 = -1 << *(v10 + 32);
    v11 = v10 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v10 + 56);

    v14 = 0;
    v12 = v10;
  }

  if (v12 < 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v19 = v14;
  v20 = v15;
  v21 = v14;
  if (!v15)
  {
    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= ((v13 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v20 = *(v11 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_13:
  v22 = (v20 - 1) & v20;
  v23 = *(*(v12 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
  if (!v23)
  {
LABEL_20:

    sub_24AEFDA80(v12);

    v21 = v45;
    if (qword_27EFC0708 == -1)
    {
LABEL_21:
      v25 = sub_24AF3529C();
      __swift_project_value_buffer(v25, qword_27EFC0BF0);
      v26 = v21;
      v27 = sub_24AF3527C();
      v28 = sub_24AF3570C();
      if (!os_log_type_enabled(v27, v28))
      {

        goto LABEL_25;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46 = v30;
      *v29 = 136446210;
      v31 = [v26 serviceIdentifier];

      if (v31)
      {
        v32 = sub_24AF353AC();
        v34 = v33;

        v35 = sub_24AEF599C(v32, v34, &v46);

        *(v29 + 4) = v35;
        _os_log_impl(&dword_24AECF000, v27, v28, "No accounts in: %{public}s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x24C236490](v30, -1, -1);
        MEMORY[0x24C236490](v29, -1, -1);
LABEL_25:

        v46 = 0;
        LOBYTE(v47) = 2;
        sub_24AEF7038();
        swift_willThrowTypedImpl();

        return;
      }

      goto LABEL_32;
    }

LABEL_30:
    swift_once();
    goto LABEL_21;
  }

  while (([v23 isActive] & 1) == 0)
  {

    v14 = v21;
    v15 = v22;
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v24 = sub_24AF3587C();
    if (v24)
    {
      v53 = v24;
      swift_dynamicCast();
      v23 = v46;
      v21 = v14;
      v22 = v15;
      if (v46)
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  sub_24AEFDA80(v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D88, &qword_24AF39500);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AF37AB0;
  v46 = v43;
  v47 = v44;
  v37 = v23;
  sub_24AF358DC();
  sub_24AEF6AC8(inited);
  swift_setDeallocating();
  sub_24AEE2AE0(inited + 32);
  v38 = objc_allocWithZone(MEMORY[0x277D18788]);
  v39 = sub_24AF3565C();

  v40 = [v38 initWithAccount:v37 destinations:v39 transportType:0];

  if (v40)
  {
    v46 = v42;
    LOBYTE(v47) = v41;
    type metadata accessor for IDSSessionWrapper(0);
    swift_allocObject();
    sub_24AF050A8(v45, v40, &v46);
  }

  else
  {
    v46 = 1;
    LOBYTE(v47) = 2;
    sub_24AEF7038();
    swift_willThrowTypedImpl();
  }
}

unint64_t sub_24AF08DE4()
{
  result = qword_27EFC0D80;
  if (!qword_27EFC0D80)
  {
    sub_24AED0EAC(255, &qword_27EFC0D78, 0x277D186C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0D80);
  }

  return result;
}

uint64_t sub_24AF08E4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AF08EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D50, &unk_24AF394D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AF08F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24AF11D88(a3, v25 - v10);
  v12 = sub_24AF3557C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AEE2E10(v11, &qword_27EFC08A8, &qword_24AF37D30);
  }

  else
  {
    sub_24AF3556C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24AF3551C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24AF353CC() + 32;
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

      sub_24AEE2E10(a3, &qword_27EFC08A8, &qword_24AF37D30);

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

  sub_24AEE2E10(a3, &qword_27EFC08A8, &qword_24AF37D30);
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

uint64_t sub_24AF09200(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  sub_24AF09680(a1, a2, a3, v7);
  return v6;
}

uint64_t sub_24AF09284(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_24AF031AC(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_24AF3521C();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_24AEDA254(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_24AEDCC7C();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_24AF3521C();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_24AF10170(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_24AF3521C();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_24AF09444(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_24AEE2FBC(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_24AF0353C(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_24AF35A2C();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_24AEE2E10(a1, &qword_27EFC0F80, &qword_24AF39A98);
    sub_24AF10094(a2, v9);
    v7 = sub_24AF35A2C();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_24AEE2E10(v9, &qword_27EFC0F80, &qword_24AF39A98);
  }

  return result;
}

uint64_t sub_24AF09580@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X3>)
{
  v4 = *(*v2 + 144);
  type metadata accessor for SessionMessage(255, *(*v2 + 80), *(*v2 + 88), a2);
  v5 = sub_24AF3561C();
  a1[3] = v5;
  a1[4] = swift_getWitnessTable();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  v7 = *(*(v5 - 8) + 16);

  return v7(boxed_opaque_existential_0, v2 + v4, v5);
}

char *sub_24AF09680(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v37 = a1;
  v38 = a2;
  type metadata accessor for SessionMessage(255, *(*v4 + 80), *(*v4 + 88), a4);
  v7 = sub_24AF355BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = sub_24AF355EC();
  v35 = *(v11 - 8);
  v36 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v34 = sub_24AF3561C();
  v14 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v16 = &v30 - v15;
  v17 = *a3;
  v18 = a3[1];
  v19 = a3[3];
  v32 = a3[2];
  v33 = v17;
  v31 = v19;
  v20 = a3[4];
  swift_defaultActor_initialize();
  *(v5 + 16) = 0;
  (*(v8 + 104))(v10, *MEMORY[0x277D85778], v7);
  sub_24AF3558C();
  (*(v8 + 8))(v10, v7);
  v21 = v34;
  (*(v14 + 16))(&v5[*(*v5 + 144)], v16, v34);
  v23 = v35;
  v22 = v36;
  (*(v35 + 16))(&v5[*(*v5 + 152)], v13, v36);
  v24 = v38;
  *(v5 + 14) = v37;
  *(v5 + 15) = v24;
  v26 = v32;
  v25 = v33;
  *(v5 + 17) = v33;
  *(v5 + 18) = v18;
  v27 = v31;
  *(v5 + 19) = v26;
  *(v5 + 20) = v27;
  *(v5 + 21) = v20;
  *&v39 = v25;
  *(&v39 + 1) = v18;
  v40 = v26;
  v41 = v27;
  v42 = v20;
  type metadata accessor for Heartbeater(0);
  swift_allocObject();
  v28 = Heartbeater.init(configuration:)(&v39);
  (*(v23 + 8))(v13, v22);
  (*(v14 + 8))(v16, v21);
  *(v5 + 22) = v28;
  return v5;
}

void sub_24AF099DC()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D08, &qword_24AF394A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  if (v1[16])
  {
    if (qword_27EFC0718 != -1)
    {
      swift_once();
    }

    v13 = sub_24AF3529C();
    __swift_project_value_buffer(v13, qword_27EFC0E00);

    v29 = sub_24AF3527C();
    v14 = sub_24AF3570C();

    if (os_log_type_enabled(v29, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136315138;
      v17 = sub_24AF35DDC();
      v19 = sub_24AEF599C(v17, v18, &v30);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_24AECF000, v29, v14, "Startup already called on %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x24C236490](v16, -1, -1);
      MEMORY[0x24C236490](v15, -1, -1);
    }

    else
    {
      v28 = v29;
    }
  }

  else
  {
    v20 = v1[14];
    v29 = v2;
    v21 = *(v7 + 16);
    v21(&v29 - v11, v20 + OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_packetStream, v6);
    v22 = sub_24AF3557C();
    (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
    v23 = swift_allocObject();
    swift_weakInit();
    v21(v10, v12, v6);
    v24 = (*(v7 + 80) + 48) & ~*(v7 + 80);
    v25 = (v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    v26[2].isa = 0;
    v26[3].isa = 0;
    v27 = v29;
    v26[4].isa = v29[10].isa;
    v26[5].isa = v27[11].isa;
    (*(v7 + 32))(v26 + v24, v10, v6);
    *(&v26->isa + v25) = v23;
    v1[16] = sub_24AF08F10(0, 0, v5, &unk_24AF39518, v26);

    sub_24AF0A9D0();
    (*(v7 + 8))(v12, v6);
  }
}

uint64_t sub_24AF09E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a4;
  v7[12] = a5;
  type metadata accessor for SessionMessage(255, a6, a7, a4);
  v8 = sub_24AF355EC();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0F98, &unk_24AF39B10);
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF09F74, 0, 0);
}

uint64_t sub_24AF09F74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D08, &qword_24AF394A0);
  sub_24AF355FC();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_24AF0A05C;
  v2 = *(v0 + 128);

  return MEMORY[0x2822003E8](v0 + 64, 0, 0, v2);
}

uint64_t sub_24AF0A05C()
{

  return MEMORY[0x2822009F8](sub_24AF0A158, 0, 0);
}

uint64_t sub_24AF0A158()
{
  v23 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v0[20] = v2;
  v0[21] = v1;
  if (v1 >> 60 == 15)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
LABEL_13:
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v19 = v0[14];
      v18 = v0[15];
      v20 = v0[13];
      (*(v19 + 16))(v18, Strong + *(*Strong + 152), v20);

      sub_24AF355DC();
      (*(v19 + 8))(v18, v20);
    }

    v21 = v0[1];

    return v21();
  }

  v3 = swift_weakLoadStrong();
  v0[22] = v3;
  if (!v3)
  {
    if (qword_27EFC0718 != -1)
    {
      swift_once();
    }

    v8 = sub_24AF3529C();
    __swift_project_value_buffer(v8, qword_27EFC0E00);
    v9 = sub_24AF3527C();
    v10 = sub_24AF356EC();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[17];
    v12 = v0[18];
    v14 = v0[16];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_24AEF599C(0x2870757472617473, 0xE900000000000029, &v22);
      _os_log_impl(&dword_24AECF000, v9, v10, "%{public}s self has been deallocated.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x24C236490](v16, -1, -1);
      MEMORY[0x24C236490](v15, -1, -1);

      sub_24AF11EB0(v2, v1);
    }

    else
    {
      sub_24AF11EB0(v2, v1);
    }

    (*(v13 + 8))(v12, v14);
    goto LABEL_13;
  }

  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_24AF0A480;

  return sub_24AF0B68C(v2, v1, v5, v6);
}

uint64_t sub_24AF0A480()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_24AF0A650;
  }

  else
  {
    v2 = sub_24AF0A594;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AF0A594()
{
  sub_24AF11EB0(v0[20], v0[21]);

  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_24AF0A05C;
  v2 = v0[16];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v2);
}

uint64_t sub_24AF0A650()
{

  if (qword_27EFC0718 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = sub_24AF3529C();
  __swift_project_value_buffer(v4, qword_27EFC0E00);
  sub_24AF11EC4(v3, v2);
  sub_24AF11EC4(v3, v2);
  sub_24AF11EC4(v3, v2);
  v5 = v1;
  v6 = sub_24AF3527C();
  v7 = sub_24AF3570C();
  sub_24AF11EB0(v3, v2);

  if (!os_log_type_enabled(v6, v7))
  {
    v22 = v0[24];
    v24 = v0[20];
    v23 = v0[21];
    sub_24AF11EB0(v24, v23);
    sub_24AF11EB0(v24, v23);

    sub_24AF11EB0(v24, v23);
    goto LABEL_16;
  }

  v9 = v0[20];
  v8 = v0[21];
  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v0[10] = v12;
  *v10 = 136315650;
  sub_24AEE5154(v9, v8);
  v13 = sub_24AF3515C();
  v15 = v14;
  sub_24AF11EB0(v9, v8);
  v16 = sub_24AEF599C(v13, v15, v0 + 10);

  *(v10 + 4) = v16;
  *(v10 + 12) = 2050;
  v17 = v8 >> 62;
  v18 = v0[20];
  v19 = v0[21];
  if ((v8 >> 62) > 1)
  {
    if (v17 != 2)
    {
      sub_24AF11EB0(v18, v19);
      v21 = 0;
      goto LABEL_15;
    }

    v26 = *(v18 + 16);
    v25 = *(v18 + 24);
    v18 = sub_24AF11EB0(v18, v19);
    v21 = v25 - v26;
    if (!__OFSUB__(v25, v26))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v27 = HIDWORD(v18);
    v28 = v18;
    v29 = sub_24AF11EB0(v18, v19);
    LODWORD(v21) = v27 - v28;
    if (__OFSUB__(v27, v28))
    {
      __break(1u);
      return MEMORY[0x2822003E8](v29, v30, v31, v32);
    }

    v21 = v21;
    goto LABEL_15;
  }

  if (v17)
  {
    goto LABEL_12;
  }

  v20 = v0[21];
  sub_24AF11EB0(v18, v19);
  v21 = BYTE6(v20);
LABEL_15:
  v33 = v0[24];
  v35 = v0[20];
  v34 = v0[21];
  *(v10 + 14) = v21;
  sub_24AF11EB0(v35, v34);
  *(v10 + 22) = 2112;
  v36 = v33;
  v37 = _swift_stdlib_bridgeErrorToNSError();
  *(v10 + 24) = v37;
  *v11 = v37;
  _os_log_impl(&dword_24AECF000, v6, v7, "Failed to handle %s of %{public}ld B: %@", v10, 0x20u);
  sub_24AEE2E10(v11, &qword_27EFC0D70, &qword_24AF37D20);
  MEMORY[0x24C236490](v11, -1, -1);
  __swift_destroy_boxed_opaque_existential_0(v12);
  MEMORY[0x24C236490](v12, -1, -1);
  MEMORY[0x24C236490](v10, -1, -1);

  sub_24AF11EB0(v35, v34);
LABEL_16:
  v38 = swift_task_alloc();
  v0[19] = v38;
  *v38 = v0;
  v38[1] = sub_24AF0A05C;
  v32 = v0[16];
  v29 = (v0 + 8);
  v30 = 0;
  v31 = 0;

  return MEMORY[0x2822003E8](v29, v30, v31, v32);
}

uint64_t sub_24AF0A9D0()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = v0[21];
  v7 = *(v0 + 19);
  v19 = *(v0 + 17);
  v20 = v7;
  v21 = v6;
  type metadata accessor for Heartbeater(0);
  swift_allocObject();
  v8 = Heartbeater.init(configuration:)(&v19);
  v9 = OBJC_IVAR____TtC15FindMyMessaging11Heartbeater_stream;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0F88, &qword_24AF39AA0);
  *(&v20 + 1) = v10;
  v21 = sub_24AF11C68(&qword_27EFC0F90, &qword_27EFC0F88, &qword_24AF39AA0, MEMORY[0x277D857C0]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v19);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, v8 + v9, v10);
  v1[22] = v8;

  v12 = sub_24AF3557C();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_24AEFE044(&v19, v18);
  type metadata accessor for SessionMessaging(255, *(v2 + 80), *(v2 + 88), v13);
  WitnessTable = swift_getWitnessTable();
  v15 = swift_allocObject();
  v15[2] = v1;
  v15[3] = WitnessTable;
  sub_24AF11CB0(v18, (v15 + 4));
  v15[9] = v1;
  swift_retain_n();
  sub_24AF255AC(0, 0, v5, &unk_24AF39AF0, v15);

  return __swift_destroy_boxed_opaque_existential_0(&v19);
}

uint64_t sub_24AF0AC58(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_24AF0ACA0, v1, 0);
}

uint64_t sub_24AF0ACA0()
{
  v1 = v0[4];
  sub_24AF350CC();
  swift_allocObject();
  sub_24AF350BC();
  type metadata accessor for SessionMessage(0, *(v1 + 80), *(v1 + 88), v2);
  swift_getWitnessTable();
  v0[5] = sub_24AF3509C();
  v0[6] = v3;

  v4 = *(v0[3] + 120);
  v0[7] = v4;

  return MEMORY[0x2822009F8](sub_24AF0ADC0, v4, 0);
}

uint64_t sub_24AF0ADC0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_24AF11BA4(&qword_27EFC08C8, type metadata accessor for SessionMessagingDatagramConnection, "Y>07d1");
  v5 = swift_task_alloc();
  v0[8] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_24AF0AF00;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, v1, v4, 0x74616428646E6573, 0xEB00000000293A61, sub_24AF10888, v5, v7);
}

uint64_t sub_24AF0AF00()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_24AF0B0A4;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_24AF0B024;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AF0B040()
{
  sub_24AED6198(v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24AF0B0A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_24AF0B110, v1, 0);
}

uint64_t sub_24AF0B110()
{
  sub_24AED6198(v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24AF0B174(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AF0B194, v1, 0);
}

uint64_t sub_24AF0B194()
{
  sub_24AF350CC();
  swift_allocObject();
  sub_24AF350BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0E18, &qword_24AF39530);
  sub_24AF11C68(&qword_27EFC0F68, &qword_27EFC0E18, &qword_24AF39530, &protocol conformance descriptor for SessionMessage<A>);
  v0[4] = sub_24AF3509C();
  v0[5] = v1;

  v2 = *(v0[3] + 120);
  v0[6] = v2;

  return MEMORY[0x2822009F8](sub_24AF0B2D8, v2, 0);
}

uint64_t sub_24AF0B2D8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_24AF11BA4(&qword_27EFC08C8, type metadata accessor for SessionMessagingDatagramConnection, "Y>07d1");
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_24AF0B418;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, v1, v4, 0x74616428646E6573, 0xEB00000000293A61, sub_24AF11ED8, v5, v7);
}

uint64_t sub_24AF0B418()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_24AF0B5BC;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_24AF0B53C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AF0B558()
{
  sub_24AED6198(v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24AF0B5BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_24AF0B628, v1, 0);
}

uint64_t sub_24AF0B628()
{
  sub_24AED6198(v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24AF0B68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a2;
  v5[4] = v4;
  v5[2] = a1;
  type metadata accessor for SessionMessage(255, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = sub_24AF3559C();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = swift_checkMetadataState();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0F58, &qword_24AF39A78);
  v5[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0E18, &qword_24AF39530);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF0B8A4, v4, 0);
}

uint64_t sub_24AF0B8A4()
{
  sub_24AF0A9D0();
  sub_24AF3508C();
  swift_allocObject();
  sub_24AF3507C();
  sub_24AF11C68(&qword_27EFC0F60, &qword_27EFC0E18, &qword_24AF39530, &protocol conformance descriptor for SessionMessage<A>);
  sub_24AF3505C();
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];

  (*(v2 + 56))(v4, 0, 1, v3);
  sub_24AF11B34(v4, v1);
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_24AF0BF00;
  v6 = v0[16];

  return sub_24AF0C1B0(v6);
}

uint64_t sub_24AF0BF00()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_24AF0C0EC;
  }

  else
  {
    v4 = sub_24AF0C02C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AF0C02C()
{
  sub_24AEE2E10(*(v0 + 128), &qword_27EFC0E18, &qword_24AF39530);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AF0C0EC()
{
  sub_24AEE2E10(*(v0 + 128), &qword_27EFC0E18, &qword_24AF39530);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AF0C1B0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0E18, &qword_24AF39530);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF0C24C, v1, 0);
}

uint64_t sub_24AF0C24C()
{
  if (**(v0 + 16))
  {
    if (**(v0 + 16) == 1)
    {
      if (qword_27EFC0718 != -1)
      {
        swift_once();
      }

      v1 = sub_24AF3529C();
      __swift_project_value_buffer(v1, qword_27EFC0E00);
      v2 = sub_24AF3527C();
      v3 = sub_24AF3572C();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_24AECF000, v2, v3, "Heartbeat reply received", v4, 2u);
        MEMORY[0x24C236490](v4, -1, -1);
      }

      v5 = *(v0 + 8);

      return v5();
    }

    else
    {
      if (qword_27EFC0718 != -1)
      {
        swift_once();
      }

      v12 = sub_24AF3529C();
      __swift_project_value_buffer(v12, qword_27EFC0E00);
      v13 = sub_24AF3527C();
      v14 = sub_24AF3572C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_24AECF000, v13, v14, "Received .shuttingDown message", v15, 2u);
        MEMORY[0x24C236490](v15, -1, -1);
      }

      v16 = *(v0 + 24);

      v17 = *(v16 + 120);
      *(v0 + 56) = v17;

      return MEMORY[0x2822009F8](sub_24AF0C770, v17, 0);
    }
  }

  else
  {
    if (qword_27EFC0718 != -1)
    {
      swift_once();
    }

    v6 = sub_24AF3529C();
    __swift_project_value_buffer(v6, qword_27EFC0E00);
    v7 = sub_24AF3527C();
    v8 = sub_24AF3572C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24AECF000, v7, v8, "Sending heartbeat reply", v9, 2u);
      MEMORY[0x24C236490](v9, -1, -1);
    }

    v10 = *(v0 + 32);

    sub_24AF0C978(1, 1, 0, 0xE000000000000000, v10);
    v18 = swift_task_alloc();
    *(v0 + 40) = v18;
    *v18 = v0;
    v18[1] = sub_24AF0C5C8;
    v19 = *(v0 + 32);

    return sub_24AF0B174(v19);
  }
}

uint64_t sub_24AF0C5C8()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_24AF0C8FC;
  }

  else
  {
    v4 = sub_24AF0C6F4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AF0C6F4()
{
  sub_24AEE2E10(*(v0 + 32), &qword_27EFC0E18, &qword_24AF39530);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AF0C770()
{
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_receiveTask;
  if (*(v1 + OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_receiveTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0898, &qword_24AF37D00);
    sub_24AF3562C();
  }

  v3 = *(v0 + 56);
  v4 = *(v0 + 24);
  *(v1 + v2) = 0;

  [*(v3 + 112) cancel];

  return MEMORY[0x2822009F8](sub_24AF0C860, v4, 0);
}

uint64_t sub_24AF0C860()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 64) = v1;
  return MEMORY[0x2822009F8](sub_24AF0C884, v1, 0);
}

uint64_t sub_24AF0C884()
{
  [*(*(v0 + 64) + 120) endSession];

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AF0C8FC()
{
  sub_24AEE2E10(*(v0 + 32), &qword_27EFC0E18, &qword_24AF39530);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AF0C978@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v9 = sub_24AF35A2C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a5 = a1;
  *(a5 + 8) = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0E18, &qword_24AF39530);
  v14 = *(v13 + 40);
  sub_24AF3520C();
  sub_24AF350CC();
  swift_allocObject();
  sub_24AF350BC();
  if (qword_281392D98 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v9, qword_281392DA0);
  (*(v10 + 16))(v12, v15, v9);
  v30[3] = MEMORY[0x277D839B0];
  LOBYTE(v30[0]) = 1;
  v16 = sub_24AF350AC();
  sub_24AF09444(v30, v12);
  v16(v29, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0938, &unk_24AF39A80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24AF37AB0;
  v18 = v28;
  *(v17 + 32) = a3;
  *(v17 + 40) = v18;
  v30[0] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0970, &qword_24AF381F0);
  sub_24AF11BEC();
  v19 = v30[5];
  v20 = sub_24AF3509C();
  if (v19)
  {

    v22 = sub_24AF3521C();
    return (*(*(v22 - 8) + 8))(a5 + v14, v22);
  }

  else
  {
    v24 = v20;
    v25 = v21;

    v26 = (a5 + *(v13 + 44));
    *v26 = v24;
    v26[1] = v25;
  }

  return result;
}

uint64_t SessionMessage.init<A>(type:version:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v41 = a7;
  v43 = a3;
  v14 = sub_24AF35A2C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(a4 - 8);
  v45 = a1;
  v18 = a1;
  v19 = a4;
  (*(v44 + 16))(a8, v18, a4);
  v21 = type metadata accessor for SessionMessage(0, a4, a6, v20);
  *(a8 + *(v21 + 36)) = a2;
  v22 = *(v21 + 40);
  v46 = a8;
  v39 = v21;
  v40 = v22;
  sub_24AF3520C();
  sub_24AF350CC();
  swift_allocObject();
  sub_24AF350BC();
  if (qword_281392D98 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v14, qword_281392DA0);
  (*(v15 + 16))(v17, v23, v14);
  v48[3] = MEMORY[0x277D839B0];
  LOBYTE(v48[0]) = 1;
  v24 = sub_24AF350AC();
  sub_24AF09444(v48, v17);
  v24(v47, 0);
  sub_24AF10020(a5, a5);
  v25 = *(a5 - 8);
  swift_allocObject();
  v26 = sub_24AF354BC();
  v27 = v43;
  (*(v25 + 16))(v28, v43, a5);
  sub_24AF3550C();
  v48[0] = v26;
  v48[5] = v41;
  swift_getWitnessTable();
  v29 = v42;
  v30 = sub_24AF3509C();
  if (v29)
  {

    (*(v25 + 8))(v27, a5);
    v32 = *(v44 + 8);
    v32(v45, v19);

    v33 = v46;
    v32(v46, v19);
    v34 = sub_24AF3521C();
    return (*(*(v34 - 8) + 8))(v33 + v40, v34);
  }

  else
  {
    v36 = v30;
    v37 = v31;

    (*(v25 + 8))(v27, a5);
    (*(v44 + 8))(v45, v19);

    v38 = (v46 + *(v39 + 44));
    *v38 = v36;
    v38[1] = v37;
  }

  return result;
}

uint64_t sub_24AF0D03C()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0E18, &qword_24AF39530);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF0D0D8, v0, 0);
}

uint64_t sub_24AF0D0D8()
{
  sub_24AF0C978(2, 1, 0, 0xE000000000000000, *(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_24AF0D304;
  v2 = *(v0 + 24);

  return sub_24AF0B174(v2);
}

uint64_t sub_24AF0D304()
{
  v2 = *v1;
  *(*v1 + 40) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_24AF0D6BC;
  }

  else
  {
    v4 = sub_24AF0D430;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AF0D430()
{
  sub_24AEE2E10(v0[3], &qword_27EFC0E18, &qword_24AF39530);
  v0[6] = 0;
  v1 = *(v0[2] + 120);
  v0[7] = v1;

  return MEMORY[0x2822009F8](sub_24AF0D4B4, v1, 0);
}

uint64_t sub_24AF0D4B4()
{
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_receiveTask;
  if (*(v1 + OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_receiveTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0898, &qword_24AF37D00);
    sub_24AF3562C();
  }

  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  *(v1 + v2) = 0;

  [*(v3 + 112) cancel];

  return MEMORY[0x2822009F8](sub_24AF0D5A4, v4, 0);
}

uint64_t sub_24AF0D5A4()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 64) = v1;
  return MEMORY[0x2822009F8](sub_24AF0D5C8, v1, 0);
}

uint64_t sub_24AF0D5C8()
{
  v1 = *(v0 + 16);
  [*(*(v0 + 64) + 120) endSession];

  return MEMORY[0x2822009F8](sub_24AF0D640, v1, 0);
}

uint64_t sub_24AF0D640(uint64_t a1)
{
  if (*(v1 + 48))
  {
    swift_willThrow();
  }

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_24AF0D6BC()
{
  sub_24AEE2E10(v0[3], &qword_27EFC0E18, &qword_24AF39530);
  v1 = v0[5];
  if (qword_27EFC0718 != -1)
  {
    swift_once();
  }

  v2 = sub_24AF3529C();
  __swift_project_value_buffer(v2, qword_27EFC0E00);
  v3 = v1;
  v4 = sub_24AF3527C();
  v5 = sub_24AF3570C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24AECF000, v4, v5, "Couldn't send .shuttingDown message: %@", v6, 0xCu);
    sub_24AEE2E10(v7, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v7, -1, -1);
    MEMORY[0x24C236490](v6, -1, -1);
  }

  v0[6] = v1;
  v10 = *(v0[2] + 120);
  v0[7] = v10;

  return MEMORY[0x2822009F8](sub_24AF0D4B4, v10, 0);
}

char *SessionMessaging.deinit()
{
  v1 = *v0;

  v2 = *(*v0 + 144);
  type metadata accessor for SessionMessage(255, *(v1 + 80), *(v1 + 88), v3);
  v4 = sub_24AF3561C();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = *(*v0 + 152);
  v6 = sub_24AF355EC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SessionMessaging.__deallocating_deinit()
{
  SessionMessaging.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AF0D9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[26] = *a5;
  v7 = sub_24AF35A2C();
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0E18, &qword_24AF39530);
  v5[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF0DB14, a5, 0);
}

uint64_t sub_24AF0DB14()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v2[3];
  v4 = __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v3 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v3);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_24AF3564C();

  type metadata accessor for SessionMessaging(255, *(v1 + 80), *(v1 + 88), v7);
  WitnessTable = swift_getWitnessTable();
  v0[32] = WitnessTable;
  v9 = v0[25];
  __swift_mutable_project_boxed_opaque_existential_0((v0 + 2), v0[5]);
  v10 = swift_task_alloc();
  v0[33] = v10;
  *v10 = v0;
  v10[1] = sub_24AF0DD08;

  return MEMORY[0x282200310](v0 + 39, v9, WitnessTable);
}

uint64_t sub_24AF0DD08()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (!v0)
  {
    v4 = *(v2 + 200);

    return MEMORY[0x2822009F8](sub_24AF0DE1C, v4, 0);
  }

  return result;
}

uint64_t sub_24AF0DE1C()
{
  v48 = v0;
  v1 = *(v0 + 312);
  if (v1 == 2)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v2 = *(v0 + 8);
LABEL_22:

    return v2();
  }

  if (v1)
  {
    if (qword_27EFC0718 != -1)
    {
      swift_once();
    }

    v3 = sub_24AF3529C();
    __swift_project_value_buffer(v3, qword_27EFC0E00);
    v4 = sub_24AF3527C();
    v5 = sub_24AF3570C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24AECF000, v4, v5, "Heartbeater timed out, closing session", v6, 2u);
      MEMORY[0x24C236490](v6, -1, -1);
    }

    v7 = swift_task_alloc();
    *(v0 + 280) = v7;
    *v7 = v0;
    v7[1] = sub_24AF0E44C;

    return sub_24AF0D03C();
  }

  else
  {
    if (qword_27EFC0718 != -1)
    {
      swift_once();
    }

    v9 = v0 + 88;
    v10 = sub_24AF3529C();
    __swift_project_value_buffer(v10, qword_27EFC0E00);
    v11 = sub_24AF3527C();
    v12 = sub_24AF356FC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24AECF000, v11, v12, "Heartbeater triggered, sending heartbeat", v13, 2u);
      MEMORY[0x24C236490](v13, -1, -1);
    }

    v14 = *(v0 + 240);
    v15 = *(v0 + 248);

    *v15 = 0;
    *(v15 + 8) = 1;
    v16 = *(v14 + 40);
    sub_24AF3520C();
    sub_24AF350CC();
    swift_allocObject();
    sub_24AF350BC();
    if (qword_281392D98 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    v19 = *(v0 + 216);
    v20 = __swift_project_value_buffer(v19, qword_281392DA0);
    (*(v18 + 16))(v17, v20, v19);
    *(v0 + 80) = MEMORY[0x277D839B0];
    *(v0 + 56) = 1;
    v21 = sub_24AF350AC();
    v23 = v22;
    v24 = *(v0 + 232);
    v25 = *(v0 + 216);
    v45 = (*(v0 + 224) + 8);
    v46 = v21;
    if (*(v0 + 80))
    {
      sub_24AEE2FBC((v0 + 56), (v0 + 152));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = *v23;
      v44 = v16;
      v26 = *(v0 + 176);
      v27 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 152, v26);
      v28 = *(v26 - 8);
      v29 = swift_task_alloc();
      v30 = v26;
      v16 = v44;
      (*(v28 + 16))(v29, v27, v30);
      v9 = v0 + 88;
      sub_24AF117F4(*v29, v24, isUniquelyReferenced_nonNull_native, &v47);
      __swift_destroy_boxed_opaque_existential_0((v0 + 152));

      (*v45)(v24, v25);
      *v23 = v47;
    }

    else
    {
      sub_24AEE2E10(v0 + 56, &qword_27EFC0F80, &qword_24AF39A98);
      v31 = sub_24AF10094(v24, (v0 + 120));
      (*v45)(v24, v25, v31);
      sub_24AEE2E10(v0 + 120, &qword_27EFC0F80, &qword_24AF39A98);
    }

    v32 = *(v0 + 272);
    v46(v9, 0);
    *(v0 + 184) = &unk_285E3D6A0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0970, &qword_24AF381F0);
    sub_24AF11BEC();
    v33 = sub_24AF3509C();
    if (v32)
    {

      v35 = sub_24AF3521C();
      (*(*(v35 - 8) + 8))(v15 + v16, v35);
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));

      v2 = *(v0 + 8);
      goto LABEL_22;
    }

    v36 = v33;
    v37 = v34;
    v39 = *(v0 + 240);
    v38 = *(v0 + 248);

    v40 = (v38 + *(v39 + 44));
    *v40 = v36;
    v40[1] = v37;
    v41 = swift_task_alloc();
    *(v0 + 296) = v41;
    *v41 = v0;
    v41[1] = sub_24AF0E650;
    v42 = *(v0 + 248);

    return sub_24AF0B174(v42);
  }
}

uint64_t sub_24AF0E44C()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 200);
  if (v0)
  {
    v4 = sub_24AF0E86C;
  }

  else
  {
    v4 = sub_24AF0E578;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AF0E578()
{
  v1 = v0[32];
  v2 = v0[25];
  __swift_mutable_project_boxed_opaque_existential_0((v0 + 2), v0[5]);
  v3 = swift_task_alloc();
  v0[33] = v3;
  *v3 = v0;
  v3[1] = sub_24AF0DD08;

  return MEMORY[0x282200310](v0 + 39, v2, v1);
}

uint64_t sub_24AF0E650()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 200);
  if (v0)
  {
    v4 = sub_24AF0E8F0;
  }

  else
  {
    v4 = sub_24AF0E77C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AF0E77C()
{
  sub_24AEE2E10(v0[31], &qword_27EFC0E18, &qword_24AF39530);
  v1 = v0[32];
  v2 = v0[25];
  __swift_mutable_project_boxed_opaque_existential_0((v0 + 2), v0[5]);
  v3 = swift_task_alloc();
  v0[33] = v3;
  *v3 = v0;
  v3[1] = sub_24AF0DD08;

  return MEMORY[0x282200310](v0 + 39, v2, v1);
}

uint64_t sub_24AF0E86C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AF0E8F0()
{
  sub_24AEE2E10(v0[31], &qword_27EFC0E18, &qword_24AF39530);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

unint64_t sub_24AF0E98C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24AF35A9C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24AF0E9F4()
{
  sub_24AF35D0C();
  sub_24AF35D3C();
  return sub_24AF35D4C();
}

uint64_t sub_24AF0EA6C(uint64_t a1)
{
  sub_24AF35D0C();
  sub_24AF35D3C();
  return sub_24AF35D4C();
}

_DWORD *sub_24AF0EAB0@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result > 0xFFFFFFFC)
  {
    v2 = ~*result;
  }

  else
  {
    v2 = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_24AF0EB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24AF0EC0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_24AF0EC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24AF0ECE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_24AF0ED58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24AF0E98C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_24AF0ED88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24AF0E9DC(*v1);
  *a1 = result;
  a1[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_24AF0EDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24AF0E9D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24AF0EE00@<X0>(_BYTE *a2@<X8>)
{
  result = sub_24AF11B2C();
  *a2 = result;
  return result;
}

uint64_t sub_24AF0EE2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24AF0EE80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t SessionMessage.MessageError.hashValue.getter()
{
  v1 = *v0;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v1);
  return sub_24AF35D4C();
}

uint64_t sub_24AF0EF6C(uint64_t a1)
{
  sub_24AF35D0C();
  SessionMessage.MessageError.hash(into:)();
  return sub_24AF35D4C();
}

uint64_t SessionMessage.identifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_24AF3521C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SessionMessage.extract<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v8 = sub_24AF3579C();
  v19 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v21 = &v17 - v9;
  sub_24AF3508C();
  swift_allocObject();
  sub_24AF3507C();
  sub_24AF3550C();
  v22 = a3;
  swift_getWitnessTable();
  sub_24AF3505C();

  if (!v4)
  {
    v17 = v8;
    v18 = a1;
    v11 = v19;
    v12 = v20;
    swift_getWitnessTable();
    v13 = v21;
    sub_24AF356CC();
    v14 = *(a2 - 8);
    if ((*(v14 + 48))(v13, 1, a2) == 1)
    {
      (*(v11 + 8))(v13, v17);

      type metadata accessor for SessionMessage.MessageError(0, *(v18 + 16), *(v18 + 24), v15);
      swift_getWitnessTable();
      swift_allocError();
      *v16 = 0;
      return swift_willThrow();
    }

    else
    {
      (*(v14 + 32))(v12, v13, a2);
    }
  }

  return result;
}

uint64_t SessionMessage.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v18[0] = a2;
  v18[1] = v5;
  type metadata accessor for SessionMessage.CodingKeys(255, v5, v6, a4);
  swift_getWitnessTable();
  v7 = sub_24AF35BDC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF35D6C();
  LOBYTE(v19) = 0;
  v11 = v18[2];
  v12 = v10;
  v13 = v18[3];
  sub_24AF35BCC();
  if (v13)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v15 = v18[0];
  LOBYTE(v19) = 1;
  sub_24AF35BBC();
  LOBYTE(v19) = 2;
  sub_24AF3521C();
  sub_24AF11BA4(&qword_27EFC0B50, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_24AF35BCC();
  v16 = (v11 + *(v15 + 44));
  v17 = v16[1];
  v19 = *v16;
  v20 = v17;
  v21 = 3;
  sub_24AEE5154(v19, v17);
  sub_24AF108C4();
  sub_24AF35BCC();
  sub_24AED6198(v19, v20);
  return (*(v8 + 8))(v12, v7);
}

uint64_t SessionMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v7 = sub_24AF3521C();
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a2 - 8);
  MEMORY[0x28223BE20](v8);
  v41 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SessionMessage.CodingKeys(255, a2, a3, v11);
  swift_getWitnessTable();
  v40 = sub_24AF35B4C();
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v13 = &v30 - v12;
  v39 = a3;
  v15 = type metadata accessor for SessionMessage(0, a2, a3, v14);
  v32 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v42 = v13;
  v18 = v43;
  sub_24AF35D5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = v37;
  v20 = v38;
  v31 = v17;
  LOBYTE(v44) = 0;
  v21 = v40;
  sub_24AF35B2C();
  v22 = *(v20 + 32);
  v23 = v31;
  v22(v31, v41, a2);
  LOBYTE(v44) = 1;
  v24 = sub_24AF35B1C();
  v41 = v15;
  *&v23[*(v15 + 36)] = v24;
  LOBYTE(v44) = 2;
  sub_24AF11BA4(&qword_27EFC0B80, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v25 = v36;
  sub_24AF35B2C();
  v43 = a1;
  v26 = v41;
  (*(v35 + 32))(&v31[*(v41 + 10)], v34, v25);
  v45 = 3;
  sub_24AF10918();
  sub_24AF35B2C();
  (*(v19 + 8))(v42, v21);
  v28 = v31;
  v27 = v32;
  *&v31[*(v26 + 11)] = v44;
  (*(v27 + 16))(v33, v28, v26);
  __swift_destroy_boxed_opaque_existential_0(v43);
  return (*(v27 + 8))(v28, v26);
}

uint64_t SessionMessage.description.getter(uint64_t a1)
{
  sub_24AF3592C();
  MEMORY[0x24C235440](0xD000000000000015, 0x800000024AF37550);
  sub_24AF35C3C();
  MEMORY[0x24C235440](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
  v1 = sub_24AF35C0C();
  MEMORY[0x24C235440](v1);

  MEMORY[0x24C235440](0x69746E656469202CLL, 0xEE00203A72656966);
  sub_24AF3521C();
  sub_24AF11BA4(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v2 = sub_24AF35C0C();
  MEMORY[0x24C235440](v2);

  MEMORY[0x24C235440](0x64616F6C79617020, 0xEA0000000000203ALL);
  v3 = sub_24AF3515C();
  MEMORY[0x24C235440](v3);

  MEMORY[0x24C235440](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_24AF0FCE8()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_27EFC4BD0);
  __swift_project_value_buffer(v0, qword_27EFC4BD0);
  return sub_24AF3528C();
}

uint64_t sub_24AF0FD68()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_27EFC0E00);
  v1 = __swift_project_value_buffer(v0, qword_27EFC0E00);
  if (qword_27EFC0710 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EFC4BD0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AF0FE30(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AF0FF28;

  return v6(a1);
}

uint64_t sub_24AF0FF28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AF10020(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0F78, &qword_24AF39A90);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

double sub_24AF10094@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_24AEDA4FC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24AEDD558();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_24AF35A2C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_24AEE2FBC((*(v9 + 56) + 32 * v7), a2);
    sub_24AF10490(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_24AF10170(int64_t a1, uint64_t a2)
{
  v40 = sub_24AF3521C();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_24AF357EC();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_24AF11BA4(&qword_281393400, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_24AF3535C();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_24AF10490(int64_t a1, uint64_t a2)
{
  v4 = sub_24AF35A2C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_24AF357EC();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = sub_24AF3535C();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24AF10744(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D08, &qword_24AF394A0) - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24AEE555C;

  return sub_24AF09E38(a1, v9, v10, v1 + v8, v11, v6, v5);
}

unint64_t sub_24AF108C4()
{
  result = qword_27EFC0E20[0];
  if (!qword_27EFC0E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EFC0E20);
  }

  return result;
}

unint64_t sub_24AF10918()
{
  result = qword_281393408;
  if (!qword_281393408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281393408);
  }

  return result;
}

uint64_t sub_24AF10988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SessionMessage(255, *(a1 + 80), *(a1 + 88), a4);
  result = sub_24AF3561C();
  if (v5 <= 0x3F)
  {
    result = sub_24AF355EC();
    if (v6 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of SessionMessaging.send(message:)(uint64_t a1)
{
  v6 = (*(*v1 + 232) + **(*v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AEF9DD0;

  return v6(a1);
}

uint64_t dispatch thunk of SessionMessaging.close()()
{
  v4 = (*(*v0 + 264) + **(*v0 + 264));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AEF9DD0;

  return v4();
}

uint64_t sub_24AF10D50(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_24AF3521C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24AF10DE8(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v27 = *(v5 - 8);
  v6 = *(v27 + 84);
  v7 = sub_24AF3521C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v27 + 64);
  if (v9 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v8 + 80);
  if (v11 <= 0xC)
  {
    v11 = 12;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v7 - 8) + 64) + 7;
  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v14 = ((v13 + ((v12 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v11 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v11 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v14);
    if (v19)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v6 == v11)
  {
    v23 = *(v27 + 48);

    return v23(a1, v6, v5);
  }

  else
  {
    v24 = (((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
    if (v9 == v11)
    {
      v25 = *(v8 + 48);

      return v25(v24);
    }

    else
    {
      v26 = *(((v13 + v24) & 0xFFFFFFFFFFFFFFF8) + 8) >> 60;
      if (((4 * v26) & 0xC) != 0)
      {
        return 16 - ((4 * v26) & 0xC | (v26 >> 2));
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_24AF1106C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v26 = *(v7 - 8);
  v8 = *(v26 + 84);
  v9 = *(sub_24AF3521C() - 8);
  v10 = *(v9 + 84);
  v11 = *(v26 + 64);
  if (v10 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v9 + 80);
  if (v12 <= 0xC)
  {
    v12 = 12;
  }

  v14 = *(v9 + 64) + 7;
  v15 = ((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v18 = 0;
    v19 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v12 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v8 == v12)
      {
        v22 = *(v26 + 56);

        v22(a1, a2, v8, v7);
      }

      else
      {
        v23 = (((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;
        if (v10 == v12)
        {
          v24 = *(v9 + 56);

          v24(v23, a2);
        }

        else
        {
          v25 = ((v14 + v23) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0xC)
          {
            *v25 = (a2 - 13);
            v25[1] = 0;
          }

          else
          {
            *v25 = 0;
            v25[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
          }
        }
      }

      return;
    }
  }

  if (((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v12 + a2;
    bzero(a1, ((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t getEnumTagSinglePayload for MessagingError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MessagingError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for InternalSessionMessageType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InternalSessionMessageType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24AF115D0(void *a1)
{
  a1[1] = sub_24AF11608();
  a1[2] = sub_24AF1165C();
  result = sub_24AF116B0();
  a1[3] = result;
  return result;
}

unint64_t sub_24AF11608()
{
  result = qword_27EFC0F28;
  if (!qword_27EFC0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0F28);
  }

  return result;
}

unint64_t sub_24AF1165C()
{
  result = qword_27EFC0F30;
  if (!qword_27EFC0F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0F30);
  }

  return result;
}

unint64_t sub_24AF116B0()
{
  result = qword_27EFC0F38;
  if (!qword_27EFC0F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0F38);
  }

  return result;
}

unint64_t sub_24AF1174C()
{
  result = qword_27EFC0F50;
  if (!qword_27EFC0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0F50);
  }

  return result;
}

_OWORD *sub_24AF117F4(char a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24AF35A2C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x277D839B0];
  LOBYTE(v29) = a1;
  v12 = *a4;
  v14 = sub_24AEDA4FC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *a4;
    if (v18)
    {
LABEL_8:
      v21 = (v20[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_0(v21);
      return sub_24AEE2FBC(&v29, v21);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_24AEDD558();
    goto LABEL_7;
  }

  sub_24AEDBA30(v17, a3 & 1);
  v23 = sub_24AEDA4FC(a2);
  if ((v18 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_24AF35C8C();
    __break(1u);
    return result;
  }

  v14 = v23;
  v20 = *a4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v25 = __swift_mutable_project_boxed_opaque_existential_0(&v29, v30);
  MEMORY[0x28223BE20](v25);
  v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27);
  sub_24AF11A60(v14, v11, *v27, v20);
  return __swift_destroy_boxed_opaque_existential_0(&v29);
}

_OWORD *sub_24AF11A60(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  v14 = MEMORY[0x277D839B0];
  LOBYTE(v13) = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6];
  v8 = sub_24AF35A2C();
  (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a2, v8);
  result = sub_24AEE2FBC(&v13, (a4[7] + 32 * a1));
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_24AF11B34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0E18, &qword_24AF39530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AF11BA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24AF11BEC()
{
  result = qword_27EFC0F70;
  if (!qword_27EFC0F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0970, &qword_24AF381F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0F70);
  }

  return result;
}

uint64_t sub_24AF11C68(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_24AF11CB0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24AF11CC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AEE555C;

  return sub_24AF0D9EC(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_24AF11D88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AF11DF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AEF9DD0;

  return sub_24AF0FE30(a1, v4);
}

uint64_t sub_24AF11EB0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AED6198(result, a2);
  }

  return result;
}

uint64_t sub_24AF11EC4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AEE5154(result, a2);
  }

  return result;
}

unsigned __int8 sub_24AF11EE0@<W0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  if ((*v1 & 0xFE) == 2)
  {
    v5 = sub_24AF3539C();
    v6 = [v5 _stripPotentialTokenURIWithToken_];

    if (v6)
    {
      v7 = sub_24AF353AC();
      v9 = v8;

      v10._countAndFlagsBits = v7;
      v10._object = v9;
      result = Destination.init(stringRepresentation:)(v10);
      if (v14)
      {
        *a1 = v12;
        *(a1 + 8) = v13;
        *(a1 + 16) = v14;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    sub_24AF3592C();

    MEMORY[0x24C235440](v4, v3);
    MEMORY[0x24C235440](0xD000000000000013, 0x800000024AF36A90);
    result = sub_24AF35A3C();
    __break(1u);
  }

  else
  {
    *a1 = *v1;
    *(a1 + 8) = v4;
    *(a1 + 16) = v3;
  }

  return result;
}

uint64_t Destination.description.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

FindMyMessaging::Destination_optional __swiftcall Destination.init(stringRepresentation:)(Swift::String stringRepresentation)
{
  object = stringRepresentation._object;
  countAndFlagsBits = stringRepresentation._countAndFlagsBits;
  v4 = v1;
  v5 = sub_24AF3540C();
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v5 = sub_24AF3540C();
    if (v5)
    {
      v9 = 1;
    }

    else
    {
      v5 = sub_24AF3540C();
      if (v5)
      {
        v9 = 2;
      }

      else
      {
        v5 = sub_24AF3540C();
        if (v5)
        {
          v9 = 3;
        }

        else
        {
          v5 = sub_24AF3540C();
          if (v5)
          {
            v9 = 4;
          }

          else
          {
            v5 = sub_24AF3540C();
            if ((v5 & 1) == 0)
            {

              *v4 = 0;
              v4[1] = 0;
              v4[2] = 0;
              goto LABEL_15;
            }

            v9 = 5;
          }
        }
      }
    }
  }

  *v4 = v9;
  v4[1] = countAndFlagsBits;
  v4[2] = object;
LABEL_15:
  result.value.destination._object = v7;
  result.value.destination._countAndFlagsBits = v6;
  result.is_nil = v8;
  result.value.type = v5;
  return result;
}

FindMyMessaging::Destination_optional __swiftcall Destination.init(string:)(Swift::String string)
{
  v2 = v1;
  sub_24AF12470();
  v3 = sub_24AF357AC();
  v4 = sub_24AF3539C();
  v8 = v4;
  if ((v3 & 1) == 0)
  {
    v9 = IDSCopyIDForPhoneNumber();

    if (v9)
    {
      v14 = 1;
      goto LABEL_6;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = MEMORY[0x24C235E50](v4, v5, v6, v7);

  if (!v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  v14 = 0;
LABEL_6:

  v15 = sub_24AF353AC();
  v17 = v16;

  *v2 = v14;
  v2[1] = v15;
  v2[2] = v17;
LABEL_9:
  result.value.destination._object = v12;
  result.value.destination._countAndFlagsBits = v11;
  result.is_nil = v13;
  result.value.type = v10;
  return result;
}

FindMyMessaging::Destination::DestinationType_optional __swiftcall Destination.DestinationType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

FindMyMessaging::Destination __swiftcall Destination.init(email:)(Swift::String email)
{
  sub_24AF123F0(MEMORY[0x277D18528], 0, v1);
  result.destination._object = v4;
  result.destination._countAndFlagsBits = v3;
  result.type = v2;
  return result;
}

FindMyMessaging::Destination __swiftcall Destination.init(phoneNumber:)(Swift::String phoneNumber)
{
  sub_24AF123F0(MEMORY[0x277D18530], 1, v1);
  result.destination._object = v4;
  result.destination._countAndFlagsBits = v3;
  result.type = v2;
  return result;
}

void sub_24AF123F0(uint64_t (*a3)(void)@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = sub_24AF3539C();
  v9 = a3();

  if (v9)
  {

    v10 = sub_24AF353AC();
    v12 = v11;

    *a5 = a4;
    *(a5 + 8) = v10;
    *(a5 + 16) = v12;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_24AF12470()
{
  result = qword_27EFC0FA0;
  if (!qword_27EFC0FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0FA0);
  }

  return result;
}

uint64_t sub_24AF124C4()
{
  if (*v0)
  {
    return 0x74616E6974736564;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_24AF12500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_24AF35C4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24AF35C4C();

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

uint64_t sub_24AF125EC(uint64_t a1)
{
  v2 = sub_24AF12808();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AF12628(uint64_t a1)
{
  v2 = sub_24AF12808();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Destination.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0FA8, &qword_24AF39B40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF12808();
  sub_24AF35D6C();
  v14 = v8;
  v13 = 0;
  sub_24AF1285C();
  sub_24AF35BCC();
  if (!v2)
  {
    v12 = 1;
    sub_24AF35B9C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24AF12808()
{
  result = qword_2813931A0;
  if (!qword_2813931A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813931A0);
  }

  return result;
}

unint64_t sub_24AF1285C()
{
  result = qword_2813931B0[0];
  if (!qword_2813931B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813931B0);
  }

  return result;
}

uint64_t Destination.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0FB0, &qword_24AF39B48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF12808();
  sub_24AF35D5C();
  if (!v2)
  {
    v16 = 0;
    sub_24AF12A70();
    sub_24AF35B2C();
    v9 = v17;
    v15 = 1;
    v11 = sub_24AF35AFC();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_24AF12A70()
{
  result = qword_27EFC0FB8;
  if (!qword_27EFC0FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0FB8);
  }

  return result;
}

uint64_t sub_24AF12AF4()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Destination.hash(into:)(uint64_t a1)
{
  MEMORY[0x24C235D70](*v1);

  return sub_24AF353DC();
}

uint64_t static Destination.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_24AF35C4C();
  }
}

uint64_t Destination.hashValue.getter()
{
  v1 = *v0;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v1);
  sub_24AF353DC();
  return sub_24AF35D4C();
}

uint64_t sub_24AF12C24()
{
  v1 = *v0;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v1);
  sub_24AF353DC();
  return sub_24AF35D4C();
}

uint64_t sub_24AF12C88(uint64_t a1)
{
  MEMORY[0x24C235D70](*v1);

  return sub_24AF353DC();
}

uint64_t sub_24AF12CDC(uint64_t a1)
{
  v2 = *v1;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v2);
  sub_24AF353DC();
  return sub_24AF35D4C();
}

unint64_t sub_24AF12D40()
{
  result = qword_27EFC0FC0;
  if (!qword_27EFC0FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0FC0);
  }

  return result;
}

unint64_t sub_24AF12D98()
{
  result = qword_281393180;
  if (!qword_281393180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281393180);
  }

  return result;
}

uint64_t sub_24AF12DEC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_24AF35C4C();
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24AF12E48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24AF12E90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24AF12F04()
{
  result = qword_27EFC0FC8;
  if (!qword_27EFC0FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0FC8);
  }

  return result;
}

unint64_t sub_24AF12F5C()
{
  result = qword_281393190;
  if (!qword_281393190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281393190);
  }

  return result;
}

unint64_t sub_24AF12FB4()
{
  result = qword_281393198;
  if (!qword_281393198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281393198);
  }

  return result;
}

unint64_t sub_24AF13008()
{
  result = qword_2813931A8;
  if (!qword_2813931A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813931A8);
  }

  return result;
}

uint64_t sub_24AF13060(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_24AF1310C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07C8, &qword_24AF37BE0);
    v2 = sub_24AF3590C();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  while (v5)
  {
LABEL_15:

    swift_dynamicCast();
    result = sub_24AF358BC();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v15);
        if (v19 != -1)
        {
          v10 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v22;
    *v11 = v20;
    *(v11 + 16) = v21;
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24AF13340(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFC0FD0, &qword_24AF3A0E0);
    v2 = sub_24AF35A7C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_24AED0E50(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_24AED0F00(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_24AED0F00(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_24AED0F00(v31, v32);
    result = sub_24AF358BC();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_24AED0F00(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24AF13608(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFC0FD0, &qword_24AF3A0E0);
    v2 = sub_24AF35A7C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_24AED0E50(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];

    swift_dynamicCast();
    sub_24AED0F00(v33, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0918, &qword_24AF380D8);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_24AED0F00(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_24AED0F00(v31, v32);
    result = sub_24AF358BC();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_24AED0F00(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24AF13904()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_281392F20);
  v1 = __swift_project_value_buffer(v0, qword_281392F20);
  if (qword_281392F40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281393428);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AF139CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LocalMessaging(255, *(v4 + 80), *(v4 + 88), a4);
  swift_getMetatypeMetadata();
  return sub_24AF353BC();
}

uint64_t LocalMessaging.serviceName.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_24AF13A38(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  v4 = *(v2 + 168);
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AF13A4C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 184);
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AF13A60(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 192);
  v4 = *(v2 + 200);
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AF13A74(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 208);
  v4 = *(v2 + 216);
  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AF13A88(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 224);
  v4 = *(v2 + 232);
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AF13A9C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 240);
  v4 = *(v2 + 248);
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AF13AB0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 256);
  v4 = *(v2 + 264);
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AF13AC4()
{
  sub_24AF3503C();
  if (!v30)
  {
    sub_24AEE2E10(&v28, &qword_27EFC0968, &qword_24AF381E8);
LABEL_13:
    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v8 = sub_24AF3529C();
    __swift_project_value_buffer(v8, qword_281392F20);
    v9 = sub_24AF3527C();
    v10 = sub_24AF3571C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24AECF000, v9, v10, "Missing com.apple.private.ids.registration entitlement!", v11, 2u);
      MEMORY[0x24C236490](v11, -1, -1);
    }

    v26 = 0;
    v25 = 75;
    goto LABEL_35;
  }

  if ((swift_dynamicCast() & 1) == 0 || v27 != 1)
  {
    goto LABEL_13;
  }

  sub_24AF3503C();
  if ((swift_dynamicCast() & 1) == 0 || v27 != 1)
  {
    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v12 = sub_24AF3529C();
    __swift_project_value_buffer(v12, qword_281392F20);
    v13 = sub_24AF3527C();
    v14 = sub_24AF3571C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24AECF000, v13, v14, "Missing com.apple.private.ids.remotecredentials entitlement!", v15, 2u);
      MEMORY[0x24C236490](v15, -1, -1);
    }

    v26 = 0;
    v25 = 81;
    goto LABEL_35;
  }

  sub_24AF3503C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0970, &qword_24AF381F0);
  v1 = swift_dynamicCast();
  if ((v1 & 1) == 0)
  {
    goto LABEL_24;
  }

  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v28 = v2;
  v29 = v3;
  MEMORY[0x28223BE20](v1);
  v25 = &v28;
  if ((sub_24AF13060(sub_24AF23948, v24, v27) & 1) == 0)
  {

LABEL_24:
    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v16 = sub_24AF3529C();
    __swift_project_value_buffer(v16, qword_281392F20);
    v17 = sub_24AF3527C();
    v18 = sub_24AF3571C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24AECF000, v17, v18, "Missing com.apple.private.ids.messaging entitlement!", v19, 2u);
      MEMORY[0x24C236490](v19, -1, -1);
    }

    v26 = 0;
    v25 = 87;
    goto LABEL_35;
  }

  sub_24AF3503C();
  if (v30)
  {
    v4 = swift_dynamicCast();
    if (v4)
    {
      v5 = v27;
      v28 = v2;
      v29 = v3;
      MEMORY[0x28223BE20](v4);
      v25 = &v28;
      v6 = sub_24AF13060(sub_24AF239D4, v24, v5);

      if (v6)
      {
      }
    }
  }

  else
  {
    sub_24AEE2E10(&v28, &qword_27EFC0968, &qword_24AF381E8);
  }

  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v20 = sub_24AF3529C();
  __swift_project_value_buffer(v20, qword_281392F20);
  v21 = sub_24AF3527C();
  v22 = sub_24AF3571C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_24AECF000, v21, v22, "Missing com.apple.private.ids.messaging.urgent-priority entitlement!", v23, 2u);
    MEMORY[0x24C236490](v23, -1, -1);
  }

  v26 = 0;
  v25 = 93;
LABEL_35:
  result = sub_24AF35A3C();
  __break(1u);
  return result;
}

uint64_t LocalMessaging.__allocating_init(serviceName:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AEE1D70;

  return LocalMessaging.init(serviceName:)(a1, a2);
}

uint64_t LocalMessaging.init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v3[6] = *v2;
  return MEMORY[0x2822009F8](sub_24AF14264, 0, 0);
}

uint64_t sub_24AF14264()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  swift_defaultActor_initialize();
  *(v3 + 136) = 0;
  *(v3 + 144) = sub_24AEE263C(MEMORY[0x277D84F90]);
  v5 = sub_24AF3521C();
  v6 = *(v1 + 80);
  v0[7] = v6;
  v7 = *(v1 + 88);
  v0[8] = v7;
  type metadata accessor for Message(255, v6, v7, v8);
  type metadata accessor for MessageContext(255);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0898, &qword_24AF37D00);
  v9 = sub_24AF3501C();
  swift_getTupleTypeMetadata2();
  v10 = sub_24AF354CC();
  v11 = sub_24AF22C2C(&qword_281393400, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v12 = sub_24AEF6664(v10, v5, v9, v11);

  *(v3 + 152) = v12;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 112) = v4;
  *(v3 + 120) = v2;
  v13 = objc_allocWithZone(MEMORY[0x277D18778]);

  v14 = sub_24AF3539C();
  v15 = [v13 initWithService_];

  if (v15)
  {
    v19 = v0[4];

    *(v19 + 128) = v15;
    v16 = sub_24AF14468;
    v17 = v19;
    v18 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_24AF14468()
{
  v26 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[4];
  v4 = type metadata accessor for MessagingDelegateTrampoline();
  v24 = 0;
  v25 = 1;
  v6 = type metadata accessor for LocalMessaging(0, v1, v2, v5);

  v8 = sub_24AF31908(v7, &v24, v4, v6, &off_285E3EA50);
  v9 = *(v3 + 136);
  *(v3 + 136) = v8;

  sub_24AF13AC4();
  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v10 = sub_24AF3529C();
  __swift_project_value_buffer(v10, qword_281392F20);
  v11 = sub_24AF3527C();
  v12 = sub_24AF3572C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136446210;
    v18 = sub_24AF139CC(v14, v15, v16, v17);
    v20 = sub_24AEF599C(v18, v19, &v24);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_24AECF000, v11, v12, "%{public}s: created.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C236490](v14, -1, -1);
    MEMORY[0x24C236490](v13, -1, -1);
  }

  v21 = v0[1];
  v22 = v0[4];

  return v21(v22);
}

void sub_24AF14650()
{
  v1 = v0;
  v2 = sub_24AF352AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D18A20]) init];
  v7 = *(v1 + 128);
  v8 = *(v1 + 136);
  sub_24AED0EAC(0, &qword_281392DC0, 0x277D85C78);
  (*(v3 + 104))(v5, *MEMORY[0x277D851C8], v2);
  v9 = v6;
  v10 = v8;
  v11 = sub_24AF3576C();
  (*(v3 + 8))(v5, v2);
  [v7 addDelegate:v10 withDelegateProperties:v9 queue:v11];

  v12 = [v7 devices];
  if (v12)
  {
    v13 = v12;
    sub_24AED0EAC(0, &qword_281392DB8, 0x277D186E0);
    v14 = sub_24AF3549C();

    v15 = *(v1 + 136);
    if (v15)
    {
      v16 = v15;
      v17 = sub_24AEE5870(v14);

      sub_24AF2A794(v7, v17);
    }
  }

  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v18 = sub_24AF3529C();
  __swift_project_value_buffer(v18, qword_281392F20);
  v19 = sub_24AF3527C();
  v20 = sub_24AF3572C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136446210;
    v26 = sub_24AF139CC(v22, v23, v24, v25);
    v28 = sub_24AEF599C(v26, v27, &v30);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_24AECF000, v19, v20, "%{public}s: started.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x24C236490](v22, -1, -1);
    MEMORY[0x24C236490](v21, -1, -1);
  }
}

void sub_24AF1499C()
{
  v33 = *v0;
  swift_beginAccess();
  v1 = v0[18];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(v0[18] + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      swift_once();
      goto LABEL_22;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v7 &= v7 - 1;
        sub_24AF3554C();
        sub_24AF22C2C(&qword_27EFC08F0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
        v11 = swift_allocError();

        sub_24AF352DC();
        v35 = v11;
        sub_24AF34FFC();
      }

      while (v7);
      continue;
    }
  }

  swift_beginAccess();
  v0[18] = MEMORY[0x277D84F98];

  swift_beginAccess();
  sub_24AF3521C();
  type metadata accessor for Message(255, *(v33 + 80), *(v33 + 88), v12);
  type metadata accessor for MessageContext(255);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0898, &qword_24AF37D00);
  sub_24AF3501C();
  sub_24AF22C2C(&qword_281393400, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  nullsub_1();
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  if (v17)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_26;
    }

    if (v20 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      do
      {
LABEL_19:
        v17 &= v17 - 1;
        sub_24AF3554C();
        sub_24AF22C2C(&qword_27EFC08F0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
        v21 = swift_allocError();

        sub_24AF352DC();
        v34[0] = v21;
        sub_24AF34FFC();
      }

      while (v17);
      continue;
    }
  }

  swift_beginAccess();
  sub_24AF3532C();
  sub_24AF3531C();
  swift_endAccess();
  [v0[16] removeDelegate_];
  if (qword_281392F18 != -1)
  {
    goto LABEL_27;
  }

LABEL_22:
  v22 = sub_24AF3529C();
  __swift_project_value_buffer(v22, qword_281392F20);
  v23 = sub_24AF3527C();
  v24 = sub_24AF3572C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v34[0] = v26;
    *v25 = 136446210;
    v30 = sub_24AF139CC(v26, v27, v28, v29);
    v32 = sub_24AEF599C(v30, v31, v34);

    *(v25 + 4) = v32;
    _os_log_impl(&dword_24AECF000, v23, v24, "%{public}s: stopped.", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x24C236490](v26, -1, -1);
    MEMORY[0x24C236490](v25, -1, -1);
  }
}

void sub_24AF14ED0(_OWORD *a3@<X8>)
{
  v5 = *(v3 + 128);
  v6 = sub_24AF3539C();
  v7 = [v5 deviceForFromID_];

  if (v7)
  {
    sub_24AF329AC(v7, &v28);
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v18 = v28;
    v19 = v29;
    nullsub_1();
    v12 = v25;
    a3[6] = v24;
    a3[7] = v12;
    v13 = v27;
    a3[8] = v26;
    a3[9] = v13;
    v14 = v21;
    a3[2] = v20;
    a3[3] = v14;
    v15 = v23;
    a3[4] = v22;
    a3[5] = v15;
    v16 = v18;
    v17 = v19;
  }

  else
  {
    sub_24AEF6968(&v28);
    v8 = v35;
    a3[6] = v34;
    a3[7] = v8;
    v9 = v37;
    a3[8] = v36;
    a3[9] = v9;
    v10 = v31;
    a3[2] = v30;
    a3[3] = v10;
    v11 = v33;
    a3[4] = v32;
    a3[5] = v11;
    v16 = v28;
    v17 = v29;
  }

  *a3 = v16;
  a3[1] = v17;
}

void sub_24AF14FE4(_OWORD *a1@<X8>)
{
  v2 = sub_24AF15108();
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = 32;
    while (1)
    {
      v5 = *&v2[v4 + 16];
      v32 = *&v2[v4];
      v33 = v5;
      v6 = *&v2[v4 + 32];
      v7 = *&v2[v4 + 48];
      v8 = *&v2[v4 + 80];
      v36 = *&v2[v4 + 64];
      v37 = v8;
      v34 = v6;
      v35 = v7;
      v9 = *&v2[v4 + 96];
      v10 = *&v2[v4 + 112];
      v11 = *&v2[v4 + 144];
      v40 = *&v2[v4 + 128];
      v41 = v11;
      v38 = v9;
      v39 = v10;
      if (BYTE3(v40))
      {
        break;
      }

      v4 += 160;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_24AEF6984(&v32, &v22);

    v28 = v38;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v22 = v32;
    v23 = v33;
    nullsub_1();
    v18 = v29;
    a1[6] = v28;
    a1[7] = v18;
    v19 = v31;
    a1[8] = v30;
    a1[9] = v19;
    v20 = v25;
    a1[2] = v24;
    a1[3] = v20;
    v21 = v27;
    a1[4] = v26;
    a1[5] = v21;
    v16 = v22;
    v17 = v23;
  }

  else
  {
LABEL_5:

    sub_24AEF6968(&v32);
    v12 = v39;
    a1[6] = v38;
    a1[7] = v12;
    v13 = v41;
    a1[8] = v40;
    a1[9] = v13;
    v14 = v35;
    a1[2] = v34;
    a1[3] = v14;
    v15 = v37;
    a1[4] = v36;
    a1[5] = v15;
    v16 = v32;
    v17 = v33;
  }

  *a1 = v16;
  a1[1] = v17;
}

char *sub_24AF15108()
{
  v0 = sub_24AF1549C();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_27:

    v5 = MEMORY[0x277D84F90];
    v17 = *(MEMORY[0x277D84F90] + 16);
    if (v17)
    {
LABEL_13:
      v18 = 0;
      v19 = MEMORY[0x277D84F90];
      do
      {
        v1 = v5 + 32 + 160 * v18;
        v20 = v18;
        while (1)
        {
          if (v20 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_26;
          }

          v21 = *(v1 + 16);
          v58 = *v1;
          v59 = v21;
          v22 = *(v1 + 32);
          v23 = *(v1 + 48);
          v24 = *(v1 + 80);
          v62 = *(v1 + 64);
          v63 = v24;
          v60 = v22;
          v61 = v23;
          v25 = *(v1 + 96);
          v26 = *(v1 + 112);
          v27 = *(v1 + 144);
          v66 = *(v1 + 128);
          v67 = v27;
          v64 = v25;
          v65 = v26;
          v18 = v20 + 1;
          memmove(&__dst, v1, 0xA0uLL);
          if (sub_24AEF69E0(&__dst) != 1)
          {
            break;
          }

          v1 += 160;
          ++v20;
          if (v17 == v18)
          {
            goto LABEL_29;
          }
        }

        v54 = v64;
        v55 = v65;
        v56 = v66;
        v57 = v67;
        v50 = v60;
        v51 = v61;
        v52 = v62;
        v53 = v63;
        v48 = v58;
        v49 = v59;
        sub_24AEF6984(&v48, &v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_24AEF543C(0, *(v19 + 2) + 1, 1, v19);
        }

        v29 = *(v19 + 2);
        v28 = *(v19 + 3);
        if (v29 >= v28 >> 1)
        {
          v19 = sub_24AEF543C((v28 > 1), v29 + 1, 1, v19);
        }

        v42 = v62;
        v43 = v63;
        v40 = v60;
        v41 = v61;
        v46 = v66;
        v47 = v67;
        v44 = v64;
        v45 = v65;
        v38 = v58;
        v39 = v59;
        *(v19 + 2) = v29 + 1;
        v30 = &v19[160 * v29];
        v31 = v39;
        *(v30 + 2) = v38;
        *(v30 + 3) = v31;
        v32 = v40;
        v33 = v41;
        v34 = v43;
        *(v30 + 6) = v42;
        *(v30 + 7) = v34;
        *(v30 + 4) = v32;
        *(v30 + 5) = v33;
        v35 = v44;
        v36 = v45;
        v37 = v47;
        *(v30 + 10) = v46;
        *(v30 + 11) = v37;
        *(v30 + 8) = v35;
        *(v30 + 9) = v36;
      }

      while (v17 - 1 != v20);
      goto LABEL_29;
    }

LABEL_28:
    v19 = MEMORY[0x277D84F90];
LABEL_29:

    return v19;
  }

LABEL_26:
  v2 = sub_24AF3585C();
  if (!v2)
  {
    goto LABEL_27;
  }

LABEL_3:
  *&v38 = MEMORY[0x277D84F90];
  result = sub_24AEF6168(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v38;
    if ((v1 & 0xC000000000000001) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    for (i = MEMORY[0x24C2359A0](v4, v1); ; i = *(v1 + 8 * v4 + 32))
    {
      sub_24AF329AC(i, &v58);
      v54 = v64;
      v55 = v65;
      v56 = v66;
      v57 = v67;
      v50 = v60;
      v51 = v61;
      v52 = v62;
      v53 = v63;
      v48 = v58;
      v49 = v59;
      nullsub_1();
      v74 = v54;
      v75 = v55;
      v76 = v56;
      v77 = v57;
      v70 = v50;
      v71 = v51;
      v72 = v52;
      v73 = v53;
      __dst = v48;
      v69 = v49;
      *&v38 = v5;
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_24AEF6168((v7 > 1), v8 + 1, 1);
        v5 = v38;
      }

      *(v5 + 16) = v8 + 1;
      v9 = (v5 + 160 * v8);
      v10 = v69;
      v9[2] = __dst;
      v9[3] = v10;
      v11 = v70;
      v12 = v71;
      v13 = v73;
      v9[6] = v72;
      v9[7] = v13;
      v9[4] = v11;
      v9[5] = v12;
      v14 = v74;
      v15 = v75;
      v16 = v77;
      v9[10] = v76;
      v9[11] = v16;
      v9[8] = v14;
      v9[9] = v15;
      if (v2 - 1 == v4)
      {
        break;
      }

      ++v4;
      if ((v1 & 0xC000000000000001) != 0)
      {
        goto LABEL_5;
      }

LABEL_6:
      ;
    }

    v17 = *(v5 + 16);
    if (v17)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

  __break(1u);
  return result;
}