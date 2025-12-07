void sub_25DD589E4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_25DD96814() - 8);
  v11 = *(v10 + 80);
  if (*(v10 + 84))
  {
    v12 = *(v10 + 64);
  }

  else
  {
    v12 = *(v10 + 64) + 1;
  }

  v13 = v12 + ((v11 + 8) & ~v11);
  if (v13 <= 8)
  {
    v13 = 8;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v9;
  }

  v15 = v11 | 7;
  v16 = *(v8 + 64) + (v11 | 7);
  v17 = (v16 & ~v15) + (((((v13 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v14 >= a3)
  {
    v20 = 0;
    v21 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v16 & ~v15) + (((((v13 & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == -32)
    {
      v18 = a3 - v14 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_22:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v9 < 0x7FFFFFFF)
      {
        v25 = v13 + 1;
        v26 = ~v15;
        v27 = a1 + v16;
        v28 = (v27 & v26);
        if ((a2 & 0x80000000) != 0)
        {
          v29 = (((((v25 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8;
          if (v29 != -32)
          {
            bzero((v27 & v26), (v29 + 32));
            *v28 = a2 & 0x7FFFFFFF;
          }
        }

        else
        {
          *((v28 + v25 + 7) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
        }
      }

      else
      {
        v24 = *(v30 + 56);

        v24(a1, a2, v9, v7);
      }

      return;
    }
  }

  if ((v16 & ~v15) + (((((v13 & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == -32)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if ((v16 & ~v15) + (((((v13 & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != -32)
  {
    v23 = ~v14 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

uint64_t sub_25DD58CBC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25DD58D1C(uint64_t a1)
{
  result = type metadata accessor for MultipartParser.StateMachine(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25DD58DC8(uint64_t a1)
{
  type metadata accessor for MultipartParser.StateMachine.State(319);
  if (v1 <= 0x3F)
  {
    sub_25DD58F08(319, &qword_27FCC2690, MEMORY[0x277D83F98]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25DD58E78(uint64_t a1)
{
  sub_25DD58F08(319, &qword_27FCC2698, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_25DD58F5C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25DD58F08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84B78]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25DD58F5C(uint64_t a1)
{
  if (!qword_27FCC26A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2500, &qword_25DD9CE70);
    type metadata accessor for MultipartParser.StateMachine.State.PartState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FCC26A0);
    }
  }
}

uint64_t sub_25DD59000(uint64_t a1)
{
  v1 = sub_25DD96814();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for URIEncodedNode.InsertionError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for URIEncodedNode.InsertionError(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_25DD591F8(uint64_t a1)
{
  sub_25DD96814();
  if (v1 <= 0x3F)
  {
    sub_25DD58F08(319, &qword_27FCC2690, MEMORY[0x277D83F98]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for MultipartParser.StateMachine.ReceivedChunkAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 6)
  {
    v8 = v7 - 5;
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

uint64_t storeEnumTagSinglePayload for MultipartParser.StateMachine.ReceivedChunkAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
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

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_25DD593EC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_25DD59400(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

uint64_t sub_25DD59420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2660, qword_25DD9CE78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD594A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  result = type metadata accessor for MultipartFramesToBytesSequence(0, a4, a5, v11);
  v13 = (a6 + *(result + 36));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t sub_25DD59548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v20 - v13;
  (*(v7 + 16))(v10, v3, v6);
  sub_25DD96DF4();
  v15 = (v3 + *(a1 + 36));
  v16 = *v15;
  v17 = v15[1];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return sub_25DD596F0(v14, v16, v17, v6, AssociatedTypeWitness, v11, AssociatedConformanceWitness, a2);
}

uint64_t sub_25DD596F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a5 - 8);
  (*(v16 + 16))(a8, a1, a5);
  v17 = sub_25DD3957C(a2, a3);

  v18 = (2 * v17[2]) | 1;
  (*(v16 + 8))(a1, a5);
  v21[0] = a4;
  v21[1] = a5;
  v21[2] = a6;
  v21[3] = a7;
  result = type metadata accessor for MultipartFramesToBytesSequence.Iterator(0, v21);
  v20 = a8 + *(result + 52);
  *v20 = v17;
  *(v20 + 8) = v17 + 4;
  *(v20 + 16) = 0;
  *(v20 + 24) = v18;
  *(v20 + 32) = 0;
  *(v20 + 40) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_25DD59828@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_25DD3957C(a1, a2);

  v6 = (2 * v4[2]) | 1;
  *a3 = v4;
  *(a3 + 8) = v4 + 4;
  *(a3 + 16) = 0;
  *(a3 + 24) = v6;
  *(a3 + 32) = 0;
  *(a3 + 40) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_25DD5988C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25DD598AC, 0, 0);
}

uint64_t sub_25DD598AC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = *(v2 + 16);
  *(v3 + 24) = *(v2 + 24);
  *(v3 + 40) = *(v2 + 40);
  *(v3 + 48) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25DD5998C;

  return sub_25DD59C30(&unk_25DD9D310, v3);
}

uint64_t sub_25DD5998C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 48) = v4;

  if (v4)
  {

    return MEMORY[0x2822009F8](sub_25DD59B14, 0, 0);
  }

  else
  {

    v11 = *(v10 + 8);

    return v11(a1, a2, a3, a4);
  }
}

uint64_t sub_25DD59B14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD59B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_25DD1BF14;

  return MEMORY[0x282200308](a1, a4, a6);
}

uint64_t sub_25DD59C30(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_25DD969E4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_25DD96A34();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_25DD96814();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v7 = type metadata accessor for MultipartSerializer.StateMachine.Event(0);
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26C0, &qword_25DD9D320);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD59E4C, 0, 0);
}

uint64_t sub_25DD59E4C()
{
  v1 = v0[4];
  if (*(v1 + 32) > 2u)
  {
LABEL_4:
    v16 = (v0[2] + *v0[2]);
    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_25DD5A068;
    v3 = v0[18];

    return v16(v3);
  }

  if (*(v1 + 32))
  {
    if (*(v1 + 32) == 1)
    {
      goto LABEL_4;
    }

    v10 = 0;
    v12 = 0;
    v14 = 0;
  }

  else
  {
    *(v1 + 32) = 1;
    sub_25DD0151C();

    sub_25DD5B050(v5);
    v6 = *(v1 + 8);
    v7 = *(v1 + 16);
    v8 = *(v1 + 24);
    v9 = swift_unknownObjectRetain();
    sub_25DD2EBA0(v9, v6, v7, v8);
    v10 = sub_25DD5A9A8(v1);
    v12 = v11;
    v14 = v13;
  }

  v15 = v0[1];

  return v15(v10, v12, 0, v14);
}

uint64_t sub_25DD5A068()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_25DD5A808;
  }

  else
  {
    v2 = sub_25DD5A17C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_25DD5A17C()
{
  v82 = v0;
  v1 = v0;
  v2 = sub_25DD5AA5C(v0[18]);
  if (!v2)
  {
    sub_25DD114CC(v0[18], &qword_27FCC26C0, &qword_25DD9D320);
    v6 = 0;
    v7 = 0;
    v8 = 0;
LABEL_28:

    v65 = v1[1];

    v65(v6, v7, 0, v8);
    return;
  }

  v3 = v2;
  if (v2 == 1)
  {
    v4 = v1[18];
    sub_25DD5DB7C();
    swift_allocError();
    swift_willThrow();
    sub_25DD114CC(v4, &qword_27FCC26C0, &qword_25DD9D320);

    v5 = v1[1];

    v5();
    return;
  }

  v9 = *(v2 + 16);
  v80 = v1;
  if (!v9)
  {
LABEL_27:
    v61 = v80[18];
    v62 = v80[4];
    sub_25DD2D9AC(v3);
    v6 = sub_25DD5A9A8(v62);
    v7 = v63;
    v8 = v64;
    v1 = v80;
    sub_25DD114CC(v61, &qword_27FCC26C0, &qword_25DD9D320);
    goto LABEL_28;
  }

  v10 = 0;
  v11 = v1[16];
  v73 = v1[17];
  v12 = v1[12];
  v13 = v1[4];
  v75 = v2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v71 = (v12 + 16);
  v72 = (v12 + 32);
  v66 = v1[9];
  v68 = (v12 + 8);
  v14 = v1[20];
  v79 = v13;
  v67 = v2;
  v69 = v11;
  v70 = *(v2 + 16);
  v76 = (v1[6] + 8);
  while (1)
  {
    if (v10 >= *(v3 + 16))
    {
      __break(1u);
      return;
    }

    sub_25DD5DBD0(v75 + *(v11 + 72) * v10, v1[17]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_25DD0151C();

        sub_25DD5B050(v19);
        v20 = *(v13 + 8);
        v21 = *(v79 + 16);
        v22 = *(v79 + 24);
        v23 = swift_unknownObjectRetain();
        v1 = v80;
        v24 = v21;
        v13 = v79;
        sub_25DD2EBA0(v23, v20, v24, v22);
      }

      else
      {
        sub_25DD0151C();

        sub_25DD5B050(v15);
        sub_25DD01534();

        sub_25DD5B050(v16);

        sub_25DD5B050(v17);
      }

      goto LABEL_10;
    }

    sub_25DD01534();

    sub_25DD5B050(v49);
    sub_25DD0151C();

    sub_25DD5B050(v50);
    v51 = *(v13 + 8);
    v52 = *(v79 + 16);
    v53 = *(v79 + 24);
    v54 = swift_unknownObjectRetain();
    v1 = v80;
    v55 = v51;
    v56 = v52;
    v13 = v79;
    v57 = v53;
LABEL_24:
    sub_25DD2EBA0(v54, v55, v56, v57);
LABEL_10:
    if (++v10 == v9)
    {
      goto LABEL_27;
    }
  }

  if (EnumCaseMultiPayload)
  {
    v54 = *v1[17];
    v55 = v73[1];
    v56 = v73[2];
    v57 = v73[3];
    goto LABEL_24;
  }

  v74 = v10;
  v26 = v1[13];
  v25 = v1[14];
  v27 = v1[11];
  (*v72)(v25, v1[17], v27);
  sub_25DD01534();

  sub_25DD5B050(v28);
  (*v71)(v26, v25, v27);
  sub_25DD5E640(&qword_27FCC2538, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9C0]);
  v81 = sub_25DD96CC4();
  sub_25DD5BE38(&v81);
  if (!v14)
  {
    v29 = *(v81 + 16);
    if (v29)
    {
      v30 = v81 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
      v77 = *(v66 + 16);
      v78 = *(v66 + 72);
      do
      {
        v31 = v1[10];
        v34 = v1 + 7;
        v33 = v1[7];
        v32 = v34[1];
        v35 = v80[5];
        v36 = v77(v31, v30, v32);
        v37 = MEMORY[0x25F8A3030](v36);
        v38 = MEMORY[0x25F8A2FB0](v37);
        v40 = v39;
        v41 = v33;
        v42 = v35;
        v13 = v79;
        v1 = v80;
        (*v76)(v41, v42);
        sub_25DD3BF7C(v38, v40);
        sub_25DD0154C();

        v44 = sub_25DD5B050(v43);
        v45 = MEMORY[0x25F8A3040](v44);
        v47 = v46;
        (*(v66 + 8))(v31, v32);
        sub_25DD3BF7C(v45, v47);

        sub_25DD5B050(v48);
        v30 += v78;
        --v29;
      }

      while (v29);

      v3 = v67;
    }

    else
    {
    }

    v58 = v1[14];
    v59 = v1[11];

    sub_25DD5B050(v60);
    (*v68)(v58, v59);
    v14 = 0;
    v11 = v69;
    v9 = v70;
    v10 = v74;
    goto LABEL_10;
  }

  MEMORY[0x25F8A43F0](v14);
}

uint64_t sub_25DD5A808()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD5A8B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD2E184;

  return sub_25DD5988C(a2);
}

uint64_t sub_25DD5A948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25DD59548(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_25DD5A9A8(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_25DD5DFDC(0, *(v4 + 16));
  }

  else
  {
    *v2 = sub_25DD00E5C(0, *(v4 + 24) >> 1);
  }

  return v1;
}

uint64_t sub_25DD5AA28()
{
  if (*v0 > 2u)
  {
    return 2;
  }

  if (*v0)
  {
    if (*v0 == 1)
    {
      return 2;
    }

    return 0;
  }

  else
  {
    result = 1;
    *v0 = 1;
  }

  return result;
}

uint64_t sub_25DD5AA5C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26D0, &qword_25DD9D328);
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - v4;
  v6 = sub_25DD96814();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = *v1;
  if (v13 <= 2 && v13 != 1)
  {
    v1 = 0;
    if (v13 == 2)
    {
      return v1;
    }

    __break(1u);
  }

  v14 = &v5[*(v3 + 48)];
  *v5 = v13;
  sub_25DD5DC34(a1, v14);
  v15 = type metadata accessor for MultipartFrame(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    *v1 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26D8, qword_25DD9D330);
    type metadata accessor for MultipartSerializer.StateMachine.Event(0);
    v1 = swift_allocObject();
    *(v1 + 1) = xmmword_25DD999D0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    return v1;
  }

  if (v13 == 4 || v13 == 3)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      *v1 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26D8, qword_25DD9D330);
      v18 = *(type metadata accessor for MultipartSerializer.StateMachine.Event(0) - 8);
      v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v1 = swift_allocObject();
      *(v1 + 1) = xmmword_25DD98100;
      v20 = &v1[v19];
      *v20 = *v14;
      *(v20 + 2) = v17;
      *(v20 + 3) = v16;
    }

    else
    {
      v21 = *(v7 + 32);
      v21(v12, v14, v6);
      *v1 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26D8, qword_25DD9D330);
      v22 = *(type metadata accessor for MultipartSerializer.StateMachine.Event(0) - 8);
      v23 = *(v22 + 72);
      v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v1 = swift_allocObject();
      *(v1 + 1) = xmmword_25DD999D0;
      swift_storeEnumTagMultiPayload();
      v21(&v1[v24 + v23], v12, v6);
    }

    swift_storeEnumTagMultiPayload();
    return v1;
  }

  if (v13 == 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_25DD5ED80(v14, type metadata accessor for MultipartFrame);
      *v1 = 2;
      return 1;
    }

    else
    {
      (*(v7 + 32))(v10, v14, v6);
      *v1 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26D8, qword_25DD9D330);
      v25 = *(type metadata accessor for MultipartSerializer.StateMachine.Event(0) - 8);
      v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v1 = swift_allocObject();
      *(v1 + 1) = xmmword_25DD98100;
      (*(v7 + 16))(&v1[v26], v10, v6);
      swift_storeEnumTagMultiPayload();
      (*(v7 + 8))(v10, v6);
    }

    return v1;
  }

  result = sub_25DD975C4();
  __break(1u);
  return result;
}

char *sub_25DD5B050(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_25DD2ECB4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25DD5B13C()
{
  v0 = sub_25DD969E4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v21 - v6;
  v8 = MEMORY[0x25F8A3030](v5);
  v9 = MEMORY[0x25F8A2FB0](v8);
  v11 = v10;
  v12 = *(v1 + 8);
  v13 = v12(v7, v0);
  v14 = MEMORY[0x25F8A3030](v13);
  v15 = MEMORY[0x25F8A2FB0](v14);
  v17 = v16;
  v12(v4, v0);
  if (v9 == v15 && v11 == v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_25DD975D4();
  }

  return v19 & 1;
}

uint64_t sub_25DD5B2D8(uint64_t a1)
{
  v2 = sub_25DD96814();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MultipartSerializer.StateMachine.Event(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25DD5DBD0(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v5, v8, v2);
      MEMORY[0x25F8A3F90](0);
      sub_25DD5E640(&qword_27FCC22E8, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9B0]);
      sub_25DD96AC4();
      return (*(v3 + 8))(v5, v2);
    }

    v12 = v8[1];
    v14 = v8[2];
    v13 = v8[3];
    MEMORY[0x25F8A3F90](1);
    v15 = v13 >> 1;
    result = v15 - v14;
    if (__OFSUB__(v15, v14))
    {
      __break(1u);
    }

    else
    {
      result = MEMORY[0x25F8A3F90](result);
      v16 = __OFSUB__(v15, v14);
      v17 = v15 - v14;
      if (!v17)
      {
        return swift_unknownObjectRelease();
      }

      if (!((v17 < 0) ^ v16 | (v17 == 0)))
      {
        v18 = v12 + v14;
        do
        {
          ++v18;
          sub_25DD97984();
          --v17;
        }

        while (v17);
        return swift_unknownObjectRelease();
      }
    }

    __break(1u);
    return result;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v10 = 2;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  return MEMORY[0x25F8A3F90](v10);
}

uint64_t sub_25DD5B508()
{
  sub_25DD97964();
  sub_25DD5B2D8(v1);
  return sub_25DD979A4();
}

uint64_t sub_25DD5B54C(uint64_t a1)
{
  sub_25DD97964();
  sub_25DD5B2D8(v2);
  return sub_25DD979A4();
}

uint64_t sub_25DD5B588(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  return sub_25DD5B5C4(a1, a2);
}

uint64_t sub_25DD5B5C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2708, &qword_25DD9D818);
  MEMORY[0x28223BE20](v56);
  v9 = &v48 - v8;
  v10 = type metadata accessor for MultipartSerializer.StateMachine.Event(0);
  v11 = MEMORY[0x28223BE20](v10);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  MEMORY[0x28223BE20](v13);
  v20 = &v48 - v19;
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    return 0;
  }

  if (!v21 || a1 == a2)
  {
    return 1;
  }

  v52 = v18;
  v53 = v17;
  v50 = v7;
  v22 = 0;
  v23 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v57 = a2 + v23;
  v48 = v4;
  v49 = (v5 + 32);
  v51 = (v5 + 8);
  v58 = *(v16 + 72);
  v59 = a1 + v23;
  v24 = v56;
  v55 = v10;
  while (1)
  {
    v25 = v58 * v22;
    result = sub_25DD5DBD0(v59 + v58 * v22, v20);
    if (v22 == v21)
    {
      __break(1u);
      goto LABEL_49;
    }

    sub_25DD5DBD0(v57 + v25, v15);
    v27 = &v9[*(v24 + 48)];
    sub_25DD5DBD0(v20, v9);
    sub_25DD5DBD0(v15, v27);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_45;
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_45;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_45;
      }

      goto LABEL_6;
    }

    if (EnumCaseMultiPayload)
    {
      break;
    }

    v29 = v4;
    v30 = v52;
    sub_25DD5DBD0(v9, v52);
    if (swift_getEnumCaseMultiPayload())
    {
      (*v51)(v30, v29);
      goto LABEL_45;
    }

    v31 = v50;
    (*v49)(v50, v27, v29);
    LODWORD(v54) = MEMORY[0x25F8A2E10](v30, v31);
    v32 = *v51;
    v33 = v31;
    v24 = v56;
    (*v51)(v33, v29);
    v34 = v30;
    v4 = v29;
    v32(v34, v29);
    sub_25DD5ED80(v9, type metadata accessor for MultipartSerializer.StateMachine.Event);
    if ((v54 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_7:
    ++v22;
    sub_25DD5ED80(v15, type metadata accessor for MultipartSerializer.StateMachine.Event);
    sub_25DD5ED80(v20, type metadata accessor for MultipartSerializer.StateMachine.Event);
    if (v22 == v21)
    {
      return 1;
    }
  }

  v35 = v53;
  sub_25DD5DBD0(v9, v53);
  v36 = v35[1];
  v54 = *v35;
  v37 = v35[2];
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    swift_unknownObjectRelease();
LABEL_45:
    sub_25DD114CC(v9, &qword_27FCC2708, &qword_25DD9D818);
LABEL_46:
    sub_25DD5ED80(v15, type metadata accessor for MultipartSerializer.StateMachine.Event);
    sub_25DD5ED80(v20, type metadata accessor for MultipartSerializer.StateMachine.Event);
    return 0;
  }

  v38 = v35[3] >> 1;
  v39 = v38 - v37;
  if (__OFSUB__(v38, v37))
  {
    goto LABEL_51;
  }

  v40 = *(v27 + 2);
  v41 = *(v27 + 3) >> 1;
  v42 = v41 - v40;
  if (__OFSUB__(v41, v40))
  {
    goto LABEL_52;
  }

  if (v39 != v42)
  {
    goto LABEL_42;
  }

  if (!v39 || (v43 = *(v27 + 1) + v40, v36 + v37 == v43) || v37 == v38)
  {
LABEL_40:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v4 = v48;
    v24 = v56;
LABEL_6:
    sub_25DD5ED80(v9, type metadata accessor for MultipartSerializer.StateMachine.Event);
    goto LABEL_7;
  }

  if (v37 >= v38)
  {
    goto LABEL_53;
  }

  if (v40 == v41)
  {
LABEL_42:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25DD5ED80(v9, type metadata accessor for MultipartSerializer.StateMachine.Event);
    goto LABEL_46;
  }

  v44 = 0;
  if (v40 <= v41)
  {
    v45 = *(v27 + 3) >> 1;
  }

  else
  {
    v45 = *(v27 + 2);
  }

  v46 = v45 - v40;
  while (v46 != v44)
  {
    if (*(v36 + v37 + v44) != *(v43 + v44))
    {
      goto LABEL_42;
    }

    if (~v37 + v38 == v44)
    {
      goto LABEL_40;
    }

    v47 = v37 + v44 + 1;
    if (v47 < v37 || v47 >= v38)
    {
      goto LABEL_50;
    }

    if (v42 == ++v44)
    {
      goto LABEL_42;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_25DD5BB9C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x25F8A3F90](0);
  }

  if (a2 == 1)
  {
    MEMORY[0x25F8A3F90](2);
    return MEMORY[0x25F8A3F90](0);
  }

  MEMORY[0x25F8A3F90](1);

  return sub_25DD5DCA4(a1, a2);
}

uint64_t sub_25DD5BC08(uint64_t a1)
{
  sub_25DD97964();
  if (a1)
  {
    if (a1 != 1)
    {
      MEMORY[0x25F8A3F90](1);
      sub_25DD5DCA4(v3, a1);
      return sub_25DD979A4();
    }

    MEMORY[0x25F8A3F90](2);
  }

  MEMORY[0x25F8A3F90](0);
  return sub_25DD979A4();
}

uint64_t sub_25DD5BC80()
{
  v1 = *v0;
  sub_25DD97964();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x25F8A3F90](1);
      sub_25DD5DCA4(v3, v1);
      return sub_25DD979A4();
    }

    MEMORY[0x25F8A3F90](2);
  }

  MEMORY[0x25F8A3F90](0);
  return sub_25DD979A4();
}

uint64_t sub_25DD5BCF8(uint64_t a1)
{
  v3 = *v1;
  if (!*v1)
  {
    return MEMORY[0x25F8A3F90](0);
  }

  if (v3 == 1)
  {
    MEMORY[0x25F8A3F90](2);
    return MEMORY[0x25F8A3F90](0);
  }

  MEMORY[0x25F8A3F90](1);

  return sub_25DD5DCA4(a1, v3);
}

uint64_t sub_25DD5BD84(uint64_t a1)
{
  v2 = *v1;
  sub_25DD97964();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x25F8A3F90](1);
      sub_25DD5DCA4(v4, v2);
      return sub_25DD979A4();
    }

    MEMORY[0x25F8A3F90](2);
  }

  MEMORY[0x25F8A3F90](0);
  return sub_25DD979A4();
}

uint64_t sub_25DD5BDF8(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return sub_25DD5B5C4(v2, v3);
}

uint64_t sub_25DD5BE38(void *a1)
{
  v2 = *(sub_25DD96A34() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25DD40E08(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25DD5BEE0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25DD5BEE0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25DD97354();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25DD96A34();
        v6 = sub_25DD96D64();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25DD96A34() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25DD5C454(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25DD5C00C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25DD5C00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v71 = sub_25DD969E4();
  v8 = *(v71 - 8);
  v9 = MEMORY[0x28223BE20](v71);
  v70 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = &v52 - v11;
  v12 = sub_25DD96A34();
  v13 = MEMORY[0x28223BE20](v12);
  v62 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v75 = &v52 - v16;
  result = MEMORY[0x28223BE20](v15);
  v20 = &v52 - v18;
  v54 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v23 = *(v19 + 16);
    v22 = v19 + 16;
    v24 = *(v22 + 56);
    v64 = (v8 + 8);
    v65 = v23;
    v63 = (v22 - 8);
    v67 = v22;
    v25 = v21 + v24 * (a3 - 1);
    v59 = -v24;
    v60 = (v22 + 16);
    v26 = a1 - a3;
    v61 = v21;
    v53 = v24;
    v27 = v21 + v24 * a3;
    v68 = v12;
    v66 = &v52 - v18;
LABEL_6:
    v57 = v25;
    v58 = a3;
    v55 = v27;
    v56 = v26;
    v29 = v26;
    while (1)
    {
      v72 = v29;
      v30 = v65;
      v65(v20, v27, v12);
      v31 = v30(v75, v25, v12);
      v32 = v69;
      v33 = MEMORY[0x25F8A3030](v31);
      v34 = MEMORY[0x25F8A2FB0](v33);
      v73 = v35;
      v74 = v34;
      v36 = *v64;
      v37 = v71;
      v38 = (*v64)(v32, v71);
      v39 = v70;
      v40 = MEMORY[0x25F8A3030](v38);
      v41 = MEMORY[0x25F8A2FB0](v40);
      v43 = v42;
      v44 = v39;
      v45 = v73;
      v36(v44, v37);
      if (v74 == v41 && v45 == v43)
      {

        v28 = *v63;
        v12 = v68;
        (*v63)(v75, v68);
        v20 = v66;
        result = (v28)(v66, v12);
LABEL_5:
        a3 = v58 + 1;
        v25 = v57 + v53;
        v26 = v56 - 1;
        v27 = v55 + v53;
        if (v58 + 1 == v54)
        {
          return result;
        }

        goto LABEL_6;
      }

      v46 = sub_25DD975D4();

      v47 = *v63;
      v12 = v68;
      (*v63)(v75, v68);
      v20 = v66;
      result = (v47)(v66, v12);
      v48 = v72;
      if ((v46 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v61)
      {
        break;
      }

      v49 = *v60;
      v50 = v62;
      (*v60)(v62, v27, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = (v49)(v25, v50, v12);
      v25 += v59;
      v27 += v59;
      v51 = __CFADD__(v48, 1);
      v29 = v48 + 1;
      if (v51)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25DD5C454(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v162 = a1;
  v186 = sub_25DD969E4();
  v8 = *(v186 - 8);
  v9 = MEMORY[0x28223BE20](v186);
  v183 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v182 = &v157 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v172 = &v157 - v14;
  MEMORY[0x28223BE20](v13);
  v171 = &v157 - v15;
  v189 = sub_25DD96A34();
  v173 = *(v189 - 8);
  v16 = MEMORY[0x28223BE20](v189);
  v166 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v180 = &v157 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v193 = &v157 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v192 = &v157 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v176 = &v157 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v175 = &v157 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v159 = &v157 - v29;
  result = MEMORY[0x28223BE20](v28);
  v158 = &v157 - v31;
  v32 = a3[1];
  v167 = a3;
  if (v32 < 1)
  {
    v34 = MEMORY[0x277D84F90];
LABEL_103:
    a4 = *v162;
    if (!*v162)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_105;
  }

  v33 = 0;
  v187 = v173 + 16;
  v188 = (v173 + 8);
  v184 = (v173 + 32);
  v185 = (v8 + 8);
  v34 = MEMORY[0x277D84F90];
  v161 = a4;
LABEL_4:
  v174 = v34;
  v165 = v33;
  if (v33 + 1 >= v32)
  {
    v47 = v33 + 1;
  }

  else
  {
    v177 = v32;
    v35 = *a3;
    v36 = *(v173 + 72);
    v37 = *a3 + v36 * (v33 + 1);
    v38 = *(v173 + 16);
    v39 = v158;
    v191 = v37;
    v40 = v189;
    v38(v158);
    v190 = v35;
    v41 = v35 + v36 * v33;
    v42 = v159;
    v178 = v38;
    (v38)(v159, v41, v40);
    LODWORD(v179) = sub_25DD5B13C();
    if (v5)
    {
      v155 = v40;
      v156 = *v188;
      (*v188)(v42, v155);
      v156(v39, v155);
    }

    v160 = 0;
    v43 = *v188;
    (*v188)(v42, v40);
    v170 = v43;
    result = (v43)(v39, v40);
    v44 = v33 + 2;
    v45 = v191;
    v46 = v190 + v36 * (v33 + 2);
    v47 = v177;
    v48 = v36;
    v181 = v36;
    while (v47 != v44)
    {
      v51 = v178;
      (v178)(v175, v46, v40);
      v191 = v45;
      v52 = v51(v176, v45, v40);
      v53 = v171;
      v54 = MEMORY[0x25F8A3030](v52);
      v190 = MEMORY[0x25F8A2FB0](v54);
      v56 = v55;
      v57 = *v185;
      v58 = v53;
      v59 = v186;
      v60 = (*v185)(v58, v186);
      v61 = v172;
      v62 = MEMORY[0x25F8A3030](v60);
      v63 = MEMORY[0x25F8A2FB0](v62);
      v65 = v64;
      v57(v61, v59);
      if (v190 == v63 && v56 == v65)
      {
        v49 = 0;
      }

      else
      {
        v49 = sub_25DD975D4();
      }

      v40 = v189;
      v50 = v170;
      (v170)(v176, v189);
      result = v50(v175, v40);
      ++v44;
      v48 = v181;
      v46 += v181;
      v45 = &v181[v191];
      v34 = v174;
      v47 = v177;
      if ((v179 ^ v49))
      {
        v47 = v44 - 1;
        break;
      }
    }

    v5 = v160;
    a3 = v167;
    a4 = v161;
    if (v179)
    {
      if (v47 < v165)
      {
        goto LABEL_136;
      }

      if (v165 < v47)
      {
        v66 = v48 * (v47 - 1);
        v67 = v47 * v48;
        v177 = v47;
        v68 = v47;
        v69 = v165;
        v70 = v165 * v48;
        do
        {
          if (v69 != --v68)
          {
            v72 = v5;
            v73 = *v167;
            if (!*v167)
            {
              goto LABEL_140;
            }

            v191 = *v184;
            (v191)(v166, v73 + v70, v189);
            if (v70 < v66 || v73 + v70 >= (v73 + v67))
            {
              v71 = v189;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v71 = v189;
              if (v70 != v66)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = (v191)(v73 + v66, v166, v71);
            v5 = v72;
            v34 = v174;
            v48 = v181;
          }

          ++v69;
          v66 -= v48;
          v67 -= v48;
          v70 += v48;
        }

        while (v69 < v68);
        a3 = v167;
        a4 = v161;
        v47 = v177;
      }
    }
  }

  v74 = a3[1];
  if (v47 >= v74)
  {
    goto LABEL_38;
  }

  if (__OFSUB__(v47, v165))
  {
    goto LABEL_133;
  }

  if (v47 - v165 >= a4)
  {
LABEL_38:
    v33 = v47;
    goto LABEL_39;
  }

  if (__OFADD__(v165, a4))
  {
    goto LABEL_134;
  }

  if (v165 + a4 >= v74)
  {
    v75 = a3[1];
  }

  else
  {
    v75 = v165 + a4;
  }

  a4 = v189;
  if (v75 < v165)
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    result = sub_25DD06A4C(v34);
    v34 = result;
LABEL_105:
    v194 = v34;
    v151 = *(v34 + 2);
    if (v151 >= 2)
    {
      while (1)
      {
        v152 = *a3;
        if (!*a3)
        {
          goto LABEL_141;
        }

        a3 = *&v34[16 * v151];
        v153 = *&v34[16 * v151 + 24];
        sub_25DD5D210(v152 + *(v173 + 72) * a3, v152 + *(v173 + 72) * *&v34[16 * v151 + 16], (v152 + *(v173 + 72) * v153), a4);
        if (v5)
        {
        }

        if (v153 < a3)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_25DD06A4C(v34);
        }

        if (v151 - 2 >= *(v34 + 2))
        {
          goto LABEL_131;
        }

        v154 = &v34[16 * v151];
        *v154 = a3;
        *(v154 + 1) = v153;
        v194 = v34;
        result = sub_25DD069C0(v151 - 1);
        v34 = v194;
        v151 = *(v194 + 2);
        a3 = v167;
        if (v151 <= 1)
        {
        }
      }
    }
  }

  if (v47 == v75)
  {
    goto LABEL_38;
  }

  v160 = v5;
  v121 = *a3;
  v122 = *(v173 + 72);
  v181 = *(v173 + 16);
  v123 = (v121 + v122 * (v47 - 1));
  v178 = -v122;
  v124 = v165 - v47;
  v179 = v121;
  v163 = v122;
  v125 = v121 + v47 * v122;
  v164 = v75;
LABEL_93:
  v177 = v47;
  v168 = v125;
  v169 = v124;
  v127 = v124;
  v170 = v123;
  while (1)
  {
    v190 = v127;
    v128 = v181;
    (v181)(v192, v125, a4);
    v129 = v128(v193, v123, a4);
    v130 = v182;
    v131 = MEMORY[0x25F8A3030](v129);
    v132 = MEMORY[0x25F8A2FB0](v131);
    v191 = v133;
    v134 = *v185;
    v135 = v130;
    v136 = v186;
    v137 = (*v185)(v135, v186);
    v138 = v183;
    v139 = MEMORY[0x25F8A3030](v137);
    v140 = MEMORY[0x25F8A2FB0](v139);
    v142 = v141;
    v143 = v136;
    v144 = v191;
    v134(v138, v143);
    if (v132 == v140 && v144 == v142)
    {

      a4 = v189;
      v126 = *v188;
      (*v188)(v193, v189);
      v126(v192, a4);
LABEL_92:
      v47 = v177 + 1;
      v123 = &v170[v163];
      v124 = v169 - 1;
      v125 = v168 + v163;
      v33 = v164;
      if (v177 + 1 != v164)
      {
        goto LABEL_93;
      }

      v5 = v160;
      a3 = v167;
      v34 = v174;
LABEL_39:
      if (v33 < v165)
      {
        goto LABEL_132;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25DD050F0(0, *(v34 + 2) + 1, 1, v34);
        v34 = result;
      }

      a4 = *(v34 + 2);
      v76 = *(v34 + 3);
      v77 = a4 + 1;
      if (a4 >= v76 >> 1)
      {
        result = sub_25DD050F0((v76 > 1), a4 + 1, 1, v34);
        v34 = result;
      }

      *(v34 + 2) = v77;
      v78 = &v34[16 * a4];
      *(v78 + 4) = v165;
      *(v78 + 5) = v33;
      if (!*v162)
      {
        goto LABEL_142;
      }

      if (a4)
      {
        v79 = *v162;
        while (1)
        {
          v80 = v77 - 1;
          if (v77 >= 4)
          {
            break;
          }

          if (v77 == 3)
          {
            v81 = *(v34 + 4);
            v82 = *(v34 + 5);
            v91 = __OFSUB__(v82, v81);
            v83 = v82 - v81;
            v84 = v91;
LABEL_60:
            if (v84)
            {
              goto LABEL_121;
            }

            v97 = &v34[16 * v77];
            v99 = *v97;
            v98 = *(v97 + 1);
            v100 = __OFSUB__(v98, v99);
            v101 = v98 - v99;
            v102 = v100;
            if (v100)
            {
              goto LABEL_124;
            }

            v103 = &v34[16 * v80 + 32];
            v105 = *v103;
            v104 = *(v103 + 1);
            v91 = __OFSUB__(v104, v105);
            v106 = v104 - v105;
            if (v91)
            {
              goto LABEL_127;
            }

            if (__OFADD__(v101, v106))
            {
              goto LABEL_128;
            }

            if (v101 + v106 >= v83)
            {
              if (v83 < v106)
              {
                v80 = v77 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          v107 = &v34[16 * v77];
          v109 = *v107;
          v108 = *(v107 + 1);
          v91 = __OFSUB__(v108, v109);
          v101 = v108 - v109;
          v102 = v91;
LABEL_74:
          if (v102)
          {
            goto LABEL_123;
          }

          v110 = &v34[16 * v80];
          v112 = *(v110 + 4);
          v111 = *(v110 + 5);
          v91 = __OFSUB__(v111, v112);
          v113 = v111 - v112;
          if (v91)
          {
            goto LABEL_126;
          }

          if (v113 < v101)
          {
            goto LABEL_3;
          }

LABEL_81:
          a4 = v80 - 1;
          if (v80 - 1 >= v77)
          {
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
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
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
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          if (!*a3)
          {
            goto LABEL_139;
          }

          v118 = *&v34[16 * a4 + 32];
          v119 = *&v34[16 * v80 + 40];
          sub_25DD5D210(*a3 + *(v173 + 72) * v118, *a3 + *(v173 + 72) * *&v34[16 * v80 + 32], (*a3 + *(v173 + 72) * v119), v79);
          if (v5)
          {
          }

          if (v119 < v118)
          {
            goto LABEL_117;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_25DD06A4C(v34);
          }

          if (a4 >= *(v34 + 2))
          {
            goto LABEL_118;
          }

          v120 = &v34[16 * a4];
          *(v120 + 4) = v118;
          *(v120 + 5) = v119;
          v194 = v34;
          result = sub_25DD069C0(v80);
          v34 = v194;
          v77 = *(v194 + 2);
          if (v77 <= 1)
          {
            goto LABEL_3;
          }
        }

        v85 = &v34[16 * v77 + 32];
        v86 = *(v85 - 64);
        v87 = *(v85 - 56);
        v91 = __OFSUB__(v87, v86);
        v88 = v87 - v86;
        if (v91)
        {
          goto LABEL_119;
        }

        v90 = *(v85 - 48);
        v89 = *(v85 - 40);
        v91 = __OFSUB__(v89, v90);
        v83 = v89 - v90;
        v84 = v91;
        if (v91)
        {
          goto LABEL_120;
        }

        v92 = &v34[16 * v77];
        v94 = *v92;
        v93 = *(v92 + 1);
        v91 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v91)
        {
          goto LABEL_122;
        }

        v91 = __OFADD__(v83, v95);
        v96 = v83 + v95;
        if (v91)
        {
          goto LABEL_125;
        }

        if (v96 >= v88)
        {
          v114 = &v34[16 * v80 + 32];
          v116 = *v114;
          v115 = *(v114 + 1);
          v91 = __OFSUB__(v115, v116);
          v117 = v115 - v116;
          if (v91)
          {
            goto LABEL_129;
          }

          if (v83 < v117)
          {
            v80 = v77 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_60;
      }

LABEL_3:
      v32 = a3[1];
      a4 = v161;
      if (v33 >= v32)
      {
        goto LABEL_103;
      }

      goto LABEL_4;
    }

    v145 = sub_25DD975D4();

    a4 = v189;
    v146 = *v188;
    (*v188)(v193, v189);
    result = (v146)(v192, a4);
    if ((v145 & 1) == 0)
    {
      goto LABEL_92;
    }

    v147 = v190;
    if (!v179)
    {
      break;
    }

    v148 = *v184;
    v149 = v180;
    (*v184)(v180, v125, a4);
    swift_arrayInitWithTakeFrontToBack();
    v148(v123, v149, a4);
    v123 += v178;
    v125 += v178;
    v150 = __CFADD__(v147, 1);
    v127 = v147 + 1;
    if (v150)
    {
      goto LABEL_92;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_25DD5D210(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v90 = sub_25DD969E4();
  v8 = *(v90 - 8);
  v9 = MEMORY[0x28223BE20](v90);
  v82 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v81 = &v78 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v86 = &v78 - v14;
  MEMORY[0x28223BE20](v13);
  v85 = &v78 - v15;
  v16 = sub_25DD96A34();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v87 = &v78 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v92 = &v78 - v23;
  result = MEMORY[0x28223BE20](v22);
  v91 = &v78 - v25;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_68;
  }

  v28 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_69;
  }

  v29 = (a2 - a1) / v27;
  v98 = a1;
  v97 = a4;
  v89 = v16;
  if (v29 >= v28 / v27)
  {
    v31 = v28 / v27 * v27;
    if (a4 < a2 || a2 + v31 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v31 < 1)
    {
      v56 = a4 + v31;
    }

    else
    {
      v54 = -v27;
      v83 = (v17 + 16);
      v79 = (v17 + 8);
      v80 = (v8 + 8);
      v55 = (a4 + v31);
      v56 = a4 + v31;
      v93 = a1;
      v94 = a4;
      v92 = v54;
      do
      {
        v78 = v56;
        v57 = a2;
        a2 += v54;
        v95 = a2;
        v85 = v57;
        while (1)
        {
          if (v57 <= a1)
          {
            v98 = v57;
            v96 = v78;
            goto LABEL_66;
          }

          v58 = a3;
          v84 = v56;
          v91 = v55;
          v59 = *v83;
          v86 = &v55[v54];
          v59(v87);
          v60 = (v59)(v88, a2, v16);
          v61 = v81;
          v62 = MEMORY[0x25F8A3030](v60);
          v63 = MEMORY[0x25F8A2FB0](v62);
          v65 = v64;
          v66 = *v80;
          v67 = v90;
          v68 = (*v80)(v61, v90);
          v69 = v82;
          v70 = MEMORY[0x25F8A3030](v68);
          v71 = MEMORY[0x25F8A2FB0](v70);
          v73 = v72;
          v66(v69, v67);
          if (v63 == v71 && v65 == v73)
          {
            v74 = 0;
          }

          else
          {
            v74 = sub_25DD975D4();
          }

          a3 = &v92[v58];
          v75 = *v79;
          v16 = v89;
          (*v79)(v88, v89);
          v75(v87, v16);
          v76 = v94;
          a2 = v95;
          a1 = v93;
          if (v74)
          {
            break;
          }

          v77 = v86;
          v56 = v86;
          if (v58 < v91 || a3 >= v91)
          {
            swift_arrayInitWithTakeFrontToBack();
            v54 = v92;
          }

          else
          {
            v54 = v92;
            if (v58 != v91)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v55 = v56;
          v57 = v85;
          if (v77 <= v76)
          {
            a2 = v85;
            goto LABEL_65;
          }
        }

        if (v58 < v85 || a3 >= v85)
        {
          swift_arrayInitWithTakeFrontToBack();
          v56 = v84;
          v54 = v92;
        }

        else
        {
          v56 = v84;
          v54 = v92;
          if (v58 != v85)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v55 = v91;
      }

      while (v91 > v76);
    }

LABEL_65:
    v98 = a2;
    v96 = v56;
  }

  else
  {
    v30 = v29 * v27;
    if (a4 < a1 || a1 + v30 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v88 = (a4 + v30);
    v96 = a4 + v30;
    if (v30 >= 1 && a2 < a3)
    {
      v33 = *(v17 + 16);
      v81 = (v8 + 8);
      v82 = v33;
      v87 = (v17 + 16);
      v80 = (v17 + 8);
      v83 = v27;
      v84 = a3;
      do
      {
        v93 = a1;
        v95 = a2;
        v34 = v82;
        (v82)(v91, a2, v16);
        v94 = a4;
        v35 = v34(v92, a4, v16);
        v36 = v85;
        v37 = MEMORY[0x25F8A3030](v35);
        v38 = MEMORY[0x25F8A2FB0](v37);
        v40 = v39;
        v41 = *v81;
        v42 = v90;
        v43 = (*v81)(v36, v90);
        v44 = v86;
        v45 = MEMORY[0x25F8A3030](v43);
        v46 = MEMORY[0x25F8A2FB0](v45);
        v48 = v47;
        v41(v44, v42);
        if (v38 == v46 && v40 == v48)
        {

          v49 = *v80;
          v16 = v89;
          (*v80)(v92, v89);
          v49(v91, v16);
          v50 = v93;
        }

        else
        {
          v51 = sub_25DD975D4();

          v52 = *v80;
          v16 = v89;
          (*v80)(v92, v89);
          v52(v91, v16);
          v50 = v93;
          if (v51)
          {
            a4 = v94;
            v53 = v83;
            a2 = v83 + v95;
            if (v93 < v95 || v93 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v93 != v95)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            goto LABEL_35;
          }
        }

        v53 = v83;
        a4 = v83 + v94;
        if (v50 < v94 || v50 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v95;
        }

        else
        {
          a2 = v95;
          if (v50 != v94)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v97 = a4;
LABEL_35:
        a1 = v53 + v50;
        v98 = a1;
      }

      while (a4 < v88 && a2 < v84);
    }
  }

LABEL_66:
  sub_25DD409D0(&v98, &v97, &v96);
  return 1;
}

uint64_t sub_25DD5DA7C(uint64_t a1)
{
  v4 = v1[3];
  v6 = v1[5];
  v5 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25DD1BF14;

  return sub_25DD59B78(a1, v5, v7, v4, v8, v6);
}

uint64_t type metadata accessor for MultipartSerializer.StateMachine.Event(uint64_t a1)
{
  result = qword_27FCCA4F0;
  if (!qword_27FCCA4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25DD5DB7C()
{
  result = qword_27FCC26C8;
  if (!qword_27FCC26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC26C8);
  }

  return result;
}

uint64_t sub_25DD5DBD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartSerializer.StateMachine.Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD5DC34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26C0, &qword_25DD9D320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD5DCA4(uint64_t a1, uint64_t a2)
{
  v36 = sub_25DD96814();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MultipartSerializer.StateMachine.Event(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = *(a2 + 16);
  result = MEMORY[0x25F8A3F90](v12);
  if (!v12)
  {
    return result;
  }

  v14 = 0;
  v15 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v16 = *(v6 + 72);
  v17 = v15;
  v33 = (v3 + 8);
  v34 = (v3 + 32);
  v31 = v15;
  v32 = v12;
  v37 = v16;
  while (1)
  {
    sub_25DD5DBD0(v17 + v16 * v14, v11);
    sub_25DD5DBD0(v11, v9);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v18 = 2;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v18 = 3;
      }

      else
      {
        v18 = 4;
      }

      MEMORY[0x25F8A3F90](v18);
      goto LABEL_5;
    }

    if (!EnumCaseMultiPayload)
    {
      v20 = v35;
      v21 = v36;
      (*v34)(v35, v9, v36);
      MEMORY[0x25F8A3F90](0);
      sub_25DD5E640(&qword_27FCC22E8, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9B0]);
      sub_25DD96AC4();
      (*v33)(v20, v21);
      v16 = v37;
      goto LABEL_5;
    }

    v22 = v5;
    v23 = v9[1];
    v24 = v9[2];
    v25 = v9[3];
    MEMORY[0x25F8A3F90](1);
    v26 = v25 >> 1;
    result = v26 - v24;
    if (__OFSUB__(v26, v24))
    {
      break;
    }

    result = MEMORY[0x25F8A3F90](result);
    v27 = __OFSUB__(v26, v24);
    v28 = v26 - v24;
    if (v28)
    {
      if ((v28 < 0) ^ v27 | (v28 == 0))
      {
        goto LABEL_21;
      }

      v29 = v23 + v24;
      do
      {
        ++v29;
        sub_25DD97984();
        --v28;
      }

      while (v28);
    }

    swift_unknownObjectRelease();
    v5 = v22;
    v17 = v31;
    v12 = v32;
    v16 = v37;
LABEL_5:
    result = sub_25DD5ED80(v11, type metadata accessor for MultipartSerializer.StateMachine.Event);
    if (++v14 == v12)
    {
      return result;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

char *sub_25DD5DFDC(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_25DD2ECB4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_25DD2EDA8(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_25DD5E09C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MultipartSerializer.StateMachine.Event(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2708, &qword_25DD9D818);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v37 - v16;
  v18 = (&v37 + *(v15 + 56) - v16);
  sub_25DD5DBD0(a1, &v37 - v16);
  sub_25DD5DBD0(a2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_28;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_28;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_28;
    }

LABEL_26:
    sub_25DD5ED80(v17, type metadata accessor for MultipartSerializer.StateMachine.Event);
    v31 = 1;
    return v31 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_25DD5DBD0(v17, v13);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v5 + 32))(v7, v18, v4);
      v31 = MEMORY[0x25F8A2E10](v13, v7);
      v32 = *(v5 + 8);
      v32(v7, v4);
      v32(v13, v4);
      sub_25DD5ED80(v17, type metadata accessor for MultipartSerializer.StateMachine.Event);
      return v31 & 1;
    }

    (*(v5 + 8))(v13, v4);
    goto LABEL_28;
  }

  sub_25DD5DBD0(v17, v11);
  v20 = v11[1];
  v21 = v11[2];
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    swift_unknownObjectRelease();
LABEL_28:
    sub_25DD114CC(v17, &qword_27FCC2708, &qword_25DD9D818);
LABEL_29:
    v31 = 0;
    return v31 & 1;
  }

  v23 = v11[3] >> 1;
  if (__OFSUB__(v23, v21))
  {
    __break(1u);
    goto LABEL_46;
  }

  v24 = v18[2];
  v25 = v18[3] >> 1;
  v26 = v25 - v24;
  if (__OFSUB__(v25, v24))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v23 - v21 != v26)
  {
    goto LABEL_44;
  }

  v27 = v20 + v21;
  v28 = v18[1] + v24;
  if (v23 == v21 || v27 == v28 || v21 == v23)
  {
LABEL_25:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  if (v21 < v23)
  {
    if (v24 != v25)
    {
      v33 = 0;
      if (v24 <= v25)
      {
        v34 = v18[3] >> 1;
      }

      else
      {
        v34 = v18[2];
      }

      v35 = v34 - v24;
      while (v35 != v33)
      {
        if (*(v27 + v33) != *(v28 + v33))
        {
          goto LABEL_44;
        }

        if (~v21 + v23 == v33)
        {
          goto LABEL_25;
        }

        v36 = v21 + v33 + 1;
        if (v36 < v21 || v36 >= v23)
        {
          goto LABEL_48;
        }

        if (v26 == ++v33)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_47;
    }

LABEL_44:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25DD5ED80(v17, type metadata accessor for MultipartSerializer.StateMachine.Event);
    goto LABEL_29;
  }

LABEL_49:
  __break(1u);
  return result;
}

unint64_t sub_25DD5E4F4()
{
  result = qword_27FCC26E0;
  if (!qword_27FCC26E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC26E0);
  }

  return result;
}

unint64_t sub_25DD5E54C()
{
  result = qword_27FCC26E8;
  if (!qword_27FCC26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC26E8);
  }

  return result;
}

unint64_t sub_25DD5E5A4()
{
  result = qword_27FCC26F0;
  if (!qword_27FCC26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC26F0);
  }

  return result;
}

uint64_t sub_25DD5E640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25DD5E68C()
{
  result = qword_27FCC2700;
  if (!qword_27FCC2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2700);
  }

  return result;
}

uint64_t sub_25DD5E6E0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25DD5E758(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_25DD5E894(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 48);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = (result + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
      *(v18 + 40) = 0;
      *(v18 + 24) = 0u;
      *(v18 + 8) = 0u;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_25DD5EA58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25DD5EAA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25DD5EB20(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25DD5EBB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_25DD5EC94(uint64_t a1)
{
  sub_25DD96814();
  if (v1 <= 0x3F)
  {
    sub_25DD5ED08();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25DD5ED08()
{
  if (!qword_27FCC2690)
  {
    v0 = sub_25DD97064();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCC2690);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal19MultipartSerializerV12StateMachineV19ReceivedFrameActionO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25DD5ED80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25DD5EE08(uint64_t a1)
{
  v1 = *(a1 + 24);
  v4 = *(a1 + 16);
  v5 = v1;
  return sub_25DD5EF3C(sub_25DD5EF30, &v3, v4, v1);
}

uint64_t sub_25DD5EE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_25DD96DF4();
}

uint64_t sub_25DD5EF3C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MultipartFramesToRawPartsSequence.SharedIterator(0, a3, a4, a4);
  swift_allocObject();
  sub_25DD621A0(a1, a2, v6, v7);
}

uint64_t sub_25DD5F00C(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_25DD5F064(void (*a1)(uint64_t), uint64_t a2)
{
  v4 = swift_allocObject();
  sub_25DD621A0(a1, a2, v5, v6);
  return v4;
}

uint64_t sub_25DD5F0B4(uint64_t a1)
{
  v4 = (*(*a1 + 184) + **(*a1 + 184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25DD5F1C8;

  return v4();
}

uint64_t sub_25DD5F1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *v5;

  v14 = *(v16 + 8);
  if (!v4)
  {
    v10 = a1;
    v11 = a2;
    v12 = a3;
    v13 = a4;
  }

  return v14(v10, v11, v12, v13);
}

uint64_t sub_25DD5F2F0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25DD47524;

  return sub_25DD5F0B4(v0);
}

uint64_t sub_25DD5F380(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25DD5F3A0, 0, 0);
}

uint64_t sub_25DD5F3A0()
{
  v1 = v0[3];
  v2 = v1[1];
  v3 = v1[2];
  v7 = (*(**v1 + 176) + **(**v1 + 176));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_25DD3CAD4;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_25DD5F4D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25DD1BF14;

  return sub_25DD5F380(a1);
}

uint64_t sub_25DD5F56C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_25DD5EE08(a1);
  v7 = v6;
  result = (*(*(a1 - 8) + 8))(v2, a1);
  *a2 = v5;
  a2[1] = &unk_25DD9D848;
  a2[2] = v7;
  return result;
}

uint64_t sub_25DD5F5F4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_25DD2E184;

  return v5();
}

uint64_t sub_25DD5F6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a2;
  v7 = sub_25DD96814();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x28223BE20](v7);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2710, &qword_25DD9D858);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = &v38 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2718, qword_25DD9D860);
  MEMORY[0x28223BE20](v41);
  v42 = &v38 - v12;
  v14 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State(0, a3, a4, v13);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v46 = &v38 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v21 = &v38 - v20;
  v22 = *(v19 + 48);
  v45 = v15;
  v23 = *(v15 + 16);
  v23(&v38 - v20, a1, v14);
  v23(&v21[v22], v47, v14);
  v24 = *(v10 + 48);
  v25 = v24(v21, 3, v9);
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      if (v24(&v21[v22], 3, v9) != 2)
      {
        goto LABEL_12;
      }
    }

    else if (v24(&v21[v22], 3, v9) != 3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!v25)
    {
      v23(v46, v21, v14);
      if (v24(&v21[v22], 3, v9))
      {
        sub_25DD114CC(v46, &qword_27FCC2710, &qword_25DD9D858);
LABEL_12:
        v26 = 0;
        v14 = TupleTypeMetadata2;
        goto LABEL_13;
      }

      v28 = v42;
      v29 = *(v41 + 48);
      sub_25DD64520(v46, v42, &qword_27FCC2710, &qword_25DD9D858);
      sub_25DD64520(&v21[v22], v28 + v29, &qword_27FCC2710, &qword_25DD9D858);
      v31 = v43;
      v30 = v44;
      v32 = *(v43 + 48);
      if (v32(v28, 1, v44) == 1)
      {
        if (v32(v28 + v29, 1, v30) == 1)
        {
          sub_25DD114CC(v28, &qword_27FCC2710, &qword_25DD9D858);
          goto LABEL_11;
        }
      }

      else
      {
        v33 = v40;
        sub_25DD12B90(v28, v40, &qword_27FCC2710, &qword_25DD9D858);
        if (v32(v28 + v29, 1, v30) != 1)
        {
          v34 = v28 + v29;
          v35 = v39;
          (*(v31 + 32))(v39, v34, v30);
          sub_25DD623FC(&qword_27FCC2720, MEMORY[0x277D0F9B8]);
          v36 = sub_25DD96B04();
          v37 = *(v31 + 8);
          v37(v35, v30);
          v37(v33, v30);
          sub_25DD114CC(v28, &qword_27FCC2710, &qword_25DD9D858);
          if (v36)
          {
            goto LABEL_11;
          }

LABEL_20:
          v26 = 0;
          v18 = v45;
          goto LABEL_13;
        }

        (*(v31 + 8))(v33, v30);
      }

      sub_25DD114CC(v28, &qword_27FCC2718, qword_25DD9D860);
      goto LABEL_20;
    }

    if (v24(&v21[v22], 3, v9) != 1)
    {
      goto LABEL_12;
    }
  }

LABEL_11:
  v26 = 1;
  v18 = v45;
LABEL_13:
  (*(v18 + 8))(v21, v14);
  return v26;
}

uint64_t sub_25DD5FCB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2710, &qword_25DD9D858);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v2, a2);
  v18 = (*(v8 + 48))(v16, 3, v7);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = 3;
    }

    return MEMORY[0x25F8A3F90](v20);
  }

  if (v18)
  {
    v20 = 0;
    return MEMORY[0x25F8A3F90](v20);
  }

  sub_25DD64520(v16, v14, &qword_27FCC2710, &qword_25DD9D858);
  MEMORY[0x25F8A3F90](1);
  sub_25DD12B90(v14, v11, &qword_27FCC2710, &qword_25DD9D858);
  v19 = v23;
  if ((*(v23 + 48))(v11, 1, v4) == 1)
  {
    sub_25DD97984();
  }

  else
  {
    (*(v19 + 32))(v6, v11, v4);
    sub_25DD97984();
    sub_25DD623FC(&qword_27FCC22E8, MEMORY[0x277D0F9B0]);
    sub_25DD96AC4();
    (*(v19 + 8))(v6, v4);
  }

  return sub_25DD114CC(v14, &qword_27FCC2710, &qword_25DD9D858);
}

uint64_t sub_25DD60060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State(0, *(a1 + 16), *(a1 + 24), a3);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3, v5);
}

uint64_t sub_25DD600CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State(0, *(a2 + 16), *(a2 + 24), a4);
  v7 = *(*(v6 - 8) + 40);

  return v7(v4, a1, v6);
}

uint64_t sub_25DD6013C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2710, &qword_25DD9D858);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 3, v2);
}

uint64_t sub_25DD601E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v7 = sub_25DD96814();
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.NextFromPartSequenceAction(0, a3, a4, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v21 = &v32 - v20;
  v22 = *(v19 + 48);
  v36 = v11;
  v23 = *(v11 + 16);
  v23(&v32 - v20, a1, v10);
  v23(&v21[v22], v37, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_13;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_13;
    }

    v25 = 1;
    v18 = v36;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload)
  {
    v23(v14, v21, v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v33;
      v26 = v34;
      v28 = &v21[v22];
      v29 = v35;
      (*(v34 + 32))(v33, v28, v35);
      v25 = MEMORY[0x25F8A2E10](v14, v27);
      v30 = *(v26 + 8);
      v30(v27, v29);
      v30(v14, v29);
      v18 = v36;
      goto LABEL_14;
    }

    (*(v34 + 8))(v14, v35);
LABEL_13:
    v25 = 0;
    v10 = TupleTypeMetadata2;
    goto LABEL_14;
  }

  v23(v16, v21, v10);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_13;
  }

  v25 = *v16 == v21[v22];
  v18 = v36;
LABEL_14:
  (*(v18 + 8))(v21, v10);
  return v25 & 1;
}

uint64_t sub_25DD60580(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v2, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v14 = EnumCaseMultiPayload != 2;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      (*(v5 + 32))(v8, v10, v4);
      MEMORY[0x25F8A3F90](3);
      sub_25DD623FC(&qword_27FCC22E8, MEMORY[0x277D0F9B0]);
      sub_25DD96AC4();
      return (*(v5 + 8))(v8, v4);
    }

    v13 = *v10;
    MEMORY[0x25F8A3F90](2);
    v14 = v13;
  }

  return MEMORY[0x25F8A3F90](v14);
}

uint64_t sub_25DD607EC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  v5 = sub_25DD96814();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v25 = *(a1 + 24);
  v11 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State(0, v9, v25, v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  (*(v12 + 16))(&v25 - v13, v3, v11);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2710, &qword_25DD9D858);
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 3, v15);
  if (v17 > 1)
  {
    if (v17 != 2)
    {
      type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.NextFromPartSequenceAction(0, v9, v25, v18);
      return swift_storeEnumTagMultiPayload();
    }

LABEL_6:
    (*(v12 + 8))(v3, v11);
    (*(v16 + 56))(v3, 3, 3, v15);
    v21 = v25;
    *v26 = 0;
    type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.NextFromPartSequenceAction(0, v9, v21, v22);
    return swift_storeEnumTagMultiPayload();
  }

  if (v17)
  {
    (*(v12 + 8))(v3, v11);
    (*(v6 + 56))(v3, 1, 1, v5);
    (*(v16 + 56))(v3, 0, 3, v15);
    type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.NextFromPartSequenceAction(0, v9, v25, v23);
    return swift_storeEnumTagMultiPayload();
  }

  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    goto LABEL_6;
  }

  v19 = *(v6 + 32);
  v19(v8, v14, v5);
  (*(v12 + 8))(v3, v11);
  (*(v16 + 56))(v3, 2, 3, v15);
  v19(v26, v8, v5);
  type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.NextFromPartSequenceAction(0, v9, v25, v20);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25DD60B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v7 = sub_25DD96814();
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.PartReceivedFrameAction(0, a3, a4, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v21 = &v32 - v20;
  v22 = *(v19 + 48);
  v36 = v11;
  v23 = *(v11 + 16);
  v23(&v32 - v20, a1, v10);
  v23(&v21[v22], v37, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v23(v16, v21, v10);
    if (!swift_getEnumCaseMultiPayload())
    {
      v29 = *v16 == v21[v22];
      v18 = v36;
      goto LABEL_11;
    }

LABEL_10:
    v29 = 0;
    v10 = TupleTypeMetadata2;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v29 = 1;
      v18 = v36;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v23(v14, v21, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v34 + 8))(v14, v35);
    goto LABEL_10;
  }

  v26 = v33;
  v25 = v34;
  v27 = &v21[v22];
  v28 = v35;
  (*(v34 + 32))(v33, v27, v35);
  v29 = MEMORY[0x25F8A2E10](v14, v26);
  v30 = *(v25 + 8);
  v30(v26, v28);
  v30(v14, v28);
  v18 = v36;
LABEL_11:
  (*(v18 + 8))(v21, v10);
  return v29 & 1;
}

uint64_t sub_25DD60EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v2, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v8, v10, v4);
      MEMORY[0x25F8A3F90](2);
      sub_25DD623FC(&qword_27FCC22E8, MEMORY[0x277D0F9B0]);
      sub_25DD96AC4();
      return (*(v5 + 8))(v8, v4);
    }

    v15 = 0;
  }

  else
  {
    v14 = *v10;
    MEMORY[0x25F8A3F90](1);
    v15 = v14;
  }

  return MEMORY[0x25F8A3F90](v15);
}

uint64_t sub_25DD610F8(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  sub_25DD97964();
  a2(v5, a1);
  return sub_25DD979A4();
}

uint64_t sub_25DD61198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  sub_25DD97964();
  a4(v7, a2);
  return sub_25DD979A4();
}

uint64_t sub_25DD611F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v46 = a1;
  v52 = a3;
  v6 = sub_25DD96814();
  v7 = *(v6 - 8);
  v47 = v6;
  v48 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26C0, &qword_25DD9D320);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - v11;
  v13 = type metadata accessor for MultipartFrame(0);
  v45 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  v19 = *(a2 + 24);
  v50 = *(a2 + 16);
  v51 = v19;
  v21 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State(0, v50, v19, v20);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v43 - v23;
  v25 = *(v22 + 16);
  v49 = v4;
  v25(&v43 - v23, v4, v21);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2710, &qword_25DD9D858);
  v27 = *(v26 - 8);
  result = (*(v27 + 48))(v24, 3, v26);
  if (result > 1)
  {
    if (result == 2)
    {
      v30 = v49;
      (*(v22 + 8))(v49, v21);
      (*(v27 + 56))(v30, 3, 3, v26);
      *v52 = 0;
    }

    goto LABEL_8;
  }

  v44 = v9;
  v31 = v47;
  if (result)
  {
    __break(1u);
  }

  else
  {
    if ((*(v48 + 48))(v24, 1, v47) == 1)
    {
      sub_25DD12B90(v46, v12, &qword_27FCC26C0, &qword_25DD9D320);
      if ((*(v45 + 48))(v12, 1, v13) == 1)
      {
        sub_25DD114CC(v12, &qword_27FCC26C0, &qword_25DD9D320);
        v32 = v49;
        (*(v22 + 8))(v49, v21);
        (*(v27 + 56))(v32, 3, 3, v26);
      }

      else
      {
        sub_25DD62470(v12, v18);
        sub_25DD62470(v18, v16);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v37 = *(v48 + 32);
          v38 = v44;
          v39 = v31;
          v37(v44, v16, v31);
          v40 = v37;
          v41 = v49;
          (*(v22 + 8))(v49, v21);
          (*(v27 + 56))(v41, 2, 3, v26);
          v40(v52, v38, v39);
          type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.PartReceivedFrameAction(0, v50, v51, v42);
          return swift_storeEnumTagMultiPayload();
        }

        sub_25DD624D4(v16);
        v36 = v49;
        (*(v22 + 8))(v49, v21);
        (*(v27 + 56))(v36, 3, 3, v26);
        *v52 = 2;
      }

LABEL_8:
      type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.PartReceivedFrameAction(0, v50, v51, v29);
      return swift_storeEnumTagMultiPayload();
    }

    v33 = v49;
    (*(v22 + 8))(v49, v21);
    (*(v27 + 56))(v33, 3, 3, v26);
    v34 = v51;
    *v52 = 3;
    type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.PartReceivedFrameAction(0, v50, v34, v35);
    swift_storeEnumTagMultiPayload();
    return sub_25DD114CC(v24, &qword_27FCC2710, &qword_25DD9D858);
  }

  return result;
}

BOOL sub_25DD617A0(char a1, char a2)
{
  if (a1 == 5)
  {
    return a2 == 5;
  }

  if (a1 == 4)
  {
    return a2 == 4;
  }

  if ((a2 & 0xFE) == 4)
  {
    return 0;
  }

  return a1 == a2;
}

uint64_t sub_25DD617F8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 4)
  {
    v2 = 0;
  }

  else if (a2 == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x25F8A3F90](2);
    v2 = a2;
  }

  return MEMORY[0x25F8A3F90](v2);
}

uint64_t sub_25DD61850(unsigned __int8 a1)
{
  sub_25DD97964();
  sub_25DD617F8(v3, a1);
  return sub_25DD979A4();
}

uint64_t sub_25DD618C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void))
{
  sub_25DD97964();
  a4(v7, *v4);
  return sub_25DD979A4();
}

uint64_t sub_25DD61914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State(0, *(a1 + 16), *(a1 + 24), a4);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  (*(v6 + 16))(&v14 - v7, v4, v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2710, &qword_25DD9D858);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 3, v9);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      return 5;
    }

    else
    {
      return 4;
    }
  }

  else if (v11)
  {
    (*(v6 + 8))(v4, v5);
    (*(v10 + 56))(v4, 3, 3, v9);
    return 1;
  }

  else
  {
    v12 = *(v6 + 8);
    v12(v4, v5);
    (*(v10 + 56))(v4, 3, 3, v9);
    v12(v8, v5);
    return 2;
  }
}

BOOL sub_25DD61AF8(_BOOL8 result, int8x16_t *a2)
{
  if (*(result + 32))
  {
    if (*(result + 32) == 1)
    {
      if (a2[2].i8[0] == 1)
      {
        return *result == a2->u8[0];
      }

      return 0;
    }

    if (a2[2].i8[0] != 2)
    {
      return 0;
    }

    v14 = vorrq_s8(*a2, a2[1]);
    return !*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
  }

  if (a2[2].i8[0])
  {
    return 0;
  }

  v2 = *(result + 16);
  v3 = *(result + 24) >> 1;
  v4 = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2[1].i64[0];
  v6 = a2[1].i64[1] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v4 != v7)
  {
    return 0;
  }

  if (!v4)
  {
    return 1;
  }

  v8 = *(result + 8) + v2;
  v9 = a2->i64[1] + v5;
  result = 1;
  if (v8 != v9 && v2 != v3)
  {
    if (v2 >= v3)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    if (v5 == v6)
    {
      return 0;
    }

    v10 = 0;
    if (v5 <= v6)
    {
      v11 = a2[1].i64[1] >> 1;
    }

    else
    {
      v11 = a2[1].u64[0];
    }

    v12 = v11 - v5;
    while (v12 != v10)
    {
      if (*(v8 + v10) != *(v9 + v10))
      {
        return 0;
      }

      if (~v2 + v3 == v10)
      {
        return 1;
      }

      v13 = v2 + v10 + 1;
      if (v13 < v2 || v13 >= v3)
      {
        goto LABEL_33;
      }

      result = 0;
      if (v7 == ++v10)
      {
        return result;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_25DD61C34()
{
  if (!v0[32])
  {
    v2 = *(v0 + 1);
    v3 = *(v0 + 2);
    v4 = *(v0 + 3);
    MEMORY[0x25F8A3F90](1);
    v5 = v4 >> 1;
    result = v5 - v3;
    if (__OFSUB__(v5, v3))
    {
      __break(1u);
    }

    else
    {
      result = MEMORY[0x25F8A3F90](result);
      v7 = __OFSUB__(v5, v3);
      v8 = v5 - v3;
      if (!v8)
      {
        return result;
      }

      if (!((v8 < 0) ^ v7 | (v8 == 0)))
      {
        v9 = v2 + v3;
        do
        {
          ++v9;
          result = sub_25DD97984();
          --v8;
        }

        while (v8);
        return result;
      }
    }

    __break(1u);
    return result;
  }

  if (v0[32] == 1)
  {
    v1 = *v0;
    MEMORY[0x25F8A3F90](2);
  }

  else
  {
    v1 = 0;
  }

  return MEMORY[0x25F8A3F90](v1);
}

uint64_t sub_25DD61CD8()
{
  sub_25DD97964();
  sub_25DD61C34();
  return sub_25DD979A4();
}

uint64_t sub_25DD61D20(uint64_t a1)
{
  sub_25DD97964();
  sub_25DD61C34();
  return sub_25DD979A4();
}

uint64_t sub_25DD61D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v4 = v3;
  v36 = a1;
  v38 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26C0, &qword_25DD9D320);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for MultipartFrame(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v17 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State(0, *(a2 + 16), *(a2 + 24), v16);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v35 - v19;
  v21 = *(v18 + 16);
  v37 = v4;
  v21(&v35 - v19, v4, v17);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2710, &qword_25DD9D858);
  v23 = *(v22 - 8);
  result = (*(v23 + 48))(v20, 3, v22);
  v25 = 0uLL;
  if (result > 1)
  {
    if (result == 2)
    {
      sub_25DD12B90(v36, v8, &qword_27FCC26C0, &qword_25DD9D320);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_25DD114CC(v8, &qword_27FCC26C0, &qword_25DD9D320);
        v26 = v37;
        (*(v18 + 8))(v37, v17);
        result = (*(v23 + 56))(v26, 3, 3, v22);
LABEL_11:
        v30 = 2;
        v29 = 0uLL;
        goto LABEL_12;
      }

      sub_25DD62470(v8, v15);
      sub_25DD62470(v15, v13);
      result = swift_getEnumCaseMultiPayload();
      if (result != 1)
      {
        v31 = v37;
        (*(v18 + 8))(v37, v17);
        v32 = sub_25DD96814();
        v33 = *(v32 - 8);
        (*(v33 + 32))(v31, v13, v32);
        (*(v33 + 56))(v31, 0, 1, v32);
        result = (*(v23 + 56))(v31, 0, 3, v22);
        goto LABEL_11;
      }

      v30 = 0;
      v29 = *v13;
      v25 = v13[1];
    }

    else
    {
      v30 = 2;
      v29 = 0uLL;
    }

LABEL_13:
    v34 = v38;
    *v38 = v29;
    v34[1] = v25;
    *(v34 + 32) = v30;
    return result;
  }

  if (!result)
  {
    v27 = *(v18 + 8);
    v28 = v37;
    v27(v37, v17);
    (*(v23 + 56))(v28, 3, 3, v22);
    result = (v27)(v20, v17);
    v29 = xmmword_25DD9D830;
    v30 = 1;
LABEL_12:
    v25 = 0uLL;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD621A0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine(0, *(*v5 + 80), *(*v5 + 88), a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v18 - v13;
  v15 = swift_defaultActor_initialize();
  a1(v15);
  (*(v12 + 32))(v5 + *(*v5 + 104), v14, AssociatedTypeWitness);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2710, &qword_25DD9D858);
  (*(*(v16 - 8) + 56))(v10, 1, 3, v16);
  (*(v8 + 32))(v5 + *(*v5 + 112), v10, v7);
  return v4;
}

uint64_t sub_25DD623FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25DD96814();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25DD62470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartFrame(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD624D4(uint64_t a1)
{
  v2 = type metadata accessor for MultipartFrame(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25DD62548(unsigned __int8 a1)
{
  v1 = 0xD000000000000053;
  if (a1 == 2)
  {
    v1 = 0xD00000000000004ELL;
  }

  v2 = 0xD000000000000060;
  if (!a1)
  {
    v2 = 0xD000000000000078;
  }

  if (a1 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_25DD625C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = *v3;
  v6 = sub_25DD96814();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v7 = *(v5 + 80);
  v4[22] = v7;
  v8 = *(v5 + 88);
  v4[23] = v8;
  v4[24] = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.PartReceivedFrameAction(0, v7, v8, v9);
  v4[25] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[26] = AssociatedTypeWitness;
  v4[27] = *(AssociatedTypeWitness - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  v4[30] = v11;
  v4[31] = *(v11 - 8);
  v4[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26C0, &qword_25DD9D320);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.NextFromPartSequenceAction(0, v7, v8, v12);
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD62880, v3, 0);
}

uint64_t sub_25DD62880()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  *(v0 + 296) = *(**(v0 + 136) + 112);
  swift_beginAccess();
  v5 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine(0, v3, v2, v4);
  *(v0 + 304) = v5;
  sub_25DD607EC(v5, v1);
  swift_endAccess();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v8 = **(v0 + 288);
      type metadata accessor for MultipartFramesToRawPartsSequence.SharedIterator.IteratorError(0, *(v0 + 176), *(v0 + 184), v7);
      swift_getWitnessTable();
      swift_allocError();
      *v9 = v8;
      swift_willThrow();

      v10 = *(v0 + 8);
LABEL_8:

      return v10();
    }

    v13 = *(v0 + 160);
    v12 = *(v0 + 168);
    v14 = *(v0 + 144);
    v15 = *(v0 + 152);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);
    v37 = *(v0 + 112);
    (*(v15 + 32))(v12, *(v0 + 288), v14);
    type metadata accessor for HTTPBody();
    v18 = *(v15 + 16);
    v18(v13, v12, v14);

    v19 = sub_25DD63F94(v13, v16, v17);

    v18(v13, v12, v14);
    MultipartRawPart.init(headerFields:body:)(v13, v19, v37);
    (*(v15 + 8))(v12, v14);
    v11 = 0;
LABEL_7:
    v20 = *(v0 + 112);
    v21 = type metadata accessor for MultipartRawPart(0);
    (*(*(v21 - 8) + 56))(v20, v11, 1, v21);

    v10 = *(v0 + 8);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v11 = 1;
    goto LABEL_7;
  }

  v24 = *(v0 + 248);
  v23 = *(v0 + 256);
  v25 = *(v0 + 240);
  v27 = *(v0 + 176);
  v26 = *(v0 + 184);
  v28 = *(v0 + 136);
  v29 = *(*v28 + 104);
  *(v0 + 312) = v29;
  swift_beginAccess();
  (*(v24 + 16))(v23, v28 + v29, v25);
  type metadata accessor for MultipartFramesToRawPartsSequence.SharedIterator(255, v27, v26, v30);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 320) = AssociatedConformanceWitness;
  v33 = swift_task_alloc();
  *(v0 + 328) = v33;
  *v33 = v0;
  v33[1] = sub_25DD62CF8;
  v34 = *(v0 + 264);
  v35 = *(v0 + 232);
  v36 = *(v0 + 240);

  return MEMORY[0x282200310](v34, v28, WitnessTable, v35, v36, AssociatedConformanceWitness);
}

uint64_t sub_25DD62CF8()
{
  v2 = *v1;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_25DD63210;
  }

  else
  {
    v4 = sub_25DD62E24;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25DD62E24()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[30];
  v7 = v0[25];
  v8 = v0[17];
  sub_25DD64520(v0[33], v3, &qword_27FCC26C0, &qword_25DD9D320);
  swift_beginAccess();
  (*(v5 + 24))(v8 + v2, v4, v6);
  swift_endAccess();
  swift_beginAccess();
  sub_25DD611F8(v3, v1, v7);
  swift_endAccess();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = v0[34];
  v12 = v0[31];
  v13 = v0[32];
  v14 = v0[30];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v32 = v0[30];
      v16 = v0[20];
      v15 = v0[21];
      v34 = v0[34];
      v18 = v0[18];
      v17 = v0[19];
      v19 = v0[16];
      v30 = v0[15];
      v31 = v0[14];
      (*(v17 + 32))(v15, v0[25], v18);
      type metadata accessor for HTTPBody();
      v33 = v13;
      v20 = *(v17 + 16);
      v20(v16, v15, v18);

      v21 = sub_25DD63F94(v16, v30, v19);

      v20(v16, v15, v18);
      v22 = v16;
      v14 = v32;
      v13 = v33;
      MultipartRawPart.init(headerFields:body:)(v22, v21, v31);
      (*(v17 + 8))(v15, v18);
      v11 = v34;
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    (*(v12 + 8))(v13, v14);
    sub_25DD114CC(v11, &qword_27FCC26C0, &qword_25DD9D320);
    v27 = v0[14];
    v28 = type metadata accessor for MultipartRawPart(0);
    (*(*(v28 - 8) + 56))(v27, v23, 1, v28);

    v26 = v0[1];
  }

  else
  {
    v24 = *v0[25];
    type metadata accessor for MultipartFramesToRawPartsSequence.SharedIterator.IteratorError(0, v0[22], v0[23], v10);
    swift_getWitnessTable();
    swift_allocError();
    *v25 = v24;
    swift_willThrow();
    (*(v12 + 8))(v13, v14);
    sub_25DD114CC(v11, &qword_27FCC26C0, &qword_25DD9D320);

    v26 = v0[1];
  }

  return v26();
}

uint64_t sub_25DD63210()
{
  v1 = *(v0[27] + 32);
  v1(v0[28], v0[29], v0[26]);
  swift_getAssociatedConformanceWitness();
  v2 = sub_25DD97574();
  v3 = v0[28];
  if (v2)
  {
    (*(v0[27] + 8))(v0[28], v0[26]);
  }

  else
  {
    v4 = v0[26];
    swift_allocError();
    v1(v5, v3, v4);
  }

  (*(v0[31] + 8))(v0[32], v0[30]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_25DD633B4()
{
  v1[19] = v0;
  v2 = *v0;
  v1[20] = *(*v0 + 88);
  v1[21] = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[22] = AssociatedTypeWitness;
  v1[23] = *(AssociatedTypeWitness - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v4 = swift_getAssociatedTypeWitness();
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26C0, &qword_25DD9D320);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD63594, v0, 0);
}

uint64_t sub_25DD63594()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  *(v0 + 248) = *(**(v0 + 152) + 112);
  swift_beginAccess();
  v4 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine(0, v2, v1, v3);
  *(v0 + 256) = v4;
  v8 = sub_25DD61914(v4, v5, v6, v7);
  swift_endAccess();
  if (v8 == 4)
  {

    v24 = *(v0 + 8);

    return v24(0, 0, 0, 0);
  }

  else if (v8 == 5)
  {
    v11 = *(v0 + 216);
    v10 = *(v0 + 224);
    v12 = *(v0 + 208);
    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    v15 = *(v0 + 152);
    v16 = *(*v15 + 104);
    *(v0 + 264) = v16;
    swift_beginAccess();
    (*(v11 + 16))(v10, v15 + v16, v12);
    type metadata accessor for MultipartFramesToRawPartsSequence.SharedIterator(255, v13, v14, v17);
    WitnessTable = swift_getWitnessTable();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 272) = AssociatedConformanceWitness;
    v20 = swift_task_alloc();
    *(v0 + 280) = v20;
    *v20 = v0;
    v20[1] = sub_25DD638B4;
    v21 = *(v0 + 232);
    v22 = *(v0 + 200);
    v23 = *(v0 + 208);

    return MEMORY[0x282200310](v21, v15, WitnessTable, v22, v23, AssociatedConformanceWitness);
  }

  else
  {
    type metadata accessor for MultipartFramesToRawPartsSequence.SharedIterator.IteratorError(0, *(v0 + 168), *(v0 + 160), v9);
    swift_getWitnessTable();
    swift_allocError();
    *v25 = v8;
    swift_willThrow();

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_25DD638B4()
{
  v2 = *v1;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_25DD63CBC;
  }

  else
  {
    v4 = sub_25DD639E0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25DD639E0()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  v7 = *(v0 + 152);
  sub_25DD64520(*(v0 + 232), v3, &qword_27FCC26C0, &qword_25DD9D320);
  swift_beginAccess();
  (*(v6 + 24))(v7 + v2, v4, v5);
  swift_endAccess();
  swift_beginAccess();
  sub_25DD61D60(v3, v1, (v0 + 16));
  swift_endAccess();
  v9 = *(v0 + 16);
  v10 = *(v0 + 240);
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = *(v0 + 208);
  if (*(v0 + 48))
  {
    if (*(v0 + 48) == 1)
    {
      v14 = *(v0 + 224);
      v15 = *(v0 + 208);
      type metadata accessor for MultipartFramesToRawPartsSequence.SharedIterator.IteratorError(0, *(v0 + 168), *(v0 + 160), v8);
      swift_getWitnessTable();
      swift_allocError();
      *v16 = v9;
      swift_willThrow();
      (*(v12 + 8))(v14, v15);
      sub_25DD114CC(v10, &qword_27FCC26C0, &qword_25DD9D320);

      v17 = *(v0 + 8);

      return v17();
    }

    (*(v12 + 8))(v11, v13);
    sub_25DD114CC(v10, &qword_27FCC26C0, &qword_25DD9D320);
    v9 = 0;
    v21 = 0;
    v20 = 0;
    v19 = 0;
  }

  else
  {
    v20 = *(v0 + 32);
    v19 = *(v0 + 40);
    v21 = *(v0 + 24);
    (*(v12 + 8))(v11, v13);
    sub_25DD114CC(v10, &qword_27FCC26C0, &qword_25DD9D320);
  }

  v22 = *(v0 + 8);

  return v22(v9, v21, v20, v19);
}

uint64_t sub_25DD63CBC()
{
  v1 = *(v0[23] + 32);
  v1(v0[24], v0[25], v0[22]);
  swift_getAssociatedConformanceWitness();
  v2 = sub_25DD97574();
  v3 = v0[24];
  if (v2)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
  }

  else
  {
    v4 = v0[22];
    swift_allocError();
    v1(v5, v3, v4);
  }

  (*(v0[27] + 8))(v0[28], v0[26]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_25DD63E2C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  v5 = *(*v0 + 112);
  v7 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine(0, v3, v2, v6);
  (*(*(v7 - 8) + 8))(v0 + v5, v7);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_25DD63F40()
{
  sub_25DD63E2C();

  return MEMORY[0x282200960](v0);
}

unsigned __int8 *sub_25DD63F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25DD969E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2580, &qword_25DD9DF40);
  v10 = *(v53 - 8);
  v11 = MEMORY[0x28223BE20](v53);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  v17 = a1;
  v18 = sub_25DD96E24();
  MEMORY[0x25F8A2FD0](v18);
  v19 = MEMORY[0x25F8A2E40](v9);
  v21 = v20;
  result = (*(v7 + 8))(v9, v6);
  if (!v21)
  {
    goto LABEL_64;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

    goto LABEL_64;
  }

  if ((v21 & 0x1000000000000000) != 0)
  {
    v27 = sub_25DD17A9C(v19, v21, 10);
    v48 = v47;

    if (v48)
    {
      goto LABEL_64;
    }

    goto LABEL_67;
  }

  if ((v21 & 0x2000000000000000) == 0)
  {
    if ((v19 & 0x1000000000000000) != 0)
    {
      result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_25DD971D4();
    }

    v26 = *result;
    if (v26 == 43)
    {
      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v34 = result + 1;
            while (1)
            {
              v35 = *v34 - 48;
              if (v35 > 9)
              {
                goto LABEL_62;
              }

              v36 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_62;
              }

              v27 = v36 + v35;
              if (__OFADD__(v36, v35))
              {
                goto LABEL_62;
              }

              ++v34;
              if (!--v23)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_54;
        }

        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v26 != 45)
    {
      if (v24)
      {
        v27 = 0;
        if (result)
        {
          while (1)
          {
            v40 = *result - 48;
            if (v40 > 9)
            {
              goto LABEL_62;
            }

            v41 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              goto LABEL_62;
            }

            v27 = v41 + v40;
            if (__OFADD__(v41, v40))
            {
              goto LABEL_62;
            }

            ++result;
            if (!--v24)
            {
              goto LABEL_54;
            }
          }
        }

        goto LABEL_54;
      }

LABEL_62:
      v27 = 0;
      LOBYTE(v23) = 1;
LABEL_63:
      v56 = v23;
      v45 = v23;

      if (v45)
      {
LABEL_64:
        v27 = 0;
        v46 = 1;
LABEL_68:
        v49 = v53;
        (*(v10 + 16))(v13, v15, v53);
        v54 = v27;
        LOBYTE(v55) = v46;
        v50 = HTTPBody.__allocating_init(_:length:)(v13, &v54);
        v51 = sub_25DD96814();
        (*(*(v51 - 8) + 8))(v17, v51);
        (*(v10 + 8))(v15, v49);
        return v50;
      }

LABEL_67:
      v46 = 0;
      goto LABEL_68;
    }

    if (v24 >= 1)
    {
      v23 = v24 - 1;
      if (v24 != 1)
      {
        v27 = 0;
        if (result)
        {
          v28 = result + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              goto LABEL_62;
            }

            v30 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              goto LABEL_62;
            }

            v27 = v30 - v29;
            if (__OFSUB__(v30, v29))
            {
              goto LABEL_62;
            }

            ++v28;
            if (!--v23)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_54:
        LOBYTE(v23) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v54 = v19;
  v55 = v21 & 0xFFFFFFFFFFFFFFLL;
  if (v19 != 43)
  {
    if (v19 != 45)
    {
      if (v23)
      {
        v27 = 0;
        v42 = &v54;
        while (1)
        {
          v43 = *v42 - 48;
          if (v43 > 9)
          {
            break;
          }

          v44 = 10 * v27;
          if ((v27 * 10) >> 64 != (10 * v27) >> 63)
          {
            break;
          }

          v27 = v44 + v43;
          if (__OFADD__(v44, v43))
          {
            break;
          }

          v42 = (v42 + 1);
          if (!--v23)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    if (v23)
    {
      if (--v23)
      {
        v27 = 0;
        v31 = &v54 + 1;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v27;
          if ((v27 * 10) >> 64 != (10 * v27) >> 63)
          {
            break;
          }

          v27 = v33 - v32;
          if (__OFSUB__(v33, v32))
          {
            break;
          }

          ++v31;
          if (!--v23)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_71;
  }

  if (v23)
  {
    if (--v23)
    {
      v27 = 0;
      v37 = &v54 + 1;
      while (1)
      {
        v38 = *v37 - 48;
        if (v38 > 9)
        {
          break;
        }

        v39 = 10 * v27;
        if ((v27 * 10) >> 64 != (10 * v27) >> 63)
        {
          break;
        }

        v27 = v39 + v38;
        if (__OFADD__(v39, v38))
        {
          break;
        }

        ++v37;
        if (!--v23)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_25DD64520(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25DD64680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD646BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25DD64704(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_25DD6475C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25DD647F4(uint64_t a1)
{
  sub_25DD64874(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_25DD64874(uint64_t a1)
{
  if (!qword_27FCC2728)
  {
    sub_25DD96814();
    v1 = sub_25DD96F04();
    if (!v2)
    {
      atomic_store(v1, &qword_27FCC2728);
    }
  }
}

uint64_t sub_25DD648F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.ActionError(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    result = sub_25DD96814();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD64968(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
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

uint64_t sub_25DD64A08(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
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

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_25DD64AC0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_25DD64AD4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_25DD64AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal33MultipartFramesToRawPartsSequenceV12StateMachineV23BodyReceivedFrameActionOyx__G(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_25DD64B6C(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State(319, v2, v1, v4);
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

uint64_t sub_25DD64C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD64CAC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25DD64D3C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25DD64DEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25DD1BF14;

  return sub_25DD5F5F4(a1, v4);
}

uint64_t sub_25DD64ECC(uint64_t a1)
{
  v2 = sub_25DD96814();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MultipartFrame(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25DD65528(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = v8[1];
    v11 = v8[2];
    v10 = v8[3];
    MEMORY[0x25F8A3F90](1);
    v12 = v10 >> 1;
    result = v12 - v11;
    if (__OFSUB__(v12, v11))
    {
      __break(1u);
    }

    else
    {
      result = MEMORY[0x25F8A3F90](result);
      v14 = __OFSUB__(v12, v11);
      v15 = v12 - v11;
      if (!v15)
      {
        return swift_unknownObjectRelease();
      }

      if (!((v15 < 0) ^ v14 | (v15 == 0)))
      {
        v16 = v9 + v11;
        do
        {
          ++v16;
          sub_25DD97984();
          --v15;
        }

        while (v15);
        return swift_unknownObjectRelease();
      }
    }

    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x25F8A3F90](0);
    sub_25DD655D4(&qword_27FCC22E8, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9B0]);
    sub_25DD96AC4();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_25DD650CC()
{
  sub_25DD97964();
  sub_25DD64ECC(v1);
  return sub_25DD979A4();
}

uint64_t sub_25DD65110(uint64_t a1)
{
  sub_25DD97964();
  sub_25DD64ECC(v2);
  return sub_25DD979A4();
}

uint64_t sub_25DD6514C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MultipartFrame(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2738, "L?");
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v36 - v16;
  v18 = (&v36 + *(v15 + 56) - v16);
  sub_25DD65528(a1, &v36 - v16);
  sub_25DD65528(a2, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_25DD65528(v17, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, v18, v4);
      v30 = MEMORY[0x25F8A2E10](v13, v7);
      v31 = *(v5 + 8);
      v31(v7, v4);
      v31(v13, v4);
      sub_25DD624D4(v17);
      return v30 & 1;
    }

    (*(v5 + 8))(v13, v4);
LABEL_18:
    sub_25DD6561C(v17);
LABEL_33:
    v30 = 0;
    return v30 & 1;
  }

  sub_25DD65528(v17, v11);
  v19 = v11[1];
  v20 = v11[2];
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v22 = v11[3] >> 1;
  if (__OFSUB__(v22, v20))
  {
    __break(1u);
    goto LABEL_36;
  }

  v23 = v18[2];
  v24 = v18[3] >> 1;
  v25 = v24 - v23;
  if (__OFSUB__(v24, v23))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v22 - v20 != v25)
  {
LABEL_32:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25DD624D4(v17);
    goto LABEL_33;
  }

  v26 = v19 + v20;
  v27 = v18[1] + v23;
  if (v22 == v20 || v26 == v27 || v20 == v22)
  {
LABEL_14:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25DD624D4(v17);
    v30 = 1;
    return v30 & 1;
  }

  if (v20 < v22)
  {
    if (v23 != v24)
    {
      v32 = 0;
      if (v23 <= v24)
      {
        v33 = v18[3] >> 1;
      }

      else
      {
        v33 = v18[2];
      }

      v34 = v33 - v23;
      while (v34 != v32)
      {
        if (*(v26 + v32) != *(v27 + v32))
        {
          goto LABEL_32;
        }

        if (~v20 + v22 == v32)
        {
          goto LABEL_14;
        }

        v35 = v20 + v32 + 1;
        if (v35 < v20 || v35 >= v22)
        {
          goto LABEL_38;
        }

        if (v25 == ++v32)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_37;
    }

    goto LABEL_32;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for MultipartFrame(uint64_t a1)
{
  result = qword_27FCCB480;
  if (!qword_27FCCB480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25DD65528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartFrame(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD655D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25DD6561C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2738, "L?");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MultipartRawPart.headerFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25DD96814();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MultipartRawPart.headerFields.setter(uint64_t a1)
{
  v3 = sub_25DD96814();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MultipartRawPart.body.getter()
{
  type metadata accessor for MultipartRawPart(0);
}

uint64_t type metadata accessor for MultipartRawPart(uint64_t a1)
{
  result = qword_27FCCBA10;
  if (!qword_27FCCBA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MultipartRawPart.body.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MultipartRawPart(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MultipartRawPart.init(headerFields:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25DD96814();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for MultipartRawPart(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

BOOL static MultipartRawPart.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x25F8A2E10]() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for HTTPBody();
  v4 = type metadata accessor for MultipartRawPart(0);
  return static HTTPBody.== infix(_:_:)(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20)));
}

uint64_t MultipartRawPart.hash(into:)(uint64_t a1)
{
  sub_25DD96814();
  sub_25DD67490(&qword_27FCC22E8, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9B0]);
  sub_25DD96AC4();
  type metadata accessor for MultipartRawPart(0);
  type metadata accessor for HTTPBody();
  sub_25DD67490(&qword_27FCC22F0, type metadata accessor for HTTPBody, &protocol conformance descriptor for HTTPBody);
  return sub_25DD96AC4();
}

uint64_t MultipartRawPart.hashValue.getter()
{
  sub_25DD97964();
  sub_25DD96814();
  sub_25DD67490(&qword_27FCC22E8, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9B0]);
  sub_25DD96AC4();
  type metadata accessor for MultipartRawPart(0);
  type metadata accessor for HTTPBody();
  sub_25DD67490(&qword_27FCC22F0, type metadata accessor for HTTPBody, &protocol conformance descriptor for HTTPBody);
  sub_25DD96AC4();
  return sub_25DD979A4();
}

uint64_t sub_25DD65B38()
{
  sub_25DD97964();
  sub_25DD96814();
  sub_25DD67490(&qword_27FCC22E8, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9B0]);
  sub_25DD96AC4();
  type metadata accessor for HTTPBody();
  sub_25DD67490(&qword_27FCC22F0, type metadata accessor for HTTPBody, &protocol conformance descriptor for HTTPBody);
  sub_25DD96AC4();
  return sub_25DD979A4();
}

uint64_t sub_25DD65C2C(uint64_t a1)
{
  sub_25DD96814();
  sub_25DD67490(&qword_27FCC22E8, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9B0]);
  sub_25DD96AC4();
  type metadata accessor for HTTPBody();
  sub_25DD67490(&qword_27FCC22F0, type metadata accessor for HTTPBody, &protocol conformance descriptor for HTTPBody);
  return sub_25DD96AC4();
}

uint64_t sub_25DD65D10(uint64_t a1)
{
  sub_25DD97964();
  sub_25DD96814();
  sub_25DD67490(&qword_27FCC22E8, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9B0]);
  sub_25DD96AC4();
  type metadata accessor for HTTPBody();
  sub_25DD67490(&qword_27FCC22F0, type metadata accessor for HTTPBody, &protocol conformance descriptor for HTTPBody);
  sub_25DD96AC4();
  return sub_25DD979A4();
}

BOOL sub_25DD65E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x25F8A2E10]() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for HTTPBody();
  return static HTTPBody.== infix(_:_:)(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20)));
}

uint64_t MultipartPart.init(payload:filename:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = (a6 + *(type metadata accessor for MultipartPart(0, a4, a5, a4) + 36));
  result = (*(*(a4 - 8) + 32))(a6, a1, a4);
  *v11 = a2;
  v11[1] = a3;
  return result;
}

uint64_t static MultipartPart.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_25DD96B04())
  {
    v9 = *(type metadata accessor for MultipartPart(0, a3, a4, v8) + 36);
    v10 = (a1 + v9);
    v11 = *(a1 + v9 + 8);
    v12 = (a2 + v9);
    v13 = v12[1];
    if (v11)
    {
      if (v13)
      {
        v14 = *v10 == *v12 && v11 == v13;
        if (v14 || (sub_25DD975D4() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v13)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t MultipartPart.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_25DD96AC4();
  if (!*(v2 + *(a2 + 36) + 8))
  {
    return sub_25DD97984();
  }

  sub_25DD97984();

  return sub_25DD96B94();
}

uint64_t MultipartDynamicallyNamedPart.name.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t MultipartDynamicallyNamedPart.name.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 40));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t MultipartDynamicallyNamedPart.init(payload:filename:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = type metadata accessor for MultipartDynamicallyNamedPart(0, a6, a7, a4);
  v16 = (a8 + *(v15 + 36));
  v17 = (a8 + *(v15 + 40));
  result = (*(*(a6 - 8) + 32))(a8, a1, a6);
  *v16 = a2;
  v16[1] = a3;
  *v17 = a4;
  v17[1] = a5;
  return result;
}

uint64_t static MultipartDynamicallyNamedPart.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_25DD96B04() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for MultipartDynamicallyNamedPart(0, a3, a4, v8);
  v10 = *(v9 + 36);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    if (*v11 != *v13 || v12 != v14)
    {
      v16 = v9;
      v17 = sub_25DD975D4();
      v9 = v16;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  v18 = *(v9 + 40);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (v22)
    {
      v23 = *v19 == *v21 && v20 == v22;
      if (v23 || (sub_25DD975D4() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v22)
  {
    return 1;
  }

  return 0;
}

uint64_t MultipartDynamicallyNamedPart.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_25DD96AC4();
  if (*(v2 + *(a2 + 36) + 8))
  {
    sub_25DD97984();
    sub_25DD96B94();
  }

  else
  {
    sub_25DD97984();
  }

  if (!*(v2 + *(a2 + 40) + 8))
  {
    return sub_25DD97984();
  }

  sub_25DD97984();

  return sub_25DD96B94();
}

uint64_t sub_25DD66460(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  sub_25DD97964();
  a2(v5, a1);
  return sub_25DD979A4();
}

uint64_t sub_25DD664D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  sub_25DD97964();
  a4(v7, a2);
  return sub_25DD979A4();
}

id sub_25DD66544()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1 = sub_25DD96B14();
  [v0 setName_];

  return v0;
}

uint64_t sub_25DD665B8()
{
  [*(v0 + 40) lock];
  v1 = *(v0 + 48);
  [*(v0 + 40) unlock];
  return v1;
}

uint64_t sub_25DD66618(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = swift_allocObject();
  sub_25DD66670(a1, a2, a3);
  return v6;
}

uint64_t sub_25DD66670(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v8 = sub_25DD96B14();
  [v7 setName_];

  *(v3 + 32) = a2;
  *(v3 + 40) = v7;
  *(v3 + 48) = 0;
  *(v3 + 24) = a1;
  *(v3 + 16) = v6;
  return v3;
}

uint64_t MultipartBody.deinit()
{

  return v0;
}

uint64_t MultipartBody.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MultipartBody.hashValue.getter()
{
  sub_25DD97964();
  MEMORY[0x25F8A3F90](v0);
  return sub_25DD979A4();
}

uint64_t sub_25DD66864(uint64_t a1)
{
  sub_25DD97964();
  MultipartBody.hash(into:)();
  return sub_25DD979A4();
}

uint64_t MultipartBody.__allocating_init<A>(_:iterationBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v11;
  (*(v8 + 16))(v10, a1);
  v13 = sub_25DD3CC94(v10, *(v4 + 80), a3, a4);
  v15 = v14;
  v19 = v12;
  v16 = swift_allocObject();
  sub_25DD66670(v13, v15, &v19);
  (*(v8 + 8))(a1, a3);
  return v16;
}

uint64_t sub_25DD669D8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_25DD67140(a1, a2, a3);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v5;
}

uint64_t MultipartBody.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD672EC(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t MultipartBody.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  v4 = sub_25DD96E34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-v6];
  (*(v5 + 16))(&v14[-v6], a1, v4);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_25DD3CC94(v7, v3, v4, WitnessTable);
  v11 = v10;
  v15 = 0;
  v12 = swift_allocObject();
  sub_25DD66670(v9, v11, &v15);
  (*(v5 + 8))(a1, v4);
  return v12;
}

{
  v3 = *(v1 + 80);
  v4 = sub_25DD96DE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-v6];
  (*(v5 + 16))(&v14[-v6], a1, v4);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_25DD3CC94(v7, v3, v4, WitnessTable);
  v11 = v10;
  v15 = 0;
  v12 = swift_allocObject();
  sub_25DD66670(v9, v11, &v15);
  (*(v5 + 8))(a1, v4);
  return v12;
}

uint64_t MultipartBody.__allocating_init(arrayLiteral:)(uint64_t a1)
{
  v1 = sub_25DD67324(a1);

  return v1;
}

uint64_t sub_25DD66D9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_25DD67324(a1);

  *a2 = v3;
  return result;
}

void *MultipartBody.makeAsyncIterator()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  [v1[5] lock];
  LOBYTE(v16[0]) = *(v1 + 16);
  v17 = 0;
  if (static IterationBehavior.== infix(_:_:)(v16, &v17) && *(v1 + 48) == 1)
  {
    v6 = *(v3 + 80);
    type metadata accessor for MultipartBody.TooManyIterationsError(0, v6, v4, v5);
    swift_getWitnessTable();
    v7 = swift_allocError();
    swift_willThrow();
    *(v1 + 48) = 1;
    [v1[5] unlock];
    if (v7)
    {
      result = swift_allocObject();
      result[2] = v6;
      result[3] = v7;
      *a1 = &unk_25DD9E400;
      a1[1] = result;
      return result;
    }
  }

  else
  {
    *(v1 + 48) = 1;
    [v1[5] unlock];
  }

  v9 = v1[3];
  v10 = *(v3 + 80);
  v16[0] = sub_25DD3CF4C(v9);
  v16[1] = v11;
  v14 = type metadata accessor for AnyIterator(0, v10, v12, v13);
  WitnessTable = swift_getWitnessTable();
  return sub_25DD66F80(v16, v10, v14, WitnessTable, a1);
}

void *sub_25DD66F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocBox();
  (*(*(a3 - 8) + 32))(v11, a1, a3);
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = v10;
  *a5 = &unk_25DD9E010;
  a5[1] = result;
  return result;
}

uint64_t sub_25DD67030@<X0>(void *a1@<X8>)
{
  MultipartBody.makeAsyncIterator()(a1);
}

uint64_t MultipartBody.Iterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25DD3C9E0, 0, 0);
}

uint64_t sub_25DD670A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25DD1BF14;

  return MultipartBody.Iterator.next()(a1);
}

uint64_t sub_25DD67140(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for WrappedSyncSequence(0, v10, v11, v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v22[-v13];
  LOBYTE(a2) = *a2;
  (*(v7 + 16))(v9, a1, a3);
  sub_25DD3D184(v9, a3, v14);
  v15 = *(v3 + 80);
  WitnessTable = swift_getWitnessTable();
  v17 = sub_25DD3CC94(v14, v15, v12, WitnessTable);
  v19 = v18;
  v23 = a2;
  v20 = swift_allocObject();
  sub_25DD66670(v17, v19, &v23);
  return v20;
}

uint64_t sub_25DD67324(uint64_t a1)
{
  v3 = a1;
  v1 = sub_25DD96D84();
  swift_getWitnessTable();
  v4 = 1;
  return sub_25DD67140(&v3, &v4, v1);
}

uint64_t sub_25DD67394(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25DD1C68C;

  return sub_25DD3C648(a1, v6, v7, v4, v5);
}

uint64_t sub_25DD67490(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25DD67570(uint64_t a1)
{
  result = sub_25DD96814();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HTTPBody();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_25DD675F4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_25DD67984();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_25DD6767C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_25DD677C0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      v18[1] = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      v18[1] = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_25DD67984()
{
  if (!qword_27FCC24E8)
  {
    v0 = sub_25DD96F04();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCC24E8);
    }
  }
}

void sub_25DD679D4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_25DD67984();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_25DD67A5C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_25DD67BA8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
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
      if (v6 < 0x7FFFFFFE)
      {
        v19 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = 0;
          v19[1] = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v19[1] = a2;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_25DD67E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD67E64()
{
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25DD1BF14;

  return sub_25DD67068(v3, v2);
}

uint64_t MultipartRawPart.init(name:filename:headerFields:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v32 = a6;
  v33 = a5;
  v31 = a7;
  v11 = sub_25DD969E4();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_25DD96814();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v30 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - v16;
  v34 = sub_25DD06C04(MEMORY[0x277D84F90]);
  if (a2)
  {
    sub_25DD03C10(a1, a2, 0, 0);
  }

  if (a4)
  {
    sub_25DD03C10(a3, a4, 0, 1uLL);
  }

  nullsub_1();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = *(v13 + 16);
  v25 = v24(v17, v33, v12);
  MEMORY[0x25F8A2FE0](v25);
  sub_25DD04148(v19, v21, v23);

  sub_25DD96834();
  v26 = v30;
  v24(v30, v17, v12);
  MultipartRawPart.init(headerFields:body:)(v26, v32, v31);
  v27 = *(v13 + 8);
  v27(v33, v12);
  return (v27)(v17, v12);
}

uint64_t sub_25DD68198(unint64_t a1)
{
  v2 = sub_25DD969E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x25F8A2FE0](v4);
  MEMORY[0x25F8A2E40](v6);
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  if (v8)
  {
    sub_25DD04144();
    if (v9)
    {
      v10 = v9;
      if (*(v9 + 16))
      {
        v11 = sub_25DD043CC(0, a1);
        if (v12)
        {
          v13 = *(*(v10 + 56) + 16 * v11);

          return v13;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_25DD682F0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25DD969E4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  MEMORY[0x25F8A2FE0](v9);
  MEMORY[0x25F8A2E40](v11);
  v13 = v12;
  result = (*(v7 + 8))(v11, v6);
  if (v13 && (result = sub_25DD04144(), v16))
  {
    v17 = result;
    v18 = v15;
    v26 = v16;
    sub_25DD03828(0, a1);

    v19 = sub_25DD03C10(a2, a3, 0, a1);
    MEMORY[0x25F8A2FE0](v19);
    sub_25DD04148(v17, v18, v26);
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    MEMORY[0x25F8A2FE0](v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2180, &qword_25DD98820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DD98100;
    *(inited + 32) = 0;
    *(inited + 40) = a1;
    *(inited + 48) = a2;
    *(inited + 56) = a3;
    sub_25DD03828(0, a1);
    sub_25DD06C04(inited);
    swift_setDeallocating();
    sub_25DD687CC(inited + 32);
    nullsub_1();
    sub_25DD04148(v22, v23, v24);
  }

  return sub_25DD96834();
}

uint64_t sub_25DD68560@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25DD68198(0);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MultipartRawPart.name.setter(uint64_t a1, uint64_t a2)
{
  sub_25DD682F0(0, a1, a2);
}

uint64_t (*MultipartRawPart.name.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = sub_25DD68198(0);
  a1[1] = v3;
  return sub_25DD6864C;
}

uint64_t sub_25DD6865C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25DD68198(1uLL);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MultipartRawPart.filename.setter(uint64_t a1, uint64_t a2)
{
  sub_25DD682F0(1uLL, a1, a2);
}

uint64_t (*MultipartRawPart.filename.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = sub_25DD68198(1uLL);
  a1[1] = v3;
  return sub_25DD68748;
}

uint64_t sub_25DD68750(uint64_t *a1, char a2, unint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {

    sub_25DD682F0(a3, v5, v4);
  }

  else
  {
    sub_25DD682F0(a3, v5, v4);
  }
}

uint64_t sub_25DD687CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2188, &qword_25DD98828);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25DD68834()
{
  result = qword_27FCC2748;
  if (!qword_27FCC2748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2748);
  }

  return result;
}

uint64_t sub_25DD68888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v12 = &v14 - v11;
  (*(v5 + 16))(v8, v2, v4);
  sub_25DD96DF4();
  return sub_25DD689D4(v12, v4, v9, a2);
}

uint64_t sub_25DD689D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, a1, AssociatedTypeWitness);
  v10 = type metadata accessor for MultipartRawPartsToFramesSequence.Iterator(0, a2, a3, v9);
  return sub_25DD68C74(a1, a2, a3, a4 + *(v10 + 36));
}

uint64_t sub_25DD68A84@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t sub_25DD68B00(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 40);

  return v5(v2, a1, AssociatedTypeWitness);
}

uint64_t sub_25DD68B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = *(a1 + 36);
  v6 = type metadata accessor for MultipartRawPartsToFramesSequence.Serializer(0, *(a1 + 16), *(a1 + 24), a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v3 + v5, v6);
}

uint64_t sub_25DD68BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 36);
  v7 = type metadata accessor for MultipartRawPartsToFramesSequence.Serializer(0, *(a2 + 16), *(a2 + 24), a4);
  v8 = *(*(v7 - 8) + 40);

  return v8(v4 + v6, a1, v7);
}

uint64_t sub_25DD68C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  result = type metadata accessor for MultipartRawPartsToFramesSequence.Serializer(0, a2, a3, v9);
  v11 = (a4 + *(result + 36));
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_25DD68D48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v7 = type metadata accessor for MultipartRawPartsToFramesSequence.Serializer(0, *(a2 + 16), *(a2 + 24), v6);
  *v5 = v2;
  v5[1] = sub_25DD1BF14;

  return sub_25DD68E0C(a1, v7);
}

uint64_t sub_25DD68E0C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_25DD68E30, 0, 0);
}

uint64_t sub_25DD68E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 56);
  *(v4 + 176) = *(v5 + 36);
  v6 = *(v5 + 16);
  *(v4 + 72) = v6;
  v7 = *(v5 + 24);
  *(v4 + 80) = v7;
  *(v4 + 88) = type metadata accessor for MultipartRawPartsToFramesSequence.StateMachine(0, v6, v7, a4);
  sub_25DD6981C((v4 + 16));
  v8 = *(v4 + 16);
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = swift_task_alloc();
      *(v4 + 120) = v9;
      *v9 = v4;
      v9[1] = sub_25DD69158;
      v10 = *(v4 + 64);
      v11 = *(v4 + 48);

      return sub_25DD6A450(v11, v10, v6, v7);
    }

    else
    {
      v16 = *(v4 + 24);
      *(v4 + 32) = v8;
      *(v4 + 40) = v16;
      v17 = swift_task_alloc();
      *(v4 + 96) = v17;
      *v17 = v4;
      v17[1] = sub_25DD6901C;

      return HTTPBody.Iterator.next()();
    }
  }

  else
  {
    v13 = *(v4 + 48);
    v14 = type metadata accessor for MultipartFrame(0);
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    v15 = *(v4 + 8);

    return v15();
  }
}

uint64_t sub_25DD6901C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v5;
  v9[13] = a1;
  v9[14] = v4;

  if (v4)
  {
    v10 = sub_25DD695FC;
  }

  else
  {
    v9[17] = a4;
    v9[18] = a3;
    v9[19] = a2;
    v10 = sub_25DD69284;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_25DD69158()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_25DD695E4;
  }

  else
  {
    v2 = sub_25DD6926C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD69284()
{
  v1 = sub_25DD6A3B8(v0[13]);
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = swift_task_alloc();
      v0[20] = v5;
      *v5 = v0;
      v5[1] = sub_25DD69464;
      v6 = v0[9];
      v7 = v0[10];
      v8 = v0[8];
      v9 = v0[6];

      return sub_25DD6A450(v9, v8, v6, v7);
    }

    v13 = v0[6];
    v14 = v1;
    v15 = v2;
    v16 = v3;
    v17 = v4;

    swift_unknownObjectRelease();
    *v13 = v14;
    v13[1] = v15;
    v13[2] = v16;
    v13[3] = v17;
    v18 = type metadata accessor for MultipartFrame(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
  }

  else
  {
    v11 = v0[6];

    swift_unknownObjectRelease();
    v12 = type metadata accessor for MultipartFrame(0);
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_25DD69464()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_25DD69660;
  }

  else
  {
    v2 = sub_25DD69578;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD69578()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD695FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD69660()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD696CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25DD1C68C;

  return sub_25DD68D48(a1, a2);
}

uint64_t sub_25DD69774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25DD68888(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

unint64_t sub_25DD697D4@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_25DD6A8D8(v2, v3);
}

unint64_t sub_25DD697E0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_25DD6A8EC(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t sub_25DD6981C@<X0>(uint64_t *a1@<X8>)
{
  result = *v1;
  v3 = v1[1];
  if (*v1)
  {
    if (result == 2)
    {
      *a1 = 0;
      a1[1] = 0;
    }

    else
    {
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      *a1 = result;
      a1[1] = v3;
    }
  }

  else
  {
    v4 = v1[1];
    sub_25DD6A8EC(0, v3);
    v3 = v4;
    result = 0;
    *v1 = xmmword_25DD9E4F0;
    *a1 = xmmword_25DD9E4F0;
  }

  return sub_25DD6A8D8(result, v3);
}

uint64_t sub_25DD698BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v7 = sub_25DD96814();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v29 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MultipartRawPartsToFramesSequence.StateMachine.ReceivedPartAction(0, a3, a4, v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v32 = &v29 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v18 = &v29 - v17;
  v19 = *(v16 + 48);
  v30 = v12;
  v20 = *(v12 + 16);
  v20(&v29 - v17, v31, v11);
  v20(&v18[v19], a2, v11);
  v31 = v8;
  v21 = *(v8 + 48);
  if (v21(v18, 1, v7) == 1)
  {
    v22 = 1;
    if (v21(&v18[v19], 1, v7) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v20(v32, v18, v11);
    if (v21(&v18[v19], 1, v7) != 1)
    {
      v23 = v31;
      v24 = &v18[v19];
      v25 = v29;
      (*(v31 + 32))(v29, v24, v7);
      v26 = v32;
      v22 = MEMORY[0x25F8A2E10](v32, v25);
      v27 = *(v23 + 8);
      v27(v25, v7);
      v27(v26, v7);
LABEL_8:
      v15 = v30;
      goto LABEL_9;
    }

    (*(v31 + 8))(v32, v7);
  }

  v22 = 0;
  v11 = TupleTypeMetadata2;
LABEL_9:
  (*(v15 + 8))(v18, v11);
  return v22 & 1;
}

uint64_t sub_25DD69C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v2, a2);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return MEMORY[0x25F8A3F90](0);
  }

  (*(v5 + 32))(v8, v10, v4);
  MEMORY[0x25F8A3F90](1);
  sub_25DD6A918();
  sub_25DD96AC4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25DD69DD0(uint64_t a1)
{
  sub_25DD97964();
  sub_25DD69C00(v3, a1);
  return sub_25DD979A4();
}

uint64_t sub_25DD69E20(uint64_t a1, uint64_t a2)
{
  sub_25DD97964();
  sub_25DD69C00(v4, a2);
  return sub_25DD979A4();
}

uint64_t sub_25DD69E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2750, &qword_25DD9E900);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v21 - v6;
  v8 = type metadata accessor for MultipartRawPart(0);
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2 == 2)
  {
    v14 = sub_25DD96814();
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }

  else if (*v2 == 1)
  {
    sub_25DD6A970(a1, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_25DD6A9E0(v7);
      sub_25DD6A8EC(*v2, *(v2 + 8));
      *v2 = xmmword_25DD9D830;
      v13 = sub_25DD96814();
      return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
    }

    else
    {
      sub_25DD6AA48(v7, v12);
      v16 = v2;
      HTTPBody.makeAsyncIterator()(v21);
      v17 = v21[0];
      v18 = v21[1];
      sub_25DD6A8EC(*v16, *(v16 + 8));
      *v16 = v17;
      *(v16 + 8) = v18;
      v19 = sub_25DD96814();
      v20 = *(v19 - 8);
      (*(v20 + 16))(a2, v12, v19);
      sub_25DD6AAAC(v12);
      return (*(v20 + 56))(a2, 0, 1, v19);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_25DD6A138(_BOOL8 result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (!result)
  {
    return !a5;
  }

  if (result)
  {
    return a5 == 1;
  }

  if (a5 < 2)
  {
    return 0;
  }

  v8 = a4 >> 1;
  v9 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_30;
  }

  v10 = a8 >> 1;
  v11 = (a8 >> 1) - a7;
  if (__OFSUB__(a8 >> 1, a7))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v9 != v11)
  {
    return 0;
  }

  if (!v9)
  {
    return 1;
  }

  result = 1;
  if (a2 + a3 != a6 + a7 && v8 != a3)
  {
    if (v8 <= a3)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    if (v10 == a7)
    {
      return 0;
    }

    v12 = 0;
    if (a7 <= v10)
    {
      v13 = a8 >> 1;
    }

    else
    {
      v13 = a7;
    }

    v14 = v13 - a7;
    while (v14 != v12)
    {
      if (*(a2 + a3 + v12) != *(a6 + a7 + v12))
      {
        return 0;
      }

      if (~a3 + v8 == v12)
      {
        return 1;
      }

      v15 = a3 + v12 + 1;
      if (v15 < a3 || v15 >= v8)
      {
        goto LABEL_32;
      }

      result = 0;
      if (v11 == ++v12)
      {
        return result;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  return result;
}

uint64_t sub_25DD6A230(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2 < 2)
  {
    return MEMORY[0x25F8A3F90](a2);
  }

  MEMORY[0x25F8A3F90](2);
  v9 = a5 >> 1;
  result = v9 - a4;
  if (__OFSUB__(v9, a4))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = MEMORY[0x25F8A3F90](result);
  v10 = __OFSUB__(v9, a4);
  v11 = v9 - a4;
  if (!v11)
  {
    return result;
  }

  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v12 = a3 + a4;
  do
  {
    ++v12;
    result = sub_25DD97984();
    --v11;
  }

  while (v11);
  return result;
}

uint64_t sub_25DD6A2B8(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_25DD97964();
  sub_25DD6A230(v9, a1, a2, a3, a4);
  return sub_25DD979A4();
}

uint64_t sub_25DD6A338(uint64_t a1)
{
  sub_25DD97964();
  sub_25DD6A230(v3, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return sub_25DD979A4();
}

uint64_t sub_25DD6A3B8(uint64_t result)
{
  if (*v1 == 2)
  {
    return 0;
  }

  if (*v1 >= 2uLL)
  {
    if (result)
    {
      return swift_unknownObjectRetain();
    }

    else
    {
      sub_25DD6A8EC(*v1, *(v1 + 8));
      *v1 = xmmword_25DD9E4F0;
      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25DD6A450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MultipartRawPartsToFramesSequence.StateMachine.ReceivedPartAction(0, a3, a4, a4);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2750, &qword_25DD9E900);
  v5 = swift_task_alloc();
  v4[7] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_task_alloc();
  v4[8] = v8;
  *v8 = v4;
  v8[1] = sub_25DD6A5CC;

  return MEMORY[0x282200308](v5, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_25DD6A5CC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_25DD6A86C;
  }

  else
  {
    v2 = sub_25DD6A6E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD6A6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[6];
  v5 = v4[7];
  type metadata accessor for MultipartRawPartsToFramesSequence.Serializer(0, v4[4], v4[5], a4);
  sub_25DD69E70(v5, v6);
  sub_25DD6A9E0(v5);
  v7 = sub_25DD96814();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v9 = type metadata accessor for MultipartFrame(0);
    v10 = 1;
  }

  else
  {
    (*(v8 + 32))(v4[2], v4[6], v7);
    v9 = type metadata accessor for MultipartFrame(0);
    swift_storeEnumTagMultiPayload();
    v10 = 0;
  }

  (*(*(v9 - 8) + 56))(v4[2], v10, 1, v9);

  v11 = v4[1];

  return v11();
}

uint64_t sub_25DD6A86C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_25DD6A8D8(unint64_t result, uint64_t a2)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_25DD6A8EC(unint64_t result, uint64_t a2)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_25DD6A918()
{
  result = qword_27FCC22E8;
  if (!qword_27FCC22E8)
  {
    sub_25DD96814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC22E8);
  }

  return result;
}

uint64_t sub_25DD6A970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2750, &qword_25DD9E900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD6A9E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2750, &qword_25DD9E900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25DD6AA48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartRawPart(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD6AAAC(uint64_t a1)
{
  v2 = type metadata accessor for MultipartRawPart(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25DD6AB8C(int *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFC)
  {
    v8 = 2147483644;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v10 = *(v6 + 80) & 0xF8 | 7;
  v11 = v9 + v10;
  v12 = v9 + 7;
  if (v8 < a2)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8) + (v11 & ~v10) + 16;
    v14 = v13 & 0xFFFFFFF8;
    if ((v13 & 0xFFFFFFF8) != 0)
    {
      v15 = 2;
    }

    else
    {
      v15 = a2 - v8 + 1;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *(a1 + v13);
        if (!v18)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v18 = *(a1 + v13);
        if (!v18)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_27;
      }

      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_27;
      }
    }

    v20 = v18 - 1;
    if (v14)
    {
      v20 = 0;
      v21 = *a1;
    }

    else
    {
      v21 = 0;
    }

    v24 = v8 + (v21 | v20);
    return (v24 + 1);
  }

LABEL_27:
  if (v7 < 0x7FFFFFFC)
  {
    v23 = *((v12 + ((a1 + v11) & ~v10)) & 0xFFFFFFFFFFFFFFF8);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    v24 = v23 - 3;
    if (v24 < 0)
    {
      v24 = -1;
    }

    return (v24 + 1);
  }

  v22 = *(v6 + 48);

  return v22(a1);
}

void sub_25DD6AD4C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFC)
  {
    v10 = 2147483644;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = *(v7 + 80) & 0xF8 | 7;
  v12 = v9 + v11;
  v13 = (v9 + v11) & ~v11;
  v14 = v9 + 7;
  v15 = (v14 & 0xFFFFFFFFFFFFFFF8) + v13 + 16;
  if (v10 >= a3)
  {
    v18 = 0;
    v19 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if ((v14 & 0xFFFFFFF8) + v13 == -16)
    {
      v16 = a3 - v10 + 1;
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

    v19 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
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

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v8 <= 0x7FFFFFFB)
      {
        v23 = ((v14 + ((a1 + v12) & ~v11)) & 0xFFFFFFFFFFFFFFF8);
        if (a2 >= 0x7FFFFFFD)
        {
          *v23 = (a2 - 2147483645);
          v23[1] = 0;
        }

        else
        {
          *v23 = (a2 + 2);
        }
      }

      else
      {
        v22 = *(v7 + 56);

        v22(a1, a2);
      }

      return;
    }
  }

  if (v15)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  if (v15)
  {
    v21 = ~v10 + a2;
    bzero(a1, v15);
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

uint64_t sub_25DD6AF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD6AFA4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25DD6B004(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_25DD6B05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD6B098(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD6B0F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_25DD6B144(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

uint64_t sub_25DD6B17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD6B1B8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD6B20C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25DD6B280(uint64_t a1)
{
  v1 = sub_25DD96814();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_25DD6B300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD6B36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v8 <= 0x3F)
  {
    result = a4(319, v6, v5);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD6B424(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFC)
  {
    v8 = 2147483644;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v11 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = a2 - v8 + 1;
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
        v15 = *(a1 + v10);
        if (!v15)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v15 = *(a1 + v10);
        if (!v15)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      if (!v14)
      {
        goto LABEL_28;
      }

      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    v17 = v15 - 1;
    if (v11)
    {
      v17 = 0;
      LODWORD(v11) = *a1;
    }

    v18 = v8 + (v11 | v17);
    return (v18 + 1);
  }

LABEL_28:
  if (v7 < 0x7FFFFFFC)
  {
    v20 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    v18 = v20 - 3;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v19 = *(v6 + 48);

  return v19(a1);
}