uint64_t sub_25F0F30D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F0F3118(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F0F31A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47AA8;
  if (!qword_27FD47AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47AA8);
  }

  return result;
}

uint64_t sub_25F0F31FC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25F0F3254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47AB0;
  if (!qword_27FD47AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47AB0);
  }

  return result;
}

uint64_t sub_25F0F32A8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25F0F32FC()
{
  result = qword_27FD47AB8;
  if (!qword_27FD47AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD47AB8);
  }

  return result;
}

unint64_t sub_25F0F3370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47AC0;
  if (!qword_27FD47AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47AC0);
  }

  return result;
}

unint64_t sub_25F0F33C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47AC8;
  if (!qword_27FD47AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47AC8);
  }

  return result;
}

unint64_t sub_25F0F3424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47AD0;
  if (!qword_27FD47AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47AD0);
  }

  return result;
}

unint64_t sub_25F0F347C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47AD8;
  if (!qword_27FD47AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47AD8);
  }

  return result;
}

unint64_t sub_25F0F34D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47AE0;
  if (!qword_27FD47AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47AE0);
  }

  return result;
}

unint64_t sub_25F0F3524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47AE8;
  if (!qword_27FD47AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47AE8);
  }

  return result;
}

__n128 SceneCrashedStyle.init(snapshotStyle:redCrossVisible:reloadHandler:)@<Q0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 8) = *a3;
  *(a4 + 24) = v5;
  *(a4 + 40) = *(a3 + 32);
  return result;
}

void *SceneSettingsUpdate.transitionContext.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t SceneSettingsUpdate.init(sceneSettings:transitionContext:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t SceneSnapshotStyle.hashValue.getter(unsigned __int8 a1)
{
  sub_25F1798CC();
  MEMORY[0x25F8D5860](a1);
  return sub_25F17990C();
}

double static SceneCrashedStyle.default.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = 257;
  return result;
}

double static SceneCrashedStyle.none.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = 3;
  return result;
}

unint64_t sub_25F0F377C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47AF0[0];
  if (!qword_27FD47AF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD47AF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneSnapshotStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SceneSnapshotStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25F0F3AB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25F0F3B10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneStoppedStyle(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneStoppedStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25F0F3CE0(uint64_t a1)
{
  v2 = sub_25F176E8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD000000000000018, 0x800000025F1853F0);
  sub_25F17947C();
  MEMORY[0x25F8D50D0](0xD00000000000001FLL, 0x800000025F185410);
  v8 = a1 + 16;
  v6 = *(a1 + 16);
  v7 = *(v8 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_25F17982C();
  MEMORY[0x25F8D50D0](0x206E6F2027, 0xE500000000000000);
  (*(v7 + 40))(v6, v7);
  sub_25F0F4A48();
  v9 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v9);

  (*(v3 + 8))(v5, v2);
  return v11[0];
}

uint64_t sub_25F0F3F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0810](a1, WitnessTable);
}

uint64_t sub_25F0F3F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A07F0](a1, WitnessTable);
}

uint64_t AsyncAgentServer.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 96);
  type metadata accessor for AsyncAgentServer.ActivatedState(255, *(*v4 + 80), *(*v4 + 88), a4);
  sub_25F17945C();
  sub_25F17942C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 8))(v4 + v5, TupleTypeMetadata2);

  return v4;
}

uint64_t AsyncAgentServer.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AsyncAgentServer.deinit(a1, a2, a3, a4);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of static AgentService.bootstrap(client:context:endpoint:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 48) + **(a6 + 48));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25F0BF3E4;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_25F0F42E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AsyncAgentServer.ActivatedState(255, *(a1 + 80), *(a1 + 88), a4);
  result = sub_25F17942C();
  if (v5 <= 0x3F)
  {
    v6 = MEMORY[0x277D83428] + 64;
    swift_getTupleTypeLayout2();
    v7[4] = v7;
    v7[5] = v6;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F0F43E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F0F443C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_25F0F44AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_25F0F44F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F0F4554(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F0F45E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
LABEL_23:
    v14 = *(v6 + 48);

    return v14((a1 + v8 + 8) & ~v8);
  }

  v9 = ((v8 + 8) & ~v8) + *(*(AssociatedTypeWitness - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((a2 - v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v7)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v13) + 1;
}

void sub_25F0F4794(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = ((v9 + 8) & ~v9) + *(v7 + 64);
  if (a3 <= v8)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 - v8 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
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
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (v8 < a2)
  {
    v12 = ~v8 + a2;
    if (v10 < 4)
    {
      v13 = (v12 >> (8 * v10)) + 1;
      if (v10)
      {
        v16 = v12 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v16;
            if (v11 > 1)
            {
LABEL_39:
              if (v11 == 2)
              {
                *&a1[v10] = v13;
              }

              else
              {
                *&a1[v10] = v13;
              }

              return;
            }
          }

          else
          {
            *a1 = v12;
            if (v11 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v16;
        a1[2] = BYTE2(v16);
      }

      if (v11 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v11)
    {
      a1[v10] = v13;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v10] = 0;
  }

  else if (v11)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v17 = *(v7 + 56);

  v17(&a1[v9 + 8] & ~v9, a2);
}

unint64_t sub_25F0F4A48()
{
  result = qword_27FD473C8;
  if (!qword_27FD473C8)
  {
    sub_25F176E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD473C8);
  }

  return result;
}

uint64_t sub_25F0F4B00()
{
  type metadata accessor for JITManager();
  v0 = swift_allocObject();
  sub_25F0ED004(MEMORY[0x277D84F90]);
  result = sub_25F17883C();
  *(v0 + 16) = result;
  qword_27FD47D00 = v0;
  return result;
}

uint64_t static JITManager.shared.getter()
{
  if (qword_27FD46800 != -1)
  {
    swift_once();
  }
}

uint64_t JITManager.setUpJIT<A>(agent:bootstrapMethod:configuration:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = v6;
  *(v7 + 48) = a2;
  *(v7 + 56) = a5;
  *(v7 + 40) = a1;
  v10 = sub_25F17888C();
  *(v7 + 80) = v10;
  *(v7 + 88) = *(v10 - 8);
  v11 = swift_task_alloc();
  v12 = *a3;
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 27) = *(a3 + 8);
  *(v7 + 28) = *a4;
  *(v7 + 29) = a4[1];

  return MEMORY[0x2822009F8](sub_25F0F4CB4, 0, 0);
}

uint64_t sub_25F0F4CB4()
{
  v16 = v0;
  *(v0 + 112) = sub_25F0F5498(*(v0 + 48));
  sub_25F17885C();

  v1 = sub_25F17887C();
  v2 = sub_25F17955C();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);
  if (v3)
  {
    v7 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_25F0BECF0(*(v7 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier), *(v7 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8), &v15);
    _os_log_impl(&dword_25F0B3000, v1, v2, "JITManager: Initializing for %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x25F8D6230](v9, -1, -1);
    MEMORY[0x25F8D6230](v8, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v10 = *(v0 + 29);
  v11 = *(v0 + 28);
  v12 = *(v0 + 27);
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 24) = v12;
  *(v0 + 25) = v11;
  *(v0 + 26) = v10;
  v13 = swift_task_alloc();
  *(v0 + 120) = v13;
  *v13 = v0;
  v13[1] = sub_25F0F4F00;

  return sub_25F0F5848((v0 + 16), (v0 + 25));
}

uint64_t sub_25F0F4F00(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[16] = a1;
  v4[17] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_25F0F5278, 0, 0);
  }

  else
  {
    v9 = (v4[7] + *v4[7]);
    v6 = swift_task_alloc();
    v4[18] = v6;
    *v6 = v5;
    v6[1] = sub_25F0F50EC;
    v7 = v4[5];

    return v9(v7, a1);
  }
}

uint64_t sub_25F0F50EC()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_25F0F5384;
  }

  else
  {
    v2 = sub_25F0F5200;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F0F5200()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F0F5278()
{
  v1 = v0[14];
  v0[4] = v1;
  type metadata accessor for PreviewsJITConfigurator();
  sub_25F0FE11C(&qword_27FD47D08, type metadata accessor for PreviewsJITConfigurator, &unk_25F17DBE0);
  sub_25F17800C();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_25F0F5384()
{

  v1 = v0[14];
  v0[4] = v1;
  type metadata accessor for PreviewsJITConfigurator();
  sub_25F0FE11C(&qword_27FD47D08, type metadata accessor for PreviewsJITConfigurator, &unk_25F17DBE0);
  sub_25F17800C();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_25F0F5498(uint64_t a1)
{
  v3 = sub_25F1787BC();
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 16);

  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47E88, &qword_25F17DC58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47E90, &qword_25F17DC60);
  sub_25F0FDC70(&qword_27FD47E98, &qword_27FD47E88, &qword_25F17DC58);
  v6 = v16;
  sub_25F17855C();
  v7 = (v15 + 8);
  if (v6)
  {
    (*v7)(v5, v3);
  }

  else
  {
    v16 = v1;
    (*v7)(v5, v3);

    v3 = v17;
    if (v18 == 1)
    {
      v8 = *(a1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
      v9 = *(a1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8);
      v17 = a1;
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      v11[2] = v8;
      v11[3] = v9;
      v11[4] = v10;
      type metadata accessor for Agent(0);
      sub_25F0FE11C(&qword_27FD47EA0, type metadata accessor for Agent, &protocol conformance descriptor for Agent);
      swift_bridgeObjectRetain_n();

      sub_25F17802C();

      v17 = v3;
      v12 = swift_allocObject();
      swift_weakInit();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = v8;
      v13[4] = v9;
      type metadata accessor for PreviewsJITConfigurator();
      sub_25F0FE11C(&qword_27FD47D08, type metadata accessor for PreviewsJITConfigurator, &unk_25F17DBE0);

      sub_25F17802C();
    }
  }

  return v3;
}

uint64_t sub_25F0F5848(uint64_t *a1, _BYTE *a2)
{
  v4 = v2;
  *(v3 + 88) = v4;
  *(v3 + 96) = swift_getObjectType();
  v7 = sub_25F178F9C();
  *(v3 + 104) = v7;
  *(v3 + 112) = *(v7 - 8);
  *(v3 + 120) = swift_task_alloc();
  v8 = sub_25F176EBC();
  *(v3 + 128) = v8;
  *(v3 + 136) = *(v8 - 8);
  *(v3 + 144) = swift_task_alloc();
  v9 = sub_25F17888C();
  *(v3 + 152) = v9;
  *(v3 + 160) = *(v9 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  v10 = sub_25F1787BC();
  *(v3 + 184) = v10;
  *(v3 + 192) = *(v10 - 8);
  *(v3 + 200) = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *a1;
  *(v3 + 208) = v11;
  *(v3 + 216) = v12;
  *(v3 + 41) = *(a1 + 8);
  *(v3 + 42) = *a2;
  *(v3 + 43) = a2[1];

  return MEMORY[0x2822009F8](sub_25F0F5A70, 0, 0);
}

uint64_t sub_25F0F5A70()
{
  v33 = v0;
  v1 = *(v0 + 88);
  v2 = *(v1 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_agent);
  *(v0 + 224) = v2;
  v3 = v2 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier;
  v4 = *(v2 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
  *(v0 + 232) = v4;
  v5 = *(v3 + 8);
  *(v0 + 240) = v5;
  v31 = v2;
  v32[0] = v4;
  v32[1] = v5;
  v6 = objc_allocWithZone(type metadata accessor for JITXPCListener());
  swift_bridgeObjectRetain_n();
  v7 = sub_25F0FACBC(v32);
  *(v0 + 248) = v7;
  *(v0 + 48) = v1;
  *(swift_allocObject() + 16) = v7;
  *(v0 + 256) = sub_25F0FE11C(&qword_27FD47D08, type metadata accessor for PreviewsJITConfigurator, &unk_25F17DBE0);
  v8 = v7;
  sub_25F17802C();

  v9 = *(v1 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_stateBox);
  *(v0 + 56) = v9;
  *(v0 + 264) = v9;

  sub_25F1787CC();
  v10 = swift_task_alloc();
  v10[2] = v8;
  v10[3] = v4;
  v30 = v4;
  v10[4] = v5;
  *(v0 + 272) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47DF8, &qword_25F17DC20);
  *(v0 + 280) = sub_25F0FDC70(&qword_27FD47E00, &qword_27FD47DF8, &qword_25F17DC20);
  sub_25F17855C();
  v11 = *(v0 + 208);
  v12 = *(v0 + 184);
  v13 = *(v0 + 192) + 8;

  v14 = *v13;
  *(v0 + 288) = *v13;
  *(v0 + 296) = v13 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);

  sub_25F17884C();

  v15 = sub_25F17887C();
  v16 = sub_25F17951C();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 176);
  v19 = *(v0 + 152);
  v20 = *(v0 + 160);
  if (v17)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32[0] = v22;
    *v21 = 136446210;

    v23 = sub_25F0BECF0(v30, v5, v32);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_25F0B3000, v15, v16, "PreviewsJITConfigurator(%{public}s): Requesting JIT bootstrap agent", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x25F8D6230](v22, -1, -1);
    MEMORY[0x25F8D6230](v21, -1, -1);
  }

  v24 = *(v20 + 8);
  v24(v18, v19);
  *(v0 + 304) = v24;
  v25 = *(v0 + 41);
  v26 = *(v0 + 216);
  v27 = *(v31 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapAgentServer + 8);
  *(v0 + 16) = *(v31 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapAgentServer);
  *(v0 + 24) = v27;
  *(v0 + 32) = v26;
  *(v0 + 40) = v25;

  v28 = swift_task_alloc();
  *(v0 + 312) = v28;
  *v28 = v0;
  v28[1] = sub_25F0F5F50;

  return SharedAgentServer<>.requestJITBootstrapAgent(for:bootstrapMethod:)(v31, (v0 + 32));
}

uint64_t sub_25F0F5F50(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {

    v4 = sub_25F0F6A68;
  }

  else
  {
    v4 = sub_25F0F6090;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F0F6090(uint64_t a1)
{
  v25 = v1;
  sub_25F17884C();

  v2 = sub_25F17887C();
  v3 = sub_25F17951C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[38];
  if (v4)
  {
    v7 = v1[29];
    v6 = v1[30];
    v23 = v1[21];
    v8 = v1[19];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136446210;

    v11 = sub_25F0BECF0(v7, v6, &v24);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_25F0B3000, v2, v3, "PreviewsJITConfigurator(%{public}s): Received JIT bootstrap agent", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x25F8D6230](v10, -1, -1);
    MEMORY[0x25F8D6230](v9, -1, -1);

    v12 = v23;
  }

  else
  {
    v13 = v1[21];
    v8 = v1[19];

    v12 = v13;
  }

  v5(v12, v8);
  v14 = sub_25F176F4C();
  v1[42] = v14;

  v15 = v14;

  v16 = swift_task_alloc();
  v1[43] = v16;
  *v16 = v1;
  v16[1] = sub_25F0F62B4;
  v17 = v1[40];
  v19 = v1[30];
  v18 = v1[31];
  v20 = v1[29];
  v21 = v1[18];

  return sub_25F0F9A70(v21, v15, v18, v20, v19, v15, v17);
}

uint64_t sub_25F0F62B4(uint64_t a1)
{
  v3 = *v2;
  v3[44] = a1;
  v3[45] = v1;

  if (v1)
  {

    v4 = sub_25F0F6B18;
  }

  else
  {
    (*(v3[17] + 8))(v3[18], v3[16]);
    v4 = sub_25F0F63E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F0F63E8()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 240);
  v15 = *(v0 + 232);
  v17 = *(v0 + 224);
  v18 = *(v0 + 43);
  v16 = *(v0 + 42);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = [v1 _xpcConnection];
  *(v0 + 368) = v7;
  sub_25F0C1014(0, &qword_27FD47E08, 0x277D85C78);
  (*(v4 + 104))(v5, *MEMORY[0x277D851C8], v6);
  v8 = v1;
  *(v0 + 376) = sub_25F1795CC();
  (*(v4 + 8))(v5, v6);
  v9 = swift_allocObject();
  *(v0 + 384) = v9;
  *(v9 + 16) = v15;
  *(v9 + 24) = v3;
  *(v9 + 32) = v2;
  *(v9 + 40) = v17;
  *(v9 + 48) = v16;
  *(v9 + 49) = v18;
  *(v9 + 56) = v7;
  *(v9 + 64) = 1;
  *(v9 + 72) = v1;

  v10 = v2;
  v11 = v8;

  swift_unknownObjectRetain();
  v12 = swift_task_alloc();
  *(v0 + 392) = v12;
  v13 = type metadata accessor for PreviewsJITLinker();
  *v12 = v0;
  v12[1] = sub_25F0F65F4;

  return MEMORY[0x2821A0D70](v0 + 64, sub_25F0FD8EC, v9, v13);
}

uint64_t sub_25F0F65F4()
{
  v2 = *v1;
  *(v2 + 400) = v0;

  v3 = *(v2 + 376);

  if (v0)
  {

    v4 = sub_25F0F6BDC;
  }

  else
  {
    v4 = sub_25F0F6754;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F0F6754()
{
  v0[10] = v0[33];
  v1 = v0[50];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[8];

  sub_25F1787CC();
  v5 = swift_task_alloc();
  v5[2] = v4;
  v5[3] = v2;
  v5[4] = v3;
  sub_25F17855C();
  if (v1)
  {
    v6 = v0[36];
    v7 = v0[25];
    v8 = v0[23];

    v6(v7, v8);

    v9 = v0[44];
    v10 = v0[42];
    v11 = v0[31];
    v0[9] = v0[11];
    sub_25F17800C();
    swift_willThrow();
    swift_unknownObjectRelease();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[44];
    v15 = v0[42];
    v20 = v0[36];
    v16 = v0[31];
    v17 = v0[25];
    v18 = v0[23];

    swift_unknownObjectRelease();

    v20(v17, v18);

    v19 = v0[1];

    return v19(v4);
  }
}

uint64_t sub_25F0F6A68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0F6B18()
{
  v1 = *(v0 + 336);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F0F6BDC()
{
  v1 = v0[44];
  v2 = v0[42];
  v3 = v0[31];
  v0[9] = v0[11];
  sub_25F17800C();
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t JITManager.requestJIT(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_25F0F6D60, 0, 0);
}

uint64_t sub_25F0F6D60()
{
  v1 = sub_25F0F5498(v0[3]);
  v0[5] = *(v1 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_future);
  v2 = v1;

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_25F0F6E68;

  return MEMORY[0x2821A0BA0](v0 + 2);
}

uint64_t sub_25F0F6E68()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_25F0F6F9C;
  }

  else
  {
    v2 = sub_25F0F0060;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_25F0F6FB4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for JITManager.Storage.Record(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  if (*(*a1 + 16) && (v12 = sub_25F0C8D24(*(a2 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier), *(a2 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8)), (v13 & 1) != 0))
  {
    sub_25F0FDEB8(*(v11 + 56) + *(v8 + 72) * v12, v10, type metadata accessor for JITManager.Storage.Record);
    v14 = *v10;
    sub_25F0FDE5C(v10);
    v15 = 0;
  }

  else
  {
    v16 = objc_allocWithZone(type metadata accessor for PreviewsJITConfigurator());

    v14 = sub_25F0F7BD4(v17);
    sub_25F0F7124(v14);
    if (v3)
    {

      return;
    }

    v15 = 1;
  }

  *a3 = v14;
  *(a3 + 8) = v15;
}

void sub_25F0F7124(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47EA8, &qword_25F17DC68);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = *&a1[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_agent];
  v11 = *(v9 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
  v10 = *(v9 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8);
  v12 = *v1;
  v13 = *(*v1 + 16);

  if (v13 && (v14 = sub_25F0C8D24(v11, v10), (v15 & 1) != 0))
  {
    v16 = v14;
    v17 = *(v12 + 56);
    v18 = type metadata accessor for JITManager.Storage.Record(0);
    v19 = v11;
    v20 = *(v18 - 8);
    sub_25F0FDEB8(v17 + *(v20 + 72) * v16, v8, type metadata accessor for JITManager.Storage.Record);
    (*(v20 + 56))(v8, 0, 1, v18);
    v21 = sub_25F0B7E94(v8, &qword_27FD47EA8, &qword_25F17DC68);
    sub_25F0FDF20(v21, v22, v23);
    swift_allocError();
    *v24 = v19;
    v24[1] = v10;
    swift_willThrow();
  }

  else
  {
    v25 = type metadata accessor for JITManager.Storage.Record(0);
    v26 = *(*(v25 - 8) + 56);
    v29 = v11;
    v26(v8, 1, 1, v25);
    sub_25F0B7E94(v8, &qword_27FD47EA8, &qword_25F17DC68);
    sub_25F0FDEB8(v9 + OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity, &v6[*(v25 + 20)], type metadata accessor for BatchIdentity);
    *v6 = a1;
    v26(v6, 0, 1, v25);
    v27 = a1;
    sub_25F169CAC(v6, v29, v10);
  }
}

void sub_25F0F73E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_25F17888C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();

  v9 = sub_25F17887C();
  v10 = sub_25F17952C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_25F0BECF0(a1, a2, v16);
    _os_log_impl(&dword_25F0B3000, v9, v10, "JITManager: Agent invalidated, so invalidating the JIT configurator: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v14 = Strong;
    type metadata accessor for PreviewsJITConfigurator();
    sub_25F0FE11C(&qword_27FD47D08, type metadata accessor for PreviewsJITConfigurator, &unk_25F17DBE0);
    sub_25F17800C();
  }
}

uint64_t sub_25F0F7640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25F1787BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F17888C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v25 = v6;
    sub_25F17885C();

    v15 = a3;
    v16 = sub_25F17887C();
    v17 = sub_25F17952C();
    v26 = v15;

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v24 = v5;
      v19 = v18;
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_25F0BECF0(a2, v26, &v27);
      _os_log_impl(&dword_25F0B3000, v16, v17, "JITManager: Cleaning up old connection record for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x25F8D6230](v20, -1, -1);
      v21 = v19;
      v5 = v24;
      MEMORY[0x25F8D6230](v21, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    v27 = *(v14 + 16);

    v22 = sub_25F1787CC();
    MEMORY[0x28223BE20](v22);
    v23 = v26;
    *(&v24 - 2) = a2;
    *(&v24 - 1) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47E88, &qword_25F17DC58);
    sub_25F0FDC70(&qword_27FD47E98, &qword_27FD47E88, &qword_25F17DC58);
    sub_25F17855C();

    (*(v25 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_25F0F79A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47EA8, &qword_25F17DC68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_25F0C8D24(a2, a3);
  if (v10)
  {
    v11 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a1;
    v20 = *a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25F170120();
      v13 = v20;
    }

    v14 = *(v13 + 56);
    v15 = type metadata accessor for JITManager.Storage.Record(0);
    v16 = *(v15 - 8);
    sub_25F0FDDF8(v14 + *(v16 + 72) * v11, v8);
    sub_25F16D880(v11, v13);
    *a1 = v13;
    (*(v16 + 56))(v8, 0, 1, v15);
  }

  else
  {
    v17 = type metadata accessor for JITManager.Storage.Record(0);
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  }

  return sub_25F0B7E94(v8, &qword_27FD47EA8, &qword_25F17DC68);
}

uint64_t JITManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_25F0F7BD4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v23[1] = ObjectType;
  v26 = sub_25F17767C();
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v26);
  v24 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_invalidationHandle;
  sub_25F1782AC();
  swift_allocObject();
  *&v1[v6] = sub_25F17829C();
  v25 = a1;
  *&v1[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_agent] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47EB8, &qword_25F17DC70);

  v7 = sub_25F17867C();
  v23[2] = v8;
  *&v1[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_future] = v7;
  v28 = v8;
  v29 = 0;

  *&v1[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_stateBox] = sub_25F17883C();
  v27.receiver = v1;
  v27.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v27, sel_init);
  v10 = *&v9[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_agent];
  v11 = *(v10 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
  v12 = *(v10 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8);
  v13 = *&v9[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_stateBox];
  v14 = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v15 = v14 + *(type metadata accessor for BatchIdentity(0) + 20);
  v28 = v9;
  v16 = v10 + v15;
  v17 = v24;
  v18 = v26;
  (*(v4 + 16))(v24, v16, v26);
  v19 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v13;
  *(v20 + 3) = v11;
  *(v20 + 4) = v12;
  (*(v4 + 32))(&v20[v19], v17, v18);
  sub_25F0FE11C(&qword_27FD47D08, type metadata accessor for PreviewsJITConfigurator, &unk_25F17DBE0);
  swift_retain_n();
  v21 = v9;

  sub_25F17802C();

  return v21;
}

uint64_t sub_25F0F7F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25F1787BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a1;
  sub_25F1787CC();
  v17 = a2;
  v18 = a3;
  v19 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47DF8, &qword_25F17DC20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47E78, &qword_25F17DC50);
  sub_25F0FDC70(&qword_27FD47E00, &qword_27FD47DF8, &qword_25F17DC20);
  sub_25F17855C();
  result = (*(v9 + 8))(v11, v8);
  v13 = v21;
  if (v21)
  {
    v14 = v22;

    v13(v15);
    sub_25F0FDB90(v13, v14);
    return sub_25F0FDB90(v13, v14);
  }

  return result;
}

uint64_t sub_25F0F8108@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (**a5)()@<X8>)
{
  v67 = a3;
  v66 = a2;
  v68 = a5;
  v7 = sub_25F17767C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v58 - v12;
  v14 = sub_25F17888C();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v21 = &v58 - v20;
  v23 = *a1;
  v22 = a1[1];
  if (!(v22 >> 62))
  {
    v63 = v19;
    v64 = result;
    v65 = v23;
    sub_25F17885C();
    (*(v8 + 16))(v13, a4, v7);
    v41 = v67;

    v42 = v41;
    v43 = sub_25F17887C();
    v44 = sub_25F17952C();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v69 = v62;
      *v45 = 136446466;
      v61 = v43;
      v46 = v66;
      *(v45 + 4) = sub_25F0BECF0(v66, v42, &v69);
      *(v45 + 12) = 2080;
      sub_25F0FE11C(&qword_27FD47EC0, MEMORY[0x277D408A0], MEMORY[0x277D408B0]);
      v47 = sub_25F17980C();
      LODWORD(v60) = v44;
      v49 = v48;
      (*(v8 + 8))(v13, v7);
      v50 = sub_25F0BECF0(v47, v49, &v69);

      *(v45 + 14) = v50;
      v42 = v67;
      v51 = v61;
      _os_log_impl(&dword_25F0B3000, v61, v60, "PreviewsJITConfigurator(%{public}s): Agent invalidated while waiting for JIT connection setup for %s", v45, 0x16u);
      v52 = v62;
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v52, -1, -1);
      MEMORY[0x25F8D6230](v45, -1, -1);

      (*(v63 + 8))(v21, v64);
    }

    else
    {

      (*(v8 + 8))(v13, v7);
      (*(v63 + 8))(v21, v64);
      v46 = v66;
    }

    *a1 = xmmword_25F17D940;
    v56 = swift_allocObject();
    *(v56 + 2) = v65;
    *(v56 + 3) = v46;
    *(v56 + 4) = v42;
    v57 = v68;
    *v68 = sub_25F0FE1A4;
    v57[1] = v56;
  }

  if (v22 >> 62 == 1)
  {
    v63 = v19;
    v64 = result;
    v65 = v23;
    v24 = (v22 & 0x3FFFFFFFFFFFFFFFLL);
    sub_25F17885C();
    (*(v8 + 16))(v11, a4, v7);
    v25 = v67;

    v26 = v25;
    v27 = sub_25F17887C();
    v28 = sub_25F17952C();

    LODWORD(v62) = v28;
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v59 = v27;
      v61 = v24;
      v30 = v29;
      v60 = swift_slowAlloc();
      v69 = v60;
      *v30 = 136446466;
      v31 = v66;
      *(v30 + 4) = sub_25F0BECF0(v66, v26, &v69);
      *(v30 + 12) = 2080;
      sub_25F0FE11C(&qword_27FD47EC0, MEMORY[0x277D408A0], MEMORY[0x277D408B0]);
      v32 = sub_25F17980C();
      v34 = v33;
      (*(v8 + 8))(v11, v7);
      v35 = sub_25F0BECF0(v32, v34, &v69);
      v36 = v31;

      *(v30 + 14) = v35;
      v26 = v67;
      v37 = v59;
      _os_log_impl(&dword_25F0B3000, v59, v62, "PreviewsJITConfigurator(%{public}s): Agent invalidated while setting up JIT connection for %s", v30, 0x16u);
      v38 = v60;
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v38, -1, -1);
      v39 = v30;
      v24 = v61;
      MEMORY[0x25F8D6230](v39, -1, -1);

      (*(v63 + 8))(v17, v64);
      v40 = v68;
    }

    else
    {

      (*(v8 + 8))(v11, v7);
      (*(v63 + 8))(v17, v64);
      v40 = v68;
      v36 = v66;
    }

    *a1 = xmmword_25F17D940;
    v54 = swift_allocObject();
    v55 = v65;
    *(v54 + 2) = v24;
    *(v54 + 3) = v55;
    *(v54 + 4) = v36;
    *(v54 + 5) = v26;
    *v40 = sub_25F0FE110;
    v40[1] = v54;
  }

  v53 = v68;
  if (!(v23 | v22 ^ 0x8000000000000000))
  {
    *a1 = xmmword_25F17D940;
  }

  *v53 = 0;
  v53[1] = 0;
  return result;
}

void sub_25F0F8788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25F0FE1B0(a1, a2, a3);
  v5 = swift_allocError();
  *v6 = a2;
  v6[1] = a3;

  sub_25F17874C();
}

void sub_25F0F8804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for JITXPCListener();
  sub_25F0FE11C(&qword_27FD47E20, type metadata accessor for JITXPCListener, &unk_25F17DBB8);
  v6 = sub_25F17800C();
  sub_25F0FE204(v6, v7, v8);
  v9 = swift_allocError();
  *v10 = a3;
  v10[1] = a4;

  sub_25F17874C();
}

id sub_25F0F8908()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_25F17888C();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F1787BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*&v0[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_agent] + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
  v10 = v9[1];
  v19 = *v9;
  v23 = *&v0[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_stateBox];

  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47DF8, &qword_25F17DC20);
  sub_25F0FDC70(&qword_27FD47E00, &qword_27FD47DF8, &qword_25F17DC20);
  sub_25F17856C();
  (*(v6 + 8))(v8, v5);

  v11 = v26;
  v12 = v27;
  if ((v27 & 0x8000000000000000) != 0 && v26 | v27 & 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_25F17885C();

    v13 = sub_25F17887C();
    v14 = sub_25F17952C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136446210;
      v17 = sub_25F0BECF0(v19, v10, &v26);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_25F0B3000, v13, v14, "PreviewsJITConfigurator(%{public}s): deinit", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x25F8D6230](v16, -1, -1);
      MEMORY[0x25F8D6230](v15, -1, -1);
    }

    else
    {
    }

    (*(v20 + 8))(v4, v21);
    v25.receiver = v1;
    v25.super_class = ObjectType;
    return objc_msgSendSuper2(&v25, sel_dealloc);
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_25F1796DC();
    MEMORY[0x25F8D50D0](0xD000000000000018, 0x800000025F1856C0);
    MEMORY[0x25F8D50D0](v19, v10);
    MEMORY[0x25F8D50D0](0xD00000000000003FLL, 0x800000025F1856E0);
    v23 = v11;
    v24 = v12;
    sub_25F17976C();
    result = sub_25F17977C();
    __break(1u);
  }

  return result;
}

uint64_t sub_25F0F8DB8(uint64_t a1)
{
  swift_getObjectType();
  sub_25F0FE11C(&qword_27FD47E20, type metadata accessor for JITXPCListener, &unk_25F17DBB8);
  return sub_25F17800C();
}

id sub_25F0F8E60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (v4 >> 62)
  {
    if (v4 >> 62 == 1)
    {
      sub_25F0FDB10(a1, a2, a3);
    }

    else if (*a1 | v4 ^ 0x8000000000000000)
    {
      sub_25F0FDA68(a1, a2, a3);
    }

    else
    {
      sub_25F0FDABC(a1, a2, a3);
    }

    swift_allocError();
    *v8 = a3;
    v8[1] = a4;
    swift_willThrow();
  }

  else
  {
    a1[1] = a2 | 0x4000000000000000;
    return a2;
  }
}

uint64_t sub_25F0F8F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_25F176EDC();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47E28, &unk_25F17DC38);
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = sub_25F17888C();
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0F90C0, 0, 0);
}

uint64_t sub_25F0F90C0(uint64_t a1)
{
  v23 = v1;
  v2 = v1[6];
  sub_25F17885C();

  v3 = v2;
  v4 = sub_25F17887C();
  v5 = sub_25F17951C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[17];
  v9 = v1[14];
  v8 = v1[15];
  v10 = v1[6];
  if (v6)
  {
    v12 = v1[4];
    v11 = v1[5];
    v21 = v1[17];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_25F0BECF0(v12, v11, &v22);
    *(v13 + 12) = 1026;
    *(v13 + 14) = [v10 pid];

    _os_log_impl(&dword_25F0B3000, v4, v5, "PreviewsJITConfigurator(%{public}s): Passing endpoint for JIT to control agent service for pid: %{public}d", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x25F8D6230](v14, -1, -1);
    MEMORY[0x25F8D6230](v13, -1, -1);

    v15 = *(v8 + 8);
    v15(v21, v9);
  }

  else
  {

    v15 = *(v8 + 8);
    v15(v7, v9);
  }

  v1[18] = v15;
  v16 = sub_25F1770BC();
  v17 = swift_task_alloc();
  v1[19] = v17;
  v18 = sub_25F0FE11C(&qword_27FD47E30, MEMORY[0x277D40E20], MEMORY[0x277D40E18]);
  *v17 = v1;
  v17[1] = sub_25F0F9304;
  v19 = v1[13];

  return MEMORY[0x2821A1908](v19, v16, v16, v18);
}

uint64_t sub_25F0F9304()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_25F0F9924;
  }

  else
  {
    v2 = sub_25F0F9418;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F0F9418()
{
  sub_25F176ECC();
  v1 = sub_25F176EBC();
  sub_25F0FE11C(&qword_27FD47E38, MEMORY[0x277D40D58], MEMORY[0x277D40D50]);
  sub_25F0FE11C(&unk_27FD47E40, MEMORY[0x277D40D68], MEMORY[0x277D40D60]);
  v2 = sub_25F17702C();
  v0[21] = v2;
  v3 = swift_task_alloc();
  v0[22] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v3 = v0;
  v3[1] = sub_25F0F959C;
  v5 = v0[2];
  v6 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v5, v2, v1, v4, v6);
}

uint64_t sub_25F0F959C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {

    v2 = sub_25F0F99B0;
  }

  else
  {
    v2 = sub_25F0F96B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F0F96B8()
{
  v27 = v0;
  v1 = v0[6];

  sub_25F17885C();

  v2 = v1;
  v3 = sub_25F17887C();
  v4 = sub_25F17951C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[18];
  v7 = v0[13];
  v23 = v0[14];
  v24 = v0[16];
  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[9];
  v11 = v0[10];
  v25 = v0[8];
  v12 = v0[6];
  if (v5)
  {
    v21 = v0[11];
    v22 = v0[13];
    v14 = v0[4];
    v13 = v0[5];
    v20 = v0[10];
    v15 = swift_slowAlloc();
    v19 = v6;
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136446466;
    *(v15 + 4) = sub_25F0BECF0(v14, v13, &v26);
    *(v15 + 12) = 1026;
    *(v15 + 14) = [v12 pid];

    _os_log_impl(&dword_25F0B3000, v3, v4, "PreviewsJITConfigurator(%{public}s): Sent endpoint for JIT to control agent service for pid: %{public}d", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x25F8D6230](v16, -1, -1);
    MEMORY[0x25F8D6230](v15, -1, -1);

    v19(v24, v23);
    (*(v10 + 8))(v20, v25);
    (*(v9 + 8))(v22, v21);
  }

  else
  {

    v6(v24, v23);
    (*(v10 + 8))(v11, v25);
    (*(v9 + 8))(v7, v8);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_25F0F9924()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0F99B0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F0F9A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = sub_25F176EBC();
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  v9 = sub_25F17888C();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v10 = sub_25F1787BC();
  v7[19] = v10;
  v7[20] = *(v10 - 8);
  v7[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0F9C00, 0, 0);
}

uint64_t sub_25F0F9C00()
{
  v38 = v0;
  v1 = v0[7];
  v2 = *(v1 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_identifier);
  v3 = *(v1 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_identifier + 8);
  v0[2] = *(v1 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_stateBox);
  v4 = v0[6];

  sub_25F1787CC();
  v5 = swift_task_alloc();
  v5[2] = v4;
  v5[3] = v2;
  v5[4] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47DC8, &qword_25F17DC08);
  sub_25F0FDC70(&qword_27FD47DD8, &qword_27FD47DC8, &qword_25F17DC08);
  sub_25F17855C();
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];

  (*(v7 + 8))(v6, v8);

  sub_25F17885C();

  v9 = sub_25F17887C();
  v10 = sub_25F17952C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[16];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37[0] = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_25F0BECF0(v2, v3, v37);
    _os_log_impl(&dword_25F0B3000, v9, v10, "JITXPCListener(%{public}s): Listening to NSXPCListenerEndpoint", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x25F8D6230](v16, -1, -1);
    MEMORY[0x25F8D6230](v15, -1, -1);
  }

  else
  {
  }

  v36 = *(v14 + 8);
  v36(v12, v13);
  v17 = v0[7];
  v18 = *(v17 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_listener);
  v19 = [v18 endpoint];
  v0[22] = v19;
  [v18 setDelegate_];
  [v18 activate];
  sub_25F17885C();

  v20 = sub_25F17887C();
  v21 = sub_25F17952C();

  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[17];
  v24 = v0[15];
  if (v22)
  {
    v35 = v19;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v37[0] = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_25F0BECF0(v2, v3, v37);
    _os_log_impl(&dword_25F0B3000, v20, v21, "JITXPCListener(%{public}s): Calling NSXPCListenerEndpoint configuration function", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x25F8D6230](v26, -1, -1);
    v27 = v25;
    v19 = v35;
    MEMORY[0x25F8D6230](v27, -1, -1);
  }

  v36(v23, v24);
  v28 = swift_task_alloc();
  v0[23] = v28;
  *v28 = v0;
  v28[1] = sub_25F0FA184;
  v29 = v0[14];
  v30 = v0[10];
  v31 = v0[11];
  v32 = v0[8];
  v33 = v0[9];

  return sub_25F0F8F28(v29, v19, v32, v33, v30, v31);
}

uint64_t sub_25F0FA184()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_25F0FA454;
  }

  else
  {
    v2 = sub_25F0FA298;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F0FA298()
{
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_25F0FA340;

  return MEMORY[0x2821A0BA0](v0 + 32);
}

uint64_t sub_25F0FA340()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_25F0FA6B0;
  }

  else
  {
    v2 = sub_25F0FA5B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F0FA454()
{
  v1 = *(v0 + 80);
  *(v0 + 24) = *(v0 + 56);
  type metadata accessor for JITXPCListener();
  sub_25F0FE11C(&qword_27FD47E20, type metadata accessor for JITXPCListener, &unk_25F17DBB8);
  sub_25F17800C();
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F0FA5B8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 40);

  v8 = *(v0 + 32);
  (*(v1 + 32))(v5, v2, v3);

  v6 = *(v0 + 8);

  return v6(v8);
}

uint64_t sub_25F0FA6B0()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 80);
  *(v0 + 24) = *(v0 + 56);
  type metadata accessor for JITXPCListener();
  sub_25F0FE11C(&qword_27FD47E20, type metadata accessor for JITXPCListener, &unk_25F17DBB8);
  sub_25F17800C();
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25F0FA834@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v10 = v9;
  v38 = a7;
  v39 = a8;
  v36 = a4;
  v37 = a6;
  v35 = a5;
  v34 = a1;
  v14 = sub_25F17888C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();

  v18 = a3;
  v19 = sub_25F17887C();
  v20 = sub_25F17951C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v33 = a9;
    v22 = v21;
    v23 = swift_slowAlloc();
    v32 = v9;
    v24 = v23;
    v40 = v23;
    *v22 = 136446466;
    *(v22 + 4) = sub_25F0BECF0(v34, a2, &v40);
    *(v22 + 12) = 1026;
    *(v22 + 14) = [v18 pid];

    _os_log_impl(&dword_25F0B3000, v19, v20, "PreviewsJITConfigurator(%{public}s): Initializing the JIT from the received XPC connection for pid: %{public}d", v22, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v25 = v24;
    v10 = v32;
    MEMORY[0x25F8D6230](v25, -1, -1);
    v26 = v22;
    a9 = v33;
    MEMORY[0x25F8D6230](v26, -1, -1);
  }

  else
  {
  }

  (*(v15 + 8))(v17, v14);
  v27 = [v18 pid];
  type metadata accessor for PreviewsJITLinker();
  swift_allocObject();
  v28 = v36;

  v29 = v37;
  swift_unknownObjectRetain();
  v30 = v39;
  swift_unknownObjectRetain();
  result = sub_25F11DB34(v27, v28, v35 & 0x101, v29, v38, v30);
  if (!v10)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_25F0FAAD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (v4 >> 62 == 1)
  {

    sub_25F17876C();

    *a1 = xmmword_25F17D950;
  }

  else if (v4 >> 62 == 2)
  {
    if (*a1 | v4 ^ 0x8000000000000000)
    {
      sub_25F0FD94C(a1, a2, a3);
    }

    else
    {
      sub_25F0FD9A0(a1, a2, a3);
    }

    swift_allocError();
    *v9 = a3;
    v9[1] = a4;
    swift_willThrow();
  }

  else
  {
    sub_25F1796DC();
    MEMORY[0x25F8D50D0](0xD000000000000018, 0x800000025F1856C0);
    MEMORY[0x25F8D50D0](a3, a4);
    MEMORY[0x25F8D50D0](0xD000000000000028, 0x800000025F185750);
    result = sub_25F17977C();
    __break(1u);
  }

  return result;
}

char *sub_25F0FACBC(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v6 = *a1;
  v5 = a1[1];
  v7 = OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_listener;
  *&v2[v7] = [objc_opt_self() anonymousListener];
  v8 = OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_invalidationHandle;
  sub_25F1782AC();
  swift_allocObject();
  *&v2[v8] = sub_25F17829C();
  v9 = &v2[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_identifier];
  *v9 = v6;
  *(v9 + 1) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47E70, &qword_25F17DC48);

  v19 = 2;
  *&v2[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_future] = sub_25F17867C();
  v21 = v10;
  v22 = 0;

  *&v2[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_stateBox] = sub_25F17883C();
  v20.receiver = v2;
  v20.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v20, sel_init, v19, 0, 0);
  v12 = *(v11 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_listener);
  v13 = *(v11 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_stateBox);
  v21 = v11;
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = v6;
  v14[5] = v5;
  sub_25F0FE11C(&qword_27FD47E20, type metadata accessor for JITXPCListener, &unk_25F17DBB8);
  v15 = v12;
  swift_retain_n();
  v16 = v15;
  v17 = v11;
  sub_25F17802C();

  return v17;
}

uint64_t sub_25F0FAF44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25F1787BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [a1 setDelegate_];
  [a1 invalidate];
  v19 = a2;
  sub_25F1787CC();
  v17 = a3;
  v18 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47DC8, &qword_25F17DC08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47E78, &qword_25F17DC50);
  sub_25F0FDC70(&qword_27FD47DD8, &qword_27FD47DC8, &qword_25F17DC08);
  sub_25F17855C();
  result = (*(v9 + 8))(v11, v8);
  v13 = v20;
  if (v20)
  {
    v14 = v21;

    v13(v15);
    sub_25F0FDB90(v13, v14);
    return sub_25F0FDB90(v13, v14);
  }

  return result;
}

void sub_25F0FB134(void **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)()@<X8>)
{
  v7 = *result;
  v6 = result[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {
      sub_25F0FD5E0(*result, v6);
      *result = xmmword_25F17D960;
    }

    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    if (v8)
    {
      v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *result = xmmword_25F17D960;
      v10 = swift_allocObject();
      *(v10 + 16) = v7;
      *(v10 + 24) = a2;
      *(v10 + 32) = a3;
      *(v10 + 40) = v13;
      v11 = sub_25F0FDBE8;
    }

    else
    {
      *result = xmmword_25F17D960;
      v10 = swift_allocObject();
      *(v10 + 16) = a2;
      *(v10 + 24) = a3;
      *(v10 + 32) = v7;
      v11 = sub_25F0FDBF4;
    }

    *a4 = v11;
    a4[1] = v10;
  }
}

void sub_25F0FB234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25F0FDC00(a1, a2, a3);
  v5 = swift_allocError();
  *v6 = 0;
  *(v6 + 4) = 1;
  *(v6 + 8) = a1;
  *(v6 + 16) = a2;

  sub_25F17874C();
}

void sub_25F0FB2B8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 pid];
  v6 = v5;
  sub_25F0FDC00(v5, v7, v8);
  v9 = swift_allocError();
  *v10 = v6;
  *(v10 + 4) = 0;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3;

  sub_25F17874C();
}

id sub_25F0FB350(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_25F17888C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[1] >> 62)
  {
    sub_25F17885C();

    v14 = sub_25F17887C();
    v15 = sub_25F17953C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_25F0BECF0(a3, a4, &v23);
      _os_log_impl(&dword_25F0B3000, v14, v15, "JITXPCListener(%{public}s): NSXPCListenerEndpoint connection not in initialized state", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x25F8D6230](v17, -1, -1);
      MEMORY[0x25F8D6230](v16, -1, -1);
    }

    v18 = (*(v9 + 8))(v11, v8);
    sub_25F0FDA14(v18, v19, v20);
    swift_allocError();
    *v21 = a3;
    v21[1] = a4;
    swift_willThrow();
  }

  else
  {
    v12 = *a1 | 0x4000000000000000;
    *a1 = a2;
    a1[1] = v12;
    return a2;
  }
}

uint64_t sub_25F0FB558(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_25F1787BC();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_25F17888C();
  v9 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_identifier);
  v12 = *(v3 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_identifier + 8);
  [a2 auditToken];
  v32 = v36;
  v30 = v37;
  v14 = objc_allocWithZone(MEMORY[0x277CF0B98]);
  v36 = v32;
  v37 = v30;
  *&v32 = [v14 initWithAuditToken_];
  sub_25F17885C();

  v15 = sub_25F17887C();
  v16 = sub_25F17952C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *&v30 = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29 = v3;
    v20 = a1;
    v21 = v19;
    *&v36 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_25F0BECF0(v13, v12, &v36);
    _os_log_impl(&dword_25F0B3000, v15, v16, "JITXPCListener(%{public}s): Listener for endpoint received request for new connection.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v22 = v21;
    a1 = v20;
    v3 = v29;
    MEMORY[0x25F8D6230](v22, -1, -1);
    v23 = v18;
    a2 = v30;
    MEMORY[0x25F8D6230](v23, -1, -1);
  }

  (*(v9 + 8))(v11, v31);
  v35 = *(v3 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_stateBox);

  v24 = sub_25F1787CC();
  MEMORY[0x28223BE20](v24);
  *(&v28 - 6) = v13;
  *(&v28 - 5) = v12;
  v25 = v32;
  *(&v28 - 4) = v32;
  *(&v28 - 3) = a1;
  *(&v28 - 2) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47DC8, &qword_25F17DC08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47DD0, &unk_25F17DC10);
  sub_25F0FDC70(&qword_27FD47DD8, &qword_27FD47DC8, &qword_25F17DC08);
  sub_25F17855C();
  (*(v33 + 8))(v8, v34);

  (v36)(&v36, v26);

  return v36;
}

NSObject *sub_25F0FB930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, NSObject *a6@<X5>, void *a7@<X8>)
{
  v50 = a6;
  v13 = sub_25F17888C();
  v14 = MEMORY[0x28223BE20](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v18 = *(a1 + 8);
  v20 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v23 = swift_allocObject();
      v23[2] = a2;
      v23[3] = a3;
      v23[4] = v19;
      v23[5] = a4;
      *a7 = sub_25F0FD750;
      a7[1] = v23;

      sub_25F0FD75C(v19, v18);
    }

    else
    {
      v30 = swift_allocObject();
      v30[2] = a2;
      v30[3] = a3;
      v30[4] = a4;
      *a7 = sub_25F0FD6FC;
      a7[1] = v30;
    }

    return a4;
  }

  else if (v20)
  {
    v45 = v17;
    v46 = v15;
    v48 = a2;
    v49 = a7;
    v47 = v14;
    sub_25F0C1014(0, &unk_27FD47DE0, 0x277D82BB8);
    v24 = v19;

    if (sub_25F1795EC())
    {
      sub_25F0FD5E0(v19, v18);
      *a1 = v19;
      *(a1 + 8) = 0x8000000000000000;
      v25 = swift_allocObject();
      v26 = v49;
      v25[2] = v48;
      v25[3] = a3;
      v25[4] = v24;
      v25[5] = a5;
      v25[6] = v18 & 0x3FFFFFFFFFFFFFFFLL;
      v27 = v50;
      v25[7] = v50;
      *v26 = sub_25F0FD6AC;
      v26[1] = v25;

      v28 = v24;
      v29 = a5;
      return v27;
    }

    else
    {
      v44 = v18 & 0x3FFFFFFFFFFFFFFFLL;
      v31 = v45;
      sub_25F17885C();

      v32 = a4;
      v33 = v24;
      v34 = sub_25F17887C();
      v35 = sub_25F17953C();

      v50 = v34;
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v51 = v38;
        *v36 = 136446722;
        *(v36 + 4) = sub_25F0BECF0(v48, a3, &v51);
        *(v36 + 12) = 2112;
        *(v36 + 14) = v32;
        *(v36 + 22) = 2112;
        *(v36 + 24) = v33;
        *v37 = v32;
        v37[1] = v19;
        v39 = v32;
        v40 = v33;
        v41 = v35;
        v42 = v50;
        _os_log_impl(&dword_25F0B3000, v50, v41, "JITXPCListener(%{public}s): XPC connector ignoring unrelated connection for %@ (expected %@)", v36, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473D0, &unk_25F17C540);
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v37, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        MEMORY[0x25F8D6230](v38, -1, -1);
        MEMORY[0x25F8D6230](v36, -1, -1);
      }

      else
      {
      }

      result = (*(v46 + 8))(v31, v47);
      v43 = v49;
      *v49 = sub_25F0FC3E8;
      v43[1] = 0;
    }
  }

  else
  {
    *a1 = xmmword_25F17D960;
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = a3;
    v21[4] = v19;
    *a7 = sub_25F0FD7D4;
    a7[1] = v21;
  }

  return result;
}

void sub_25F0FBD64(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = sub_25F17888C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();

  v12 = sub_25F17887C();
  v13 = sub_25F17953C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = a3;
    v15 = a4;
    v16 = v14;
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_25F0BECF0(a1, a2, &v25);
    _os_log_impl(&dword_25F0B3000, v12, v13, "JITXPCListener(%{public}s): XPC connector received connection before setup.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x25F8D6230](v17, -1, -1);
    v18 = v16;
    a4 = v15;
    MEMORY[0x25F8D6230](v18, -1, -1);
  }

  v19 = (*(v9 + 8))(v11, v8);
  sub_25F0FD7E0(v19, v20, v21);
  v22 = swift_allocError();
  *v23 = a1;
  v23[1] = a2;

  sub_25F17874C();

  *a4 = 0;
}

uint64_t sub_25F0FBF68@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, _BYTE *a5@<X8>)
{
  v28 = a1;
  v9 = sub_25F17888C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();

  v13 = a3;
  v14 = a4;
  v15 = sub_25F17887C();
  v16 = sub_25F17953C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v9;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27 = a5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v29 = v21;
    *v18 = 136446722;
    *(v18 + 4) = sub_25F0BECF0(v28, a2, &v29);
    *(v18 + 12) = 2112;
    *(v18 + 14) = v13;
    *(v18 + 22) = 2112;
    *(v18 + 24) = v14;
    *v20 = v13;
    v20[1] = v14;
    v22 = v13;
    v23 = v14;
    _os_log_impl(&dword_25F0B3000, v15, v16, "JITXPCListener(%{public}s): Ignoring new connection attempt to JIT listener for pid: %@ from %@", v18, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473D0, &unk_25F17C540);
    swift_arrayDestroy();
    v24 = v20;
    a5 = v27;
    MEMORY[0x25F8D6230](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x25F8D6230](v21, -1, -1);
    MEMORY[0x25F8D6230](v18, -1, -1);

    result = (*(v10 + 8))(v12, v26);
  }

  else
  {

    result = (*(v10 + 8))(v12, v9);
  }

  *a5 = 0;
  return result;
}

uint64_t sub_25F0FC1BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = sub_25F17888C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();

  v12 = a3;
  v13 = sub_25F17887C();
  v14 = sub_25F17953C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = v8;
    v16 = a1;
    v17 = v15;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = a4;
    v27 = v19;
    v20 = v19;
    *v17 = 136446466;
    *(v17 + 4) = sub_25F0BECF0(v16, a2, &v27);
    *(v17 + 12) = 2112;
    *(v17 + 14) = v12;
    *v18 = v12;
    v21 = v12;
    _os_log_impl(&dword_25F0B3000, v13, v14, "JITXPCListener(%{public}s): Invalidated, ignoring new connection attempt to JIT listener from %@", v17, 0x16u);
    sub_25F0B7E94(v18, &qword_27FD473D0, &unk_25F17C540);
    MEMORY[0x25F8D6230](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v22 = v20;
    a4 = v26;
    MEMORY[0x25F8D6230](v22, -1, -1);
    MEMORY[0x25F8D6230](v17, -1, -1);

    result = (*(v9 + 8))(v11, v25);
  }

  else
  {

    result = (*(v9 + 8))(v11, v8);
  }

  *a4 = 0;
  return result;
}

void sub_25F0FC3F0(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, _BYTE *a7@<X8>)
{
  v31 = a1;
  v32 = a4;
  v12 = sub_25F17888C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();
  v16 = a3;

  v17 = sub_25F17887C();
  v18 = sub_25F17952C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29[0] = a6;
    v20 = v19;
    v21 = swift_slowAlloc();
    v29[1] = a5;
    v22 = v21;
    v23 = swift_slowAlloc();
    v30 = a7;
    v24 = v23;
    v33 = v23;
    *v20 = 136446722;
    *(v20 + 4) = sub_25F0BECF0(v31, a2, &v33);
    *(v20 + 12) = 2112;
    *(v20 + 14) = v16;
    *(v20 + 22) = 2112;
    *(v20 + 24) = v16;
    *v22 = v16;
    v22[1] = v16;
    v25 = v16;
    _os_log_impl(&dword_25F0B3000, v17, v18, "JITXPCListener(%{public}s): Accepting connection for: %@ from %@", v20, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473D0, &unk_25F17C540);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v26 = v24;
    a7 = v30;
    MEMORY[0x25F8D6230](v26, -1, -1);
    v27 = v20;
    a6 = v29[0];
    MEMORY[0x25F8D6230](v27, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  [v32 setDelegate_];
  v33 = a6;
  v28 = a6;
  sub_25F17877C();

  *a7 = 1;
}

uint64_t sub_25F0FC7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25F1796DC();

  strcpy(v7, "Error type: ");
  v5 = sub_25F17992C();
  MEMORY[0x25F8D50D0](v5);

  MEMORY[0x25F8D50D0](0xD00000000000001BLL, 0x800000025F1857F0);

  MEMORY[0x25F8D50D0](a1, a2);

  return v7[0];
}

uint64_t sub_25F0FC8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FEFF0(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F0FC8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FEFF0(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F0FC964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FE8D0(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F0FC9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FE8D0(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F0FCA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FE7A0(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F0FCA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FE7A0(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F0FCAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FF120(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F0FCB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FF120(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F0FCB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FF250(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F0FCBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FF250(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F0FCC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FED90(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F0FCC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FED90(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F0FCCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FEC60(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F0FCD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FEC60(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F0FCDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FEB30(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F0FCDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FEB30(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F0FCE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FE670(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F0FCEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FE670(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F0FCF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FEA00(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F0FCF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FEA00(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

unint64_t sub_25F0FCF9C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (*(v0 + 4))
  {
    sub_25F1796DC();

    MEMORY[0x25F8D50D0](v1, v2);
  }

  else
  {
    sub_25F1796DC();

    MEMORY[0x25F8D50D0](v1, v2);
    MEMORY[0x25F8D50D0](0x203A646970202CLL, 0xE700000000000000);
    v3 = sub_25F17980C();
    MEMORY[0x25F8D50D0](v3);
  }

  return 0xD00000000000001ALL;
}

uint64_t sub_25F0FD0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FEEC0(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F0FD118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0FEEC0(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t getEnumTagSinglePayload for JITManager.Configuration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for JITManager.Configuration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t get_enum_tag_for_layout_string_15PreviewShellKit14JITXPCListener33_1C89A0595A9F44E3FEB21A13643147FFLLC5StateO(uint64_t a1)
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

uint64_t sub_25F0FD340(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 16))
  {
    return (*a1 + 125);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25F0FD39C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_25F0FD3FC(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3);
    result[1] = 0xC000000000000000;
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_15PreviewShellKit23PreviewsJITConfigurator33_1C89A0595A9F44E3FEB21A13643147FFLLC5StateO(void *a1)
{
  v1 = a1[1];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_25F0FD460(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 16))
  {
    return (*a1 + 16382);
  }

  v3 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25F0FD4D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_25F0FD544(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    result[1] = v2;
  }

  else
  {
    *result = 8 * (a2 - 2);
    result[1] = 0x8000000000000000;
  }

  return result;
}

void sub_25F0FD5E0(void *a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {
    }
  }

  else
  {
    if (v3)
    {
    }
  }
}

uint64_t sub_25F0FD654()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25F0FD6BC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F0FD708()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_25F0FD75C(id result, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {

      return result;
    }
  }

  else
  {
    if (v3)
    {
      v4 = result;
    }
  }

  return result;
}

unint64_t sub_25F0FD7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47DF0;
  if (!qword_27FD47DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47DF0);
  }

  return result;
}

uint64_t sub_25F0FD834()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F0FD894()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_25F0FD8EC@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 49))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_25F0FA834(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v2 | *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), a1);
}

unint64_t sub_25F0FD94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47E10;
  if (!qword_27FD47E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47E10);
  }

  return result;
}

unint64_t sub_25F0FD9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47E18;
  if (!qword_27FD47E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47E18);
  }

  return result;
}

unint64_t sub_25F0FDA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47E50;
  if (!qword_27FD47E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47E50);
  }

  return result;
}

unint64_t sub_25F0FDA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47E58;
  if (!qword_27FD47E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47E58);
  }

  return result;
}

unint64_t sub_25F0FDABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47E60;
  if (!qword_27FD47E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47E60);
  }

  return result;
}

unint64_t sub_25F0FDB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47E68;
  if (!qword_27FD47E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47E68);
  }

  return result;
}

uint64_t sub_25F0FDB90(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F0FDBA0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25F0FDC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47E80;
  if (!qword_27FD47E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47E80);
  }

  return result;
}

uint64_t sub_25F0FDC70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25F0FDCC4()
{
  MEMORY[0x25F8D62D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_38Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F0FDD48()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t type metadata accessor for JITManager.Storage.Record(uint64_t a1)
{
  result = qword_27FD47EE0;
  if (!qword_27FD47EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F0FDDF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JITManager.Storage.Record(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0FDE5C(uint64_t a1)
{
  v2 = type metadata accessor for JITManager.Storage.Record(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F0FDEB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25F0FDF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47EB0;
  if (!qword_27FD47EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47EB0);
  }

  return result;
}

uint64_t sub_25F0FDF74()
{
  v1 = sub_25F17767C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F0FE040()
{
  v1 = *(sub_25F17767C() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_25F0F7F38(v2, v3, v4, v5);
}

uint64_t objectdestroy_57Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25F0FE11C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_75Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_25F0FE1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47EC8;
  if (!qword_27FD47EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47EC8);
  }

  return result;
}

unint64_t sub_25F0FE204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47ED0;
  if (!qword_27FD47ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47ED0);
  }

  return result;
}

uint64_t sub_25F0FE290(uint64_t a1, int a2)
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

uint64_t sub_25F0FE2D8(uint64_t result, int a2, int a3)
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

uint64_t sub_25F0FE3AC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for BatchIdentity(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_25F0FE46C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BatchIdentity(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25F0FE510(uint64_t a1)
{
  result = type metadata accessor for PreviewsJITConfigurator();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BatchIdentity(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_25F0FE59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47EF8;
  if (!qword_27FD47EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47EF8);
  }

  return result;
}

unint64_t sub_25F0FE5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47F00;
  if (!qword_27FD47F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F00);
  }

  return result;
}

unint64_t sub_25F0FE648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F0FE670(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FE670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47F08;
  if (!qword_27FD47F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F08);
  }

  return result;
}

unint64_t sub_25F0FE6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47F10;
  if (!qword_27FD47F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F10);
  }

  return result;
}

unint64_t sub_25F0FE724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47F18;
  if (!qword_27FD47F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F18);
  }

  return result;
}

unint64_t sub_25F0FE778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F0FE7A0(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FE7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47F20;
  if (!qword_27FD47F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F20);
  }

  return result;
}

unint64_t sub_25F0FE7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47F28;
  if (!qword_27FD47F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F28);
  }

  return result;
}

unint64_t sub_25F0FE854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47F30;
  if (!qword_27FD47F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F30);
  }

  return result;
}

unint64_t sub_25F0FE8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F0FE8D0(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FE8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47F38;
  if (!qword_27FD47F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F38);
  }

  return result;
}

unint64_t sub_25F0FE92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47F40;
  if (!qword_27FD47F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F40);
  }

  return result;
}

unint64_t sub_25F0FE984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47F48;
  if (!qword_27FD47F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F48);
  }

  return result;
}

unint64_t sub_25F0FE9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F0FEA00(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FEA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47F50;
  if (!qword_27FD47F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F50);
  }

  return result;
}

unint64_t sub_25F0FEA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47F58;
  if (!qword_27FD47F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F58);
  }

  return result;
}

unint64_t sub_25F0FEAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47F60;
  if (!qword_27FD47F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F60);
  }

  return result;
}

unint64_t sub_25F0FEB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F0FEB30(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FEB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47F68;
  if (!qword_27FD47F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F68);
  }

  return result;
}

unint64_t sub_25F0FEB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47F70;
  if (!qword_27FD47F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F70);
  }

  return result;
}

unint64_t sub_25F0FEBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47F78;
  if (!qword_27FD47F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F78);
  }

  return result;
}

unint64_t sub_25F0FEC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F0FEC60(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FEC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47F80;
  if (!qword_27FD47F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F80);
  }

  return result;
}

unint64_t sub_25F0FECBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47F88;
  if (!qword_27FD47F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F88);
  }

  return result;
}

unint64_t sub_25F0FED14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47F90;
  if (!qword_27FD47F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F90);
  }

  return result;
}

unint64_t sub_25F0FED68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F0FED90(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FED90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47F98;
  if (!qword_27FD47F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F98);
  }

  return result;
}

unint64_t sub_25F0FEDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47FA0;
  if (!qword_27FD47FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FA0);
  }

  return result;
}

unint64_t sub_25F0FEE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47FA8;
  if (!qword_27FD47FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FA8);
  }

  return result;
}

unint64_t sub_25F0FEE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F0FEEC0(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FEEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47FB0;
  if (!qword_27FD47FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FB0);
  }

  return result;
}

unint64_t sub_25F0FEF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47FB8;
  if (!qword_27FD47FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FB8);
  }

  return result;
}

unint64_t sub_25F0FEF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47FC0;
  if (!qword_27FD47FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FC0);
  }

  return result;
}

unint64_t sub_25F0FEFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F0FEFF0(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FEFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47FC8;
  if (!qword_27FD47FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FC8);
  }

  return result;
}

unint64_t sub_25F0FF04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47FD0;
  if (!qword_27FD47FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FD0);
  }

  return result;
}

unint64_t sub_25F0FF0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47FD8;
  if (!qword_27FD47FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FD8);
  }

  return result;
}

unint64_t sub_25F0FF0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F0FF120(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FF120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47FE0;
  if (!qword_27FD47FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FE0);
  }

  return result;
}

unint64_t sub_25F0FF17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47FE8;
  if (!qword_27FD47FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FE8);
  }

  return result;
}

unint64_t sub_25F0FF1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47FF0;
  if (!qword_27FD47FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FF0);
  }

  return result;
}

unint64_t sub_25F0FF228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F0FF250(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FF250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47FF8[0];
  if (!qword_27FD47FF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD47FF8);
  }

  return result;
}

uint64_t dispatch thunk of static NonUIContentProvider.create(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25F0BF3E4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_25F0FF574(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_25F0FF5B4(a1);
  return v2;
}

void *sub_25F0FF5B4(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  sub_25F17828C();
  v1[4] = sub_25F17827C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48090, &unk_25F17EF60);
  v1[5] = sub_25F17883C();
  v1[6] = 0;
  v6 = sub_25F1776AC();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  (*(v7 + 32))(v9 + v8, a1, v6);
  v2[2] = &unk_25F17EFB0;
  v2[3] = v9;
  return v2;
}

uint64_t sub_25F0FF738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25F0BF3E4;

  return v13(a1, a3, a2, a4, a5);
}

uint64_t sub_25F0FF8BC(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v40 = a4;
  v43 = a2;
  v44 = a3;
  v45 = *v4;
  v7 = sub_25F177FFC();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_25F177D2C();
  v50 = *(v41 - 8);
  v42 = *(v50 + 64);
  MEMORY[0x28223BE20](v41);
  v39 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_25F17720C();
  v49 = *(v51 - 8);
  v38 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v11;
  v36 = sub_25F177F8C();
  v35 = *(v36 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v36);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v4[5];
  swift_getKeyPath();
  v54 = *a1;
  v13 = v54;
  v55 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48080, &unk_25F17EF50);
  sub_25F102144();
  sub_25F17853C();

  v14 = v40;
  sub_25F10436C(v40, sub_25F102918, v4);

  LODWORD(v56) = v13;
  v52 = v4;
  v53 = a1;
  v37 = sub_25F17825C();
  v15 = v35;
  v16 = v36;
  (*(v35 + 16))(&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v36);
  v17 = v49;
  (*(v49 + 16))(v11, v44, v51);
  v18 = v50;
  v19 = v39;
  v20 = v41;
  (*(v50 + 16))(v39, v14, v41);
  v21 = v15;
  v22 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v23 = (v12 + *(v17 + 80) + v22) & ~*(v17 + 80);
  v24 = (v38 + *(v18 + 80) + v23) & ~*(v18 + 80);
  v25 = (v42 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v45;
  *(v26 + 16) = *(v45 + 80);
  *(v26 + 24) = *(v27 + 88);
  (*(v21 + 32))(v26 + v22, v33, v16);
  (*(v49 + 32))(v26 + v23, v34, v51);
  (*(v50 + 32))(v26 + v24, v19, v20);
  *(v26 + v25) = v5;

  v28 = v46;
  sub_25F177FCC();
  v29 = v28;
  v30 = sub_25F1786AC();

  (*(v47 + 8))(v29, v48);
  return v30;
}

uint64_t sub_25F0FFE24(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v22 = *v2;
  v4 = *(v22 + 80);
  v5 = sub_25F17960C();
  v20 = *(v5 - 8);
  v21 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = sub_25F177CBC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F177CAC();
  sub_25F10291C(&qword_27FD48098, MEMORY[0x277D40C50], MEMORY[0x277D40C68]);
  sub_25F1791FC();
  sub_25F1791FC();
  if (v26 == v25)
  {
    (*(v12 + 8))(v14, v11);

LABEL_4:
    sub_25F100E3C(v24);
    v16 = 1;
    return v16 & 1;
  }

  v19 = a2;
  v15 = sub_25F17983C();
  (*(v12 + 8))(v14, v11);

  if (v15)
  {
    goto LABEL_4;
  }

  sub_25F1008C0(v8);
  v18 = v23;
  if ((*(v23 + 48))(v8, 1, v4) == 1)
  {
    (*(v20 + 8))(v8, v21);
    v16 = 0;
  }

  else
  {
    (*(v18 + 32))(v10, v8, v4);
    v16 = (*(*(*(v22 + 88) + 8) + 32))(v24, v19, v4);
    (*(v18 + 8))(v10, v4);
  }

  return v16 & 1;
}

uint64_t sub_25F1001D4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = type metadata accessor for PreviewAgentConnector(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = *(v4 + 80);
  sub_25F17873C();
  v12 = sub_25F17932C();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_25F102560(a2, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v14[2] = v11;
  v15 = *(v4 + 88);
  v14[3] = v15;
  v14[4] = a1;
  sub_25F10274C(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v15;

  return sub_25F17870C();
}

uint64_t sub_25F100434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25F100458, 0, 0);
}

uint64_t sub_25F100458()
{
  v5 = (*(v0[3] + 16) + **(v0[3] + 16));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_25F0EB0C4;
  v2 = v0[4];
  v3 = v0[2];

  return v5(v3, v2);
}

uint64_t sub_25F100550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v29 = a3;
  v30 = a4;
  v27 = *a5;
  v28 = a1;
  v7 = sub_25F177FFC();
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v27 + 88);
  v10 = *(v26 + 8);
  v11 = *(v27 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v22 - v14;
  v16 = v32;
  (*(v10 + 48))(a2, v11, v10);
  if (!v16)
  {
    v32 = v13;
    v23 = v9;
    v24 = v7;
    v17 = v26;
    v31[3] = v27;
    v31[4] = &off_287153AF8;
    v31[0] = a5;
    v18 = *(v26 + 16);

    v18(v15, v29, v30, v31, v11, v17);
    (*(v32 + 8))(v15, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v20 = swift_allocObject();
    *(v20 + 16) = v11;
    *(v20 + 24) = v17;
    sub_25F177F8C();
    v21 = v23;
    sub_25F177FCC();
    AssociatedTypeWitness = sub_25F1785BC();

    (*(v25 + 8))(v21, v24);
  }

  return AssociatedTypeWitness;
}

uint64_t sub_25F1008C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_25F1787BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[5];

  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48080, &unk_25F17EF50);
  sub_25F102144();
  sub_25F17856C();
  (*(v5 + 8))(v7, v4);

  LODWORD(v11) = v12;
  BYTE4(v11) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48090, &unk_25F17EF60);
  return sub_25F100B94(sub_25F1021A8, v1, MEMORY[0x277D84A98], *(v3 + 80), v8, a1);
}

uint64_t sub_25F100A8C@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_25F17826C();
  v5 = *(v4 + 80);
  sub_25F17873C();
  sub_25F17900C();

  if (!v7)
  {
    return (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  }

  sub_25F17861C();
}

uint64_t sub_25F100B94@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v28 = a1;
  v25 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22);
  if ((*(v15 + 48))(v20, 1, v14) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v15 + 32))(v18, v20, v14);
  v28(v18, v12);
  result = (*(v15 + 8))(v18, v14);
  if (v6)
  {
    return (*(v25 + 32))(v26, v12, a3);
  }

  return result;
}

uint64_t sub_25F100E3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F17888C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17886C();

  v8 = sub_25F17887C();
  v9 = sub_25F17952C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;

    v13 = sub_25F17992C();
    v15 = v14;

    v16 = sub_25F0BECF0(v13, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_25F0B3000, v8, v9, "Received incoming remote events message stream for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  sub_25F17781C();
  sub_25F10291C(&qword_27FD480A0, MEMORY[0x277D40AA8], MEMORY[0x277D40AA0]);
  *(v2 + 48) = sub_25F17743C();
}

uint64_t sub_25F1010A0(int a1)
{
  v21 = a1;
  v19 = *v1;
  v2 = *(v19 + 80);
  v3 = sub_25F17960C();
  v17 = *(v3 - 8);
  v18 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v20 = *(v2 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = sub_25F1787BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v1[5];

  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48080, &unk_25F17EF50);
  sub_25F102144();
  sub_25F17856C();
  (*(v10 + 8))(v12, v9);

  if ((v24 & 1) == 0 && v23 == v21)
  {
    sub_25F1008C0(v6);
    v13 = v20;
    if ((*(v20 + 48))(v6, 1, v2) != 1)
    {
      (*(v13 + 32))(v8, v6, v2);
      v15 = (*(*(v19 + 88) + 32))(v2);
      (*(v13 + 8))(v8, v2);
      return v15;
    }

    (*(v17 + 8))(v6, v18);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
  return sub_25F17872C();
}

uint64_t sub_25F101438(int a1)
{
  v21 = a1;
  v19 = *v1;
  v2 = *(v19 + 80);
  v3 = sub_25F17960C();
  v17 = *(v3 - 8);
  v18 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v20 = *(v2 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = sub_25F1787BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v1[5];

  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48080, &unk_25F17EF50);
  sub_25F102144();
  sub_25F17856C();
  (*(v10 + 8))(v12, v9);

  if ((v24 & 1) == 0 && v23 == v21)
  {
    sub_25F1008C0(v6);
    v13 = v20;
    if ((*(v20 + 48))(v6, 1, v2) != 1)
    {
      (*(v13 + 32))(v8, v6, v2);
      v15 = (*(*(v19 + 88) + 40))(v2);
      (*(v13 + 8))(v8, v2);
      return v15;
    }

    (*(v17 + 8))(v6, v18);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
  return sub_25F17872C();
}

uint64_t sub_25F1017D0(int a1)
{
  v2 = v1;
  v4 = sub_25F17888C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17886C();
  v8 = sub_25F17887C();
  v9 = sub_25F17952C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67240192;
    *(v10 + 4) = a1;
    _os_log_impl(&dword_25F0B3000, v8, v9, "Preview agent with pid %{public}d crashed", v10, 8u);
    MEMORY[0x25F8D6230](v10, -1, -1);
  }

  result = (*(v5 + 8))(v7, v4);
  if (*(v2 + 48))
  {
    *(swift_allocObject() + 16) = a1;

    sub_25F17860C();
  }

  return result;
}

uint64_t sub_25F101978(uint64_t a1, unsigned int a2)
{
  v32 = a2;
  v31 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480A8, &qword_25F17EFA0);
  v2 = *(v30 - 8);
  v28[1] = *(v2 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = v28 - v3;
  v4 = sub_25F17781C();
  MEMORY[0x28223BE20](v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F17888C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - v12;
  sub_25F17886C();
  v14 = sub_25F17887C();
  v15 = sub_25F17955C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67240192;
    *(v16 + 4) = v32;
    _os_log_impl(&dword_25F0B3000, v14, v15, "Notifying host that crash occurred for %{public}d", v16, 8u);
    MEMORY[0x25F8D6230](v16, -1, -1);
  }

  v17 = *(v8 + 8);
  v17(v13, v7);
  *v6 = v32;
  v6[4] = 0;
  swift_storeEnumTagMultiPayload();
  v18 = v30;
  sub_25F17746C();
  sub_25F10297C(v6);
  sub_25F17886C();
  v19 = sub_25F17887C();
  v20 = sub_25F17955C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67240192;
    *(v21 + 4) = v32;
    _os_log_impl(&dword_25F0B3000, v19, v20, "Gathering crash details for %{public}d", v21, 8u);
    MEMORY[0x25F8D6230](v21, -1, -1);
  }

  v17(v11, v7);
  sub_25F176FCC();
  v22 = sub_25F176FBC();
  v23 = v32;
  sub_25F176F9C();

  v24 = v29;
  (*(v2 + 16))(v29, v31, v18);
  v25 = (*(v2 + 80) + 20) & ~*(v2 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  (*(v2 + 32))(v26 + v25, v24, v18);
  sub_25F17860C();
}

uint64_t sub_25F101D6C(uint64_t a1, int a2)
{
  v4 = sub_25F17781C();
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F17888C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17886C();
  v11 = sub_25F17887C();
  v12 = sub_25F17955C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67240192;
    *(v13 + 4) = a2;
    _os_log_impl(&dword_25F0B3000, v11, v12, "Sending host crash details for %{public}d", v13, 8u);
    MEMORY[0x25F8D6230](v13, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v14 = sub_25F177EAC();
  (*(*(v14 - 8) + 16))(v6, a1, v14);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480A8, &qword_25F17EFA0);
  sub_25F17746C();
  return sub_25F10297C(v6);
}

void *sub_25F101FA0()
{

  return v0;
}

uint64_t sub_25F101FD8()
{
  sub_25F101FA0();

  return swift_deallocClassInstance();
}

uint64_t sub_25F102024@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25F0FF574(a1);
  *a2 = result;
  return result;
}

uint64_t sub_25F102108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F102144()
{
  result = qword_27FD48088;
  if (!qword_27FD48088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD48080, &unk_25F17EF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48088);
  }

  return result;
}

uint64_t sub_25F1021E4()
{
  v17 = sub_25F177F8C();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_25F17720C();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_25F177D2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = v2 | v6 | v11;
  v14 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return MEMORY[0x2821FE8E8](v0, v14 + 8, v13 | 7);
}

uint64_t sub_25F1023C4(uint64_t a1)
{
  v3 = *(sub_25F177F8C() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_25F17720C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_25F177D2C() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  return sub_25F100550(a1, v1 + v4, v1 + v7, v1 + v10, *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_25F102560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewAgentConnector(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F1025C4()
{
  v1 = (type metadata accessor for PreviewAgentConnector(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_25F17767C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F10274C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewAgentConnector(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F1027B0(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewAgentConnector(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F0C10CC;

  return sub_25F100434(a1, v6, v1 + v5);
}

uint64_t sub_25F10291C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F10297C(uint64_t a1)
{
  v2 = sub_25F17781C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F1029D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480A8, &qword_25F17EFA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 20) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F102A6C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480A8, &qword_25F17EFA0);
  v3 = *(v1 + 16);

  return sub_25F101D6C(a1, v3);
}

uint64_t sub_25F102AEC()
{
  v1 = sub_25F1776AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F102B74(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(sub_25F1776AC() - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25F0C10CC;

  return sub_25F0FF738(a1, a2, v2 + v9, v6, v7);
}

uint64_t sub_25F102C80(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_25F1777CC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_25F1774BC();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F102D9C, 0, 0);
}

uint64_t sub_25F102D9C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[3];
  (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
  sub_25F17742C();
  sub_25F1048A4(v1, v4);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25F102E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a4;
  v6[10] = a6;
  v7 = sub_25F17813C();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v8 = sub_25F17888C();
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474B8, &qword_25F17BF70);
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F102FEC, 0, 0);
}

uint64_t sub_25F102FEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  sub_25F17935C();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_25F1030B8;
  v2 = *(v0 + 136);

  return MEMORY[0x2822003E8](v0 + 56, 0, 0, v2);
}

uint64_t sub_25F1030B8()
{

  return MEMORY[0x2822009F8](sub_25F1031B4, 0, 0);
}

uint64_t sub_25F1031B4()
{
  v1 = v0[7];
  v0[21] = v1;
  if (v1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
    v0[22] = v2;
    v0[5] = v2;
    v0[6] = sub_25F0B7D00(&qword_27FD475C8, &qword_27FD46D28, &qword_25F17B180, MEMORY[0x277D40D78]);
    v0[2] = v1;

    v3 = swift_task_alloc();
    v0[23] = v3;
    *v3 = v0;
    v3[1] = sub_25F103330;

    return MEMORY[0x2821A0EA0](v0 + 2);
  }

  else
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_25F103330()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_25F1034FC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
    v3 = sub_25F10344C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F10344C()
{

  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_25F1030B8;
  v2 = *(v0 + 136);

  return MEMORY[0x2822003E8](v0 + 56, 0, 0, v2);
}

uint64_t sub_25F1034FC()
{
  v1 = v0[24];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_25F17884C();
  v2 = v1;
  v3 = sub_25F17887C();
  v4 = sub_25F17953C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[24];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_25F0B3000, v3, v4, "Failed to attach host connection to host-shell message pipe: %@", v6, 0xCu);
    sub_25F0B7E94(v7, &qword_27FD473D0, &unk_25F17C540);
    MEMORY[0x25F8D6230](v7, -1, -1);
    MEMORY[0x25F8D6230](v6, -1, -1);
  }

  v20 = v0[24];
  v10 = v0[21];
  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[13];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[12];

  (*(v11 + 8))(v12, v14);
  v0[8] = v10;
  sub_25F17812C();
  sub_25F0B7D00(&qword_27FD46D30, &qword_27FD46D28, &qword_25F17B180, MEMORY[0x277D40D80]);
  sub_25F1780BC();

  (*(v16 + 8))(v13, v15);

  v17 = swift_task_alloc();
  v0[20] = v17;
  *v17 = v0;
  v17[1] = sub_25F1030B8;
  v18 = v0[17];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v18);
}

uint64_t sub_25F103780()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480E0, &qword_25F17F038);
  result = sub_25F17883C();
  qword_27FD480B0 = result;
  return result;
}

uint64_t sub_25F1037D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v39 = a4;
  v37 = a3;
  v41 = a5;
  v7 = sub_25F17776C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480D8, &qword_25F17F030);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v34 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  v36 = a2;
  sub_25F177D1C();
  v40 = a1;
  v22 = *a1;
  if (*(*a1 + 16) && (v23 = sub_25F0C8E04(v12), (v24 & 1) != 0))
  {
    v25 = *(v22 + 56);
    v34 = v23;
    v35 = v25;
    updated = type metadata accessor for UpdateRegistry.Update(0);
    v27 = *(updated - 8);
    sub_25F104840(v35 + *(v27 + 72) * v34, v21);
    (*(v8 + 8))(v12, v7);
    (*(v27 + 56))(v21, 0, 1, updated);
  }

  else
  {
    (*(v8 + 8))(v12, v7);
    updated = type metadata accessor for UpdateRegistry.Update(0);
    (*(*(updated - 8) + 56))(v21, 1, 1, updated);
  }

  v28 = v38;
  sub_25F177D1C();
  sub_25F177D0C();
  type metadata accessor for UpdateRegistry.Update(0);
  v29 = &v19[*(updated + 20)];
  v30 = v39;
  *v29 = v37;
  v29[1] = v30;
  *&v19[*(updated + 24)] = MEMORY[0x277D84F90];
  v31 = *(updated - 8);
  (*(v31 + 56))(v19, 0, 1, updated);

  sub_25F169E80(v19, v28);
  sub_25F104774(v21, v16);
  if ((*(v31 + 48))(v16, 1, updated) == 1)
  {
    result = sub_25F0B7E94(v16, &qword_27FD480D8, &qword_25F17F030);
    v33 = 0;
  }

  else
  {
    v33 = *&v16[*(updated + 24)];

    result = sub_25F1047E4(v16);
  }

  *v41 = v33;
  return result;
}

uint64_t sub_25F103BA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v56 = a3;
  v69 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480D8, &qword_25F17F030);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v54 - v7;
  v57 = sub_25F1774BC();
  v63 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v62 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_25F17757C();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v54 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480F0, &qword_25F17F058);
  MEMORY[0x28223BE20](v64);
  v66 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480F8, &qword_25F17F060);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v60 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v54 - v14;
  v16 = sub_25F17776C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v55 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v54 - v20;
  updated = type metadata accessor for UpdateRegistry.Update(0);
  v68 = *(updated - 8);
  v22 = MEMORY[0x28223BE20](updated);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v54 - v25;
  v27 = a2;
  sub_25F1776EC();
  v59 = a1;
  v28 = *a1;
  if (!*(*a1 + 16) || (v29 = sub_25F0C8E04(v21), (v30 & 1) == 0))
  {
    result = (*(v17 + 8))(v21, v16);
LABEL_11:
    v38 = v69;
    *v69 = 0;
    v38[1] = 0;
    return result;
  }

  sub_25F104840(*(v28 + 56) + *(v68 + 72) * v29, v24);
  (*(v17 + 8))(v21, v16);
  sub_25F104D40(v24, v26);
  sub_25F1776DC();
  v31 = v65;
  v32 = v67;
  (*(v65 + 56))(v15, 0, 1, v67);
  v33 = *(v64 + 48);
  v34 = v66;
  sub_25F104DA4(v26, v66);
  sub_25F104DA4(v15, v34 + v33);
  v35 = *(v31 + 48);
  if (v35(v34, 1, v32) != 1)
  {
    v64 = v27;
    v37 = v60;
    sub_25F104DA4(v34, v60);
    if (v35(v34 + v33, 1, v32) != 1)
    {
      v39 = v54;
      (*(v31 + 32))(v54, v34 + v33, v32);
      sub_25F104E48(&qword_27FD48100, MEMORY[0x277D40810], MEMORY[0x277D40818]);
      v40 = sub_25F17904C();
      v41 = *(v31 + 8);
      v41(v39, v32);
      sub_25F0B7E94(v15, &qword_27FD480F8, &qword_25F17F060);
      v41(v37, v32);
      sub_25F0B7E94(v34, &qword_27FD480F8, &qword_25F17F060);
      if (v40)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    sub_25F0B7E94(v15, &qword_27FD480F8, &qword_25F17F060);
    (*(v31 + 8))(v37, v32);
LABEL_9:
    sub_25F0B7E94(v34, &qword_27FD480F0, &qword_25F17F058);
LABEL_10:
    result = sub_25F1047E4(v26);
    goto LABEL_11;
  }

  sub_25F0B7E94(v15, &qword_27FD480F8, &qword_25F17F060);
  if (v35(v34 + v33, 1, v32) != 1)
  {
    goto LABEL_9;
  }

  sub_25F0B7E94(v34, &qword_27FD480F8, &qword_25F17F060);
LABEL_13:
  v42 = v57;
  (*(v63 + 16))(v62, v56, v57);
  v43 = *(updated + 24);
  v44 = *&v26[v43];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = sub_25F115EC8(0, v44[2] + 1, 1, v44);
  }

  v46 = v44[2];
  v45 = v44[3];
  if (v46 >= v45 >> 1)
  {
    v44 = sub_25F115EC8((v45 > 1), v46 + 1, 1, v44);
  }

  v44[2] = v46 + 1;
  (*(v63 + 32))(v44 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v46, v62, v42);
  *&v26[v43] = v44;
  v47 = v55;
  sub_25F1776EC();
  v48 = v58;
  sub_25F104840(v26, v58);
  v49 = updated;
  (*(v68 + 56))(v48, 0, 1, updated);
  sub_25F169E80(v48, v47);
  v50 = &v26[*(v49 + 20)];
  v52 = *v50;
  v51 = *(v50 + 1);

  sub_25F1047E4(v26);
  result = swift_allocObject();
  *(result + 16) = v52;
  *(result + 24) = v51;
  v53 = v69;
  *v69 = sub_25F104E14;
  v53[1] = result;
  return result;
}

double sub_25F10436C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_25F1774BC();
  v16[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25F1787BC();
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FD46808 != -1)
  {
    swift_once();
  }

  v18 = qword_27FD480B0;

  v9 = sub_25F1787CC();
  v16[1] = v16;
  MEMORY[0x28223BE20](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480B8, &qword_25F17F020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480C0, &qword_25F17F028);
  sub_25F0B7D00(&qword_27FD480C8, &qword_27FD480B8, &qword_25F17F020, MEMORY[0x277D40588]);
  sub_25F17855C();
  (*(v6 + 8))(v8, v17);

  if (v19)
  {
    v17 = v19;
    v11 = *(v19 + 16);
    if (v11)
    {
      v12 = *(v16[0] + 16);
      v13 = v17 + ((*(v16[0] + 80) + 32) & ~*(v16[0] + 80));
      v14 = *(v16[0] + 72);
      v15 = (v16[0] + 8);
      do
      {
        v12(v5, v13, v3);
        sub_25F104E48(&qword_27FD480D0, MEMORY[0x277D40750], MEMORY[0x277D40748]);
        sub_25F17800C();
        (*v15)(v5, v3);
        v13 += v14;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

uint64_t type metadata accessor for UpdateRegistry.Update(uint64_t a1)
{
  result = qword_27FD48108;
  if (!qword_27FD48108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F104774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480D8, &qword_25F17F030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F1047E4(uint64_t a1)
{
  updated = type metadata accessor for UpdateRegistry.Update(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_25F104840(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateRegistry.Update(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_25F1048A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F177CBC();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v21 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F1787BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FD46808 != -1)
  {
    swift_once();
  }

  v25 = qword_27FD480B0;

  v10 = sub_25F1787CC();
  MEMORY[0x28223BE20](v10);
  v20[1] = a2;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480B8, &qword_25F17F020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480E8, &qword_25F17F050);
  sub_25F0B7D00(&qword_27FD480C8, &qword_27FD480B8, &qword_25F17F020, MEMORY[0x277D40588]);
  sub_25F17855C();
  (*(v7 + 8))(v9, v6);

  v11 = v26[0];
  if (!v26[0])
  {
    v18 = 0;
    v13 = 0;
LABEL_8:
    sub_25F1774BC();
    sub_25F104E48(&qword_27FD480D0, MEMORY[0x277D40750], MEMORY[0x277D40748]);
    sub_25F17800C();
    v16 = v18;
    v17 = v13;
    return sub_25F0FDB90(v16, v17);
  }

  v12 = v26[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  sub_25F104D30(v11, v12);

  v14 = v21;
  sub_25F1776FC();
  v11(v26, v24, v14);

  v15 = v26[0];
  (*(v22 + 8))(v14, v23);
  if ((v15 & 1) == 0)
  {
    sub_25F0FDB90(v11, v12);
    v18 = sub_25F104CF8;
    goto LABEL_8;
  }

  v16 = v11;
  v17 = v12;
  return sub_25F0FDB90(v16, v17);
}

uint64_t sub_25F104CC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F104D30(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F104D40(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateRegistry.Update(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_25F104DA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480F8, &qword_25F17F060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F104E14@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25F104E48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F104EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480F8, &qword_25F17F060);
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

uint64_t sub_25F104F90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480F8, &qword_25F17F060);
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

void sub_25F105054(uint64_t a1)
{
  sub_25F1051A0(319, &qword_27FD48118, MEMORY[0x277D40810], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_25F105150();
    if (v2 <= 0x3F)
    {
      sub_25F1051A0(319, &qword_27FD48128, MEMORY[0x277D40750], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_25F105150()
{
  result = qword_27FD48120;
  if (!qword_27FD48120)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FD48120);
  }

  return result;
}

void sub_25F1051A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25F10520C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25F0BF3E4;

  return PreviewAgentLauncher.jitBootstrapMethod(forIdentifier:)(v6, a2, a3);
}

uint64_t PreviewAgentLauncher.jitBootstrapMethod(forIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  return MEMORY[0x2822009F8](sub_25F1052D4, 0, 0);
}

uint64_t sub_25F1052D4()
{
  v1 = *(v0 + 16);
  DynamicType = swift_getDynamicType();
  v3 = type metadata accessor for NoAgentJITBootstrapMethodProvided(0);
  sub_25F1091A0(&qword_27FD48130, type metadata accessor for NoAgentJITBootstrapMethodProvided, &unk_25F17F2A4);
  swift_allocError();
  v5 = v4;
  v6 = sub_25F17767C();
  (*(*(v6 - 8) + 16))(v5, v1, v6);
  *(v5 + *(v3 + 20)) = DynamicType;
  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t PreviewAgentLaunchConfiguration.role.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F17773C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PreviewAgentLaunchConfiguration.role.setter(uint64_t a1)
{
  v3 = sub_25F17773C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PreviewAgentLaunchConfiguration.injectionLibrary.getter()
{
  v1 = *(v0 + *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 20));

  return v1;
}

void PreviewAgentLaunchConfiguration.injectionLibrary.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 20));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t PreviewAgentLaunchConfiguration.binaryType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 24);
  v4 = sub_25F17718C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreviewAgentLaunchConfiguration.binaryType.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 24);
  v4 = sub_25F17718C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreviewAgentLaunchConfiguration.environment.getter()
{
  type metadata accessor for PreviewAgentLaunchConfiguration(0);
}

void PreviewAgentLaunchConfiguration.environment.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 28);

  *(v1 + v3) = a1;
}

uint64_t PreviewAgentLaunchConfiguration.arguments.getter()
{
  type metadata accessor for PreviewAgentLaunchConfiguration(0);
}

void PreviewAgentLaunchConfiguration.arguments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 32);

  *(v1 + v3) = a1;
}

uint64_t _s15PreviewShellKit0A24AgentLaunchConfigurationV10identifier19PreviewsMessagingOS0D10DescriptorV6BundleVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 36);
  v4 = sub_25F17767C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreviewAgentLaunchConfiguration.agentBundle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 36);
  v4 = sub_25F17767C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_25F1059F8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(unsigned int *a1)@<X8>)
{
  v3 = (a1 + *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_25F1092B4;
  a2[1] = v6;
}

uint64_t sub_25F105A78(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 40));

  *v6 = sub_25F109268;
  v6[1] = v5;
  return result;
}

uint64_t PreviewAgentLaunchConfiguration.pidCallback.getter()
{
  v1 = *(v0 + *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 40));

  return v1;
}

uint64_t PreviewAgentLaunchConfiguration.pidCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PreviewAgentLaunchConfiguration.init(bundle:role:injectionLibrary:binaryType:environment:arguments:pidCallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = type metadata accessor for PreviewAgentLaunchConfiguration(0);
  v18 = v17[9];
  v19 = sub_25F17767C();
  (*(*(v19 - 8) + 32))(a9 + v18, a1, v19);
  v20 = sub_25F17773C();
  (*(*(v20 - 8) + 32))(a9, a2, v20);
  v21 = (a9 + v17[5]);
  *v21 = a3;
  v21[1] = a4;
  v22 = v17[6];
  v23 = sub_25F17718C();
  result = (*(*(v23 - 8) + 32))(a9 + v22, a5, v23);
  *(a9 + v17[7]) = a6;
  *(a9 + v17[8]) = a7;
  v25 = (a9 + v17[10]);
  *v25 = a8;
  v25[1] = a10;
  return result;
}

uint64_t dispatch thunk of PreviewAgentLauncher.jitBootstrapMethod(forIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25F0BF3E4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_25F105E9C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_25F105EEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25F105F40(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_25F105F58(void *result, int a2)
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

uint64_t sub_25F105F9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25F17773C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_25F17718C();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = sub_25F17767C();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_25F106128(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_25F17773C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_25F17718C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_25F17767C();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

void sub_25F1062A0(uint64_t a1)
{
  sub_25F17773C();
  if (v1 <= 0x3F)
  {
    sub_25F17718C();
    if (v2 <= 0x3F)
    {
      sub_25F10638C();
      if (v3 <= 0x3F)
      {
        sub_25F1063E8();
        if (v4 <= 0x3F)
        {
          sub_25F17767C();
          if (v5 <= 0x3F)
          {
            sub_25F105150();
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

void sub_25F10638C()
{
  if (!qword_27FD48148)
  {
    v0 = sub_25F178FFC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD48148);
    }
  }
}

void sub_25F1063E8()
{
  if (!qword_27FD48150)
  {
    v0 = sub_25F1792BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD48150);
    }
  }
}

uint64_t sub_25F10644C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F17767C();
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

uint64_t sub_25F10651C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F17767C();
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

uint64_t sub_25F1065D4(uint64_t a1)
{
  result = sub_25F17767C();
  if (v2 <= 0x3F)
  {
    result = sub_25F106658();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_25F106658()
{
  result = qword_27FD48168;
  if (!qword_27FD48168)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27FD48168);
  }

  return result;
}

uint64_t *sub_25F1066A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48188, &qword_25F182550);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for Process(0);
  v10 = *(v9 + 20);
  sub_25F109928(a1, v8, type metadata accessor for Process);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v11 = sub_25F1067D8(a1 + v10, v8, a2, a3);
  sub_25F0B7E94(v8, &qword_27FD48188, &qword_25F182550);
  return v11;
}

uint64_t *sub_25F1067D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  v6 = sub_25F17767C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v53 = v8;
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48190, &unk_25F17F2F0);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48188, &qword_25F182550);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v49 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - v18;
  v20 = sub_25F1787BC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F1787CC();
  sub_25F1780CC();
  (*(v21 + 8))(v23, v20);
  sub_25F1092F8();
  if (sub_25F17956C())
  {
    v50 = a1;
    v51 = v6;
    sub_25F0B7E2C(a2, v19, &qword_27FD48188, &qword_25F182550);
    v24 = type metadata accessor for Process(0);
    v25 = *(*(v24 - 8) + 48);
    if (v25(v19, 1, v24) == 1)
    {
      sub_25F0B7E94(v19, &qword_27FD48188, &qword_25F182550);
    }

    else
    {
      v29 = &v19[*(v24 + 24)];
      v30 = *(v29 + 1);
      v61 = *v29;
      v62 = v30;
      v63 = v29[32];
      sub_25F177CDC();
      sub_25F109990(v19, type metadata accessor for Process);
      sub_25F17845C();
      sub_25F17844C();
      sub_25F17841C();
    }

    sub_25F0B7E2C(a2, v17, &qword_27FD48188, &qword_25F182550);
    v31 = v25(v17, 1, v24);
    if (v31 == 1)
    {
      sub_25F0B7E94(v17, &qword_27FD48188, &qword_25F182550);
      v32 = 0;
    }

    else
    {
      v33 = &v17[*(v24 + 24)];
      v34 = *(v33 + 1);
      v58 = *v33;
      v59 = v34;
      v60 = v33[32];
      v35 = sub_25F177CDC();
      sub_25F109990(v17, type metadata accessor for Process);
      v32 = v35;
    }

    v36 = v31 == 1;
    v37 = v55;
    v38 = *(v56 + 8);
    v57 = v36;
    v39 = v50;
    v28 = v38(v50, v32 | (v36 << 32), v55);
    sub_25F0B7E2C(a2, v14, &qword_27FD48188, &qword_25F182550);
    if (v25(v14, 1, v24) == 1)
    {
      sub_25F0B7E94(v14, &qword_27FD48188, &qword_25F182550);
      v40 = sub_25F177E8C();
      v41 = v52;
      (*(*(v40 - 8) + 56))(v52, 1, 1, v40);
    }

    else
    {
      v42 = sub_25F177E8C();
      v43 = *(v42 - 8);
      v41 = v52;
      (*(v43 + 16))(v52, v14, v42);
      sub_25F109990(v14, type metadata accessor for Process);
      (*(v43 + 56))(v41, 0, 1, v42);
    }

    v44 = v51;
    v45 = v54;
    (*(v7 + 16))(v54, v39, v51);
    v46 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v47 = swift_allocObject();
    (*(v7 + 32))(v47 + v46, v45, v44);
    sub_25F109424(v28, v41, sub_25F107E6C, 0, sub_25F1093CC, v47, 0, v37, v56);

    sub_25F0B7E94(v41, &qword_27FD48190, &unk_25F17F2F0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
    type metadata accessor for ProcessError(0);
    sub_25F1091A0(&qword_27FD475A0, type metadata accessor for ProcessError, &protocol conformance descriptor for ProcessError);
    v26 = swift_allocError();
    (*(v7 + 16))(v27, a1, v6);
    swift_storeEnumTagMultiPayload();
    v28 = sub_25F17868C();
  }

  return v28;
}

uint64_t sub_25F106F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a2;
  v78 = a4;
  v79 = a3;
  v77 = *(a3 - 8);
  v5 = *(v77 + 64);
  MEMORY[0x28223BE20](a1);
  v76 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F177FFC();
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x28223BE20](v6);
  v80 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F176CEC();
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for PreviewAgentLaunchConfiguration(0);
  v71 = *(v83 - 8);
  v11 = *(v71 + 64);
  v12 = MEMORY[0x28223BE20](v83);
  v72 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v61 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v61 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v61 - v19;
  v21 = sub_25F17888C();
  v70 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  sub_25F109928(a1, v20, type metadata accessor for PreviewAgentLaunchConfiguration);
  sub_25F109928(a1, v18, type metadata accessor for PreviewAgentLaunchConfiguration);
  v75 = a1;
  v69 = v15;
  sub_25F109928(a1, v15, type metadata accessor for PreviewAgentLaunchConfiguration);
  v24 = sub_25F17887C();
  v25 = sub_25F17952C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v66 = v5;
    v27 = v26;
    v64 = swift_slowAlloc();
    v84[0] = v64;
    *v27 = 136315650;
    v65 = v21;
    v63 = v24;
    sub_25F17767C();
    v62 = v25;
    sub_25F1091A0(&qword_27FD47EC0, MEMORY[0x277D408A0], MEMORY[0x277D408B0]);
    v28 = sub_25F17980C();
    v30 = v29;
    v61[1] = v11;
    sub_25F109990(v20, type metadata accessor for PreviewAgentLaunchConfiguration);
    v31 = sub_25F0BECF0(v28, v30, v84);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    sub_25F178FEC();
    sub_25F176CDC();
    v32 = sub_25F1790FC();
    v34 = v33;

    v35 = v68;
    v36 = *(v67 + 1);
    v36(v10, v68);
    sub_25F109990(v18, type metadata accessor for PreviewAgentLaunchConfiguration);
    v37 = sub_25F0BECF0(v32, v34, v84);

    *(v27 + 14) = v37;
    *(v27 + 22) = 2082;
    v38 = *(v83 + 32);
    v67 = v23;
    v39 = v69;
    MEMORY[0x25F8D51C0](*&v69[v38], MEMORY[0x277D837D0]);
    sub_25F176CDC();
    v40 = sub_25F1790FC();
    v42 = v41;

    v36(v10, v35);
    sub_25F109990(v39, type metadata accessor for PreviewAgentLaunchConfiguration);
    v43 = sub_25F0BECF0(v40, v42, v84);

    *(v27 + 24) = v43;
    v44 = v63;
    _os_log_impl(&dword_25F0B3000, v63, v62, "Relaunch of %s, env: %{public}s, args: %{public}s", v27, 0x20u);
    v45 = v64;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v45, -1, -1);
    v46 = v27;
    v5 = v66;
    MEMORY[0x25F8D6230](v46, -1, -1);

    (*(v70 + 8))(v67, v65);
  }

  else
  {

    sub_25F109990(v20, type metadata accessor for PreviewAgentLaunchConfiguration);
    (*(v70 + 8))(v23, v21);
    sub_25F109990(v18, type metadata accessor for PreviewAgentLaunchConfiguration);
    sub_25F109990(v69, type metadata accessor for PreviewAgentLaunchConfiguration);
  }

  v47 = v74;
  v48 = v75;
  v50 = v78;
  v49 = v79;
  sub_25F1067D8(v75 + *(v83 + 36), v73, v79, v78);
  v51 = v80;
  sub_25F177FDC();
  v52 = v76;
  v53 = v77;
  (*(v77 + 16))(v76, v47, v49);
  v54 = v72;
  sub_25F109928(v48, v72, type metadata accessor for PreviewAgentLaunchConfiguration);
  v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v56 = (v5 + *(v71 + 80) + v55) & ~*(v71 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = v49;
  *(v57 + 24) = v50;
  (*(v53 + 32))(v57 + v55, v52, v49);
  sub_25F109BF8(v54, v57 + v56);
  v58 = swift_allocObject();
  *(v58 + 16) = sub_25F109C5C;
  *(v58 + 24) = v57;
  type metadata accessor for Process(0);
  v59 = sub_25F17864C();

  (*(v81 + 8))(v51, v82);
  return v59;
}

uint64_t *sub_25F1077A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48190, &unk_25F17F2F0);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = v42 - v5;
  v51 = sub_25F177FFC();
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v47 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PreviewAgentLaunchConfiguration(0);
  v8 = v7 - 8;
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v49 = v9;
  v50 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_25F177E8C();
  v10 = *(v52 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v52);
  v13 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = v42 - v14;
  v15 = sub_25F1787BC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F1787CC();
  sub_25F1780CC();
  (*(v16 + 8))(v18, v15);
  sub_25F1092F8();
  v19 = *(v8 + 44);
  v20 = a1;
  if (sub_25F17956C())
  {
    v21 = v54;
    sub_25F177E7C();
    v22 = *(v55 + 16);
    v44 = a1;
    v23 = v22(a1, v56);
    v24 = *(v10 + 16);
    v42[1] = v23;
    v43 = v24;
    v25 = v52;
    v24(v13, v21, v52);
    v46 = type metadata accessor for PreviewAgentLaunchConfiguration;
    v26 = v20;
    v27 = v50;
    sub_25F109928(v26, v50, type metadata accessor for PreviewAgentLaunchConfiguration);
    v28 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v29 = *(v45 + 80);
    v45 = v29 | 7;
    v30 = swift_allocObject();
    (*(v10 + 32))(v30 + v28, v13, v25);
    sub_25F109BF8(v27, v30 + ((v11 + v29 + v28) & ~v29));
    v31 = v47;
    sub_25F177FCC();
    type metadata accessor for Process(0);
    v32 = sub_25F1785BC();

    (*(v48 + 8))(v31, v51);
    v33 = v53;
    v34 = v54;
    v43(v53, v54, v25);
    (*(v10 + 56))(v33, 0, 1, v25);
    sub_25F109928(v44, v27, v46);
    v35 = (v29 + 16) & ~v29;
    v36 = swift_allocObject();
    sub_25F109BF8(v27, v36 + v35);
    sub_25F109424(v32, v33, sub_25F107FE8, 0, sub_25F10A1D8, v36, 1, v56, v55);

    sub_25F0B7E94(v33, &qword_27FD48190, &unk_25F17F2F0);
    (*(v10 + 8))(v34, v25);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD481A8, qword_25F17F300);
    type metadata accessor for ProcessError(0);
    sub_25F1091A0(&qword_27FD475A0, type metadata accessor for ProcessError, &protocol conformance descriptor for ProcessError);
    v37 = swift_allocError();
    v39 = v38;
    v40 = sub_25F17767C();
    (*(*(v40 - 8) + 16))(v39, a1 + v19, v40);
    swift_storeEnumTagMultiPayload();
    v32 = sub_25F17868C();
  }

  return v32;
}

uint64_t sub_25F107E88()
{
  sub_25F17767C();
  sub_25F1091A0(&qword_27FD47EC0, MEMORY[0x277D408A0], MEMORY[0x277D408B0]);
  return sub_25F17980C();
}

__n128 sub_25F107EF4@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_25F177E8C();
  v15 = a1[1];
  v16 = *a1;
  (*(*(v8 - 8) + 16))(a4, a2, v8);
  v9 = *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 36);
  v10 = type metadata accessor for Process(0);
  v11 = *(v10 + 20);
  v12 = sub_25F17767C();
  (*(*(v12 - 8) + 16))(a4 + v11, a3 + v9, v12);
  v13 = (a4 + *(v10 + 24));
  result = v16;
  *v13 = v16;
  v13[1] = v15;
  v13[2].n128_u8[0] = 0;
  return result;
}

uint64_t sub_25F108008()
{
  type metadata accessor for PreviewAgentLaunchConfiguration(0);
  sub_25F17767C();
  sub_25F1091A0(&qword_27FD47EC0, MEMORY[0x277D408A0], MEMORY[0x277D408B0]);
  return sub_25F17980C();
}

uint64_t sub_25F10808C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_25F177E8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48190, &unk_25F17F2F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  sub_25F0B7E2C(a1, &v20 - v9, &qword_27FD48190, &unk_25F17F2F0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return (a2)();
  }

  (*(v5 + 32))(v7, v10, v4);
  v20 = 35;
  v21 = 0xE100000000000000;
  sub_25F1091A0(&qword_27FD481A0, MEMORY[0x277D403A8], MEMORY[0x277D403C0]);
  v12 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v12);

  v13 = MEMORY[0x25F8D50D0](8250, 0xE200000000000000);
  v15 = v20;
  v14 = v21;
  v16 = a2(v13);
  v18 = v17;
  v20 = v15;
  v21 = v14;

  MEMORY[0x25F8D50D0](v16, v18);

  v19 = v20;
  (*(v5 + 8))(v7, v4);
  return v19;
}

uint64_t sub_25F1082EC(uint64_t (*a1)(void))
{
  v1 = a1();
  if (!v2)
  {
    return 0;
  }

  MEMORY[0x25F8D50D0](v1);

  MEMORY[0x25F8D50D0](41, 0xE100000000000000);

  return 10272;
}

uint64_t sub_25F108380(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(__n128), uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v112) = a6;
  v119 = a5;
  v113 = a2;
  v114 = a4;
  v116 = a3;
  v10 = *(a8 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v110 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v111 = &v105 - v14;
  MEMORY[0x28223BE20](v13);
  v115 = &v105 - v15;
  v16 = sub_25F17888C();
  v17 = *(v16 - 8);
  v117 = v16;
  v118 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v105 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v105 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v105 - v27;
  v29 = sub_25F17811C();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v105 - v31;
  (*(v30 + 16))(&v105 - v31, a1, v29);
  v33 = (*(v30 + 88))(v32, v29);
  if (v33 == *MEMORY[0x277D40498])
  {
    (*(v30 + 96))(v32, v29);
    v34 = *(v10 + 16);
    v35 = v115;
    v34(v115, v32, a8);
    v36 = v10;
    if (v112)
    {
      v112 = v32;
      sub_25F17884C();
      v37 = v111;
      v34(v111, v35, a8);

      v38 = sub_25F17887C();
      v39 = sub_25F17951C();

      v108 = v39;
      v40 = os_log_type_enabled(v38, v39);
      v41 = a8;
      if (v40)
      {
        v42 = swift_slowAlloc();
        v109 = v36;
        v43 = v42;
        v107 = swift_slowAlloc();
        v120 = v107;
        *v43 = 136446722;
        v106 = v38;
        v44 = v113();
        v46 = sub_25F0BECF0(v44, v45, &v120);

        *(v43 + 4) = v46;
        *(v43 + 12) = 2080;
        v48 = (v114)(v47);
        v50 = sub_25F0BECF0(v48, v49, &v120);

        *(v43 + 14) = v50;
        *(v43 + 22) = 2082;
        v34(v110, v37, a8);
        v51 = sub_25F1790BC();
        v53 = v52;
        v54 = *(v109 + 8);
        v54(v37, a8);
        v55 = sub_25F0BECF0(v51, v53, &v120);

        *(v43 + 24) = v55;
        v56 = v106;
        _os_log_impl(&dword_25F0B3000, v106, v108, "%{public}s%s succeeded with result: %{public}s)", v43, 0x20u);
        v57 = v107;
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v57, -1, -1);
        MEMORY[0x25F8D6230](v43, -1, -1);

        (*(v118 + 8))(v26, v117);
        v54(v115, v41);
      }

      else
      {

        v54 = *(v36 + 8);
        v54(v37, a8);
        (*(v118 + 8))(v26, v117);
        v54(v115, a8);
      }

      return (v54)(v112, v41);
    }

    else
    {
      v75 = *(v10 + 8);
      v76 = a8;
      v75(v35, a8);
      sub_25F17884C();

      v77 = sub_25F17887C();
      v78 = sub_25F17951C();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v115 = v75;
        v80 = v79;
        v81 = swift_slowAlloc();
        v109 = v10 + 8;
        v82 = v81;
        v120 = v81;
        *v80 = 136446466;
        v83 = v113();
        v85 = sub_25F0BECF0(v83, v84, &v120);

        *(v80 + 4) = v85;
        *(v80 + 12) = 2080;
        v87 = (v114)(v86);
        v89 = sub_25F0BECF0(v87, v88, &v120);

        *(v80 + 14) = v89;
        _os_log_impl(&dword_25F0B3000, v77, v78, "%{public}s%s succeeded", v80, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v82, -1, -1);
        v90 = v80;
        v75 = v115;
        MEMORY[0x25F8D6230](v90, -1, -1);
      }

      (*(v118 + 8))(v23, v117);
      return (v75)(v32, v76);
    }
  }

  else
  {
    v112 = v32;
    if (v33 == *MEMORY[0x277D40488])
    {
      v58 = v112;
      (*(v30 + 96))(v112, v29);
      v59 = *v58;
      sub_25F17884C();

      v60 = v59;
      v61 = sub_25F17887C();
      v62 = sub_25F17951C();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v120 = v64;
        *v63 = 136446722;
        v65 = v113();
        v67 = sub_25F0BECF0(v65, v66, &v120);

        *(v63 + 4) = v67;
        *(v63 + 12) = 2080;
        v69 = (v114)(v68);
        v71 = sub_25F0BECF0(v69, v70, &v120);

        *(v63 + 14) = v71;
        *(v63 + 22) = 2082;
        swift_getErrorValue();
        v72 = sub_25F17986C();
        v74 = sub_25F0BECF0(v72, v73, &v120);

        *(v63 + 24) = v74;
        _os_log_impl(&dword_25F0B3000, v61, v62, "%{public}s%s failed with error: %{public}s", v63, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v64, -1, -1);
        MEMORY[0x25F8D6230](v63, -1, -1);
      }

      else
      {
      }

      return (*(v118 + 8))(v20, v117);
    }

    else if (v33 == *MEMORY[0x277D40490])
    {
      sub_25F17884C();

      v92 = sub_25F17887C();
      v93 = sub_25F17951C();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v120 = v95;
        *v94 = 136446466;
        v96 = v113();
        v98 = sub_25F0BECF0(v96, v97, &v120);

        *(v94 + 4) = v98;
        *(v94 + 12) = 2080;
        v100 = (v114)(v99);
        v102 = sub_25F0BECF0(v100, v101, &v120);

        *(v94 + 14) = v102;
        _os_log_impl(&dword_25F0B3000, v92, v93, "%{public}s%s canceled", v94, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v95, -1, -1);
        MEMORY[0x25F8D6230](v94, -1, -1);
      }

      (*(v118 + 8))(v28, v117);
      return (*(v30 + 8))(v112, v29);
    }

    else
    {
      v120 = 0;
      v121 = 0xE000000000000000;
      sub_25F1796DC();

      v120 = 0xD00000000000001BLL;
      v121 = 0x800000025F185DF0;
      WitnessTable = swift_getWitnessTable();
      v104 = sub_25F1093F8(a1, v29, WitnessTable);
      MEMORY[0x25F8D50D0](v104);

      result = sub_25F17977C();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_25F108EF4()
{
  sub_25F1796DC();

  strcpy(v3, "agentBundle: ");
  sub_25F17767C();
  sub_25F1091A0(&qword_27FD47EC0, MEMORY[0x277D408A0], MEMORY[0x277D408B0]);
  v0 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v0);

  MEMORY[0x25F8D50D0](0x3A72656C6C61630ALL, 0xE900000000000020);
  type metadata accessor for NoAgentJITBootstrapMethodProvided(0);
  v1 = sub_25F17992C();
  MEMORY[0x25F8D50D0](v1);

  return v3[0];
}

uint64_t sub_25F109038(uint64_t a1)
{
  v2 = sub_25F1091A0(&qword_27FD48180, type metadata accessor for NoAgentJITBootstrapMethodProvided, &unk_25F17F204);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F1090A4(uint64_t a1)
{
  v2 = sub_25F1091A0(&qword_27FD48180, type metadata accessor for NoAgentJITBootstrapMethodProvided, &unk_25F17F204);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F1091A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F109230()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F109268(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  v5 = BYTE4(a1) & 1;
  return v2(&v4);
}

unint64_t sub_25F1092F8()
{
  result = qword_27FD48198;
  if (!qword_27FD48198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD48198);
  }

  return result;
}

uint64_t sub_25F109344()
{
  v1 = sub_25F17767C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F109424(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v31 = a7;
  v29 = a9;
  v30 = a8;
  v13 = *a1;
  v27 = a5;
  v28 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48190, &unk_25F17F2F0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v18 = &v26 - v17;
  sub_25F0B7E2C(a2, &v26 - v17, &qword_27FD48190, &unk_25F17F2F0);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = swift_allocObject();
  sub_25F10979C(v18, v20 + v19);
  v21 = (v20 + ((v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = a3;
  v21[1] = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = v27;
  *(v22 + 24) = a6;
  v23 = swift_allocObject();
  *(v23 + 16) = v30;
  v24 = v29;
  *(v23 + 24) = *(v28 + *MEMORY[0x277D40560]);
  *(v23 + 32) = v24;
  *(v23 + 40) = sub_25F10980C;
  *(v23 + 48) = v20;
  *(v23 + 56) = sub_25F1098A8;
  *(v23 + 64) = v22;
  *(v23 + 72) = v31;

  sub_25F1785DC();
}

uint64_t sub_25F10966C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48190, &unk_25F17F2F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_25F177E8C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_25F10979C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48190, &unk_25F17F2F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F10980C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48190, &unk_25F17F2F0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_25F10808C(v0 + v2, v3);
}

uint64_t sub_25F1098B0()
{

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_25F109928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F109990(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F1099F0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for PreviewAgentLaunchConfiguration(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_25F17773C();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);

  v12 = v6[8];
  v13 = sub_25F17718C();
  (*(*(v13 - 8) + 8))(v0 + v8 + v12, v13);

  v14 = v6[11];
  v15 = sub_25F17767C();
  (*(*(v15 - 8) + 8))(v0 + v8 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25F109BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewAgentLaunchConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_25F109C5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = *(*(v1 - 8) + 64);
  v5 = *(type metadata accessor for PreviewAgentLaunchConfiguration(0) - 8);
  return sub_25F1077A0(v0 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80)), v1, v2);
}

uint64_t sub_25F109D50()
{
  v1 = sub_25F177E8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for PreviewAgentLaunchConfiguration(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_25F17773C();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);

  v12 = v6[8];
  v13 = sub_25F17718C();
  (*(*(v13 - 8) + 8))(v0 + v8 + v12, v13);

  v14 = v6[11];
  v15 = sub_25F17767C();
  (*(*(v15 - 8) + 8))(v0 + v8 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

double sub_25F109F60@<D0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_25F177E8C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PreviewAgentLaunchConfiguration(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  *&result = sub_25F107EF4(a1, v2 + v6, v9, a2).n128_u64[0];
  return result;
}

uint64_t sub_25F10A044()
{
  v1 = (type metadata accessor for PreviewAgentLaunchConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_25F17773C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[8];
  v7 = sub_25F17718C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = v1[11];
  v9 = sub_25F17767C();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F10A204(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_25F10A290@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D40D28];
  v3 = sub_25F176E7C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *MEMORY[0x277D40CE8];
  v5 = sub_25F176E8C();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

unint64_t sub_25F10A358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F10A380(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F10A380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD481B0;
  if (!qword_27FD481B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD481B0);
  }

  return result;
}

uint64_t sub_25F10A3D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D40CF0];
  v3 = sub_25F176E8C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_25F10A454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F10A47C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F10A47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD481B8[0];
  if (!qword_27FD481B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD481B8);
  }

  return result;
}

uint64_t sub_25F10A544(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47530, &unk_25F17F570);
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = swift_task_alloc();
  v10 = *(a3 + 32);
  v9 = *(a3 + 40);
  v11 = swift_task_alloc();
  v5[10] = v11;
  *v11 = v5;
  v11[1] = sub_25F10A674;

  return sub_25F0EFE30(a1, v10, v9);
}

uint64_t sub_25F10A674(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_25F10A98C;
  }

  else
  {
    v4 = sub_25F10A788;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F10A788()
{
  sub_25F176E1C();
  v1 = sub_25F176FEC();
  v2 = sub_25F0F00E0();
  sub_25F176EFC();
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_25F10A870;
  v4 = *(v0 + 72);

  return MEMORY[0x2821A1908](v4, v1, v1, v2);
}

uint64_t sub_25F10A870()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_25F10AC5C;
  }

  else
  {

    v2 = sub_25F10A9F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F10A98C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F10A9F0()
{
  v1 = (*(v0[6] + 24))();
  v3 = v2;
  v0[2] = v1;
  v0[3] = v2;
  sub_25F0E26B4(v1, v2, v4);
  v5 = sub_25F17700C();
  v0[15] = v5;
  sub_25F10AF08(v1, v3);
  v6 = swift_task_alloc();
  v0[16] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v6 = v0;
  v6[1] = sub_25F10AB2C;
  v8 = MEMORY[0x277D84950];
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v7, v5, v9, v7, v8);
}

uint64_t sub_25F10AB2C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_25F10AD48;
  }

  else
  {
    v2 = sub_25F10ACC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F10AC5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F10ACC8()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F10AD48()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

id sub_25F10ADCC(uint64_t a1)
{
  v1 = sub_25F176F4C();
  v2 = [v1 pid];

  return v2;
}

uint64_t sub_25F10AE28(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = *(a5 + 16);
  v12 = *(a5 + 24);
  *v10 = v5;
  v10[1] = sub_25F0BF3E4;

  return sub_25F10A544(v9, a3, a4, v11, v12);
}

id sub_25F10AEDC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_25F10ADCC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

double sub_25F10AF08(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_25F10AF1C(int a1)
{
  *(v2 + 24) = v1;
  *(v2 + 136) = a1;
  v4 = sub_25F1787AC();
  *(v2 + 32) = v4;
  *(v2 + 40) = *(v4 - 8);
  *(v2 + 48) = swift_task_alloc();
  v5 = sub_25F176E8C();
  *(v2 + 56) = v5;
  *(v2 + 64) = *(v5 - 8);
  *(v2 + 72) = swift_task_alloc();
  v6 = sub_25F17888C();
  *(v2 + 80) = v6;
  *(v2 + 88) = *(v6 - 8);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 128) = a1;

  return MEMORY[0x2822009F8](sub_25F10B0A0, 0, 0);
}

uint64_t sub_25F10B0A0(uint64_t a1)
{
  v28 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  if (os_log_type_enabled(v2, v3))
  {
    v24 = *(v1 + 88);
    v4 = *(v1 + 72);
    v25 = *(v1 + 80);
    v26 = *(v1 + 96);
    v6 = *(v1 + 56);
    v5 = *(v1 + 64);
    v23 = *(v1 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136446466;
    (*(v5 + 104))(v4, *MEMORY[0x277D40D00], v6);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v9 = sub_25F17980C();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_25F0BECF0(v9, v11, &v27);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v1 + 132) = v23;
    v13 = sub_25F17980C();
    v15 = sub_25F0BECF0(v13, v14, &v27);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "Requesting connection for %{public}s, %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v8, -1, -1);
    MEMORY[0x25F8D6230](v7, -1, -1);

    (*(v24 + 8))(v26, v25);
  }

  else
  {
    v17 = *(v1 + 88);
    v16 = *(v1 + 96);
    v18 = *(v1 + 80);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v1 + 136);
  sub_25F17879C();
  v20 = swift_allocObject();
  *(v1 + 104) = v20;
  *(v20 + 16) = v19;
  v21 = swift_task_alloc();
  *(v1 + 112) = v21;
  *v21 = v1;
  v21[1] = sub_25F10B3C8;

  return MEMORY[0x2821A0530](v1 + 16, v1 + 128);
}

uint64_t sub_25F10B3C8()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_25F10B5F4;
  }

  else
  {
    v5 = sub_25F10B55C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F10B55C()
{
  v1 = *(v0 + 16);
  sub_25F10DD18(*(v0 + 136));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25F10B5F4()
{
  sub_25F10DD18(*(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F10B684(int a1)
{
  *(v2 + 24) = v1;
  *(v2 + 136) = a1;
  v4 = sub_25F1787AC();
  *(v2 + 32) = v4;
  *(v2 + 40) = *(v4 - 8);
  *(v2 + 48) = swift_task_alloc();
  v5 = sub_25F176E8C();
  *(v2 + 56) = v5;
  *(v2 + 64) = *(v5 - 8);
  *(v2 + 72) = swift_task_alloc();
  v6 = sub_25F17888C();
  *(v2 + 80) = v6;
  *(v2 + 88) = *(v6 - 8);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 128) = a1;

  return MEMORY[0x2822009F8](sub_25F10B808, 0, 0);
}

uint64_t sub_25F10B808(uint64_t a1)
{
  v30 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  if (os_log_type_enabled(v2, v3))
  {
    v26 = *(v1 + 88);
    v4 = *(v1 + 72);
    v27 = *(v1 + 80);
    v28 = *(v1 + 96);
    v6 = *(v1 + 56);
    v5 = *(v1 + 64);
    v25 = *(v1 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136446466;
    v9 = *MEMORY[0x277D40D28];
    v10 = sub_25F176E7C();
    (*(*(v10 - 8) + 104))(v4, v9, v10);
    (*(v5 + 104))(v4, *MEMORY[0x277D40CE8], v6);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v11 = sub_25F17980C();
    v13 = v12;
    (*(v5 + 8))(v4, v6);
    v14 = sub_25F0BECF0(v11, v13, &v29);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2082;
    *(v1 + 132) = v25;
    v15 = sub_25F17980C();
    v17 = sub_25F0BECF0(v15, v16, &v29);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_25F0B3000, v2, v3, "Requesting connection for %{public}s, %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v8, -1, -1);
    MEMORY[0x25F8D6230](v7, -1, -1);

    (*(v26 + 8))(v28, v27);
  }

  else
  {
    v19 = *(v1 + 88);
    v18 = *(v1 + 96);
    v20 = *(v1 + 80);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v1 + 136);
  sub_25F17879C();
  v22 = swift_allocObject();
  *(v1 + 104) = v22;
  *(v22 + 16) = v21;
  v23 = swift_task_alloc();
  *(v1 + 112) = v23;
  *v23 = v1;
  v23[1] = sub_25F10BB78;

  return MEMORY[0x2821A0530](v1 + 16, v1 + 128);
}

uint64_t sub_25F10BB78()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_25F10BDA4;
  }

  else
  {
    v5 = sub_25F10BD0C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F10BD0C()
{
  v1 = *(v0 + 16);
  sub_25F10E034(*(v0 + 136));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25F10BDA4()
{
  sub_25F10E034(*(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F10BE34(int a1)
{
  *(v2 + 24) = v1;
  *(v2 + 136) = a1;
  v4 = sub_25F1787AC();
  *(v2 + 32) = v4;
  *(v2 + 40) = *(v4 - 8);
  *(v2 + 48) = swift_task_alloc();
  v5 = sub_25F176E8C();
  *(v2 + 56) = v5;
  *(v2 + 64) = *(v5 - 8);
  *(v2 + 72) = swift_task_alloc();
  v6 = sub_25F17888C();
  *(v2 + 80) = v6;
  *(v2 + 88) = *(v6 - 8);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 128) = a1;

  return MEMORY[0x2822009F8](sub_25F10BFB8, 0, 0);
}

uint64_t sub_25F10BFB8(uint64_t a1)
{
  v28 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  if (os_log_type_enabled(v2, v3))
  {
    v24 = *(v1 + 88);
    v4 = *(v1 + 72);
    v25 = *(v1 + 80);
    v26 = *(v1 + 96);
    v6 = *(v1 + 56);
    v5 = *(v1 + 64);
    v23 = *(v1 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136446466;
    (*(v5 + 104))(v4, *MEMORY[0x277D40CD0], v6);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v9 = sub_25F17980C();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_25F0BECF0(v9, v11, &v27);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v1 + 132) = v23;
    v13 = sub_25F17980C();
    v15 = sub_25F0BECF0(v13, v14, &v27);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "Requesting connection for %{public}s, %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v8, -1, -1);
    MEMORY[0x25F8D6230](v7, -1, -1);

    (*(v24 + 8))(v26, v25);
  }

  else
  {
    v17 = *(v1 + 88);
    v16 = *(v1 + 96);
    v18 = *(v1 + 80);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v1 + 136);
  sub_25F17879C();
  v20 = swift_allocObject();
  *(v1 + 104) = v20;
  *(v20 + 16) = v19;
  v21 = swift_task_alloc();
  *(v1 + 112) = v21;
  *v21 = v1;
  v21[1] = sub_25F10C2E0;

  return MEMORY[0x2821A0530](v1 + 16, v1 + 128);
}

uint64_t sub_25F10C2E0()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_25F10C514;
  }

  else
  {
    v5 = sub_25F10C474;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F10C474()
{
  v1 = *(v0 + 16);
  sub_25F10EA40(*(v0 + 136), MEMORY[0x277D40CD0]);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25F10C514()
{
  sub_25F10EA40(*(v0 + 136), MEMORY[0x277D40CD0]);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F10C5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v7 = sub_25F1787AC();
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  v8 = sub_25F176E8C();
  v4[12] = v8;
  v4[13] = *(v8 - 8);
  v4[14] = swift_task_alloc();
  v9 = sub_25F17888C();
  v4[15] = v9;
  v4[16] = *(v9 - 8);
  v4[17] = swift_task_alloc();
  v4[2] = a1;
  v4[3] = a2;

  return MEMORY[0x2822009F8](sub_25F10C73C, 0, 0);
}

uint64_t sub_25F10C73C(uint64_t a1)
{
  v32 = v1;
  v2 = v1 + 6;
  v3 = v1 + 2;
  sub_25F17884C();
  swift_bridgeObjectRetain_n();
  v4 = sub_25F17887C();
  v5 = sub_25F17951C();
  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[16];
  v7 = v1[17];
  v9 = v1[15];
  if (v6)
  {
    log = v4;
    v30 = v1[17];
    v11 = v1[13];
    v10 = v1[14];
    v12 = v1[12];
    v2 = v1 + 3;
    v26 = v1[6];
    v27 = v1[5];
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v13 = 136446466;
    (*(v11 + 104))(v10, *MEMORY[0x277D40CF8], v12);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v25 = v5;
    v14 = sub_25F17980C();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_25F0BECF0(v14, v16, &v31);
    v3 = v1 + 2;

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;

    v18 = sub_25F0BECF0(v27, v26, &v31);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_25F0B3000, log, v25, "Requesting connection for %{public}s, %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v28, -1, -1);
    MEMORY[0x25F8D6230](v13, -1, -1);

    (*(v8 + 8))(v30, v9);
    v19 = v1 + 2;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    (*(v8 + 8))(v7, v9);
    v19 = v1 + 5;
  }

  v20 = *v19;
  v21 = *v2;
  sub_25F17879C();
  v22 = swift_allocObject();
  v1[18] = v22;
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;

  v23 = swift_task_alloc();
  v1[19] = v23;
  *v23 = v1;
  v23[1] = sub_25F10CAC4;

  return MEMORY[0x2821A0530](v1 + 4, v3);
}

uint64_t sub_25F10CAC4()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 160) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_25F10CCF0;
  }

  else
  {
    v5 = sub_25F10CC58;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F10CC58()
{
  v1 = v0[4];
  sub_25F10E398(v0[2], v0[3]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_25F10CCF0()
{
  sub_25F10E398(v0[2], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F10CD80(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 56) = a3;
  *(v4 + 64) = v3;
  *(v4 + 48) = a2;
  *(v4 + 172) = a1;
  v8 = sub_25F1787AC();
  *(v4 + 72) = v8;
  *(v4 + 80) = *(v8 - 8);
  *(v4 + 88) = swift_task_alloc();
  v9 = sub_25F176E8C();
  *(v4 + 96) = v9;
  *(v4 + 104) = *(v9 - 8);
  *(v4 + 112) = swift_task_alloc();
  v10 = sub_25F17888C();
  *(v4 + 120) = v10;
  *(v4 + 128) = *(v10 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;

  return MEMORY[0x2822009F8](sub_25F10CF1C, 0, 0);
}

uint64_t sub_25F10CF1C(uint64_t a1)
{
  v38 = v1;
  v2 = (v1 + 56);
  v3 = v1 + 16;
  sub_25F17884C();
  swift_bridgeObjectRetain_n();
  v4 = sub_25F17887C();
  v5 = sub_25F17951C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 112);
    v33 = *(v1 + 120);
    v34 = *(v1 + 136);
    v7 = *(v1 + 96);
    v8 = *(v1 + 104);
    v31 = *(v1 + 56);
    v32 = *(v1 + 128);
    v30 = *(v1 + 48);
    v29 = *(v1 + 172);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35 = v10;
    *v9 = 136446466;
    (*(v8 + 104))(v6, *MEMORY[0x277D40D08], v7);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v11 = sub_25F17980C();
    v13 = v12;
    (*(v8 + 8))(v6, v7);
    v14 = sub_25F0BECF0(v11, v13, &v35);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2082;
    *(v1 + 168) = v29;
    v2 = (v1 + 32);
    v15 = (v1 + 24);
    v36 = sub_25F17980C();
    v37 = v16;
    MEMORY[0x25F8D50D0](58, 0xE100000000000000);
    MEMORY[0x25F8D50D0](v30, v31);
    swift_bridgeObjectRelease_n();
    v17 = sub_25F0BECF0(v36, v37, &v35);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_25F0B3000, v4, v5, "Requesting connection for %{public}s, %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v10, -1, -1);
    v18 = v9;
    v3 = v1 + 16;
    MEMORY[0x25F8D6230](v18, -1, -1);

    (*(v32 + 8))(v34, v33);
    v19 = (v1 + 16);
  }

  else
  {
    v19 = (v1 + 172);
    v21 = *(v1 + 128);
    v20 = *(v1 + 136);
    v22 = *(v1 + 120);
    swift_bridgeObjectRelease_n();

    (*(v21 + 8))(v20, v22);
    v15 = (v1 + 48);
  }

  v23 = *v19;
  v24 = *v15;
  v25 = *v2;
  sub_25F17879C();
  v26 = swift_allocObject();
  *(v1 + 144) = v26;
  *(v26 + 16) = v23;
  *(v26 + 24) = v24;
  *(v26 + 32) = v25;

  v27 = swift_task_alloc();
  *(v1 + 152) = v27;
  *v27 = v1;
  v27[1] = sub_25F10D2DC;

  return MEMORY[0x2821A0530](v1 + 40, v3);
}

uint64_t sub_25F10D2DC()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 160) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_25F10D50C;
  }

  else
  {
    v5 = sub_25F10D470;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F10D470()
{
  v1 = *(v0 + 40);
  sub_25F10E6CC(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25F10D50C()
{
  sub_25F10E6CC(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F10D5A0(int a1)
{
  *(v2 + 24) = v1;
  *(v2 + 136) = a1;
  v4 = sub_25F1787AC();
  *(v2 + 32) = v4;
  *(v2 + 40) = *(v4 - 8);
  *(v2 + 48) = swift_task_alloc();
  v5 = sub_25F176E8C();
  *(v2 + 56) = v5;
  *(v2 + 64) = *(v5 - 8);
  *(v2 + 72) = swift_task_alloc();
  v6 = sub_25F17888C();
  *(v2 + 80) = v6;
  *(v2 + 88) = *(v6 - 8);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 128) = a1;

  return MEMORY[0x2822009F8](sub_25F10D724, 0, 0);
}

uint64_t sub_25F10D724(uint64_t a1)
{
  v28 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  if (os_log_type_enabled(v2, v3))
  {
    v24 = *(v1 + 88);
    v4 = *(v1 + 72);
    v25 = *(v1 + 80);
    v26 = *(v1 + 96);
    v6 = *(v1 + 56);
    v5 = *(v1 + 64);
    v23 = *(v1 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136446466;
    (*(v5 + 104))(v4, *MEMORY[0x277D40CF0], v6);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v9 = sub_25F17980C();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_25F0BECF0(v9, v11, &v27);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v1 + 132) = v23;
    v13 = sub_25F17980C();
    v15 = sub_25F0BECF0(v13, v14, &v27);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "Requesting connection for %{public}s, %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v8, -1, -1);
    MEMORY[0x25F8D6230](v7, -1, -1);

    (*(v24 + 8))(v26, v25);
  }

  else
  {
    v17 = *(v1 + 88);
    v16 = *(v1 + 96);
    v18 = *(v1 + 80);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v1 + 136);
  sub_25F17879C();
  v20 = swift_allocObject();
  *(v1 + 104) = v20;
  *(v20 + 16) = v19;
  v21 = swift_task_alloc();
  *(v1 + 112) = v21;
  *v21 = v1;
  v21[1] = sub_25F10DA4C;

  return MEMORY[0x2821A0530](v1 + 16, v1 + 128);
}

uint64_t sub_25F10DA4C()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_25F10DC80;
  }

  else
  {
    v5 = sub_25F10DBE0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F10DBE0()
{
  v1 = *(v0 + 16);
  sub_25F10EA40(*(v0 + 136), MEMORY[0x277D40CF0]);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25F10DC80()
{
  sub_25F10EA40(*(v0 + 136), MEMORY[0x277D40CF0]);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F10DD18(int a1)
{
  v2 = sub_25F176E8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_25F17888C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F17884C();
  v10 = sub_25F17887C();
  v11 = sub_25F17951C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = a1;
    v13 = v12;
    v26 = swift_slowAlloc();
    v28 = v26;
    *v13 = 136446466;
    (*(v3 + 104))(v5, *MEMORY[0x277D40D00], v2);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v14 = sub_25F17980C();
    v25 = v6;
    v16 = v15;
    (*(v3 + 8))(v5, v2);
    v17 = sub_25F0BECF0(v14, v16, &v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    v27 = v24;
    v18 = sub_25F17980C();
    v20 = sub_25F0BECF0(v18, v19, &v28);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_25F0B3000, v10, v11, "Returning connection for %{public}s, %{public}s", v13, 0x16u);
    v21 = v26;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v21, -1, -1);
    MEMORY[0x25F8D6230](v13, -1, -1);

    return (*(v7 + 8))(v9, v25);
  }

  else
  {

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_25F10E034(int a1)
{
  v2 = sub_25F176E8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_25F17888C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F17884C();
  v10 = sub_25F17887C();
  v11 = sub_25F17951C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = a1;
    v13 = v12;
    v28 = swift_slowAlloc();
    v30 = v28;
    *v13 = 136446466;
    v14 = *MEMORY[0x277D40D28];
    v15 = sub_25F176E7C();
    (*(*(v15 - 8) + 104))(v5, v14, v15);
    (*(v3 + 104))(v5, *MEMORY[0x277D40CE8], v2);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v16 = sub_25F17980C();
    v27 = v6;
    v18 = v17;
    (*(v3 + 8))(v5, v2);
    v19 = sub_25F0BECF0(v16, v18, &v30);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2082;
    v29 = v26;
    v20 = sub_25F17980C();
    v22 = sub_25F0BECF0(v20, v21, &v30);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_25F0B3000, v10, v11, "Returning connection for %{public}s, %{public}s", v13, 0x16u);
    v23 = v28;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v23, -1, -1);
    MEMORY[0x25F8D6230](v13, -1, -1);

    return (*(v7 + 8))(v9, v27);
  }

  else
  {

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_25F10E398(uint64_t a1, unint64_t a2)
{
  v26 = a1;
  v3 = sub_25F176E8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F17888C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  swift_bridgeObjectRetain_n();
  v11 = sub_25F17887C();
  v12 = sub_25F17951C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v8;
    v14 = v13;
    v24 = swift_slowAlloc();
    v27 = v24;
    *v14 = 136446466;
    (*(v4 + 104))(v6, *MEMORY[0x277D40CF8], v3);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v15 = sub_25F17980C();
    v23 = v7;
    v17 = v16;
    (*(v4 + 8))(v6, v3);
    v18 = sub_25F0BECF0(v15, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;

    v19 = sub_25F0BECF0(v26, a2, &v27);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_25F0B3000, v11, v12, "Returning connection for %{public}s, %{public}s", v14, 0x16u);
    v20 = v24;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v20, -1, -1);
    MEMORY[0x25F8D6230](v14, -1, -1);

    return (*(v25 + 8))(v10, v23);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_25F10E6CC(int a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v5 = sub_25F176E8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_25F17888C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F17884C();
  swift_bridgeObjectRetain_n();
  v13 = sub_25F17887C();
  v14 = sub_25F17951C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = a2;
    v16 = v15;
    v29 = swift_slowAlloc();
    v34 = v29;
    *v16 = 136446466;
    (*(v6 + 104))(v8, *MEMORY[0x277D40D08], v5);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v26 = v14;
    v17 = sub_25F17980C();
    v28 = v9;
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    v20 = sub_25F0BECF0(v17, v19, &v34);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v31 = v30;
    v32 = sub_25F17980C();
    v33 = v21;
    MEMORY[0x25F8D50D0](58, 0xE100000000000000);
    MEMORY[0x25F8D50D0](v27, a3);
    swift_bridgeObjectRelease_n();
    v22 = sub_25F0BECF0(v32, v33, &v34);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_25F0B3000, v13, v26, "Returning connection for %{public}s, %{public}s", v16, 0x16u);
    v23 = v29;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v23, -1, -1);
    MEMORY[0x25F8D6230](v16, -1, -1);

    return (*(v10 + 8))(v12, v28);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_25F10EA40(int a1, unsigned int *a2)
{
  v26 = a1;
  v3 = sub_25F176E8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F17888C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  v11 = sub_25F17887C();
  v12 = sub_25F17951C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v7;
    v14 = v13;
    v24 = swift_slowAlloc();
    v28 = v24;
    *v14 = 136446466;
    (*(v4 + 104))(v6, *a2, v3);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v15 = sub_25F17980C();
    v17 = v16;
    (*(v4 + 8))(v6, v3);
    v18 = sub_25F0BECF0(v15, v17, &v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v27 = v26;
    v19 = sub_25F17980C();
    v21 = sub_25F0BECF0(v19, v20, &v28);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_25F0B3000, v11, v12, "Returning connection for %{public}s, %{public}s", v14, 0x16u);
    v22 = v24;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v22, -1, -1);
    MEMORY[0x25F8D6230](v14, -1, -1);

    return (*(v8 + 8))(v10, v25);
  }

  else
  {

    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t SharedAgentServer<>.requestPreviewNonUIAgent(for:)(uint64_t a1, int a2)
{
  v3[52] = a1;
  v3[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47430, &qword_25F17BE70);
  v5 = swift_task_alloc();
  v7 = *v2;
  v6 = v2[1];
  v3[54] = v5;
  v3[55] = v7;
  v8 = swift_task_alloc();
  v3[56] = v8;
  *v8 = v3;
  v8[1] = sub_25F10EE50;

  return sub_25F0EFC00(a2, v7, v6);
}

uint64_t sub_25F10EE50(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 456) = a1;

    return MEMORY[0x2822009F8](sub_25F10EFA4, 0, 0);
  }
}

uint64_t sub_25F10EFA4()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 424);
  sub_25F10F420(*(v0 + 440) + *(**(v0 + 440) + 96), v1);
  v3 = *v1;
  *(v0 + 464) = v3;
  *(v0 + 488) = *(v2 + 48);
  v4 = swift_task_alloc();
  *(v0 + 472) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47448, &unk_25F17F3E0);
  *v4 = v0;
  v4[1] = sub_25F10F090;

  return MEMORY[0x282200460](v0 + 152, v3, v5);
}

uint64_t sub_25F10F090()
{

  return MEMORY[0x2822009F8](sub_25F10F1A8, 0, 0);
}

uint64_t sub_25F10F1A8()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 432);
  v3 = *(v0 + 232);
  v4 = *(v0 + 248);
  *(v0 + 144) = *(v0 + 280);
  v5 = *(v0 + 168);
  v6 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v6;
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v3;
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v5;
  v7 = *(v0 + 264);
  *(v0 + 112) = v4;
  *(v0 + 128) = v7;
  sub_25F0E0148(v0 + 24, v0 + 288);
  sub_25F10F490(v0 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47438, &qword_25F17BE90);
  (*(*(v8 - 8) + 8))(v2 + v1, v8);
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);

  sub_25F0E263C(v0 + 24);
  v11 = swift_task_alloc();
  *(v0 + 480) = v11;
  *v11 = v0;
  v11[1] = sub_25F10F300;
  v12 = *(v0 + 456);
  v13 = *(v0 + 416);

  return sub_25F1196D8(v13, v12, v10, v9);
}

uint64_t sub_25F10F300()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F10F420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47430, &qword_25F17BE70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F10F490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47448, &unk_25F17F3E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PreviewNonUIAgentService.bootstrap(client:context:endpoint:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F0BF3E4;

  return sub_25F110DB4(v6, a2, a3);
}

uint64_t sub_25F10F5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48268, &qword_25F17F588);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  v8 = sub_25F17764C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = 0;
  v16[1] = 0;
  (*(v5 + 16))(v7, a1, v4);
  sub_25F17760C();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47530, &unk_25F17F570);
  sub_25F0E26B4(v12, v13, v14);
  sub_25F176FFC();
  return (*(v9 + 8))(v11, v8);
}

id static PreviewNonUIAgentService.identity(of:)(uint64_t a1)
{
  v1 = sub_25F176F4C();
  v2 = [v1 pid];

  return v2;
}

uint64_t sub_25F10F814(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_25F0C10CC;

  return sub_25F110DB4(v7, a3, a4);
}

uint64_t AsyncAgentServer<>.requestPreviewSceneAgentConnection(for:with:)(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 48) = a1;
  return MEMORY[0x2822009F8](sub_25F10F8FC, 0, 0);
}

uint64_t sub_25F10F8FC()
{

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_25F10F9B8;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  v4 = *(v0 + 48);

  return sub_25F10CD80(v4, v3, v2);
}

uint64_t sub_25F10F9B8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t PreviewSceneAgentService.ClientIdentity.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = sub_25F17980C();
  MEMORY[0x25F8D50D0](58, 0xE100000000000000);
  MEMORY[0x25F8D50D0](v1, v2);
  return v4;
}

uint64_t static PreviewSceneAgentService.ClientIdentity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_25F17983C();
  }
}

uint64_t PreviewSceneAgentService.ClientIdentity.hash(into:)(uint64_t a1)
{
  sub_25F1798FC();

  return sub_25F17911C();
}

uint64_t PreviewSceneAgentService.ClientIdentity.hashValue.getter()
{
  sub_25F1798CC();
  sub_25F1798FC();
  sub_25F17911C();
  return sub_25F17990C();
}

uint64_t sub_25F10FC54()
{
  sub_25F1798CC();
  sub_25F1798FC();
  sub_25F17911C();
  return sub_25F17990C();
}

uint64_t sub_25F10FCB8(uint64_t a1)
{
  sub_25F1798FC();

  return sub_25F17911C();
}

uint64_t sub_25F10FD0C(uint64_t a1)
{
  sub_25F1798CC();
  sub_25F1798FC();
  sub_25F17911C();
  return sub_25F17990C();
}

uint64_t sub_25F10FD6C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = sub_25F17980C();
  MEMORY[0x25F8D50D0](58, 0xE100000000000000);
  MEMORY[0x25F8D50D0](v1, v2);
  return v4;
}

uint64_t sub_25F10FDE4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_25F17983C();
  }
}

uint64_t static PreviewSceneAgentService.bootstrap(client:context:endpoint:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F0C10CC;

  return sub_25F110508(a1, a2, a3);
}

uint64_t static PreviewSceneAgentService.identity(of:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F177F8C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_25F177E5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F176F4C();
  v9 = [v8 pid];

  sub_25F176F3C();
  sub_25F111798(&qword_27FD47418, MEMORY[0x277D40F20], MEMORY[0x277D40F18]);
  result = sub_25F17850C();
  if (!v1)
  {
    v11 = sub_25F177E4C();
    v13 = v12;
    result = (*(v5 + 8))(v7, v4);
    *a1 = v9;
    *(a1 + 8) = v11;
    *(a1 + 16) = v13;
  }

  return result;
}

uint64_t sub_25F1100C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_25F0C10CC;

  return sub_25F110508(a1, a3, a4);
}

uint64_t sub_25F11018C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F177F8C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_25F177E5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F176F4C();
  v9 = [v8 pid];

  sub_25F176F3C();
  sub_25F111798(&qword_27FD47418, MEMORY[0x277D40F20], MEMORY[0x277D40F18]);
  result = sub_25F17850C();
  if (!v1)
  {
    v11 = sub_25F177E4C();
    v13 = v12;
    result = (*(v5 + 8))(v7, v4);
    *a1 = v9;
    *(a1 + 8) = v11;
    *(a1 + 16) = v13;
  }

  return result;
}

uint64_t sub_25F110344(int *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, double a5)
{
  v9 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_25F111908(a4, a2, a3);
  result = swift_allocError();
  *v11 = a5;
  *(v11 + 8) = v9;
  return result;
}

uint64_t sub_25F1103C8(uint64_t *a1, double a2)
{
  v4 = *a1;
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48280, &qword_25F17F5A8);
  sub_25F111908(&qword_27FD48288, &qword_27FD48280, &qword_25F17F5A8);
  v5 = swift_allocError();
  *(v6 + 8) = v4;
  *(v6 + 16) = v3;
  *v6 = a2;

  return v5;
}

uint64_t sub_25F110464(int *a1, double a2)
{
  v3 = *a1;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48258, &qword_25F17F580);
  sub_25F111908(&qword_27FD48260, &qword_27FD48258, &qword_25F17F580);
  v6 = swift_allocError();
  *(v7 + 8) = v3;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *v7 = a2;

  return v6;
}

uint64_t sub_25F110508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47530, &unk_25F17F570);
  v3[5] = v6;
  v3[6] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v3[7] = v7;
  v3[8] = v9;
  v3[9] = v10;
  v11 = *(a3 + 32);
  v12 = *(a3 + 40);
  v13 = swift_task_alloc();
  v3[10] = v13;
  *v13 = v3;
  v13[1] = sub_25F110640;

  return sub_25F0EFE30(v8, v11, v12);
}

uint64_t sub_25F110640(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_25F110988;
  }

  else
  {
    v4 = sub_25F110754;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F110754()
{
  sub_25F176E1C();
  v1 = sub_25F176FEC();
  v2 = sub_25F111798(&qword_27FD47538, MEMORY[0x277D40DF8], MEMORY[0x277D40DF0]);
  sub_25F176EFC();
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_25F11086C;
  v4 = *(v0 + 56);

  return MEMORY[0x2821A1908](v4, v1, v1, v2);
}

uint64_t sub_25F11086C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_25F110C20;
  }

  else
  {

    v2 = sub_25F1109EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F110988()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F1109EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[9];
  v3[2] = v3[8];
  v3[3] = v4;
  sub_25F0E26B4(a1, a2, a3);

  v5 = sub_25F17700C();
  v3[15] = v5;

  v6 = swift_task_alloc();
  v3[16] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v6 = v3;
  v6[1] = sub_25F110B0C;
  v8 = MEMORY[0x277D84950];
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v7, v5, v9, v7, v8);
}

uint64_t sub_25F110B0C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_25F110D20;
  }

  else
  {
    v2 = sub_25F110C8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F110C20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F110C8C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F110D20()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F110DB4(int a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47530, &unk_25F17F570);
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v3[5] = swift_task_alloc();
  v8 = *(a3 + 32);
  v7 = *(a3 + 40);
  v9 = swift_task_alloc();
  v3[6] = v9;
  *v9 = v3;
  v9[1] = sub_25F110EE0;

  return sub_25F0EFE30(a1, v8, v7);
}

uint64_t sub_25F110EE0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_25F111228;
  }

  else
  {
    v4 = sub_25F110FF4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F110FF4()
{
  sub_25F176E1C();
  v1 = sub_25F176FEC();
  v2 = sub_25F111798(&qword_27FD47538, MEMORY[0x277D40DF8], MEMORY[0x277D40DF0]);
  sub_25F176EFC();
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_25F11110C;
  v4 = *(v0 + 40);

  return MEMORY[0x2821A1908](v4, v1, v1, v2);
}

uint64_t sub_25F11110C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_25F1114A0;
  }

  else
  {

    v2 = sub_25F11128C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}