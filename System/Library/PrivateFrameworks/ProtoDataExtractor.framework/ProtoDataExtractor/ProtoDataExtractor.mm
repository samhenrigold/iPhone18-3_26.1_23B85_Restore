uint64_t sub_260F25BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260F49658();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_260F25CB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_260F49658();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 1;
  }

  return result;
}

uint64_t sub_260F25D88(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_260F49498();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_260F25E34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_260F49498();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_260F25ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 11)
  {
    v4 = *(a1 + 16) >> 60;
    v5 = ((4 * v4) & 0xC) == 0;
    v6 = ((4 * v4) & 0xC | (v4 >> 2)) ^ 0xF;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = sub_260F49498();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_260F25F88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
    *(result + 8) = 0;
    *(result + 16) = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v7 = sub_260F49498();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_260F26034(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F20, &qword_260F4B0A0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for PFAEventMapping(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_260F26148(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F20, &qword_260F4B0A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = type metadata accessor for PFAEventMapping(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_260F26258()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260F26290(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AsyncIngestConfig(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE60958, qword_260F4B1A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_260F263C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AsyncIngestConfig(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE60958, qword_260F4B1A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_260F264F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(*(*(a3 + 16) - 8) + 48))(a1, a2);
  if (v3 >= 2)
  {
    return v3 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260F2653C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = (a2 + 1);
  }

  else
  {
    v4 = 0;
  }

  return (*(*(*(a4 + 16) - 8) + 56))(a1, v4, a3);
}

uint64_t sub_260F26574()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260F265BC()
{
  v1 = sub_260F493B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_260F26694()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260F266DC()
{
  v1 = sub_260F493B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_260F267B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F20, &qword_260F4B0A0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[8];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for PFAEventMapping(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[9];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[10]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_260F268CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F20, &qword_260F4B0A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
  }

  else
  {
    result = type metadata accessor for PFAEventMapping(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[10]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_260F269DC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_260F26A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = *(a3 + 16);
    v10 = type metadata accessor for PFAIngestConfig(0, v9, a3, a4);
    v13 = *(v10 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v10;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = type metadata accessor for PFAIngestConfig(255, v9, v11, v12);
      WitnessTable = swift_getWitnessTable();
      v20 = type metadata accessor for DataExtractor(0, v17, WitnessTable, v19);
      v21 = *(*(v20 - 8) + 48);
      v22 = a1 + *(a3 + 40);

      return v21(v22, a2, v20);
    }
  }
}

uint64_t sub_260F26B74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = a3;
    v8 = *(a4 + 16);
    v9 = type metadata accessor for PFAIngestConfig(0, v8, a3, a4);
    v12 = *(v9 - 8);
    if (*(v12 + 84) == v7)
    {
      v13 = v9;
      v14 = *(v12 + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }

    else
    {
      v16 = type metadata accessor for PFAIngestConfig(255, v8, v10, v11);
      WitnessTable = swift_getWitnessTable();
      v19 = type metadata accessor for DataExtractor(0, v16, WitnessTable, v18);
      v20 = *(*(v19 - 8) + 56);
      v21 = v5 + *(a4 + 40);

      return v20(v21, a2, a2, v19);
    }
  }

  return result;
}

uint64_t sub_260F26CE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F20, &qword_260F4B0A0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[8];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for EventPath(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[9];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[10]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_260F26DFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F20, &qword_260F4B0A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
  }

  else
  {
    result = type metadata accessor for EventPath(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[10]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_260F26F0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_260F281D0(a1, a2);
  }

  return a1;
}

uint64_t sub_260F26F20(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_260F26F30(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

Swift::Bool __swiftcall AllDemands.meetsDemand()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = -v2;
    v5 = -1;
    do
    {
      v6 = v4 + v5 == -1;
      if (v4 + v5 == -1)
      {
        break;
      }

      if (++v5 >= *(v1 + 16))
      {
        __break(1u);
        return v3;
      }

      v7 = v3 + 40;
      sub_260F27014(v3, v12);
      v8 = v13;
      v9 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v10 = (*(v9 + 8))(v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v3 = v7;
    }

    while ((v10 & 1) != 0);
  }

  else
  {
    v6 = 1;
  }

  LOBYTE(v3) = v6;
  return v3;
}

uint64_t sub_260F27014(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_260F27118(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_260F27160(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_260F271E8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_260F27248(uint64_t a1, id *a2)
{
  result = sub_260F496F8();
  *a2 = 0;
  return result;
}

uint64_t sub_260F272C0(uint64_t a1, id *a2)
{
  v3 = sub_260F49708();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_260F27340@<X0>(uint64_t *a1@<X8>)
{
  sub_260F49718();
  v2 = sub_260F496E8();

  *a1 = v2;
  return result;
}

uint64_t sub_260F27384@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_260F496E8();

  *a2 = v3;
  return result;
}

uint64_t sub_260F273CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_260F49718();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_260F273F8(uint64_t a1)
{
  v2 = sub_260F274F8(&qword_27FE60738, &unk_260F4A78C);
  v3 = sub_260F274F8(&unk_27FE60740, &unk_260F4A72C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_260F274F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BMStreamIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_260F2753C()
{
  v0 = sub_260F49718();
  v1 = MEMORY[0x2666F59F0](v0);

  return v1;
}

uint64_t sub_260F27578(uint64_t a1)
{
  sub_260F49718();
  sub_260F49738();
}

uint64_t sub_260F275CC(uint64_t a1)
{
  sub_260F49718();
  sub_260F49A78();
  sub_260F49738();
  v1 = sub_260F49A98();

  return v1;
}

uint64_t sub_260F27640(void *a1, uint64_t *a2)
{
  v2 = sub_260F49718();
  v4 = v3;
  if (v2 == sub_260F49718() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_260F499F8();
  }

  return v7 & 1;
}

Swift::Bool __swiftcall AnyDemand.meetsDemand()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = -v2;
    v5 = -1;
    while (1)
    {
      if (v4 + v5 == -1)
      {
        LOBYTE(v3) = 0;
        return v3;
      }

      if (++v5 >= *(v1 + 16))
      {
        break;
      }

      v6 = v3 + 40;
      sub_260F27014(v3, v10);
      v7 = v11;
      v8 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      LOBYTE(v7) = (*(v8 + 8))(v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v10);
      v3 = v6;
      if (v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    LOBYTE(v3) = 1;
  }

  return v3;
}

uint64_t static BMFeedbackLearningUserInteraction.messageFilteringPolicy()@<X0>(uint64_t a1@<X8>)
{
  result = sub_260F49878();
  if (!v1)
  {
    *a1 = result;
    *(a1 + 8) = 1;
  }

  return result;
}

uint64_t static BMIntelligenceFlowTranscriptDatastreamEvent.messageFilteringPolicy()@<X0>(uint64_t a1@<X8>)
{
  result = sub_260F49878();
  if (!v1)
  {
    *a1 = result;
    *(a1 + 8) = 1;
  }

  return result;
}

Swift::Bool __swiftcall CollectionPolicy.canCollect()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = -v2;
    v5 = -1;
    do
    {
      v6 = v4 + v5 == -1;
      if (v4 + v5 == -1)
      {
        break;
      }

      if (++v5 >= *(v1 + 16))
      {
        __break(1u);
        return v3;
      }

      v7 = v3 + 40;
      sub_260F27014(v3, v12);
      v8 = v13;
      v9 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v10 = (*(v9 + 8))(v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v3 = v7;
    }

    while ((v10 & 1) != 0);
  }

  else
  {
    v6 = 1;
  }

  LOBYTE(v3) = v6;
  return v3;
}

uint64_t get_enum_tag_for_layout_string_18ProtoDataExtractor22MessageFilteringPolicyO(uint64_t a1)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_260F279C0(uint64_t a1, unsigned int a2)
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

uint64_t sub_260F27A08(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_260F27A50(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

id sub_260F27A90()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result effectiveBoolValueForSetting_];

    return (v2 == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_260F27C50()
{
  v0 = sub_260F49638();
  __swift_allocate_value_buffer(v0, qword_2810D4868);
  __swift_project_value_buffer(v0, qword_2810D4868);
  return sub_260F49628();
}

uint64_t DataExtractor.getEventData(data:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v24 = a1;
  v5 = sub_260F49658();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EventPath(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  v12 = *(a3 + 24);
  (*(v12 + 40))(v13, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_260F29878(v11, type metadata accessor for EventPath);
      return 0;
    }

    v15 = v24;
    sub_260F28238(v24, a2);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    v15 = sub_260F27F78(v8, v24, a2, a3);
    a2 = v16;
    (*(v6 + 8))(v8, v5);
    if (a2 >> 60 == 15)
    {
      return v15;
    }
  }

  (*(v12 + 56))(&v25, v13, v12);
  v17 = v26;
  if (v26 != 255)
  {
    v18 = v25;

    v27 = v18;
    v28 = v17;
    v19 = sub_260F2A76C(&v27, v15, a2);
    v21 = v20;
    sub_260F28224(v18, v17);

    if (v21 >> 60 != 15)
    {
      sub_260F281D0(v15, a2);
      return v19;
    }
  }

  return v15;
}

uint64_t sub_260F27F78(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60888, &unk_260F4ABA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE60F80, &qword_260F4B200);
  v9 = sub_260F49658();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_260F4AB10;
  (*(v10 + 16))(v12 + v11, a1, v9);
  sub_260F2F1F8(v12);
  swift_setDeallocating();
  v13 = *(v10 + 8);
  v13(v12 + v11, v9);
  swift_deallocClassInstance();
  sub_260F28730(a3, v8);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60870, qword_260F4AB40);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_260F2AA58(v8, &qword_27FE60888, &unk_260F4ABA0);
    return 0;
  }

  else
  {
    v15 = *&v8[*(v14 + 48)];
    v13(v8, v9);
  }

  return v15;
}

uint64_t sub_260F281D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_260F28224(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

uint64_t sub_260F28238(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t DataExtractor.getMultiEventData(data:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v45 = a2;
  v46 = a4;
  v6 = sub_260F49658();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EventPath(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 16);
  v13 = *(a3 + 24);
  (*(v13 + 40))(v14, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v44 = *(v7 + 32);
    v44(v9, v12, v6);
    v22 = sub_260F27F78(v9, a1, v45, a3);
    if (v23 >> 60 == 15)
    {
      (*(v7 + 8))(v9, v6);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60870, qword_260F4AB40);
      return (*(*(v24 - 8) + 56))(v46, 1, 1, v24);
    }

    v32 = v22;
    v33 = v23;
    v45 = (v7 + 32);
    (*(v13 + 56))(&v47, v14, v13);
    v34 = v48;
    if (v48 != 255)
    {
      v35 = v47;

      v49 = v35;
      v50 = v34;
      v36 = sub_260F2A76C(&v49, v32, v33);
      v38 = v37;
      sub_260F28224(v35, v34);

      if (v38 >> 60 != 15)
      {
        sub_260F26F0C(v32, v33);
        v32 = v36;
        v33 = v38;
      }
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60870, qword_260F4AB40);
    v40 = v46;
    v41 = &v46[*(v39 + 48)];
    v44(v46, v9, v6);
    *v41 = v32;
    v41[1] = v33;
    return (*(*(v39 - 8) + 56))(v40, 0, 1, v39);
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v13 + 56))(&v47, v14, v13);
    v16 = v48;
    if (v48 == 255)
    {
      v18 = v45;
    }

    else
    {
      v17 = v47;

      v49 = v17;
      v50 = v16;
      v18 = v45;
      v19 = sub_260F2A76C(&v49, a1, v45);
      v21 = v20;
      sub_260F28224(v17, v16);

      if (v21 >> 60 != 15)
      {
        a1 = v19;
        v18 = v21;
LABEL_17:
        sub_260F28730(v18, v46);
        sub_260F281D0(a1, v18);
      }
    }

    sub_260F28238(a1, v18);
    goto LABEL_17;
  }

  (*(v13 + 56))(&v47, v14, v13);
  v26 = v48;
  if (v48 == 255)
  {
    v28 = v45;
    goto LABEL_19;
  }

  v27 = v47;

  v49 = v27;
  v50 = v26;
  v28 = v45;
  v29 = sub_260F2A76C(&v49, a1, v45);
  v31 = v30;
  sub_260F28224(v27, v26);

  if (v31 >> 60 == 15)
  {
LABEL_19:
    sub_260F28238(a1, v28);
    goto LABEL_20;
  }

  a1 = v29;
  v28 = v31;
LABEL_20:
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60870, qword_260F4AB40);
  v40 = v46;
  v42 = &v46[*(v39 + 48)];
  sub_260F49668();
  *v42 = a1;
  *(v42 + 1) = v28;
  return (*(*(v39 - 8) + 56))(v40, 0, 1, v39);
}

uint64_t sub_260F28730@<X0>(char *a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v51 = a4;
  v50 = sub_260F49658();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F20, &qword_260F4B0A0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v47 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  v14 = sub_260F49688();
  v46 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  sub_260F2A950(0, &qword_2810D4790, 0x277D43170);
  sub_260F498B8();
  v45 = v17;
  v49 = v5;
  sub_260F2A9F0(v11, v13, &qword_27FE60F20, &qword_260F4B0A0);
  v23 = v46;
  v24 = *(v46 + 32);
  v24(v22, v20, v14);
  v25 = v47;
  sub_260F2A9F0(v13, v47, &qword_27FE60F20, &qword_260F4B0A0);
  v26 = v48;
  v27 = v50;
  v28 = v23;
  if ((*(v48 + 48))(v25, 1, v50) == 1)
  {
    (*(v23 + 8))(v22, v14);
    sub_260F2AA58(v25, &qword_27FE60F20, &qword_260F4B0A0);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60870, qword_260F4AB40);
    return (*(*(v29 - 8) + 56))(v51, 1, 1, v29);
  }

  else
  {
    v31 = v14;
    v32 = v25;
    v33 = *(v26 + 32);
    v33(v49, v32, v27);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60888, &unk_260F4ABA0);
    v47 = &v44;
    MEMORY[0x28223BE20](v34 - 8);
    v36 = &v44 - v35;
    v37 = v45;
    v24(v45, v22, v31);
    v38 = (*(v28 + 88))(v37, v31);
    if (v38 == *MEMORY[0x277D04660] || v38 == *MEMORY[0x277D04668])
    {
      (*(v28 + 96))(v37, v31);
      v41 = *v37;
      v40 = v37[1];
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60870, qword_260F4AB40);
      v43 = &v36[*(v42 + 48)];
      v33(v36, v49, v27);
      *v43 = v41;
      *(v43 + 1) = v40;
      (*(*(v42 - 8) + 56))(v36, 0, 1, v42);
    }

    else
    {
      (*(v48 + 8))(v49, v27);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60870, qword_260F4AB40);
      (*(*(v39 - 8) + 56))(v36, 1, 1, v39);
      (*(v28 + 8))(v37, v31);
    }

    return sub_260F2A9F0(v36, v51, &qword_27FE60888, &unk_260F4ABA0);
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

id DataExtractor.getMonotonicTs(data:)(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F20, &qword_260F4B0A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_260F49658();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a3 + 24) + 32))(*(a3 + 16));
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_260F2AA58(v8, &qword_27FE60F20, &qword_260F4B0A0);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v14 = sub_260F27F78(v12, a1, a2, a3);
    if (v15 >> 60 == 15)
    {
      (*(v10 + 8))(v12, v9);
      return 0;
    }

    else
    {
      v16 = v14;
      v17 = v15;
      v18 = objc_opt_self();
      v19 = sub_260F49308();
      v20 = [v18 eventWithData:v19 dataVersion:0];
      sub_260F26F0C(v16, v17);

      (*(v10 + 8))(v12, v9);
      return v20;
    }
  }
}

void *DataExtractor<>.generateRequestLink(data:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for RequestLinkConfig(0);
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(a4 + 8))(*(a3 + 16), a4);
  v14 = v13;
  v85 = *(v13 + 16);
  if (v85)
  {
    v15 = 0;
    v83 = v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v84 = v4;
    v74 = a2;
    v75 = v9;
    v81 = v10;
    v82 = a1;
    v73 = a3;
    do
    {
      if (v15 >= *(v14 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      sub_260F29814(v83 + *(v10 + 72) * v15, v12);
      v16 = sub_260F27F78(&v12[v9[5]], a1, a2, a3);
      if (v17 >> 60 == 15)
      {
        sub_260F29878(v12, type metadata accessor for RequestLinkConfig);
      }

      else
      {
        v18 = v17;
        v19 = v16;
        v20 = sub_260F27F78(&v12[v9[7]], a1, a2, a3);
        if (v21 >> 60 == 15)
        {
          sub_260F29878(v12, type metadata accessor for RequestLinkConfig);
          sub_260F26F0C(v19, v18);
          v10 = v81;
          a1 = v82;
        }

        else
        {
          v22 = v20;
          v23 = v21;
          v24 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v25 = v22;
          v26 = v19;
          sub_260F28238(v19, v18);
          v27 = sub_260F49308();
          v28 = [v24 initWithBytesAsData_];

          v80 = v26;
          v78 = v18;
          sub_260F26F0C(v26, v18);
          v29 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          sub_260F28238(v25, v23);
          v30 = sub_260F49308();
          v31 = [v29 initWithBytesAsData_];

          v79 = v25;
          v77 = v23;
          sub_260F26F0C(v25, v23);
          v32 = sub_260F49468();
          objc_allocWithZone(v32);
          v9 = v28;
          v33 = sub_260F49458();
          v76 = v9;
          if (!v33)
          {
            goto LABEL_17;
          }

          v34 = v33;
          v9 = v75;
          objc_allocWithZone(v32);
          v35 = v31;
          v36 = sub_260F49458();
          if (!v36)
          {

            v9 = v76;
LABEL_17:
            v85 = v31;

            if (qword_2810D4860 == -1)
            {
LABEL_18:
              v43 = sub_260F49638();
              __swift_project_value_buffer(v43, qword_2810D4868);
              v44 = v80;
              v45 = v78;
              sub_260F29910(v80, v78);
              v46 = v79;
              v47 = v77;
              sub_260F29910(v79, v77);
              v48 = sub_260F49618();
              v49 = sub_260F49908();
              sub_260F26F0C(v44, v45);
              sub_260F26F0C(v46, v47);
              if (os_log_type_enabled(v48, v49))
              {
                v50 = swift_slowAlloc();
                v51 = swift_slowAlloc();
                v86 = v51;
                *v50 = 136315394;
                v52 = sub_260F49318();
                v54 = sub_260F29D18(v52, v53, &v86);

                *(v50 + 4) = v54;
                *(v50 + 12) = 2080;
                v55 = v79;
                v56 = sub_260F49318();
                v58 = sub_260F29D18(v56, v57, &v86);

                *(v50 + 14) = v58;
                _os_log_impl(&dword_260F24000, v48, v49, "Failed to parse request link info for event\nsourceId: %s\ntargetId: %s", v50, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x2666F6350](v51, -1, -1);
                MEMORY[0x2666F6350](v50, -1, -1);

                sub_260F26F0C(v55, v47);
                sub_260F26F0C(v80, v45);
              }

              else
              {
                sub_260F26F0C(v44, v45);
                sub_260F26F0C(v46, v47);
              }

              sub_260F29878(v12, type metadata accessor for RequestLinkConfig);
              return 0;
            }

LABEL_29:
            swift_once();
            goto LABEL_18;
          }

          v37 = v36;
          sub_260F2A950(0, &unk_2810D4780, 0x277D5A9D0);
          v38 = v37;
          v39 = v34;
          v40 = sub_260F49918();
          if (v40)
          {
            v41 = v40;
            v85 = v35;

            v59 = v78;
            if (qword_2810D4860 != -1)
            {
              swift_once();
            }

            v60 = sub_260F49638();
            __swift_project_value_buffer(v60, qword_2810D4868);
            v61 = v41;
            v62 = sub_260F49618();
            v63 = sub_260F498E8();

            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              v65 = v41;
              v66 = swift_slowAlloc();
              v86 = v66;
              *v64 = 136446210;
              v67 = sub_260F29924();
              v69 = sub_260F29D18(v67, v68, &v86);

              *(v64 + 4) = v69;
              _os_log_impl(&dword_260F24000, v62, v63, "RequestLink: %{public}s", v64, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v66);
              v70 = v66;
              v41 = v65;
              MEMORY[0x2666F6350](v70, -1, -1);
              MEMORY[0x2666F6350](v64, -1, -1);
              v71 = v80;
              v72 = v78;
            }

            else
            {
              v71 = v80;
              v72 = v59;
            }

            sub_260F26F0C(v71, v72);
            sub_260F26F0C(v79, v77);

            sub_260F29878(v12, type metadata accessor for RequestLinkConfig);
            return v41;
          }

          sub_260F29878(v12, type metadata accessor for RequestLinkConfig);

          sub_260F26F0C(v79, v77);
          sub_260F26F0C(v80, v78);
          a3 = v73;
          a2 = v74;
          v10 = v81;
          a1 = v82;
        }
      }

      ++v15;
    }

    while (v85 != v15);
  }

  return 0;
}

uint64_t sub_260F29814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestLinkConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260F29878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_260F29910(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_260F28238(result, a2);
  }

  return result;
}

uint64_t sub_260F29924()
{
  v1 = v0;
  v2 = 7104878;
  v3 = [v0 source];
  if (v3)
  {
    v4 = v3;
    v5 = sub_260F29A2C();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x2666F59D0](v5, v7);

  MEMORY[0x2666F59D0](540945696, 0xE400000000000000);
  v8 = [v1 target];
  if (v8)
  {
    v9 = v8;
    v2 = sub_260F29A2C();
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x2666F59D0](v2, v11);

  return 0;
}

uint64_t sub_260F29A2C()
{
  v1 = [v0 component];
  if (v1 > 0x42)
  {
    v2 = @"COMPONENTNAME_UNKNOWN";
    v3 = @"COMPONENTNAME_UNKNOWN";
  }

  else
  {
    v2 = off_279AC9EC8[v1];
    v3 = off_279ACA0E0[v1];
  }

  v4 = v2;
  v5 = v3;
  v6 = sub_260F49718();
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60878, &qword_260F4AB88);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v20 - v10;
  v12 = [v0 uuid];
  if (v12)
  {
    v13 = v12;
    sub_260F498C8();

    v14 = sub_260F493B8();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v11, 1, v14) != 1)
    {
      v17 = sub_260F49378();
      v16 = v18;
      (*(v15 + 8))(v11, v14);
      goto LABEL_9;
    }

    sub_260F2AA58(v11, &qword_27FE60878, &qword_260F4AB88);
  }

  v16 = 0xE300000000000000;
  v17 = 7104878;
LABEL_9:
  v20[0] = 40;
  v20[1] = 0xE100000000000000;
  MEMORY[0x2666F59D0](v6, v8);

  MEMORY[0x2666F59D0](8236, 0xE200000000000000);
  MEMORY[0x2666F59D0](v17, v16);

  MEMORY[0x2666F59D0](41, 0xE100000000000000);
  return v20[0];
}

uint64_t sub_260F29C48(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_260F29CBC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_260F29D18(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_260F29D18(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_260F29DE4(v11, 0, 0, 1, a1, a2);
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
    sub_260F2A6A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_260F29DE4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_260F29EF0(a5, a6);
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
    result = sub_260F49998();
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

void *sub_260F29EF0(uint64_t a1, unint64_t a2)
{
  v3 = sub_260F29F3C(a1, a2);
  sub_260F2A06C(&unk_287372498);
  return v3;
}

void *sub_260F29F3C(uint64_t a1, unint64_t a2)
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

  v6 = sub_260F2A158(v5, 0);
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

  result = sub_260F49998();
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
        v10 = sub_260F49758();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_260F2A158(v10, 0);
        result = sub_260F49968();
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

uint64_t sub_260F2A06C(uint64_t result)
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

  result = sub_260F2A1CC(result, v11, 1, v3);
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

void *sub_260F2A158(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60880, &unk_260F4AB90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_260F2A1CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60880, &unk_260F4AB90);
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

_BYTE **sub_260F2A2C0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_260F2A2D8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_260F2A348(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_260F2A488(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_260F2A6A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_260F2A76C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = a2;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      sub_260F28238(a2, a3);
      return v3;
    }

    v4 = sub_260F49858();
  }

  else
  {
    v4 = sub_260F49868();
  }

  v5 = v4;

  return v5;
}

uint64_t sub_260F2A950(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_260F2A998()
{
  result = qword_2810D47B0[0];
  if (!qword_2810D47B0[0])
  {
    sub_260F49658();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810D47B0);
  }

  return result;
}

uint64_t sub_260F2A9F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_260F2AA58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t RequestLinkConfig.Direction.hashValue.getter()
{
  v1 = *v0;
  sub_260F49A78();
  MEMORY[0x2666F5D10](v1);
  return sub_260F49A98();
}

uint64_t sub_260F2AB8C()
{
  v1 = *v0;
  sub_260F49A78();
  MEMORY[0x2666F5D10](v1);
  return sub_260F49A98();
}

uint64_t sub_260F2AC00(uint64_t a1)
{
  v2 = *v1;
  sub_260F49A78();
  MEMORY[0x2666F5D10](v2);
  return sub_260F49A98();
}

uint64_t RequestLinkConfig.sourceIdTagPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RequestLinkConfig(0) + 20);
  v4 = sub_260F49658();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RequestLinkConfig(uint64_t a1)
{
  result = qword_2810D4BB8;
  if (!qword_2810D4BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RequestLinkConfig.targetIdTagPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RequestLinkConfig(0) + 28);
  v4 = sub_260F49658();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RequestLinkConfig.init(sourceComponentName:sourceIdTagPath:targetComponentName:targetIdTagPath:exclusive:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X8>)
{
  *a6 = a1;
  v11 = type metadata accessor for RequestLinkConfig(0);
  v12 = v11[5];
  v13 = sub_260F49658();
  v14 = *(*(v13 - 8) + 32);
  v14(&a6[v12], a2, v13);
  *&a6[v11[6]] = a3;
  result = (v14)(&a6[v11[7]], a4, v13);
  a6[v11[8]] = a5;
  return result;
}

uint64_t RequestLinkConfig.init(direction:componentName:componentIdTagPath:traceIdTagPath:exclusive:)@<X0>(_BYTE *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X8>)
{
  if (*a1)
  {
    v11 = type metadata accessor for RequestLinkConfig(0);
    *&a6[v11[6]] = a2;
    v12 = v11[7];
    v13 = sub_260F49658();
    v14 = *(*(v13 - 8) + 32);
    v14(&a6[v12], a3, v13);
    *a6 = 46;
    v15 = v11[5];
  }

  else
  {
    *a6 = a2;
    v11 = type metadata accessor for RequestLinkConfig(0);
    v16 = v11[5];
    v13 = sub_260F49658();
    v14 = *(*(v13 - 8) + 32);
    v14(&a6[v16], a3, v13);
    *&a6[v11[6]] = 46;
    v15 = v11[7];
  }

  v14(&a6[v15], a4, v13);
  result = type metadata accessor for RequestLinkConfig(0);
  a6[v11[8]] = a5 & 1;
  return result;
}

unint64_t sub_260F2AFFC()
{
  result = qword_27FE60890;
  if (!qword_27FE60890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE60890);
  }

  return result;
}

void sub_260F2B078(uint64_t a1)
{
  type metadata accessor for SISchemaComponentName(319);
  if (v1 <= 0x3F)
  {
    sub_260F49658();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for RequestLinkConfig.Direction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestLinkConfig.Direction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_260F2B280()
{
  v0 = sub_260F495B8();
  __swift_allocate_value_buffer(v0, qword_27FE62580);
  __swift_project_value_buffer(v0, qword_27FE62580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE608D8, &qword_260F4AF90);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE608E0, qword_260F4AF98) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_260F4AC90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sessionId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_260F49598();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "events";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_260F495A8();
}

uint64_t sub_260F2B448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_260F494C8();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_260F494F8();
      }

      else if (result == 2)
      {
        type metadata accessor for DillSessionEvent(0);
        sub_260F2D1F8(&qword_27FE608A0, type metadata accessor for DillSessionEvent, &unk_260F4ADB0);
        sub_260F49518();
      }

      result = sub_260F494C8();
    }
  }

  return result;
}

uint64_t sub_260F2B544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_260F49568();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 != v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(v3[2] + 16) || (type metadata accessor for DillSessionEvent(0), sub_260F2D1F8(&qword_27FE608A0, type metadata accessor for DillSessionEvent, &unk_260F4ADB0), result = sub_260F49588(), !v4))
  {
    type metadata accessor for DillSession(0);
    return sub_260F49478();
  }

  return result;
}

double sub_260F2B680@<D0>(uint64_t a1@<X8>)
{
  sub_260F49488();
  result = 0.0;
  *a1 = xmmword_260F4ACA0;
  *(a1 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_260F2B734(uint64_t a1, uint64_t a2)
{
  v4 = sub_260F2D1F8(&qword_27FE608D0, type metadata accessor for DillSession, &unk_260F4AEE0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_260F2B7D4(uint64_t a1)
{
  v2 = sub_260F2D1F8(&qword_27FE60F60, type metadata accessor for DillSession, &unk_260F4AF18);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_260F2B840(uint64_t a1, uint64_t a2)
{
  sub_260F2D1F8(&qword_27FE60F60, type metadata accessor for DillSession, &unk_260F4AF18);

  return sub_260F49558();
}

uint64_t sub_260F2B8BC(_BOOL8 *a1, uint64_t *a2, uint64_t a3)
{
  if (!sub_260F2CFD0(*a1, a1[1], *a2, a2[1]) || (sub_260F2C48C(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  sub_260F49498();
  sub_260F2D1F8(&qword_27FE608E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_260F496D8() & 1;
}

uint64_t sub_260F2B978()
{
  v0 = sub_260F495B8();
  __swift_allocate_value_buffer(v0, qword_27FE62598);
  __swift_project_value_buffer(v0, qword_27FE62598);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE608D8, &qword_260F4AF90);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE608E0, qword_260F4AF98) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_260F4AC90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_260F49598();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 100;
  *v10 = "transcript";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_260F495A8();
}

uint64_t sub_260F2BB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_260F494C8();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_260F49508();
    }

    else if (result == 100)
    {
      sub_260F2BBD4(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_260F2BCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 == 0.0 || (result = sub_260F49578(), !v4))
  {
    if (*(v3 + 16) >> 60 == 15 || (result = sub_260F2BD78(v3), !v4))
    {
      type metadata accessor for DillSessionEvent(0);
      return sub_260F49478();
    }
  }

  return result;
}

uint64_t sub_260F2BD78(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v2 = *(result + 8);
    sub_260F28238(v2, v1);
    sub_260F49568();
    return sub_260F26F0C(v2, v1);
  }

  return result;
}

uint64_t sub_260F2BE08@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = xmmword_260F4ACB0;
  result = sub_260F49488();
  *a1 = 0;
  return result;
}

uint64_t sub_260F2BE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_260F49498();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_260F2BED4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_260F49498();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_260F2BF78(uint64_t a1, uint64_t a2)
{
  v4 = sub_260F2D1F8(&qword_27FE608F0, type metadata accessor for DillSessionEvent, &unk_260F4AD78);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_260F2C018@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_260F495B8();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_260F2C0B4(uint64_t a1)
{
  v2 = sub_260F2D1F8(&qword_27FE608A0, type metadata accessor for DillSessionEvent, &unk_260F4ADB0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_260F2C120(uint64_t a1, uint64_t a2)
{
  sub_260F49A78();
  sub_260F496C8();
  return sub_260F49A98();
}

uint64_t sub_260F2C178(uint64_t a1, uint64_t a2)
{
  sub_260F2D1F8(&qword_27FE608A0, type metadata accessor for DillSessionEvent, &unk_260F4ADB0);

  return sub_260F49558();
}

uint64_t sub_260F2C1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_260F49A78();
  sub_260F496C8();
  return sub_260F49A98();
}

uint64_t sub_260F2C48C(uint64_t a1, uint64_t a2)
{
  v53[3] = *MEMORY[0x277D85DE8];
  v51 = type metadata accessor for DillSessionEvent(0);
  v4 = MEMORY[0x28223BE20](v51);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v9 = &v45 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (v10 && a1 != a2)
    {
      v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v12 = a1 + v11;
      v13 = a2 + v11;
      v14 = *(v7 + 72);
      v49 = 0;
      v50 = v14;
      while (1)
      {
        sub_260F2D138(v12, v9);
        sub_260F2D138(v13, v6);
        if (*v9 != *v6)
        {
LABEL_70:
          sub_260F2D19C(v6);
          sub_260F2D19C(v9);
          goto LABEL_71;
        }

        v15 = *(v9 + 1);
        v16 = *(v9 + 2);
        v17 = *(v6 + 1);
        v18 = *(v6 + 2);
        if (v16 >> 60 == 15)
        {
          if (v18 >> 60 != 15)
          {
            goto LABEL_66;
          }

          sub_260F29910(*(v9 + 1), *(v9 + 2));
          sub_260F29910(v17, v18);
          goto LABEL_62;
        }

        if (v18 >> 60 == 15)
        {
LABEL_66:
          sub_260F29910(*(v9 + 1), *(v9 + 2));
          sub_260F29910(v17, v18);
          sub_260F26F0C(v15, v16);
          v42 = v17;
          v43 = v18;
LABEL_69:
          sub_260F26F0C(v42, v43);
          goto LABEL_70;
        }

        v19 = v16 >> 62;
        v20 = v18 >> 62;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v29 = *(v15 + 16);
            v28 = *(v15 + 24);
            v26 = __OFSUB__(v28, v29);
            v21 = v28 - v29;
            if (v26)
            {
              goto LABEL_75;
            }

            goto LABEL_26;
          }

          v21 = 0;
          if (v20 <= 1)
          {
            goto LABEL_27;
          }
        }

        else if (v19)
        {
          LODWORD(v21) = HIDWORD(v15) - v15;
          if (__OFSUB__(HIDWORD(v15), v15))
          {
            goto LABEL_76;
          }

          v21 = v21;
          if (v20 <= 1)
          {
LABEL_27:
            if (v20)
            {
              LODWORD(v27) = HIDWORD(v17) - v17;
              if (__OFSUB__(HIDWORD(v17), v17))
              {
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                __break(1u);
LABEL_76:
                __break(1u);
LABEL_77:
                __break(1u);
LABEL_78:
                __break(1u);
LABEL_79:
                __break(1u);
LABEL_80:
                __break(1u);
              }

              v27 = v27;
            }

            else
            {
              v27 = BYTE6(v18);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v21 = BYTE6(v16);
          if (v20 <= 1)
          {
            goto LABEL_27;
          }
        }

LABEL_20:
        if (v20 != 2)
        {
          if (v21)
          {
            goto LABEL_67;
          }

LABEL_38:
          sub_260F29910(*(v9 + 1), *(v9 + 2));
          sub_260F29910(v17, v18);
          v22 = v17;
          v23 = v18;
LABEL_39:
          sub_260F26F0C(v22, v23);
          goto LABEL_62;
        }

        v25 = *(v17 + 16);
        v24 = *(v17 + 24);
        v26 = __OFSUB__(v24, v25);
        v27 = v24 - v25;
        if (v26)
        {
          goto LABEL_74;
        }

LABEL_33:
        if (v21 != v27)
        {
LABEL_67:
          sub_260F29910(*(v9 + 1), *(v9 + 2));
          sub_260F29910(v17, v18);
          sub_260F26F0C(v17, v18);
LABEL_68:
          v42 = v15;
          v43 = v16;
          goto LABEL_69;
        }

        if (v21 < 1)
        {
          goto LABEL_38;
        }

        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v30 = *(v15 + 16);
            v46 = *(v15 + 24);
            v47 = v30;
            v48 = v15;
            sub_260F29910(v15, v16);
            sub_260F29910(v17, v18);
            sub_260F29910(v17, v18);
            v31 = sub_260F492A8();
            if (v31)
            {
              v32 = v31;
              v33 = sub_260F492C8();
              v34 = v47;
              if (__OFSUB__(v47, v33))
              {
                goto LABEL_79;
              }

              v45 = v47 - v33 + v32;
            }

            else
            {
              v45 = 0;
              v34 = v47;
            }

            if (__OFSUB__(v46, v34))
            {
              goto LABEL_78;
            }

            sub_260F492B8();
            v39 = v45;
            goto LABEL_61;
          }

          memset(v53, 0, 14);
          sub_260F29910(v15, v16);
          sub_260F29910(v17, v18);
          sub_260F29910(v17, v18);
        }

        else
        {
          if (v19)
          {
            v47 = (v15 >> 32) - v15;
            if (v15 >> 32 < v15)
            {
              goto LABEL_77;
            }

            v48 = v15;
            sub_260F29910(v15, v16);
            sub_260F29910(v17, v18);
            sub_260F29910(v17, v18);
            v35 = sub_260F492A8();
            if (v35)
            {
              v46 = v35;
              v36 = sub_260F492C8();
              if (__OFSUB__(v15, v36))
              {
                goto LABEL_80;
              }

              v37 = v15 - v36 + v46;
            }

            else
            {
              v37 = 0;
            }

            sub_260F492B8();
            v39 = v37;
LABEL_61:
            v40 = v49;
            sub_260F2CB58(v39, v17, v18, v53);
            v49 = v40;
            sub_260F26F0C(v17, v18);
            sub_260F26F0C(v17, v18);
            v15 = v48;
            if ((v53[0] & 1) == 0)
            {
              goto LABEL_68;
            }

            goto LABEL_62;
          }

          v53[0] = *(v9 + 1);
          LOWORD(v53[1]) = v16;
          BYTE2(v53[1]) = BYTE2(v16);
          BYTE3(v53[1]) = BYTE3(v16);
          BYTE4(v53[1]) = BYTE4(v16);
          BYTE5(v53[1]) = BYTE5(v16);
          sub_260F29910(v15, v16);
          sub_260F29910(v17, v18);
          sub_260F29910(v17, v18);
        }

        v38 = v49;
        sub_260F2CB58(v53, v17, v18, &v52);
        v49 = v38;
        sub_260F26F0C(v17, v18);
        sub_260F26F0C(v17, v18);
        if (!v52)
        {
          goto LABEL_68;
        }

LABEL_62:
        sub_260F26F0C(v15, v16);
        sub_260F49498();
        sub_260F2D1F8(&qword_27FE608E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v41 = sub_260F496D8();
        sub_260F2D19C(v6);
        sub_260F2D19C(v9);
        if (v41)
        {
          v13 += v50;
          v12 += v50;
          if (--v10)
          {
            continue;
          }
        }

        return v41 & 1;
      }

      v21 = 0;
      if (!v15 && v16 == 0xC000000000000000 && v18 >> 62 == 3)
      {
        v21 = 0;
        if (!v17 && v18 == 0xC000000000000000)
        {
          sub_260F29910(0, 0xC000000000000000);
          sub_260F29910(0, 0xC000000000000000);
          v22 = 0;
          v23 = 0xC000000000000000;
          goto LABEL_39;
        }
      }

LABEL_26:
      if (v20 <= 1)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    v41 = 1;
  }

  else
  {
LABEL_71:
    v41 = 0;
  }

  return v41 & 1;
}

uint64_t sub_260F2CB58@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_260F492A8();
    if (v10)
    {
      v11 = sub_260F492C8();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_260F492B8();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_260F492A8();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_260F492C8();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_260F492B8();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_260F2CD88(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_260F2CF18(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_260F281D0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_260F2CB58(v13, a3, a4, &v12);
  v10 = v4;
  sub_260F281D0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_260F2CF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_260F492A8();
  v11 = result;
  if (result)
  {
    result = sub_260F492C8();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_260F492B8();
  sub_260F2CB58(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_260F2CFD0(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_260F28238(a3, a4);
          return sub_260F2CD88(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_260F2D138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DillSessionEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260F2D19C(uint64_t a1)
{
  v2 = type metadata accessor for DillSessionEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260F2D1F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_260F2D240(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v2 >> 60 != 15)
  {
    if (v4 >> 60 != 15)
    {
      sub_260F29910(*(a1 + 8), v2);
      sub_260F29910(v5, v4);
      v9 = sub_260F2CFD0(v3, v2, v5, v4);
      sub_260F26F0C(v5, v4);
      if (v9)
      {
        goto LABEL_10;
      }

      v6 = v3;
      v7 = v2;
      goto LABEL_7;
    }

LABEL_6:
    sub_260F29910(*(a1 + 8), v2);
    sub_260F29910(v5, v4);
    sub_260F26F0C(v3, v2);
    v6 = v5;
    v7 = v4;
LABEL_7:
    sub_260F26F0C(v6, v7);
    return 0;
  }

  if (v4 >> 60 != 15)
  {
    goto LABEL_6;
  }

  sub_260F29910(*(a1 + 8), v2);
  sub_260F29910(v5, v4);
LABEL_10:
  sub_260F26F0C(v3, v2);
  type metadata accessor for DillSessionEvent(0);
  sub_260F49498();
  sub_260F2D1F8(&qword_27FE608E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_260F496D8() & 1;
}

void sub_260F2D458(uint64_t a1)
{
  if (!qword_27FE60908)
  {
    type metadata accessor for DillSessionEvent(255);
    v1 = sub_260F49798();
    if (!v2)
    {
      atomic_store(v1, &qword_27FE60908);
    }
  }
}

uint64_t sub_260F2D4D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260F2D550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(319, a2, a3);
  if (v6 <= 0x3F)
  {
    result = sub_260F49498();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_260F2D5E0()
{
  if (!qword_27FE60920)
  {
    v0 = sub_260F49928();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE60920);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_260F2D658(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_260F2D6AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_260F2D724(uint64_t a1)
{
  v2 = sub_260F49658();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v25 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_260F2F380(qword_2810D47B0, MEMORY[0x277D04650]);
  result = MEMORY[0x2666F5AD0](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      sub_260F2E43C(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id AsyncIngestConfig.streamId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_260F2D984(v2, v3, v4);
}

id sub_260F2D984(id result, id a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t AsyncIngestConfig.monotonicTimestampPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AsyncIngestConfig(0) + 24);

  return sub_260F2DA5C(v3, a1);
}

uint64_t type metadata accessor for AsyncIngestConfig(uint64_t a1)
{
  result = qword_2810D4BC8;
  if (!qword_2810D4BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260F2DA5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F20, &qword_260F4B0A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AsyncIngestConfig.eventMapping.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AsyncIngestConfig(0) + 28);

  return sub_260F2DB10(v3, a1);
}

uint64_t sub_260F2DB10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PFAEventMapping(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AsyncIngestConfig.collectionPolicy.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for AsyncIngestConfig(0) + 32));
}

uint64_t AsyncIngestConfig.filteringPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AsyncIngestConfig(0) + 36);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_260F2DC08(v4, v5);
}

uint64_t sub_260F2DC08(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

uint64_t AsyncIngestConfig.completeInnerTypeBuilder.getter()
{
  v1 = (v0 + *(type metadata accessor for AsyncIngestConfig(0) + 40));
  v2 = *v1;
  sub_260F26F20(*v1, v1[1]);
  return v2;
}

uint64_t AsyncIngestConfig.eventPath.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for PFAEventMapping(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for AsyncIngestConfig(0);
  sub_260F2DB10(v1 + *(v6 + 28), v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60928, &qword_260F4B0A8);

      v8 = sub_260F49658();
      (*(*(v8 - 8) + 32))(a1, v5, v8);
    }

    else
    {
      *a1 = sub_260F2D724(*v5);
    }

    type metadata accessor for EventPath(0);
  }

  else
  {
    sub_260F2DE28(v5);
    type metadata accessor for EventPath(0);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_260F2DE28(uint64_t a1)
{
  v2 = type metadata accessor for PFAEventMapping(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AsyncIngestConfig.init(streamId:eventMapping:collectionPolicy:filteringPolicy:maxCount:lastN:innerTypeBuilder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v14 = *a1;
  v13 = a1[1];
  v15 = *(a1 + 16);
  v16 = *a3;
  v17 = *a4;
  v18 = *(a4 + 8);
  *(a9 + 20) = 0;
  *(a9 + 24) = 1;
  v19 = type metadata accessor for AsyncIngestConfig(0);
  v20 = v19[6];
  v21 = sub_260F49658();
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  *a9 = v14;
  *(a9 + 8) = v13;
  *(a9 + 16) = v15;
  result = sub_260F2DFD8(a2, a9 + v19[7]);
  *(a9 + v19[8]) = v16;
  v23 = a9 + v19[9];
  *v23 = v17;
  *(v23 + 8) = v18;
  v24 = a9 + v19[11];
  *v24 = a5;
  *(v24 + 8) = a6 & 1;
  v25 = a9 + v19[12];
  *v25 = a7;
  *(v25 + 8) = a8 & 1;
  v26 = (a9 + v19[10]);
  *v26 = a10;
  v26[1] = a11;
  return result;
}

uint64_t sub_260F2DFD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PFAEventMapping(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_260F2E03C(uint64_t a1))@<X0>(uint64_t *a1@<X8>)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_260F2E40C;
  }

  else
  {
    v6 = 0;
  }

  sub_260F26F20(v3, v4);
  return v6;
}

id sub_260F2E0E8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_260F2D984(v2, v3, v4);
}

uint64_t sub_260F2E140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  v4 = *v3;
  *a2 = *v3;
  v5 = *(v3 + 8);
  *(a2 + 8) = v5;
  return sub_260F2DC08(v4, v5);
}

void sub_260F2E190(uint64_t a1)
{
  sub_260F2E3C0(319, &unk_2810D4D00, MEMORY[0x277D84CC0]);
  if (v1 <= 0x3F)
  {
    sub_260F2E2BC(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PFAEventMapping(319);
      if (v3 <= 0x3F)
      {
        sub_260F2E3C0(319, qword_2810D4A00, &type metadata for MessageFilteringPolicy);
        if (v4 <= 0x3F)
        {
          sub_260F2E314(319);
          if (v5 <= 0x3F)
          {
            sub_260F2E3C0(319, &qword_27FE60938, MEMORY[0x277D83B88]);
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

void sub_260F2E2BC(uint64_t a1)
{
  if (!qword_2810D47A8)
  {
    sub_260F49658();
    v1 = sub_260F49928();
    if (!v2)
    {
      atomic_store(v1, &qword_2810D47A8);
    }
  }
}

void sub_260F2E314(uint64_t a1)
{
  if (!qword_2810D4770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE60930, qword_260F4BF30);
    v1 = sub_260F49928();
    if (!v2)
    {
      atomic_store(v1, &qword_2810D4770);
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

void sub_260F2E3C0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_260F49928();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_260F2E40C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_260F2E43C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_260F49658();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_260F2F380(qword_2810D47B0, MEMORY[0x277D04650]);
  v33 = a2;
  v11 = sub_260F496B8();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_260F2F380(&qword_27FE60940, MEMORY[0x277D04658]);
      v21 = sub_260F496D8();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_260F2EA3C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_260F2E6F4(uint64_t a1)
{
  v2 = v1;
  v36 = sub_260F49658();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60948, &qword_260F4B150);
  result = sub_260F49958();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_260F2F380(qword_2810D47B0, MEMORY[0x277D04650]);
      result = sub_260F496B8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_260F2EA3C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_260F49658();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_260F2E6F4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_260F2ECB8();
      goto LABEL_12;
    }

    sub_260F2EEF0(v10 + 1);
  }

  v12 = *v3;
  sub_260F2F380(qword_2810D47B0, MEMORY[0x277D04650]);
  v13 = sub_260F496B8();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_260F2F380(&qword_27FE60940, MEMORY[0x277D04658]);
      v21 = sub_260F496D8();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_260F49A18();
  __break(1u);
  return result;
}

void *sub_260F2ECB8()
{
  v1 = v0;
  v2 = sub_260F49658();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60948, &qword_260F4B150);
  v6 = *v0;
  v7 = sub_260F49948();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

uint64_t sub_260F2EEF0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_260F49658();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60948, &qword_260F4B150);
  v7 = sub_260F49958();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_260F2F380(qword_2810D47B0, MEMORY[0x277D04650]);
      result = sub_260F496B8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_260F2F1F8(uint64_t a1)
{
  v2 = sub_260F49658();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_260F2F380(qword_2810D47B0, MEMORY[0x277D04650]);
  result = MEMORY[0x2666F5AD0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_260F2E43C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_260F2F380(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_260F49658();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_260F2F3C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = sub_260F49658();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EventPath(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  AsyncIngestConfig.eventPath.getter(v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *v13;
      v16 = v3 + *(type metadata accessor for AsyncIngestConfig(0) + 36);
      v17 = *(v16 + 8);
      if (v17 == 255)
      {
        sub_260F28238(a1, a2);
      }

      else
      {
        v18 = *v16;

        a1 = sub_260F3F170(v19, v17, a1, a2);
        a2 = v20;
        sub_260F28224(v18, v17);
      }

      sub_260F3F358(v15, a1, a2);
      sub_260F281D0(a1, a2);
    }

    else
    {
      v30 = v3 + *(type metadata accessor for AsyncIngestConfig(0) + 36);
      v31 = *(v30 + 8);
      if (v31 == 255)
      {
        sub_260F28238(a1, a2);
      }

      else
      {
        v32 = *v30;

        a1 = sub_260F3F170(v33, v31, a1, a2);
        a2 = v34;
        sub_260F28224(v32, v31);
      }

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60870, qword_260F4AB40);
      v48 = &a3[*(v47 + 48)];
      sub_260F49668();
      *v48 = a1;
      *(v48 + 1) = a2;
      return (*(*(v47 - 8) + 56))(a3, 0, 1, v47);
    }
  }

  else
  {
    v54 = a3;
    v50 = *(v8 + 32);
    v51 = v8 + 32;
    v50(v10, v13, v7);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60888, &unk_260F4ABA0);
    v53 = &v49;
    MEMORY[0x28223BE20](v21 - 8);
    v23 = &v49 - v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE60F80, &qword_260F4B200);
    v24 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_260F4AB10;
    (*(v8 + 16))(v25 + v24, v10, v7);
    v26 = sub_260F2F1F8(v25);
    swift_setDeallocating();
    v52 = *(v8 + 8);
    v52(v25 + v24, v7);
    swift_deallocClassInstance();
    sub_260F3F358(v26, a1, a2);

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60870, qword_260F4AB40);
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v23, 1, v27) == 1)
    {
      sub_260F304F4(v23);
      v52(v10, v7);
      return (*(v28 + 56))(v54, 1, 1, v27);
    }

    else
    {
      v35 = &v23[*(v27 + 48)];
      v36 = *v35;
      v37 = v35[1];
      v52(v23, v7);
      v38 = v3 + *(type metadata accessor for AsyncIngestConfig(0) + 36);
      v39 = *(v38 + 8);
      if (v39 != 255)
      {
        v40 = *v38;

        v42 = sub_260F3F170(v41, v39, v36, v37);
        v44 = v43;
        sub_260F28224(v40, v39);
        sub_260F281D0(v36, v37);
        v36 = v42;
        v37 = v44;
      }

      v45 = v54;
      v46 = &v54[*(v27 + 48)];
      v50(v54, v10, v7);
      *v46 = v36;
      v46[1] = v37;
      return (*(v28 + 56))(v45, 0, 1, v27);
    }
  }
}

uint64_t AsyncPFAUploader.init(config:bundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = type metadata accessor for AsyncPFAUploader(0, a4, a3, a4);
  v10 = v9[8];
  *(a5 + v10) = [objc_opt_self() sharedLoggerWithPersistenceConfiguration_];
  sub_260F2F9C0(a1, a5 + v9[7]);
  *a5 = a2;
  a5[1] = a3;
  v11 = a5 + v9[9];

  return sub_260F2FA24(a1, v11);
}

uint64_t sub_260F2F9C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncIngestConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260F2FA24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncIngestConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AsyncPFAUploader.append(data:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 168) = a3;
  *(v5 + 176) = v4;
  *(v5 + 160) = a4;
  *(v5 + 144) = a1;
  *(v5 + 152) = a2;
  v6 = sub_260F49638();
  *(v5 + 184) = v6;
  *(v5 + 192) = *(v6 - 8);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  v7 = sub_260F49658();
  *(v5 + 216) = v7;
  *(v5 + 224) = *(v7 - 8);
  *(v5 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260F2FBB8, 0, 0);
}

uint64_t sub_260F2FBB8()
{
  v2 = *(v0 + 18);
  v1 = *(v0 + 19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60888, &unk_260F4ABA0);
  v3 = swift_task_alloc();
  sub_260F2F3C4(v2, v1, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60870, qword_260F4AB40);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_260F304F4(v3);

    sub_260F49628();
    v5 = sub_260F49618();
    v6 = sub_260F498D8();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 24);
    v8 = *(v0 + 25);
    v10 = *(v0 + 23);
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_260F24000, v5, v6, "Skipping invalid event", v11, 2u);
      MEMORY[0x2666F6350](v11, -1, -1);
    }

    (*(v9 + 8))(v8, v10);
    goto LABEL_16;
  }

  v12 = *(v0 + 28);
  v13 = *(v0 + 29);
  v14 = *(v0 + 27);
  v16 = *(v0 + 21);
  v15 = *(v0 + 22);
  v17 = &v3[*(v4 + 48)];
  v18 = *v17;
  *(v0 + 30) = *v17;
  v19 = v17[1];
  *(v0 + 31) = v19;
  (*(v12 + 32))(v13, v3, v14);

  v20 = v15 + *(v16 + 28);
  v21 = type metadata accessor for AsyncIngestConfig(0);
  sub_260F46280(v13);
  if (!v22)
  {
    sub_260F49628();
    v27 = sub_260F49618();
    v28 = sub_260F498F8();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 28);
    v31 = *(v0 + 29);
    v32 = *(v0 + 26);
    v49 = *(v0 + 27);
    v34 = *(v0 + 23);
    v33 = *(v0 + 24);
    if (v29)
    {
      v48 = *(v0 + 29);
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_260F24000, v27, v28, "Can't find schema name for event", v35, 2u);
      MEMORY[0x2666F6350](v35, -1, -1);

      sub_260F281D0(v18, v19);
      (*(v33 + 8))(v32, v34);
      (*(v30 + 8))(v48, v49);
    }

    else
    {

      sub_260F281D0(v18, v19);
      (*(v33 + 8))(v32, v34);
      (*(v30 + 8))(v31, v49);
    }

LABEL_16:

    v41 = *(v0 + 1);

    return v41();
  }

  if (*(v20 + *(v21 + 36) + 8) > 1u)
  {
    sub_260F28238(v18, v19);
  }

  else
  {
    if (*(v20 + *(v21 + 36) + 8))
    {
      v23 = sub_260F49858();
    }

    else
    {
      v23 = sub_260F49868();
    }

    v25 = v23;
    v26 = v24;

    v18 = v25;
    v19 = v26;
  }

  *(v0 + 32) = v18;
  *(v0 + 33) = v19;
  v36 = v20 + *(v21 + 40);
  v37 = *v36;
  if (*v36)
  {
    v38 = v0[20];
    v39 = *(v36 + 8);

    v18 = v37(v18, v19, v38);
    v19 = v40;
    sub_260F26F30(v37, v39);
  }

  else
  {
    sub_260F28238(v18, v19);
  }

  *(v0 + 34) = v18;
  *(v0 + 35) = v19;
  v43 = *(*(v0 + 22) + *(*(v0 + 21) + 32));
  v44 = sub_260F49308();
  *(v0 + 36) = v44;
  v45 = sub_260F496E8();
  *(v0 + 37) = v45;
  v46 = sub_260F496E8();
  *(v0 + 38) = v46;

  *(v0 + 2) = v0;
  *(v0 + 3) = sub_260F301D4;
  v47 = swift_continuation_init();
  *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60950, &qword_260F4B168);
  *(v0 + 10) = MEMORY[0x277D85DD0];
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = sub_260F3055C;
  *(v0 + 13) = &block_descriptor;
  *(v0 + 14) = v47;
  [v43 reportDataPlatformBatchedEvent:v44 forBundleID:v45 ofSchema:v46 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_260F301D4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_260F303DC;
  }

  else
  {
    v2 = sub_260F302E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260F302E4()
{
  v2 = v0[37];
  v1 = v0[38];
  v12 = v0[36];
  v3 = v0[33];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[27];
  v9 = v0[28];
  sub_260F281D0(v0[34], v0[35]);
  sub_260F281D0(v4, v3);
  sub_260F281D0(v6, v5);
  (*(v9 + 8))(v7, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_260F303DC()
{
  v12 = v0[38];
  v13 = v0[37];
  v14 = v0[36];
  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[28];
  v11 = v0[29];
  v8 = v0[27];
  swift_willThrow();
  sub_260F281D0(v1, v2);
  sub_260F281D0(v4, v3);
  sub_260F281D0(v6, v5);
  (*(v7 + 8))(v11, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_260F304F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60888, &unk_260F4ABA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260F3055C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE60C70, qword_260F4B3B0);
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

uint64_t AsyncPFAUploader.commit()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260F306A8;

  return sub_260F30910();
}

uint64_t sub_260F306A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_260F3079C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260F30C74;

  return AsyncPFAUploader.append(data:timestamp:)(a1, a2, a3, a4);
}

uint64_t sub_260F30858()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260F30C74;

  return sub_260F30910();
}

uint64_t sub_260F30910()
{
  v1 = sub_260F49638();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260F309CC, 0, 0);
}

uint64_t sub_260F309CC()
{
  sub_260F49628();
  v1 = sub_260F49618();
  v2 = sub_260F498E8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_260F24000, v1, v2, "commit()", v3, 2u);
    MEMORY[0x2666F6350](v3, -1, -1);
  }

  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

void sub_260F30AF4(uint64_t a1)
{
  type metadata accessor for AsyncIngestConfig(319);
  if (v1 <= 0x3F)
  {
    sub_260F30BC8();
    if (v2 <= 0x3F)
    {
      sub_260F30C14(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_260F30BC8()
{
  result = qword_27FE609E0;
  if (!qword_27FE609E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE609E0);
  }

  return result;
}

void sub_260F30C14(uint64_t a1)
{
  if (!qword_27FE609E8)
  {
    v2 = type metadata accessor for AsyncIngestConfig(255);
    v4 = type metadata accessor for DataExtractor(a1, v2, &protocol witness table for AsyncIngestConfig, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_27FE609E8);
    }
  }
}

uint64_t sub_260F30C78()
{
  v0 = sub_260F49638();
  __swift_allocate_value_buffer(v0, qword_27FE609F0);
  __swift_project_value_buffer(v0, qword_27FE609F0);
  return sub_260F49628();
}

uint64_t BiomeAsyncIngestProcessor.init(eventIngestor:config:userDefaults:biomeUseCase:telemetry:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v17 = type metadata accessor for BiomeAsyncIngestProcessor(0, a7, a8, a4);
  v18 = v17[12];
  (*(*(a7 - 8) + 32))(&a9[v17[9]], a1, a7);
  result = sub_260F2FA24(a2, &a9[v17[10]]);
  *a9 = a3;
  v20 = &a9[v17[11]];
  *v20 = a4;
  *(v20 + 1) = a5;
  *&a9[v18] = a6;
  return result;
}

uint64_t BiomeAsyncIngestProcessor.ingest()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = type metadata accessor for AsyncIngestError(0);
  v2[6] = swift_task_alloc();
  v2[7] = *(a1 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260F30EC4, 0, 0);
}

uint64_t sub_260F30EC4()
{
  v73 = v0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v2 + 40);
  *(v0 + 248) = v3;
  v4 = v1 + v3;
  v5 = type metadata accessor for AsyncIngestConfig(0);
  v72 = *(v4 + v5[8]);

  v6 = CollectionPolicy.canCollect()();

  if (v6)
  {
    v7 = sub_260F323D0();
    *(v0 + 80) = v7;
    v28 = *(v0 + 24);
    v29 = v7;
    v30 = sub_260F493B8();
    *(v0 + 88) = v30;
    *(v0 + 96) = *(v30 - 8);
    v31 = swift_task_alloc();
    *(v0 + 104) = v31;
    v69 = v29;
    v32 = [v29 configuration];
    v33 = [v32 streamUUID];

    v70 = v31;
    sub_260F49388();

    v34 = sub_260F49368();
    *(v0 + 112) = v34;
    v35 = *(v34 - 8);
    v36 = v35;
    *(v0 + 120) = v35;
    *(v0 + 128) = *(v35 + 64);
    v37 = swift_task_alloc();
    *(v0 + 136) = v37;
    sub_260F3255C(v28);
    *(v0 + 144) = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60A08, &qword_260F4B218) - 8) + 64);
    v38 = swift_task_alloc();
    v39 = *(v36 + 16);
    *(v0 + 152) = v39;
    *(v0 + 160) = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v39(v38, v37, v34);
    v40 = *(v36 + 56);
    v40(v38, 0, 1, v34);
    v41 = swift_task_alloc();
    v40(v41, 1, 1, v34);
    v42 = (v4 + v5[11]);
    v68 = *v42;
    v67 = *(v42 + 8);
    v43 = (v4 + v5[12]);
    v66 = *v43;
    v65 = *(v43 + 8);
    v44 = *(v36 + 48);
    *(v0 + 168) = v44;
    *(v0 + 176) = (v36 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v45 = v44(v38, 1, v34);
    v46 = 0;
    if (v45 != 1)
    {
      v46 = sub_260F49358();
      (*(v36 + 8))(v38, v34);
    }

    if (v44(v41, 1, v34) == 1)
    {
      v47 = 0;
    }

    else
    {
      v47 = sub_260F49358();
      (*(v36 + 8))(v41, v34);
    }

    if (v65)
    {
      v48 = 0;
    }

    else
    {
      v48 = v66;
    }

    if (v67)
    {
      v49 = 0;
    }

    else
    {
      v49 = v68;
    }

    v50 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v46 endDate:v47 maxEvents:v49 lastN:v48 reversed:0];
    *(v0 + 184) = v50;

    *(v0 + 192) = swift_task_alloc();
    v51 = swift_task_alloc();
    *(v0 + 200) = v51;
    v52 = sub_260F496E8();
    v53 = [v69 publisherWithUseCase:v52 options:v50];
    *(v0 + 208) = v53;

    v54 = swift_task_alloc();
    *(v0 + 216) = v54;
    *v54 = v0;
    v54[1] = sub_260F31630;
    v55 = *(v0 + 24);

    return sub_260F32888(v51, v53, v70, v55);
  }

  else
  {
    v8 = *(*(v0 + 56) + 16);
    v8(*(v0 + 72), *(v0 + 32), *(v0 + 24));
    if (qword_27FE60688 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 64);
    v10 = *(v0 + 72);
    v11 = *(v0 + 24);
    v12 = sub_260F49638();
    __swift_project_value_buffer(v12, qword_27FE609F0);
    v8(v9, v10, v11);
    v13 = sub_260F49618();
    v14 = sub_260F498D8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 64);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v72 = v17;
      *v16 = 136315138;
      v18 = v15 + *(v2 + 40);
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (v21)
      {
        if (v21 == 1)
        {
          v20 = sub_260F49718();
          v19 = v22;
        }

        else
        {
          v57 = [v20 identifier];
          v58 = sub_260F49718();
          v60 = v59;
          sub_260F34CD4(v20, v19, 2);

          v20 = v58;
          v19 = v60;
        }
      }

      else
      {
      }

      v71 = *(v0 + 72);
      v61 = *(v0 + 24);
      v62 = *(*(v0 + 56) + 8);
      v62(*(v0 + 64), v61);
      v63 = sub_260F29D18(v20, v19, &v72);

      *(v16 + 4) = v63;
      _os_log_impl(&dword_260F24000, v13, v14, "Skipping %s: collection demands were not met", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x2666F6350](v17, -1, -1);
      MEMORY[0x2666F6350](v16, -1, -1);

      v62(v71, v61);
    }

    else
    {
      v24 = *(v0 + 64);
      v23 = *(v0 + 72);
      v25 = *(v0 + 56);
      v26 = *(v0 + 24);

      v27 = *(v25 + 8);
      v27(v24, v26);
      v27(v23, v26);
    }

    v64 = *(v0 + 8);

    return v64();
  }
}

uint64_t sub_260F31630()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_260F31BEC;
  }

  else
  {

    v3 = sub_260F3174C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260F3174C()
{
  v1 = v0[3];
  sub_260F34CFC(v0[25], v0[24]);

  v4 = v1 + 16;
  v3 = *(v1 + 16);
  v2 = *(v4 + 8);
  v7 = (*(v2 + 16) + **(v2 + 16));
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_260F31888;

  return v7(v3, v2);
}

uint64_t sub_260F31888()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_260F32278;
  }

  else
  {
    v2 = sub_260F3199C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260F3199C()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[14];
  v4 = swift_task_alloc();
  v5 = swift_task_alloc();
  sub_260F35828(v1, v5, &qword_27FE60A08, &qword_260F4B218);
  v6 = v2(v5, 1, v3);
  v7 = v0[23];
  v16 = v0[24];
  v17 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[12];
  v11 = v0[10];
  v18 = v0[11];
  v19 = v0[13];
  if (v6 == 1)
  {

    sub_260F2AA58(v16, &qword_27FE60A08, &qword_260F4B218);
    (*(v8 + 8))(v17, v9);
    (*(v10 + 8))(v19, v18);
    sub_260F2AA58(v5, &qword_27FE60A08, &qword_260F4B218);
  }

  else
  {
    v12 = v0[3];
    (*(v8 + 32))(v4, v5, v9);

    sub_260F33F44(v4, v12);

    v13 = *(v8 + 8);
    v13(v4, v9);
    sub_260F2AA58(v16, &qword_27FE60A08, &qword_260F4B218);
    v13(v17, v9);
    (*(v10 + 8))(v19, v18);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_260F31BEC()
{
  v61 = v0;
  v1 = *(v0 + 224);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE60C70, qword_260F4B3B0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 32) + *(v0 + 248);

    v5 = swift_task_alloc();
    sub_260F34CFC(v3, v5);
    v7 = *v4;
    v6 = *(v4 + 8);
    if (*(v4 + 16))
    {
      if (*(v4 + 16) == 1)
      {
        v7 = sub_260F49718();
        v6 = v8;
      }

      else
      {
        v16 = [v7 identifier];
        v17 = sub_260F49718();
        v19 = v18;

        sub_260F34CD4(v7, v6, 2);
        v7 = v17;
        v6 = v19;
      }
    }

    else
    {
    }

    if (qword_27FE60688 != -1)
    {
      swift_once();
    }

    v20 = sub_260F49638();
    __swift_project_value_buffer(v20, qword_27FE609F0);

    v21 = sub_260F49618();
    v22 = sub_260F498F8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v60[0] = v24;
      *v23 = 136315138;
      v25 = sub_260F29D18(v7, v6, v60);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_260F24000, v21, v22, "Error ingesting stream %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x2666F6350](v24, -1, -1);
      MEMORY[0x2666F6350](v23, -1, -1);
    }

    else
    {
    }

    v26 = *(v0 + 168);
    v27 = *(v0 + 112);
    v28 = swift_task_alloc();
    v29 = swift_task_alloc();
    v59 = v5;
    sub_260F35828(v5, v29, &qword_27FE60A08, &qword_260F4B218);
    if (v26(v29, 1, v27) == 1)
    {
      sub_260F2AA58(v29, &qword_27FE60A08, &qword_260F4B218);
    }

    else
    {
      v30 = *(v0 + 152);
      v31 = *(v0 + 112);
      (*(*(v0 + 120) + 32))(v28, v29, v31);

      v32 = swift_task_alloc();
      v30(v32, v28, v31);
      v33 = sub_260F49618();
      v34 = sub_260F498D8();
      v35 = os_log_type_enabled(v33, v34);
      v37 = *(v0 + 112);
      v36 = *(v0 + 120);
      if (v35)
      {
        buf = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v60[0] = v58;
        *buf = 136315138;
        sub_260F34D6C();
        v56 = v34;
        v38 = sub_260F499E8();
        v40 = v39;
        v41 = *(v36 + 8);
        v41(v32, v37);
        v42 = sub_260F29D18(v38, v40, v60);

        *(buf + 4) = v42;
        _os_log_impl(&dword_260F24000, v33, v56, "Saving bookmark: %s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v58);
        MEMORY[0x2666F6350](v58, -1, -1);
        MEMORY[0x2666F6350](buf, -1, -1);
      }

      else
      {

        v41 = *(v36 + 8);
        v41(v32, v37);
      }

      v43 = *(v0 + 112);
      v44 = *(v0 + 24);

      sub_260F33F44(v28, v44);
      v41(v28, v43);
    }

    v45 = *(v0 + 136);
    v46 = *(v0 + 120);
    v52 = *(v0 + 184);
    v53 = *(v0 + 112);
    v47 = *(v0 + 96);
    v57 = *(v0 + 104);
    v48 = *(v0 + 80);
    bufa = *(v0 + 88);

    sub_260F357D0(&qword_27FE60A10, type metadata accessor for AsyncIngestError, &unk_260F4B294);
    swift_allocError();
    sub_260F35828(v59, v49, &qword_27FE60A08, &qword_260F4B218);
    swift_willThrow();

    sub_260F2AA58(v59, &qword_27FE60A08, &qword_260F4B218);
    (*(v46 + 8))(v45, v53);
    (*(v47 + 8))(v57, bufa);
  }

  else
  {
    v9 = *(v0 + 184);
    v10 = *(v0 + 136);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 88);

    (*(v12 + 8))(v10, v11);
    (*(v14 + 8))(v13, v15);
  }

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_260F32278()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 88);

  sub_260F2AA58(v1, &qword_27FE60A08, &qword_260F4B218);
  (*(v5 + 8))(v3, v4);
  (*(v7 + 8))(v6, v8);

  v9 = *(v0 + 8);

  return v9();
}

id sub_260F323D0()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      return v2;
    }

    v7[0] = 0;
    v3 = [BiomeLibrary() streamWithIdentifier:v2 error:v7];
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = v7[0];
    }

    else
    {
      v6 = v7[0];
      sub_260F492E8();

      swift_willThrow();
    }

    sub_260F34CD4(v2, v1, 1);
  }

  else
  {

    v3 = sub_260F495C8();
    sub_260F34CD4(v2, v1, 0);
    if (!v3)
    {
      sub_260F35758();
      swift_allocError();
      swift_willThrow();
    }
  }

  return v3;
}

uint64_t sub_260F3255C(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_260F34378();
  v7 = sub_260F496E8();

  [v6 doubleForKey_];
  v9 = v8;

  if (qword_27FE60688 != -1)
  {
    swift_once();
  }

  v10 = sub_260F49638();
  __swift_project_value_buffer(v10, qword_27FE609F0);
  (*(v3 + 16))(v5, v1, a1);
  v11 = sub_260F49618();
  v12 = sub_260F498E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136315394;
    v15 = &v5[*(a1 + 40)];
    v34 = 6255476;
    v35 = 0xE300000000000000;
    v36 = v14;
    v16 = *v15;
    v17 = *(v15 + 1);
    v18 = v15[16];
    if (v18)
    {
      if (v18 == 1)
      {
        v19 = sub_260F49718();
        v17 = v20;
      }

      else
      {
        v22 = v16;
        v23 = [v16 identifier];
        v24 = sub_260F49718();
        v31 = v25;
        v32 = v24;

        sub_260F34CD4(v22, v17, 2);
        v17 = v31;
        v19 = v32;
      }
    }

    else
    {
      v21 = v16;

      v19 = v21;
    }

    MEMORY[0x2666F59D0](v19, v17);

    v26 = v34;
    v27 = v35;
    (*(v3 + 8))(v5, a1);
    v28 = sub_260F29D18(v26, v27, &v36);

    *(v13 + 4) = v28;
    *(v13 + 12) = 2048;
    *(v13 + 14) = v9;
    _os_log_impl(&dword_260F24000, v11, v12, "Bookmark for %s found: %f", v13, 0x16u);
    v29 = v33;
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x2666F6350](v29, -1, -1);
    MEMORY[0x2666F6350](v13, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, a1);
  }

  return sub_260F49338();
}

uint64_t sub_260F32888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  return MEMORY[0x2822009F8](sub_260F328B0, 0, 0);
}

uint64_t sub_260F328B0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 112) + *(*(v0 + 104) + 40);
  *(v0 + 44) = *(v2 + 20);
  *(v0 + 41) = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60AD0, &qword_260F4B2D8);
  inited = swift_initStackObject();
  *(v0 + 120) = inited;
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60AD8, &qword_260F4B2E0));
  v5 = v1;
  v6 = [v4 init];
  *(inited + 16) = v6;
  *(inited + 24) = 0;
  [v5 subscribe_];

  return MEMORY[0x2822009F8](sub_260F329AC, 0, 0);
}

uint64_t sub_260F329AC()
{
  if (*(*(v0 + 120) + 24))
  {
    *(v0 + 43) = 1;
    *(v0 + 144) = 0;
    *(v0 + 152) = 0;
    v1 = sub_260F32B88;
LABEL_5:

    return MEMORY[0x2822009F8](v1, 0, 0);
  }

  *(v0 + 42) = 1;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  if (sub_260F497F8())
  {
    *(*(v0 + 120) + 24) = 1;
    sub_260F34538();
    sub_260F497D8();
    sub_260F357D0(&qword_27FE60AF0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v2 = swift_allocError();
    sub_260F49698();
    swift_willThrow();
    *(v0 + 176) = v2;
    v1 = sub_260F32F34;
    goto LABEL_5;
  }

  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60AE0, &qword_260F4B2E8);
  *v3 = v0;
  v3[1] = sub_260F32E20;
  v5 = *(v0 + 120);

  return MEMORY[0x2822008A0](v0 + 64, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_260F357AC, v5, v4);
}

uint64_t sub_260F32B88()
{
  v19 = v0;

  v1 = *(v0 + 152);
  v2 = *(v0 + 43);
  v3 = *(v0 + 144);
  if (qword_27FE60688 != -1)
  {
    swift_once();
  }

  v4 = sub_260F49638();
  __swift_project_value_buffer(v4, qword_27FE609F0);
  v5 = sub_260F49618();
  v6 = sub_260F498E8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1;
    *(v7 + 12) = 2080;
    *(v0 + 48) = v3;
    *(v0 + 56) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60AE8, &qword_260F4B2F0);
    v9 = sub_260F49728();
    v11 = sub_260F29D18(v9, v10, &v18);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_260F24000, v5, v6, "Processed %ld events. End Bookmark: %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2666F6350](v8, -1, -1);
    MEMORY[0x2666F6350](v7, -1, -1);
  }

  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  if (v2)
  {
    v14 = sub_260F49368();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  else
  {
    sub_260F49338();

    v15 = sub_260F49368();
    (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_260F32E20()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_260F33158;
  }

  else
  {
    v2 = sub_260F33114;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260F32F34()
{
  *(v0 + 72) = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE60C70, qword_260F4B3B0);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_260F32FC8, 0, 0);
}

uint64_t sub_260F32FC8()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 42);
  type metadata accessor for AsyncIngestError(0);
  sub_260F357D0(&qword_27FE60A10, type metadata accessor for AsyncIngestError, &unk_260F4B294);
  swift_allocError();
  v4 = v3;
  if (v2)
  {
    v5 = 1;
  }

  else
  {
    sub_260F49338();
    v5 = 0;
  }

  v6 = *(v0 + 88);
  v7 = sub_260F49368();
  (*(*(v7 - 8) + 56))(v4, v5, 1, v7);
  swift_willThrow();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_260F33114()
{
  v1 = v0[8];
  v0[23] = v1;
  if (v1)
  {
    v2 = sub_260F33414;
  }

  else
  {
    *(v0[15] + 24) = 1;
    v2 = sub_260F3317C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260F3317C()
{
  v19 = v0;

  v1 = *(v0 + 136);
  v2 = *(v0 + 42);
  v3 = *(v0 + 128);
  if (qword_27FE60688 != -1)
  {
    swift_once();
  }

  v4 = sub_260F49638();
  __swift_project_value_buffer(v4, qword_27FE609F0);
  v5 = sub_260F49618();
  v6 = sub_260F498E8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v3;
    *(v7 + 12) = 2080;
    *(v0 + 48) = v1;
    *(v0 + 56) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60AE8, &qword_260F4B2F0);
    v9 = sub_260F49728();
    v11 = sub_260F29D18(v9, v10, &v18);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_260F24000, v5, v6, "Processed %ld events. End Bookmark: %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2666F6350](v8, -1, -1);
    MEMORY[0x2666F6350](v7, -1, -1);
  }

  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  if (v2)
  {
    v14 = sub_260F49368();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  else
  {
    sub_260F49338();

    v15 = sub_260F49368();
    (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_260F33414()
{
  v1 = *(*(v0 + 112) + *(*(v0 + 104) + 48));
  *(v0 + 192) = v1;
  if (v1)
  {
    sub_260F49428();
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  *(v0 + 200) = v2;
  if (!v2)
  {
    if (qword_27FE60688 != -1)
    {
      swift_once();
    }

    v20 = sub_260F49638();
    __swift_project_value_buffer(v20, qword_27FE609F0);
    v21 = sub_260F49618();
    v22 = sub_260F49908();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_24;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Can't get BMStoreEvent out of the stream";
LABEL_18:
    _os_log_impl(&dword_260F24000, v21, v22, v24, v23, 2u);
    MEMORY[0x2666F6350](v23, -1, -1);
    goto LABEL_24;
  }

  v3 = v2;
  v4 = [v2 eventBodyData];
  if (!v4)
  {
    if (qword_27FE60688 != -1)
    {
      swift_once();
    }

    v25 = sub_260F49638();
    __swift_project_value_buffer(v25, qword_27FE609F0);
    v21 = sub_260F49618();
    v22 = sub_260F49908();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_24;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Event missing body data";
    goto LABEL_18;
  }

  v5 = *(v0 + 41);
  v6 = v4;
  v7 = sub_260F49328();
  v9 = v8;

  *(v0 + 208) = v7;
  *(v0 + 216) = v9;
  if ((v5 & 1) != 0 || (v10 = *(v0 + 44), v10 == [v3 eventBodyDataVersion]))
  {
    v11 = *(v0 + 104);
    [v3 timestamp];
    v13 = v12;
    v16 = v11 + 16;
    v15 = *(v11 + 16);
    v14 = *(v16 + 8);
    v29 = (*(v14 + 8) + **(v14 + 8));
    v17 = swift_task_alloc();
    *(v0 + 224) = v17;
    *v17 = v0;
    v17[1] = sub_260F33858;
    v18.n128_u64[0] = v13;

    return v29(v7, v9, v15, v14, v18);
  }

  if (qword_27FE60688 != -1)
  {
    swift_once();
  }

  v26 = sub_260F49638();
  __swift_project_value_buffer(v26, qword_27FE609F0);
  v21 = sub_260F49618();
  v27 = sub_260F498F8();
  if (os_log_type_enabled(v21, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_260F24000, v21, v27, "Ignore incompatible data version", v28, 2u);
    MEMORY[0x2666F6350](v28, -1, -1);
  }

  sub_260F281D0(v7, v9);
LABEL_24:
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_260F33C00, 0, 0);
}

uint64_t sub_260F33858()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_260F33DE0;
  }

  else
  {
    v2 = sub_260F3396C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260F3396C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 128);
  *(v3 + 240) = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = *(v3 + 192);
    [*(v3 + 200) timestamp];
    *(v3 + 248) = v7;
    if (v6)
    {
      sub_260F49418();
    }

    sub_260F281D0(*(v3 + 208), *(v3 + 216));
    swift_unknownObjectRelease();
    a1 = sub_260F33A18;
    a2 = 0;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_260F33A18()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 240);
  if (*(*(v0 + 120) + 24))
  {
    *(v0 + 152) = v2;
    *(v0 + 43) = 0;
    *(v0 + 144) = v1;
    v3 = sub_260F32B88;
LABEL_5:

    return MEMORY[0x2822009F8](v3, 0, 0);
  }

  *(v0 + 136) = v1;
  *(v0 + 42) = 0;
  *(v0 + 128) = v2;
  if (sub_260F497F8())
  {
    *(*(v0 + 120) + 24) = 1;
    sub_260F34538();
    sub_260F497D8();
    sub_260F357D0(&qword_27FE60AF0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v4 = swift_allocError();
    sub_260F49698();
    swift_willThrow();
    *(v0 + 176) = v4;
    v3 = sub_260F32F34;
    goto LABEL_5;
  }

  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60AE0, &qword_260F4B2E8);
  *v5 = v0;
  v5[1] = sub_260F32E20;
  v7 = *(v0 + 120);

  return MEMORY[0x2822008A0](v0 + 64, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_260F357AC, v7, v6);
}

uint64_t sub_260F33C00()
{
  if (*(*(v0 + 120) + 24))
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 42);
    *(v0 + 152) = *(v0 + 128);
    *(v0 + 43) = v2;
    *(v0 + 144) = v1;
    v3 = sub_260F32B88;
LABEL_5:

    return MEMORY[0x2822009F8](v3, 0, 0);
  }

  if (sub_260F497F8())
  {
    *(*(v0 + 120) + 24) = 1;
    sub_260F34538();
    sub_260F497D8();
    sub_260F357D0(&qword_27FE60AF0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v4 = swift_allocError();
    sub_260F49698();
    swift_willThrow();
    *(v0 + 176) = v4;
    v3 = sub_260F32F34;
    goto LABEL_5;
  }

  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60AE0, &qword_260F4B2E8);
  *v5 = v0;
  v5[1] = sub_260F32E20;
  v7 = *(v0 + 120);

  return MEMORY[0x2822008A0](v0 + 64, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_260F357AC, v7, v6);
}

uint64_t sub_260F33DE0()
{
  sub_260F281D0(*(v0 + 208), *(v0 + 216));
  swift_unknownObjectRelease();

  v1 = *(v0 + 232);
  v2 = *(v0 + 42);
  type metadata accessor for AsyncIngestError(0);
  sub_260F357D0(&qword_27FE60A10, type metadata accessor for AsyncIngestError, &unk_260F4B294);
  swift_allocError();
  v4 = v3;
  if (v2)
  {
    v5 = 1;
  }

  else
  {
    sub_260F49338();
    v5 = 0;
  }

  v6 = *(v0 + 88);
  v7 = sub_260F49368();
  (*(*(v7 - 8) + 56))(v4, v5, 1, v7);
  swift_willThrow();

  v8 = *(v0 + 8);

  return v8();
}

void sub_260F33F44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FE60688 != -1)
  {
    swift_once();
  }

  v9 = sub_260F49638();
  __swift_project_value_buffer(v9, qword_27FE609F0);
  (*(v6 + 16))(v8, v2, a2);
  v10 = sub_260F49368();
  v43 = &v35;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  v14 = sub_260F49618();
  v15 = sub_260F498E8();
  if (os_log_type_enabled(v14, v15))
  {
    v40 = a1;
    v42 = v3;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v38 = v17;
    *v16 = 136315394;
    v41 = a2;
    v18 = &v8[*(a2 + 40)];
    v44 = 6255476;
    v45 = 0xE300000000000000;
    v46 = v17;
    v19 = *v18;
    v20 = *(v18 + 1);
    v21 = v18[16];
    v39 = v15;
    if (v21)
    {
      if (v21 == 1)
      {
        v19 = sub_260F49718();
        v20 = v22;
      }

      else
      {
        v23 = [v19 identifier];
        v24 = sub_260F49718();
        v36 = v25;
        v37 = v24;

        sub_260F34CD4(v19, v20, 2);
        v20 = v36;
        v19 = v37;
      }
    }

    else
    {
    }

    MEMORY[0x2666F59D0](v19, v20);

    v26 = v44;
    v27 = v45;
    (*(v6 + 8))(v8, v41);
    v28 = sub_260F29D18(v26, v27, &v46);

    *(v16 + 4) = v28;
    *(v16 + 12) = 2048;
    sub_260F49348();
    v30 = v29;
    (*(v11 + 8))(v13, v10);
    *(v16 + 14) = v30;
    _os_log_impl(&dword_260F24000, v14, v39, "Saving bookmark for %s: %f", v16, 0x16u);
    v31 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x2666F6350](v31, -1, -1);
    MEMORY[0x2666F6350](v16, -1, -1);

    v3 = v42;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
    (*(v6 + 8))(v8, a2);
  }

  v32 = *v3;
  sub_260F49348();
  v33 = sub_260F49808();
  sub_260F34378();
  v34 = sub_260F496E8();

  [v32 setValue:v33 forKey:v34];
}

uint64_t sub_260F34378()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v3 = sub_260F49718();
      v2 = v4;
    }

    else
    {
      v6 = *v0;
      v7 = [v1 identifier];
      v8 = sub_260F49718();
      v10 = v9;

      sub_260F34CD4(v6, v2, 2);
      v3 = v8;
      v2 = v10;
    }
  }

  else
  {
    v5 = *v0;

    v3 = v5;
  }

  MEMORY[0x2666F59D0](v3, v2);

  return 6255476;
}

void sub_260F34460(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2 >> 62;
  if (!v4)
  {
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_260F499B8())
  {
    if (sub_260F499B8())
    {
LABEL_3:
      if ((v3 & 0xC000000000000001) == 0)
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        swift_unknownObjectRetain();
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x2666F5C00](0, v3);
      if (!v4)
      {
LABEL_6:
        v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v5 = sub_260F499B8();
LABEL_13:
      if (v5)
      {
        sub_260F35ABC(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_260F34538()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60AF8, &qword_260F4B2F8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v21 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  v11 = MEMORY[0x277D85000];
  v12 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v13 = *(v1 + v12);
  if (v13 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  *(v1 + v12) = 1;
  sub_260F35818(v13);
  [v14 cancel];
  v15 = *((*v11 & *v1) + 0x68);
  swift_beginAccess();
  sub_260F35828(v1 + v15, v10, &qword_27FE60AF8, &qword_260F4B2F8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE60B00, qword_260F4B300);
  v17 = *(v16 - 8);
  (*(v17 + 56))(v8, 1, 1, v16);
  swift_beginAccess();
  sub_260F35890(v8, v1 + v15);
  swift_endAccess();
  sub_260F35828(v10, v5, &qword_27FE60AF8, &qword_260F4B2F8);
  if ((*(v17 + 48))(v5, 1, v16) == 1)
  {
    sub_260F2AA58(v5, &qword_27FE60AF8, &qword_260F4B2F8);
  }

  else
  {
    sub_260F497D8();
    sub_260F357D0(&qword_27FE60AF0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v18 = swift_allocError();
    sub_260F49698();
    v21[0] = v18;
    sub_260F497A8();
    (*(v17 + 8))(v5, v16);
  }

  sub_260F2AA58(v10, &qword_27FE60AF8, &qword_260F4B2F8);
  v19 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  *(v1 + v19) = MEMORY[0x277D84F90];
}

void sub_260F34898(uint64_t a1)
{
  v26 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60AF8, &qword_260F4B2F8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  sub_260F35828(v1 + v9, v7, &qword_27FE60AF8, &qword_260F4B2F8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE60B00, qword_260F4B300);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  sub_260F2AA58(v7, &qword_27FE60AF8, &qword_260F4B2F8);
  if (v12 != 1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v13 = *(v1 + *((*v8 & *v1) + 0x60));
  if (!v13)
  {
    (*(v11 + 16))(v5, v26, v10);
    (*(v11 + 56))(v5, 0, 1, v10);
    swift_beginAccess();
    sub_260F35890(v5, v1 + v9);
    swift_endAccess();
    return;
  }

  if (v13 == 1)
  {
    v14 = *((*v8 & *v1) + 0x70);
    swift_beginAccess();
    v15 = *(v1 + v14);
    if (!(v15 >> 62))
    {
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        v16 = swift_beginAccess();
        sub_260F34460(v16, v17);
        v28 = v18;
        swift_endAccess();
LABEL_14:
        sub_260F497B8();
        return;
      }

LABEL_13:
      v27 = 0;
      goto LABEL_14;
    }

LABEL_12:
    if (sub_260F499B8())
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  v19 = *((*v8 & *v1) + 0x70);
  swift_beginAccess();
  v20 = *(v1 + v19);
  if (v20 >> 62)
  {
    if (sub_260F499B8())
    {
      goto LABEL_10;
    }

LABEL_16:
    (*(v11 + 16))(v5, v26, v10);
    (*(v11 + 56))(v5, 0, 1, v10);
    swift_beginAccess();
    v24 = v13;
    sub_260F35890(v5, v1 + v9);
    swift_endAccess();
    [v24 requestDemand_];
    goto LABEL_17;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_10:
  swift_beginAccess();
  v21 = v13;
  sub_260F34460(v21, v22);
  v28 = v23;
  swift_endAccess();
  sub_260F497B8();
LABEL_17:
  sub_260F35818(v13);
}

uint64_t type metadata accessor for AsyncIngestError(uint64_t a1)
{
  result = qword_27FE60AB0;
  if (!qword_27FE60AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_260F34CD4(void *a1, id a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_260F34CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60A08, &qword_260F4B218);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_260F34D6C()
{
  result = qword_27FE60A18[0];
  if (!qword_27FE60A18[0])
  {
    sub_260F49368();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE60A18);
  }

  return result;
}

void sub_260F34DC0(uint64_t a1)
{
  sub_260F3552C();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AsyncIngestConfig(319);
      if (v3 <= 0x3F)
      {
        sub_260F35704(319, &qword_27FE60AA8, MEMORY[0x277D552A0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_260F34E9C(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_260F49658();
  v9 = *(v8 - 8);
  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  v10 = *(v8 - 8);
  v13 = *(v10 + 64);
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) != 0 && ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFFFFFFFF0)
  {
    v14 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v14 = 16;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v12;
  }

  if (v7 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v7;
  }

  v17 = *(v6 + 80);
  v18 = *(v6 + 64);
  if (v11)
  {
    v19 = *(v10 + 64);
  }

  else
  {
    v19 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v9 + 80);
  v21 = v20 | 7;
  v22 = v20 + 25;
  if (v16 >= a2)
  {
    goto LABEL_38;
  }

  v23 = ((((v21 + v18 + ((v17 + 8) & ~v17)) & ~v21) + ((((v14 + ((v19 + v21 + (v22 & ~v20)) & ~v21) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 8;
  v24 = v23 & 0xFFFFFFF8;
  if ((v23 & 0xFFFFFFF8) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = a2 - v16 + 1;
  }

  if (v25 >= 0x10000)
  {
    v26 = 4;
  }

  else
  {
    v26 = 2;
  }

  if (v25 < 0x100)
  {
    v26 = 1;
  }

  if (v25 >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27 > 1)
  {
    if (v27 == 2)
    {
      v28 = *(a1 + v23);
      if (!v28)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v28 = *(a1 + v23);
      if (!v28)
      {
        goto LABEL_38;
      }
    }

LABEL_35:
    v30 = v28 - 1;
    if (v24)
    {
      v30 = 0;
      v31 = *a1;
    }

    else
    {
      v31 = 0;
    }

    return v16 + (v31 | v30) + 1;
  }

  if (v27)
  {
    v28 = *(a1 + v23);
    if (v28)
    {
      goto LABEL_35;
    }
  }

LABEL_38:
  if ((v16 & 0x80000000) != 0)
  {
    v33 = (a1 + v17 + 8) & ~v17;
    if (v7 >= v15)
    {
      v35 = *(v6 + 48);

      return v35(v33, v7, v5);
    }

    else
    {
      v34 = (*(v9 + 48))((v22 + ((v33 + v18 + v21) & ~v21)) & ~v20);
      if (v34 >= 2)
      {
        return v34 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v32 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v32) = -1;
    }

    return (v32 + 1);
  }
}

void sub_260F35154(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_260F49658();
  v11 = v8;
  v12 = 0;
  v13 = *(v10 - 8);
  v14 = *(v13 + 84);
  v15 = *(v13 + 64);
  v16 = v14 - 1;
  if (!v14)
  {
    v16 = 0;
  }

  v17 = *(v8 + 80);
  v18 = *(v8 + 64);
  if (((v15 + 7) & 0xFFFFFFFFFFFFFFF8) != 0 && ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFFFFFFFF0)
  {
    v19 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v19 = 16;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v16;
  }

  if (v9 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v9;
  }

  v22 = *(v13 + 80);
  v23 = v22 | 7;
  if (v14)
  {
    v24 = *(v13 + 64);
  }

  else
  {
    v24 = v15 + 1;
  }

  v25 = ((v23 + v24 + ((v22 + 25) & ~v22)) & ~v23) + v19;
  v26 = (((((v22 | 7) + v18 + ((v17 + 8) & ~v17)) & ~v23) + ((((v25 + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v21 < a3)
  {
    if ((((((v22 | 7) + v18 + ((v17 + 8) & ~v17)) & ~v23) + ((((v25 + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v27 = a3 - v21 + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v12 = v28;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 > v21)
  {
    if ((((((v22 | 7) + v18 + ((v17 + 8) & ~v17)) & ~v23) + ((((v25 + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v29 = a2 - v21;
    }

    else
    {
      v29 = 1;
    }

    if ((((((v22 | 7) + v18 + ((v17 + 8) & ~v17)) & ~v23) + ((((v25 + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v30 = ~v21 + a2;
      bzero(a1, v26);
      *a1 = v30;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        *(a1 + v26) = v29;
      }

      else
      {
        *(a1 + v26) = v29;
      }
    }

    else if (v12)
    {
      *(a1 + v26) = v29;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v26) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    *(a1 + v26) = 0;
  }

  else if (v12)
  {
    *(a1 + v26) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return;
  }

LABEL_45:
  if ((v21 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v31 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v31 = (a2 - 1);
    }

    *a1 = v31;
    return;
  }

  v32 = (a1 + v17 + 8) & ~v17;
  if (v9 >= v20)
  {
    v36 = *(v11 + 56);

    v36(v32, a2, v9, v7);
  }

  else
  {
    v33 = ((v32 + v18 + v23) & ~v23);
    if (v20 < a2)
    {
      v34 = (((((((v25 | 1) + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 9;
      v35 = ~v20 + a2;
      bzero(((v32 + v18 + v23) & ~v23), v34);
      if (v34 > 3)
      {
        goto LABEL_54;
      }

      goto LABEL_71;
    }

    v33 = (&v33[v22 + 25] & ~v22);
    if (v16 >= a2)
    {
      v39 = *(v13 + 56);

      v39(v33, (a2 + 1));
    }

    else
    {
      if (v24 <= 3)
      {
        v37 = ~(-1 << (8 * v24));
      }

      else
      {
        v37 = -1;
      }

      if (v24)
      {
        v35 = v37 & (~v16 + a2);
        if (v24 <= 3)
        {
          v38 = v24;
        }

        else
        {
          v38 = 4;
        }

        bzero(v33, v24);
        if (v38 > 2)
        {
          if (v38 == 3)
          {
            *v33 = v35;
            v33[2] = BYTE2(v35);
            return;
          }

LABEL_54:
          *v33 = v35;
          return;
        }

        if (v38 != 1)
        {
          *v33 = v35;
          return;
        }

LABEL_71:
        *v33 = v35;
      }
    }
  }
}

unint64_t sub_260F3552C()
{
  result = qword_27FE60AA0;
  if (!qword_27FE60AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE60AA0);
  }

  return result;
}

uint64_t sub_260F35578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60A08, &qword_260F4B218);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_260F264F0);
}

uint64_t sub_260F355DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60A08, &qword_260F4B218);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_260F2653C);
}

void sub_260F35650(uint64_t a1)
{
  sub_260F35704(319, &qword_27FE60AC0, MEMORY[0x28220BF38]);
  if (v3 <= 0x3F)
  {
    v4 = v2;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
  }
}

void sub_260F35704(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_260F49928();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_260F35758()
{
  result = qword_27FE60AC8;
  if (!qword_27FE60AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE60AC8);
  }

  return result;
}

uint64_t sub_260F357D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_260F35818(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_260F35828(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_260F35890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60AF8, &qword_260F4B2F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_260F35900(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_260F499B8();
    }

    result = sub_260F49988();
    *v2 = result;
  }

  return result;
}

uint64_t sub_260F359BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_260F499B8();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_260F499B8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_260F35ABC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_260F499B8();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_260F499B8();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_260F35900(result, 1);

  return sub_260F359BC(v5, v3, 0);
}

uint64_t sub_260F35BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BiomeAsyncSequence.BiomeAsyncIterator(0, a2, a3, a4);
  v4 = swift_unknownObjectRetain();
  v8 = sub_260F38794(v4, v5, v6, v7);
  swift_unknownObjectRelease();
  return v8;
}

id sub_260F35C2C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_260F35C60()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x2822009F8](sub_260F35CA8, 0, 0);
}

uint64_t sub_260F35CA8()
{
  v1 = v0[3];
  if (*(v1 + 24))
  {
    v2 = v0[1];

    return v2(0);
  }

  else if (sub_260F497F8())
  {
    *(v1 + 24) = 1;
    sub_260F37848();
    sub_260F497D8();
    sub_260F387E8();
    swift_allocError();
    sub_260F49698();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[5] = v5;
    v6 = sub_260F49928();
    *v5 = v0;
    v5[1] = sub_260F35E5C;
    v7 = v0[3];

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_260F38894, v7, v6);
  }
}

uint64_t sub_260F35E5C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_260F35F9C;
  }

  else
  {
    v2 = sub_260F35F70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260F35F70()
{
  if (!*(v0 + 16))
  {
    *(*(v0 + 24) + 24) = 1;
  }

  return (*(v0 + 8))();
}

uint64_t sub_260F35FB4()
{
  v1 = v0;
  v2 = *(v0 + 16);
  sub_260F37848();

  return v1;
}

uint64_t sub_260F35FF4()
{
  sub_260F35FB4();

  return swift_deallocClassInstance();
}

uint64_t sub_260F36040(uint64_t a1)
{
  sub_260F49928();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FE60C70, qword_260F4B3B0);
  sub_260F497C8();
  result = sub_260F49928();
  if (v2 <= 0x3F)
  {
    result = sub_260F49638();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_260F36160(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_260F361F4;

  return sub_260F35C60();
}

uint64_t sub_260F361F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_260F36304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  v15 = type metadata accessor for BiomeAsyncSequence.BiomeAsyncIterator(0, *(a5 + 80), v13, v14);
  *v12 = v6;
  v12[1] = sub_260F363EC;

  return MEMORY[0x282200320](a1, a2, a3, v15, a6, v6 + 16);
}

uint64_t sub_260F363EC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

void *sub_260F364FC(void *a1)
{
  if (a1 < 2)
  {
    return 0;
  }

  v3 = a1;
  return a1;
}

void sub_260F36538(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  sub_260F35818(v3);
}

uint64_t sub_260F3656C@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  sub_260F49928();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FE60C70, qword_260F4B3B0);
  sub_260F497C8();
  v4 = sub_260F49928();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_260F36668(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  sub_260F49928();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FE60C70, qword_260F4B3B0);
  sub_260F497C8();
  v4 = sub_260F49928();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t sub_260F3676C(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_260F367E0(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  sub_260F49928();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FE60C70, qword_260F4B3B0);
  v5 = sub_260F497C8();
  v6 = sub_260F49928();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = *((v4 & v3) + 0x60);
  v11 = *(v1 + v10);
  *(v1 + v10) = a1;
  v12 = a1;
  sub_260F35818(v11);
  sub_260F3656C(v9);
  v13 = (*(*(v5 - 8) + 48))(v9, 1, v5);
  result = (*(v7 + 8))(v9, v6);
  if (v13 != 1)
  {
    return [v12 requestDemand_];
  }

  return result;
}

void sub_260F3699C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_260F367E0(v4);
}

uint64_t sub_260F36A04(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v4 = sub_260F49928();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FE60C70, qword_260F4B3B0);
  v5 = sub_260F497C8();
  v46 = sub_260F49928();
  v44 = *(v46 - 8);
  v6 = MEMORY[0x28223BE20](v46);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v48 = &v42 - v9;
  v50 = v5;
  v51 = *(v5 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v49 = &v42 - v11;
  v12 = *(v4 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  v18 = *(v3 - 8);
  v19 = MEMORY[0x28223BE20](v15);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - v22;
  sub_260F2A6A8(a1, v54);
  v24 = swift_dynamicCast();
  v25 = *(v18 + 56);
  if (v24)
  {
    v43 = *(v18 + 56);
    v25(v17, 0, 1, v3);
    (*(v18 + 32))(v23, v17, v3);
    (*(v18 + 16))(v21, v23, v3);
    swift_beginAccess();
    sub_260F49798();
    sub_260F49788();
    swift_endAccess();
    v26 = v48;
    sub_260F3656C(v48);
    v27 = v50;
    if ((*(v51 + 48))(v26, 1, v50) == 1)
    {
      (*(v44 + 8))(v26, v46);
    }

    else
    {
      v46 = v23;
      v36 = v51;
      (*(v51 + 32))(v49, v26, v27);
      v37 = v45;
      (*(v36 + 56))(v45, 1, 1, v27);
      sub_260F36668(v37);
      swift_beginAccess();
      swift_getWitnessTable();
      v38 = v47;
      v23 = v46;
      sub_260F498A8();
      swift_endAccess();
      v43(v38, 0, 1, v3);
      v39 = v49;
      sub_260F497B8();
      (*(v36 + 8))(v39, v27);
    }

    v40 = *MEMORY[0x277CF1780];
    (*(v18 + 8))(v23, v3);
    return v40;
  }

  else
  {
    v25(v17, 1, 1, v3);
    (*(v12 + 8))(v17, v4);
    sub_260F2A6A8(a1, v54);
    v28 = sub_260F49618();
    v29 = sub_260F498F8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v53 = v31;
      *v30 = 136315138;
      __swift_project_boxed_opaque_existential_1(v54, v54[3]);
      DynamicType = swift_getDynamicType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60D88, &qword_260F4B568);
      v32 = sub_260F49728();
      v34 = v33;
      __swift_destroy_boxed_opaque_existential_1(v54);
      v35 = sub_260F29D18(v32, v34, &v53);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_260F24000, v28, v29, "BiomeAsyncSubscriber ignored unexpected input type %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x2666F6350](v31, -1, -1);
      MEMORY[0x2666F6350](v30, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v54);
    }

    return BPSDemandMax();
  }
}

uint64_t sub_260F370EC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_260F49938();
  swift_unknownObjectRelease();
  v5 = sub_260F36A04(v7);

  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

void sub_260F37158(void *a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  v5 = sub_260F49928();
  MEMORY[0x28223BE20](v5);
  v41 = &v41 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FE60C70, qword_260F4B3B0);
  v7 = sub_260F497C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v42 = &v41 - v9;
  v43 = sub_260F49928();
  v10 = *(v43 - 8);
  v11 = MEMORY[0x28223BE20](v43);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v41 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v41 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v44 = &v41 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v41 - v22;
  v24 = [a1 state];
  if (v24 == 1)
  {
    v27 = [a1 error];
    v28 = (v8 + 48);
    if (v27)
    {
      v29 = v27;
      sub_260F3656C(v19);
      if ((*v28)(v19, 1, v7))
      {

        (*(v10 + 8))(v19, v43);
LABEL_21:
        v25 = MEMORY[0x277D85000];
LABEL_22:
        v38 = v44;
        (*(v8 + 56))(v44, 1, 1, v7);
        sub_260F36668(v38);
        goto LABEL_23;
      }

      v34 = v42;
      (*(v8 + 16))(v42, v19, v7);
      (*(v10 + 8))(v19, v43);
      v46 = v29;
    }

    else
    {
      sub_260F3656C(v16);
      if ((*v28)(v16, 1, v7))
      {
        (*(v10 + 8))(v16, v43);
        goto LABEL_21;
      }

      v34 = v42;
      (*(v8 + 16))(v42, v16, v7);
      (*(v10 + 8))(v16, v43);
      sub_260F38840();
      v36 = swift_allocError();
      *v37 = 0;
      v46 = v36;
    }

    sub_260F497A8();
    (*(v8 + 8))(v34, v7);
    goto LABEL_21;
  }

  if (v24)
  {
    sub_260F3656C(v13);
    v30 = (*(v8 + 48))(v13, 1, v7);
    v25 = MEMORY[0x277D85000];
    if (v30)
    {
      (*(v10 + 8))(v13, v43);
    }

    else
    {
      v31 = v42;
      (*(v8 + 16))(v42, v13, v7);
      (*(v10 + 8))(v13, v43);
      sub_260F38840();
      v32 = swift_allocError();
      *v33 = 1;
      v46 = v32;
      sub_260F497A8();
      (*(v8 + 8))(v31, v7);
    }

    goto LABEL_22;
  }

  v25 = MEMORY[0x277D85000];
  v26 = *((*MEMORY[0x277D85000] & *v2) + 0x70);
  swift_beginAccess();
  v45 = *(v2 + v26);
  sub_260F49798();
  swift_getWitnessTable();
  if (sub_260F49898())
  {
    sub_260F3656C(v23);
    if ((*(v8 + 48))(v23, 1, v7))
    {
      (*(v10 + 8))(v23, v43);
    }

    else
    {
      v35 = v42;
      (*(v8 + 16))(v42, v23, v7);
      (*(v10 + 8))(v23, v43);
      (*(*(v4 - 8) + 56))(v41, 1, 1, v4);
      sub_260F497B8();
      (*(v8 + 8))(v35, v7);
    }

    goto LABEL_22;
  }

LABEL_23:
  v39 = *((*v25 & *v2) + 0x60);
  v40 = *(v2 + v39);
  *(v2 + v39) = 1;
  sub_260F35818(v40);
}

void sub_260F377E0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_260F37158(v4);
}

uint64_t sub_260F37848()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v27 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  sub_260F49928();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FE60C70, qword_260F4B3B0);
  v4 = sub_260F497C8();
  v26 = sub_260F49928();
  v5 = *(v26 - 8);
  v6 = MEMORY[0x28223BE20](v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = 0;
  v15 = *((v3 & v2) + 0x60);
  v16 = *(v0 + v15);
  if (v16 >= 2)
  {
    v14 = v16;
  }

  *(v1 + v15) = 1;
  sub_260F35818(v16);
  [v14 cancel];
  sub_260F3656C(v13);
  v17 = *(v4 - 8);
  (*(v17 + 56))(v11, 1, 1, v4);
  sub_260F36668(v11);
  v18 = v26;
  (*(v5 + 16))(v8, v13, v26);
  v19 = (*(v17 + 48))(v8, 1, v4);
  v20 = v5;
  v21 = v18;
  if (v19 != 1)
  {
    sub_260F497D8();
    sub_260F387E8();
    v22 = swift_allocError();
    sub_260F49698();
    v28 = v22;
    sub_260F497A8();
    v20 = v17;
    v21 = v4;
  }

  (*(v20 + 8))(v8, v21);
  v23 = sub_260F49778();
  sub_260F3676C(v23);

  return (*(v5 + 8))(v13, v18);
}

void sub_260F37B40(void *a1)
{
  v1 = a1;
  sub_260F37848();
}

void sub_260F37B88(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v5 = sub_260F49928();
  MEMORY[0x28223BE20](v5);
  v22 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FE60C70, qword_260F4B3B0);
  v7 = sub_260F497C8();
  v8 = sub_260F49928();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  sub_260F3656C(&v22 - v13);
  v15 = *(v7 - 8);
  v16 = (*(v15 + 48))(v14, 1, v7);
  (*(v9 + 8))(v14, v8);
  if (v16 == 1)
  {
    v17 = *(v2 + *((*v3 & *v2) + 0x60));
    if (v17)
    {
      if (v17 == 1)
      {
        v18 = *((*v3 & *v2) + 0x70);
        swift_beginAccess();
        v24 = *(v2 + v18);
        sub_260F49798();
        swift_getWitnessTable();
        if (sub_260F49898())
        {
          (*(*(v4 - 8) + 56))(v22, 1, 1, v4);
        }

        else
        {
          swift_beginAccess();
          swift_getWitnessTable();
          v20 = v22;
          sub_260F498A8();
          swift_endAccess();
          (*(*(v4 - 8) + 56))(v20, 0, 1, v4);
        }

        sub_260F497B8();
      }

      else
      {
        v19 = *((*v3 & *v2) + 0x70);
        swift_beginAccess();
        v24 = *(v2 + v19);
        sub_260F387D8(v17);
        sub_260F49798();
        swift_getWitnessTable();
        if (sub_260F49898())
        {
          (*(v15 + 16))(v12, v23, v7);
          (*(v15 + 56))(v12, 0, 1, v7);
          sub_260F36668(v12);
          [v17 requestDemand_];
        }

        else
        {
          swift_beginAccess();
          swift_getWitnessTable();
          v21 = v22;
          sub_260F498A8();
          swift_endAccess();
          (*(*(v4 - 8) + 56))(v21, 0, 1, v4);
          sub_260F497B8();
        }

        sub_260F35818(v17);
      }
    }

    else
    {
      (*(v15 + 16))(v12, v23, v7);
      (*(v15 + 56))(v12, 0, 1, v7);
      sub_260F36668(v12);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_260F38108()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_260F37848();
  v4 = type metadata accessor for BiomeAsyncSequence.BiomeAsyncSubscriber(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v3);
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_260F381B4(char *a1)
{
  v2 = MEMORY[0x277D85000];
  sub_260F35818(*&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);
  v3 = *((*v2 & *a1) + 0x68);
  sub_260F49928();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FE60C70, qword_260F4B3B0);
  sub_260F497C8();
  v4 = sub_260F49928();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);

  v5 = *((*v2 & *a1) + 0x78);
  v6 = sub_260F49638();
  v7 = *(*(v6 - 8) + 8);

  return v7(&a1[v5], v6);
}

id sub_260F38338()
{
  v1 = MEMORY[0x277D85000];
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  *&v0[*((*MEMORY[0x277D85000] & *v0) + 0x60)] = 0;
  v4 = *((*v1 & *v0) + 0x68);
  v5 = *((v3 & v2) + 0x58);
  sub_260F49928();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FE60C70, qword_260F4B3B0);
  v6 = sub_260F497C8();
  (*(*(v6 - 8) + 56))(&v0[v4], 1, 1, v6);
  v7 = *((*v1 & *v0) + 0x70);
  *&v0[v7] = sub_260F49778();
  sub_260F49628();
  v9 = type metadata accessor for BiomeAsyncSequence.BiomeAsyncSubscriber(0, *((v3 & v2) + 0x50), v5, v8);
  v11.receiver = v0;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_260F38524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18ProtoDataExtractor18BiomeAsyncSequenceV0dE10SubscriberC17SubscriptionStateOyx_qd___G(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_260F38578(uint64_t *a1, unsigned int a2)
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

uint64_t sub_260F385CC(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_260F38628(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_260F38660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_260F386D0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = sub_260F35BE4(*v4, *(a2 + 16), a3, a4);
  result = swift_unknownObjectRelease();
  *a1 = v6;
  return result;
}

uint64_t sub_260F38724(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(type metadata accessor for BiomeAsyncSequence.BiomeAsyncSubscriber(0 *(*v4 + 80)];
  *(v4 + 16) = v6;
  *(v4 + 24) = 0;
  [a1 subscribe_];
  return v4;
}

uint64_t sub_260F38794(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BiomeAsyncSequence.BiomeAsyncIterator(0, *(v4 + 80), a3, a4);
  swift_allocObject();
  return sub_260F38724(a1, v6, v7, v8);
}

id sub_260F387D8(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

unint64_t sub_260F387E8()
{
  result = qword_27FE60AF0;
  if (!qword_27FE60AF0)
  {
    sub_260F497D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE60AF0);
  }

  return result;
}

unint64_t sub_260F38840()
{
  result = qword_27FE60D80;
  if (!qword_27FE60D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE60D80);
  }

  return result;
}

unint64_t sub_260F388CC()
{
  result = qword_27FE60D90[0];
  if (!qword_27FE60D90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE60D90);
  }

  return result;
}

uint64_t sub_260F38924()
{
  v0 = sub_260F49638();
  __swift_allocate_value_buffer(v0, qword_2810D48E0);
  __swift_project_value_buffer(v0, qword_2810D48E0);
  return sub_260F49628();
}

uint64_t BiomeEventIngestProcessor.__allocating_init(eventIngestor:config:userDefaults:biomeUseCase:telemetry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  BiomeEventIngestProcessor.init(eventIngestor:config:userDefaults:biomeUseCase:telemetry:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

char *BiomeEventIngestProcessor.init(eventIngestor:config:userDefaults:biomeUseCase:telemetry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  *&v6[*(*v6 + 144)] = 0;
  (*(*(*(v12 + 80) - 8) + 32))(&v6[*(*v6 + 120)], a1);
  (*(*(*(v12 + 88) - 8) + 32))(&v6[*(*v6 + 128)], a2);
  *(v6 + 2) = a3;
  v13 = &v6[*(*v6 + 136)];
  *v13 = a4;
  *(v13 + 1) = a5;
  *&v6[*(*v6 + 144)] = a6;
  return v6;
}

uint64_t sub_260F38B64()
{
  *(v1 + 40) = v0;
  *(v1 + 48) = *v0;
  return MEMORY[0x2822009F8](sub_260F38BAC, 0, 0);
}

uint64_t sub_260F38BAC()
{
  v30 = v0;
  v1 = *(v0 + 48);
  *(v0 + 56) = *(**(v0 + 40) + 128);
  v2 = *(v1 + 104);
  *(v0 + 64) = v2;
  v3 = *(v2 + 48);
  v4 = *(v1 + 88);
  *(v0 + 72) = v4;
  v3(v29, v4, v2);
  v5 = CollectionPolicy.canCollect()();

  if (v5)
  {
    v6 = sub_260F45148(v4, v2);
    *(v0 + 80) = v6;
    v17 = *(v0 + 48);
    v18 = v6;
    v19 = sub_260F493B8();
    *(v0 + 88) = v19;
    *(v0 + 96) = *(v19 - 8);
    v20 = swift_task_alloc();
    *(v0 + 104) = v20;
    v21 = [v18 configuration];
    v22 = [v21 streamUUID];

    sub_260F49388();
    v23 = sub_260F496E8();
    v24 = [v18 publisherWithUseCase_];

    *(v0 + 112) = sub_260F392E4(v24, v20);
    swift_beginAccess();
    v25 = *(v17 + 96);
    v26 = *(v17 + 80);
    v28 = (*(v25 + 16) + **(v25 + 16));
    v27 = swift_task_alloc();
    *(v0 + 120) = v27;
    *v27 = v0;
    v27[1] = sub_260F39014;

    return v28(v26, v25);
  }

  else
  {
    if (qword_2810D48D0 != -1)
    {
      swift_once();
    }

    v7 = sub_260F49638();
    __swift_project_value_buffer(v7, qword_2810D48E0);

    v8 = sub_260F49618();
    v9 = sub_260F498D8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29[0] = v11;
      *v10 = 136315138;
      v12 = IngestConfig.streamIdString.getter(v4, v2);
      v14 = sub_260F29D18(v12, v13, v29);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_260F24000, v8, v9, "Skipping %s: collection demands were not met", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x2666F6350](v11, -1, -1);
      MEMORY[0x2666F6350](v10, -1, -1);
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_260F39014()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_260F39238;
  }

  else
  {
    swift_endAccess();
    v2 = sub_260F39130;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260F39130()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  if (v2)
  {
    v6 = sub_260F452C4(v0[9], v0[8]);
    sub_260F3A740(v2, v6, v7);

    swift_unknownObjectRelease();
    (*(v4 + 8))(v1, v3);
  }

  else
  {
    (*(v4 + 8))(v0[13], v0[11]);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_260F39238()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  swift_endAccess();

  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_260F392E4(void *a1, uint64_t a2)
{
  v3 = v2;
  v47 = a1;
  v5 = *v2;
  v6 = *(*v2 + 104);
  v43 = *(*v2 + 88);
  v7 = sub_260F452C4(v43, v6);
  v46 = sub_260F3A27C(v7, v8);

  v45 = (*(v6 + 24))(v43, v6);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v49 = (v9 + 16);
  v10 = swift_allocObject();
  v41 = v10;
  *(v10 + 16) = 0;
  v40 = v10 + 16;
  v55 = sub_260F3B724;
  v56 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v42 = &v53;
  v53 = sub_260F40758;
  v54 = &block_descriptor_0;
  v44 = _Block_copy(&aBlock);
  v48 = v9;

  v11 = sub_260F493B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a2, v11);
  v15 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v16 = (v15 + v13 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v17 = (v15 + v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = *(v5 + 80);
  v20 = v5;
  v21 = v41;
  *(v18 + 2) = v19;
  *(v18 + 3) = v43;
  *(v18 + 4) = *(v20 + 96);
  *(v18 + 5) = v6;
  *(v18 + 6) = v3;
  (*(v12 + 32))(&v18[v15], v14, v11);
  v22 = &v18[v16];
  v23 = BYTE4(v45);
  *v22 = v45;
  v22[4] = v23 & 1;
  *&v18[v17] = v21;
  v55 = sub_260F3B744;
  v56 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_260F40D84;
  v54 = &block_descriptor_19;
  v24 = _Block_copy(&aBlock);
  v25 = v46;

  v26 = v44;
  v27 = [v47 drivableSinkWithBookmark:v25 completion:v44 shouldContinue:{v24, v40}];
  _Block_release(v24);
  _Block_release(v26);

  if (qword_2810D48D0 != -1)
  {
    swift_once();
  }

  v28 = sub_260F49638();
  __swift_project_value_buffer(v28, qword_2810D48E0);
  v29 = v48;

  v30 = sub_260F49618();
  v31 = sub_260F498E8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock = v33;
    *v32 = 134218242;
    swift_beginAccess();
    *(v32 + 4) = *(v21 + 16);

    *(v32 + 12) = 2080;
    v34 = v49;
    swift_beginAccess();
    v50 = *v34;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE60F70, &qword_260F4B848);
    v35 = sub_260F49728();
    v37 = sub_260F29D18(v35, v36, &aBlock);

    *(v32 + 14) = v37;
    _os_log_impl(&dword_260F24000, v30, v31, "Processed %ld events. End Bookmark: %s", v32, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x2666F6350](v33, -1, -1);
    MEMORY[0x2666F6350](v32, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v38 = *(v29 + 16);
  swift_unknownObjectRetain();

  return v38;
}

void sub_260F3989C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 state];
  if (v6)
  {
    if (v6 == 1)
    {
      if (qword_2810D48D0 != -1)
      {
        swift_once();
      }

      v7 = sub_260F49638();
      __swift_project_value_buffer(v7, qword_2810D48E0);
      v8 = a1;
      oslog = sub_260F49618();
      v9 = sub_260F498F8();

      if (os_log_type_enabled(oslog, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v27[0] = v11;
        *v10 = 136315138;
        v12 = [v8 error];
        if (v12)
        {
          v13 = v12;
          swift_getErrorValue();
          v14 = sub_260F49A28();
          v16 = v15;
        }

        else
        {
          v16 = 0xE300000000000000;
          v14 = 7104878;
        }

        v25 = sub_260F29D18(v14, v16, v27);

        *(v10 + 4) = v25;
        _os_log_impl(&dword_260F24000, oslog, v9, "Error on stream with %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x2666F6350](v11, -1, -1);
        MEMORY[0x2666F6350](v10, -1, -1);

        return;
      }
    }

    else
    {
      if (qword_2810D48D0 != -1)
      {
        swift_once();
      }

      v22 = sub_260F49638();
      __swift_project_value_buffer(v22, qword_2810D48E0);
      oslog = sub_260F49618();
      v23 = sub_260F49908();
      if (os_log_type_enabled(oslog, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_260F24000, oslog, v23, "Unexpected completion state on stream", v24, 2u);
        MEMORY[0x2666F6350](v24, -1, -1);
      }
    }
  }

  else
  {
    swift_beginAccess();
    *(a3 + 16) = a2;
    swift_unknownObjectRelease();
    v17 = qword_2810D48D0;
    swift_unknownObjectRetain();
    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_260F49638();
    __swift_project_value_buffer(v18, qword_2810D48E0);
    v19 = sub_260F49618();
    v20 = sub_260F498D8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_260F24000, v19, v20, "Stream completed", v21, 2u);
      MEMORY[0x2666F6350](v21, -1, -1);
    }
  }
}

uint64_t sub_260F39C18(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + *(*a2 + 144)))
  {

    sub_260F49428();
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 eventBodyData];
    if (!v10)
    {
      if (qword_2810D48D0 != -1)
      {
        swift_once();
      }

      v20 = sub_260F49638();
      __swift_project_value_buffer(v20, qword_2810D48E0);
      v21 = sub_260F49618();
      v22 = sub_260F49908();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_260F24000, v21, v22, "Event missing body data", v23, 2u);
        MEMORY[0x2666F6350](v23, -1, -1);
      }

      goto LABEL_26;
    }

    v11 = v10;
    v12 = sub_260F49328();
    v14 = v13;

    if ((a4 & 0x100000000) != 0 || [v9 eventBodyDataVersion] == a4)
    {
      v15 = MEMORY[0x2666F5D90]();
      sub_260F3A178(a2, v12, v14, v9, v32);
      objc_autoreleasePoolPop(v15);
      swift_beginAccess();
      v24 = *(a5 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (!v25)
      {
        *(a5 + 16) = v26;
        if (*(a2 + *(*a2 + 144)))
        {

          sub_260F49418();
          sub_260F281D0(v12, v14);
        }

        else
        {
          sub_260F281D0(v12, v14);
        }

LABEL_26:
        swift_unknownObjectRelease();
        return 1;
      }

      __break(1u);
    }

    else if (qword_2810D48D0 == -1)
    {
LABEL_22:
      v27 = sub_260F49638();
      __swift_project_value_buffer(v27, qword_2810D48E0);
      v28 = sub_260F49618();
      v29 = sub_260F498F8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_260F24000, v28, v29, "Ignore incompatible data version", v30, 2u);
        MEMORY[0x2666F6350](v30, -1, -1);
      }

      sub_260F281D0(v12, v14);

      goto LABEL_26;
    }

    swift_once();
    goto LABEL_22;
  }

  swift_unknownObjectRelease();
  if (qword_2810D48D0 != -1)
  {
    swift_once();
  }

  v16 = sub_260F49638();
  __swift_project_value_buffer(v16, qword_2810D48E0);
  v17 = sub_260F49618();
  v18 = sub_260F49908();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_260F24000, v17, v18, "Can't get BMStoreEvent out of the stream", v19, 2u);
    MEMORY[0x2666F6350](v19, -1, -1);
  }

  return 1;
}

uint64_t sub_260F3A178(uint64_t *a1, uint64_t a2, uint64_t a3, id a4, void *a5)
{
  v9 = *a1;
  [a4 timestamp];
  v11 = v10;
  swift_beginAccess();
  (*(*(v9 + 96) + 8))(a2, a3, *(v9 + 80), v11);
  result = swift_endAccess();
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

uint64_t sub_260F3A27C(uint64_t a1, unint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v6 = sub_260F496E8();
  v7 = [v5 valueForKey_];

  if (v7)
  {
    sub_260F49938();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35[0] = v33;
  v35[1] = v34;
  if (!*(&v34 + 1))
  {
    sub_260F2AA58(v35, &unk_27FE60DB0, &qword_260F4B828);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v8 = objc_opt_self();
  v9 = [objc_opt_self() bm_allowedClassesForSecureCodingBMBookmark];
  sub_260F49828();

  v10 = sub_260F49818();

  v11 = sub_260F49308();
  *&v35[0] = 0;
  v12 = [v8 unarchivedObjectOfClasses:v10 fromData:v11 error:v35];

  if (!v12)
  {
    v21 = *&v35[0];
    v22 = sub_260F492E8();

    swift_willThrow();
    if (qword_2810D48D0 != -1)
    {
      swift_once();
    }

    v23 = sub_260F49638();
    __swift_project_value_buffer(v23, qword_2810D48E0);
    v24 = v22;
    v25 = sub_260F49618();
    v26 = sub_260F498F8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v22;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_260F24000, v25, v26, "Error decoding bookmark: %@", v27, 0xCu);
      sub_260F2AA58(v28, &qword_27FE60F30, &unk_260F4B830);
      MEMORY[0x2666F6350](v28, -1, -1);
      MEMORY[0x2666F6350](v27, -1, -1);
      sub_260F281D0(v31, v32);
    }

    else
    {
      sub_260F281D0(v31, v32);
    }

    return 0;
  }

  v13 = *&v35[0];
  sub_260F49938();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60E20, &qword_260F4B840);
  if (swift_dynamicCast())
  {
    v14 = v33;
  }

  else
  {
    v14 = 0;
  }

  if (qword_2810D48D0 != -1)
  {
    swift_once();
  }

  v15 = sub_260F49638();
  __swift_project_value_buffer(v15, qword_2810D48E0);

  v16 = sub_260F49618();
  v17 = sub_260F498E8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v35[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_260F29D18(a1, a2, v35);
    _os_log_impl(&dword_260F24000, v16, v17, "Bookmark for %s found", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x2666F6350](v19, -1, -1);
    MEMORY[0x2666F6350](v18, -1, -1);
  }

  sub_260F281D0(v31, v32);

  return v14;
}

void sub_260F3A740(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v31[1] = *MEMORY[0x277D85DE8];
  if (qword_2810D48D0 != -1)
  {
    swift_once();
  }

  v8 = sub_260F49638();
  __swift_project_value_buffer(v8, qword_2810D48E0);

  v9 = sub_260F49618();
  v10 = sub_260F498E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_260F29D18(a2, a3, v31);
    _os_log_impl(&dword_260F24000, v9, v10, "Saving bookmark for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2666F6350](v12, -1, -1);
    MEMORY[0x2666F6350](v11, -1, -1);
  }

  v13 = objc_opt_self();
  v31[0] = 0;
  v14 = [v13 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v31];
  v15 = v31[0];
  if (v14)
  {
    v16 = sub_260F49328();
    v18 = v17;

    v19 = *(v4 + 16);
    v20 = sub_260F49308();
    v21 = sub_260F496E8();
    [v19 setValue:v20 forKey:v21];

    sub_260F281D0(v16, v18);
  }

  else
  {
    v22 = v15;
    v23 = sub_260F492E8();

    swift_willThrow();
    v24 = v23;
    v25 = sub_260F49618();
    v26 = sub_260F498F8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v23;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_260F24000, v25, v26, "Error encoding bookmark: %@", v27, 0xCu);
      sub_260F2AA58(v28, &qword_27FE60F30, &unk_260F4B830);
      MEMORY[0x2666F6350](v28, -1, -1);
      MEMORY[0x2666F6350](v27, -1, -1);
    }

    else
    {
    }
  }
}

id *BiomeEventIngestProcessor.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 15));
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 16));

  return v0;
}

uint64_t BiomeEventIngestProcessor.__deallocating_deinit()
{
  BiomeEventIngestProcessor.deinit();

  return swift_deallocClassInstance();
}

ProtoDataExtractor::BiomeEventIngestError_optional __swiftcall BiomeEventIngestError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260F499D8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t BiomeEventIngestError.rawValue.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_260F3AC94(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000013;
  v3 = *a1;
  v4 = "collectionPolicyDenied";
  if (v3 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (v3 == 1)
  {
    v6 = "collectionPolicyDenied";
  }

  else
  {
    v6 = "feedbackLoggerError";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "";
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000019;
    v4 = "feedbackLoggerError";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000016;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_260F499F8();
  }

  return v11 & 1;
}

uint64_t sub_260F3AD6C()
{
  sub_260F49A78();
  sub_260F49738();

  return sub_260F49A98();
}

uint64_t sub_260F3AE08(uint64_t a1)
{
  sub_260F49738();
}

uint64_t sub_260F3AE90(uint64_t a1)
{
  sub_260F49A78();
  sub_260F49738();

  return sub_260F49A98();
}

void sub_260F3AF34(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = "collectionPolicyDenied";
  if (*v1 != 1)
  {
    v2 = 0xD000000000000019;
    v3 = "feedbackLoggerError";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000016;
    v4 = "";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

unint64_t sub_260F3AF94()
{
  result = qword_27FE60DA8;
  if (!qword_27FE60DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE60DA8);
  }

  return result;
}

uint64_t sub_260F3AFE8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
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

uint64_t dispatch thunk of BiomeEventIngestProcessor.ingest()()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260F30C74;

  return v4();
}

uint64_t getEnumTagSinglePayload for BiomeEventIngestError(unsigned __int8 *a1, unsigned int a2)
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